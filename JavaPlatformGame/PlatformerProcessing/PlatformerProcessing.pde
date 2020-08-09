//declare global variables
//Made with the help of tutorial https://longbaonguyen.github.io/courses/platformer/platformer.html
PImage imageOfTank;
float center_x, center_y;


//initialize them in setup()
void setup(){
size(800, 600);
imageOfTank = loadImage("data/tank.png");
center_x = 100;
center_y = 300;
}

//modify and update them in draw()
void draw(){
background(255);
image(imageOfTank,center_x,center_y);
center_x = center_x + 5;
}
