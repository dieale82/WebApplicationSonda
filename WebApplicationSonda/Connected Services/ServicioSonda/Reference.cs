﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplicationSonda.ServicioSonda {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServicioSonda.IService")]
    public interface IService {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/ConsultarMedicos", ReplyAction="http://tempuri.org/IService/ConsultarMedicosResponse")]
        AccesoDatos.Entidades.BEMedicos[] ConsultarMedicos(int intIdEspecialidad);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/ConsultarMedicos", ReplyAction="http://tempuri.org/IService/ConsultarMedicosResponse")]
        System.Threading.Tasks.Task<AccesoDatos.Entidades.BEMedicos[]> ConsultarMedicosAsync(int intIdEspecialidad);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IServiceChannel : WebApplicationSonda.ServicioSonda.IService, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class ServiceClient : System.ServiceModel.ClientBase<WebApplicationSonda.ServicioSonda.IService>, WebApplicationSonda.ServicioSonda.IService {
        
        public ServiceClient() {
        }
        
        public ServiceClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public ServiceClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ServiceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ServiceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public AccesoDatos.Entidades.BEMedicos[] ConsultarMedicos(int intIdEspecialidad) {
            return base.Channel.ConsultarMedicos(intIdEspecialidad);
        }
        
        public System.Threading.Tasks.Task<AccesoDatos.Entidades.BEMedicos[]> ConsultarMedicosAsync(int intIdEspecialidad) {
            return base.Channel.ConsultarMedicosAsync(intIdEspecialidad);
        }
    }
}
