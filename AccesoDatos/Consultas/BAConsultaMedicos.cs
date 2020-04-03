using AccesoDatos.Entidades;
using AccesoDatos.Mer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AccesoDatos.Consultas
{
    public static class BAConsultaMedicos
    {
        private static SondaEntities objConexionBd = new SondaEntities();
        public static List<BEMedicos> ConsultarMedicos(int intIdEspecialidad)
        {
            var lstMedicos = (from maestroMedico in objConexionBd.Medicos
                              join especilidad in objConexionBd.EspecialidadMedico on maestroMedico.idMedico equals especilidad.idMedico
                              where especilidad.idEspecialidad.Equals(intIdEspecialidad)
                              select new BEMedicos
                              {
                                  idMedico = maestroMedico.idMedico,
                                  nombreMedico = maestroMedico.nombreMedico,
                                  numeroDocumento = maestroMedico.numeroDocumento
                              }).ToList();

            return lstMedicos;
        }
    }
}
