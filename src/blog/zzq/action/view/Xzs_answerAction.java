package blog.zzq.action.view;

import org.hibernate.Session;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import blog.zzq.action.BaseAction;
import blog.zzq.orm.XinZhongSi;
import blog.zzq.orm.Xzs_answer;
@Controller
@Scope("prototype")
public class Xzs_answerAction extends BaseAction<Xzs_answer>{
       public String addAnswer(){
    	   XinZhongSi xinZhongSi= this.xinZhongSiService.getById(model.getId());
    	   xinZhongSi.getXzsSet().add(model);
    	   xzs_answerService.save(model);
    	   return "addAnswer";
       }
       public String deleteAnswer(){
       	Xzs_answer xzs_answer= (Xzs_answer) this.xzs_answerService.getById(model.getId());
       	this.xzs_answerService.delete(model.getId());
       	xinZhongSiService.update(xzs_answer.getXzs());
       	return "deleteAnswer";
       }
}
