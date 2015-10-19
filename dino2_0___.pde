float x1;  //x of cactus
float x2;
float x3;
float s1;  //speed of cactus
float s2;
float s3;
float a3;
float a1;  //accesloation of cactus
float a2;
float dinoy;  //dino hight
float dinox; // dino x
float dinos;  //dino speed
float dinoa;  //dino acceloration
float g;  //gravity
int score;
int backGround;
float y1;
float y2;
float y3;
float a5;
float b1;
float c1;
float line1;
float line2;
float a6;
float c2;
int scorex;
int scorey;
int scorec;
float z1;
float z2;
int mouseClicked;
PImage dino;
PImage cacti;
int high;
int col;
int t1;
int t2;
int t3;
int dinob;
float a7;
float c3;
float line3;
float coinx;
float coiny;
void setup() {
  size(800, 200);
  backGround=255;
  x1 = 900;
  x2 = 950 ;
  x3 = 1250 ;
  y1=150;
  y2=150;
  y3=150;
  s1 = 0;
  s2 = 0;
  a1 = 0;
  a2 = 0;
  dinoy = 140;
  dinox = 50;
  dinoa = 0;
  dinos = 0;
  g = 0.00;
  score = 0;
  scorex=700;
  scorey=30;
  scorec=0;
  z1=0.2;
  z2=0.2;
  col=0;
  t1=200;
  t2=200;
  t3=200;
  dinox=50;
  dinob=0;
  dino = loadImage("DINO copy.png");
  cacti = loadImage("cacti.png");
}



void draw() {
  if (t1==255) {
    noLoop();
  }
  background(backGround);

  fill(col);
  textSize(100);
  text("Dino Dash", 100, 100);
  textSize(15);
  text("Click to start", 300, 130);

  //cactus and dino
  tint(200);
  image(cacti, x1, y1, 70, 50);
  image(cacti, x2, y2, 70, 50);
  image(cacti, x3, y3, 70, 50);
  fill(255,255,60);
ellipse(coinx,coiny,20,20);
  //score
  fill(scorec);
  textSize(15);
  text("Score: "+score, scorex, scorey);
  //crazy math stuff
  b1=140-dinoy;
  a5=x1-dinox;
  a6=x2-dinox;
  a7=x3-dinox;
  //line lengh
  c3=sq(a6)+sq(b1);
  line3=sqrt(c3);
  c2=sq(a7)+sq(b1);
  line2=sqrt(c2);
  c1=sq(a5)+sq(b1);
  line1=sqrt(c1);

  // speed
  s1 = s1+a1; 
  s2 = s2+a2;
  s3= s3+a3;
  dinos = dinos-dinoa;

  //movment
  x1 = x1-s1;
  x2 = x2-s2;
  x3 = x3-s3;
  dinoy=dinoy-dinos;
  dinoa=dinoa+g;
  dinox=dinox+dinob;
  //if statments
  if (x1 < -50) {
    x1=900;
    s1=2;
    score=score+10;
    a1=z1;
    z1=z1*1.05 ;
  }
  if (x2 < -50) {
    x2=900;
    s2=2;
    score=score+10;
    a2=z1;
    z2=z2*1.05;
  } 
  if (x3 < -50) {
    x3=900;
    s3=2;
    score=score+10;
    a3=z1;
  } 
  if (x2 < 900) {
    a2 = z1;
  }

  if (dinoy>140) {
    dinoy=140;
    dinos=0 ; 
    dinoa=-0;
    g = 0.00;
  }
  tint(t1, t2, t3);
  image(dino, dinox, dinoy, 60, 60);

if (line3<30) {
    if (high<score) {
      high=score;
    }
    fill(00);
    textSize(100);
    text("GAME OVER", 100, 100);
    textSize(15);
    text("High Score: "+high, 350, 130);
    text("Score: "+score, 370, 150);
    text("click to restart", 350, 170);
    scorec=255;
    t1=255;
    t2=0;
    t3=0;}
  if (line2<30) {
    if (high<score) {
      high=score;
    }
    fill(00);
    textSize(100);
    text("GAME OVER", 100, 100);
    textSize(15);
    text("High Score: "+high, 350, 130);
    text("Score: "+score, 370, 150);
    text("click to restart", 350, 170);
    scorec=255;
    t1=255;
    t2=0;
    t3=0;
  }
  text("  "+dinoy, 50, 50);
  if (line1<30) {
    if (high<score) {
      high=score;
    }
    fill(0);
    textSize(100);
    text("GAME OVER", 100, 100);
    fill(0);
    textSize(15);
    text("High Score: "+high, 350, 130);
    text("Score: "+score, 370, 150);
    text("click to restart", 350, 170);
    scorec=255;
    t1=255;
    t2=0;
    t3=0;
  }
}
void mouseClicked() {
  mouseClicked++;
  if (mouseClicked == 1)
  {
    x1 = 900;
    x2 = 1250 ;
    x3=1550;
    y1=150;
    y2=150;
    s1 = 1;
    s2 = 1;
    s3=0.5;
    a1 = 0.2;
    a2 = 0;
    a3 =0.2;
    dinoy = 140;
    dinox = 50;
    dinoa = 0;
    dinos = 0;
    g = 0.00;
    score = 0;
    scorex=700;
    scorey=30;
    scorec=0;
    z1=0.2;
    z2=0.2;
    col=255;
    t1=200;
    t2=200;
    t3=200;
     coinx=random(60,750);
  coiny=random(60,140);
    loop();
  } else if (mouseClicked>1)
  {
    x1 = 900;
    x2 = 1250 ;
    x3= 1550;
    y1=150;
    y2=150;
    s1 = 1;
    s2 = 1;
    s3= 0.5;
    a1 = 0.2;
    a3=0.2;
    a2 = 0;
    dinoy = 140;
    dinox = 50;
    dinoa = 0;
    dinos = 0;
    g = 0.00;
    score = 0;
    scorex=700;
    scorey=30;
    scorec=0;
    z1=0.2;
    z2=0.2;
    col=255;
    t1=200;
    t2=200;
    t3=200;
     coinx=random(60,750);
  coiny=random(60,140);
    loop();
  }
}

void keyReleased(){
  if (key=='a'){
    dinob=0;
  }
if (key=='d'){
    dinob=0;
  }
}
void keyPressed() {
  if (keyPressed){
  if (key == ' '||key == 'w') {
    if (dinoy==140) {
      dinoa=-2;
      g = 0.25;
    }}
  }
  if (keyPressed){
  if (key == 'a') {
      dinob=-3;
    }
  }
  if (keyPressed){
  if (key == 'd') {
      dinob=3;
    }
  }
}