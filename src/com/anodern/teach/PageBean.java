package com.anodern.teach;

import java.util.List;

public class PageBean {
    private int curPage;    //当前页数
    private int totalPages; //总页数
    private int totalRows;  //总行数
    private int pageSize;   //每页显示行数
    private List data;      //每页显示的数据
    
    public int getCurPage() {
        return curPage;
    }
    
    public void setCurPage(int curPage) {
        this.curPage = curPage;
    }
    
    public int getTotalPages() { return totalPages; }
    
    public void setTotalPages(int totalPages) {
        this.totalPages = totalPages;
    }
    
    public int getTotalRows() {
        return totalRows;
    }
    
    public void setTotalRows(int totalRows) {
        this.totalRows = totalRows;
    }
    
    public int getPageSize() {
        return pageSize;
    }
    
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
    
    public List getData() {
        return data;
    }
    
    public void setData(List data) {
        this.data = data;
    }
}
