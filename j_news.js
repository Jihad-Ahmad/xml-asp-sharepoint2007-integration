
//////////////////////// GLOBALS /////////////////////////////////

xmlDoc_giza=loadXML("/xml_news/news_xml.xml");
z=xmlDoc_giza.getElementsByTagName("news");

////////////////////// XML PROCESSING ////////////////////////////

function toCDATA( html_code_str)
{
var start_c = "<![CDATA[";
var end_c = "]]>";

temp = start_c.concat(html_code_str);
to_be_saved = temp.concat(end_c);

return to_be_saved;
}

function replaceIllegalChars(illegal)
{
legal = "";
legal = illegal.replace(" & "," &amp; ").replace("<","&lt;").replace(">","&gt;").replace("\'","&apos;").replace("\"","&quot;");
return legal;
}


function loadXML(filename)
{
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.open("GET",filename,false);
xmlhttp.send();
xmlDoc=xmlhttp.responseXML;

return xmlDoc;
}

///////////////////////////// DATA FETCHING & INSERTING //////////////////////

function createTagText(filename,tagParent,tagName,textValue)
{
xmlDoc = loadXML(filename);

}

function makeParamTextValue(tag_name,text_value)
{
xmlDoc = loadXML("./xml/current_params.xml");
x=xmlDoc.getElementsByTagName(tag_name)[0].childNodes[0];
x.nodeValue=text_value;
}


//////////////////// PASSING PARAMETERS //////////////////////////////////




function getAllParamValues(names,values)
{
query2 = window.location.search.slice(1);

//// if makes problems remove this
loc_hash = query2.split("#");
query2 = loc_hash[0];
//location="#"+loc_hash[1];
//document.write(location.hash);
//location.hash=loc_hash[1];
///////////////

query_array = query2.split("&");
for(j=0;j<query_array.length;j++)
{
all_param_values = query_array[j].split("=");
names.push(all_param_values[0]);
values.push(decodeURIComponent(all_param_values[1]));

}

}

function getParameterByName(param)
{
names = new Array();
values = new Array();

getAllParamValues(names,values);

for(j=0;j<names.length;j++)
{
if(names[j].match(param)){return (values[j]);}
}
return 0;

}

function get_large_image()
{
lrg_img = z[counter].getElementsByTagName("large_image")[0].childNodes[0].nodeValue;
return "http://admin.giza.gov.eg/DocLib55/الجيزة%20ترفع%20150%20طن.jpg";
}

/////////////////// SETTING INFORMATION (DATA ENTRY) ////////////
function load_news2()
{
document.getElementById("news_item1").innerHTML = "<b> New bold text!</b>";

}


function load_news()
{

counter = z.length;
large_image = z[1].getElementsByTagName("large_image")[0].childNodes[0].nodeValue;
header = z[1].getElementsByTagName("title")[0].childNodes[0].nodeValue;
hint = z[1].getElementsByTagName("hint")[0].childNodes[0].nodeValue;
link = z[1].getElementsByTagName["link"][0].childNodes[0].nodeValue;

news_code = "";
news_code += "<img src=\""+large_image+"\" alt=\"\" />";
news_code += " <div class=\"panel-overlay\" style=\"text-align: right\">";
news_code += " <h2 class=\"style4\">"+header+"</h2>";
news_code += " <p>"+hint+"...";
news_code += "<br /> <a href=\""+link+"\">إقرأ المزيد </a></p>";
news_code += "    </div>";

document.getElementById("news_item1").innerHTML = news_code;

large_image = z[2].getElementsByTagName("large_image")[0].childNodes[0].nodeValue;
header = z[2].getElementsByTagName("title")[0].childNodes[0].nodeValue;
hint = z[2].getElementsByTagName("hint")[0].childNodes[0].nodeValue;
link = z[2].getElementsByTagName["link"][0].childNodes[0].nodeValue;

news_code = "";
news_code += "<img src=\""+large_image+"\" alt=\"\" />";
news_code += " <div class=\"panel-overlay\" style=\"text-align: right\">";
news_code += " <h2 class=\"style4\">"+header+"</h2>";
news_code += " <p>"+hint+"...";
news_code += "<br /> <a href=\""+link+"\">إقرأ المزيد </a></p>";
news_code += "    </div>";

document.getElementById("news_item2").innerHTML = news_code;



/////////////////	INLINE CODE	///////////////////
/*
<script>
                 if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.open("GET","/xml_news/news_xml.xml",false);
xmlhttp.send();
var xmlDoc=xmlhttp.responseXML;

var z=xmlDoc.getElementsByTagName("news");
large_image = z[z.length-1].getElementsByTagName("large_image")[0].childNodes[0].nodeValue;
header = z[z.length-1].getElementsByTagName("title")[0].childNodes[0].nodeValue;
hint = z[z.length-1].getElementsByTagName("hint")[0].childNodes[0].nodeValue;
link = z[z.length-1].getElementsByTagName("link")[0].childNodes[0].nodeValue;

news_code = "";
news_code += "<img src=\""+large_image+"\" alt=\"\" />";
news_code += " <div class=\"panel-overlay\" style=\"text-align: right\">";
news_code += " <h2 class=\"style4\">"+header+"</h2>";
news_code += " <p>"+hint+"...";
news_code += "<br /> <a target=\"_blank\" href=\""+link+"\">&#1573;&#1602;&#1585;&#1571; &#1575;&#1604;&#1605;&#1586;&#1610;&#1583; </a></p>";
news_code += "    </div>";

document.getElementById("news_item1").innerHTML = news_code;

        </script>



*/

}





