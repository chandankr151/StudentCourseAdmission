<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="css/applicationForm.css" />
<title>Application form</title>

<script type="text/javascript">
	var lockTimer;

	// Function to lock the form
	function lockForm() {
		var form = document.getElementById('myForm');
		form.querySelectorAll('input, button, select, option').forEach(
				function(element) {
					element.disabled = true;
				});
	}

	// Function to start the timer and lock the form after 30 seconds
	function startTimer() {
		lockTimer = setTimeout(lockForm, 10000); // 30 seconds
	}

	// Function to clear the timer and prevent form locking
	function clearLockTimer() {
		clearTimeout(lockTimer);
	}
	
</script>

    <script type="text/javascript">
        function handleFileUpload() {
            var selectedOption = document.getElementById("cst").value;
            var fileInput = document.getElementById("files");

            if (selectedOption === "gen" || selectedOption === "select") {
                fileInput.disabled = true; // Enable file input
            } else {
                fileInput.disabled = false; // Disable file input
            }
        }
        </script>
        
        <script>
        function disableSelectedOptions(selectElement) {
            // Get all select elements on the page
            var selectElements = document.getElementsByTagName('select');
            
            // Loop through each select element
            for (var i = 0; i < selectElements.length; i++) {
                var otherSelectElement = selectElements[i];
                
                // Skip the current select element
                if (otherSelectElement === selectElement) {
                    continue;
                }
                
                // Loop through options of other select element
                for (var j = 0; j < otherSelectElement.options.length; j++) {
                    var option = otherSelectElement.options[j];
                    
                    // If the option is selected in the first select element, disable it in other select elements
                    if (selectElement.value === option.value) {
                        option.disabled = true;
                    } else {
                    	//selectElement.disabled = true;
                    }
                }
            }
        }
    </script>

</head>

<body onload="startTimer();" onclick="clearLockTimer();">
	<p>Your session will expire after 10 second of inactivity.</p>
	<div>
		<form method="post" enctype="multipart/form-data" action="ApplicationFormServlet" id="myForm" onsubmit="return validateFile()">
			<h1>Student Admission form</h1><hr>

			<table>
				<thead></thead>
				<tbody>
					<tr>
						<td>Student Name:</td>
						<td><input type="text" name="nm" id="nm" required
							placeholder="Student Name"></td>
					</tr>
					<tr>
						<td>Category:</td>
						<td><select id="cst" name="cst"  onchange="handleFileUpload()" required>
								<option value="select">select</option>
								<option value="sc">sc</option>
								<option value="st">st</option>
								<option value="obc">obc</option>
								<option value="ebc">ebc</option>
								<option value="gen">gen</option>

						</select></td>
					</tr>
					<tr>
						<td>uploadFile</td>
						<td><input type="file" id="files" name="files" disabled></td>
					</tr>

					<tr>
						<td>Subject1</td>
						<td><select id="sub1" name="sub1" onchange="disableSelectedOptions(this)" required>
								<option value="select">select</option>
								<option value="phy">phy</option>
								<option value="chem">chem</option>
								<option value="botany">Botany</option>
								<option value="math">Math</option>
								<option value="eng">eng</option>
								<option value="commerce">commerce</option>
								<option value="hindi">Hindi</option>
								<option value="computer">Computer</option>
								<option value="mechanics">Mechanics</option>
								<option value="java">Java</option>

						</select></td>
					</tr>

					<tr>
						<td>Subject2</td>
						<td><select id="sub2" name="sub2" onchange="disableSelectedOptions(this)"  required>
								<option value="select">select</option>
								<option value="phy">phy</option>
								<option value="chem">chem</option>
								<option value="botany">Botany</option>
								<option value="math">Math</option>
								<option value="eng">eng</option>
								<option value="commerce">commerce</option>
								<option value="hindi">Hindi</option>
								<option value="computer">Computer</option>
								<option value="mechanics">Mechanics</option>
								<option value="java">Java</option>

						</select></td>
					</tr>

					<tr>
						<td>Subject3</td>

						<td><select id="sub3" name="sub3"  onchange="disableSelectedOptions(this)" required>
								<option value="select">select</option>
								<option value="phy">phy</option>
								<option value="chem">chem</option>
								<option value="botany">Botany</option>
								<option value="math">Math</option>
								<option value="eng">eng</option>
								<option value="commerce">commerce</option>
								<option value="hindi">Hindi</option>
								<option value="computer">Computer</option>
								<option value="mechanics">Mechanics</option>
								<option value="java">Java</option>

						</select></td>
					</tr>

					<tr>
						<td>Subject4</td>

						<td><select id="sub4" name="sub4" onchange="disableSelectedOptions(this)"  required>
								<option value="select">select</option>
								<option value="phy">phy</option>
								<option value="chem">chem</option>
								<option value="botany">Botany</option>
								<option value="math">Math</option>
								<option value="eng">eng</option>
								<option value="commerce">commerce</option>
								<option value="hindi">Hindi</option>
								<option value="computer">Computer</option>
								<option value="mechanics">Mechanics</option>
								<option value="java">Java</option>

						</select></td>
					</tr>

					<tr>
						<td>Subject5</td>

						<td><select id="sub5" name="sub5"  onchange="disableSelectedOptions(this)"  required>
								<option value="select">select</option>
								<option value="phy">phy</option>
								<option value="chem">chem</option>
								<option value="botany">Botany</option>
								<option value="math">Math</option>
								<option value="eng">eng</option>
								<option value="commerce">commerce</option>
								<option value="hindi">Hindi</option>
								<option value="computer">Computer</option>
								<option value="mechanics">Mechanics</option>
								<option value="java">Java</option>

						</select></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2"><button id="btn" name="btn">Save</button></td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>