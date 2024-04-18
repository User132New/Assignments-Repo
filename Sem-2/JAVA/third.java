
public class third {
	public static void main(String a[]) {
		StringBuffer s1 = new StringBuffer("Pen is good");
		System.out.println("Original is :"+s1);
		System.out.println("Original Length is :"+s1.length());
		for (int i=0; i<s1.length();i++)
		{
			int p = i+1;
			System.out.println("Character at "+p+": "
			+s1.charAt(i));
		}
		String s2 = new String(s1.toString());
		int pos = s2.indexOf("is");
		s1.insert(pos, "Pencil ");
		System.out.println("Modified String : " + s1);
		s1.setCharAt(3, '-');
		System.out.println("With char insertion : "+s1);
		s1.append(" for writing.");
		System.out.println("Appended str : "+s1);
	}
}