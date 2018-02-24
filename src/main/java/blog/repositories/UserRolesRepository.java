package blog.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import blog.models.User;
import blog.models.UserRole;

@Repository
public interface UserRolesRepository extends CrudRepository<UserRole, Long> {

@Query("select a.role from UserRole a, User b where b.username=? and a.userid=b.id")
public List<String> findRoleByUsername(String username);

@Query("select a.userroleid from UserRole a where userid=?")
public Long findByuserid(Long userid);




}
