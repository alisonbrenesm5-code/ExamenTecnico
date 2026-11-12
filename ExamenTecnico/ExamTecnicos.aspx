<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExamTecnicos.aspx.cs" Inherits="ExamenTecnico.ExamTecnicos" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Gestión de Técnicos</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma; background: linear-gradient(135deg, #ffe6f2, #e6f7ff); padding: 40px; }
        .container { width: 60%; margin: auto; background: #ffffff; padding: 30px; border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        h2 { color: #d63384; text-align: center; }
        .form-group { margin-bottom: 15px; }
        .form-group label { display: block; font-weight: bold; color: #0d6efd; margin-bottom: 5px; }
        .form-group input { width: 100%; padding: 8px; border: 1px solid #ced4da; border-radius: 6px; }
        .btn { background: #d63384; color: white; border: none; padding: 10px 20px; border-radius: 6px; cursor: pointer; font-weight: bold; }
        .btn:hover { background: #b02a63; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Registro de Técnicos</h2>
            <div class="form-group">
                <label>Técnico ID:</label>
                <asp:TextBox ID="txtTecnicoID" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Nombre del Técnico:</label>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Especialidad:</label>
                <asp:TextBox ID="txtEspecialidad" runat="server"></asp:TextBox>
            </div>
            <asp:Button ID="btnGuardar" runat="server" Text="Guardar y Mostrar" CssClass="btn" OnClick="btnGuardar_Click" />
            <hr style="margin: 25px 0;" />
            <asp:GridView ID="gvTecnicos" runat="server" AutoGenerateColumns="true" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                <HeaderStyle BackColor="#0d6efd" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#f8f9fa" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
