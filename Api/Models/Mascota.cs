//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Api.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Mascota
    {
        public int IdMascota { get; set; }
        public string Nombre { get; set; }
        public int Edad { get; set; }
        public string Estado { get; set; }
        public int IdRefugio { get; set; }
        public string Foto { get; set; }
        public int IdRaza { get; set; }
        public bool Castrado { get; set; }
    
        public virtual Raza Raza { get; set; }
        public virtual Refugio Refugio { get; set; }
    }
}
