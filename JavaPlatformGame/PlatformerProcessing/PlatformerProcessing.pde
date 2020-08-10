/* Lab completion from tutorial https://longbaonguyen.github.io/courses/platformer/platformer.html

*/
final static float MOVE_SPEED = 5;
  //declaring global variables
Sprite p;
//initializing global variables
void setup(){
  size(800,600);
  p = new Sprite("data/tank.png", 1.0,100,300);
  p.change_x = 0;
  p.change_y = 0;
}

void draw(){
  background(255);
  p.display();
  p.update();
}
void keyPressed(){
 if(keyCode == RIGHT){
   p.change_x = MOVE_SPEED;
}else if(keyCode == LEFT){
   p.change_x = -MOVE_SPEED;
}else if(keyCode == UP){
   p.change_y = -MOVE_SPEED;
}else if(keyCode == DOWN){
   p.change_y = MOVE_SPEED;
}
}
void keyReleased(){
 if(keyCode == RIGHT){
   p.change_x = 0;
}else if(keyCode == LEFT){
   p.change_x = 0;
}else if(keyCode == UP){
   p.change_y = 0;
}else if(keyCode == DOWN){
   p.change_y = 0;
}
}
