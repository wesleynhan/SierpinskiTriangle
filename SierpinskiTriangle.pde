public void setup()
{
	size(640,640);
}
public void draw()
{
	frameRate(1);
	sierpinski(0,640,640);
}
public void mouseDragged()//optional
{
	
}
public void sierpinski(int x, int y, int len) 
{
	triangle(x,y,x+len/2,y-len,x+len,y);
	if(len <= 20){
		fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		triangle(x,y,x+len/2,y-len,x+len,y);
	}
	else{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}

}