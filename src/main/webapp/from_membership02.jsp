<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입정보</title>
</head>
<body>
	<%
	String m_id = request.getParameter("p_id"); // 아이디
	String m_pw = request.getParameter("p_pw"); //비밀번호
	String m_name = request.getParameter("p_name"); //이름
	String m_choice = request.getParameter("choice"); // 통신사(셀렉트 옵션)
	String m_ph1 = request.getParameter("phone1"); // 전화번호 앞
	String m_ph2 = request.getParameter("phone2"); // 전화번호 가운데
	String m_ph3 = request.getParameter("phone3"); // 전화번호 뒷
	String m_gender = request.getParameter("gender"); // 성별(남,여)
	String m_intro = request.getParameter("introduction"); // 자기소개
	String[] m_hobby = request.getParameterValues("hobby"); //체크박스(배열)
	%>
	
	아이디 : <%= m_id %> <br><br>
	비밀번호 : <%= m_pw %> <br><br>
	이름: <%= m_name %> <br><br>
	연락처 : <%= m_choice %> <%= m_ph1 %> <%= m_ph2 %> <%= m_ph2 %> <br><br>
	성별 : <%= m_gender %> <br><br>
	취미 : 
		<%
		if(m_hobby != null){ 
			for(int i=0; i<m_hobby.length; i++){
			out.println(m_hobby[i] + "/");
			}
		}else
		{
			out.println("취미없음");
		}
		%>   
		 <br><br>
	본인소개 : <%= m_intro %> <br><br>
</body>
</html>