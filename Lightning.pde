int startX =250;
int startY =0;
int endX = 90;
int endY = 350;
int holeX;
void setup()
{
  size(500,400);
  strokeWeight(3);
  background(0);
  
}
void draw()
{
  
  lightning();
  hole();
  
  
}
void lightning()
{
  stroke(255,255,0);
  while(endX > 0)
  {
    endX = startX + (int)(Math.random()*500)-250;
    endY = startY + (int)(Math.random()*500)+80;
    line(startX, startY, endX, endY);
    
    startX = endX;
    startY = endY;
    
    
    
  }
}

void hole()
{
  stroke(0);
  fill(222,184,135);
  rect(0,350,500,100);
  fill(0,0,0);
  ellipse(holeX, 350, 10, 10);


}
void mousePressed()
{
  background(0,0,0);
  startX = (int)(Math.random()*501);
  startY = 0;
  endX = (int)(Math.random()*501);
  endY = (int)(Math.random()*401);;
  holeX = endX;
}

