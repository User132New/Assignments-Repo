
public class second{
	public static void main(String s[]){
		Box1 Applebox = new Box1(8,8);
		double volume = Applebox.getVol();
		System.out.println("App vol ="+volume);
		
		Box1 Orangebox = new Box1();
		double volum = Orangebox.getVol();
		System.out.println("Org vol ="+volum);
		
	}
}