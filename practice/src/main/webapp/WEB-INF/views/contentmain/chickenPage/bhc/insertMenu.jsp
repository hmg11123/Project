<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

	<div class="row">
		<div class="col-md-2"></div>
	<form action="/bhc/bhcSubmit">
		<div class="col-md-8">
			<table>
				<tr>
					<td>�̸� : <input type="text" name="name"></td>
				</tr>
				<tr>
					<td>���� : <input type="text" name="price"></td>
				</tr>
				<tr>
					<td>�ſ����� : <input type="text" name="spicy"></td>
				</tr>
				<tr>
				 	<td>�� :<input type="text" name="review"></td>
				</tr>
				<tr>
					<td><input type="hidden" name="brand_uid" value="4"></td>
				<tr>
				<tr>
					<td><input type="submit" value="�޴� ���" /></tr>
				<tr>
			</table>
		</div>
	</form>
	<div class="col-md-2"></div>
	</div>