<%@ page language="java" import="java.util.*, java.sql.*" pageEncoding="GB18030"%>
<%@ page import="com.jpg.hebei.service.*" %>
<%@ page import="com.jpg.hebei.model.*" %>

<%@ page import="com.jpg.hebei.service.impl.*" %>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String username = request.getParameter("username");
String password = request.getParameter("pwd1");
String companyName = request.getParameter("companyName");
String name = request.getParameter("name");
String cardID = request.getParameter("cardID");
String companynum = request.getParameter("companynum");
String legalRepresenttative= request.getParameter("legalRepresenttative");
String address = request.getParameter("address");


User u = new User();
u.setUsername(username);
u.setPassword(password);
u.setCompanyName(companyName);
u.setName(name);
u.setCardID(cardID);
u.setCompanynum(companynum);
u.setLegalRepresenttative(legalRepresenttative);
u.setAddress(address);

UserManager um = new UserManagerImpl();
boolean exist = um.exists(u);
if(exist) {
	 out.println("<script language='javaScript'> alert('�û����Ѵ��ڣ����ȷ�����Զ�����ע����档');</script>");
    		   response.setHeader("refresh", "1;url=zhuce.jsp");
	return;
}

um.add(u);
out.println("<script language='javaScript'> alert('ע��ɹ������ȷ�����Զ�������¼���档');  window.open('login.html','_parent');</script>");
%>

