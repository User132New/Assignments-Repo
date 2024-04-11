
public class First {
	public static void main(String s[]){
		Float a,b,c,max=0F;
		a = Float.parseFloat(s[0]);
		b = Float.parseFloat(s[1]);
		c = Float.parseFloat(s[2]);
		max = a>b?a:b;
		max= max>c?max:c;
		System.out.println(max);
		}
}