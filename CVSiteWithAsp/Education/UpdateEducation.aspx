﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="UpdateEducation.aspx.cs" Inherits="Education_UpdateEducation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHhead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHbody" Runat="Server">

    <div class="container">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <h2>Eğitim Güncelle</h2>
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
                    <label runat="server" id="lblNote">Not</label>
                    <asp:TextBox runat="server" ID="txtNote" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label runat="server" id="lblDate">Tarih</label>
                    <asp:TextBox runat="server" ID="txtDate" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button runat="server" ID="btnUpdateEducation" CssClass="btn btn-primary" Text="Güncelle" OnClick="btnUpdateEducation_Click" />
                </div>
            </form>
        </div>
    </div>
</div>

</asp:Content>
