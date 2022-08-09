<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="DoAn.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel2" runat="server" Height="1002px" BackImageUrl="~/img/fb2.jpg">
        <asp:Label ID="Label1" runat="server" Text="Xe Đạp " Font-Size="X-Large" BackColor="White"></asp:Label>
        <h5><a href="XeDap.aspx" style="background-color: #FFFFFF">Chi Tiết về Xe Đạp</a></h5>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#FFFF99" DataKeyNames="STT" DataSourceID="SqlDataSource1" Height="236px" Width="1288px" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="STT" HeaderText="STT" ReadOnly="True" SortExpression="STT" />
                <asp:BoundField DataField="TENXE" HeaderText="TENXE" SortExpression="TENXE" />
                <asp:BoundField DataField="GIA" HeaderText="GIA" SortExpression="GIA" />
                <asp:BoundField DataField="SL" HeaderText="SL" SortExpression="SL" />
                <asp:ButtonField Text="chọn" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DOANConnectionString %>" DeleteCommand="DELETE FROM [XEDAP] WHERE [STT] = @original_STT AND (([TENXE] = @original_TENXE) OR ([TENXE] IS NULL AND @original_TENXE IS NULL)) AND (([GIA] = @original_GIA) OR ([GIA] IS NULL AND @original_GIA IS NULL)) AND (([SL] = @original_SL) OR ([SL] IS NULL AND @original_SL IS NULL))" InsertCommand="INSERT INTO [XEDAP] ([STT], [TENXE], [GIA], [SL]) VALUES (@STT, @TENXE, @GIA, @SL)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [STT], [TENXE], [GIA], [SL] FROM [XEDAP]" UpdateCommand="UPDATE [XEDAP] SET [TENXE] = @TENXE, [GIA] = @GIA, [SL] = @SL WHERE [STT] = @original_STT AND (([TENXE] = @original_TENXE) OR ([TENXE] IS NULL AND @original_TENXE IS NULL)) AND (([GIA] = @original_GIA) OR ([GIA] IS NULL AND @original_GIA IS NULL)) AND (([SL] = @original_SL) OR ([SL] IS NULL AND @original_SL IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_STT" Type="Int32" />
                <asp:Parameter Name="original_TENXE" Type="String" />
                <asp:Parameter Name="original_GIA" Type="Int32" />
                <asp:Parameter Name="original_SL" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="STT" Type="Int32" />
                <asp:Parameter Name="TENXE" Type="String" />
                <asp:Parameter Name="GIA" Type="Int32" />
                <asp:Parameter Name="SL" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TENXE" Type="String" />
                <asp:Parameter Name="GIA" Type="Int32" />
                <asp:Parameter Name="SL" Type="Int32" />
                <asp:Parameter Name="original_STT" Type="Int32" />
                <asp:Parameter Name="original_TENXE" Type="String" />
                <asp:Parameter Name="original_GIA" Type="Int32" />
                <asp:Parameter Name="original_SL" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label2" runat="server" Text="Xe Mô Tô " Font-Size="X-Large" BackColor="White"></asp:Label>
        <h5><a href="XeMoTo.aspx" style="background-color: #FFFFFF">Chi Tiết về Xe Mô Tô</a></h5>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="STT" DataSourceID="SqlDataSource2" Width="1288px" Height="236px" BackColor="#FFFF99" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="STT" HeaderText="STT" ReadOnly="True" SortExpression="STT" />
                <asp:BoundField DataField="TENXE" HeaderText="TENXE" SortExpression="TENXE" />
                <asp:BoundField DataField="GIA" HeaderText="GIA" SortExpression="GIA" />
                <asp:BoundField DataField="SL" HeaderText="SL" SortExpression="SL" />
                <asp:ButtonField Text="chọn" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DOANConnectionString %>" DeleteCommand="DELETE FROM [MOTO] WHERE [STT] = @original_STT AND (([TENXE] = @original_TENXE) OR ([TENXE] IS NULL AND @original_TENXE IS NULL)) AND (([GIA] = @original_GIA) OR ([GIA] IS NULL AND @original_GIA IS NULL)) AND (([SL] = @original_SL) OR ([SL] IS NULL AND @original_SL IS NULL))" InsertCommand="INSERT INTO [MOTO] ([STT], [TENXE], [GIA], [SL]) VALUES (@STT, @TENXE, @GIA, @SL)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [STT], [TENXE], [GIA], [SL] FROM [MOTO]" UpdateCommand="UPDATE [MOTO] SET [TENXE] = @TENXE, [GIA] = @GIA, [SL] = @SL WHERE [STT] = @original_STT AND (([TENXE] = @original_TENXE) OR ([TENXE] IS NULL AND @original_TENXE IS NULL)) AND (([GIA] = @original_GIA) OR ([GIA] IS NULL AND @original_GIA IS NULL)) AND (([SL] = @original_SL) OR ([SL] IS NULL AND @original_SL IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_STT" Type="Int32" />
                <asp:Parameter Name="original_TENXE" Type="String" />
                <asp:Parameter Name="original_GIA" Type="Int32" />
                <asp:Parameter Name="original_SL" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="STT" Type="Int32" />
                <asp:Parameter Name="TENXE" Type="String" />
                <asp:Parameter Name="GIA" Type="Int32" />
                <asp:Parameter Name="SL" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TENXE" Type="String" />
                <asp:Parameter Name="GIA" Type="Int32" />
                <asp:Parameter Name="SL" Type="Int32" />
                <asp:Parameter Name="original_STT" Type="Int32" />
                <asp:Parameter Name="original_TENXE" Type="String" />
                <asp:Parameter Name="original_GIA" Type="Int32" />
                <asp:Parameter Name="original_SL" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label3" runat="server" Text="Xe Ô Tô" Font-Size="X-Large" BackColor="White"></asp:Label>
        <h5><a href="XeOTo.aspx" style="background-color: #FFFFFF">Chi Tiết về Xe Ô Tô</a></h5>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="STT" DataSourceID="SqlDataSource3" Width="1288px" Height="236px" BackColor="#FFFF99" style="margin-top: 0px" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="STT" HeaderText="STT" ReadOnly="True" SortExpression="STT" />
                <asp:BoundField DataField="TENXE" HeaderText="TENXE" SortExpression="TENXE" />
                <asp:BoundField DataField="GIA" HeaderText="GIA" SortExpression="GIA" />
                <asp:BoundField DataField="SL" HeaderText="SL" SortExpression="SL" />
                <asp:ButtonField Text="chọn" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DOANConnectionString %>" DeleteCommand="DELETE FROM [OTO] WHERE [STT] = @original_STT AND (([TENXE] = @original_TENXE) OR ([TENXE] IS NULL AND @original_TENXE IS NULL)) AND (([GIA] = @original_GIA) OR ([GIA] IS NULL AND @original_GIA IS NULL)) AND (([SL] = @original_SL) OR ([SL] IS NULL AND @original_SL IS NULL))" InsertCommand="INSERT INTO [OTO] ([STT], [TENXE], [GIA], [SL]) VALUES (@STT, @TENXE, @GIA, @SL)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [STT], [TENXE], [GIA], [SL] FROM [OTO]" UpdateCommand="UPDATE [OTO] SET [TENXE] = @TENXE, [GIA] = @GIA, [SL] = @SL WHERE [STT] = @original_STT AND (([TENXE] = @original_TENXE) OR ([TENXE] IS NULL AND @original_TENXE IS NULL)) AND (([GIA] = @original_GIA) OR ([GIA] IS NULL AND @original_GIA IS NULL)) AND (([SL] = @original_SL) OR ([SL] IS NULL AND @original_SL IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_STT" Type="Int32" />
                <asp:Parameter Name="original_TENXE" Type="String" />
                <asp:Parameter Name="original_GIA" Type="Int32" />
                <asp:Parameter Name="original_SL" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="STT" Type="Int32" />
                <asp:Parameter Name="TENXE" Type="String" />
                <asp:Parameter Name="GIA" Type="Int32" />
                <asp:Parameter Name="SL" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TENXE" Type="String" />
                <asp:Parameter Name="GIA" Type="Int32" />
                <asp:Parameter Name="SL" Type="Int32" />
                <asp:Parameter Name="original_STT" Type="Int32" />
                <asp:Parameter Name="original_TENXE" Type="String" />
                <asp:Parameter Name="original_GIA" Type="Int32" />
                <asp:Parameter Name="original_SL" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </asp:Panel>
</asp:Content>
