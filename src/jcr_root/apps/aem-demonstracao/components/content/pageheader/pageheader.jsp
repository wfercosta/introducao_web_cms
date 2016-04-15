<%@include file="/libs/foundation/global.jsp"%><%@page session="false" %>

<%

    String titulo = properties.get("titulo", "Sem titulo");
    String subtitulo = properties.get("subtitulo", "");


%>

<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header"> <%=titulo%>
            	<small><%=subtitulo%></small>
        </h1>
    </div>
</div>
