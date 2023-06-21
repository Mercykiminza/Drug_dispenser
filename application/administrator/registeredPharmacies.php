<!DOCTYPE html>
<html>
<head>
    <title>Registered Pharmacies</title>
    <link href = "styles.css" rel = "stylesheet">
    </style>
    <script>
        // JavaScript for pagination
        function changePage(page) {
            var rows = document.getElementsByClassName('row');
            var itemsPerPage = 10;
            var startIndex = (page - 1) * itemsPerPage;
            var endIndex = startIndex + itemsPerPage;

            for (var i = 0; i < rows.length; i++) {
                if (i >= startIndex && i < endIndex) {
                    rows[i].style.display = 'table-row';
                } else {
                    rows[i].style.display = 'none';
                }
            }

            var paginationLinks = document.getElementsByClassName('pagination-link');
            for (var j = 0; j < paginationLinks.length; j++) {
                paginationLinks[j].classList.remove('active');
            }
            paginationLinks[page - 1].classList.add('active');
        }
    </script>
</head>
<body>
    <div class="container">
        <h2>Registered Pharmacies</h2>
        <table>
            <thead>
                <tr>
                    <th>Pharmacy ID</th>
                    <th>Name</th>
                    <th>Location</th>
                    <th>Email Address</th>
                    <th>Phone Number</th>
                </tr>
            </thead>
            <tbody>
                <?php
                require_once '../database.php';

                // Fetch the registered pharmacies from the database
                $db = new Database();
                $query = "SELECT * FROM pharmacy";
                $pharmacies = $db->queryData($query, array());

                foreach ($pharmacies as $pharmacy) {
                    echo "<tr class='row'>";
                    echo "<td>" . $pharmacy['pharmacyId'] . "</td>";
                    echo "<td><a href='pharmacyProfile.php?pharmacyId=" . $pharmacy['pharmacyId'] . "'>" . $pharmacy['name'] . "</a></td>";
                    echo "<td><a href='https://maps.google.com/?q=" . $pharmacy['location'] . "' target='_blank'>" . $pharmacy['location'] . "</a></td>";
                    echo "<td><a href='mailto:" . $pharmacy['emailAddress'] . "'>" . $pharmacy['emailAddress'] . "</a></td>";
                    echo "<td><a href='tel:" . $pharmacy['phoneNumber'] . "'>" . $pharmacy['phoneNumber'] . "</a></td>";
                    echo "</tr>";
                }
                $db->disconnect();
                ?>
            </tbody>
        </table>
        <div class="pagination">
            <?php
            $totalPharmacies = count($pharmacies);
            $itemsPerPage = 10;
            $totalPages = ceil($totalPharmacies / $itemsPerPage);

            for ($page = 1; $page <= $totalPages; $page++) {
                echo "<a class='pagination-link" . ($page === 1 ? " active" : "") . "' onclick='changePage($page)'>$page</a>";
            }
            ?>
        </div>
    </div>
</body>
</html>
