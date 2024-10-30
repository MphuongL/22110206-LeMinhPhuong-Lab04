package vn.iostar;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;

import vn.iostar.configs.MySiteMeshFilter;

@SpringBootApplication
public class Lab04Application {

	public static void main(String[] args) {
		SpringApplication.run(Lab04Application.class, args);
	}
	@Bean
	public FilterRegistrationBean<MySiteMeshFilter> siteMeshFilter(){
		FilterRegistrationBean<MySiteMeshFilter> registrationBean = new FilterRegistrationBean<MySiteMeshFilter>();
		registrationBean.setFilter(new MySiteMeshFilter());
		registrationBean.addUrlPatterns("/*");
				
		return registrationBean;
	}
}
