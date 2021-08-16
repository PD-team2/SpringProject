package com.side_on.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;
import org.springframework.web.socket.server.standard.ServletServerContainerFactoryBean;

import com.side_on.handler.SocketHandler;

@Configuration
@EnableWebSocket
public class WebSocketConfig implements WebSocketConfigurer{

	@Autowired
	SocketHandler socketHandler;
	
	@Override
	public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
		registry.addHandler(socketHandler, "/chating/{roomNumber}");
	}
	
	
	/** 파일 전송 시, handleBinaryMessage 메소드에 들어오지를 않고,
	 *  afterConnectionClosed 메소드에 들어와서 웹 소켓이 꺼짐을 방지 */
//	@Bean
//	public ServletServerContainerFactoryBean createWebSocketContainer() {
//	ServletServerContainerFactoryBean container = new ServletServerContainerFactoryBean();
//	container.setMaxTextMessageBufferSize(500000);
//	container.setMaxBinaryMessageBufferSize(500000);
//	return container;
//	}
}