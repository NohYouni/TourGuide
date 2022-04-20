let slides = document.querySelector(".square_lists");
let slideImg = document.querySelectorAll(".square_list .index_fv");
currentIdx = 0;
slideCount = slideImg.length;
prev = document.querySelector(".index_fv_prev");
next = document.querySelector(".index_fv_next");
slideWidth = 300;
slideMargin = 100;

makeClone();
initfunction();

function makeClone(){
  let cloneSlide_first = slideImg[0].cloneNode(true); //slideImg.firstElementChild.cloneNode(true);
  let cloneSlide_last = slides.lastElementChild.cloneNode(true);
  slides.append(cloneSlide_first); 
  slides.insertBefore(cloneSlide_last,slides.firstElementChild);
}

function initfunction(){
  slides.style.width = (slideWidth + slideMargin) * (slideCount+2) + "px";
  slides.style.left = -(slideWidth + slideMargin) + "px";
}

next.addEventListener('click', function () {
  if (currentIdx <= slideCount-1) {
    slides.style.left = -(currentIdx+2) * (slideWidth+slideMargin) + "px";
    slides.style.transition = `${0.5}s ease-out`;
  }if (currentIdx === slideCount-1){
    setTimeout(function(){
      slides.style.left = -(slideWidth + slideMargin) + "px";
      slides.style.transition = `${0}s ease-out`;
    },500);
    currentIdx = -1;
    } 
    currentIdx+=1;
  }
);

prev.addEventListener('click', function () {
  console.log(currentIdx);
    if (currentIdx >= 0) {
      slides.style.left = -(currentIdx) * (slideWidth + slideMargin) + "px";
      slides.style.transition = `${0.5}s ease-out`;
    }if (currentIdx === 0){
      setTimeout(function(){
        slides.style.left = -(slideCount) * (slideWidth + slideMargin)+ "px";
        slides.style.transition = `${0}s ease-out`;
      },500);
      currentIdx=slideCount;
      } 
      currentIdx-=1;
    }
);