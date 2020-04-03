using AccesoDatos.Entidades;
using AccesoDatos.Mer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AccesoDatos.Consultas
{
    public class BAConsultaEspecialidades
    {
        private SondaEntities objConexionBd = new SondaEntities();
        public List<BEEspecialidades> CargarEspecialidades()
        {
            var lstEspecialidades = (from datosEspecialidades in objConexionBd.Especialidades
                                     select new BEEspecialidades
                                     {
                                         idEspecialidad = datosEspecialidades.idEspecialidad,
                                         descEspecialidad = datosEspecialidades.descEspecialidad
                                     }).ToList();
            return lstEspecialidades;
        }
    }
}
