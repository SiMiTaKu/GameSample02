float EnemySize= 40;
float EnemySpeed = 2;
boolean HitMyBall = false;
int EnemyX = 300;
int EnemyY = -30;
int EnemyHitPoint = 30;
int EHP = EnemyHitPoint;
class Enemy {
  boolean HitPointEmpty;
  Enemy(boolean _HitPointEmpty) {
    HitPointEmpty = _HitPointEmpty;
  }

  void show() {
    fill(50, 150, 255);
    if (HitPointEmpty == false) {
      rectMode(CENTER);
      rect(EnemyX, (EnemyY - EnemySize/10), EnemySize * 1.5, EnemySize/10);
      rect((EnemyX + EnemySize * 3/4), EnemyY, EnemySize * 1/5, EnemySize / 2);
      triangle((EnemyX + EnemySize * 3/4), (EnemyY + EnemySize * 1/2), (EnemyX + EnemySize * 3/4 + EnemySize/4), (EnemyY + EnemySize/10), (EnemyX + EnemySize * 3/4 - EnemySize/4), (EnemyY + EnemySize/10));
      rect(EnemyX - EnemySize * 3/4, EnemyY, EnemySize * 1/5, EnemySize / 2);
      triangle((EnemyX - EnemySize * 3/4), (EnemyY + EnemySize * 1/2), (EnemyX - EnemySize * 3/4 + EnemySize/4), (EnemyY + EnemySize/10), (EnemyX - EnemySize * 3/4 - EnemySize/4), (EnemyY + EnemySize/10));
      rect(EnemyX, EnemyY, EnemySize * 2/5, EnemySize * 3/5);
      triangle(EnemyX, (EnemyY + EnemySize * 7/9), (EnemyX + EnemySize/3), (EnemyY + EnemySize/4), (EnemyX - EnemySize/3), (EnemyY + EnemySize/4));
    }
    
    rectMode(CORNER);
    fill(0);
    stroke(50, 150, 255);
    rect(460, 50, EHP * 3, 10);
    fill(50, 150, 255);
    rect(460, 50, EnemyHitPoint * 3, 10);
    stroke(0);
    rectMode(CENTER);
  }

  void move() {
    if (HitPointEmpty == false) {
      if (EnemyY < 100) {
        EnemyY += EnemySpeed;
      }
      if ( EnemyY >= 100) {
        EnemyX += EnemySpeed;
        if (EnemyX >= 600) {
          EnemySpeed *= -1;
        }
        if (EnemyX <= 0) {
          EnemySpeed *= -1;
        }
      }
    }


    if (EnemyHitPoint <=0) {
      EnemyHitPoint = 0;
      EnemyX = -1000;
      HitPointEmpty = true;
    }
  }
}