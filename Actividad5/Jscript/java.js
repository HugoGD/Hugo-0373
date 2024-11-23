const cronometro = document.getElementById("cronometro");

let segundos = 0;

function actualizarCronometro() {
    segundos++; 

    const horas = Math.floor(segundos / 3600);
    const minutos = Math.floor((segundos % 3600) / 60);
    const segs = segundos % 60;

    const formatoTiempo = `${String(horas).padStart(2, "0")}:${String(minutos).padStart(2, "0")}:${String(segs).padStart(2, "0")}`;

    cronometro.textContent = formatoTiempo;
}

setInterval(actualizarCronometro, 1000);

const modal = document.getElementById("modal");
const modalImg = document.getElementById("modal-img");
const closeModal = document.querySelector(".close");
const images = document.querySelectorAll(".clickable");

// Abrir modal al hacer clic en una imagen
images.forEach(image => {
    image.addEventListener("click", () => {
        modal.style.display = "flex"; // Mostrar el modal
        modalImg.src = image.src; // Asignar la fuente de la imagen clicada al modal
    });
});

// Cerrar modal al hacer clic en la 'X'
closeModal.addEventListener("click", () => {
    modal.style.display = "none";
});

// Cerrar modal al hacer clic fuera de la imagen
modal.addEventListener("click", (e) => {
    if (e.target === modal) {
        modal.style.display = "none";
    }
});


// Este archivo puede contener interactividad.
// Por ejemplo, mostrar un mensaje de bienvenida:
document.addEventListener("DOMContentLoaded", () => {
    console.log("¡Bienvenido a nuestra carta de tacos!");
});
