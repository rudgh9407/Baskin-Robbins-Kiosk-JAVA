// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CharacterEncodingFilter.java

package kiosk.filters;

import java.io.IOException;
import javax.servlet.*;

public class CharacterEncodingFilter
    implements Filter
{

    public CharacterEncodingFilter()
    {
    }

    public void init(FilterConfig config)
        throws ServletException
    {
        this.config = config;
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain nextFilter)
        throws IOException, ServletException
    {
        request.setCharacterEncoding(config.getInitParameter("encoding"));
        nextFilter.doFilter(request, response);
    }

    public void destroy()
    {
    }

    FilterConfig config;
}
