<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="exceptionType" value="${updateException.class.simpleName }"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� ����</title>
</head>
<body>
����:
<c:choose>
	<c:when test="${exceptionType=='ArticleNotFoundException' }">
	������ �Խñ��� �������� �ʽ��ϴ�.
	</c:when>
	<c:when test="${exceptionType == 'InvalidPasswordException' }">
	��ȣ�� �߸� �Է��ϼ̽��ϴ�.
	</c:when>
</c:choose>
<br>
<a href="list.jsp?p=${param.p }">��Ϻ���</a>
</body>
</html>