boolean EnemyBall = false;
int EnemyBallSize = 10;
float EnemyBallX, EnemyBallY;
float EnemyBallSpeed = 5;
float EnemyBallCount;

class EnemyBalls {
  boolean EnemyBallHit = false;
  float EnemyBallX, EnemyBallY;
  EnemyBalls(float _EnemyBallX, float _EnemyBallY, boolean _EnemyBallHit) {
    EnemyBallX = _EnemyBallX;
    EnemyBallY = _EnemyBallY;
    EnemyBallHit = _EnemyBallHit;
  }

  void show() {
    fill(50,150,255);
    if (EnemyBallHit == false) {
      ellipse(EnemyBallX, EnemyBallY, MyBallSize, MyBallSize);
    }
  }

  void move() {
    EnemyBallY += EnemyBallSpeed;
    if (RectX-RectSize/2 <= EnemyBallX && RectX+RectSize/2 >= EnemyBallX) {
      if (RectY-RectSize/2 <= EnemyBallY && RectY+RectSize/2 >= EnemyBallY) {

        //EnemyHitPoint = EnemyHitPoint-1;

        HitEnemyBall = true;
        EnemyBallHit = true;
      }
    }

    if (EnemyBallHit == true) {
      EnemyBallX = -1000;
    }
  }
}