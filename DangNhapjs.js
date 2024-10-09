function demo() {
    var email = document.getElementById("User").value;
    var password = document.getElementById("passwordInput").value;
    var pin = document.getElementById("pinInput").value;
    if (email == "" && password == "") {

        successElement.style.color = "red";
        document.getElementById("success").innerHTML = "Mời điền đầy đủ thông tin";
    }
}

var myParagraph = document.getElementById("quenmk");

myParagraph.addEventListener("click", function nhappin() {
    var button = document.getElementById("MaPin");
    var pininput = document.getElementById("pinInput");
    if (button.style.display === "block" && pininput.style.display === "block") {
        button.style.display = "none";
        pininput.style.display = "none";
    } else {
        button.style.display = "block";
        pininput.style.display = "block";
    }
});

