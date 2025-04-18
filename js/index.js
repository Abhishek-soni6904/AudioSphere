Array.from(document.getElementsByClassName("view-product")).forEach((btn) => {
  btn.addEventListener("click", () => {
    window.location.assign(`viewProduct.php?id=${btn.id}`);
  });
});
document.addEventListener("DOMContentLoaded", function () {
  const slider = tns({
    container: ".product-slider",
    items: 1,
    slideBy: 1,
    autoplay: false,
    controls: true,
    nav: false,
    edgePadding: 60,
    mouseDrag: true,
    gutter: 40,
    loop: true,
    controlsContainer: "#controls",
    responsive: {
      640: {
        items: 2,
      },
      768: {
        items: 3,
      },
      1024: {
        items: 4,
      },
    },
  });
});
function openModal(modalId) {
 modalId.style.display = "flex";
}
function closeModal(modalId) {
  modalId.style.display = "none";
}
