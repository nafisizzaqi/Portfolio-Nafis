<?php 
// var_dump($_POST);

    include 'koneksi.php';
    if (isset($_POST['submit'])) {
        $name = mysqli_real_escape_string($koneksi, $_POST['name']);
        $email = mysqli_real_escape_string($koneksi, $_POST['email']);
        $subject = mysqli_real_escape_string($koneksi, $_POST['subject']);
        $message = mysqli_real_escape_string($koneksi, $_POST['message']);

        $query = "INSERT INTO contact_me (name, email, subject, message, created_at)
                VALUES ('$name', '$email', '$subject', '$message', CURRENT_TIMESTAMP)";
        if (mysqli_query($koneksi, $query)) {
            header('Location: index.php?status=success');
            exit();
        } else {
            echo "Error: " . mysqli_error($koneksi);
        }

        mysqli_close($koneksi);
    }

?>