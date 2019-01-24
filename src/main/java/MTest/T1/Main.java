package MTest.T1;

import java.io.RandomAccessFile;
public class Main {
    public static void main(String[] args) throws Exception {
        RandomAccessFile ra1 = new RandomAccessFile("学号.txt","rw");
        RandomAccessFile ra2 = new RandomAccessFile("姓名.txt","rw") ;
        ra1.writeBytes("1610120000");
        ra1.seek(0);
        String xh = ra1.readLine() ;
        ra1.close();
        ra2.writeUTF("赵健淇");
        ra2.seek(0);
        String xm = ra2.readLine().replace(" ","") ;
        ra2.seek(0);
        ra2.writeBytes(xh+"-"+xm);
        ra2.close();
    }
}
