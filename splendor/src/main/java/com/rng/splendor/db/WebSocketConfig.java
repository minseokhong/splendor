package com.rng.splendor.db;

import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;
import org.springframework.web.socket.config.annotation.WebSocketMessageBrokerConfigurer;

@Configuration
@EnableWebSocketMessageBroker
public class WebSocketConfig implements WebSocketMessageBrokerConfigurer {

	@Override
	public void configureMessageBroker(MessageBrokerRegistry registry) {
		registry.enableSimpleBroker("/alert");// 서버가 클라이언트에게 메시지를 전달할 경로: 클라이언트가 해당 경로를 subscribe하면 메시지가 전달.
		registry.setApplicationDestinationPrefixes("/msg");// 모든 클라이언트로부터 받은 메시지의 prefix를 설정
//		registry.setUserDestinationPrefix("/user");// 몰라서 못씀..
		
//		registry.addHandler(echo, "/echo");// WebSocket, SockJS의 경우 컨트롤러 역할을 하는 핸들러 추가
	}

	@Override
	public void registerStompEndpoints(StompEndpointRegistry registry) {
		registry.addEndpoint("/websocket").setAllowedOrigins("*").withSockJS();
	}
	
	

}
