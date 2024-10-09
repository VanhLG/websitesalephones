function kiemtra() {
    var hoten = document.getElementById("hoten").value;
    var sdt = document.getElementById("sdt").value;
    var taikhoan = document.getElementById("taikhoan").value;
    var matkhau = document.getElementById("matkhau").value;
    var pin = document.getElementById("pin").value;
    if (hoten == "" || sdt == "" || taikhoan == "" || matkhau == "" || pin == "") {
        var successElement = document.getElementById("success");
        successElement.style.color = "red";
        document.getElementById("success").innerHTML = "Mời điền đầy đủ thông tin";
        return false;
    }
    else if (matkhau.match(/[a-z]/g) && matkhau.match(/[A-Z]/g) && matkhau.match(/[0-9]/g)) {
        
        return true;
    }
    else { 
        document.getElementById("success").innerHTML = "Mật khẩu không hợp lệ";
        return false;
    }
}