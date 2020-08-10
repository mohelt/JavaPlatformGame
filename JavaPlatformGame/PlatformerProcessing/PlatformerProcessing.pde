/* Lab completion from tutorial https://longbaonguyen.github.io/courses/platformer/platformer.html

*/
  //declaring global variables
Sprite p;
//initializing global variables
void setup(){
  size(800,600);
  p = new Sprite("data/tank.png", 1.0,100,300);
  p.change_x = 5;
  p.change_y = 5;
}

void draw(){
  background(255);
  p.display();
  p.update();
}
