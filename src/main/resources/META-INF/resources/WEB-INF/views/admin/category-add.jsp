<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<h2>${category.isEdit ? 'Edit Category' :'Add New Category'}</h2>

<form action = "/admin/categories/save" method="post" enctype="multipart/form-data">

	<input type="hidden" value="${category.isEdit}" name="isEdit">
	<input type="hidden" value="${category.id}" name="id">

	<label for="fname">Category name:</label><br> 
	<input type="text" name="name" value="${category.name }"><br> <!-- Thêm required để bắt buộc nhập -->
	
	<label for="images">Images:</label><br> 
	<input type="text" name="images" value="${category.images }"><br> 
	
	<label for="status">Status</label><br> 
	<input type="radio" id="ston" name="status" value="1" checked> 
	<label for="ston">Hoạt động</label><br> 
	<input type="radio" id="stoff" name="status" value="0"> 
	<label for="stoff">Khóa</label> <br>
	<br> 
	<c:if test="${category.isEdit }">
		<input type="submit" value="Update">
	</c:if>
	
	<c:if test="${!category.isEdit }">
		<input type="submit" value="Insert">
	</c:if>
</form>
