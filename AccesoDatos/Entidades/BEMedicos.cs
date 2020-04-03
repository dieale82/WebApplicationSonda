using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace AccesoDatos.Entidades
{
    [DataContract]
    [Serializable]
    public class BEMedicos
    {
        [DataMember]
        public int idMedico { get; set; }
        [DataMember]
        public string tipoDocumento { get; set; }
        [DataMember]
        public string numeroDocumento { get; set; }
        [DataMember]
        public string nombreMedico { get; set; }
    }
}
