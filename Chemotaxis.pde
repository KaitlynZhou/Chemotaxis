class Walker
{
  int myX, myY, myColor;
  Walker()
  {
    myX = myY = 250;
    myColor = color(0,0,(int)(Math.random()*256),80);
  }
  void walk()
  {
    myX = myX + (int)(Math.random()*7)-3;
                //{-3,-2,-1,0,1,2,3}
    myY = myY + (int)(Math.random()*7)-3;
  }
  void show()
  {
    fill(myColor);
    ellipse(myX,myY,30,30);
    if(mouseX > myX)
      myX = myX + (int)(Math.random()*5)-1;
    else
      myX = myX + (int)(Math.random()*5)-3;
    if(mouseY > myY)
      myY = myY + (int)(Math.random()*5)-1;
    else
      myY = myY + (int)(Math.random()*5)-3;
  }
}
Walker [] sam;
void setup(){
  size(500,500);
  sam = new Walker[20];
  int i = 0;
  while(i<sam.length){
    sam[i] = new Walker();
    i++;
  }
}
void draw(){
  background(192);
  for(int i = 0; i<sam.length; i++){
    sam[i].walk();
    sam[i].show();
  }
}
