//your variable declarations here
ArrayList <Asteroid> Jp =new ArrayList <Asteroid> ();
Spaceship Frida;
ArrayList <Bullet> ouch = new ArrayList <Bullet> ();

int healthScore = 50;
Star[] sky = new Star[200];
public void setup() 
{
	size(500,500);
	background(6, 26, 56);//space blue
  	Frida = new Spaceship();
  	//making star instances	
  	for (int i=0; i<sky.length; i++)
  	{
  		sky[i]= new Star();
  	}
  	//making asteroid instances
  	for(int i=0; i<=20; i++)
  		Jp.add(new Asteroid());
}
public void draw() 
{
	background(6, 26, 56);//space blue
	 //making stars show up
  	for (int i=0; i<sky.length; i++)
  	{
  		sky[i].show();
  	}

  	Frida.show();
  	Frida.move();

	  //add health score


	  fill(255,255,255);
	  textSize(20);
	  text("Health:"+ healthScore, 20, 30);

  	//making asteroids show up
  	for (int i=0; i<Jp.size(); i++)
  	{	
  		Jp.get(i).move();
  		Jp.get(i).show();
  		float d = dist(Frida.getX(), Frida.getY(), Jp.get(i).getX(), Jp.get(i).getY());
  		if(d < 10)
  			// Jp.remove(i);
  			healthScore= healthScore - 2;
  	}

  	   for(int i=0; i<ouch.size(); i++)
  	 {
  	 	ouch.get(i).show();
  	 	ouch.get(i).move();
  	 }

  	 //check for collisions with bullets and asteroids
  	 for (int b = 0; b < Jp.size(); b++){
	  	 for(int a=0; a< ouch.size(); a++)
	  	 {
	  	 	float dd = dist(ouch.get(a).getX(), ouch.get(a).getY(), Jp.get(b).getX(), Jp.get(b).getY());
	  	 	if(dd<15)
	  	 	{
	  	 		Jp.remove(b);
	  	 		ouch.remove(a);
	  	 		break;
	  	 	}
	  	 }
	  }

	  // if(healthScore==0)
	  	
	  // 	text("GAME OVER", 250, 250);


  	

}
public void keyPressed()
{
	// accelerate
	if (keyCode == UP)
	{
		Frida.accelerate(0.3);
	}
	// hyperspace
	if (key == 'x')
	{
		Frida.setPointDirection((int)(Math.random()*365));
		Frida.setDirectionX(0);
		Frida.setDirectionY(0);
		Frida.setX((int)(Math.random()*500));
		Frida.setY((int)(Math.random()*500));
	}
	//turn left
	if (keyCode== LEFT)
	{
		Frida.turn(-25);
	}

	//trun right
	if (keyCode== RIGHT)
	{
		Frida.turn(25);
	}


	//make bullets appaear every time space is pressed
  	// if (key==' '&& frameCount%5==0&& ouch.size()<10)
  	// {
  	// 	ouch.add(new Bullet(Frida));
  	// }
  	// for(int i=0; i<ouch.size(); i++)
  	// {
  	// 	ouch.get(i).show();
  	// 	ouch.get(i).move();
  	// }

  	 if (key==' '&& ouch.size()<20)//only allows bullets to come out if total # of bullets is less than 20
  	 {
  	 	ouch.add(new Bullet(Frida));
  	 }


}

