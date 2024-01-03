/**
 * 
 */
document.addEventListener("DOMContentLoaded", function() {
    const addButton = document.getElementById("addButton");
    const attendanceTable = document.getElementById("attendanceTable");
    const dateInput = document.getElementById("attendanceDate");
    const staffNameInput = document.getElementById("staffName");
    const attendanceStatusInput = document.getElementById("attendanceStatus");

    addButton.addEventListener("click", function() {
        const date = dateInput.value;
        const staffName = staffNameInput.value;
        const attendanceStatus = attendanceStatusInput.value;

        if (date && staffName && attendanceStatus) {
            // Create a new row and add it to the table
            const newRow = attendanceTable.insertRow(-1);
            newRow.insertCell(0).textContent = date;
            newRow.insertCell(1).textContent = staffName;
            newRow.insertCell(2).textContent = attendanceStatus;

            // Create Edit and Delete buttons for the new row
            const actionCell = newRow.insertCell(3);
            const editButton = document.createElement("button");
            editButton.textContent = "Edit";
            editButton.classList.add("edit-button");
            actionCell.appendChild(editButton);

            const deleteButton = document.createElement("button");
            deleteButton.textContent = "Delete";
            deleteButton.classList.add("delete-button");
            actionCell.appendChild(deleteButton);

            // Clear input fields
            dateInput.value = "";
            staffNameInput.value = "";
        }
    });

    attendanceTable.addEventListener("click", function(e) {
        if (e.target && e.target.className == "edit-button") {
            const row = e.target.parentNode.parentNode;
            const cells = row.getElementsByTagName("td");
            dateInput.value = cells[0].textContent;
            staffNameInput.value = cells[1].textContent;
            attendanceStatusInput.value = cells[2].textContent;
            attendanceTable.deleteRow(row.rowIndex);
        } else if (e.target && e.target.className == "delete-button") {
            const row = e.target.parentNode.parentNode;
            attendanceTable.deleteRow(row.rowIndex);
        }
    });
});