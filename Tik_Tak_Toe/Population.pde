
void population() {
   scaleWidth=1.0/2.0; //used to change x-size
  scaleHeight =1.0/2.0; //used to change y-size
 middleX = appWidth* scaleWidth;
 middleY = appHeight * scaleHeight;
 //
 lineWidth= appWidth*1/3;
 lineHeight= appHeight*1/3;
 horLine1X1=middleX-lineWidth*1/2;
 horLine1Y1=middleY - lineHeight*1/2;
 horLine1X2=middleX+lineWidth*1/2;
 horLine1Y2=horLine1Y1;
 //
 horLine2X1=horLine1X1;
 horLine2Y1=middleY+lineHeight*1/2;
 horLine2X2=horLine1X2;
 horLine2Y2=horLine2Y1;
 //
 vertLine1X1=
 vertLine1Y1=
 vertLine1X2=
 vertLine1Y2=
 //
 vertLine2X1, vertLine2Y1, vertLine2X2, vertLine2Y2
}//End Population
