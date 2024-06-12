<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ListExperience.aspx.cs" Inherits="Experience_ListExperience" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHhead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHbody" runat="Server">

    <div class="container">
        <div class="row">
            <div class="col-md-10 offset-md-1">
                <h2>Deneyimler</h2>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Başlık</th>
                            <th>Alt Başlık</th>
                            <th>Açıklaması</th>
                            <th>Tarih</th>
                            <th>Sil</th>
                            <th>Güncelle</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <th><%# Eval("exp_id") %></th>
                                    <td><%# Eval("exp_title") %></td>
                                    <td><%# Eval("exp_subtitle") %></td>
                                    <td><%# Eval("exp_description") %></td>
                                    <td><%# Eval("exp_date") %></td>
                                    <td>
                                        <asp:HyperLink ID="DeleteLink" runat="server" CssClass="btn btn-danger" NavigateUrl='<%# "/Experience/DeleteExperience.aspx?Delete=" + Eval("exp_id") %>'>Sil</asp:HyperLink></td>
                                    <td>
                                        <asp:HyperLink ID="UpdateLink" runat="server" CssClass="btn btn-warning" NavigateUrl='<%# "/Experience/UpdateExperience.aspx?Update=" + Eval("exp_id") %>'>Güncelle</asp:HyperLink></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-primary" NavigateUrl="/Experience/AddExperience.aspx">Yeni Deneyim Ekle</asp:HyperLink>
            </div>
        </div>
    </div>

</asp:Content>

