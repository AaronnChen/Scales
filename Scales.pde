void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating\
  background(170, 170, 170);
}
void draw() {
  //your code here
  boolean upDown = false;
  for(int y = -60; y <= 510; y += 60){
    for(int x = -45; x < 580; x += 15){
      if (upDown == true) { //if its even
        scale(x, y + 30);
        upDown = false;
      } else {
        scale(x, y);
        upDown = true;
      }
      
    }
  }
    
}
void scale(int x, int y) {
  //scale() represents a single scale. The arguments, x and y will be used
  // to position the individual scale.
  //Scale needs a shape that is either complex or composite
  //the pattern of scales needs to use nested loops
  fill(210, 210, 210);
  beginShape();
  curveVertex(x + 40, y + 10);//top
  curveVertex(x + 40, y + 10);//top
  curveVertex(x + 50, y + 35);//right
  curveVertex(x + 40, y + 70);//bottom
  curveVertex(x + 30, y + 35);//left
  curveVertex(x + 40, y + 10);//top
  curveVertex(x + 40, y + 10);//top
  endShape();
  
  if (Math.random() >= 0.5) {
    fill(225, 225, 225, 50);
  } else {
    fill(80, 80, 80, 50);
  }
  beginShape();
  curveVertex(x + 40, y + 20);//top
  curveVertex(x + 40, y + 20);//top
  curveVertex(x + 45, y + 35);//right
  curveVertex(x + 40, y + 60);//bottom
  curveVertex(x + 35, y + 35);//left
  curveVertex(x + 40, y + 20);//top
  curveVertex(x + 40, y + 20);//top
  endShape();
}
