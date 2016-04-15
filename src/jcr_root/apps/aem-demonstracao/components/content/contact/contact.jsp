<%@include file="/libs/foundation/global.jsp"%><%@page session="false" %>
<%@ page import="org.apache.commons.lang.StringUtils" %>
<%

    String telefone = properties.get("telefone", "(99) 9999-9999");
	String email = properties.get("email", "me@you.com");

	String endereco1 = properties.get("endereco1", "Endereco linha 2");
	String endereco2 = properties.get("endereco2", "Endereco linha 2");

    String facebook = (String)properties.get("facebook");
    String twitter = (String)properties.get("twitter");
    String linkedin = (String)properties.get("linkedin");


%>

 <!-- Content Row -->
<div class="row">
    <!-- Map Column -->
    <div class="col-md-8">
        <!-- Embedded Google Map -->
        <iframe width="100%" height="400px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?hl=en&amp;ie=UTF8&amp;ll=37.0625,-95.677068&amp;spn=56.506174,79.013672&amp;t=m&amp;z=4&amp;output=embed"></iframe>
    </div>
    <!-- Contact Details Column -->
    <div class="col-md-4">
        <h3>Contato</h3>
        <p>
            <%=endereco1%><br><%=endereco2%><br>
        </p>
        <p><i class="fa fa-phone"></i> 
            <abbr title="Phone">P</abbr>: <%=telefone%></p>
        <p><i class="fa fa-envelope-o"></i> 
            <abbr title="Email">E</abbr>: <a href="mailto:<%=email%>"><%=email%></a>
        </p>

        <ul class="list-unstyled list-inline list-social-icons">

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
<!-- /.row -->