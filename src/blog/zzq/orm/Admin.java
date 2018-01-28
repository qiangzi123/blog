package blog.zzq.orm;

public class Admin {
  private Integer id;
  private String ip;
  private String username;
  private String password;
  private String yanzhengxinxi;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getIp() {
	return ip;
}
public void setIp(String ip) {
	this.ip = ip;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getYanzhengxinxi() {
	return yanzhengxinxi;
}
public void setYanzhengxinxi(String yanzhengxinxi) {
	this.yanzhengxinxi = yanzhengxinxi;
}
@Override
public String toString() {
	return "Admin [id=" + id + ", ip=" + ip + ", username=" + username
			+ ", password=" + password + ", yanzhengxinxi=" + yanzhengxinxi
			+ "]";
}
  
}
