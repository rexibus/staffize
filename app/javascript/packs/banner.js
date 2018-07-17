
console.log("banner");
const first = document.querySelector(".full");
const second = document.querySelector(".full-second");





if (first && second) {

second.addEventListener("mouseover", function(){

  // const pick = document.querySelector(".full");

   // $(".full").fadeIn("slow", function() {
    const pick1 = document.querySelector(".full");
    const pick2 = document.querySelector(".full-second");
    // pick.style.transition = "background-color 1000ms linear; "
    // pick.style.background = "rgba(0,101,168,1)";


    pick1.classList.add("backcolor");
    pick1.classList.remove("backimage");
    pick2.classList.remove("backcolor2");
    pick2.classList.add("backimage2");



});


first.addEventListener("mouseover", function(){

const pick1 = document.querySelector(".full");
const pick2 = document.querySelector(".full-second");

      pick1.classList.add("backimage");
      pick2.classList.remove("backimage2");
      pick2.classList.add("backcolor2");

      if ((pick1).classList.contains("backcolor")) {
      pick1.classList.add("backimage");
      pick1.classList.remove("backcolor");
      pick2.classList.remove("backimage2");
      pick2.classList.add("backcolor2");
    } else if ((pick2).classList.contains("backcolor2")) {
      pick2.classList.add("backimage2");
      pick2.classList.remove("backcolor2");
      pick1.classList.remove("backimage");
      pick1.classList.add("backcolor");
    };




});
}

// first.addEventListener("mouseleave", function(){

//    const pick = document.querySelector(".full");
//   // pick.style.background = "linear-gradient(-225deg, rgba(0,101,168,0.6) 0%, rgba(0,36,61,0.6) 50%), url(worker.jpeg) 0 0 no-repeat";
//   // pick.style.backgroundSize = "cover";
//   // pick.style.backgroundPosition = "center";
//   //
//   pick.classList.remove("backcolor");
//   pick.classList.add("backimage");


// })
