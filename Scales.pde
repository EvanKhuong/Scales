int red = 0;
int blue = 255;
int green = 255;
void setup(){
  size(1000,1000);
}

void draw(){
  //scale code
  for (int y = 0; y <= 1100; y+= 50)
    for (int x = 0; x <= 1000; x+=50)
     scale(x,y);
     red+=3;
     blue-=2;
     green-=1;
  //color code
  while (red >= 255)
    red = 0;
  while (blue <= 0)
    blue = 255;
  while (green <= 0)
    green = 255;
}


void scale(int x, int y){
fill(red,green,blue);
beginShape();
curveVertex(x-100,y+50);
curveVertex(x-100,y+50);
curveVertex(x-25,y-100);
curveVertex(x+25,y-100);
curveVertex(x+100,y+50);
curveVertex(x+100,y+50);
endShape(CLOSE);
}
