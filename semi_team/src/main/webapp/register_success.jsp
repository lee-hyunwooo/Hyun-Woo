<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������ �����ϼ̽��ϴ�!</title>
</head>
<body>
<!-- String user_id = request.getParameter("user_id");
	            String user_pw = request.getParameter("user_pw");
	            String user_email = request.getParameter("user_email");
	            String user_phone = request.getParameter("user_phone");
	            String user_name = request.getParameter("user_name");
	            String user_sex = request.getParameter("user_sex");
	            String user_age = request.getParameter("user_age");
	            String user_date = request.getParameter("user_date"); -->
<h1>ȸ�����Կ� ����!</h1>
<h2> ȸ������ ���� :</h2>
<p> ȸ�� �̸� : <%= session.getAttribute("user_name") %></p>
<p> ���̵� : <%= session.getAttribute("user_id") %></p>
<p> ��й�ȣ : <%= session.getAttribute("user_pw") %></p>
<p> ������� : <%= session.getAttribute("user_age") %></p>
<p>	���� : <%= session.getAttribute("user_sex") %></p>
<p> �̸��� : <%= session.getAttribute("user_email") %></p>
<p> ��ȭ��ȣ : <%= session.getAttribute("user_phone") %></p>
<p> ������ : <%= session.getAttribute("user_date") %></p>
</body>
</html>
