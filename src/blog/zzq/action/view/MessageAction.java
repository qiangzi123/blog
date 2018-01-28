package blog.zzq.action.view;

import java.util.Date;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;

import blog.zzq.action.BaseAction;
import blog.zzq.orm.Message;
@Controller
@Scope("prototype")
public class MessageAction extends BaseAction<Message>{
    public String selectList() throws Exception{
    	List<Message> list =this.messageService.findAll();
    	ActionContext.getContext().put("list", list);
    	return "selectList";
    }
	public String addMessage() throws Exception{
    	model.setTime(new Date());
    	model.setMessage(model.getMessage()
    	.replace("<", "&lt;")  
    	.replace(">", "&gt;")  
    	.replace("/g", "&quot;"));  
    	this.messageService.save(model);
    	return "message";
    }
	public String show(){
		List<Message> list =this.messageService.findAll();
    	ActionContext.getContext().put("list", list);
		return "showMessage";
	}
	public String deleteMessage(){
		messageService.delete(model.getId());
		return "deleteMessage";
	}
}
