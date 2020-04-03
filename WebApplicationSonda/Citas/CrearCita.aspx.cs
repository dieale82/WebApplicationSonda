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
    public partial class CrearCita : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string ListarEspecialidades()
        {
            try
            {
                List<BEEspecialidades> lstEspecialidades = new List<BEEspecialidades>();
                BAConsultaEspecialidades objConsulta = new BAConsultaEspecialidades();
                lstEspecialidades = objConsulta.CargarEspecialidades();              

                JavaScriptSerializer jsJSON = new JavaScriptSerializer();
                jsJSON.MaxJsonLength = Int32.MaxValue;
                string strEspecialidades = jsJSON.Serialize(lstEspecialidades);
                return strEspecialidades;
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        [WebMethod]
        public static string ListarMedicosXEspecialidad(int intIdEspecialidad)
        {
            try
            {                
                ServicioSonda.ServiceClient objCliente = new ServicioSonda.ServiceClient();
                List<BEMedicos> consultaMedicos = objCliente.ConsultarMedicos(intIdEspecialidad).ToList();              

                JavaScriptSerializer jsJSON = new JavaScriptSerializer();
                jsJSON.MaxJsonLength = Int32.MaxValue;
                string strEspecialidades = jsJSON.Serialize(consultaMedicos);
                return strEspecialidades;
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }
    }
}