<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <link rel="stylesheet" href="css/user.css" />
    
    
    
    <div class="Id">
  	<!-- ID -->
	���̵� : ${login_id }<br/>
	������ ���̵� : <div class="form-group">
				<label for="inputID" class="control-label">ID</label> 
				<input type="text" id="id" name="id" class="form-control" placeholder="ID" />
			   </div><br/><br/>
    </div>
			   
			   
	<div class="Name">
	<!-- NAME -->	
	�̸� : ${login_name}<br/>
	������ �̸� : <div class="form-group">
				<label for="inputID" class="control-label">NAME</label> 
				<input type="text" id="name" name="name" class="form-control" placeholder="NAME" />
			 </div><br/><br/>
	</div>
	
	
	<div class="Password">
	<!-- PASSWORD -->
	��й�ȣ : ${login_password }<br/>
	������ ��й�ȣ : <div class="form-group">
					<label for="inputID" class="control-label">PASSWORD</label>
					<input type="password" id="password" name="password" class="form-control" placeholder="PASSWORD"/>
				</div><br/><br/>
	</div>


	<div class="Email">
	<!-- EMAIL -->
	�̸��� : ${login_email}<br/>
	������ �̸��� : <div class="form-group">
				<label for="inputID" class="control-label">EMAIL</label> 
				<input type="email" id="email" name="email" class="form-control" placeholder="EMAIL"/>
			   </div><br/><br/>
	</div>	
	
	
	<div class="Add">
	<!-- ADD -->
	�ּ� : ${login_add}<br/>
	������ �ּ� : <div class="form-group">
				<label for="inputID" class="control-label">�ּ�</label> 
				<input type="text" id="add" name="add" class="form-control" placeholder="ADD" readonly/>
			 </div><br/><br/>
	</div>
	
	
	<div class="Zip_Code">
	<!-- ZIP_CODE -->
	����ȣ : ${login_zip_code}<br/>
	������ ����ȣ :	<div>
					<input type="text" id="zip_Code" name="zip_Code" class="form-control" placeholder="ZIP_CODE" readonly/> 
					<input type="button" id="zipBtn" value="�˻�" class="btn btn-warning"/>
			    </div><br/><br/>
	</div>


	<div class="Detail_Add">
	<!-- DETAIL_ADD -->
	�� �ּ� : ${login_detail_add}<br/>
	������ ���ּ�<div class="form-group">
				<label for="inputID" class="control-label">���ּ�</label> 
				<input type="text" id="detail_add" name="detail_add" class="form-control" placeholder="DETAIL_ADD"/>
			  </div><br/><br/>
	</div>
	
	
	<input type="submit" value="����" class="btn btn-warning">
	
	
	
	
	
	
	
	
	
	
	
	
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

	<script>
		const zipBtn = document.getElementById("zipBtn");
		const Zip_Code = document.getElementById("zip_Code");
		const addInput = document.getElementById("add");
		const detail_add = document.getElementById("detail_add");
	
	
		function callZipcode() {
			new daum.Postcode({
				oncomplete : function(data) {
					
					zip_Code.value = data.zonecode;
					addInput.value = data.address;
					detail_add.focus();
					
				}
			}).open();
		}
		
		
		zipBtn.addEventListener("click", callZipcode);
		
		
	</script>