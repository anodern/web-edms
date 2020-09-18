function change(sno) {
    console.log("change");
    document.getElementById(sno).value=parseInt(document.getElementById(sno+"_1").value)*0.3 + parseInt(document.getElementById(sno+"_2").value)*0.7;
}