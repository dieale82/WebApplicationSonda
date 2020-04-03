using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AccesoDatos.Entidades
{
    public class BEConsultaCitas
    {
        public int idCitaMedica { get; set; }
        public int idMedico { get; set; }
        public int idEspecialidad { get; set; }
        public System.DateTime fechaCitaMedica { get; set; }
        public string nombrePaciente { get; set; }
        public string descEspecialidad { get; set; }
        public string nombreMedico { get; set; }

    }
}
