package blog.zzq.action;

import java.lang.reflect.ParameterizedType;

import javax.annotation.Resource;

import blog.zzq.service.AdminLoginService;
import blog.zzq.service.ImgService;
import blog.zzq.service.MessageService;
import blog.zzq.service.XinZhongSiService;
import blog.zzq.service.Xzs_answerService;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public abstract class BaseAction<T> extends ActionSupport implements ModelDriven<T>{
	///////////注入所有业务接口/////////
	@Resource
	protected XinZhongSiService xinZhongSiService;
	@Resource
	protected MessageService messageService;
	@Resource
	protected AdminLoginService adminLoginService;
	@Resource
	protected Xzs_answerService xzs_answerService;
	@Resource
	protected ImgService imgService;
	protected T model;
	public BaseAction(){
		try{
			ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
			Class<T> clazz = (Class<T>) pt.getActualTypeArguments()[0];
			model = clazz.newInstance();
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	public T getModel(){
		return model;
	}

}
