package filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

//管理员登录过滤器
public class MangerLoginFilter implements Filter {
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request=(HttpServletRequest) servletRequest;
        HttpServletResponse response= (HttpServletResponse) servletResponse;
        //判断用户是否登录
        if(request.getSession().getAttribute("user") == null){
            response.sendRedirect("/mangerLogin.jsp");
        }
        else{
            filterChain.doFilter(servletRequest,servletResponse);
        }
    }

    public void destroy() {

    }

}
