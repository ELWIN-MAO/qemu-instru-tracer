<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>Upload File</title>
  </head>
  
  <body>
  	<center>
  		<h3>Upload File</h3><hr>
  	</center>
  		<form action="ChangeParameter.jsp" method="get" target="flush">
				version:<select name="version">
					<option value="linux-3.5.4" selected="selected">linux-3.5.4</option>
					<option value="linux-3.8">linux-3.8</option>
				</select>
				platform:<select name="platform">
					<option value="x86_32" selected="selected">x86_32</option>
					<option value="x86_64">x86_64</option>
					<option value="arm-Nexus">arm-Nexus</option>
				</select>
				testcase directory:<select name="testcase">
					<option value="testcase1" selected="selected">testcase1</option>
					<option value="testcase2">testcase2</option>
					<option value="testcase3">testcase3</option>
				</select>
				<input type="submit" value="Change"/><br>
		</form>
		
		<form action="UploadFile.jsp" method="post" enctype="multipart/form-data" target="_blank">
				<br>
				<input type="file" name="file" size="50"/>
				<input type="submit" value="Upload File"/>
		</form>
		<form action="ImportSymbolTable.jsp" method="post" target="_blank">
				<br>
				<input type="submit" value="Import Symbol Table"/> 导入内核符号表
		</form>
		<form action="ExcuteTestScript.jsp" method="post" target="_blank">
			<br>
<%--			test filename:<input type="text" name="runfile"/>	--%>
			<input type="submit" value="Excute Test Script"/> 执行测试脚本
		</form>
	<iframe name="flush" style="display:none;"></iframe>
     <br>
  </body>
</html>

