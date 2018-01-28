package blog.zzq.action.view;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import blog.zzq.action.BaseAction;
import blog.zzq.orm.Img;
import blog.zzq.service.ImgService;

public class ImgAction extends BaseAction<Img>{
	protected File upload;// 对应 页面 input name名
	protected String uploadFileName;// 上传文件的名字
	protected String uploadContentType;// 上传文件的类型
	protected String result;
	public String imgpage(){
		List<Img> imgs=imgService.findAll();
		ActionContext.getContext().put("imgs", imgs);
		return "imgpage";
	}
	public String adminImgPage(){
		List<Img> imgs=imgService.findAll();
		ActionContext.getContext().put("imgs", imgs);
		return "adminImgPage";
	}
	
	public String addImg() throws IOException{
		if (uploadFileName != null) {
			String path = ServletActionContext.getServletContext().getRealPath(
					"/upload");
			File file = new File(path);
			if (!file.exists()) {
				file.mkdirs();
			}
			FileUtils.copyFile(upload, new File(file, uploadFileName));//
			model.setImgUrl("/upload/" + uploadFileName);
		}
		model.setCreateTime(new Date());
		imgService.save(model);
		return "addImg";
	}
	public String delete(){
		imgService.delete(model.getId());
		return "delete";
	}
   //////////////////////////////
	public File getUpload() {
		return upload;
	}
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public String getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	public String getUploadContentType() {
		return uploadContentType;
	}
	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	
}
