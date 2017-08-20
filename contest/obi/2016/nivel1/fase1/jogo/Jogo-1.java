import java.io.InputStreamReader;
import java.io.BufferedReader;
import java.util.Scanner;

class Jogo{

  public static void main(String[] args) {
    int p, d1, d2, result;
    Scanner s = new Scanner(new BufferedReader (new InputStreamReader(System.in)));

    p = s.nextInt();
    d1 = s.nextInt();
    d2 = s.nextInt();

    if ((d1 + d2) % 2 == p)
    result = 0;
    else
    result = 1;

    System.out.println(result);
  }

}
