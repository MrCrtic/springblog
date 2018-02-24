package blog.repositories;

import java.awt.print.Pageable;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import blog.models.Post;
import blog.models.User;
@Repository
public interface UserRepository extends JpaRepository<User, Long>{
	public User findByUsername(String username);
	
}
