//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AccesoDatos.Mer
{
    using System;
    using System.Collections.Generic;
    
    public partial class EspecialidadMedico
    {
        public int idEspecialidadMedico { get; set; }
        public int idMedico { get; set; }
        public int idEspecialidad { get; set; }
        public string nombreUniversidad { get; set; }
    
        public virtual Especialidades Especialidades { get; set; }
        public virtual Medicos Medicos { get; set; }
    }
}
