
/* Lab completion from tutorial https://longbaonguyen.github.io/courses/platformer/platformer.html

*/
//declaring global variables

PImage DVD;
float center_x, center_y;
float change_x, change_y;
float radius;

void setup(){
  
//initializing global variables

  size(800,600);
  imageMode(CENTER);
  DVD = loadImage("data/DVD.jpg");
  center_x = 100;
  center_y = 100;
  change_x = 5;
  change_y = 5;
  radius =   50;
}

void draw(){
  background(255);
image(DVD,center_x,center_y);
 
//velocity of DVD is equal to current velocity + velocity
center_x = center_x + change_x;
center_y = center_y + change_y;

//if the dvd logo moves offscreen then invert the velocity
if((center_x>800)){
change_x = -5;
}
if((center_x<0)){
change_x = 5;
}
if(center_y > 600){
change_y = -5;
}
if(center_y < 0){
change_y = 5;
}

  if(center_x >= width - radius){
    center_x = width - radius;
    change_x *= -1;
  }

}
