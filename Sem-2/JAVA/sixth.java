public class sixth {
	public static void main(String s[]) {
		MethodOverriding a = new MethodOverriding();
		B b = new B();
		C c = new C();
		
		MethodOverriding ref;
		ref = a;
		ref.callme();
		ref = b;
		ref.callme();
		ref = c;
		ref.callme();
	}
	
}
