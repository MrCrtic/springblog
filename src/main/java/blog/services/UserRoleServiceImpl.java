package blog.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import blog.models.User;
import blog.models.UserRole;
import blog.repositories.UserRepository;
import blog.repositories.UserRolesRepository;

@Service
@Primary
public  class UserRoleServiceImpl implements UserRoleService {
	@Autowired
	private UserRolesRepository userRoleRepo;
	public UserRole create(UserRole ur) {
		return this.userRoleRepo.save(ur);
		}
	
	public UserRole edit(UserRole ur) {
		return this.userRoleRepo.save(ur);
		}
	
	
	public Long findByuserid(Long id) {
		return this.userRoleRepo.findByuserid(id);
	}
	
	public void delete(Long id) {
		 this.userRoleRepo.delete(id);
	}

	@Override
	public UserRole find(Long id2) {
		// TODO Auto-generated method stub
		return this.userRoleRepo.findOne(id2);
	}
	

	

	
	
	
	
}
