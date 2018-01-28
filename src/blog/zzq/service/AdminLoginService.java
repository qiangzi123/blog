package blog.zzq.service;

import blog.zzq.dao.BaseDao;
import blog.zzq.orm.Admin;

public interface AdminLoginService extends BaseDao<Admin>{
   int login(Admin admin);
	

}
