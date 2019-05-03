package com.my.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;



import java.net.HttpURLConnection;
import java.net.URL;


import java.util.ArrayList;

import java.util.List;



public class careerApi {

	 

	public static void main(String[] args) throws IOException {
		
		
	        StringBuilder urlBuilder = new StringBuilder("http://inspct.career.go.kr/openapi/test/questions?apikey=ad555c902fb066bbcc3f4c2559622b92&q=5"); /*URL*/
//	        urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=DTzTXkG63oDGz1FJZ2WaLe00w%2Fw8faGsdQMZdFqq6ivcIOGGYDiGFMO6pm3oLLu5t%2Bw4ZGSfgTM7GD5io%2FKwzg%3D%3D"); /*Service Key*/
//	        urlBuilder.append("&" + URLEncoder.encode("srchwrd","UTF-8") + "=" + URLEncoder.encode("세종로 17", "UTF-8")); /*검색어*/
//	        urlBuilder.append("&" + URLEncoder.encode("countPerPage","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*페이지당 출력될 개수를 지정(최대50)*/
//	        urlBuilder.append("&" + URLEncoder.encode("currentPage","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*출력될 페이지 번호*/
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
	        
//	        System.out.println(line);
	        String[] txt=line.split("<newZipCdList>");
	        List<String>list=new ArrayList<String>();
	        System.out.println("--------------------------------------------------------------------------------");
	        
	      
	        String json= json= " pages: [ ";
	        
            //질문만 파싱//
	        String[] arr1 = line.split("\"question\":\"");        
	        for(int i = 0 ; i < arr1.length ; i++){
	        	
	        	arr1[i]=arr1[i].substring(0,arr1[i].lastIndexOf(".")+1);
	        	

	        	
	        	
	        	
	        	
	            System.out.println("arr1"+ "[" + i + "]"+ " = " + arr1[i]);
	        }
	                
	      

	        for(int i=1;i<arr1.length;i++) {
	        	
	        	if(i%10==1) {
	        		json= json+"{ questions: [ { type: \"matrix\",  name: \"Quality\",  isRequired: true, title: \"다음 문항들은 여러분이 일상생활에서 실제 경험해 볼 수 있는 활동들입니다. 그 활동들을 얼마나 좋아하는지 생각해 보고 답하십시오.\","
	        				+ " columns: [  {value: 1, text: \"매우싫다\"  }, { value: 2,   text: \"약간싫다\"  }, {  value: 3,    text: \"약간좋다\"   }, {value: 4, text: \"매우좋다\" }, ],"
	        				+ "  rows: [";
	        		
	        	};
	        	json= json+"{ value:"+i+", text: '"+arr1[i]+"' },";
	        	
	        	if(i%10==0) {
	        		json=json+"  ] }"
	        				+ "]},";
	        	}
	        	
	        	
	        	if(i==arr1.length-1) {
	        		
	        		json=json+"] }],  }]; ";
	        	}
	        	
	        }
	        
	        
	        
	        System.out.println(json);
	       
	        
	        
	        
	    
//	        var json = { pages: [ {
//	        	            questions: [
//	        	                {
//	        	                    type: "matrix",
//	        	                    name: "Quality",
//	        	                    isRequired: true,
//	        	                    title: "다음 문항들은 여러분이 일상생활에서 실제 경험해 볼 수 있는 활동들입니다. 그 활동들을 얼마나 좋아하는지 생각해 보고 답하십시오.",
//	        	                    columns: [
//	        	                        {
//	        	                            value: 1,
//	        	                            text: "매우싫다"
//	        	                        }, {
//	        	                            value: 2,
//	        	                            text: "약간싫다"
//	        	                        }, {
//	        	                            value: 3,
//	        	                            text: "약간좋다"
//	        	                        }, {
//	        	                            value: 4,
//	        	                            text: "매우좋다"
//	        	                        },
//	        	                        
//
//
//	        	                    ],
//	        	                    rows: [
//	        	                        {
//	        	                            value: "affordable",
//	        	                            text: "질문1"
//	        	                        }, {
//	        	                            value: "does what it claims",
//	        	                            text: "질문2"
//	        	                        }, {
//	        	                            value: "better then others",
//	        	                            text: "질문3"
//	        	                        }, {
//	        	                            value: "easy to use",
//	        	                            text: "질문4"
//	        	                        },
//	        	                        {
//	        	                            value: "affordable",
//	        	                            text: "질문5"
//	        	                        }, {
//	        	                            value: "does what it claims",
//	        	                            text: "질문6"
//	        	                        }, {
//	        	                            value: "better then others",
//	        	                            text: "질문7"
//	        	                        }, {
//	        	                            value: "easy to use",
//	        	                            text: "질문8"
//	        	                        },
//	        	                        {
//	        	                            value: "affordable",
//	        	                            text: "질문9"
//	        	                        }, {
//	        	                            value: "does what it claims",
//	        	                            text: "질문10"
//	        	                        },
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
//	        	                    ]
//	        	                }
//	        	            ]
//	        	        }
//	        	       
//
//	        	    ]
//	        	};
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
//	        String startstr="<zipNo>12622</zipNo><address>";
//	        int start=startstr.length();
//	        int end=0;
//	        System.out.println(start);
//	        
//	        
//	        
	        
//	    for(int i=1;txt.length>i;i++) {
//	    	end = txt[i].indexOf("</address>", start);
//	    	list.add(txt[i].substring(start,end ));
//	    	end=0;
//	    	
//	    	
//	    	
//	    	
//	    	
//	    	
//	    }
//	    
	    
	    
	    

	    }
	

		
		
	}


