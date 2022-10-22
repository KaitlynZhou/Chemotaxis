class Walker
{
  int myX, myY, myColor;
  Walker()
  {
    myX = myY = 250;
    myColor = color(0,0,(int)(Math.random()*256));
  }
  void walk()
  {
    myX = myX + (int)(Math.random()*7)-3;
                //{-3,-2,-1,0,1,2,3}
    myY = myY + (int)(Math.random()*7)-3;
  }
  void show()
  {
    fill(myColor,80);
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

Walker [] bob;
int k = 1;
void setup(){
  background(0);
  size(500,500);
  int m = 0;
  bob = new Walker[k];
  while(m<bob.length){
    bob[m] = new Walker();
    m++;
  }
}

void draw(){
  noStroke();
  fill(0,15);
  rect(0,0,500,500);
  for(int i = 0; i<bob.length; i++){
    bob[i].walk();
    bob[i].show();
  }
}

void keyPressed()
{
  if(keyPressed){
      if(key == '+' || keyCode == UP){
        k*=2;
        setup();
        draw();
      }
      else if (key == '/' || keyCode == DOWN){
        k/=2;
        setup();
        draw();
      }
  }
}
