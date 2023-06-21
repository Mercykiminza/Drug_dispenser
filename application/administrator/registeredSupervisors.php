<!DOCTYPE html>
<html>
<head>
    <title>Registered Supervisors</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <script src="pagination.js"></script>
</head>
<body>
    <div class="container">
        <h2>Registered Supervisors</h2>
        <table>
            <thead>
                <tr>
                    <th>Supervisor ID</th>
                    <th>Name</th>
                    <th>Email Address</th>
                    <th>Phone Number</th>
                    <th>Pharmaceutical Company</th>
                </tr>
            </thead>
            <tbody>
                <?php
                require_once '../database.php';

                // Create a new instance of the Database class
                $db = new Database();

                // Query the supervisor and pharmaceutical tables to retrieve all supervisor records
		$query = "SELECT s.*, ph.name AS pharmaceutical_company, ph.pharmaceuticalId FROM " . 
			"supervisor s INNER JOIN pharmaceutical ph ON s.pharmaceuticalId = " .
			"ph.pharmaceuticalId";
                $supervisors = $db->queryData($query, []);

                // Iterate over the supervisor records and populate the table rows dynamically
                foreach ($supervisors as $supervisor) {
                    $supervisorId = $supervisor['supervisorId'];
                    $firstName = $supervisor['firstName'];
                    $lastName = $supervisor['lastName'];
                    $emailAddress = $supervisor['emailAddress'];
                    $phoneNumber = $supervisor['phoneNumber'];
                    $pharmaceuticalCompany = $supervisor['pharmaceutical_company'];
                    $pharmaceuticalId = $supervisor['pharmaceuticalId'];
                ?>
                <tr>
		    <td>
		    <a href="supervisorProfile.php?supervisorId=<?php echo $supervisorId; ?>">
		    <?php echo $supervisorId; ?>
		    </a>
		    </td>
		    <td>
		    <a href="supervisorProfile.php?supervisorId=<?php echo $supervisorId; ?>">
		    <?php echo $firstName . ' ' . $lastName; ?>
		    </a>
		    </td>
                    <td><a href="mailto:<?php echo $emailAddress; ?>"><?php echo $emailAddress; ?></a></td>
                    <td><a href="tel:<?php echo $phoneNumber; ?>"><?php echo $phoneNumber; ?></a></td>
		    <td>
		    <a href="pharmaceuticalProfile.php?pharmaceuticalId=<?php echo $pharmaceuticalId; ?>">
		    <?php echo $pharmaceuticalCompany; ?>
		    </a>
		    </td>
                </tr>
                <?php
                }

                // Disconnect from the database
                $db->disconnect();
                ?>
            </tbody>
        </table>
    </div>
</body>
</html>
