package blog.zzq.dao;

import java.lang.reflect.ParameterizedType;
import java.util.Collections;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;


@Transactional
public abstract class BaseDaoImpl<T> implements BaseDao<T> {
	@Resource
	private SessionFactory sessionFactory;
	private Class<T> clazz;
	
	public BaseDaoImpl(){
		ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
		this.clazz =(Class<T>) pt.getActualTypeArguments()[0];
	}
	/*获取当前可用session*/
	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	@Override
	public void save(T entity) {
		getSession().save(entity);
	}


	@Override
	public void delete(Integer id) {
		Object obj = getById(id);
		if(obj!=null){
			getSession().delete(obj);
		}
		
	}

	@Override
	public void update(T entity) {
		getSession().update(entity);
		
	}

	@Override
	public T getById(Integer id) {
		if(id==null){
			return null;
		}else{
			return (T) getSession().get(clazz, id);
		}
		
	}

	@Override
	public List<T> getByIds(Integer[] ids) {
		if(ids==null||ids.length==0){
			return Collections.EMPTY_LIST;
		}else{
			return getSession().createQuery(//
					"FROM"+clazz.getSimpleName()+"WHERE id IN (:ids)")//
					.setParameterList("ids", ids)//
					.list();
				
		}
	
	}

	@Override
	public List<T> findAll() {
		return getSession().createQuery(//
				"FROM " + clazz.getSimpleName() +" m order by m.id desc")//
				.list();
	}
}