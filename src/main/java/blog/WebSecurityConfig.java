package blog;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import blog.security.*;

@Configuration
@EnableWebMvcSecurity
@ComponentScan(basePackageClasses = CustomUserDetailsService.class)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

 @Autowired 
 private UserDetailsService userDetailsService;
 
 @Autowired
 public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {    
	 auth.userDetailsService(userDetailsService).passwordEncoder(passwordencoder());
 } 
 

 
 @Override
 protected void configure(HttpSecurity http) throws Exception {
	 http
     .authorizeRequests()
         .antMatchers("/resources/**","/css/**","/register","/add-user").permitAll() 
         .antMatchers("/users").hasRole("ADMIN")
         .anyRequest().authenticated()
         .and()
     .formLogin()
         .loginPage("/login")
         .permitAll()
         .and()
     .logout()                                   
         .permitAll();
}
 @Bean(name="passwordEncoder")
    public PasswordEncoder passwordencoder(){
     return new BCryptPasswordEncoder();
    }
}