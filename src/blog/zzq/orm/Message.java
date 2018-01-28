package blog.zzq.orm;

import java.util.Date;
/**
 * 这是�?��针对留言板的实体�?
 * @author 朱志�?
 *
 */
public class Message {
     private Integer id;//代理ID
     private String  users;//留言作者
     private String  message;//留言内容
     private Date   time;//留言时间
     /*
      * 字段对应的封�?
      */

	public String getUsers() {
		return users;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public void setUsers(String users) {
		this.users = users;
	}
	
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "Message [Id=" + id + ", users=" + users + ", message="
				+ message + ", time=" + time + "]";
	}

}
