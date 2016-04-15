<%@include file="/libs/foundation/global.jsp"%><%@page session="false" %>

<%

  String[] el = (String[]) properties.get("imagens", new String[0]);
  String intervalo = (String) properties.get("intervalo", "5000");
  String id = (String) properties.get("id", "myCarousel");
  Integer len = el.length;

%>

<!-- Header Carousel -->
	<header id="<%=id%>" class="carousel slide">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <% for (int i = 0; i < len; i++){%>
        <li data-target="#<%=id%>" data-slide-to="<%=i%>" <%=(i==0? "class=\"active\"": "") %>></li>
        <%}%>
    </ol>


    
    <!-- Wrapper for slides -->
    <div class="carousel-inner">

        <% for (int i = 0; i < len; i++){ %>
	        <div class="item <%=(i==0? "active": "") %>">
                <div class="fill" style="background-image:url('<%=el[i]%>');"></div>
                <div class="carousel-caption">
                    <h2>Caption 1</h2>
                </div>
        	</div>
        <% } %>

    </div>
    
    <!-- Controls -->
    <a class="left carousel-control" href="#<%=id%>" data-slide="prev">
        <span class="icon-prev"></span>
    </a>
    <a class="right carousel-control" href="#<%=id%>" data-slide="next">
        <span class="icon-next"></span>
    </a>
</header>

<!-- Script to Activate the Carousel -->
<script>
    $('#<%=id%>').carousel({
        interval: <%=intervalo%> //changes the speed
    });
</script>