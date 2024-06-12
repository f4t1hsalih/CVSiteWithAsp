<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ListInterest.aspx.cs" Inherits="Interests_ListInterest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHhead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHbody" runat="Server">

    <div class="container">
        <div class="row">
            <div class="col-md-10 offset-md-1">
                <h2>Hobiler</h2>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Hobi</th>
                            <th>Sil</th>
                            <th>Güncelle</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <th><%# Eval("int_id") %></th>
                                    <td><%# Eval("int_interest") %></td>
                                    <td>
                                        <asp:HyperLink ID="DeleteLink" runat="server" CssClass="btn btn-danger" NavigateUrl='<%# "/Interests/DeleteInterests.aspx?Delete=" + Eval("int_id") %>'>Sil</asp:HyperLink></td>
                                    <td>
                                        <asp:HyperLink ID="UpdateLink" runat="server" CssClass="btn btn-warning" NavigateUrl='<%# "/Interests/UpdateInterests.aspx?Update=" + Eval("int_id") %>'>Güncelle</asp:HyperLink></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-primary" NavigateUrl="/Interests/AddInterest.aspx">Yeni Hobi Ekle</asp:HyperLink>
            </div>
        </div>
    </div>

</asp:Content>
