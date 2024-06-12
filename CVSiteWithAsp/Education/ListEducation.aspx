<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ListEducation.aspx.cs" Inherits="Education_ListEducation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHhead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHbody" runat="Server">

    <div class="container">
        <div class="row">
            <div class="col-md-10 offset-md-1">
                <h2>Eğitimler</h2>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Başlık</th>
                            <th>Alt Başlık</th>
                            <th>Açıklaması</th>
                            <th>Not</th>
                            <th>Tarih</th>
                            <th>Sil</th>
                            <th>Güncelle</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <th><%# Eval("edc_id") %></th>
                                    <td><%# Eval("edc_title") %></td>
                                    <td><%# Eval("edc_subtitle") %></td>
                                    <td><%# Eval("edc_description") %></td>
                                    <td><%# Eval("edc_note") %></td>
                                    <td><%# Eval("edc_date") %></td>
                                    <td>
                                        <asp:HyperLink ID="DeleteLink" runat="server" CssClass="btn btn-danger" NavigateUrl='<%# "/Education/DeleteEducation.aspx?Delete=" + Eval("edc_id") %>'>Sil</asp:HyperLink>
                                    </td>
                                    <td>
                                        <asp:HyperLink ID="UpdateLink" runat="server" CssClass="btn btn-warning" NavigateUrl='<%# "/Education/UpdateEducation.aspx?Update=" + Eval("edc_id") %>'>Güncelle</asp:HyperLink>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-primary" NavigateUrl="/Education/AddEducation.aspx">Yeni Eğitim Ekle</asp:HyperLink>
            </div>
        </div>
    </div>

</asp:Content>

