<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="XeMoTo.aspx.cs" Inherits="DoAn.XeMoTo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel2" runat="server" Height="999px">
        
        <asp:DataList ID="DataList1" runat="server" DataKeyField="STT" DataSourceID="SqlDataSource1" RepeatColumns="2">
            <ItemTemplate>
                STT:
                <asp:Label ID="STTLabel" runat="server" Text='<%# Eval("STT") %>' />
                <br />
                TENXE:
                <asp:Label ID="TENXELabel" runat="server" Text='<%# Eval("TENXE") %>' />
                <br />
                NOISANXUAT:
                <asp:Label ID="NOISANXUATLabel" runat="server" Text='<%# Eval("NOISANXUAT") %>' />
                <br />
                GIA:
                <asp:Label ID="GIALabel" runat="server" Text='<%# Eval("GIA") %>' />
                <br />
                SL:
                <asp:Label ID="SLLabel" runat="server" Text='<%# Eval("SL") %>' />
                <br />
                ANH:
                <asp:Image ID="ANH" runat="server" ImageUrl='<%# "~/img/"+Eval("ANH") %>' />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <br />
        <h1><a href ="Themsp.aspx">Them San Pham</a></h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DOANConnectionString %>" DeleteCommand="DELETE FROM [MOTO] WHERE [STT] = @STT" InsertCommand="INSERT INTO [MOTO] ([STT], [TENXE], [NOISANXUAT], [GIA], [SL], [ANH]) VALUES (@STT, @TENXE, @NOISANXUAT, @GIA, @SL, @ANH)" SelectCommand="SELECT * FROM [MOTO]" UpdateCommand="UPDATE [MOTO] SET [TENXE] = @TENXE, [NOISANXUAT] = @NOISANXUAT, [GIA] = @GIA, [SL] = @SL, [ANH] = @ANH WHERE [STT] = @STT">
            <DeleteParameters>
                <asp:Parameter Name="STT" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="STT" Type="Int32" />
                <asp:Parameter Name="TENXE" Type="String" />
                <asp:Parameter Name="NOISANXUAT" Type="String" />
                <asp:Parameter Name="GIA" Type="Int32" />
                <asp:Parameter Name="SL" Type="Int32" />
                <asp:Parameter Name="ANH" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TENXE" Type="String" />
                <asp:Parameter Name="NOISANXUAT" Type="String" />
                <asp:Parameter Name="GIA" Type="Int32" />
                <asp:Parameter Name="SL" Type="Int32" />
                <asp:Parameter Name="ANH" Type="String" />
                <asp:Parameter Name="STT" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </asp:Panel>
</asp:Content>
