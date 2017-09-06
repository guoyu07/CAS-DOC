<%@ Page language="c#" Inherits="Show_Socut_Data._default" CodeFile="default.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>default</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<table width="780" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#cccccc">
				<tr>
					<td width="788" height="150" align="center" bgcolor="#ffffff">
                        网站顶部</td>
				</tr>
			</table>
			<table width="780" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#cccccc">
				<tr bgcolor="#ffffff">
					<td width="180" height="200"><table width="100%" id="T1" runat="server">
							<tr>
								<td><FONT face="宋体">
										<asp:TextBox id="TextBox1" runat="server"></asp:TextBox><BR>
										<asp:TextBox id="TextBox2" runat="server" TextMode="Password"></asp:TextBox><BR>
										<asp:Button id="Button1" runat="server" Text="登陆" onclick="Button1_Click"></asp:Button></FONT></td>
							</tr>
						</table>
						<FONT face="宋体">
							<BR>
						</FONT>
						<TABLE id="T2" width="100%" runat="server">
							<TR>
								<TD><FONT face="宋体">欢迎你！<BR>
										<asp:Label id="Label1" runat="server">Label</asp:Label>,已经成功登陆</FONT></TD>
							</TR>
						</TABLE>
					</td>
					<td rowspan="2" valign="top">
<br>

</td>
				</tr>
				
			</table>
			<table width="780" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#cccccc">
				<tr>
					<td width="788" height="150" align="center" bgcolor="#ffffff">网站底部</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
