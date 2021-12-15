//Global Variables
color blue=#180BD8, red=#F70F0F, yellow=#F6FF00, resetColour=#FFFFFF, buttonColour;
float PowerButtonX, powerButtonY, powerButtonWidth, powerButtonHeight;
String powerButton = "Power";
//
void powerButton() {
  PowerButtonX = displayWidth*29/32;//125/128;
  powerButtonY = displayHeight*0/16;//0/128;
  powerButtonWidth = displayWidth*3/32;//128/128;
  powerButtonHeight = displayHeight*1/16;//4.5/128;
  rect(PowerButtonX, powerButtonY, powerButtonWidth, powerButtonHeight); //displayWidth*125/128, displayHeight*0/128, displayWidth*128/128, displayHeight*4.5/128
}//End powerButton()
//
void powerDraw() {
  if (mouseX>PowerButtonX && mouseX<PowerButtonX+powerButtonWidth && mouseY>powerButtonY && mouseY<powerButtonY+powerButtonHeight) { 
    buttonColour = red;
    hoverOverfill();
  } else {
    buttonColour = blue;
    hoverOverfill();
  }
  //Text
  textCode(powerButton, width*14/100, PowerButtonX, powerButtonY, powerButtonWidth, powerButtonHeight);
}//End powerDraw()
//
void powerMousePressed() {
  if (mouseX>PowerButtonX && mouseX<PowerButtonX+powerButtonWidth && mouseY>powerButtonY && mouseY<powerButtonY+powerButtonHeight ) exit ();
}//End powerMousePressed()
//
void hoverOverfill() {
  fill(buttonColour);
  noStroke();
  rect(PowerButtonX, powerButtonY, powerButtonWidth, powerButtonHeight);
  fill(resetColour);
 stroke(1); // reset stroke to pixel
}//End hoverOverFill()
