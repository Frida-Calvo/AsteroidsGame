//your variable declarations here
ArrayList <Asteroid> Jp =new ArrayList <Asteroid> ();
Spaceship Frida;
Bullet test;
Star[] sky = new Star[200];
public void setup() 
{
	size(500,500);
	background(6, 26, 56);//space blue
  	Frida = new Spaceship();
  	test = new Bullet(Frida);
  	//making star instances	
  	for (int i=0; i<sky.length; i++)
  	{
  		sky[i]= new Star();
  	}
  	//making asteroid instances
  	for(int i=0; i<=10; i++)
  		Jp.add(new Asteroid());
}
public void draw() 
{
	background(6, 26, 56);//space blue
  	Frida.show();
  	Frida.move();
  	test.show();
  	test.move();
  	//making stars show up
  	for (int i=0; i<sky.length; i++)
  	{
  		sky[i].show();
  	}
  	//making asteroids show up
  	for (int i=0; i<Jp.size(); i++)
  	{	
  		Jp.get(i).move();
  		Jp.get(i).show();
  		float d = dist(Frida.getX(), Frida.getY(), Jp.get(i).getX(), Jp.get(i).getY());
  		if(d < 15)
  			Jp.remove(i);
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

