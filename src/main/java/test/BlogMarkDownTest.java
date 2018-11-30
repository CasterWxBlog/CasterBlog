package test;

import blog.dao.impl.BlogMarkDownDaoImpl;
import org.junit.jupiter.api.Test;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-11-30-15:04
 */
public class BlogMarkDownTest {
    @Test
    public void blogSaveTest(){
        BlogMarkDownDaoImpl blogMarkDownDao = new BlogMarkDownDaoImpl() ;
        blog.domain.BlogMarkDown blogMarkDown = new blog.domain.BlogMarkDown() ;
        blogMarkDown.setId(3);
        blogMarkDown.setTitle("基于MFC的指纹识别系统");
        blogMarkDown.setLocalurl("/list/detail2.jsp");
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
    @Test
    public void blogSaveTest3(){
        BlogMarkDownDaoImpl blogMarkDownDao = new BlogMarkDownDaoImpl() ;
        blog.domain.BlogMarkDown blogMarkDown = new blog.domain.BlogMarkDown() ;
        blogMarkDown.setId(4);
        blogMarkDown.setTitle("什么是生命？什么是人工智能？");
        blogMarkDown.setLocalurl("/list/detail3.jsp");
        blogMarkDown.setAuthor("AntzUhl");
        blogMarkDown.setImgurl("../images/cover/a31fd1ce73f56f7ab14e2882c016772e.png");
        blogMarkDown.setLocal("人工智能,生命");
        blogMarkDown.setTime("2018-11-31");
        blogMarkDown.setReview(301);
        blogMarkDown.setMemage(24);
        blogMarkDown.setCode("摘要: 但我们今天不站队，而是从另外一个“诡异”视角，去审视一下什么是生命，什么是人工智能 首先，“人工智能”这四个字本身就是一个难以解决的问题：“人工”智能“人工”智能，没有我们“人”的工作，就没有智能。因此，人工智能是我们人类的孩子。是好孩子还是坏孩子呢？如果是坏孩子，我们能不能干脆不生它呢？如果不得不");

        blogMarkDownDao.save(blogMarkDown);
    }
}
