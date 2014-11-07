<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ page import="java.io.*"%>
<%@ page import="java.lang.*"%>

<%
	String version = (String) session.getValue("version");
	String platform = (String) session.getValue("platform");
	String testcase = (String) session.getValue("testcase");
	String filename = (String) session.getValue("dirname");
//	String runfileName = request.getParameter("runfile");
	String runfile = "";

	out.println("<html>");
	out.println("<head>");
	out.println("<title>JSP TestCase</title>");
	out.println("</head>");
	out.println("<body>");

//out.println(location.href="http://124.16.141.184:8080/mym_test/"+filename);
//out.println(filename);
	try {
		if (testcase.indexOf("testcase1")!=-1){
			runfile = "/home/crdong/main/a.sh";
		}else if (testcase.indexOf("testcase2")!=-1){
			String dirname = filename.substring(0,filename.indexOf(".tar.gz"));
			runfile = "/home/myming/remote.sh";
			response.sendRedirect("http://124.16.141.184:8080/mym_test/"+dirname+"/index_page.html");
		}else if (testcase.indexOf("testcase3") != -1){
			runfile = "/home/jdi/JSPUploadFile/ExcuteFile/helloworld.sh";
//			location.href=
		}else{
			runfile = "/home/jdi/JSPUploadFile/ExcuteFile/helloworld.sh";
		}

		//		String[] cmd = new String[]{version,platform,runfile};
		String[] cmd = new String[]{"/bin/bash",runfile};	//运行sh脚本的命令（第一个是命令，其余是参数）
		//String[] cmd = new String[] { "ruby", runfile, version, platform, runfile };	//运行ruby脚本的命令（第一个是命令，其余是参数）
		//		String cmd = "/usr/local/apache-tomcat-7.0.54/webapps/ROOT/./helloworld.sh";	//写死脚本命令
		Process process = Runtime.getRuntime().exec(cmd);	//执行命令
		//		DataOutputStream os = new DataOutputStream(process.getOutputStream());
		//		os.writeBytes(cmd);
		//		os.writeBytes("exit\n");
		//		os.flush();
		//		out.println(runfile);
		out.println("<br>");
		//		BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream("helloworld.txt")));
		//		StringBuffer ret = new StringBuffer();
		//		String line="";
		//		while((line=br.readLine())!=null){
		//			ret.append(line);
		//		}
		//		br.close();
		//		out.println("return:"+ret.toString());
		//		out.println(br);

		int exitValue = process.waitFor();
		//		out.print(exitValue);
		if (exitValue != 0) {
			process.destroy();
			out.println("<h2>Error to excute!</h2><br>");
			out.println("</body>");
			out.println("</html>");

			/*
			 String str = "";
			 List<String> processList = new ArrayList<String>();
			 BufferedReader input = new BufferedReader(new InputStreamReader(process.getInputStream()));
			 String line = "";
			 while((line=input.readLine())!=null){
			 processList.add(line);
			 }
			 input.close();
			 for(String line:processList){
			 str+=line;
			 }
			 out.print(str+"");
			 */
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
//response.sendRedirect("http://124.16.141.184:8080/mym_test/"+"4.html");
%>
