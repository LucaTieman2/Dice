int sum = 0;

void setup() {
  noLoop();
  size(500, 500);
  background(0, 255, 150);
  fill(0, 255, 150);
  bob = new Die(433, 313);
  jim = new Coin(150, 150);
  sum = 0;
}
void draw() {
  for (int x = 50; x < 500; x+=60) {
    for (int j = 50; j < 400; j+= 60) {
     bob.show();
     bob.roll();
     bob = new Die(x-38, j-38);
     //jim.show();
    }
  }
  strokeWeight(0);
  fill(0, 255, 150);
  rect(0, 370, 1000, 50);
  strokeWeight(15);
  fill(0);
  text("The total sum of the dice is " + sum, 200, 400);
}
void mousePressed() {
  redraw();
  sum = 0;
}
class Die //models one single dice cube
{
   //member variable declarations here
   int myX, myY, number;
   Die(int x, int y) //constructor
   {
     myX = x;
     myY= y;
     number = (int)(Math.random()*6)+1;
          //variable initializations here
   }
     void roll()
     {
        number = (int)(Math.random()*6)+1;
        if(number == 1) {
          fill(237, 228, 206);
          ellipse(myX+25, myY+25, 10, 10);
          sum+=1;
        } else if (number == 2) {
          fill(237, 228, 206);
          ellipse(myX+39, myY+39, 10, 10);
          ellipse(myX+10, myY+10, 10, 10);
          sum+=2;
        } else if (number == 3) {
          fill(237, 228, 206);
          ellipse(myX+39, myY+39, 10, 10);
          ellipse(myX+24.5, myY+24.5, 10, 10);
          ellipse(myX+10, myY+10, 10, 10);
          sum+=3;
        } else if (number == 4) {
          fill(237, 228, 206);
          ellipse(myX+39, myY+39, 10, 10);
          ellipse(myX+39, myY+10, 10, 10);
          ellipse(myX+10, myY+10, 10, 10);
          ellipse(myX+10, myY+39, 10, 10);
          sum+=4;
        } else if (number == 5) {
          fill(237, 228, 206);
          ellipse(myX+39, myY+39, 10, 10);
          ellipse(myX+39, myY+10, 10, 10);
          ellipse(myX+10, myY+10, 10, 10);
          ellipse(myX+10, myY+39, 10, 10);
          ellipse(myX+24.5, myY+24.5, 10, 10);
          sum+=5;
        } else if (number == 6) {
          fill(237, 228, 206);
          ellipse(myX+39, myY+39, 10, 10);
          ellipse(myX+39, myY+10, 10, 10);
          ellipse(myX+10, myY+10, 10, 10);
          ellipse(myX+10, myY+39, 10, 10);
          ellipse(myX+10, myY+24.5, 10, 10);
          ellipse(myX+39, myY+24.5, 10, 10);
          sum+=6;
        }
     }
     void show()
     {
       strokeWeight(14);
       fill(255-(int)random(10, 55), (int)random(0, 255), (int)random(0, 255));
       rect(myX, myY, 50, 50); 
     }
}
class Coin {
  boolean heads;
  int myX, myY;
  
  Coin(int x, int y){
    myX = x;
    myY = y;
    flip();
  }
  void flip () {
    if(Math.random() < .5)
    {
       heads = true;
    }
    else
    {
       heads = false;
    }    
  }
  void show () {
    noStroke();
    fill(255);
    ellipse(myX, myY, 50, 50);
    fill(0);
    if(heads == true) {
      text("Heads", myX-15, myY);
    } else { 
      text("Tails", myX-15, myY);
    }
  }
}

  
Die bob;
Coin jim;
