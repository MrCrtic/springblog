package blog.services;



import blog.models.User;
import blog.models.UserRole;

public interface UserRoleService {
	UserRole create(UserRole ur);
	UserRole edit(UserRole ur);
	void delete(Long ur);
	Long findByuserid(Long id);
	UserRole find(Long id2);
	
	
}
