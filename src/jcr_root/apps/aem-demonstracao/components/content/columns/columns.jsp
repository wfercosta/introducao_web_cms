<%@include file="/libs/foundation/global.jsp"%><%@page session="false" %>
<%
    Boolean quebradelinha = Boolean.valueOf(properties.get("quebradelinha", "false"));
%>

<% if (quebradelinha) { %>
	<br />
<% } %>

<%
    Integer value = Integer.valueOf(properties.get("layout", "3"));

    switch (value) {
        case 1:
		%><cq:include script="colunas_01.jsp" /><%
        break;
		case 2:
		%><cq:include script="colunas_02.jsp" /><%
		break;
        case 3:
		%><cq:include script="colunas_03.jsp" /><%
		break;
        case 4:
		%><cq:include script="colunas_04.jsp" /><%
		break;
		default:
		%><cq:include script="colunas_01.jsp" /><%
        break;
    }

%>
