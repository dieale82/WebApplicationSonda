function CargarEspecialidadesCombo() {
    $.ajax({
        type: "POST",
        url: "CrearCita.aspx/ListarEspecialidades",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var objJsonEspecialidades = JSON.parse(response.d);
            $('<option value="0">Seleccione</option>').appendTo('#cmbTipoEspecialidad');
            for (row in objJsonEspecialidades) {
                id = objJsonEspecialidades[row].idEspecialidad;
                name = objJsonEspecialidades[row].descEspecialidad;
                $('<option value="' + id + '">' + name + '</option>').appendTo('#cmbTipoEspecialidad');
            }
        },
        failure: function (response) {
            console.log("Error: " + response.d);
        }
    });
}

$(function () {
    CargarEspecialidadesCombo();
});