
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*" %>
<%@page import="java.util.Date"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>河北重大技术征集表</title>  
<script type="text/javascript">
function act1(){

    document.form1.action="informationTianbao.action";
    document.form1.submit();   

}
function act2(){

    document.form1.action="informationChakan.action";
    document.form1.submit();   

}
function act3(){

    document.form2.action="informationEdit.action";
    document.form2.submit();   

}
function act4(){

    document.form2.action="informationDel.action";
    document.form2.submit();   

}

  </script>
</head>

<body  style=" background:#F0F0F0">
<div align="center">
     <div style="height:40px;text-align:center;" ><p><font size="5" color="blue" style="font-weight:bold;">河北省重大技术需求征集</font></p>
       </div>
       <%
       request.setCharacterEncoding("utf-8"); 
       int quanxian=(Integer)request.getAttribute("ifn.Flage");
       if(quanxian==0)
       {%>
      <div><form id="form2" name="form2" method="post">
      <input type="submit" name="button3" id="button3" value="修改资料"  onclick="act3()"/> &nbsp &nbsp &nbsp &nbsp
      <input type="submit" name="button4" id="button4" value="删除资料"  onclick="act4()"/><br>
      </form></div> 
     <% }%>
       <div>     
  <form id="form1" name="form1" method="post" action="?">
    <table width="828" height="1274" border="1">
    
   <%
    	  if(quanxian==3||quanxian==5)
    	  {
       %>
      
      <tr>
      <td >审核不通过理由:</td><td colspan="6"><s:property value="ifn.reason"/></td>
      
      </tr>
      <% 
    	  }
      else
      {%>
    	  <tr style="display:none">
          <td>审核不通过理由:</td><td colspan="6"></td>
          </tr>
          <%
        
      }
      %>
      <tr>
      
        <td width="88" height="32"> *机构全称</td>
        <td width="323"><s:property value="ifn.CompanyName"/></td>
        <td colspan="2">归口管理部门</td>
       
        <td colspan="4"><s:property value="ifn.CenManagement"/></td>
       
        </tr>
      <tr>
        <td height="31">*通讯地址</td>
        <td><s:property value="ifn.CompanyAddress"/></td>
        <td colspan="2">*所在地域</td>
        <td colspan="4"><s:property value="ifn.Area"/></td>
        </tr>
      <tr>
        <td height="31"> 网址</td>
        
        <td width="323"><s:property value="ifn.WorkWebSite"/></td>
        
        <td colspan="2">*电子信箱
        </td>
        <td colspan="3"> <s:property value="ifn.Email"/></td>
        
      </tr>
      <tr>
        <td height="31">*法人代表</td>
        <td><s:property value="ifn.LegalRepresenttative"/></td>
        <td colspan="2">邮政编码
         </td>
        
        <td colspan="3"> <s:property value="ifn.PostCode"/></td>
      
      </tr>
  
      <tr>
        <td rowspan="2">*联 系 人</td>
        <td rowspan="2"><s:property value="ifn.ContactName"/></td>
        <td width="85" height="32">*电  话</td>
        <td width="44">1.固定   </td>
        
        <td width="98"><s:property value="ifn.Telephone"/></td>
      
        <td width="45">2.*手机</td>
        <td width="92"><s:property value="ifn.Phone"/></td>
      </tr>
      <tr>
        <td height="26" colspan="2">传  真</td>
        
         <td colspan="4"><s:property value="ifn.Fax"/></td>
        
      </tr>
  
      <tr>
        <td height="39">*机构属性</td>
        <td height="39" colspan="8"><s:property value="ifn.JGshuxing"/></td>
      </tr>
      <tr>
        <td height="123" colspan="9"><p>*机构简介（单位基本情况，研究基础等，限500字）</p>
          <p>
            <textarea name="CompanyIntroduction" id="CompanyIntroduction" style="width:100% ;height:58px"><s:property value="ifn.CompanyIntroduction"/></textarea></p>
   
       </td>
      </tr>
      <tr>
        <td height="42">*技术需求名称</td>
        <td><s:property value="ifn.TechNeed"/></td>
        <td colspan="2">*需求时限</td>
        <td colspan="4"><s:property value="ifn.StartYear"/>年至<s:property value="ifn.EndYear"/>年</td>
      </tr>
      <tr>
        <td height="155" colspan="9"><p>*技术需求概述：</p>
          <p>1.主要问题（需要解决的重大技术问题）</p> 
          <p>
            <textarea type="text" name="Techquest" id="Techquest" style="width:100%;height:70px"><s:property value="ifn.Techquest"/></textarea>
          </p>
          <p>2.技术关键（所需的关键技术，主要指标）</p>
          <p>
            <textarea type="text" name="TechKey" id="TechKey" style="width:100%;height:70px"><s:property value="ifn.Techkey"/></textarea>
            
          </p>
          <p>3.预期目标（技术创新性、经济社会效益）</p>
          <p>
            <textarea type="text" name="Techgoal" id="Techgoal" style="width:100%;height:70px"><s:property value="ifn.Techgoal"/></textarea>
          </p></td>
      </tr>
      <tr>
        <td height="35" colspan="9">*关键字（1-5个）
        <s:property value="ifn.Key1"/>
        <s:property value="ifn.Key2"/>
        <s:property value="ifn.Key3"/>
        <s:property value="ifn.Key4"/>
        <s:property value="ifn.Key5"/>
        </td>
      </tr>
      <tr>
        <td height="35">拟投入资金总额</td>
        <%String PlanSum=request.getAttribute("ifn.PlanSum").toString();
        if(PlanSum.equals("0.0"))
        	{%>
        <td colspan="8"></td>
        <%}
        else
        {%>
               <td colspan="8"><s:property value="ifn.PlanSum"/>万元</td>
               <%} %>
      </tr>
      <tr>
        <td rowspan="2"><p align="center">*技术需求解决方式</p></td>
        <td height="25" colspan="6"><p>
         <s:property value="ifn.TechNeedMode"/>     
        </p></td>
        </tr>
      <tr>
        <td height="10" colspan="6"><p>合作意向单位:
        <%String CoopIntentionUnit=request.getAttribute("ifn.CoopIntentionUnit").toString();
        if(CoopIntentionUnit.equals(""))
        {%>无
        <% }
        else
        {%>
         <s:property value="ifn.CoopIntentionUnit"/>
         <%} %>
        </p></td>
        </tr>
       
        <tr>
        <td height="30">科技活动类型</td>
        <td colspan="8"><p>
       <s:property value="ifn.StudyType"/>
        </p></td>
        
      </tr>
      <%  
      String StudyType=request.getAttribute("ifn.StudyType").toString();  
      if(StudyType.equals("基础研究"))
      {%>
    	  <tr>
          <td height="40" >学科分类</td>
          <td colspan="10">
          <s:property value="ifn.SbjectThird"/>
             </td>
        </tr>
      <% }
      else
      {%>
    	  <tr>
          <td height="50" rowspan="2"><p align="center">需求技术所属领域(非基础研究填写）</p></td>
          <td height="41" colspan="8"><p>
   <s:property value="ifn.TechNeedField"/>
          </p>
          
            </td>
        </tr>
        <tr id="Otherrow">
          <td height="20"  colspan="8">其他技术：
         <%
         String  Other=request.getAttribute("ifn.Other").toString();
         if(Other.equals(""))
          {%>无
          <%}
         else
          {%>
           <s:property value="ifn.Other"/>
            <%} %>
          </td>
        </tr>
        <tr id="applyrow">
          <td height="64">需求技术应用行业（非基础研究填写）</td>
          <td colspan="7"> <s:property value="ifn.TNProfessionThird"/>
             </td>
        </tr>
      <%}
     
    	  %>
      
     
      <tr>
        <td style="text-align: center;" height="34" colspan="9"> <input type="button" name="button1" id="button1" value="再次填报" onclick="act1()" />
          &nbsp &nbsp &nbsp &nbsp<input type="button" name="button2" id="button2" value="返回" onclick="act2();"/></td>
      </tr>    
    </table>
  </form>
  </div>
</div>
</body>
</html>
