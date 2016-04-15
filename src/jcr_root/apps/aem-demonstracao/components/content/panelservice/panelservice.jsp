<%@include file="/libs/foundation/global.jsp"%><%@page session="false" %>
<div class="panel panel-default text-center">
    <div class="panel-heading">
        <span class="fa-stack fa-5x">
            <i class="fa fa-circle fa-stack-2x text-primary"></i>
            <i class="fa <%=properties.get("faCssClass")%> fa-stack-1x fa-inverse"></i>
        </span>
    </div>
    <div class="panel-body">
        <h4><%=properties.get("titulo", "Titulo nao definido")%></h4>
        <p><%=properties.get("descricao", "Descricao do produto")%></p>
        <a href="<%=properties.get("btnLigacao", "#")%>" class="btn btn-primary" target="<%=properties.get("btnTarget")%>"><%=properties.get("btnRotulo", "Rotulo nao definido")%></a>
    </div>
</div>