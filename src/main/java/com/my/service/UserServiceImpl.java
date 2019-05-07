package com.my.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.inject.Inject;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import com.my.dao.UserDAO;
import com.my.dto.UserVO;

@Service
public class UserServiceImpl implements UserService{

	@Inject
	private UserDAO dao;
	
	@Override
	public List<UserVO> selectUser() throws Exception {
		return dao.selectUser();
	}
	
	
	public List<HashMap<String, Object>> getMemberList(){
		return dao.selectAll();
	}
	
	
	public void joinMember(HashMap<String, Object>params) {
		if(params.get("member_pw").equals(params.get("user_pw_cf")))
			dao.insertMember(params);
	}
	
	public int loginMember(String m_id, String m_pw) {
		
		HashMap<String, Object>member= dao.selectOne(m_id);
		
		if(member ==null)
			return 0;
		else {
			if(member.get("member_pw").equals(m_pw)) {
				return 1;
			}else 
				return 0;
		}

	}
	
//	public boolean admin(String m_id){
//	
//		
//		HashMap<String, Object>member= mDao.selectOne(m_id);
//
//		if(member.get("m_admin").equals("admin"))
//			return true;
//		else
//			return false;
//		
//	}	
	
	
	public String careerApi1() throws IOException {
		
		
		
		StringBuilder urlBuilder = new StringBuilder("http://inspct.career.go.kr/openapi/test/questions?apikey=ad555c902fb066bbcc3f4c2559622b92&q=5");
		URL url = new URL(urlBuilder.toString());
		 HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		  conn.setRequestMethod("GET");
	        conn.setRequestProperty("Content-type", "application/json");
	        System.out.println("Response code: " + conn.getResponseCode());
	        BufferedReader rd;
	        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
	            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	        } else {
	            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
	        }
	        StringBuilder sb = new StringBuilder();
	
	        String line;
	        while ((line = rd.readLine()) != null) {
	        
	            sb.append(line);
	     
	        }
	        rd.close();
	        conn.disconnect();
	        line=null;
	        line=sb.toString();

	        String json= json= " { \"pages\": [ ";
	        
            //질문만 파싱//
	        String[] arr1 = line.split("\"question\":\"");        
	        for(int i = 0 ; i < arr1.length ; i++){
	        	
	        	arr1[i]=arr1[i].substring(0,arr1[i].lastIndexOf(".")+1);
	        	
	        }
	                

	        for(int i=1;i<arr1.length;i++) {
	        	
	        	if(i%10==1) {
	        		json= json+"{ \"questions\": [ { \"type\": \"matrix\",  \"name\": \""+i*100+" \",  \"isRequired\": true, \"title\": \"다음 문항들은 여러분이 일상생활에서 실제 경험해 볼 수 있는 활동들입니다. 그 활동들을 얼마나 좋아하는지 생각해 보고 답하십시오.\" , "
	        				+ " \"columns\": [  {\"value\": 1, \"text\": \"매우싫다\"  }, { \"value\": 2,   \"text\": \"약간싫다\"  }, {  \"value\": 3,    \"text\": \"약간좋다\"   }, {\"value\": 4, \"text\": \"매우좋다\" } ] , \"rows\" : [ ";
	        		
	        	};
	        	
	        	
	        	if(i%10==0) {
	        		json=json+" { \"value\" : "+i+", \"text\" : \""+arr1[i]+" \" }  ] } ] },";
	        				
	        	}else if(i%10!=0&&i!=arr1.length-1){
	        		json= json+"{ \"value\":"+i+", \"text\": \""+arr1[i]+"\" },";
	        	};
	        	
	        	
	        	if(i==arr1.length-1) {
	        		
	        		json=json+" { \"value\" : "+i+", \"text\" : \""+arr1[i]+" \"  }  ] } ] }   ] }";
	        	}
	        	
	        }
	        
	        
		System.out.println("yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy");
		return json;
	}
	
	
	
	
	
	
	
	public HashMap<String, Object>getMemberInfo(String m_id){
	
		
		return dao.selectOne(m_id);

	}
	
	
	
	public void updateMember(HashMap<String,Object>params) {
		
			dao.updateMember(params);
		
	}


	@Override
	public List<HashMap<String, Object>> getMsgList(String member_id) {
		// TODO Auto-generated method stub
		return dao.selectMsg(member_id);
	}


	@Override
	public List<HashMap<String, Object>> getMentorList(String member_id) {
		// TODO Auto-generated method stub
		return dao.selectmentor(member_id);
	}
	
}



