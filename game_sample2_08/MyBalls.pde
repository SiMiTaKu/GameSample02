boolean MyBall= false;
int MyBallSize = 10;
float MyBallSpeed = 5;

class MyBalls {
  boolean HitBall = false;
  float MyBallX, MyBallY;
  MyBalls(float _MyBallX, float _MyBallY,boolean _HitBall) {
    MyBallX = _MyBallX;
    MyBallY = _MyBallY;
    HitBall = _HitBall;
    
  }

  void show() {
    if(HitBall == false){
      ellipse(MyBallX, MyBallY, MyBallSize, MyBallSize);
    }
  }

  void move() {
    fill(255);
    MyBallY -= MyBallSpeed;
    if (EnemyX-EnemySize/2 <= MyBallX && EnemyX+EnemySize/2 >= MyBallX) {
      if (EnemyY-EnemySize/2 <= MyBallY && EnemyY+EnemySize/2 >= MyBallY) {
        
        EnemyHitPoint = EnemyHitPoint-1;
        
        HitMyBall = true;
        HitBall = true;
      }
    }
    
    if( HitBall == true){
      MyBallX = -1000;
    }
  }
}