// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Admin.java

package kiosk.vo;


public class Admin
{

    public Admin(int _id, String _category, String _menu, int _count, long _price, String _date)
    {
        id = _id;
        category = _category;
        menu = _menu;
        count = _count;
        price = _price;
        date = _date;
    }

    public int getId()
    {
        return id;
    }

    public String getCategory()
    {
        return category;
    }

    public String getMenu()
    {
        return menu;
    }

    public int getCount()
    {
        return count;
    }

    public long getPrice()
    {
        return price;
    }

    public String getDate()
    {
        return date;
    }

    protected int id;
    protected String category;
    protected String menu;
    protected int count;
    protected long price;
    protected String date;
}
