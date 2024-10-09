function placeOrder() {
  // Xóa toàn bộ sản phẩm trong giỏ hàng
    CartItems.Clear();

  // Hiển thị dialog thông báo đặt hàng thành công
  var dialog = document.createElement("div");
  dialog.innerHTML = "Bạn đã đặt hàng thành công!";
  dialog.style.backgroundColor = "lightgreen";
  dialog.style.padding = "10px";
  dialog.style.position = "fixed";
  dialog.style.top = "50%";
  dialog.style.left = "50%";
  dialog.style.transform = "translate(-50%, -50%)";
  document.body.appendChild(dialog);

  // Sau 3 giây, ẩn dialog và chuyển về trang chủ
  setTimeout(function() {
    dialog.style.display = "none";
    window.location.href = "/";
  }, 30000);
}