<%@include file="/libs/foundation/global.jsp"%><%@page session="false" %>

<%

  String[] el = (String[]) properties.get("imagens", new String[0]);
  Integer len = el.length;

%>

<!-- Header Carousel -->
<header id="myCarousel" class="carousel slide">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <% for (int i = 0; i < len; i++){%>
        <li data-target="#myCarousel" data-slide-to="<%=i%>" class="<%=(i==0? "active": "") %>"></li>
        <%}%>
    </ol>


    
    <!-- Wrapper for slides -->
    <div class="carousel-inner">

        <% for (int i = 0; i < len; i++){ %>
	        <div class="item active">
                <div class="fill" style="background-image:url('<%=el[i]%>');"></div>
                <div class="carousel-caption">
                    <h2>Caption 1</h2>
                </div>
        	</div>
        <% } %>

    </div>
    
    <!-- Controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="icon-prev"></span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="icon-next"></span>
    </a>
</header>

<!-- Script to Activate the Carousel -->
<script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    });
</script>