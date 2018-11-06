//your variable declarations here
Asteroid[] Jp =new Asteroid[10];
Spaceship Frida;
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
  	for(int i=0; i<Jp.length; i++)
  		Jp[i]= new Asteroid();
}
public void draw() 
{
	background(6, 26, 56);//space blue
  	Frida.show();
  	Frida.move();
  	//making stars show up
  	for (int i=0; i<sky.length; i++)
  	{
  		sky[i].show();
  	}
  	//making asteroids show up
  	for (int i=0; i<Jp.length; i++)
  	{	
  		Jp[i].show();
  		Jp[i].move();
  	}

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

}

