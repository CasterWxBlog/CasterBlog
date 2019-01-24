package MTest.T3;

import java.util.Random;
public class Main {
    public static void main(String[] args) {
        char []s = "623023199805230019".toCharArray() ;
        int n[] = new int[18];
        int m[] = new int[18];
        int r[] = new int[18];
        Random rd = new Random(1);
        for(int i=0 ; i<18 ;  i++) {
            n[i] = rd.nextInt(10);
            m[i] = i+1;
            r[i] = s[m[i]-1]-'0';
        }
        for(int i=0 ; i<18 ; i++){
            System.out.print(n[i]*100+m[i]%10*10+r[i]+",");
        }
    }
}
