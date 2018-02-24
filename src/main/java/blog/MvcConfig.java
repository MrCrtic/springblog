package blog;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class MvcConfig extends WebMvcConfigurerAdapter {

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
       
        registry.addViewController("/").setViewName("index");
        registry.addViewController("/addpost").setViewName("addpost");
        registry.addViewController("/allposts").setViewName("allposts");
        registry.addViewController("/allusers").setViewName("allusers");
        registry.addViewController("/login").setViewName("login");
        registry.addViewController("/post").setViewName("post");
        registry.addViewController("/postsave").setViewName("postsave");
        registry.addViewController("/register").setViewName("register");
        
        
    }
   

}