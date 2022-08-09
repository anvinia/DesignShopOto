<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="DoAn.DangKy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2"  ContentPlaceHolderID="ContentPlaceHolder1" runat="server" > 
    <asp:Panel ID="Panel2" runat="server" Height="1000px">
        <asp:Panel ID="Panel3" runat="server" Height="1000px" Width="1287px" BackImageUrl="~/img/fb2.jpg">
            <asp:Panel ID="Panel4" runat="server" Font-Size="XX-Large" Height="51px" BackColor="Yellow">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Form Đăng Ký Thành Viên
                <br />
                <br />
            </asp:Panel>
            <br />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Họ :" BackColor="White"></asp:Label>
             <asp:TextBox ID="TextBox2" runat="server" Height="47px" style="margin-left: 75px" TabIndex="0" Width="780px" Font-Size="X-Large"></asp:TextBox>
      
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" Text="Tên :" BackColor="Yellow"></asp:Label>
            &nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Font-Size="X-Large" Height="47px" style="margin-left: 56px" TabIndex="1" Width="780px"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Label ID="Label3" runat="server" Font-Size="XX-Large" Text="Ngày Mua :" BackColor="White"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" Height="47px" style="margin-left: 1px" Width="780px" TabIndex="2" Font-Size="X-Large"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Font-Size="XX-Large" Text="Số Tiền Mua :" BackColor="Yellow"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="TextBox5" runat="server" Height="47px" Width="780px" TabIndex="3" Font-Size="X-Large"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" style="margin-left: 758px" Text="Hoàn Tất" Width="276px" ForeColor="Black" OnClick="Button1_Click" />
            <asp:TextBox ID="TextBox10" runat="server" style="margin-left: 1099px" Width="157px" Height="20px"></asp:TextBox>
            <br />          
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" Height="320px" style="margin-left: 160px" Width="786px">
                <asp:Panel ID="Panel5" runat="server" Height="52px" BackColor="Yellow" Font-Size="X-Large" ForeColor="Black">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; XÁC NHẬN THÔNG TIN</asp:Panel>
                <asp:Panel ID="Panel6" runat="server" Height="262px" style="margin-left: 3px" ForeColor="Yellow" Width="777px">
                    <asp:TextBox ID="TextBox6" runat="server" Height="48px" style="margin-left: 0px" Width="774px" BackColor="Black" ForeColor="Yellow" Font-Size="XX-Large">Họ : </asp:TextBox>
                    <asp:TextBox ID="TextBox7" runat="server" Height="48px" style="margin-left: 0px" Width="774px" BackColor="Black" ForeColor="Yellow" Font-Size="XX-Large">Tên :</asp:TextBox>
                    <asp:TextBox ID="TextBox8" runat="server" Height="48px" style="margin-left: 0px" Width="774px" BackColor="Black" ForeColor="Yellow" Font-Size="XX-Large">Ngày Mua :</asp:TextBox>
                    <asp:TextBox ID="TextBox9" runat="server" Height="48px" style="margin-left: 0px" Width="774px" BackColor="Black" ForeColor="Yellow" Font-Size="XX-Large">Số Tiền Đã Mua : </asp:TextBox>
                    <asp:Panel ID="Panel7" runat="server" BackColor="Yellow" Font-Size="Large" Height="44px" Width="782px" ForeColor="Black">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Xin Chúc Mừng Bạn Đã Đăng Ký Thành Công</asp:Panel>                   
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>  
</asp:Content>
