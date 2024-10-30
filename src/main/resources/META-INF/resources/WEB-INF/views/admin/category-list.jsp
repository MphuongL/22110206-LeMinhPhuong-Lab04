

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<a href="<c:url value="/admin/categories/add"/>">Add Category</a>
<br>
<br>
<form action="${pageContext.request.contextPath}/admin/category/search" method="get">
    <input type="text" name="keyword" placeholder="Nhập từ khóa tìm kiếm">
    <input type="submit" value="Tìm kiếm">
</form>
<hr>
<table border="1" width="100%">
	<tr>
		<th>STT</th>
		<th>Images</th>
		<th>Category name</th>
		<th>Status</th>
		<th>Action</th>
	</tr>
	<c:forEach items="${list}" var="cate" varStatus="STT">
		<tr>
			<td>${STT.index+1 }</td>
			<td>${cate.images }</td>
			<td>${cate.name }</td>
			<td><c:if test="${cate.status==1 }">
Hoạt động
</c:if> <c:if test="${cate.status!=1 }">
Khóa
</c:if></td>
			<td><a
				href="<c:url value='/admin/categories/edit/${cate.id }'/>">Sửa</a>
				| <a
				href="<c:url value='/admin/categories/delete/${cate.id }'/>">Xóa</a>
			</td>
		</tr>
	</c:forEach>
</table>