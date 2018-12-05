class Star //note that this class does NOT extend Floater
{
  private int myX;
  private int myY;
  private int mySize;
  private int myColor;

  Star()
  {
  	myX= (int)(Math.random()*500);
  	myY= (int)(Math.random()*500);
  	mySize= (int)(Math.random()*6);
  	myColor= color((int)(Math.random()*51)+204,(int)(Math.random()*55)+201,(int)(Math.random()*55)+201);
  } 

  public void show()
  {
    fill(myColor);
    stroke(myColor);
    ellipse(myX, myY, mySize, mySize);
  }
}
