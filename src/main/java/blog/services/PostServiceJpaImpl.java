package blog.services;

import java.awt.print.Pageable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import blog.models.Post;
import blog.repositories.PostRepository;

@Service
@Primary
public class PostServiceJpaImpl implements PostService {
	@Autowired
	private PostRepository postRepo;

	@Override
	public List<Post> findAll() {
		// TODO Auto-generated method stub
		return this.postRepo.findAll();
	}

	@Override
	public List<Post> findLatest5() {
		// TODO Auto-generated method stub
		return this.postRepo.findTop5ByOrderByDateDesc();
	}

	@Override
	public Post findById(Long id) {
		// TODO Auto-generated method stub
		return this.postRepo.findOne(id);
	}

	@Override
	public Post create(Post post) {
		// TODO Auto-generated method stub
		return this.postRepo.save(post);
	}

	@Override
	public Post edit(Post post) {
		// TODO Auto-generated method stub
		return this.postRepo.save(post);
	}

	@Override
	public void  deleteById(Long id) {
		// TODO Auto-generated method stub
		this.postRepo.delete(id);
	}

}
