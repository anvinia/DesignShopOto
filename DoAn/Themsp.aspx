<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Themsp.aspx.cs" Inherits="DoAn.Themsp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>Them San Pham </h2>
        <<h1><p>&nbsp; Đây là khu vực thêm sản phẩm xe đạp</p></h1>
    </div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="STT" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserted="ItemInserted" style="margin-bottom: 0px">
            <EditItemTemplate>
                STT:
                <asp:Label ID="STTLabel1" runat="server" Text='<%# Eval("STT") %>' />
                <br />
                TENXE:
                <asp:TextBox ID="TENXETextBox" runat="server" Text='<%# Bind("TENXE") %>' />
                <br />
                NOISANXUAT:
                <asp:TextBox ID="NOISANXUATTextBox" runat="server" Text='<%# Bind("NOISANXUAT") %>' />
                <br />
                GIA:
                <asp:TextBox ID="GIATextBox" runat="server" Text='<%# Bind("GIA") %>' />
                <br />
                SL:
                <asp:TextBox ID="SLTextBox" runat="server" Text='<%# Bind("SL") %>' />
                <br />
                ANH:
                <asp:FileUpload ID="FileUpload2" runat="server" />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                STT:
                <asp:TextBox ID="STTTextBox" runat="server" Text='<%# Bind("STT") %>' style="margin-left: 0px" />
                <br />
                TENXE:
                <asp:TextBox ID="TENXETextBox" runat="server" Text='<%# Bind("TENXE") %>' />
                <br />
                NOISANSUAT :&nbsp;
                <asp:TextBox ID="NOISANXUATTextBox" runat="server" Text='<%# Bind("NOISANXUAT") %>' style="margin-left: 0px" />
                <br />
                GIA:
                <asp:TextBox ID="GIATextBox" runat="server" Text='<%# Bind("GIA") %>' />
                <br />
                SL:
                <asp:TextBox ID="SLTextBox" runat="server" Text='<%# Bind("SL") %>' />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;ANH:<asp:FileUpload ID="FileUpload1" runat="server" />
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
                NOISANXUAT:
                <asp:Label ID="NOISANXUATLabel" runat="server" Text='<%# Bind("NOISANXUAT") %>' />
                <br />
                GIA:
                <asp:Label ID="GIALabel" runat="server" Text='<%# Bind("GIA") %>' />
                <br />
                SL:
                <asp:Label ID="SLLabel" runat="server" Text='<%# Bind("SL") %>' />
                <br />
                ANH:
                <asp:Label ID="ANHLabel" runat="server" Text='<%# Bind("ANH") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DOANConnectionString %>" DeleteCommand="DELETE FROM [XEDAP] WHERE [STT] = @original_STT AND (([TENXE] = @original_TENXE) OR ([TENXE] IS NULL AND @original_TENXE IS NULL)) AND (([NOISANXUAT] = @original_NOISANXUAT) OR ([NOISANXUAT] IS NULL AND @original_NOISANXUAT IS NULL)) AND (([GIA] = @original_GIA) OR ([GIA] IS NULL AND @original_GIA IS NULL)) AND (([SL] = @original_SL) OR ([SL] IS NULL AND @original_SL IS NULL)) AND (([ANH] = @original_ANH) OR ([ANH] IS NULL AND @original_ANH IS NULL))" InsertCommand="INSERT INTO [XEDAP] ([STT], [TENXE], [NOISANXUAT], [GIA], [SL], [ANH]) VALUES (@STT, @TENXE, @NOISANXUAT, @GIA, @SL, @ANH)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [XEDAP]" UpdateCommand="UPDATE [XEDAP] SET [TENXE] = @TENXE, [NOISANXUAT] = @NOISANXUAT, [GIA] = @GIA, [SL] = @SL, [ANH] = @ANH WHERE [STT] = @original_STT AND (([TENXE] = @original_TENXE) OR ([TENXE] IS NULL AND @original_TENXE IS NULL)) AND (([NOISANXUAT] = @original_NOISANXUAT) OR ([NOISANXUAT] IS NULL AND @original_NOISANXUAT IS NULL)) AND (([GIA] = @original_GIA) OR ([GIA] IS NULL AND @original_GIA IS NULL)) AND (([SL] = @original_SL) OR ([SL] IS NULL AND @original_SL IS NULL)) AND (([ANH] = @original_ANH) OR ([ANH] IS NULL AND @original_ANH IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_STT" Type="Int32" />
                <asp:Parameter Name="original_TENXE" Type="String" />
                <asp:Parameter Name="original_NOISANXUAT" Type="String" />
                <asp:Parameter Name="original_GIA" Type="Int32" />
                <asp:Parameter Name="original_SL" Type="Int32" />
                <asp:Parameter Name="original_ANH" Type="String" />
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
                <asp:Parameter Name="original_STT" Type="Int32" />
                <asp:Parameter Name="original_TENXE" Type="String" />
                <asp:Parameter Name="original_NOISANXUAT" Type="String" />
                <asp:Parameter Name="original_GIA" Type="Int32" />
                <asp:Parameter Name="original_SL" Type="Int32" />
                <asp:Parameter Name="original_ANH" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <a href="XeDap.aspx">Xem danh sach xe đạp</a>
        <br />
        <br />
        <h1><p>&nbsp; Đây là khu vực thêm sản phẩm xe mô tô </p></h1>
        <asp:FormView ID="FormView2" runat="server" DataKeyNames="STT" DataSourceID="SqlDataSource2" OnItemInserted="ItemInserted2" DefaultMode="Insert">
            <EditItemTemplate>
                STT:
                <asp:Label ID="STTLabel1" runat="server" Text='<%# Eval("STT") %>' />
                <br />
                TENXE:
                <asp:TextBox ID="TENXETextBox" runat="server" Text='<%# Bind("TENXE") %>' />
                <br />
                NOISANXUAT:
                <asp:TextBox ID="NOISANXUATTextBox" runat="server" Text='<%# Bind("NOISANXUAT") %>' />
                <br />
                GIA:
                <asp:TextBox ID="GIATextBox" runat="server" Text='<%# Bind("GIA") %>' />
                <br />
                SL:
                <asp:TextBox ID="SLTextBox" runat="server" Text='<%# Bind("SL") %>' />
                <br />
                ANH:
                <asp:TextBox ID="ANHTextBox" runat="server" Text='<%# Bind("ANH") %>' />
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
                NOISANXUAT:
                <asp:TextBox ID="NOISANXUATTextBox" runat="server" Text='<%# Bind("NOISANXUAT") %>' />
                <br />
                GIA:
                <asp:TextBox ID="GIATextBox" runat="server" Text='<%# Bind("GIA") %>' />
                <br />
                SL:
                <asp:TextBox ID="SLTextBox" runat="server" Text='<%# Bind("SL") %>' />
                <br />
                ANH:
                <asp:FileUpload ID="FileUpload3" runat="server" />
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
                NOISANXUAT:
                <asp:Label ID="NOISANXUATLabel" runat="server" Text='<%# Bind("NOISANXUAT") %>' />
                <br />
                GIA:
                <asp:Label ID="GIALabel" runat="server" Text='<%# Bind("GIA") %>' />
                <br />
                SL:
                <asp:Label ID="SLLabel" runat="server" Text='<%# Bind("SL") %>' />
                <br />
                ANH:
                <asp:Label ID="ANHLabel" runat="server" Text='<%# Bind("ANH") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DOANConnectionString %>" DeleteCommand="DELETE FROM [MOTO] WHERE [STT] = @original_STT AND (([TENXE] = @original_TENXE) OR ([TENXE] IS NULL AND @original_TENXE IS NULL)) AND (([NOISANXUAT] = @original_NOISANXUAT) OR ([NOISANXUAT] IS NULL AND @original_NOISANXUAT IS NULL)) AND (([GIA] = @original_GIA) OR ([GIA] IS NULL AND @original_GIA IS NULL)) AND (([SL] = @original_SL) OR ([SL] IS NULL AND @original_SL IS NULL)) AND (([ANH] = @original_ANH) OR ([ANH] IS NULL AND @original_ANH IS NULL))" InsertCommand="INSERT INTO [MOTO] ([STT], [TENXE], [NOISANXUAT], [GIA], [SL], [ANH]) VALUES (@STT, @TENXE, @NOISANXUAT, @GIA, @SL, @ANH)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [MOTO]" UpdateCommand="UPDATE [MOTO] SET [TENXE] = @TENXE, [NOISANXUAT] = @NOISANXUAT, [GIA] = @GIA, [SL] = @SL, [ANH] = @ANH WHERE [STT] = @original_STT AND (([TENXE] = @original_TENXE) OR ([TENXE] IS NULL AND @original_TENXE IS NULL)) AND (([NOISANXUAT] = @original_NOISANXUAT) OR ([NOISANXUAT] IS NULL AND @original_NOISANXUAT IS NULL)) AND (([GIA] = @original_GIA) OR ([GIA] IS NULL AND @original_GIA IS NULL)) AND (([SL] = @original_SL) OR ([SL] IS NULL AND @original_SL IS NULL)) AND (([ANH] = @original_ANH) OR ([ANH] IS NULL AND @original_ANH IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_STT" Type="Int32" />
                <asp:Parameter Name="original_TENXE" Type="String" />
                <asp:Parameter Name="original_NOISANXUAT" Type="String" />
                <asp:Parameter Name="original_GIA" Type="Int32" />
                <asp:Parameter Name="original_SL" Type="Int32" />
                <asp:Parameter Name="original_ANH" Type="String" />
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
                <asp:Parameter Name="original_STT" Type="Int32" />
                <asp:Parameter Name="original_TENXE" Type="String" />
                <asp:Parameter Name="original_NOISANXUAT" Type="String" />
                <asp:Parameter Name="original_GIA" Type="Int32" />
                <asp:Parameter Name="original_SL" Type="Int32" />
                <asp:Parameter Name="original_ANH" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <a href="XeMoTo.aspx">Xem danh sach xe mô tô</a>
        <br />
        <h1><p>&nbsp; Đây là khu vực thêm sản phẩm xe ô tô</p></h1>
        <asp:FormView ID="FormView3" runat="server" DataKeyNames="STT" DataSourceID="SqlDataSource3" OnItemInserted="ItemInserted3" DefaultMode="Insert">
            <EditItemTemplate>
                STT:
                <asp:Label ID="STTLabel1" runat="server" Text='<%# Eval("STT") %>' />
                <br />
                TENXE:
                <asp:TextBox ID="TENXETextBox" runat="server" Text='<%# Bind("TENXE") %>' />
                <br />
                NOISANXUAT:
                <asp:TextBox ID="NOISANXUATTextBox" runat="server" Text='<%# Bind("NOISANXUAT") %>' />
                <br />
                GIA:
                <asp:TextBox ID="GIATextBox" runat="server" Text='<%# Bind("GIA") %>' />
                <br />
                SL:
                <asp:TextBox ID="SLTextBox" runat="server" Text='<%# Bind("SL") %>' />
                <br />
                ANH:
                <asp:TextBox ID="ANHTextBox" runat="server" Text='<%# Bind("ANH") %>' />
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
                NOISANXUAT:
                <asp:TextBox ID="NOISANXUATTextBox" runat="server" Text='<%# Bind("NOISANXUAT") %>' />
                <br />
                GIA:
                <asp:TextBox ID="GIATextBox" runat="server" Text='<%# Bind("GIA") %>' />
                <br />
                SL:
                <asp:TextBox ID="SLTextBox" runat="server" Text='<%# Bind("SL") %>' />
                <br />
                ANH:
                <asp:FileUpload ID="FileUpload4" runat="server" />
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
                NOISANXUAT:
                <asp:Label ID="NOISANXUATLabel" runat="server" Text='<%# Bind("NOISANXUAT") %>' />
                <br />
                GIA:
                <asp:Label ID="GIALabel" runat="server" Text='<%# Bind("GIA") %>' />
                <br />
                SL:
                <asp:Label ID="SLLabel" runat="server" Text='<%# Bind("SL") %>' />
                <br />
                ANH:
                <asp:Label ID="ANHLabel" runat="server" Text='<%# Bind("ANH") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DOANConnectionString %>" DeleteCommand="DELETE FROM [OTO] WHERE [STT] = @original_STT AND (([TENXE] = @original_TENXE) OR ([TENXE] IS NULL AND @original_TENXE IS NULL)) AND (([NOISANXUAT] = @original_NOISANXUAT) OR ([NOISANXUAT] IS NULL AND @original_NOISANXUAT IS NULL)) AND (([GIA] = @original_GIA) OR ([GIA] IS NULL AND @original_GIA IS NULL)) AND (([SL] = @original_SL) OR ([SL] IS NULL AND @original_SL IS NULL)) AND (([ANH] = @original_ANH) OR ([ANH] IS NULL AND @original_ANH IS NULL))" InsertCommand="INSERT INTO [OTO] ([STT], [TENXE], [NOISANXUAT], [GIA], [SL], [ANH]) VALUES (@STT, @TENXE, @NOISANXUAT, @GIA, @SL, @ANH)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [OTO]" UpdateCommand="UPDATE [OTO] SET [TENXE] = @TENXE, [NOISANXUAT] = @NOISANXUAT, [GIA] = @GIA, [SL] = @SL, [ANH] = @ANH WHERE [STT] = @original_STT AND (([TENXE] = @original_TENXE) OR ([TENXE] IS NULL AND @original_TENXE IS NULL)) AND (([NOISANXUAT] = @original_NOISANXUAT) OR ([NOISANXUAT] IS NULL AND @original_NOISANXUAT IS NULL)) AND (([GIA] = @original_GIA) OR ([GIA] IS NULL AND @original_GIA IS NULL)) AND (([SL] = @original_SL) OR ([SL] IS NULL AND @original_SL IS NULL)) AND (([ANH] = @original_ANH) OR ([ANH] IS NULL AND @original_ANH IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_STT" Type="Int32" />
                <asp:Parameter Name="original_TENXE" Type="String" />
                <asp:Parameter Name="original_NOISANXUAT" Type="String" />
                <asp:Parameter Name="original_GIA" Type="Int32" />
                <asp:Parameter Name="original_SL" Type="Int32" />
                <asp:Parameter Name="original_ANH" Type="String" />
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
                <asp:Parameter Name="original_STT" Type="Int32" />
                <asp:Parameter Name="original_TENXE" Type="String" />
                <asp:Parameter Name="original_NOISANXUAT" Type="String" />
                <asp:Parameter Name="original_GIA" Type="Int32" />
                <asp:Parameter Name="original_SL" Type="Int32" />
                <asp:Parameter Name="original_ANH" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <a href="XeOTo.aspx">Xem danh sach xe ô tô</a>
    </form>
</body>
</html>
