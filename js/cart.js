function openModal(modalId) {
  modalId.style.display = "flex";
}
function closeModal(modalId) {
  modalId.style.display = "none";
}
document.addEventListener("DOMContentLoaded", function () {
  // Add click event listeners for quantity buttons
  document.querySelectorAll(".minus-btn").forEach((button) => {
    button.addEventListener("click", function () {
      const cartId = button.id;
      updateQuantity(cartId, -1);
    });
  });

  document.querySelectorAll(".plus-btn").forEach((button) => {
    button.addEventListener("click", function () {
      const cartId = button.id;
      updateQuantity(cartId, 1);
    });
  });

  async function updateQuantity(cartId, change) {
    const row = document.getElementById(`cart-row-${cartId}`);
    const quantitySpan = row.querySelector(".quantity");
    const currentQuantity = parseInt(quantitySpan.textContent);
    const newQuantity = currentQuantity + change;

    if (newQuantity < 1) return;

    try {
      const response = await fetch("update_cart.php", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          cartId: cartId,
          quantity: newQuantity,
        }),
      });

      const data = await response.json();
      if (data.success) {
        quantitySpan.textContent = newQuantity;
        const priceText = row.cells[1].textContent.trim();
        const price = parseFloat(priceText.replace(/[^\d.-]/g, ""));
        const newTotal = price * newQuantity;
        row.querySelector(".item-total").textContent = `₹${newTotal
          .toFixed(2)
          .replace(/\d(?=(\d{3})+\.)/g, "$&,")}`;
        updateGrandTotal();
      }
    } catch (error) {
      console.error("Error:", error);
    }
  }

  function updateGrandTotal() {
    const totals = document.querySelectorAll(".item-total");

    const grandTotal = Array.from(totals).reduce((sum, el) => {
      const price = parseFloat(
        el.textContent.replace("₹", "").replace(/,/g, "")
      );
      return sum + price;
    }, 0);

    document.getElementById(
      "grand-total"
    ).textContent = `${grandTotal.toLocaleString("en-US", {
      minimumFractionDigits: 2,
      maximumFractionDigits: 2,
    })}`;
  }
});
document
  .getElementById("checkoutForm")
  .addEventListener("submit", function (event) {
    event.preventDefault(); // Prevent form submission to the server
    closeModal(checkoutModal);
    const formData = new FormData(event.target); // Create a FormData object

    // Get individual values
    const name = formData.get("name");
    const email = formData.get("email");
    const phone = formData.get("phone");
    const address = formData.get("address");
    const paymentMethod = formData.get("paymentMethod");
    const total = document.getElementById("grand-total").textContent;
    fetch("update_cart.php", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ checkout: true }),
    });

    generateReceipt({ name, email, phone, address, paymentMethod, total });
  });

function generateReceipt(data) {
  // Generate Order ID
  const orderId = "ORD" + Date.now();

  // Fill receipt template
  document.getElementById("orderId").textContent = orderId;
  document.getElementById("orderDate").textContent =
    new Date().toLocaleDateString();
  document.getElementById("payMode").textContent = data.paymentMethod;
  document.getElementById("customerName").textContent = data.name;
  document.getElementById("customerEmail").textContent = data.email;
  document.getElementById("customerPhone").textContent = data.phone;
  document.getElementById("customerAddress").textContent = data.address;
  document.getElementById("orderTotal").textContent = data.total;

  // Show receipt and hide cart container
  document.querySelector(".cart-container").style.display = "none";
  document.getElementById("receipt").style.display = "block";
}

// Close modal if clicked outside
window.onclick = function (event) {
  const modal = document.getElementById("checkoutModal");
  if (event.target === modal) {
    modal.style.display = "none";
  }
};
