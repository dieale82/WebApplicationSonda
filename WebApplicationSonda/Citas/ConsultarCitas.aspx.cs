using AccesoDatos.Consultas;
using AccesoDatos.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationSonda.Citas
{
    public partial class ConsultarCitas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string ListarCitas()
        {
            try
            {
                List<BEConsultaCitas> lstCitas = new List<BEConsultaCitas>();
                BAConsultasCitas objConsulta = new BAConsultasCitas();
                lstCitas = objConsulta.ConsultarCitas();

                List<BECitasPresentacion> lstCitasPresentacion = new List<BECitasPresentacion>();
                lstCitasPresentacion = MapearPresentacion(lstCitas);

                JavaScriptSerializer jsJSON = new JavaScriptSerializer(); 
                jsJSON.MaxJsonLength = Int32.MaxValue;
                string strCitas = jsJSON.Serialize(lstCitasPresentacion);
                return strCitas;
            }
            catch (Exception ex)
            {                
                return ex.Message;
            }
        }

        internal static List<BECitasPresentacion> MapearPresentacion(List<BEConsultaCitas> lstCitas)
        {
            List<BECitasPresentacion> lstCitasPresentacion = new List<BECitasPresentacion>();
            foreach (BEConsultaCitas objCitasConsulta in lstCitas)
            {
                BECitasPresentacion objPresentacion = new BECitasPresentacion();
                objPresentacion.idCitaMedica = objCitasConsulta.idCitaMedica;
                objPresentacion.idMedico = objCitasConsulta.idMedico;
                objPresentacion.idEspecialidad = objCitasConsulta.idEspecialidad;
                objPresentacion.fechaCitaMedica = objCitasConsulta.fechaCitaMedica.ToString("dd/MM/yyy");
                objPresentacion.descEspecialidad = objCitasConsulta.descEspecialidad;
                objPresentacion.nombreMedico = objCitasConsulta.nombreMedico;
                objPresentacion.nombrePaciente = objCitasConsulta.nombrePaciente;
                lstCitasPresentacion.Add(objPresentacion);
            }

            return lstCitasPresentacion;
        }        
    }

    internal class BECitasPresentacion
    {
        public int idCitaMedica { get; set; }
        public int idMedico { get; set; }
        public int idEspecialidad { get; set; }
        public string fechaCitaMedica { get; set; }
        public string nombrePaciente { get; set; }
        public string descEspecialidad { get; set; }
        public string nombreMedico { get; set; }
    }
}