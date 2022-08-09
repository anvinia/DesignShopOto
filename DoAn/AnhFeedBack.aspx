<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="AnhFeedBack.aspx.cs" Inherits="DoAn.AnhFeedBack" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <asp:Panel ID="Panel2" runat="server" Height="1076px"  BackColor="Yellow">
         <style>
            tr, td {
                border : 1px solid black;
            }
        </style>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="STT" DataSourceID="SqlDataSource1" RepeatColumns="3">
            <ItemTemplate>
                STT:
                <asp:Label ID="STTLabel" runat="server" Text='<%# Eval("STT") %>' />
                <br />
                Feedback:
                <asp:Image ID="ANH" runat="server" ImageUrl='<%# "~/img/" + Eval("Feedback") %>' />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DOANConnectionString %>" DeleteCommand="DELETE FROM [fb] WHERE [STT] = @STT" InsertCommand="INSERT INTO [fb] ([STT], [Feedback]) VALUES (@STT, @Feedback)" SelectCommand="SELECT * FROM [fb]" UpdateCommand="UPDATE [fb] SET [Feedback] = @Feedback WHERE [STT] = @STT">
            <DeleteParameters>
                <asp:Parameter Name="STT" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="STT" Type="Int32" />
                <asp:Parameter Name="Feedback" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Feedback" Type="String" />
                <asp:Parameter Name="STT" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </asp:Panel>
</asp:Content>
