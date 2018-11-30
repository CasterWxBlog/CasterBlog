package test;

import blog.dao.impl.BlogMarkDownDaoImpl;
import org.junit.jupiter.api.Test;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-11-30-15:04
 */
public class BlogMarkDown {
    @Test
    public void blogSaveTest(){
        BlogMarkDownDaoImpl blogMarkDownDao = new BlogMarkDownDaoImpl() ;
        blog.domain.BlogMarkDown blogMarkDown = new blog.domain.BlogMarkDown() ;
        blogMarkDown.setId(1);
        blogMarkDown.setTitle("基于MFC的指纹识别系统");
        blogMarkDown.setLocalurl("/list/detail1.jsp");
        blogMarkDown.setAuthor("CasterWx");
        blogMarkDown.setImgurl("../images/cover/201703181909057125.jpg");
        blogMarkDown.setLocal("C++,MFC");
        blogMarkDown.setTime("2018-11-30");
        blogMarkDown.setReview(2425);
        blogMarkDown.setMemage(54);
        blogMarkDown.setCode("在第12步特征入库中，会对当前指纹的mdl数据与databases中所有的mdl进行对比,然后返回识别结果.");
        blogMarkDownDao.save(blogMarkDown);
    }
    @Test
    public void blogSaveTest2(){
        BlogMarkDownDaoImpl blogMarkDownDao = new BlogMarkDownDaoImpl() ;
        blog.domain.BlogMarkDown blogMarkDown = new blog.domain.BlogMarkDown() ;
        blogMarkDown.setId(2);
        blogMarkDown.setTitle("通过与女朋友聊天获取她的实时情绪波动图谱");
        blogMarkDown.setLocalurl("/list/detail2.jsp");
        blogMarkDown.setAuthor("HHw");
        blogMarkDown.setImgurl("../images/cover/736587c304df9f80e933259fa94fc7cc.png");
        blogMarkDown.setLocal("Python,数据分析,jieba");
        blogMarkDown.setTime("2018-11-31");
        blogMarkDown.setReview(625);
        blogMarkDown.setMemage(34);
        blogMarkDown.setCode("一款为单身狗定制的软件.");
        blogMarkDownDao.save(blogMarkDown);
    }
}
