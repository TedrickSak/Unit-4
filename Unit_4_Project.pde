int counter = 0;
int count = 0;
int line = 10;
int a;
int b;
float c;
float h;
float w;
float x;
float m;
int colour;


void setup() {
  size(800,800);
  background(#58D1E5);

  while (counter < 5) {
    cloud();
    counter = counter + 1;
  }
  
  counter = 0;

  while (counter < 3) {
    pipe();
    counter = counter + 1;
  }
  
  counter = 0;
  
  while (counter < 800) {
    ground(counter);
    counter = counter + 40;
  }
  
  counter = 0;
  
  while(counter < 13) {
    a = (int) random(0,21);
    b = (int) random(5,15);
    brick(a*40,b*40);
    c = random(0,1);
    if (c < 0.6) {
      mushroom(a*40+20,b*40-20);
    }
    counter = counter + 1;
  }
}

void cloud() {
  fill(random(220,255));
  noStroke();
  m = random(20,200);
  ellipse(random(-10,790),random(50,400),m*2,m);
}

void pipe() {
  h = random(40,200);
  w = random(40,80);
  x = random(0,760);
  stroke(0);
  fill(24,random(100,200),54);
  rect(x,680-h,w,h);
  rect(x-5,650-h,w+10,30);
}
  
void ground(int x) {
  pushMatrix();
  translate(x,0);
  brick(0,760);
  brick(0,720);
  brick(0,680);
  popMatrix();
}

void brick(int x, int y) {
  line = 10;
  count = 0;
  fill(#905B0C);
  rect(x,y,40,40);
  while (count < 4) {
    fill(0);
    line(x,y+line,x+40,y+line);
    count = count + 1;
    line = line + 10;
  }
  line(x+20,y,x+20,y+10);
  line(x+20,y+20,x+20,y+30);
  line(x+10,y+10,x+10,y+20);
  line(x+30,y+10,x+30,y+20);
  line(x+10,y+30,x+10,y+40);
  line(x+30,y+30,x+30,y+40);
}

void mushroom(int x, int y) {
  colour = (int) random(0,3);
  if (colour == 0) {
    fill(255,0,0);
  }
  if (colour == 1) {
    fill(0,255,0);
  }
  if (colour == 2) {
    fill(0,0,255);
  } 
  circle(x,y,40);
  fill(#F2DB9D);
  ellipse(x,y+13,25,15);
  fill(0);
  ellipse(x-4,y+12,2,5);
  ellipse(x+4,y+12,2,5);
  fill(250);
  circle(x,y-5,15);
  spots(x,y);
}

void spots(int x, int y) {
  count = 0;
  while (count < 5) {
    circle(x+random(-13,13),y+random(-12,5),random(2,10));
    count = count + 1;
  }
}
