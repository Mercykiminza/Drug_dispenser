# Set the MySQL connection details
$DBHost = "localhost"
$DBUser = "root"
$DBPass = "MySQLXXX-123a8910"
$DBName = "mercy"

# Set the backup file name and path
$BackupFile = "D:/final/backup.sql"

# Build the MySQL connection string
$ConnectionString = "server=$DBHost;uid=$DBUser;password=$DBPass;database=$DBName"

# Create a new MySQL connection
$Connection = New-Object MySql.Data.MySqlClient.MySqlConnection($ConnectionString)

try {
    # Open the connection
    $Connection.Open()

    # Create a new MySQL command
    $Command = New-Object MySql.Data.MySqlClient.MySqlCommand
    $Command.Connection = $Connection

    # Set the command text to perform the backup
    $Command.CommandText = "mysqldump --user=$DBUser --password=$DBPass --host=$DBHost $DBName > $BackupFile"

    # Execute the backup command
    $Command.ExecuteNonQuery()

    Write-Host "Database backup completed successfully."
}
catch {
    Write-Host "An error occurred: $_"
}
finally {
    # Close the connection
    $Connection.Close()
}
