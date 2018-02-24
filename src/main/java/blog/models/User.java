package blog.models;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;
@Entity
@Table(name="users")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String username;
	private String password;
	private String fullName;
	@OneToMany(mappedBy = "author")
	private Set<Post> posts = new HashSet<>();
	
	public User(String username, String fullName, String password) {
		this.username = username;
		this.fullName = fullName;
		this.password = password;
		}

		public User(Long id, String username, String fullName) {
		this.id = id;
		this.username = username;
		this.fullName = fullName;
		}
	
	
	public User() {}
	public User(User user) {
		this.username = user.username;
		this.fullName = user.fullName;
		this.password = user.password;
	}



	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
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
	public void setPassword(String passwordHash) {
		this.password = passwordHash;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public Set<Post> getPosts() {
		return posts;
	}
	public void setPosts(Set<Post> posts) {
		this.posts = posts;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", fullName=" + fullName
				+ ", posts=" + posts + "]";
	}
	
}
