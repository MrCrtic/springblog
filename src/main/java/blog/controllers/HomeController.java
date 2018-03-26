package blog.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import blog.models.Post;
import blog.models.User;
import blog.models.UserRole;
import blog.repositories.PostRepository;
import blog.repositories.UserRolesRepository;
import blog.services.PostService;
import blog.services.UserRoleService;
import blog.services.UserService;

@Controller
public class HomeController {
    @Autowired
    private PostService postService;
    @Autowired
    private UserService userService;
    @Autowired
    private UserRoleService userRole;
    @GetMapping("/")
    public String index(Model model) {
        List < Post > latest5 = postService.findLatest5();
        model.addAttribute("latest5", latest5);
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String username = auth.getName(); //get logged in username
        if (username != null) {
            model.addAttribute("username", username);
        } else {
            model.addAttribute("username", null);
        }

        return "index";
    }

    @GetMapping("/users")
    public String allUsers(Model model) {
        List < User > users = this.userService.findAll();
        model.addAttribute("users", users);

        return "allusers";
    }
    @PostMapping("/add-user")
    public String addUser(@ModelAttribute User user, @ModelAttribute UserRole ur, @RequestParam(name = "username") String username, @RequestParam(name = "fullname") String fullname, @RequestParam(name = "password") String password) {
        //Create a new password encoder
        PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

        //Encode the password
        //		String password = "test123";
        String hashedPassword = passwordEncoder.encode(password);

        //Create the user with the encoded password
        user = new User(username, fullname, hashedPassword);
        userService.create(user);
        user = this.userService.findByUsername(username);
        ur = new UserRole(user.getId(), "ROLE_USER");
        userRole.create(ur);

        //then persist

        return "/login";
    }
    @GetMapping("/register")
    public String Register() {
        return "/register";
    }
    @GetMapping("/delete_user")
    public String deleteUser(@RequestParam(name = "id") Long id) {
        this.userService.deleteById(id);
        return "redirect:/users";
    }
    @GetMapping("/add-admin")
    public String addAdmin(Model model, @ModelAttribute UserRole ur, @RequestParam(name = "id") Long id) {
        Long id2 = this.userRole.findByuserid(id);
        ur = this.userRole.find(id2);
        if (id2 != null) {
            this.userRole.delete(id2);
        }
        UserRole ur2 = new UserRole(id, "ROLE_ADMIN");
        this.userRole.create(ur2);



        return "redirect:/users";
    }


}
