
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

	function handleFileUpload() {
		var selectedOption = document.getElementById("cst").value;
		var fileInput = document.getElementById("files");
		var uploadRow = document.getElementById("uploadRow");

		if (selectedOption === "gen") {
			fileInput.disabled = true;
			uploadRow.style.display = "none";
		} else {
			fileInput.disabled = false;
			uploadRow.style.display = "table-row";
		}
	}

// Function to disable selected options in subsequent select elements
function disableSelectedOptions(selectElement) {
    var selectedValue = selectElement.value;
    
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
            if (selectedValue === option.value) {
                option.style.display = "none";
            } else {
                option.disabled = false;
            }
        }
    }
}