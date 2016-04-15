<%@include file="/libs/foundation/global.jsp"%><%@page session="false" %>
<hr>

<!-- Call to Action Section -->
<div class="well">
    <div class="row">
        <div class="col-md-8">
            <p><%=properties.get("descricao", "Sem descricao definida")%></p>
        </div>
        <div class="col-md-4">
            <a class="btn btn-lg btn-default btn-block" href="<%=properties.get("btnLigacao", "#")%>" target="<%=properties.get("btnTarget")%>"><%=properties.get("btnRotulo", "Rotulo nao definido")%></a>
        </div>
    </div>
</div>

<hr>