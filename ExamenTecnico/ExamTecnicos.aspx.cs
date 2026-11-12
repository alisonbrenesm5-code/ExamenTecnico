using System;
using System.Data;

namespace ExamenTecnico
{
    public partial class ExamTecnicos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarGrillaVacia();
            }
        }

        private void CargarGrillaVacia()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Técnico ID");
            dt.Columns.Add("Nombre del Técnico");
            dt.Columns.Add("Especialidad");

            gvTecnicos.DataSource = dt;
            gvTecnicos.DataBind();
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Técnico ID");
            dt.Columns.Add("Nombre del Técnico");
            dt.Columns.Add("Especialidad");

            dt.Rows.Add(txtTecnicoID.Text, txtNombre.Text, txtEspecialidad.Text);

            gvTecnicos.DataSource = dt;
            gvTecnicos.DataBind();

            txtTecnicoID.Text = "";
            txtNombre.Text = "";
            txtEspecialidad.Text = "";
        }
    }
}