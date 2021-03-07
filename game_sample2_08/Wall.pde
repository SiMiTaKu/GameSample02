float WallPower = 0;
boolean WallLeft = false;
boolean WallRight = false;

class Wall {
  Wall() {
  }

  void system() {
    if (RectX <= 0) {
      WallLeft = true;
    } else {
      WallLeft = false;
    }
    if (RectX >= 600) {
      WallRight = true;
    } else {
      WallRight = false;
    }

    if (WallLeft == true) {
      WallPower = 30;
    }
    if (WallRight == true) {
      WallPower = -30;
    }

    RectX += WallPower;
    WallPower *= 0.9;
  }
}