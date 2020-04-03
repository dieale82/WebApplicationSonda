using AccesoDatos.Entidades;
using AccesoDatos.Mer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;

namespace AccesoDatos.Consultas
{
    public class BAConsultasCitas
    {
        private SondaEntities objConexionBd = new SondaEntities();
        public List<BEConsultaCitas> ConsultarCitas()
        {
            try
            {
                var lstCitas = (from TrxCitas in objConexionBd.CitasMedicas
                                join MaestroMedicos in objConexionBd.Medicos on TrxCitas.idMedico equals MaestroMedicos.idMedico
                                join MaestroEspecialidades in objConexionBd.Especialidades on TrxCitas.idEspecialidad equals MaestroEspecialidades.idEspecialidad
                                select new BEConsultaCitas
                                {
                                    idCitaMedica = TrxCitas.idCitaMedica,
                                    idMedico = TrxCitas.idMedico,
                                    idEspecialidad = TrxCitas.idEspecialidad,
                                    fechaCitaMedica = TrxCitas.fechaCitaMedica,
                                    nombrePaciente = TrxCitas.nombrePaciente,
                                    descEspecialidad = MaestroEspecialidades.descEspecialidad,
                                    nombreMedico = MaestroMedicos.nombreMedico
                                }).ToList();

                return lstCitas;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }            
        }

        public string CrearCitaMedica(int intIdMedico, int intIdEspecialidad, DateTime dtmFechaCita, string strNombrePaciente)
        {
            try
            {
                string strRetorno = string.Empty;
                var objJson = new JavaScriptSerializer();

                if (ValidarCitaPrevia(intIdMedico, dtmFechaCita))
                {
                    strRetorno = objJson.Serialize(new { IdRetorno = 0, CreacionExitosa = false, MensajeRetorno = "Cita ya existe para este médico" });
                }
                else {
                    var resultado = objConexionBd.Database.SqlQuery<int>("EXEC SP_GuardarCitaMedica @idMedico, @idEspecialidad, @fechaCitaMedica,@nombrePaciente",
                        intIdMedico,
                        intIdEspecialidad,
                        dtmFechaCita,
                        strNombrePaciente);
                    strRetorno = objJson.Serialize(new { IdRetorno = resultado, CreacionExitosa = true, MensajeRetorno = "Creación exitosa" });
                }               

                return strRetorno;
            }
            catch (Exception e)
            {
                string strRetorno = string.Empty;
                var objJson = new JavaScriptSerializer();
                strRetorno = objJson.Serialize(new { IdRetorno = 0, CreacionExitosa = false, MensajeRetorno = e.Message });
                return strRetorno;
            }
        }

        internal bool ValidarCitaPrevia(int intIdMedico, DateTime dtmFechaCita)
        {
            try {

                bool blnExisteCitaPrevia = false;
                int intContadorRegistros = (from citasPrevias in objConexionBd.CitasMedicas
                                            where citasPrevias.idMedico == intIdMedico
                                            where citasPrevias.fechaCitaMedica == dtmFechaCita
                                            select citasPrevias.idCitaMedica).Count();

                blnExisteCitaPrevia = intContadorRegistros > 0 ? true : false;

                return blnExisteCitaPrevia;
            } 
            catch(Exception e)
            {
                throw new Exception(e.Message);
            }
        }
    }
}
