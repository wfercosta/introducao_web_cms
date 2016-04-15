<%@include file="/libs/foundation/global.jsp"%><%@page session="false" %>
<div class="media">
    <div class="pull-left">
        <span class="fa-stack fa-2x">
            <i class="fa fa-circle fa-stack-2x text-primary"></i>
            <i class="fa <%=properties.get("faCssClass")%> fa-stack-1x fa-inverse"></i>
        </span> 
    </div>
    <div class="media-body">
        <h4 class="media-heading"><%=properties.get("titulo", "Titulo nao definido")%></h4>
        <p><%=properties.get("descricao", "Descricao nao definida")%></p>
    </div>
</div>
<br/>