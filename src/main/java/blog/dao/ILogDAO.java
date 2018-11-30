package blog.dao;

import blog.domain.BlogMarkDown;
import blog.domain.LogData;

import java.util.List;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-11-30-14:46
 */
public interface ILogDAO {
    void save(LogData user);
    void update(LogData user);
    void delete(LogData user);
    LogData get(Integer id);
    List<LogData> listAll();
}
