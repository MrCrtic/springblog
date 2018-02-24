package blog.services;
import blog.models.User;
import blog.repositories.UserRepository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

	

	@Service
	@Primary
	public class UserServiceJpaImpl implements UserService {

	@Autowired
	private UserRepository userRepo;

	public List<User> findAll() {
	return this.userRepo.findAll();
	}

	public User findByid(Long id) {
	return this.userRepo.findOne(id);
	}

	public User create(User user) {
	return this.userRepo.save(user);
	}

	public User edit(User user) {
	return this.userRepo.save(user);
	}

	public void deleteById(Long id) {
	this.userRepo.delete(id);
	}

	@Override
	public User findByUsername(String username) {
		// TODO Auto-generated method stub
		return this.userRepo.findByUsername(username);
	}

	

	
}

