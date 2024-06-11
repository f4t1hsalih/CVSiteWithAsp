<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ListAbout.aspx.cs" Inherits="About_ListAbout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHhead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHbody" runat="Server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <h2>Hakkında</h2>
                <form runat="server" class="form-category">
                    <div class="form-group">
                        <label runat="server" id="lblNamee">Adınız</label>
                        <asp:TextBox runat="server" ID="txtName" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label runat="server" id="lblSurname">Soyadınız</label>
                        <asp:TextBox runat="server" ID="txtSurname" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label runat="server" id="lblAddress">Adres</label>
                        <asp:TextBox runat="server" ID="txtAddress" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label runat="server" id="lblMail">Mail</label>
                        <asp:TextBox runat="server" ID="txtMail" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label runat="server" id="lblTel">Telefon</label>
                        <asp:TextBox runat="server" ID="txtTel" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label runat="server" id="lblNote">Not</label>
                        <asp:TextBox runat="server" ID="txtNote" CssClass="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label runat="server" id="lblPhoto">Fotoğraf</label>
                        <asp:TextBox runat="server" ID="txtPhoto" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label runat="server" id="lblLinkedIn">LinkedIn</label>
                        <asp:TextBox runat="server" ID="txtLinkedIn" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label runat="server" id="lblGitHub">GitHub</label>
                        <asp:TextBox runat="server" ID="txtGitHub" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label runat="server" id="lblTwitter">Twitter</label>
                        <asp:TextBox runat="server" ID="txtTwitter" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label runat="server" id="lblInstgram">Instagram</label>
                        <asp:TextBox runat="server" ID="txtInstagram" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Button runat="server" ID="btnAboutUpdate" CssClass="btn btn-primary" Text="Güncelle" OnClick="btnAboutUpdate_Click" />
                    </div>
                </form>
            </div>
        </div>
    </div>

</asp:Content>
