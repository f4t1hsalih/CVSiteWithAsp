<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="UpdateExperience.aspx.cs" Inherits="Experience_UpdateExperience" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHhead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHbody" runat="Server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <h2>Deneyim Ekle</h2>
                <form runat="server" class="form-category">
                    <div class="form-group">
                        <label runat="server" id="lblTitle">Başlık</label>
                        <asp:TextBox runat="server" ID="txtTitle" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label runat="server" id="lblSubtitle">Alt Başlık</label>
                        <asp:TextBox runat="server" ID="txtSubtitle" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label runat="server" id="lblDescription">Açıklama</label>
                        <asp:TextBox runat="server" ID="txtDescription" CssClass="form-control" Height="100px" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label runat="server" id="lblDate">Tarih</label>
                        <asp:TextBox runat="server" ID="txtDate" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Button runat="server" ID="btnUpdateExperience" CssClass="btn btn-primary" Text="Güncelle"/>
                    </div>
                </form>
            </div>
        </div>
    </div>

</asp:Content>

