package test;

import blog.dao.impl.FriendLinkImpl;
import blog.domain.FriendLink;
import org.junit.jupiter.api.Test;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-12-04-10:15
 */
public class FriendLinkTest {
    @Test
    public void test(){
        FriendLinkImpl friendLinkImpl = new FriendLinkImpl() ;
        FriendLink friendLink = new FriendLink() ;
        friendLink.setId(2);
        friendLink.setName("xq");
        friendLink.setUrl("https://github.com/hibearflag");
        friendLink.setImg("../images/cover/xqgit.jpg");
        friendLinkImpl.save(friendLink);
    }
}
