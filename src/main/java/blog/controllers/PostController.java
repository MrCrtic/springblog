package blog.controllers;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import blog.models.Post;
import blog.models.User;
import blog.services.NotificationService;
import blog.services.PostService;
import blog.services.UserService;


@Controller
public class PostController {

    @Autowired
    private PostService postService;
    @Autowired
    private UserService userService;
    @Autowired
    private NotificationService notifyService;
    @GetMapping("post/{id}")
    public String postDetail(Model model, @PathVariable("id") Long id, HttpServletRequest request) {
        Post post = postService.findById(id);
        if (post == null) {
            notifyService.addErrorMessage("Cannot find post #" + id);
            return "redirect:/";
        }
        model.addAttribute("post", post);
        return "post";

    }
    @GetMapping("/allposts")
    public String allPosts(Model model) {
        List < Post > post = postService.findAll();
        model.addAttribute("allposts", post);
        return "allposts";
    }
    @GetMapping("/add-post")
    public String savePost() {
        return "/addpost";
    }
    @PostMapping("/postsave")
    public String addPost(@ModelAttribute Post post, HttpServletRequest request) {
        post.setDate(new Date());
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String username = auth.getName(); //get logged in username
        Long id = (long) 18;
        User user = this.userService.findByUsername(username);
        post.setAuthor(user);
        this.postService.create(post);
        return "/addpost";

    }
}
