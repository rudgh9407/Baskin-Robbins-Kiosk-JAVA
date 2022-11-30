// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Member.java

package kiosk.vo;


public class Member
{

    public Member()
    {
        countMax = 0;
        targetId = 1;
        dayMax = "";
    }

    public Member(int _id, String _number, int _point, int _count, String _date)
    {
        countMax = 0;
        targetId = 1;
        dayMax = "";
        id = _id;
        number = _number;
        point = _point;
        count = _count;
        date = _date;
    }

    public int getId()
    {
        return id;
    }

    public String getNumber()
    {
        return number;
    }

    public int getPoint()
    {
        return point;
    }

    public int getCount()
    {
        return count;
    }

    public String getDate()
    {
        return date;
    }

    public int getCountMax()
    {
        return countMax;
    }

    public int getTargetId()
    {
        return targetId;
    }

    public String getDayMax()
    {
        return dayMax;
    }

    public void setCountMax(int _countMax)
    {
        countMax = _countMax;
    }

    public void setTargetId(int _targetId)
    {
        targetId = _targetId;
    }

    public void setDayMax(String _dayMax)
    {
        dayMax = _dayMax;
    }

    protected int id;
    protected String number;
    protected int point;
    protected int count;
    protected String date;
    protected int countMax;
    protected int targetId;
    protected String dayMax;
}
