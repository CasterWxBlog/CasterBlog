package blog.dao;

import blog.domain.Music;

import java.util.List;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-11-30-10:21
 */
public interface IMusicDAO {
    void save(Music music);
    void update(Music music);
    void delete(Music music);
    Music get(Integer id);
    List<Music> listAll();
}
