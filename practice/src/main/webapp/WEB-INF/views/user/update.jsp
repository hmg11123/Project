<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<link rel="stylesheet" href="css/user.css" />


<body>
<div class="row">
	<div class="col-md-2"></div>

	<div class="col-md-8">
		<div class="Id">
			<!-- ID -->
			<label for="inputID" class="control-label">ID</label><br /> ���̵� :
			${login_id }<br /> ������ ���̵� :
			<div class="form-group">
				<input type="text" id="id" name="id" class="form-control"
					placeholder="ID" />
			</div>
			<br />
			<br />
		</div>


		<div class="Name">
			<!-- NAME -->
			<label for="inputID" class="control-label">NAME</label><br /> �̸� :
			${login_name}<br /> ������ �̸� :
			<div class="form-group">
				<input type="text" id="name" name="name" class="form-control"
					placeholder="NAME" />
			</div>
			<br />
			<br />
		</div>


		<div class="Password">
			<!-- PASSWORD -->
			<label for="inputID" class="control-label">PASSWORD</label><br />
			��й�ȣ : ${login_password }<br /> ������ ��й�ȣ :
			<div class="form-group">
				<input type="password" id="password" name="password"
					class="form-control" placeholder="PASSWORD" />
			</div>
			<br />
			<br />
		</div>


		<div class="Email">
			<!-- EMAIL -->
			<label for="inputID" class="control-label">EMAIL</label> <br /> �̸���
			: ${login_email}<br /> ������ �̸��� :
			<div class="form-group">
				<input type="email" id="email" name="email" class="form-control"
					placeholder="EMAIL" />
			</div>
			<br />
			<br />
		</div>


		<div class="Add">
			<!-- ADD -->
			<label for="inputID" class="control-label">ADD</label> <br /> �ּ� :
			${login_add}<br /> ������ �ּ� :
			<div class="form-group">
				<input type="text" id="add" name="add" class="form-control"
					placeholder="ADD" readonly />
			</div>
			<br />
			<br />
		</div>


		<div class="Zip_Code">
			<!-- ZIP_CODE -->
			<label for="inputID" class="control-label">ZIP_CODE</label> <br />
			����ȣ : ${login_zip_code}<br /> ������ ����ȣ :
			<div>
				<input type="text" id="zip_Code" name="zip_Code"
					class="form-control" placeholder="ZIP_CODE" readonly /> <input
					type="button" id="zipBtn" value="�˻�" class="btn btn-warning" />
			</div>
			<br />
			<br />
		</div>


		<div class="Detail_Add">
			<!-- DETAIL_ADD -->
			<label for="inputID" class="control-label">DETAIL_ADD</label> <br />
			�� �ּ� : ${login_detail_add}<br /> ������ ���ּ�
			<div class="form-group">
				<input type="text" id="detail_add" name="detail_add"
					class="form-control" placeholder="DETAIL_ADD" />
			</div>
			<br />
			<br />
		</div>


		<input type="submit" value="����" class="btn btn-warning">
	</div>

	<div class="col-md-2"></div>
</div>

</body>








<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

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