﻿using AccesoDatos.Consultas;
using AccesoDatos.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

// NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "Service1" en el código, en svc y en el archivo de configuración.
public class Service : IService
{
	public List<BEMedicos> ConsultarMedicos(int intIdEspecialidad)
	{
		return BAConsultaMedicos.ConsultarMedicos(intIdEspecialidad);
	}
}
