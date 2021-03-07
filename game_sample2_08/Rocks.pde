float RockCount;
boolean AddRock = false;

class Rocks{
  boolean RockHit;
  float RockX,RockY,RockSize,RockSpeed;
  Rocks(float _RockX,float _RockY, float _RockSize,float _RockSpeed,boolean _RockHit){
    RockX = _RockX;
    RockY = _RockY ;
    RockSize = _RockSize;
    RockSpeed = _RockSpeed;
    RockHit = _RockHit;
  }
  
  void show(){
    fill(200,50,50);
    ellipse(RockX, RockY, RockSize, RockSize);
  }
  void move(){
    RockY += RockSpeed;
    if (RectX - RectSize / 2 <= RockX + RockSize / 4 && RectX + RectSize /2 >= RockX - RockSize / 4) {
      if (RectY - RectSize / 2 <= RockY + RockSize / 4 && RectY + RectSize / 2 >= RockY - RockSize / 4) {

        HitRock = true;
        RockHit = true;
      }
    }
    
    if(RockHit == true){
      RockY = 1000;
      RockSpeed = 0;
    }
  }
}