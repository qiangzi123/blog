package blog.zzq.action.view;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;

import blog.zzq.action.BaseAction;
import blog.zzq.orm.XinZhongSi;
import blog.zzq.orm.Xzs_answer;
@Controller
@Scope("prototype")
public class XinZhongSiAction extends BaseAction<XinZhongSi>{
	@Resource
	private SessionFactory sessionFactory;
	private static int ID=0;
	private static List <XinZhongSi> listFlag;
	public String index(){
		List <XinZhongSi> list=this.xinZhongSiService.findAll();
    	ActionContext.getContext().put("list", list);
		return "index";
	}
    public String addXZS()throws Exception{
    	String editor=model.getContent();
		int beginIndex = editor.indexOf("<a");
		while(beginIndex != -1){
			int endIndex = editor.indexOf(">",beginIndex) + 1;
			String beginStr = editor.substring(0,beginIndex);
			String endStr = editor.substring(endIndex);
			String str = editor.substring(beginIndex, endIndex);
			String filename = str.substring(str.lastIndexOf("/")+1, str.lastIndexOf("\""));
			String replace = "<a  href=download.action?filename=" + filename + " /a>";
			editor = beginStr + replace + endStr;
			beginIndex = editor.indexOf("<a",endIndex);
		}
		model.setContent(editor);
		model.setTime(new Date());
		this.xinZhongSiService.save(model);
    	return "addXZS";
    }
    public String deleteXZS() throws Exception{
    	this.xinZhongSiService.delete(model.getId());
    	return "deleteXZS";
    }
    public String showSelete(){
    	List <XinZhongSi>list=this.xinZhongSiService.findAll();
    	ActionContext.getContext().put("list", list);
    	return "showSelete";
    }
    public String read(){
    	listFlag=this.xinZhongSiService.findAll();
    	XinZhongSi xinzhongsi=  xinZhongSiService.getById(model.getId());
    	ID=listFlag.indexOf(xinzhongsi);
    	
    	ActionContext.getContext().getValueStack().push(xinzhongsi);
    	return "read";
    }
    
    
    //上一篇
    public String back(){
    	try{
    	
    		XinZhongSi XZS_back=listFlag.get(--ID);
    	    ActionContext.getContext().getValueStack().push(XZS_back);
    	}catch(Exception e){
    		model.setContent("已经是第一篇了");
    	  ActionContext.getContext().getValueStack().push(model);
    	}
    	return "back";
    }
    //下一篇
    public String next(){
    	try{
    		XinZhongSi XZS_back=listFlag.get(++ID);
    	    ActionContext.getContext().getValueStack().push(XZS_back);
    	}catch(Exception e){
    		model.setContent("已经是最后一篇了");
    	  ActionContext.getContext().getValueStack().push(model);
    	}
    	return "next";
    }
}
