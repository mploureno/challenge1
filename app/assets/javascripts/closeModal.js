function closeModal() {
  const target = document.getElementById('modal');

  if (target) target.style.display = 'none';
}

setInterval(closeModal, 2400);
window.onclick = closeModal;