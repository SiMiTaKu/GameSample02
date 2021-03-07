float RectX = 300;
float RectY = 500;
float RectSpeedLeft, RectSpeedRight = 3;
float MaxSpeed = 15;
float MinSpeed = 3;
int RectSize = 40;
boolean HitEnemyBall,HitRock = false;
int MyRectHitPoint = 30;
int MyHP = MyRectHitPoint;

class MyRect {
  MyRect() {
  }

  void show() {
    fill(255);
    //mein----------------------------------------------------
    fill(255);
    triangle(RectX, RectY-RectSize*2/3, RectX + RectSize/20, RectY-RectSize/4, RectX-RectSize/20, RectY-RectSize/4);
    ellipse(RectX, RectY-RectSize*2/3, RectSize/10, RectSize/10);
    arc(RectX, RectY, RectSize*5/7, RectSize*3/4, radians(180), radians(360), PIE);
    ellipse(RectX, RectY+-RectSize/5, RectSize/5, RectSize/5);
    strokeJoin(ROUND); 
    rect(RectX, RectY, RectSize, 3);
    arc(RectX, RectY, RectSize/4, RectSize/4, radians(0), radians(180), PIE);
    arc(RectX - RectSize / 3, RectY, RectSize/4, RectSize/4, radians(0), radians(180), PIE);
    arc(RectX + RectSize / 3, RectY, RectSize/4, RectSize/4, radians(0), radians(180), PIE);
    
    //HP---------------------------------------------------------
    rectMode(CORNER);
    fill(0);
    stroke(255);
    rect(50, 550, MyHP * 3, 10);
    fill(255);
    rect(50, 550, MyRectHitPoint * 3, 10);
    stroke(0);
    rectMode(CENTER);
  }

  void move() {
    if (LEFTPressed == true) {
      RectX -= RectSpeedLeft;
      RectSpeedLeft *= 1.02;
    }
    if (RIGHTPressed == true) {
      RectX += RectSpeedRight;
      RectSpeedRight *= 1.02;
    }

    if (RectSpeedLeft >= MaxSpeed) {
      RectSpeedLeft = MaxSpeed;
    }
    if (RectSpeedRight >= MaxSpeed) {
      RectSpeedRight = MaxSpeed;
    }

    if (LEFTPressed == false) {
      RectSpeedLeft *= 0.95;
    }
    if (RIGHTPressed == false) {
      RectSpeedRight *= 0.95;
    }

    if (RectSpeedLeft <= MinSpeed) {
      RectSpeedLeft = MinSpeed;
    }
    if (RectSpeedRight <= MinSpeed) {
      RectSpeedRight = MinSpeed;
    }
    
    if(HitEnemyBall == true){
      MyRectHitPoint = MyRectHitPoint - 1;
      HitEnemyBall = false;
    }
    
    if(HitRock == true){
      MyRectHitPoint = MyRectHitPoint - 1;
      HitRock = false;
    }
    
    if(MyRectHitPoint == 0){
      RectX = 1000;
      MyRectHitPoint = 0;
    }
  }
}