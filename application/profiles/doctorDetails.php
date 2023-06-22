<?php
session_start();
require_once '../database.php';
require_once '../utilities.php';

// Check if the user is not logged in
if (!isset($_SESSION['user'])) {
  header('Location: ../authentication/login.php');
  exit();
}

// Check if the user is administrator
if ($_SESSION['user'] !== 'Administrator' && $_SESSION['user'] !== 'Doctor') {
  header('Location: ../permissionDenied.php');
  exit();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Doctor Details</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Doctor Details</h1>

    <h2>Assign Patients</h2>
    <form action="assignPatient.php" method="POST">
	<div class="form-group">
	    <label for="patientId">Select a Patient:</label>
	    <select id="patientId" name="patientId">
		<?php foreach ($availablePatients as $patient): ?>
		    <option value="<?php echo $patient['patientId']; ?>"><?php echo $patient['firstName'] . ' ' . $patient['lastName']; ?></option>
		<?php endforeach; ?>
	    </select>
	</div>
	<div class="form-group">
	    <button type="submit" name="assignPatient">Assign Patient</button>
	</div>
    </form>

    <h2>Assigned Patients</h2>
    <table>
	<thead>
	    <tr>
		<th>Patient</th>
	    </tr>
	</thead>
	<tbody>
	    <?php foreach ($assignedPatients as $assignedPatient): ?>
		<tr>
		    <td><?php echo $assignedPatient['firstName'] . ' ' . $assignedPatient['lastName']; ?></td>
		</tr>
	    <?php endforeach; ?>
	</tbody>
    </table>

    <h2>Latest Consultations</h2>
    <table>
	<thead>
	    <tr>
		<th>Date Scheduled</th>
		<th>Patient</th>
		<th>Status</th>
	    </tr>
	</thead>
	<tbody>
	    <?php foreach ($consultations as $consultation): ?>
		<tr>
		    <td><?php echo $consultation['dateScheduled']; ?></td>
		    <td><?php echo $consultation['patientFirstName'] . ' ' . $consultation['patientLastName']; ?></td>
		    <td><?php echo $consultation['status']; ?></td>
		</tr>
	    <?php endforeach; ?>
	</tbody>
    </table>

    <a href="assignedPatients.php?doctorId=<?php echo $doctorId; ?>">View Assigned Patients</a>
    <a href="consultations.php?doctorId=<?php echo $doctorId; ?>">View All Consultations</a>
    <a href="assignedPrescriptions.php?doctorId=<?php echo $doctorId; ?>">View Assigned Prescriptions</a>
</body>
</html>


body {
    font-family: Arial, sans-serif;
    margin: 20px;
    padding: 0;
    background-color: #f1f1f1;
}

h1 {
    text-align: center;
    margin-bottom: 20px;
}

h2 {
    margin-top: 40px;
}

.form-group {
    margin-bottom: 10px;
}

label {
    display: block;
    font-weight: bold;
}

select {
    width: 100%;
    padding: 5px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

button {
    padding: 8px 16px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 10px;
}

table th,
table td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

table th {
    background-color: #4CAF50;
    color: white;
}

a {
    display: inline-block;
    margin-right: 10px;
    margin-top: 10px;
    padding: 8px 16px;
    background-color: #4CAF50;
    color: white;
    text-decoration: none;
    border-radius: 4px;
}

a:hover {
    background-color: #45a049;
}
