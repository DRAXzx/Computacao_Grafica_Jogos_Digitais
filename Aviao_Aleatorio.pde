class Aviao {

  color cor;
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;
  
  Aviao() {
    cor = color(255);
    xpos = width / 2;
    ypos = height / 2;
    xspeed = 5;
    yspeed = 3;
  }
  void display() {
    rectMode(CENTER);
    fill(cor);
    rect(xpos, ypos, 30, 8);
    rect(xpos + 7, ypos, 5, 35);
    rect(xpos - 7, ypos, 3, 20);
  }
  
  void move() {
    xpos = xpos + xspeed;
    ypos = ypos + yspeed;
    
    if (xpos > width || xpos < 0) {
      xspeed *= -1;
    }
    
    if (ypos > height || ypos < 0) {
      yspeed *= -1;
    }
  }
}

Aviao aviao;

void setup() {
  size(200, 200);
  aviao = new Aviao();
  
 
}

void draw() {
  background(0);
  aviao.display();
  aviao.move();
}
