<!DOCTYPE html>
<html>
<head>
    <title>Assigned Contracts</title>
    <link rel = "stylesheet" type = "text/css" href = "styles.css"> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
</head>
<body>
    <h1>Assigned Contracts</h1>

    <?php
    // Check if either pharmacyId or pharmaceuticalId is provided
    if (isset($_GET['pharmacyId']) || isset($_GET['pharmaceuticalId'])) {
        // Retrieve the provided ID
        $pharmacyId = $_GET['pharmacyId'] ?? null;
        $pharmaceuticalId = $_GET['pharmaceuticalId'] ?? null;

        // Connect to the database
        require_once '../database.php';
        $db = new Database();

        // Query contracts based on the provided ID
        $contracts = [];

        if ($pharmacyId) {
            $query = "SELECT contract.*, pharmaceutical.name AS pharmaceuticalName
                      FROM contract
                      INNER JOIN pharmaceutical ON contract.pharmaceuticalId = pharmaceutical.pharmaceuticalId
                      WHERE contract.pharmacyId = ?";
            $values = [$pharmacyId];
            $contracts = $db->queryData($query, $values);
        } elseif ($pharmaceuticalId) {
            $query = "SELECT contract.*, pharmacy.name AS pharmacyName
                      FROM contract
                      INNER JOIN pharmacy ON contract.pharmacyId = pharmacy.pharmacyId
                      WHERE contract.pharmaceuticalId = ?";
            $values = [$pharmaceuticalId];
            $contracts = $db->queryData($query, $values);
        }

        // Display the contracts
        if (!empty($contracts)) {
            echo '<table>';
            echo '<thead>';
            echo '<tr>';
            echo '<th>Contract ID</th>';
            echo '<th>Start Date</th>';
            echo '<th>End Date</th>';
            echo '<th>Description</th>';
            echo '<th>Number of Supplies</th>';
            echo '<th>Remaining Time</th>';
            echo '</tr>';
            echo '</thead>';
            echo '<tbody>';

            foreach ($contracts as $contract) {
                $contractId = $contract['contractId'];
                $startDate = $contract['startDate'];
                $endDate = $contract['endDate'];
                $description = $contract['description'];

                // Query the number of supplies for the contract
                $query = "SELECT COUNT(*) AS supplyCount FROM supply WHERE contractId = ?";
                $values = [$contractId];
                $result = $db->queryData($query, $values);
                $supplyCount = $result[0]['supplyCount'];

                // Format the dates using Moment.js
                $formattedStartDate = "<script>document.write(moment('" . $startDate . "').format('ddd MMMM D, YYYY'));</script>";
                $formattedEndDate = "<script>document.write(moment('" . $endDate . "').format('ddd MMMM D, YYYY'));</script>";

                // Calculate the remaining time using Moment.js fromNow() method
                $remainingTime = "<script>document.write(moment('" . $endDate . "').fromNow());</script>";

                echo '<tr>';
                echo '<td><a href="contractProfile.php?contractId=' . $contractId . '">' . $contractId . '</a></td>';
                echo '<td>' . $formattedStartDate . '</td>';
                echo '<td>' . $formattedEndDate . '</td>';
                echo '<td>' . $description . '</td>';
                echo '<td>' . $supplyCount . '</td>';
                echo '<td>' . $remainingTime . '</td>';
                echo '</tr>';
            }

            echo '</tbody>';
            echo '</table>';
        } else {
            echo '<p>No contracts found.</p>';
        }

        // Disconnect from the database
        $db->disconnect();
    } else {
        echo '<p>No ID provided.</p>';
    }
    ?>

</body>
</html>
