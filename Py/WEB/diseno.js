// Obtener el botón "Leer más"
var leerMasBoton = document.getElementById("leer-mas");

// Obtener el artículo completo
var articuloCompleto = document.getElementById("articulo-completo");

// Escuchar el evento "click" en el botón "Leer más"
leerMasBoton.addEventListener("click", function() {
  // Mostrar el artículo completo
  articuloCompleto.style.display = "block";
  // Ocultar el botón "Leer más"
  leerMasBoton.style.display = "none";
});
