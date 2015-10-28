<?php namespace App\Http\Controllers;
use App\Spot;
use App\Cars;
class SpotController extends Controller {

  protected $totalDistance = 0;
  /**
  * Display a listing of the resource.
  *
  * @return Response
  */
  public function index()
  {}

  /**
   * Show the form for creating a new resource.
   *
   * @return Response
   */
  public function create()
  {
    // MongoDB Code Start
    
    $mongoObj = new \MongoClient();
    $db = $mongoObj->iGeoTrack;
    $collection = $db->spot;
    $imei = '356173061003245'; // $imei = $_GET['item_id'] but we have no refernce to 'car' that's why for the time being I addd static 
    $date = $_GET['date'];
    $cursor = $collection->find(array( '$and' => array( array('imei' => $imei),array('time'=>array( '$gt' => $date)))))->count();
    $this->mongoLngArray = array();
    $this->mongoLatArray = array();
    foreach ($cursor as $document) {
      $this->mongoLngArray = $document['lng'];
      $this->mongoLatArray = $document['lat'];
    }
    
    // MongoDB code End
    
    $this->findDateSpecificDistance = Spot::whereImei($_GET['item_id'])->where('created_at',">=",$_GET['date'])->get();
    $this->lngArray = array();
    $this->latArray = array();
    $this->carInfo = null;
    if(is_object($this->findDateSpecificDistance)){
      foreach ($this->findDateSpecificDistance as $key => $dist) {
        if($dist->lng){
          $this->lngArray[] = $dist->lng;
        }else{
          $this->lngArray[] = 0;
        }
        if($dist->lat){
          $this->latArray[] = $dist->lat;
        }else{
          $this->latArray[] = 0;
        }
      }
      for ($i=1; $i < sizeof($this->latArray) ; $i++) {
       $this->totalDistance += $this->distance($this->latArray[$i-1],$this->lngArray[$i-1],$this->latArray[$i],$this->lngArray[$i],"K");
      }
    }
    $cars = Cars::whereImei($_GET['item_id'])->get();
    foreach ($cars as $key => $car) {
      $this->carInfo = $car->manufacturer.' '.$car->num_plate;
    }
    return view('Spot/Create')->with('distance', $this->totalDistance)->with('carInfo',$this->carInfo)->with('date',$_GET['date']);
  }

  public function distance($lat1, $lon1, $lat2, $lon2, $unit) {
    $theta = $lon1 - $lon2;
    $dist = sin(deg2rad($lat1)) * sin(deg2rad($lat2)) +  cos(deg2rad($lat1)) * cos(deg2rad($lat2)) * cos(deg2rad($theta));
    $dist = acos($dist);
    $dist = rad2deg($dist);
    $miles = $dist * 60 * 1.1515;
    $unit = strtoupper($unit);
    if ($unit == "K") {
      return ($miles * 1.609344);
    } else if ($unit == "N") {
      return ($miles * 0.8684);
    } else {
      return $miles;
    }
  }

  /**
   * Store a newly created resource in storage.
   *
   * @return Response
   */
  public function store()
  {
    
  }

  /**
   * Display the specified resource.
   *
   * @param  int  $id
   * @return Response
   */
  public function show($id)
  {
    
  }

  /**
   * Show the form for editing the specified resource.
   *
   * @param  int  $id
   * @return Response
   */
  public function edit($id)
  {
    
  }

  /**
   * Update the specified resource in storage.
   *
   * @param  int  $id
   * @return Response
   */
  public function update($id)
  {
    
  }

  /**
   * Remove the specified resource from storage.
   *
   * @param  int  $id
   * @return Response
   */
  public function destroy($id)
  {
    
  }
  
}

?>