import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigInteger;

public class Main {
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		int N = Integer.parseInt(br.readLine());

		for (int i = 0; i < N; i++) {
			long num = Long.parseLong(br.readLine());
			BigInteger bi = new BigInteger(String.valueOf(num));
			if(bi.isProbablePrime(10)) {
				System.out.println(num);
			}
			else {
				System.out.println(bi.nextProbablePrime());
			}
		}
	}
}