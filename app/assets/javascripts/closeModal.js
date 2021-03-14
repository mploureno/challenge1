function closeModal() {
  var target = document.getElementById('modal');

  if (target) target.style.display = 'none';
}

setTimeout(closeModal, 3500);
window.onclick = closeModal;
