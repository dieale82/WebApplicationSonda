<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearCita.aspx.cs" Inherits="WebApplicationSonda.Citas.CrearCita" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Scripts/jquery-ui-1.12.1.custom/jquery-ui.min.css" rel="stylesheet" />
    <link href="Estilos/datatables.min.css" rel="stylesheet" />

    <script src="Scripts/jquery-1.11.1.min.js"></script>
    <script src="Scripts/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
    <script src="Scripts/datatables.min.js"></script>
    <script src="Scripts/CrearCita.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label for="txtFechaCita">Fecha:</label>
            <input type="text" id="txtFechaCita"><br/>

            <label for="txtNombrePaciente">Nombre Paciente:</label>
            <input type="text" id="txtNombrePaciente"><br/>

            <label for="cmbTipoEspecialidad">Tipo Servicio:</label>
            <select id="cmbTipoEspecialidad">
            </select><br/>

            <label for="cmbMedico">Medico:</label>
            <select id="cmbMedico">
            </select><br/>
        </div>
    </form>
</body>
</html>
