<?php require 'require/viewProductBack.php'; ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AudioSphere | <?php echo htmlspecialchars($product['ProductName']); ?></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="css/alert.css">
    <link rel="stylesheet" href="css/nav&footer.css">
    <link rel="stylesheet" href="css/viewProduct.css">
</head>

<body>
    <?php require 'require/nav.php'; ?>
    <div class="product-container">
        <div class="product-image-container">
            <img src="<?php echo htmlspecialchars($product['ImagePath']); ?>" alt="<?php echo htmlspecialchars($product['ProductName']); ?>" class="product-image">
        </div>

        <div class="product-info">
            <h1 class="product-title"><?php echo ucwords(htmlspecialchars($product['ProductName'])); ?></h1>
            <div class="product-details">
                <p><strong>Brand Name:</strong> <?php echo strtoupper(htmlspecialchars($product['BrandName'])); ?></p>
                <p><strong>Category:</strong> <?php echo htmlspecialchars($product['Category']); ?></p>
                <p><strong>Price:</strong>₹<?php echo number_format($product['Price'], 2); ?></p>
                <p><strong>Availability:</strong><span style="color:<?php echo $product['isAvailable'] ? '#00FF00' : '#FF0000'; ?>"> <?php echo $product['isAvailable'] ? 'In Stock' : 'Out of Stock'; ?></span></p>
            </div>
            <p class="product-description">
                <?php echo nl2br(htmlspecialchars($product['Description'])); ?>
            </p>

            <form method="POST">
                <div class="quantity-selector">
                    <label for="quantity">Quantity:</label>
                    <input type="number" id="quantity" name="quantity" value="1" min="1" max="99" <?php echo $product['isAvailable'] ? '' : 'disabled'; ?>>
                </div>

                <div class="button-group">
                    <?php if (isset($_SESSION['CustomerID'])): ?>
                        <button type="submit" name="add_to_cart" class="btn btn-cart" <?php echo $product['isAvailable'] ? '' : 'disabled'; ?>>Add to Cart</button>
                        <button type="submit" name="buy_now" class="btn btn-buy" <?php echo $product['isAvailable'] ? '' : 'disabled'; ?>>Buy Now</button>
                    <?php else: ?>
                        <a href="login.php" class="btn btn-cart <?php echo $product['isAvailable'] ? '' : 'disabled'; ?>">Add to Cart</a>
                        <a href="login.php" class="btn btn-buy <?php echo $product['isAvailable'] ? '' : 'disabled'; ?>">Buy Now</a>
                    <?php endif; ?>
                </div>

            </form>

        </div>
    </div>
    <div class="reviews-section">
        <h2>Customer Reviews</h2>
        <div class="review">
            <div class="review-header">
                <span class="reviewer-name">John D.</span>
                <span class="stars">★★★★★</span>
            </div>
            <div class="review-date">2024-01-05</div>
            <p class="review-comment">
                Excellent product! Exactly what I was looking for. The quality exceeded my expectations.
            </p>
        </div>
        <div class="review">
            <div class="review-header">
                <span class="reviewer-name">Sarah M.</span>
                <span class="stars">★★★★☆</span>
            </div>
            <div class="review-date">2024-01-03</div>
            <p class="review-comment">
                Very good product overall. Shipping was fast and the product works great.
            </p>
        </div>
        <div class="review">
            <div class="review-header">
                <span class="reviewer-name">Mike R.</span>
                <span class="stars">★★★★★</span>
            </div>
            <div class="review-date">2024-01-01</div>
            <p class="review-comment">
                Amazing value for money. Would definitely recommend to others.
            </p>
        </div>
        <div class="review">
            <div class="review-header">
                <span class="reviewer-name">Lisa K.</span>
                <span class="stars">★★★★☆</span>
            </div>
            <div class="review-date">2023-12-30</div>
            <p class="review-comment">
                Good quality product. The customer service was very helpful when I had questions.
            </p>
        </div>
        <div class="review">
            <div class="review-header">
                <span class="reviewer-name">David P.</span>
                <span class="stars">★★★★★</span>
            </div>
            <div class="review-date">2023-12-28</div>
            <p class="review-comment">
                Perfect! Just what I needed. Fast delivery and great packaging.
            </p>
        </div>
    </div>
    <?php require 'require/footer.html'; ?>
    <script>
        function openModal(modalId) {
            modalId.style.display = "flex";
        }

        function closeModal(modalId) {
            modalId.style.display = "none";
        }

        function submitHiddenForm() {
            document.getElementById("hiddenForm").submit();
        }
    </script>
</body>

</html>