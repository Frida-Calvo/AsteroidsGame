class Spaceship extends Floater  
{   
    public Spaceship()
    {
    	corners=24;
    	xCorners= new int [corners];
    	yCorners= new int [corners];
    	xCorners[0]= 8;
    	yCorners[0]= -2;

    	xCorners[1]= 8;
    	yCorners[1]= 2;

    	xCorners[2]= 4;
    	yCorners[2]= 2;

    	xCorners[3]= 4;
    	yCorners[3]= 4;

    	xCorners[4]= -3;
    	yCorners[4]= 4;

    	xCorners[5]= -3;
    	yCorners[5]= 8;

    	xCorners[6]= 0;
    	yCorners[6]= 8;

    	xCorners[7]= 0;
    	yCorners[7]= 10;

    	xCorners[8]= -6;
    	yCorners[8]= 10;

    	xCorners[9]= -6;
    	yCorners[9]= 8;

    	xCorners[10]= -5;
    	yCorners[10]= 8;//from 2 to 8

    	//missing corner here (-5,2)
    	xCorners[11]= -5;
    	yCorners[11]= 2;

    	xCorners[12]= -7;
    	yCorners[12]= 2;

    	xCorners[13]= -7;
    	yCorners[13]= -2;//changed from -7

    	xCorners[14]= -5;
    	yCorners[14]= -2;

    	xCorners[15]= -5;
    	yCorners[15]= -8;

    	xCorners[16]= -6;
    	yCorners[16]= -8;

    	xCorners[17]= -6;
    	yCorners[17]= -10;

    	xCorners[18]= 0;
    	yCorners[18]= -10;

    	xCorners[19]= 0;
    	yCorners[19]= -8;

    	xCorners[20]= -3;
    	yCorners[20]= -8;

    	xCorners[21]= -3;
    	yCorners[21]= -4;

    	xCorners[22]= 4;
    	yCorners[22]= -4;

    	xCorners[23]= 4;
    	yCorners[23]= -2;



    	myColor= color(143, 174, 224); //light blue 
  		myCenterX=myCenterY=250; //holds center coordinates   
  		myDirectionX= 0;
  		myDirectionY= 0; //holds x and y coordinates of the vector for direction of travel   
  		myPointDirection= 0; //holds current direction the ship is pointing in degrees

    }

		void setX(int x){
			myCenterX = (double) x;
		}  
		int getX(){
			return (int) myCenterX;
		}   
  		void setY(int y){
  			myCenterY =  (double)y;
  		}   
  		int getY(){
  			return (int)myCenterY;
  		}   
  		void setDirectionX(double x){
  			myDirectionX = x;
  		}   
  		double getDirectionX(){
  			return myDirectionX;
  		}   
  		void setDirectionY(double y){
  			myDirectionY = y;
  		}   
  		double getDirectionY(){
  			return myDirectionY;
  		}   
  		void setPointDirection(int degrees){
  			myPointDirection = (double)degrees;
  		}   
  		double getPointDirection(){
  			return  myPointDirection;
  		} 
}
