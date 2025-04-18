<?php
require 'require/config.php';

$data = json_decode(file_get_contents('php://input'), true);
$response = ['success' => false];

if(isset($data['cartId']) && isset($data['quantity'])) {
    $cartId = (int)$data['cartId'];
    $quantity = (int)$data['quantity'];
    $customerID = $_SESSION['CustomerID'];

    $sql = "UPDATE cart SET quantity = $quantity 
            WHERE cartId = $cartId AND CustomerID = $customerID";
    
    if(mysqli_query($conn, $sql)) {
        $response['success'] = true;
    }
}
if (isset($data['checkout']) && $data['checkout'] === true) {
    $sql = 'DELETE FROM cart WHERE CustomerID =' .$_SESSION['CustomerID'];
    if (mysqli_query($conn, $sql)) {
        $response['success'] = true;
    }
}

header('Content-Type: application/json');
echo json_encode($response);
?>