Die one;
 int sum = 0;
void setup()
  {
    size (500,500);
      noLoop();
  }
  void draw()
  {
    for (int x = 0; x<=400; x+=100){
      for (int y = 0; y<=400; y+=100){ 
    one = new Die (x,y);
      one.roll(); 
      one.show();
      }
    }
    fill (233,200,200);
    textSize(70);
    text("Total:" + sum, 120, 300);

  }
  void mousePressed()
  {
      redraw();
      sum = 0;

  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int myX, myY, num;
      Die(int x, int y) //constructor
      {
          //variable initializations here
          myX= x;
          myY= y;
          num=0;
      }
      void roll()
      {
       num = (int)(Math.random()*6+1);
               sum = sum + num;

      }
      void show()
      {   
        if (num == 1){
            fill(255,255,255);
            rect(myX, myY, 100, 100, 5);
            fill(0,0,0);
            ellipse (myX+50, myY+50, 20,20);
      } else if (num == 2){
         fill(255,255,255);
            rect(myX, myY, 100, 100, 5);
            fill(0,0,0);
            ellipse (myX+30, myY+30, 20,20);
            ellipse (myX+70, myY+70, 20,20);

  } else if (num == 3){
    fill(255,255,255);
            rect(myX, myY, 100, 100, 5);
            fill(0,0,0);
            ellipse (myX+30, myY+30, 20,20);
            ellipse (myX+50, myY+50, 20,20);
            ellipse (myX+70, myY+70, 20,20);
  } else if (num == 4){
         fill(255,255,255);
            rect(myX, myY, 100, 100, 5);
            fill(0,0,0);
            ellipse (myX+30, myY+30, 20,20);
            ellipse (myX+70, myY+30, 20,20);
            ellipse (myX+30, myY+70, 20,20);
            ellipse (myX+70, myY+70, 20,20);
  } else if (num == 5){
      fill(255,255,255);
            rect(myX, myY, 100, 100, 5);
            fill(0,0,0);
            ellipse (myX+30, myY+30, 20,20);
            ellipse (myX+70, myY+30, 20,20);
            ellipse (myX+30, myY+70, 20,20);
            ellipse (myX+50, myY+50, 20,20);
            ellipse (myX+70, myY+70, 20,20);
  } else {
    fill (255,255,255);
      rect(myX, myY, 100, 100, 5);
            fill(0,0,0);
            ellipse (myX+20, myY+35, 20,20);
            ellipse (myX+50, myY+35, 20,20);
            ellipse (myX+80, myY+35, 20,20);
            ellipse (myX+20, myY+70, 20,20);
            ellipse (myX+80, myY+70, 20,20);
            ellipse (myX+50, myY+70, 20,20);
      }



  }
  }
