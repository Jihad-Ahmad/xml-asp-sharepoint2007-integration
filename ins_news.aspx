<%@ Page language="C#" MasterPageFile="~masterurl/default.master"    Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=12.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" title="خريطة الموقع" meta:webpartpageexpansion="full" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
	<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,multipages_homelink_text%>" EncodeMethod="HtmlEncode"/> 
	- 
	<SharePoint:ProjectProperty Property="Title" runat="server"/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageImage" runat="server">
	<WebPartPages:SPProxyWebPartManager runat="server" id="ProxyWebPartManager"></WebPartPages:SPProxyWebPartManager>	
	<IMG SRC="http://admin.giza.gov.eg/_layouts/images/blank.gif" width=1 height=1 alt=""></asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
			<label class="ms-hidden">
			<SharePoint:ProjectProperty Property="Title" runat="server"/></label>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderTitleBreadcrumb" runat="server"/>
<asp:Content ContentPlaceHolderId="PlaceHolderTitleAreaClass" runat="server">
<style type="text/css">
TD.ms-titleareaframe, .ms-pagetitleareaframe {
	height: 10px;
}
Div.ms-titleareaframe {
	height: 100%;
}
.ms-pagetitleareaframe table {
	background: none;
	height: 10px;
}
</style>
<script type="text/javascript" src="http://admin.giza.gov.eg/giza_maps/js/d_map.js"></script>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
	<META Name="CollaborationServer" Content="SharePoint Team Web Site">
	<script type="text/javascript">
	var navBarHelpOverrideKey = "wssmain";
	</script>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderSearchArea" runat="server">
	<SharePoint:DelegateControl runat="server"
		ControlId="SmallSearchInputBox"/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderLeftActions" runat="server">
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageDescription" runat="server"/>
<asp:Content ContentPlaceHolderId="PlaceHolderBodyAreaClass" runat="server">
<style type="text/css">
.ms-bodyareaframe {
	padding: 0px;
}
</style>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
	<table cellspacing="0" border="0" width="100%" onkeyup="Text">
	  <tr>
	   <td class="ms-pagebreadcrumb">
		<asp:SiteMapPath SiteMapProvider="SPContentMapProvider" id="ContentMap" SkipLinkText="" NodeStyle-CssClass="ms-sitemapdirectional" runat="server"/>
	   </td>
	  </tr>
	  <tr>
	   <td class="ms-webpartpagedescription">
		<SharePoint:ProjectProperty Property="Description" runat="server"/></td>
	  </tr>
	  <tr>
		<td>
		 <table width="100%" cellpadding=0 cellspacing=0 style="padding: 5px 10px 10px 10px;">
		  <tr>
		  
		  
		   <td>
			
			<!--div style="background-image:url('images/Giza_total.png'); height: 519px; width:750px; background-repeat:no-repeat" class="style1" >
	  
	  </div-->
	  
	  
	  <table border="0" cellspacing="0" cellpadding="0" width="100%">
	<tr>
		<td class="tabUpperRight">
		<img src="tabUpperRight.bmp" /></td>
		<td class="tabUpper">
		<img src="tabUpper.bmp" /></td>
		<td class="tabUpperLeft">
		<img src="tabUpperLeft.bmp" /></td>
	</tr>

	<tr>
		<td class="tabRight">
		<img src="tabRight.bmp" /></td>
		<td class="tabCenter" ><table width="100%" border="0">
<tr><td>

				<WebPartPages:WebPartZone id="g_993ACAD6F3E14822B3A0C38FB68D625B" runat="server" title="Zone 1" frametype="None"><ZoneTemplate>
				<WebPartPages:DataFormWebPart runat="server" ImportErrorMessage="يتعذر استيراد جزء ويب هذا." ShowWithSampleData="False" AllowRemove="True" AllowHide="True" SuppressWebPartChrome="False" PartImageLarge="" ViewContentTypeId="" ExportMode="All" Dir="Default" MissingAssembly="يتعذر استيراد جزء ويب هذا." ID="g_e0b6bfc9_0db6_421c_a776_e8b2093704fd" DataSourceID="" IsIncludedFilter="" DetailLink="" AllowEdit="True" UseSQLDataSourcePaging="True" HelpMode="Modeless" IsIncluded="True" Description="" NoDefaultStyle="TRUE" FrameState="Normal" AllowConnect="True" ViewFlag="0" AllowZoneChange="True" AllowMinimize="True" Title="" PartOrder="1" PageSize="-1" FrameType="Default" HelpLink="" PartImageSmall="" ConnectionID="00000000-0000-0000-0000-000000000000" ExportControlledProperties="True" IsVisible="True" __MarkupType="vsattributemarkup" __WebPartId="{D271376B-03BD-4B92-B12A-4A20DE4D7AB4}" __AllowXSLTEditing="true" WebPart="true" Height="" Width=""><ParameterBindings>
					<ParameterBinding Name="FileName" Location="None" DefaultValue="news_xml.xml"/>
					<ParameterBinding Name="FilePath" Location="None" DefaultValue="xml_news"/>
					<ParameterBinding Name="dvt_apos" Location="Postback;Connection"/>
					<ParameterBinding Name="UserID" Location="CAMLVariable" DefaultValue="CurrentUserName"/>
					<ParameterBinding Name="Today" Location="CAMLVariable" DefaultValue="CurrentDate"/>
					<ParameterBinding Name="dvt_1_form_insertmode" Location="Postback;Connection"/>
				</ParameterBindings>
<DataFields>



@id,id;title;desc;image;date;</DataFields>
<DataSources>
<SharePoint:SPXmlDataSource runat="server" DataFile="" AutoSave="True" XPath="" ID="SPXmlDataSource2"><DataFileParameters><WebPartPages:DataFormParameter ParameterKey="FileName" PropertyName="ParameterValues" DefaultValue="news_xml.xml" Name="FileName"></WebPartPages:DataFormParameter><WebPartPages:DataFormParameter ParameterKey="FilePath" PropertyName="ParameterValues" DefaultValue="xml_news" Name="FilePath"></WebPartPages:DataFormParameter>
</DataFileParameters>
</SharePoint:SPXmlDataSource>
</DataSources>
<Xsl>




<xsl:stylesheet version="1.0" exclude-result-prefixes="xsl msxsl ddwrt" xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" xmlns:asp="http://schemas.microsoft.com/ASPNET/20" xmlns:__designer="http://schemas.microsoft.com/WebParts/v2/DataView/designer" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:SharePoint="Microsoft.SharePoint.WebControls" xmlns:ddwrt2="urn:frontpage:internal">
	<xsl:output method="html" indent="no"/>
	<xsl:decimal-format NaN=""/>
								<xsl:param name="dvt_apos">&apos;</xsl:param>
								<xsl:param name="dvt_1_form_insertmode">1</xsl:param>
								<xsl:variable name="dvt_1_automode">0</xsl:variable>
								
								<xsl:template match="/">
												<xsl:call-template name="dvt_1"/>
	</xsl:template>
								<xsl:template name="dvt_1">
												<xsl:variable name="dvt_StyleName">RepForm3</xsl:variable>
												<xsl:variable name="Rows" select="/all_news/news"/>
		<table border="0" width="100%">
						<xsl:call-template name="dvt_1.rowinsert">
										<xsl:with-param name="IsInsertMode">
														<xsl:if test="$dvt_1_form_insertmode = '1'">1</xsl:if>
										</xsl:with-param>
						</xsl:call-template>
												</table>
												<xsl:call-template name="dvt_1.commandfooter">
																<xsl:with-param name="ShowFormActions">
																				<xsl:if test="($dvt_1_automode = '0' and $dvt_1_form_insertmode)">1</xsl:if>
																</xsl:with-param>
												</xsl:call-template>
								</xsl:template>
								<xsl:template name="dvt_1.commandfooter">
												<xsl:param name="FirstRow" />
												<xsl:param name="LastRow" />
												<xsl:param name="RowLimit" />
												<xsl:param name="dvt_RowCount" />
												<xsl:param name="RealLastRow" />
												<xsl:param name="ShowFormActions" />
												<table cellspacing="0" cellpadding="4" border="0" width="100%">
			<tr>
							<xsl:if test="$ShowFormActions = '1'">
											<xsl:call-template name="dvt_1.formactions" />
							</xsl:if>
																</tr>
		</table>
								</xsl:template>
								<xsl:template name="dvt_1.formactions">
		<td nowrap="nowrap" class="ms-vb">
			<input type="button" value="حفظ" name="btnSave" onclick="javascript: {ddwrt:GenFireServerEvent('__commit')}" />
		</td>
		<td nowrap="nowrap" class="ms-vb" width="99%">
			<input type="button" value="الغاء" name="btnCancel" onclick="javascript: {ddwrt:GenFireServerEvent('__cancel')}" />
		</td></xsl:template>
								<xsl:template name="dvt_1.rowinsert">
												<xsl:param name="IsInsertMode" />
												<xsl:variable name="XPath">
																<xsl:call-template name="dvt.xpath" />
												</xsl:variable>
												<xsl:variable name="Pos">_new</xsl:variable>
												<xsl:choose>
																<xsl:when test="$IsInsertMode = '1'">
				<tr>
					<td>
						<table border="0" cellspacing="0" width="100%">
							<tr>
								<td colspan="99" align="center" width="100%" bgcolor="gray" style="color:white;font-size:large;font-weight:bold">
									
									ادخال خبر جديد
									
								</td>
							</tr>
							<tr>
								<td width="25%" class="ms-vb">
									<xsl:text xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" ddwrt:nbsp-preserve="yes" disable-output-escaping="yes">&amp;nbsp;</xsl:text>
								</td>
								<td width="75%" class="ms-vb">
									<xsl:text xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" ddwrt:nbsp-preserve="yes" disable-output-escaping="yes">&amp;nbsp;</xsl:text>
									
								</td>
							</tr>
					<!--		<tr>
								<td width="150px" class="ms-vb">
									<b>رقم الخبر:</b>
								</td>
								<td class="ms-vb">
									<asp:TextBox runat="server" id="ff1{$Pos}" __designer:bind="{ddwrt:DataBind('i',concat('ff1',$Pos),'Text','TextChanged','','/all_news/news[new]','@id')}" />
									
									
									
								</td>
							</tr>-->
							<tr>
								<td  width="150px" class="ms-vb">
									<b>العنوان:</b>
								</td>
								<td  class="ms-vb">
									<asp:TextBox runat="server" id="ff2{$Pos}" __designer:bind="{ddwrt:DataBind('i',concat('ff2',$Pos),'Text','TextChanged','','/all_news/news[new]','title')}" Width="370px" />
									
									
									
									
									
									
									
								</td>
							</tr>
						<!--	<tr>
								<td  width="150px" class="ms-vb">
									<b>تاريخ الخبر:</b>
								</td>
								<td  class="ms-vb">
									<asp:TextBox runat="server" id="ff3{$Pos}" __designer:bind="{ddwrt:DataBind('i',concat('ff3',$Pos),'Text','TextChanged','','/all_news/news[new]','date')}" />
									
									
									
								</td>
							</tr>
							
							<tr><td  width="150px" class="ms-vb"><b>نص الخبر:</b></td><td  class="ms-vb">
								<asp:TextBox runat="server" id="ff4{$Pos}" __designer:bind="{ddwrt:DataBind('i',concat('ff4',$Pos),'Text','TextChanged','','/all_news/news[new]','desc')}" TextMode="MultiLine"  />
								
								</td></tr>-->
								
								
								<tr><td  width="150px" class="ms-vb"><b>نبذة عن الخبر:</b></td><td  class="ms-vb">
								<asp:TextBox runat="server" id="ff15{$Pos}" __designer:bind="{ddwrt:DataBind('i',concat('ff15',$Pos),'Text','TextChanged','','/all_news/news[new]','hint')}" TextMode="MultiLine" Width="370px" />
								
								
								
								</td></tr>
								
								
								<tr><td  width="150px" class="ms-vb"><b>صورة الخبر -
											<xsl:text xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" ddwrt:nbsp-preserve="yes" disable-output-escaping="yes">&amp;nbsp;
									 			
									 </xsl:text>(hyperlink):</b></td><td  class="ms-vb">
								<asp:TextBox runat="server" id="ff5{$Pos}" __designer:bind="{ddwrt:DataBind('i',concat('ff5',$Pos),'Text','TextChanged','','/all_news/news[new]','large_image')}" Width="370px" />
								</td></tr>
								
							<!--	<tr>
								<td  width="150px" class="ms-vb">
									<b>وصف الصورة الكبيرة:</b>
								</td>
								<td  class="ms-vb">
									<asp:TextBox runat="server" id="ff13{$Pos}" __designer:bind="{ddwrt:DataBind('i',concat('ff13',$Pos),'Text','TextChanged','','/all_news/news[new]','large_image_desc')}" />
									
									
									
								</td>
							</tr>
							
							<tr><td  width="150px" class="ms-vb"><b>صورة الخبر -
											<xsl:text xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" ddwrt:nbsp-preserve="yes" disable-output-escaping="yes">&amp;nbsp;</xsl:text>
											صغيرة (hyperlink):</b></td><td  class="ms-vb">
								<asp:TextBox runat="server" id="ff50{$Pos}" __designer:bind="{ddwrt:DataBind('i',concat('ff50',$Pos),'Text','TextChanged','','/all_news/news[new]','small_image')}" />
								</td></tr>
								
								<tr>
								<td  width="150px" class="ms-vb">
									<b>وصف الصورة الصغيرة:</b>
								</td>
								<td  class="ms-vb">
									<asp:TextBox runat="server" id="ff130{$Pos}" __designer:bind="{ddwrt:DataBind('i',concat('ff130',$Pos),'Text','TextChanged','','/all_news/news[new]','small_image_desc')}" />
									
									
									
								</td>
							</tr>-->
							
							<tr><td  width="150px" class="ms-vb"><b>رابط الخبر:</b></td><td  class="ms-vb">
								<asp:TextBox runat="server" id="ff51{$Pos}" __designer:bind="{ddwrt:DataBind('i',concat('ff51',$Pos),'Text','TextChanged','','/all_news/news[new]','link')}" Width="370px" />
								</td></tr>


								
								
										<xsl:if test="$dvt_1_automode = '1'" ddwrt:cf_ignore="1">
								<tr>
									<td colspan="99" class="ms-vb">
										<span ddwrt:amkeyfield="" ddwrt:amkeyvalue="string($XPath)" ddwrt:ammode="insert"></span>
									</td>
								</tr>
							</xsl:if>
						</table>
					</td>
				</tr>
			</xsl:when>
																<xsl:otherwise>
				<tr>
					<td width="100%" class="ms-vb">
						<a href="javascript: {ddwrt:GenFireServerEvent('__cancel;dvt_1_form_insertmode={1}')}">insert</a>
					</td>
				</tr>
			</xsl:otherwise>
												</xsl:choose>
								</xsl:template>
								<xsl:template name="dvt.xpath">
												<xsl:for-each select="ancestor-or-self::*"><xsl:value-of select="concat('/node()[',count(preceding-sibling::node())+1,']')" /></xsl:for-each>
								</xsl:template>
				</xsl:stylesheet></Xsl>
</WebPartPages:DataFormWebPart>

</ZoneTemplate></WebPartPages:WebPartZone>
</td></tr>

<tr><td></td></tr>
<tr><td>

<a href="./edt_del_news.aspx"> تعديل (تحرير) الاخبار </a>
&nbsp;</td></tr>

<tr><td></td></tr>

</table>

</td>
		<td class="tabLeft">
		<img src="tabLeft.bmp" /></td>
	</tr>

	<tr>
		<td class="tabLowerRight">
		<img src="tabLowerRight.bmp" /></td>
		<td class="tabLower">
		<img src="tabLower.bmp" /></td>
		<td class="tabLowerLeft">
		<img src="tabLowerLeft.bmp" /></td>
	</tr>
</table>

	  
	  		
			</td>
		  
		 </table>
		</td>
	  </tr>
	</table>
</asp:Content>
