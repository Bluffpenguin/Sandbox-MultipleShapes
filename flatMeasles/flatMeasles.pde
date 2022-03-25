//Global Variables
int smallerDisplayDimension;
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float mouthX1, mouthY1, mouthX2, mouthY2;
//
//Display Geometry
fullScreen(); //size(); displayWidth, displayHeight
//Landscape, not square or portrait
println (width, height, displayWidth, displayHeight); //Verification of values
//Display Orientation: a few comparisons for IFs
//Computer tells us the orientation, go
String orientation = ( displayWidth >= displayHeight ) ? "Landscape or Square": "Portrait"; 
println("Display Orientation:", orientation); //Verify Veriables
if ( orientation=="Portrait" ) println("Turn your phun");
/*
if ( orientation=="Landscape or Square") 
{
  //Empty IF
} else { 
  println("Turn your phun");
} //FUN
*/


//
//Variable Population
smallerDisplayDimension = displayHeight; //ALWAYS in Landscape
rectFaceX = (displayWidth*1/2) - (smallerDisplayDimension*1/2);
rectFaceY =displayHeight*0;
rectFaceWidth = smallerDisplayDimension; //Square Shape
rectFaceHeight = smallerDisplayDimension; //Square Shape
faceX = displayWidth*1/2;
faceY = displayHeight*1/2;
faceDiameter = smallerDisplayDimension;
leftEyeX = displayWidth*1.5/4;
leftEyeY = displayHeight*1/4;
rightEyeX = displayWidth*2.5/4;
rightEyeY = leftEyeY; //Best Practice: change one line of code
eyeDiameter = smallerDisplayDimension*1/4;
mouthX1 = leftEyeX;
mouthY1 = displayHeight*3/4;
mouthX2 = rightEyeX;
mouthY2 = mouthY1;
//
//Face: Circle = Inscribing a Circle in a Square
//Center a circle on display orientation
rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);
ellipse(faceX, faceY, faceDiameter, faceDiameter);
//
//Left Eye
//rect();
ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
//
//Right Eye
//rect();
ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
//
//Nose
//rect();
triangle(xNose1, yNose1, xNose2, yNose2, xNose3, yNose3);
//
//Mouth
//rect();
line(mouthX1, mouthY1, mouthX2, mouthY2);
//
//Measle
//rect();