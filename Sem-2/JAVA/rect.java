
public class rect {

	public static void main(String[] args) {
		Rectangle rec = new Rectangle(15.5,10);
		Circle cir = new Circle(5.643);
		double a = rec.area();
		double b = cir.area();
		rec.display();
		System.out.println("Rectangle area : "+a);
		System.out.println("Circle area : "+b);
	}
}
