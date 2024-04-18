
public class room5 {
	int length;
	int breadth;
	
	room5(int x, int y){
		length = x;
		breadth = y;
	}
	int area() {
		return(length * breadth);
	}
}
//Derived class.

class bedroom extends room5{
	int height;
	bedroom(int x, int y, int z){
		super(x, y);
		height = z;
	}
	 int volume() {
		 return(length * breadth *height);
	 }
}