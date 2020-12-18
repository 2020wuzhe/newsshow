<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#divcontent {
	width: 70%;
	margin-left: 15%;
	margin-right: 15%;
	border: 1px solid black;
	height: ${highsize}px;
}                         

th {
	width: 100px;
	height: 40px;
	color: white;
	font-size: 15px;
}

hr {
	margin-top: -1px;
}

img {
	width: 84%;
	height: 120px;
}

.tdiv {
	font-weight: 900
}
</style>
</head>
<body>
	<div id="divcontent">
		<table>
			<tr>
				<th style="background-color: red; color: white;" align="center">组织工作</th>
				<th style="color: black;">干部工作</th>
				<th style="width: 70%"></th>
				<th style="color: black; font-size: 11px; margin-right: -50%">▴更多</th>
		</table>

		<hr />     
		<div id="left" style="width: 50%; float: left;">

			<div style="width: 45%; float: left;">
				&nbsp;&nbsp;&nbsp; <img src="img/1.png" />
			</div>
			<div style="width: 48%; float: left;">
				<div class="tdiv">
					<c:if test="${fn:length(first.title) > 12 }">

        ${fn:substring(first.title,0,12)}...

    </c:if>     
					<c:if test="${fn:length(first.title)<= 12 }">
    
        ${first.title}

    </c:if>
				</div>
				<br />
				<div style="color: #a9a9a9; font-size: 10px;">


					<c:if test="${fn:length(first.content) > 41 }">

        ${fn:substring(first.content,0,41)}...

    </c:if>
					<c:if test="${fn:length(first.content)<= 41 }">

        ${first.content}

    </c:if>


				</div>
				<br /> <font color="red">[详细]</font>
			</div>


		</div>
		<div id="left" style="width: 50%; float: left;">

			<div style="width: 45%; float: left;">
				&nbsp;&nbsp;&nbsp; <img src="img/1.png" />
			</div>
			<div style="width: 48%; float: left;">
				<div class="tdiv">
					<c:if test="${fn:length(second.title) > 12 }">

        ${fn:substring(second.title,0,12)}...

    </c:if>
					<c:if test="${fn:length(second.title)<= 12 }">
 
            ${second.title}      

    </c:if>
				</div>
				<br />
				<div style="color: #a9a9a9; font-size: 10px;">

					<c:if test="${fn:length(second.content) > 37 }">

        ${fn:substring(second.content,0,37)}...

    </c:if>
					<c:if test="${fn:length(second.content)<= 37 }">

        ${second.content}

    </c:if>
				</div>
				<br /> <font color="red">[详细]</font>
			</div>


		</div>




		<hr />



		<div id="kk" style="width: 50%; float: left;">

			<c:forEach items="${listleft }" varStatus="vs" var="v">

				<div style="margin-left: 15px; mragin-top: 2px;">
					<font color="red">▪</font>&nbsp;${v.title } <br /> <br />
				</div>
     
			</c:forEach>

		</div>          
		<div id="kk" style="width: 47%; float: left;">
			<c:forEach items="${listright }" varStatus="vs" var="v">

				<div style="margin-left: 15px; mragin-top: 2px;">
					<font color="red">▪</font>&nbsp;${v.title } <br /> <br />
				</div>
       
			</c:forEach>

		</div>

	</div>
</body>
</html>