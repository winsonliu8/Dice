void setup()
{
  size (546, 500);
  noLoop();
  background (#80CEE3);
}
void draw()
{

  background (#80CEE3);
  int sum = 0;

  for (int y = 5; y < 420; y += 60) {
    for (int x = 5; x < 500; x += 60) {
      Die bob = new Die (x, y); //die is class, bob is object
      bob.show();
      sum = sum + bob.diceFace; //bob dice face is the object
      fill (0);
    }
  }

  text ("Total: " + sum, 250, 450);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //member variable declarations here

  int diceFace, myX, myY;


  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
  }

  void show() {
    diceFace = (int)(Math.random () * 6) +1; // random dice face, global and local scopes
    int z = (int)(Math.random () * 2) + 1; //random color assignment

    fill (#ED4861);
    rect (myX, myY, 50, 50);

    if (diceFace == 1)  // dice face for 1
    {
      //random color for face dots
      if (z == 1) {
        fill (#3752F7);
      } else {
        fill (#39EDA3);
      }

      ellipse(myX + 25, myY + 25, 11, 11); //middle
    } else if (diceFace == 2) // dice face for 2
    {
      //random color for face dots
      if (z == 1) {
        fill (#3752F7);
      } else {
        fill (#39EDA3);
      }
      ellipse (myX + 10, myY + 40, 11, 11); // bottom left
      ellipse (myX + 40, myY + 10, 11, 11); // top right
    } else if (diceFace == 3) // dice face for 3
    {
      //random color for face dots
      if (z == 1) {
        fill (#3752F7);
      } else {
        fill (#39EDA3);
      }
      ellipse (myX + 10, myY + 40, 11, 11); // bottom left
      ellipse (myX + 40, myY + 10, 11, 11); // top right
      ellipse(myX + 25, myY + 25, 11, 11); //middle
    } else if (diceFace == 4) //dice face for 4
    {
      //random color for face dots
      if (z == 1) {
        fill (#3752F7);
      } else {
        fill (#39EDA3);
      }
      ellipse (myX + 10, myY + 40, 11, 11); // bottom left
      ellipse (myX + 40, myY + 10, 11, 11); // top right
      ellipse (myX + 10, myY + 10, 11, 11); // top left
      ellipse (myX + 40, myY + 40, 11, 11); // top right
    } else if (diceFace == 5) //dice face for 5
    {
      //random color for face dots
      if (z == 1) {
        fill (#3752F7);
      } else {
        fill (#39EDA3);
      }
      ellipse (myX + 10, myY + 40, 11, 11); // bottom left
      ellipse (myX + 40, myY + 10, 11, 11); // top right
      ellipse (myX + 10, myY + 10, 11, 11); // top left
      ellipse (myX + 40, myY + 40, 11, 11); // top right
      ellipse(myX + 25, myY + 25, 11, 11); //middle
    } else if (diceFace == 6) // dice face for 6
    {
      //random color for face dots
      if (z == 1) {
        fill (#3752F7);
      } else {
        fill (#39EDA3);
      }
      ellipse (myX + 10, myY + 40, 11, 11); // bottom left
      ellipse (myX + 40, myY + 10, 11, 11); // top right
      ellipse (myX + 10, myY + 10, 11, 11); // top left
      ellipse (myX + 40, myY + 40, 11, 11); // top right
      ellipse (myX + 10, myY + 25, 11, 11); // left middle
      ellipse (myX + 40, myY + 25, 11, 11); // right middle
    }
  } // void show
} // whole class

void roll()
{
  //your code here
}
void show()
{
  //your code here
}

