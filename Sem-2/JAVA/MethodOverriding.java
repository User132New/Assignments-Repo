public class MethodOverriding {
	public void callme() {
		System.out.println("A's Callme.");
	}
}

class B extends MethodOverriding {
	public void callme() {
		System.out.println("B's Callme.");
	}
}

class C extends B {
	public void callme() {
		System.out.println("C's Callme.");
	}
}