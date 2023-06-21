void display(){
  println("\t\t\tWidth="+width, "\tHeight="+height);
  println("Display Monitor:", "\twidth:"+displayWidth, "\theight:"+displayHeight);
  //
  String ls="Landscape or Square", p="portrait", DO="Display Orientation";
  //
  if ( appWidth < appHeight ) {
    println("Please, turn your phone");
  } else {
    println("Display: Good to Go");}
    if ( appWidth > displayWidth ) {
      appWidth=0;
      appHeight=0;
      println("STOP, is broken");
    } else {
      //empty ELSE
    }
    if ( appWidth >= appHeight ) { 
    smallerDimension = appHeight;
    largerDimension = appWidth;
    println("Display orientation: Landscape or Square");
  } else {
      appWidth=0;
      appHeight=0;
        println("Please, turn your phone");
    }
}//End display
//End Display and Orientation Subprogram
