<%@ Page language="C#" MasterPageFile="~masterurl/default.master"    Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=12.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" title="خريطة الموقع" %>
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
		<img src="tabUpperRight.gif" /></td>
		<td class="tabUpper">
		<img src="tabUpper.gif" /></td>
		<td class="tabUpperLeft">
		<img src="tabUpperLeft.gif" /></td>
	</tr>

	<tr>
		<td class="tabRight">
		<img src="tabRight.gif" /></td>
		<td class="tabCenter" ><table width="100%" border="0">
<tr><td>



			

				<WebPartPages:DataFormWebPart runat="server" IsIncluded="True" FrameType="None" NoDefaultStyle="TRUE" ViewFlag="0" Title="news_xml.xml" __markuptype="vsattributemarkup" __WebPartId="{E613EFB7-6A95-4D0C-841A-AB57D2888575}" id="g_b1c179db_37c9_47b2_a430_31f963bb589c" __AllowXSLTEditing="true" WebPart="true" Height="" Width="">
	<DataSources>
		<SharePoint:SPXmlDataSource runat="server" id="news_xml_x002e_xml1"><DataFileParameters><WebPartPages:DataFormParameter Name="FileName" ParameterKey="FileName" PropertyName="ParameterValues" DefaultValue="news_xml.xml"/><WebPartPages:DataFormParameter Name="FilePath" ParameterKey="FilePath" PropertyName="ParameterValues" DefaultValue="xml_news"/></DataFileParameters></SharePoint:SPXmlDataSource>
	</DataSources>
	<ParameterBindings>
					<ParameterBinding Name="FileName" Location="None" DefaultValue="news_xml.xml"/>
					<ParameterBinding Name="FilePath" Location="None" DefaultValue="xml_news"/>
					<ParameterBinding Name="dvt_apos" Location="Postback;Connection"/>
					<ParameterBinding Name="UserID" Location="CAMLVariable" DefaultValue="CurrentUserName"/>
					<ParameterBinding Name="Today" Location="CAMLVariable" DefaultValue="CurrentDate"/>
					<ParameterBinding Name="dvt_1_form_insertmode" Location="Postback;Connection"/>
				</ParameterBindings>
	<datafields>@id,id;title;date;desc;image;</datafields>
	<XSL>
<xsl:stylesheet version="1.0" exclude-result-prefixes="xsl msxsl ddwrt" xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" xmlns:asp="http://schemas.microsoft.com/ASPNET/20" xmlns:__designer="http://schemas.microsoft.com/WebParts/v2/DataView/designer" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:SharePoint="Microsoft.SharePoint.WebControls" xmlns:ddwrt2="urn:frontpage:internal">
	<xsl:output method="html" indent="no"/>
	<xsl:decimal-format NaN=""/>
	<xsl:param name="FileName" />
	<xsl:param name="dvt_apos">&apos;</xsl:param>
	
	<xsl:variable name="dvt_1_automode">0</xsl:variable>
	<xsl:template match="/">
		<xsl:call-template name="all_style"/>
	</xsl:template>
	
	<xsl:template name="all_style">
	<table width="100%">
<tr><td colspan="99" align="center">
	    <xsl:call-template name="news_item_edit_delete"/>
	
	<input type="button" value="حفظ" name="btnSave" onclick="javascript: {ddwrt:GenFireServerEvent('__commit')}" />

</td></tr>

	</table>
	
	</xsl:template>
	
	<xsl:template name="news_item_edit_delete">
	<xsl:for-each select="/all_news/news">
	<table width="90%"  cellspacing="0">
	<tr><td align="center" colspan="99">
	<table width="90%" border="0">
	<tr><td width="30%"></td><td width="70%"></td></tr>
	
	<tr><td colspan="2" bgcolor="gray" >الخبر رقم<xsl:value-of select="position()"/>:<xsl:value-of select="current()/@id"></xsl:value-of></td></tr>
	<tr>
	
	<td width="30%">عنوان الخبر</td>
	<td align="right" width="70%">
	
	<xsl:variable name="news_title" select="current()/title"/>
	<asp:textbox width="100%"  runat="server" id="{concat('news_title',position())}" text="{$news_title}" __designer:bind="{ddwrt:DataBind('u',concat('news_title',position()),'Text','TextChanged','',concat('/all_news/news[',position(),']'),'title')}"/>

	</td></tr>

	
	<!--<tr>
	
	<td width="30%">تاريخ  الخبر</td>
	<td align="right" width="70%">
	
	<xsl:variable name="news_date" select="current()/date"/>
	<asp:textbox width="100%"  runat="server" id="{concat('news_date',position())}" text="{$news_date}" __designer:bind="{ddwrt:DataBind('u',concat('news_date',position()),'Text','TextChanged','',concat('/all_news/news[',position(),']'),'date')}"/>

	</td></tr>

	<tr>
	
	<td width="30%"> نص الخبر</td>
	<td align="right" width="70%">
	
	<xsl:variable name="news_desc" select="current()/desc"/>
	<asp:textbox width="100%"  runat="server" id="{concat('news_desc',position())}" text="{$news_desc}" __designer:bind="{ddwrt:DataBind('u',concat('news_desc',position()),'Text','TextChanged','',concat('/all_news/news[',position(),']'),'desc')}" TextMode="MultiLine" />

	</td></tr>-->

	<tr>
	
	<td width="30%"> نبذة عن الخبر</td>
	<td align="right" width="70%">
	
	<xsl:variable name="news_hint" select="current()/hint"/>
	<asp:textbox width="100%"  runat="server" id="{concat('news_hint',position())}" text="{$news_hint}" __designer:bind="{ddwrt:DataBind('u',concat('news_hint',position()),'Text','TextChanged','',concat('/all_news/news[',position(),']'),'hint')}" TextMode="MultiLine" />

	</td></tr>


	<tr>
	
	<td width="30%">  صورة الخبر </td>
	<td align="right" width="70%">
	
	<xsl:variable name="news_large_image" select="current()/large_image"/>
	<asp:textbox width="100%"  runat="server" id="{concat('news_large_image',position())}" text="{$news_large_image}" __designer:bind="{ddwrt:DataBind('u',concat('news_large_image',position()),'Text','TextChanged','',concat('/all_news/news[',position(),']'),'large_image')}"  />

	</td></tr>
	
	<!--<tr>
	
	<td width="30%">وصف الصورة الكبيرة </td>
	<td align="right" width="70%">
	
	<xsl:variable name="news_large_image_desc" select="current()/large_image_desc"/>
	<asp:textbox width="100%"  runat="server" id="{concat('news_large_image_desc',position())}" text="{$news_large_image_desc}" __designer:bind="{ddwrt:DataBind('u',concat('news_large_image_desc',position()),'Text','TextChanged','',concat('/all_news/news[',position(),']'),'large_image_desc')}"/>

	</td></tr>
	
	
	<tr>
	
	<td width="30%">  صورة الخبر - صغيرة</td>
	<td align="right" width="70%">
	
	<xsl:variable name="news_small_image" select="current()/small_image"/>
	<asp:textbox width="100%"  runat="server" id="{concat('news_small_image',position())}" text="{$news_small_image}" __designer:bind="{ddwrt:DataBind('u',concat('news_small_image',position()),'Text','TextChanged','',concat('/all_news/news[',position(),']'),'small_image')}"  />

	</td></tr>
	
	<tr>
	
	<td width="30%">وصف الصورة الصغيرة </td>
	<td align="right" width="70%">
	
	<xsl:variable name="news_small_image_desc" select="current()/small_image_desc"/>
	<asp:textbox width="100%"  runat="server" id="{concat('news_small_image_desc',position())}" text="{$news_small_image_desc}" __designer:bind="{ddwrt:DataBind('u',concat('news_small_image_desc',position()),'Text','TextChanged','',concat('/all_news/news[',position(),']'),'small_image_desc')}"/>

	</td></tr>-->
	
	<tr>
	
	<td width="30%">رابط الخبر </td>
	<td align="right" width="70%">
	
	<xsl:variable name="news_link" select="current()/link"/>
	<asp:textbox width="100%"  runat="server" id="{concat('news_link',position())}" text="{$news_link}" __designer:bind="{ddwrt:DataBind('u',concat('news_link',position()),'Text','TextChanged','',concat('/all_news/news[',position(),']'),'link')}"/>

	</td></tr>

	

	<tr><td align="center" colspan="2">
	
		<a href="javascript: {ddwrt:GenFireServerEvent(concat('__cancel;__delete={','','=',concat('/all_news/news','[',position(),']'),'};__commit'))}">حذف</a>
	</td></tr>
	



	<tr><td width="30%"></td><td width="70%"></td></tr>
	<tr><td width="30%">
					<xsl:text xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" ddwrt:nbsp-preserve="yes" disable-output-escaping="yes">&amp;nbsp;</xsl:text>
		</td><td width="70%">
					<xsl:text xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" ddwrt:nbsp-preserve="yes" disable-output-escaping="yes">&amp;nbsp;</xsl:text>
		</td></tr>
	<tr><td width="30%"></td><td width="70%"></td></tr><tr><td width="30%" /><td width="70%" /></tr></table>
	
	</td></tr>
	
	</table>
	</xsl:for-each>
	   <!--
	   <tr><td style="background-color:#DDF7FF; width:50%;">من تاريخ:</td>
<td style="background-color:#DDF7FF; width:50%">
	<xsl:variable name="fdate_path" select="$info_path" />

	<xsl:variable name="dfrom" select="current()/date_from[1]"/>
	<asp:textbox width="100%"  runat="server" id="{concat('from',position())}" text="{$dfrom}" __designer:bind="{ddwrt:DataBind('u',concat('from',position()),'Text','TextChanged','',string($fdate_path),'date_from')}"/>

</td>
</tr>

	   -->
	</xsl:template>
	
</xsl:stylesheet>	</XSL>
</WebPartPages:DataFormWebPart>



			

				</td></tr>

<tr><td></td></tr>
<tr><td>


&nbsp;</td></tr>

<tr><td><a href="ins_news.aspx">ادخال جديد</a></td></tr>

</table>

</td>
		<td class="tabLeft">
		<img src="tabLeft.gif" /></td>
	</tr>

	<tr>
		<td class="tabLowerRight">
		<img src="tabLowerRight.gif" /></td>
		<td class="tabLower">
		<img src="tabLower.gif" /></td>
		<td class="tabLowerLeft">
		<img src="tabLowerLeft.gif" /></td>
	</tr>
</table>

	  
	  		
			</td>
		  
		 </table>
		</td>
	  </tr>
	</table>
</asp:Content>
