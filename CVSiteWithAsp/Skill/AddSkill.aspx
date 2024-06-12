<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AddSkill.aspx.cs" Inherits="Skill_AddSkill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHhead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHbody" runat="Server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <h2>Yetenek Ekle</h2>
                <form runat="server" class="form-category">
                    <div class="form-group">
                        <label runat="server" id="lblSkill">Yetenek</label>
                        <asp:TextBox runat="server" ID="txtSkill" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Button runat="server" ID="btnAddSkill" CssClass="btn btn-primary" Text="Ekle" OnClick="btnAddSkill_Click" />
                    </div>
                </form>
            </div>
        </div>
    </div>

</asp:Content>
