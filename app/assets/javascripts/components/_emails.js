function showEmail(str) {
  var xhttp; 
  if (str == "") {
    document.getElementById("email").innerHTML = "";
    return;
  }
  xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
    document.getElementById("email").innerHTML = this.responseText;
    }
  };
  xhttp.open("GET", "getemail.asp?q="+str, true);
  xhttp.send();
}