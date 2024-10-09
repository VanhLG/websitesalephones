const rightbtn = document.querySelector('.fa-chevron-rigth-two')
const leftbtn = document.querySelector('.fa-chevron-left-two')
const imgNuber = document.querySelectorAll('.slider-product-one-items')
let index = 0;

rightbtn.addEventListener("click", function () {
    index = index + 1
    if (index > imgNuber.length - 1) {
        index = 0
    }
    document.querySelector(".slider-product-one-content-items-content").style.right = index * 100 + "%"
})
leftbtn.addEventListener("click", function () {
    index = index - 1
    if (index <= 0) {
        index = imgNuber.length - 1
    }
    document.querySelector(".slider-product-one-content-items-content").style.right = index * 100 + "%"
})
function searchProduct() {
    var searchBox = document.getElementById("searchBox");
    if (searchBox.value.trim() == "") {
        alert("Vui lòng nhập từ khóa tìm kiếm.");
        return;
    }
    else {
        window.location.href = "TimKiem.aspx?search=" + searchBox.value.trim();
    }
}
function click() {
    anh3.style.display = "none";
}
