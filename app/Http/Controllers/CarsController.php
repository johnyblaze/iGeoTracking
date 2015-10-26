<?php namespace App\Http\Controllers;
use App\Cars;
class CarsController extends Controller {

  /**
  * Display a listing of the resource.
  *
  * @return Response
  */
  public function index()
  {
    $cars = Cars::all();
    $carsData = array();
    foreach ($cars as $key => $car) {
      $carsData[$car->imei] = $car->manufacturer.' '.$car->num_plate;
    }
    return view('Cars/Index', array('carsIMEI' => $carsData));
  }

  public function all()
  {
       return Cars::all();
  }
  
  /**
  * Show the form for creating a new resource.
  *
  * @return Response
  */
  public function create()
  {
    
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