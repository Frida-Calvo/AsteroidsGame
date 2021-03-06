class Bullet extends Floater
{
	public Bullet(Spaceship theShip){
		/*Write a constructor that takes one ship argument: Bullet(Spaceship theShip) 
		This constructor will use the public "getter" (accessor) functions of the Spaceship class to:
Intialize myCenterX and myCenterY of the bullet to be the same as the ship.
Initialize myPointDirection of the bullet to be the same as the direction the ship is pointing.
convert myPointDirection to radians with the following code: 
double dRadians =myPointDirection*(Math.PI/180);
Initialize myDirectionX as 5 * Math.cos(dRadians) + the directionX of the ship
Initialize myDirectionY as 5 * Math.sin(dRadians) + the directionY of the ship*/
	myCenterX= theShip.getX();
	myCenterY= theShip.getY();
	myPointDirection= theShip.getPointDirection();
	double dRadians =myPointDirection*(Math.PI/180);
	myDirectionX =  5 * Math.cos(dRadians) + theShip.getDirectionX();
	myDirectionY = 5 * Math.sin(dRadians) + theShip.getDirectionY();
	myColor= color(255, 128, 96);//red
	}

	public void show(){
	    fill(myColor);   
	    stroke(myColor);  
		ellipse((int)myCenterX, (int)myCenterY, 6, 6);
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

  		  public void move ()   //move the floater in the current direction of travel
		  {      
		    //change the x and y coordinates by myDirectionX and myDirectionY       
		    myCenterX += myDirectionX;    
		    myCenterY += myDirectionY;     

		    //wrap around screen    
		    if(myCenterX >width)
		    {     
		     ouch.remove(this);
		    }    
		    else if (myCenterX<0)
		    {     
		      ouch.remove(this);  
		    }    
		    if(myCenterY >height)
		    {    
		      ouch.remove(this);  
		    } 
		    
		    else if (myCenterY < 0)
		    {     
		      ouch.remove(this);   
		    }   

		  } 

}