package test;
import blog.dao.impl.LogDataImpl;
import org.junit.jupiter.api.Test;
import sun.rmi.runtime.Log;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-11-30-15:03
 */
public class LogData {
    @Test
    public void LogDataTest(){
        blog.domain.LogData = new Log()
        logData.
        logData.setId(1);
        logData.setTime("2018-11-30");
        logData.setTitle("CasterWxBlog在Github注册组织！");
        LogDataImpl logData1 = new LogDataImpl() ;
        logData1.save(logData);
    }
    @Test
    public void LogDataTest1(){
        blog.domain.LogData logData = new blog.domain.LogData() ;
        logData.setId(1);
        logData.setTime("2018-11-30");
        logData.setTitle("CasterWxBlog在Github注册组织！");
        LogDataImpl logData1 = new LogDataImpl() ;
        logData1.save(logData);
    }

}
