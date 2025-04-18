document.addEventListener("DOMContentLoaded", function () {
  const searchInput = document.querySelector(".search-container input");
  const products = document.querySelectorAll(".product-card");
  const categoryFilter = document.getElementById("categoryFilter");
  const brandFilter = document.getElementById("brandFilter");
  const sortFilter = document.getElementById("sortFilter");

  // Search functionality
  searchInput.addEventListener("input", function () {
    // Reset filters when searching
    if (searchInput.value.trim() !== "") {
      categoryFilter.value = "";
      brandFilter.value = "";
    }
    applyFilters();
  });

  // Category filter
  categoryFilter.addEventListener("change", function () {
    applyFilters();
  });

  // Brand filter
  brandFilter.addEventListener("change", function () {
    applyFilters();
  });

  // Sort filter
  sortFilter.addEventListener("change", function () {
    applyFilters();
  });

  function applyFilters() {
    const searchTerm = searchInput.value.toLowerCase().trim();
    const category = categoryFilter.value;
    const brand = brandFilter.value;
    const sortValue = sortFilter.value;

    // First filter the products
    const visibleProducts = Array.from(products).filter((product) => {
      const productName = product
        .querySelector(".product-name")
        .textContent.toLowerCase();
      const productDescription = product
        .querySelector(".product-description")
        .textContent.toLowerCase();
      const productCategory = product
        .querySelector(".product-category")
        .textContent.toLowerCase();
      const productBrand = product.dataset.brand?.toLowerCase() || "";

      const matchesSearch =
        searchTerm === "" ||
        productName.includes(searchTerm) ||
        productDescription.includes(searchTerm) ||
        productCategory.includes(searchTerm);

      const matchesCategory =
        !category || productCategory === category.toLowerCase();
      const matchesBrand = !brand || productBrand === brand.toLowerCase();

      // Update visibility
      product.style.display =
        matchesSearch && matchesCategory && matchesBrand ? "flex" : "none";
      return matchesSearch && matchesCategory && matchesBrand;
    });

    // Then sort the visible products
    const productsGrid = document.querySelector(".products-grid");
    visibleProducts.sort((a, b) => {
      const aName = a.querySelector(".product-name").textContent;
      const bName = b.querySelector(".product-name").textContent;
      // Fix price parsing by removing '₹' and commas before converting to float
      const aPrice = parseFloat(
        a.querySelector(".current-price").textContent.replace(/[₹,]/g, "")
      );
      const bPrice = parseFloat(
        b.querySelector(".current-price").textContent.replace(/[₹,]/g, "")
      );

      switch (sortValue) {
        case "name-asc":
          return aName.localeCompare(bName);
        case "name-desc":
          return bName.localeCompare(aName);
        case "price-asc":
          return aPrice - bPrice;
        case "price-desc":
          return bPrice - aPrice;
        default:
          return 0;
      }
    });

    // Update the DOM
    productsGrid.innerHTML = "";
    visibleProducts.forEach((product) => {
      productsGrid.appendChild(product);
    });
  }

  // Initial filter application if any filter is selected
  if (categoryFilter.value || brandFilter.value) {
    applyFilters();
  }
});

// Keep existing click handlers
Array.from(document.getElementsByClassName("view-product")).forEach((btn) => {
  btn.addEventListener("click", () => {
    window.location.assign(`viewProduct.php?id=${btn.id}`);
  });
});

function openModal(modalId) {
  modalId.style.display = "flex";
}

function closeModal(modalId) {
  modalId.style.display = "none";
}
