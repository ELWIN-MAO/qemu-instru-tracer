<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ page import="java.io.*"%>
<%@ page import="java.lang.*"%>

<%
	String version = (String) session.getValue("version");
	String platform = (String) session.getValue("platform");
	String testcase = (String) session.getValue("testcase");
//	String runfileName = request.getParameter("runfile");
	String runfile = "/home/jdi/JSPUploadFile/ExcuteFile/helloworld.sh";	//导入符号表脚本的全路径

	out.println("<html>");
	out.println("<head>");
	out.println("<title>JSP TestCase</title>");
	out.println("</head>");
	out.println("<body>");

	try {
		//String[] cmd = new String[]{version,platform,runfile};
		String[] cmd = new String[]{"/bin/sh",runfile};	//运行sh脚本的命令（第一个是命令，其余是参数）
		//String[] cmd = new String[] { "ruby", runfile, version, platform, runfile };	//运行ruby脚本的命令（第一个是命令，其余是参数）
		//String cmd = "/usr/local/apache-tomcat-7.0.54/webapps/ROOT/./helloworld.sh";	//写死脚本命令
		Process process = Runtime.getRuntime().exec(cmd);	//执行命令
		out.println(runfile);
		out.println("<br>");

		int exitValue = process.waitFor();
		out.print(exitValue);
		if (exitValue != 0) {
			process.destroy();
			out.println("<h2>Error to excute!</h2><br>");
			out.println("</body>");
			out.println("</html>");

		} else {
			out.println("<h2>Success to excute!</h2><br>");
		}
	} catch (Exception e) {
		//		e.printStackTrace();
		out.println("Error!");

	} finally {
		out.println("<h2>Finish!</h2>");
		out.println("</body>");
		out.println("</html>");
	}
%>
