
class Asteroid extends Floater
{
	private int mySpeedRotation;
	public Asteroid()
	{
		//make a member int variable for speed of rotation for each asteroid
		//initialized to have equal probablity of being positive or negative
		mySpeedRotation= (int)(Math.random()*5)-2;
		corners= 6;
		xCorners= new int [corners];
    	yCorners= new int [corners];

    	xCorners[0]= -11;
    	yCorners[0]= -8;

    	xCorners[1]= 7;
    	yCorners[1]= -8;

    	xCorners[2]= 13;
    	yCorners[2]= 0;

    	xCorners[3]= 6;
    	yCorners[3]= 10;

    	xCorners[4]= -11;
    	yCorners[4]= 8;

    	xCorners[5]= -5;
    	yCorners[5]= 0;

    	myColor = color(169, 180, 198);
    	myCenterX= (int)(Math.random()*500);
    	myCenterY= (int)(Math.random()*500);
    	myDirectionX= (int)(Math.random()*7)-3;
    	myDirectionY= (int)(Math.random()*7)-3;
    	myPointDirection= (int)(Math.random()*365);
	}


		public void setX(int x) {myCenterX = (double) x;}  

  		public int getX() {return (int) myCenterX;}   

  		public void setY(int y) {myCenterY =  (double)y;}   

  		public int getY() {return (int)myCenterY;}   

  		public void setDirectionX(double x){myDirectionX = x;}   

  		public double getDirectionX() {return myDirectionX;}   

  		public void setDirectionY(double y) {myDirectionY = y;}   

  		public double getDirectionY() {return myDirectionY;}   

  		public void setPointDirection(int degrees) {myPointDirection = (double)degrees;}   

  		public double getPointDirection() {return  myPointDirection;} 

  		public void move ()
  		{
  			//turns (rotates) each Asteroid at its own speed
  			turn(mySpeedRotation);
  			super.move();
  		}



}