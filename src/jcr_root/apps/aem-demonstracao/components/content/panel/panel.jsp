<%@include file="/libs/foundation/global.jsp"%><%@page session="false" %>
<div class="panel panel-default">
    <div class="panel-heading">
        <h4><i class="fa fa-fw <%=properties.get("faCssClass")%>"></i> <%=properties.get("titulo", "Nao disponivel")%></h4>
    </div>
    <div class="panel-body">
        <p><%=properties.get("descricao", "Sem descricao definida")%></p>
        <a href="<%=properties.get("btnLigacao", "#")%>" class="btn btn-default" target="<%=properties.get("btnTarget")%>"><%=properties.get("btnRotulo", "Rotulo nao definido")%></a>
    </div>
</div>