<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>My JSP 'goods_Information.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<style>

.Information_center_left{

height:230px;
width:600px;
border:1px red solid;
}

.Information_center_right{
margin-left:550px;
margin-top:-250px;
}

.Information_center_left{
margin-left:300px;
}

.Information_center_right_butten{
margin-top:-5px;
}

.Shopping_page_down{
margin-top:-600px;
}

</style>




  </head>
  
  <body>
  
  <jsp:useBean id="Information" class="goods.Information" scope="session"></jsp:useBean> 
<jsp:setProperty name="Information" property="*"/>
  
  <div class="Information">
  
<div class="Shopping_page_top">
  <%@include file="Shopping_page_top_Login.jsp" %>
  </div>
  
  <div class="Information_center">
  
  <div class="Information_center_left">
  <img src="<%=Information.getspic() %>">
  </div>
  
  <div class="Information_center_right">
  <h3><%=Information.getstype() %></h3>
  
  <div class="Information_center_right_goodsname">
  <h4><%=Information.getsgoodname() %><%=Information.getsdanwei() %></h4>
  </div>
  
  <div class="Information_center_right_goodsprice">
  <h4><%=Information.getsprice() %></h4>
  </div>
  
  <div class="Information_center_right_information">
  <h4><%=Information.getsinformation() %></h4>
  </div>
  
  
  <div class="Information_center_right_information">
  <p><%=Information.getsfactory() %></p>
  </div>
  
  <div class="Information_center_right_butten">
 
  <form id="number" action="Shopping_Cart_dealwith.jsp">
  <select name="Shopping_car">
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
  <option value="5">5</option>
  <option value="6">6</option>
  <option value="7">7</option>
  <option value="8">8</option>
  <option value="9">9</option>
  <option value="10">10</option>
  </select>
  <input type="submit" name="number" value="加入购物车">
  </form>

  
  </div>
  </div>
  
  </div>
  
  </div>
  
  <div class="Shopping_page_down">
<%@include file="Shopping_page_down.jsp" %>
</div>
  </body>
</html>
