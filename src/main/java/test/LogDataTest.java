package test;
import blog.dao.impl.LogDataImpl;
import blog.domain.LogData;
import org.junit.jupiter.api.Test;
import sun.rmi.runtime.Log;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-11-30-15:03
 */
public class LogDataTest {
    @Test
    public void LogDataTest(){
        LogData logData  = new LogData();
        logData.setId(1);
        logData.setTime("2018-11-30");
        logData.setTitle("CasterWxBlog在Github注册组织！");
        LogDataImpl logData1 = new LogDataImpl() ;
        logData1.save(logData);
    }
    @Test
    public void LogDataTest1(){
        LogData logData = new LogData() ;
        logData.setId(4);
        logData.setTime("2020年02月25日");
        logData.setTitle("博主转行！");
        LogDataImpl logData1 = new LogDataImpl() ;
        logData1.save(logData);
    }
    @Test
    public void D(){
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        System.out.println(df.format(new Date()));
    }
}
