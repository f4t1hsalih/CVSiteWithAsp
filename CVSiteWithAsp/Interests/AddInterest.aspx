<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AddInterest.aspx.cs" Inherits="Interests_AddInterest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHhead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHbody" Runat="Server">

    <div class="container">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <h2>Hobi Ekle</h2>
            <form runat="server" class="form-category">
                <div class="form-group">
                    <label runat="server" id="lblInterest">Hobi</label>
                    <asp:TextBox runat="server" ID="txtInterest" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button runat="server" ID="btnAddInterest" CssClass="btn btn-primary" Text="Ekle" OnClick="btnAddInterest_Click"/>
                </div>
            </form>
        </div>
    </div>
</div>

</asp:Content>

