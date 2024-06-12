﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AddAward.aspx.cs" Inherits="Award_AddAward" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHhead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHbody" runat="Server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <h2>Başarı Ekle</h2>
                <form runat="server" class="form-category">
                    <div class="form-group">
                        <label runat="server" id="lblAward">Başarı</label>
                        <asp:TextBox runat="server" ID="txtAward" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Button runat="server" ID="btnAddAward" CssClass="btn btn-primary" Text="Ekle" OnClick="btnAddAward_Click" />
                    </div>
                </form>
            </div>
        </div>
    </div>

</asp:Content>

