package blog.zzq.orm;

import java.util.Date;
import java.util.Set;
import java.util.TreeSet;
public class XinZhongSi {
	private Integer id;// 代理ID
	private String title;// 标题
	private String author;// 作�?
	private Date time;// 发布时间
	private String content;// 内容
	private Set<Xzs_answer> xzsSet= new TreeSet<Xzs_answer>();
	
		public Integer getId() {
			return id;
		}
		public void setId(Integer id) {
			this.id = id;
		}
		
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public String getAuthor() {
			return author;
		}
		public void setAuthor(String author) {
			this.author = author;
		}
		public Date getTime() {
			return time;
		}
		public void setTime(Date time) {
			this.time = time;
		}
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
		}
		public Set<Xzs_answer> getXzsSet() {
			return xzsSet;
		}
		public void setXzsSet(Set<Xzs_answer> xzsSet) {
			this.xzsSet = xzsSet;
		}
		@Override
		public String toString() {
			return "XinZhongSi [id=" + id + ", title=" + title + ", author="
					+ author + ", time=" + time + ", content=" + content
					+ ", xzsSet=" + xzsSet + "]";
		}
		
}
