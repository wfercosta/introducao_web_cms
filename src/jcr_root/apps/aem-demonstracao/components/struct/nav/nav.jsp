<%@include file="/libs/foundation/global.jsp"%><%@ page import="java.util.Iterator,
        com.day.text.Text, 
        com.day.cq.wcm.api.PageFilter, com.day.cq.wcm.api.Page" %><%
    /* get starting point of navigation */


    StringBuilder sb = new StringBuilder();
    Page navRootPage = currentPage.getAbsoluteParent(1); 

	if (navRootPage == null && currentPage != null) { 
    	navRootPage = currentPage; 
    }

    if (navRootPage != null) { 
        Iterator<Page> children = navRootPage.listChildren(new PageFilter(request));
        while (children.hasNext()) { 
            Page child = children.next(); 

            sb.append("<li>");

            sb.append("<a href=\"")
                .append(child.getPath())
                .append(".html\">")
                .append(child.getTitle())
                .append("</a>");
            sb.append("</li>");
        } 
    } 
%>


     <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<%=navRootPage.getPath()%>.html"><%=navRootPage.getTitle()%></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <%=sb.toString()%>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
