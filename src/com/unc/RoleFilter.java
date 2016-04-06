package com.unc;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class RoleFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        if (servletRequest instanceof HttpServletRequest && servletResponse instanceof HttpServletResponse) {
            HttpServletRequest request = (HttpServletRequest) servletRequest;
            HttpServletResponse response = (HttpServletResponse) servletResponse;
            HttpSession session = request.getSession();
            String contextPath = request.getContextPath();

            if ((session != null) && session.getAttribute("user") != null && ((User) session.getAttribute("user")).isAdmin()) {
                if (request.getRequestURI().equals(contextPath + "/adminpage.jsp") ||
                        request.getRequestURI().equals(contextPath + "/index.jsp")) {
                    filterChain.doFilter(request, response);
                } else {
                    response.sendRedirect(contextPath + "/index.jsp");
                }
            } else if ((session != null) && session.getAttribute("user") != null && !((User) session.getAttribute("user")).isAdmin()) {
                if (request.getRequestURI().equals(contextPath + "/userpage.jsp") ||
                        request.getRequestURI().equals(contextPath + "/index.jsp")) {
                    filterChain.doFilter(request, response);
                } else {
                    response.sendRedirect(contextPath + "/index.jsp");
                }
            } else {
                if (request.getRequestURI().equals(contextPath + "/index.jsp") ||
                                request.getRequestURI().equals(contextPath + "/index.jsp")
                        ) {
                    filterChain.doFilter(request, response);
                } else {
                    response.sendRedirect(contextPath + "/index.jsp");
                }
            }
        }

    }

    @Override
    public void destroy() {
    }
}
