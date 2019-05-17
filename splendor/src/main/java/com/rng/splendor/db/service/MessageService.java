package com.rng.splendor.db.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rng.splendor.db.dto.MessageLog;
import com.rng.splendor.db.mapper.MessageMapper;

import net.minidev.json.JSONArray;
import net.minidev.json.JSONObject;

@Service
public class MessageService {
	
	@Autowired
	MessageMapper msgMapper;
	
	public MessageLog getOneMessage(String mess_num) {// 메시지 하나 얻기
		return msgMapper.selectOneMessage(mess_num);
	}
	
	public void sendMessage(MessageLog messageLog) {// 메시지 보내기
		messageLog.setMess_send_date(new Date());
		msgMapper.insertMessage(messageLog);
	}
	
	public JSONObject readMessage(String mess_num) {// 메시지 읽기
		MessageLog message = getOneMessage(mess_num);
		
		//메시지를 json 타입으로 만들기 위해 변환
		HashMap<String, String> messageMap = new HashMap<>();

		messageMap.put("mess_sender", message.getMess_sender());
		messageMap.put("mess_content", message.getMess_content());
		
		//메시지가 읽지 않음 상태이면 읽음으로 업데이트
		if(!message.isMess_is_show()) {
			msgMapper.readMessage(mess_num);
		}
		
		return hashMapToJSON(messageMap);
	}
	
	public List<MessageLog> getMessageList(String receiver) {//특정 사용자가 받은 메시지 전체 리스트 얻기
		return msgMapper.messageList(receiver);
	}
	
	public List<HashMap<String,String>> getSenderList(String receiver) {//특정 사용자가 받은 메시지의 발신자 정보 얻기
		return msgMapper.senderList(receiver);
	}
	
	public JSONObject hashMapToJSON(Map<String, ?> map) {// 받은 데이터를 json 타입으로 변환하는 메서드
		JSONObject jsonObject = new JSONObject();
		for(String key : map.keySet()) {
//			if(key != null && key.equals("mess_send_date")) {
//				jsonObject.put(key, parseDateFormat((Date) map.get(key)));
//			} else
				jsonObject.put(key, map.get(key));
		}
		return jsonObject;
	}
	
	public JSONArray getSenderJSON(String receiver) {// 받은 데이터 리스트를 json 타입으로 변환하는 메서드
		JSONArray senderList = new JSONArray();
		for(HashMap<String, String> tmp : msgMapper.senderList(receiver)) {
			senderList.add(hashMapToJSON(tmp));
		}
		return senderList;
	}
	
	public String parseDateFormat(Date date) {
		return new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(date);
	}

}
