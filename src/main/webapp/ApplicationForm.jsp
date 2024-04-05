<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="css/applicationForm.css" />
<title>Application form</title>

<script type="text/javascript"><%@include file="/JS/script.js" %></script>

<style>
	body {
    text-align: center;
    font-family: "Poppins", sans-serif;
  font-weight: 600;
  font-style: normal;
}
form {
    display: inline-block;
    margin-top: 40px;
    width: 520px;
	height: 100%;
	border: 1px solid #FBFCFC;
	box-shadow: 6px 6px 6px 6px #ffe6e6;
	border-radius: 15px;
}

form:hover{
  box-shadow: 0px 10px 20px 5px rgba(0, 0, 0, 0.5);
  height: 100%;
  transform: translateY(-5px);
}

h1 {
	text-align: center;
}
hr{
	width: 100%;
	color: red;
}
input, select {

	width: 260px;
	border-radius: 10px;
	border-color: pink;
	padding-left: 10px;

	padding-right: 10px;
	height: 30px;
	width: 250px;
	color: red;
}
#btn {
	margin-left: 100px;
	width:150px;
	border-radius: 20px;
	border-color: pink;
}
div{
	height: 100%;
}
table{
	margin-top: 10px;
}
tr,td{
padding-bottom: 5px;
padding-top: 5px;
}
input{
	margin-left: 10px;
}
h1{
	margin-top: 25px;
}
</style>
</head>

<body onload="startTimer();" onclick="clearLockTimer();">
	<p>Your session will expire after 10 second of inactivity.</p>
	<div>
		<form method="post" enctype="multipart/form-data"
			action="ApplicationFormServlet" id="myForm"
			onsubmit="return validateFile()">
			<h1>Student Admission form</h1>
			<hr>

			<table>
				<thead>
										<tr>
						<td>Student Name:</td>
						<td><input type="text" name="nm" id="nm" required
							placeholder="Student Name"></td>
					</tr>
					<tr>
						<td>Category:</td>
						<td><select id="cst" name="cst" onchange="handleFileUpload()"
							required>
								<option value="select">select</option>
								<option value="sc">sc</option>
								<option value="st">st</option>
								<option value="obc">obc</option>
								<option value="ebc">ebc</option>
								<option value="gen">gen</option>

						</select></td>
					</tr>
				</thead>
				<tbody>

					<tr id="uploadRow" style="display: none;">
						<td>uploadFile</td>
						<td><input type="file" id="files" name="files" disabled></td>
					</tr>

					
				<% for (int i = 1; i <= 5; i++) { %>
                    <tr>
                        <td>Subject<%= i %></td>
                        <td>
                            <select id="sub<%= i %>" name="sub<%= i %>" onchange="disableSelectedOptions(this)" required>
                                <option value="select">select</option>
                                <option value="phy">Physics</option>
                                <option value="chem">Chemistry</option>
                                <option value="botany">Botany</option>
                                <option value="math">Math</option>
                                <option value="eng">English</option>
                                <option value="commerce">commerce</option>
                                <option value="hindi">Hindi</option>
                                <option value="computer">Computer</option>
                                <option value="mechanics">Mechanics</option>
                                <option value="java">Java</option>
                            </select>
                        </td>
                    </tr>
                    <% } %>
					
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2"><button id="btn" name="btn">Save</button></td>
					</tr>
					<tr>
						<td colspan="2"><button id="btn" type="button" onclick="resetForm()" >Reset</button></td>
					</tr>
				</tfoot>
			</table>
			<script type="text/javascript">
    function resetForm() {
        document.getElementById("myForm").reset(); // Reset the form
        var uploadRow = document.getElementById("uploadRow");
        uploadRow.style.display = "none";
    }
</script>
		</form>
	</div>
</body>
</html>