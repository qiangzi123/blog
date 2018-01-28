package blog.zzq.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import blog.zzq.dao.BaseDaoImpl;
import blog.zzq.orm.Admin;
import blog.zzq.service.AdminLoginService;
@Service
@Transactional
public class AdminLoginServiceImpl extends BaseDaoImpl<Admin> implements AdminLoginService{
	public int login(Admin admin) {
		try{
			List<Admin> list=this.getSession().createQuery("FROM Admin admin where admin.username=?").setString(0, admin.getUsername()).list();
			System.out.println(list.get(0));
			if(list.get(0).getUsername().equals(admin.getUsername())&&list.get(0).getPassword().equals(admin.getPassword())){
				return 0; //正确
			}else{
				return 1;//账号正确 密码错误
			}
		}catch(Exception e){
			return -1;//账号不存在
		}
		
		
	}

}
