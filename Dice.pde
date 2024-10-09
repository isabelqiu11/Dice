void setup()
  {
    size(500,500);
      noLoop();
  }
  void draw()
  {
      //the nested loops for rows and columns
      //calling the die constructor
      //show the object (with the name)
      //add a count
      int sum = 0;
      background(196,230,255);
      for(int y = 13; y<=363; y+=70){ //rows
       for(int x = 13; x<=500; x+=70){ //columns
         Die bob = new Die(x,y);
         bob.show();
         sum = sum + bob.dieNumber;
       }
      }
      
      textSize(20);
      text("The total is " + sum + "!", 170,460);
  
      
  }
  void mousePressed()
  {
      redraw();
      
  }
  class Die //models one single dice cube
  {
      int dieNumber, myX,myY;
      //dieNumber is for the number the die shows (1-6)
      //myX and myY are the position of the dice
      
      Die(int x, int y) //constructor
      {
          dieNumber = (int)(Math.random()*6)+1;
          myX = x;
          myY = y;
      }
      void roll() //what happens when you roll it
      {
         
      }
      void show()//the single die
      {
          fill(255);
          rect(myX,myY,50,50);
          fill(0);
        
          if (dieNumber == 1){
          ellipse(myX+12.5,myY +12.5,10,10);
      } else if (dieNumber == 2){
        ellipse(myX+12.5,myY +12.5,10,10);
        ellipse (myX + 37.5,myY+12.5,10,10);
    } else if (dieNumber == 3){
         ellipse(myX+12.5,myY +12.5,10,10);
        ellipse (myX + 37.5,myY+12.5,10,10);
      ellipse(myX+ 12.5,myY+25,10,10);
    }else if (dieNumber == 4){
       ellipse(myX+12.5,myY +12.5,10,10);
        ellipse (myX + 37.5,myY+12.5,10,10);
      ellipse(myX+ 12.5,myY+25,10,10);
      ellipse (myX+37.5, myY + 25,10,10);
    }else if (dieNumber == 5){
      ellipse(myX+12.5,myY +12.5,10,10);
        ellipse (myX + 37.5,myY+12.5,10,10);
      ellipse(myX+ 12.5,myY+25,10,10);
      ellipse (myX+37.5, myY + 25,10,10);
      ellipse(myX+12.5,myY+37.5,10,10);
    }else{
     ellipse(myX+12.5,myY +12.5,10,10);
        ellipse (myX + 37.5,myY+12.5,10,10);
      ellipse(myX+ 12.5,myY+25,10,10);
      ellipse (myX+37.5, myY + 25,10,10);
      ellipse(myX+12.5,myY+37.5,10,10);
      ellipse(myX+37.5,myY+37.5,10,10);
    }
  }
  }






