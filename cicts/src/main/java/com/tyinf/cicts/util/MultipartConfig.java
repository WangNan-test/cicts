package com.tyinf.cicts.util;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

@Configuration
public class MultipartConfig {

	/**
     * 文件上传配置
     * @return
     */
    @Bean
    public CommonsMultipartResolver multipartConfigElement() {
    	CommonsMultipartResolver multipartresolver = new CommonsMultipartResolver();
    	multipartresolver.setMaxUploadSize(1024*1024*5);
        return multipartresolver;
    }
}
