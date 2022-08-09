<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="themxedap.aspx.cs" Inherits="DoAn.themxedap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h5>Them Danh Sach San Pham</h5>
        <p>
            <p><h5>Muốn thêm xe đạp thì ở đây</h5></p>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="STT" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    STT:
                    <asp:Label ID="STTLabel1" runat="server" Text='<%# Eval("STT") %>' />
                    <br />
                    TENXE:
                    <asp:TextBox ID="TENXETextBox" runat="server" Text='<%# Bind("TENXE") %>' />
                    <br />
                    GIA:
                    <asp:TextBox ID="GIATextBox" runat="server" Text='<%# Bind("GIA") %>' />
                    <br />
                    SL:
                    <asp:TextBox ID="SLTextBox" runat="server" Text='<%# Bind("SL") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    STT:
                    <asp:TextBox ID="STTTextBox" runat="server" Text='<%# Bind("STT") %>' />
                    <br />
                    TENXE:
                    <asp:TextBox ID="TENXETextBox" runat="server" Text='<%# Bind("TENXE") %>' />
                    <br />
                    GIA:
                    <asp:TextBox ID="GIATextBox" runat="server" Text='<%# Bind("GIA") %>' />
                    <br />
                    SL:
                    <asp:TextBox ID="SLTextBox" runat="server" Text='<%# Bind("SL") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    STT:
                    <asp:Label ID="STTLabel" runat="server" Text='<%# Eval("STT") %>' />
                    <br />
                    TENXE:
                    <asp:Label ID="TENXELabel" runat="server" Text='<%# Bind("TENXE") %>' />
                    <br />
                    GIA:
                    <asp:Label ID="GIALabel" runat="server" Text='<%# Bind("GIA") %>' />
                    <br />
                    SL:
                    <asp:Label ID="SLLabel" runat="server" Text='<%# Bind("SL") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
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
        </p>

    </div>
        <p><h5>Muốn thêm xe mô tô thì ở đây</h5></p>
        <asp:FormView ID="FormView2" runat="server" DataKeyNames="STT" DataSourceID="SqlDataSource2">
            <EditItemTemplate>
                STT:
                <asp:Label ID="STTLabel1" runat="server" Text='<%# Eval("STT") %>' />
                <br />
                TENXE:
                <asp:TextBox ID="TENXETextBox" runat="server" Text='<%# Bind("TENXE") %>' />
                <br />
                GIA:
                <asp:TextBox ID="GIATextBox" runat="server" Text='<%# Bind("GIA") %>' />
                <br />
                SL:
                <asp:TextBox ID="SLTextBox" runat="server" Text='<%# Bind("SL") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                STT:
                <asp:TextBox ID="STTTextBox" runat="server" Text='<%# Bind("STT") %>' />
                <br />
                TENXE:
                <asp:TextBox ID="TENXETextBox" runat="server" Text='<%# Bind("TENXE") %>' />
                <br />
                GIA:
                <asp:TextBox ID="GIATextBox" runat="server" Text='<%# Bind("GIA") %>' />
                <br />
                SL:
                <asp:TextBox ID="SLTextBox" runat="server" Text='<%# Bind("SL") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                STT:
                <asp:Label ID="STTLabel" runat="server" Text='<%# Eval("STT") %>' />
                <br />
                TENXE:
                <asp:Label ID="TENXELabel" runat="server" Text='<%# Bind("TENXE") %>' />
                <br />
                GIA:
                <asp:Label ID="GIALabel" runat="server" Text='<%# Bind("GIA") %>' />
                <br />
                SL:
                <asp:Label ID="SLLabel" runat="server" Text='<%# Bind("SL") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
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
        <p><h5>Muốn thêm xe ô tô thì ở đây</h5></p>
        <asp:FormView ID="FormView3" runat="server" DataKeyNames="STT" DataSourceID="SqlDataSource3">
            <EditItemTemplate>
                STT:
                <asp:Label ID="STTLabel1" runat="server" Text='<%# Eval("STT") %>' />
                <br />
                TENXE:
                <asp:TextBox ID="TENXETextBox" runat="server" Text='<%# Bind("TENXE") %>' />
                <br />
                GIA:
                <asp:TextBox ID="GIATextBox" runat="server" Text='<%# Bind("GIA") %>' />
                <br />
                SL:
                <asp:TextBox ID="SLTextBox" runat="server" Text='<%# Bind("SL") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                STT:
                <asp:TextBox ID="STTTextBox" runat="server" Text='<%# Bind("STT") %>' />
                <br />
                TENXE:
                <asp:TextBox ID="TENXETextBox" runat="server" Text='<%# Bind("TENXE") %>' />
                <br />
                GIA:
                <asp:TextBox ID="GIATextBox" runat="server" Text='<%# Bind("GIA") %>' />
                <br />
                SL:
                <asp:TextBox ID="SLTextBox" runat="server" Text='<%# Bind("SL") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                STT:
                <asp:Label ID="STTLabel" runat="server" Text='<%# Eval("STT") %>' />
                <br />
                TENXE:
                <asp:Label ID="TENXELabel" runat="server" Text='<%# Bind("TENXE") %>' />
                <br />
                GIA:
                <asp:Label ID="GIALabel" runat="server" Text='<%# Bind("GIA") %>' />
                <br />
                SL:
                <asp:Label ID="SLLabel" runat="server" Text='<%# Bind("SL") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
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
        <h5><a href="SanPham.aspx">Danh sách sản phẩm </a></h5>
    </form>
</body>
</html>
