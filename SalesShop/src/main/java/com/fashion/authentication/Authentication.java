package com.fashion.authentication;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "authentication", urlPatterns = {"/admin"})
public class Authentication implements Filter {
    public void init(FilterConfig config){
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;
        if(request.getRequestURI().contains("admin"))
        {
            System.out.println("contains");
            response.sendRedirect("index.jsp");
        }
        chain.doFilter(req, resp);
    }
}
