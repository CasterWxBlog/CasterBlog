package blog.dao;

import blog.domain.FriendLink;

import java.util.List;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-11-30-10:21
 */
public interface IFriendLinkDAO {
    void save(FriendLink friendLink);
    void update(FriendLink friendLink);
    void delete(FriendLink friendLink);
    FriendLink get(Integer id);
    List<FriendLink> listAll();
}
