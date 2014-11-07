<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>
<%@ page import="org.apache.commons.io.output.*"%>

<%
	ServletContext context = pageContext.getServletContext(); //该方法返回Servlet上下文对象的引用
	String basePath = context.getInitParameter("file-upload"); //该方法返回名字为“file-upload”的初始化参数的值，初始化参数在web.xml配置文件中进行配置。如果参数不存在，该方法返回null

	String version = request.getParameter("version");
	String platform = request.getParameter("platform");
	String testcase = request.getParameter("testcase");
	String filePath = basePath + testcase + "/";

	File baseDir = new File(basePath);
	if(!baseDir.exists())
		baseDir.mkdir();

	session.putValue("version", version);
	session.putValue("platform", platform);
	session.putValue("testcase", filePath);
/*
	out.println("<html>");
	out.println("<head>");
	out.println("<title>JSP File upload</title>");
	out.println("</head>");
	out.println("<body>");

	out.println("Session: " + filePath + "<br>");
	
	out.println("file:" + request.getParameter("file") + "<br>");
	out.println("type:" + request.getContentType() + "<br>");
	out.println("</body>");
	out.println("</html>");
*/
%>

