<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�۾���</title>
</head>
<body>
<form action="<c:url value='write.jsp' />" method="post">
���� : <input type="text" name="title" size="20"/> <br/>
�ۼ���:<input type="text" name="writerName" /><br/>
�۾�ȣ :<input type="password" name="password" /><br/>
�۳���: <br/>
<textarea name="content" cols="40" rows="5"></textarea>
<br/>
<input type="submit" value="����"/>

</form>
</body>
</html>