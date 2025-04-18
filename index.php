<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AudioSphere - Your Sound, Your Style</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.4/tiny-slider.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/alert.css">
    <link rel="stylesheet" href="css/nav&footer.css">
</head>

<body>
    <?php
    require 'require/config.php';
    require 'require/nav.php';

    $categoryResult = mysqli_query($conn, "SELECT DISTINCT Category FROM products WHERE Category IS NOT NULL AND Category != '' ORDER BY Category ASC");
    $brandResult = mysqli_query($conn, "SELECT DISTINCT BrandName FROM products WHERE BrandName IS NOT NULL AND BrandName != '' ORDER BY BrandName ASC");
    if (!$categoryResult || !$brandResult) die("Database query failed: " . mysqli_error($conn));

    $categoryImages = ['earphones/boat_boatbasshead102.avif', 'headphones/boat_boatbasshead910.avif', 'neckband/boat_boatrockerz109.avif', 'TWS/boat_boatairdopes131.avif'];
    $brandLogos = ['boatLogo.svg', 'noiseLogo.webp', 'portronicsLogo.avif', 'realmeLogo.svg', 'zebronicsLogo.jpg'];
    ?>
    <main>
        <section class="hero">
            <div class="hero-content">
                <h1 class="hero-title">Immerse in Pure Sound</h1>
                <p class="hero-subtitle">Find the perfect audio gear tailored for you</p>
                <div class="hero-cta">
                    <a href="AllProduct.php" class="primary-btn">Shop Now</a>
                    <a href="#footer" class="secondary-btn">Contact Us</a>
                </div>
            </div>
        </section>

        <section class="categories">
            <h2 class="section-title">Explore by Category</h2>
            <div class="category-grid">
                <?php $i = 0;
                while ($category = mysqli_fetch_assoc($categoryResult)) : ?>
                    <a href="Allproduct.php?category=<?= urlencode($category['Category']) ?>">
                        <div class="category-card">
                            <div class="category-image">
                                <img src="assets/<?= $categoryImages[$i % count($categoryImages)] ?>" alt="<?= htmlspecialchars($category['Category']) ?>">
                            </div>
                            <h3><?= strtoupper(htmlspecialchars($category['Category'])) ?></h3>
                            <p>Top-quality audio products</p>
                        </div>
                    </a>
                <?php $i++;
                endwhile; ?>
            </div>
        </section>

        <section class="brands">
            <h2 class="section-title">Shop by Brand</h2>
            <div class="brand-grid">
                <?php $i = 0;
                while ($brand = mysqli_fetch_assoc($brandResult)) : ?>
                    <a class="brand-card" href="Allproduct.php?brand=<?= urlencode($brand['BrandName']) ?>">
                        <div >
                            <img src="assets/<?= $brandLogos[$i % count($brandLogos)] ?>" alt="<?= htmlspecialchars($brand['BrandName']) ?>">
                        </div>
                    </a>
                <?php $i++;
                endwhile; ?>
            </div>
        </section>

        <section class="featured-products">
            <h2 class="section-title">Featured Products</h2>
            <div id="controls">
                <div class="prev"><i class="fas fa-angle-left"></i></div>
                <div class="next"><i class="fas fa-angle-right"></i></div>
            </div>
            <div class="product-slider">
                <?php
                $sql = "SELECT * FROM products ORDER BY RAND() LIMIT 10";
                $result = mysqli_query($conn, $sql);
                ?>
                <?php while ($row = mysqli_fetch_assoc($result)) : ?>
                    <div>
                    <div class="product-card">
                        <div class="product-image">
                            <img src="<?= htmlspecialchars($row['ImagePath']) ?>" alt="<?= htmlspecialchars($row['ProductName']) ?>">
                        </div>
                        <div class="product-info">
                            <h3><?= htmlspecialchars($row['ProductName']) ?></h3>
                            <p class="product-category"> <?= htmlspecialchars($row['Category']) ?></p>
                            <span class="current-price">₹<?= htmlspecialchars($row['Price']) ?></span>
                            <button id="<?= $row['ProductID'] ?>" class="view-product">View Product</button>
                        </div>
                    </div>
                </div>
                <?php endwhile; ?>
            </div>
        </section>
    </main>
    <?php require 'require/footer.html'; ?>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.2/min/tiny-slider.js"></script>
    <script src="js/index.js"></script>
</body>

</html>