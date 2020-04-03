function CargarDatosTablaInicial() {

    $.ajax({
        type: "POST",
        url: "ConsultarCitas.aspx/ListarCitas",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var objJsonTurnos = JSON.parse(response.d);            
            LlenarTablaCitas(objJsonTurnos);
        },
        failure: function (response) {
            console.log("Error: " + response.d);
        }
    });
}

function LlenarTablaCitas(objJsonTurnos) {
    var html = '<table id="tblCitas">'
        + '<thead>'
        + '<tr>'
        + '<th>Fecha Cita</th>'
        + '<th>Nombre Paciente</th>'
        + '<th>Tipo Servicio</th>'
        + '<th>Medico</th>'
        + '</tr>'
        + '</thead>'
        + '<tbody>';


    for (row in objJsonTurnos) {
        html +=
            "<tr onclick='CambiarColor(this);'>" +            
            "<td align='center'>" + objJsonTurnos[row].fechaCitaMedica + "</td>" +
            "<td align='center'>" + objJsonTurnos[row].nombrePaciente + "</td>" +
            "<td align='center'>" + objJsonTurnos[row].descEspecialidad + "</td>" +
            "<td align='center'>" + objJsonTurnos[row].nombreMedico + "</td>" +
            "</tr>";

    }

    html += '</tbody>'
        + '</table>';

    $("#divTablaConsulta").html(html);

    setTimeout(function () {
        $('#tblCitas').DataTable();
    }, 1000);
}

var intIndexColorInicial = 0;
function CambiarColor(ctl) {   
    var row = ctl;    
    var cols = $(ctl).children("td");  

    if (intIndexColorInicial > 0) {
        var x = document.getElementById("tblCitas");
        x.rows[parseInt(intIndexColorInicial)].cells[0].style.color = "black";
        x.rows[parseInt(intIndexColorInicial)].cells[1].style.color = "black";
        x.rows[parseInt(intIndexColorInicial)].cells[2].style.color = "black";
        x.rows[parseInt(intIndexColorInicial)].cells[3].style.color = "black";        
    }
    intIndexColorInicial = ctl.rowIndex;   

    cols[0].style.color = '#A9E2F3';
    cols[1].style.color = '#A9E2F3';
    cols[2].style.color = '#A9E2F3';
    cols[3].style.color = '#A9E2F3';
}

$(function () {
    CargarDatosTablaInicial();
});