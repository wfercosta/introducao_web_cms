<%@include file="/libs/foundation/global.jsp"%><%@page session="false" %>
<%@ page import="org.apache.commons.lang.StringUtils" %>
<%

    String facebook = (String)properties.get("facebook");
    String twitter = (String)properties.get("twitter");
    String linkedin = (String)properties.get("linkedin");
    String pic = (String)properties.get("pic");

%>

<div class="thumbnail">

    <% if (StringUtils.isNotEmpty(pic)) {%>
    	<img class="img-responsive" src="<%=pic%>" alt="">
    <% }%>
    <div class="caption">
        <h3><%=properties.get("nomeCompleto", "Nome completo nao definido")%><br>
            <small><%=properties.get("cargo", "Cargo nao definido")%></small>
        </h3>
        <p><%=properties.get("citacao", "Citacao nao definida")%></p>
        <ul class="list-inline">

            <% if (StringUtils.isNotEmpty(facebook)) {%>

            	<li><a href="<%=facebook%>"><i class="fa fa-2x fa-facebook-square"></i></a></li>

            <%}%>

            <% if (StringUtils.isNotEmpty(twitter)) {%>

            	<li><a href="<%=twitter%>"><i class="fa fa-2x fa-twitter-square"></i></a></li>

            <%}%>

            <% if (StringUtils.isNotEmpty(linkedin)) {%>

            	<li><a href="<%=linkedin%>"><i class="fa fa-2x fa-linkedin-square"></i></a></li>

            <%}%>

        </ul>
    </div>
</div>