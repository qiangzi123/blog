package blog.zzq.action.view;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;

import blog.zzq.action.BaseAction;
import blog.zzq.orm.Admin;
@Controller
@Scope("prototype")
public class AdminAction extends BaseAction<Admin>{
	public String login(){
	  System.out.println(model);
	  //返回 0 密码账号都正确 1密码错去 -1账号不存在
	  int flag=this.adminLoginService.login(model);
		if(flag==0){
			return "OK";
		}
		else if(flag==1){
			model.setYanzhengxinxi("密码不正确，请重试！");
			ActionContext.getContext().put("yanzheng",model);
			return "NO";
		}else{
			model.setYanzhengxinxi("账号不存在，请重试！");
			ActionContext.getContext().put("yanzheng",model);
			return "NO";
		}
	}
	public String index(){
		return "ADMIN_INDEX";
	}
	public String explain(){
		return "explain";
	}

}
