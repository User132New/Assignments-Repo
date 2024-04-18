
public class fifth {

	public static void main(String[] args) {
		bedroom room1 = new bedroom(10, 20, 30);
		int area1 = room1.area();
		int volume1 = room1.volume();
		
		System.out.println("Area of room = "+area1);
		System.out.println("Volume of room = "+volume1);
		}
}