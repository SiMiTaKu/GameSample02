MyRect myrect;
Wall wall;
Enemy enemy;
ArrayList<MyBalls> myballs = new ArrayList<MyBalls>();
ArrayList<EnemyBalls> enemyballs = new ArrayList<EnemyBalls>();
ArrayList<Rocks> rocks = new ArrayList<Rocks>();

boolean LEFTPressed=false;
boolean RIGHTPressed = false;

void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  rectMode(CENTER);
  fill(255);
  strokeWeight(1);
  
    //Rocks---------------------------------------
  RockCount ++;
  if (RockCount >= 70) {
    AddRock = true;
    RockCount = 0;
  }
  if (AddRock == true) {
    rocks.add(new Rocks(random(0,600),-30,random(10,50),random(1,3), false));
    AddRock = false;
  }

  for (Rocks r : rocks) {
    r.show();
    r.move();
  }
  
  //enemies------------------------------------

  enemy = new Enemy(false);
  enemy.show();
  enemy.move();

  //EnemyBall----------------------------------

  EnemyBallCount += random(1, 6);
  if (EnemyBallCount >= 100) {
    EnemyBall = true;
    EnemyBallCount = 0;
  }

  if (EnemyBall == true) {
    enemyballs.add(new EnemyBalls(EnemyX, EnemyY, false));
    EnemyBall = false;
  }

  for (EnemyBalls eb : enemyballs) {
    eb.show();
    eb.move();
  }

  //MyRect-----------------------------------

  myrect = new MyRect();
  myrect.show();
  myrect.move();

  //Ball-------------------------------------

  if (MyBall == true) {
    myballs.add(new MyBalls(RectX, RectY, false));
    MyBall = false;
  }

  for (MyBalls mbs : myballs) {
    mbs.show();
    mbs.move();
  }

  //wall --------------------------------------

  wall = new Wall();
  wall.system();
}

void keyPressed() {
  if (key ==' ') {
    MyBall = true;
  }

  switch(keyCode) {
  case LEFT:
    LEFTPressed = true;
    return;
  case RIGHT:
    RIGHTPressed = true;
    return;
  }
}

void keyReleased() {
  switch(keyCode) {
  case LEFT:
    LEFTPressed = false;
    return;
  case RIGHT:
    RIGHTPressed = false;
    return;
  }
}