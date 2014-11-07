<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>

<%
	int maxFileSize = 5000 * 1024;
	int maxMemSize = 5000 * 1024;

	String version = (String)session.getValue("version");
	String platform = (String)session.getValue("platform");
	String filePath = (String)session.getValue("testcase");
	
	File testcaseDir = new File(filePath);
	if(!testcaseDir.exists())
		testcaseDir.mkdir();
	
	// 创建一个新的文件上传处理程序
	DiskFileItemFactory factory = new DiskFileItemFactory();
	// 设置内存中存储文件的最大值
	factory.setSizeThreshold(maxMemSize);	//设置内存缓冲区的大小,默认值为10K,如果文件大于10K,将使用临时文件缓存上传文件.
	factory.setRepository(new File(filePath));	//指定临时文件目录
	
	ServletFileUpload upload = new ServletFileUpload(factory);		//ServletFileUpload负责处理上传的文件数据,并将表单中每个输入项封装成一个FileItem对象中.
			
	out.println("<html>");
        out.println("<head>");
        out.println("<title>JSP File upload</title>");  
        out.println("</head>");
        out.println("<body>");
	try{
		// 解析获取的文件
		List fileItems = upload.parseRequest(request);	//对requests对象进行解析,并把表单中的每一个输入项包装成一个fileItem对象,并返回一个保存了所有FileItem的list集合.

		// 处理上传的文件
		Iterator i = fileItems.iterator();

		
		while (i.hasNext ()){
			FileItem fi = (FileItem)i.next();	//每一个item就代表一个表单输出项
			if (!fi.isFormField ()){	//判断input是否为普通表单输入项
				// 获取上传文件的参数
				String fieldName = fi.getFieldName();
				String fileName = fi.getName();	//得到上传文件的名称,并截取
				
				if( fileName.lastIndexOf("\\") >= 0 ){
					fileName=fileName.substring(fileName.lastIndexOf("\\"));
				}else{
					fileName=fileName.substring(fileName.lastIndexOf("\\")+1);	//截取上传文件的 字符串名字，加1是去掉反斜杠
				}
				if(fileName!=""){
				String	dirname=fileName;
				// 写入文件
					fileName=fileName.replace("-", "_");
					fileName="V-"+version+"P-"+platform+"T-"+fileName;

					session.putValue("dirname", dirname);

					File file =new File(filePath +fileName);
					fi.write(file);
					out.println("<h2>Success to upload!</h2><br>");
					out.println("Uploaded Filename: " + filePath + fileName + "<br>");
//					out.println("<a href=\"UploadPage.jsp\">Continue to upload</a>");
				}else{
					out.println("<h2>No file was selected!</h2><br>");
				}
			}
			/*else{	//如果获取的表单信息是普通的文本信息
				String filedName=fi.getFieldName();	//input的名称
				String fileName= fi.getString();	//input的值
				request.setAttribute(name, value);
			}*/
		}

	}catch (FileUploadException e) {
		e.printStackTrace();
	}catch(Exception ex) {
		System.out.println(ex);
    }

//	out.println("type:"+request.getContentType()+ "<br>");
	out.println("</body>");
        out.println("</html>");	
%>
