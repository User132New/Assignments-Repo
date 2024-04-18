
public class second{
	public static void main(String s[]){
		Box1 Applebox = new Box1(8,8);
		double volume = Applebox.getVol();
		System.out.println("Apple box volume is "+volume);
		
		Box1 Orangebox = new Box1();
		double vol = Orangebox.getVol();
		System.out.println("Orange box volume is "+vol);
		
	}
}