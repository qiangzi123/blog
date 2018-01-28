package blog.zzq.dao;

import java.util.List;

public interface BaseDao<T> {
	void save(T entity);
	void delete(Integer id);
	void update(T entity);
	T getById(Integer id);
	List<T> getByIds(Integer[] ids);
	List<T> findAll();
}
