window.onload = function(){
  document.getElementById('close').onclick = function(){
      this.style.display='none'
      return false;
  };
};

window.onclick = function(){
  document.getElementById('close')
    .style.display='none'
}