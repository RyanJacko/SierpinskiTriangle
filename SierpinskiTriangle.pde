public void setup()
{
size (500,500);
background(0);
}
public void draw()
{
 sierpinski(50,450,400);
 
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if (len>=40)
	{
		noStroke();
		fill(255,0,100);
		sierpinski(x,y,len/2);
		fill(100,255,0);
		sierpinski(x+len/2,y,len/2);
		fill(0,100,255);
		sierpinski(x +len/4,y-len/2,len/2);
	}
	else
	{
		triangle(x,y,x+len/2,y-len,x+len,y);
	}

}