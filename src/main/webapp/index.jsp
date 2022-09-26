<%@ page import="java.util.List" %>
<%@ page import="rikkei.academy.md3_b10_bt1.Student" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>

</head>
<body>
<%
    List<Student> studentList = new ArrayList<>();
    studentList.add(new Student("Star Đạt","18-11-2000","Hải Phòng","image/img_2.png"));
    studentList.add(new Student("Nguyễn Thành Long","18-11-1997","Đà Lạt","image/img_1.png"));
    studentList.add(new Student("Bùi Minh Đức","18-11-1997","Đắk Lắk","image/img.png"));
    pageContext.setAttribute("listStudent",studentList);
%>
<table border="1" style="width: 100%">
    <tr>
        <td>Tên</td>
        <td>Ngày Sinh</td>
        <td>Địa Chỉ</td>
        <td>Ảnh</td>
    </tr>
    <c:forEach var="st" items="#{listStudent}">
        <tr>
            <td><c:out value="${st.name}"></c:out></td>
            <td><c:out value="${st.date}"></c:out></td>
            <td><c:out value="${st.address}"></c:out></td>
            <td align="center">
                <img width="200" height="200" src="${st.image}">
            </td>
        </tr>

    </c:forEach>
</table>
</body>
</html>