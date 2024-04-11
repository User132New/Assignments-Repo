import java.util.StringTokenizer;

public class fourth {
	public static void main(String[] args) {
		String str = "This i$ a $tring-Tokenizer 3xample.";
		StringTokenizer s = new StringTokenizer(str, "$-3.", true);
		while (s.hasMoreTokens()) {
		    String token = s.nextToken();
		    System.out.println(token);
		}
	}
}