/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.69
 * Generated at: 2023-01-02 02:40:23 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.layout;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1671504862118L));
    _jspx_dependants.put("jar:file:/D:/spring_workspace/_spring2_workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/my_spring/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<title>main</title>\n");
      out.write("<style>\n");
      out.write("*{\n");
      out.write("margin: 0;\n");
      out.write("padding: 0;\n");
      out.write("}\n");
      out.write("html, body{\n");
      out.write("	height: 100%;\n");
      out.write("}\n");
      out.write("body{\n");
      out.write("	display: flex;\n");
      out.write("	flex-direction: column;\n");
      out.write("}\n");
      out.write("section{\n");
      out.write("	flex: 1;\n");
      out.write("}\n");
      out.write("h1{\n");
      out.write("text-indent:20px;\n");
      out.write("padding: 10px 0;\n");
      out.write("}\n");
      out.write(".menu{\n");
      out.write("margin: 30px auto;\n");
      out.write("text-align: center;\n");
      out.write("}\n");
      out.write("p{\n");
      out.write("font-weight: bold;\n");
      out.write("}\n");
      out.write(".hr{\n");
      out.write("width: 70%;\n");
      out.write("margin: 50px auto;\n");
      out.write("}\n");
      out.write(".card{\n");
      out.write("margin:0 30px;\n");
      out.write("}\n");
      out.write(".carousel{\n");
      out.write("width: 40%;\n");
      out.write("margin: 0 auto;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("	");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../layout/header.jsp", out, false);
      out.write("\n");
      out.write("	<section>\n");
      out.write("		<div class=\"menu\">\n");
      out.write("			<p>점심메뉴 결정장애가 있는 그대를 위해!</p>\n");
      out.write("			<img alt=\"메뉴선택\" src=\"../resources/img/menuc.png\" width=\"500px\" height=\"500px\">\n");
      out.write("		</div>\n");
      out.write("		<div class=\"hr\">\n");
      out.write("		<hr>\n");
      out.write("		</div>\n");
      out.write("		<div id=\"carouselExampleInterval\" class=\"carousel slide\" data-bs-ride=\"carousel\">\n");
      out.write("		  <div class=\"carousel-inner\">\n");
      out.write("		    <div class=\"carousel-item active\" data-bs-interval=\"5000\">\n");
      out.write("		      <img src=\"../resources/img/nabe.gif\" class=\"d-block w-100\" alt=\"나베\" height=\"500px\">\n");
      out.write("		    </div>\n");
      out.write("		    <div class=\"carousel-item\" data-bs-interval=\"5000\">\n");
      out.write("		      <img src=\"../resources/img/egg.gif\" class=\"d-block w-100\" alt=\"계란후라이\" height=\"500px\">\n");
      out.write("		    </div>\n");
      out.write("		    <div class=\"carousel-item\" data-bs-interval=\"5000\">\n");
      out.write("		      <img src=\"../resources/img/noo.gif\" class=\"d-block w-100\" alt=\"라멘\" height=\"500px\">\n");
      out.write("		    </div>\n");
      out.write("		  </div>\n");
      out.write("		  <button class=\"carousel-control-prev\" type=\"button\" data-bs-target=\"#carouselExampleInterval\" data-bs-slide=\"prev\">\n");
      out.write("		    <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\n");
      out.write("		    <span class=\"visually-hidden\">Previous</span>\n");
      out.write("		  </button>\n");
      out.write("		  <button class=\"carousel-control-next\" type=\"button\" data-bs-target=\"#carouselExampleInterval\" data-bs-slide=\"next\">\n");
      out.write("		    <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\n");
      out.write("		    <span class=\"visually-hidden\">Next</span>\n");
      out.write("		  </button>\n");
      out.write("		</div>\n");
      out.write("		<div class=\"hr\">\n");
      out.write("		<hr>\n");
      out.write("		</div>\n");
      out.write("		<div class=\"menu map\">\n");
      out.write("			<p>인천 맛집 지도</p>\n");
      out.write("			<img alt=맛집지도\" src=\"../resources/img/map.jpg\" width=\"500px\" height=\"500px\">\n");
      out.write("		</div>\n");
      out.write("		<div class=\"hr\">\n");
      out.write("		<hr>\n");
      out.write("		</div>\n");
      out.write("	 	<div class=\"row row-cols-1 row-cols-md-4 g-4\">\n");
      out.write("		  <div class=\"col\">\n");
      out.write("		    <div class=\"card h-100\">\n");
      out.write("		  		<img src=\"../resources/img/bibim.jpg\" class=\"card-img-top\" alt=\"비빔밥\">\n");
      out.write("		  <div class=\"card-body\">\n");
      out.write("		    <h5 class=\"card-title\">비빔밥</h5>\n");
      out.write("		    <p class=\"card-text\">당근, 버섯, 오이, 고사리, 도라지 등의 다양한 나물반찬과 계란후라이, 고추장 소스로 맛을 낸 한식</p>\n");
      out.write("		    <a href=\"#\" class=\"btn btn-primary\">More...</a>\n");
      out.write("		  </div>\n");
      out.write("		 </div>\n");
      out.write("		</div>\n");
      out.write("		<div class=\"col\">\n");
      out.write("		    <div class=\"card h-100\">\n");
      out.write("		  <img src=\"../resources/img/ekfrrkfql.jpg\" class=\"card-img-top\" alt=\"닭갈비\">\n");
      out.write("		  <div class=\"card-body\">\n");
      out.write("		    <h5 class=\"card-title\">닭갈비</h5>\n");
      out.write("		    <p class=\"card-text\">치즈에 폭 찍어먹는 닭갈비 그리고 마지막은 볶음밥</p>\n");
      out.write("		    <a href=\"#\" class=\"btn btn-primary\">More...</a>\n");
      out.write("		  </div>\n");
      out.write("		 </div>\n");
      out.write("		</div>\n");
      out.write("		<div class=\"col\">\n");
      out.write("		    <div class=\"card h-100\">\n");
      out.write("		  <img src=\"../resources/img/ttuck.jpg\" class=\"card-img-top\" alt=\"떡볶이\">\n");
      out.write("		  <div class=\"card-body\">\n");
      out.write("		    <h5 class=\"card-title\">떡볶이</h5>\n");
      out.write("		    <p class=\"card-text\">쫄깃한 떡과 어묵이 고추장소스로 환상적인 분식</p>\n");
      out.write("		    <a href=\"#\" class=\"btn btn-primary\">More...</a>\n");
      out.write("		  </div>\n");
      out.write("		 </div>\n");
      out.write("		</div>\n");
      out.write("		<div class=\"col\">\n");
      out.write("		    <div class=\"card h-100\">\n");
      out.write("		  <img src=\"../resources/img/kimchi.jpg\" class=\"card-img-top\" alt=\"김치찌개\">\n");
      out.write("		  <div class=\"card-body\">\n");
      out.write("		    <h5 class=\"card-title\">김치찌개</h5>\n");
      out.write("		    <p class=\"card-text\">잘익은 김치를 고기등과 뭉근하게 끓여낸 밥도둑</p>\n");
      out.write("		    <a href=\"#\" class=\"btn btn-primary\">More...</a>\n");
      out.write("		  </div>\n");
      out.write("		 </div>\n");
      out.write("		</div>\n");
      out.write("		<div class=\"col\">\n");
      out.write("		    <div class=\"card h-100\">\n");
      out.write("		  <img src=\"../resources/img/chicken.png\" class=\"card-img-top\" alt=\"치킨\">\n");
      out.write("		  <div class=\"card-body\">\n");
      out.write("		    <h5 class=\"card-title\">치킨</h5>\n");
      out.write("		    <p class=\"card-text\">튀기면 맛없을 수 없지만 그중에 치느님은 범접불가</p>\n");
      out.write("		    <a href=\"#\" class=\"btn btn-primary\">More...</a>\n");
      out.write("		  </div>\n");
      out.write("		 </div>\n");
      out.write("		</div>\n");
      out.write("		<div class=\"col\">\n");
      out.write("		    <div class=\"card h-100\">\n");
      out.write("		  <img src=\"../resources/img/pasta.jpg\" class=\"card-img-top\" alt=\"파스타\">\n");
      out.write("		  <div class=\"card-body\">\n");
      out.write("		    <h5 class=\"card-title\">파스타</h5>\n");
      out.write("		    <p class=\"card-text\">토마토, 크림, 로제, 오일 등 다양한 소스의 배합으로 즐기는 미식</p>\n");
      out.write("		    <a href=\"#\" class=\"btn btn-primary\">More...</a>\n");
      out.write("		  </div>\n");
      out.write("		 </div>\n");
      out.write("		</div>\n");
      out.write("	 </div>\n");
      out.write("	 </section>\n");
      out.write("	");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../layout/footer.jsp", out, false);
      out.write("\n");
      out.write("	\n");
      out.write("	");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}