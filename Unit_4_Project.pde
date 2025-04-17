int counter = 0;
int count = 0;
int line = 10;
int a;
int b;


void setup() {
  size(800,800);
  background(#58D1E5);
  
  while (counter < 800) {
    ground(counter);
    counter = counter + 40;
  }
  
  counter = 0;
  
  while(counter < 13) {
    a = (int) random(0,21);
    b = (int) random(5,15);
    brick(a*40,b*40);
    counter = counter + 1;
  }
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
