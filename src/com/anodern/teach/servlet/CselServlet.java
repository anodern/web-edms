package com.anodern.teach.servlet;

import com.anodern.teach.*;
import com.anodern.teach.entity.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(value = "/csel",name = "CselServlet")
public class CselServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out=response.getWriter();
    
        String action = request.getParameter("action");
        if(action==null) action="";
        switch(action){
            case "put":{
                //发布选课通知
                String name=request.getParameter("name");
                String srange=request.getParameter("srange");
                String crange=request.getParameter("crange");
                String time=request.getParameter("time");
                String start=request.getParameter("start");
                String end=request.getParameter("end");
        
                SelectRange entity=new SelectRange();
                entity.setName(name);
                entity.setSrange(srange);
                entity.setCrange(crange);
                entity.setTime(time);
                entity.setStart(start);
                entity.setEnd(end);
        
                CselRangeDB entityDB=new CselRangeDB();
                entityDB.add(entity);
                entityDB.close();
                response.sendRedirect("csel");
                break;
            }
            case "result":{
                //选课结果
                String id=request.getParameter("id");
                String srange=request.getParameter("srange");
                String crange=request.getParameter("crange");
        
                SelectRange entity=new SelectRange();
                entity.setSrange(srange);
                entity.setCrange(crange);
        
                CselTempDB entityDB=new CselTempDB();
                request.setAttribute("pageBean", entityDB.getAllPage("SELECT * FROM viewcseltemp WHERE rangeid="+id));
                entityDB.close();
                request.getRequestDispatcher("mcsel-result.jsp").forward(request, response);
                break;
            }
            case "do":{
                //批量选课
                String id = request.getParameter("id");
//                CselRangeDB cselRangeDB=new CselRangeDB();
//                SelectRange c=cselRangeDB.getEntity(request.getParameter("id"));
                request.setAttribute("id", id);
//                cselRangeDB.close();
                request.getRequestDispatcher("msel-dosel.jsp").forward(request, response);
                
            }break;
            case "do-ok":{
                //批量选课提交
                String id=request.getParameter("id");
                String time=request.getParameter("time");
                String week=request.getParameter("week");
                String year=request.getParameter("year");
                String tno=request.getParameter("tno");
                String rno=request.getParameter("rno");
        
                CselTempDB cselTempDB=new CselTempDB();
                CselDB cDB=new CselDB();
                List sl = cselTempDB.getList("SELECT * FROM cseltemp WHERE rangeid=?",new String[]{id});
                System.out.println(sl.size());
                for(int i = 0;i < sl.size();i++){
                    Select sel=new Select();
                    sel.setSno(Integer.parseInt((String)((HashMap)sl.get(i)).get("sno")));
                    sel.setCno(Integer.parseInt((String)((HashMap)sl.get(i)).get("cno")));
                    sel.setRno(rno);
                    sel.setTno(Integer.parseInt(tno));
                    sel.setTime(time);
                    sel.setYear(year);
                    sel.setWeek(week);
                    cDB.add(sel);
                }
                cselTempDB.close();
                cDB.close();
                response.sendRedirect("csel");
            }break;
            case "dos":{
                //批量选课
                String sclass=request.getParameter("sclass");
                int cno=Integer.parseInt(request.getParameter("cno"));
                String time=request.getParameter("time");
                String year=request.getParameter("year");
                int tno=Integer.parseInt(request.getParameter("t"));
                String rno=request.getParameter("r");
                
                StudentDB sDB=new StudentDB();
                CselDB cDB=new CselDB();
                List sl = sDB.getList("SELECT * FROM student WHERE sclass=?",new String[]{sclass});
                for(int i = 0;i < sl.size();i++){
                    Select sel=new Select();
                    sel.setSno(Integer.parseInt((String)((HashMap)sl.get(i)).get("sno")));
                    sel.setCno(cno);
                    sel.setRno(rno);
                    sel.setTno(tno);
                    sel.setTime(time);
                    sel.setYear(year);
                    cDB.add(sel);
                }
            }
            case "edit":{
                System.out.println("编辑发布");
                CselRangeDB cselRangeDB=new CselRangeDB();
                SelectRange c=cselRangeDB.getEntity(request.getParameter("id"));
                request.setAttribute("entity", c);
                cselRangeDB.close();
        
                request.getRequestDispatcher("msel-edit.jsp").forward(request, response);
                break;
            }
            case "editok":{
                System.out.println("编辑发布提交");
    
                String id=request.getParameter("id");
                String name=request.getParameter("name");
                String srange=request.getParameter("srange");
                String crange=request.getParameter("crange");
                String time=request.getParameter("time");
                String start=request.getParameter("start");
                String end=request.getParameter("end");
    
                SelectRange entity=new SelectRange();
                entity.setId(id);
                entity.setName(name);
                entity.setSrange(srange);
                entity.setCrange(crange);
                entity.setTime(time);
                entity.setStart(start);
                entity.setEnd(end);
    
                CselRangeDB entityDB=new CselRangeDB();
                entityDB.update(entity);
                entityDB.close();
                response.sendRedirect("csel");
                break;
            }
            
            case "del":{
                System.out.println("删除");
            
                String id= request.getParameter("id");
            
                CselRangeDB cselRangeDB=new CselRangeDB();
                int a=cselRangeDB.delete(id);
                cselRangeDB.close();
                
                if(a>0){
                    out.println("<script>alert('删除成功');window.location.href='csel';</script>");
                }else {
                    out.println("<script>alert('删除失败');history.go(-1);</script>");
                }
                return;
            }
            
            //学生-选课详情
            case "s-sel":{
                System.out.println("选课详情");
                
                String id=request.getParameter("id");
                
                CourseDB courseDB=new CourseDB();
                System.out.println("id="+id);
                Map tMap = courseDB.getMap("SELECT crange,year FROM cselRange WHERE id=?",new String[]{id});
                String[] cranges=((String)tMap.get("crange")).split(",");
                
                StringBuilder sql= new StringBuilder("SELECT * FROM course WHERE cno=0");
                for(int i = 0;i < cranges.length;i++){
                    sql.append(" OR cno=");
                    sql.append(cranges[i]);
                }
                PageBean pageBean=courseDB.getAllPage(sql.toString());
                courseDB.close();
                
                
                request.setAttribute("pageBean", pageBean);
                request.setAttribute("year", tMap.get("year"));
                //request.setAttribute("id", tMap.get("id"));
                request.setAttribute("id", id);
        
                request.getRequestDispatcher("scsel-detail.jsp").forward(request, response);
                break;
            }case "s-add":{
                //添加选课信息
                User u=(User)request.getSession().getAttribute("user");
                
                String sno=u.getId();
                String id=request.getParameter("id");
                String cno=request.getParameter("cno");
                String year=request.getParameter("year");
                //if(year==null || year.equals("")) year="2020";
        
                SelectTemp selTemp=new SelectTemp();
                selTemp.setCno(cno);
                selTemp.setSno(sno);
                selTemp.setRangeId(id);
                selTemp.setYear(year);
        
                CselTempDB db=new CselTempDB();
                db.add(selTemp);
                System.out.println("添加");
                db.close();
                response.sendRedirect("csel");
                break;
            }
            case "s-sel-res":{
                User u=(User)request.getSession().getAttribute("user");
                if(u.getLevel()==2){
                    String sno=u.getId();
                    int curPage=1;
                    CselTempDB entityDB = new CselTempDB();
                    request.setAttribute("pageBean", entityDB.getAllPage(curPage,"SELECT * FROM viewCselTemp WHERE sno="+sno));
                    entityDB.close();
                    request.getRequestDispatcher("scsel-result.jsp").forward(request, response);
                }else {
                    //非学生访问
                    response.sendRedirect("csel");
                }
            }
            case "s-sel-del":{
                System.out.println("退选");
        
                String sno,cno,year;
                sno=request.getParameter("sno");
                cno=request.getParameter("cno");
                year=request.getParameter("year");
                System.out.println(sno+"|"+cno+"|"+year);
        
                CselTempDB entityDB=new CselTempDB();
                int a=entityDB.delete(sno,cno,year);
                entityDB.close();
        
                if(a>0){
                    out.println("<script>alert('退选成功');window.location.href='csel';</script>");
                }else {
                    out.println("<script>alert('退选失败');history.go(-1);</script>");
                }
                return;
            }
            default:{
                //默认显示选课浏览
                User u=(User)request.getSession().getAttribute("user");
                if(u==null){ System.out.println("user为空");response.sendRedirect("login.jsp");return;}
                switch(u.getLevel()){
                    case 0:{
                        String page = request.getParameter("page");
                        int curPage = 1;
                        if (page != null && page.length() > 0) {
                            curPage = Integer.parseInt(page);
                        }
                        CselRangeDB entityDB = new CselRangeDB();
                        request.setAttribute("pageBean", entityDB.getPage(curPage));
                        entityDB.close();
                        request.getRequestDispatcher("msel.jsp").forward(request, response);
                        break;
                    }
                    case 1:{
                        String page = request.getParameter("page");
                        int curPage = 1;
                        if (page != null && page.length() > 0) {
                            curPage = Integer.parseInt(page);
                        }
                        CselRangeDB entityDB = new CselRangeDB();
                        request.setAttribute("pageBean", entityDB.getPage(curPage));
                        entityDB.close();
                        request.getRequestDispatcher("tscore.jsp").forward(request, response);
                        break;
                    }
                    case 2:{
                        String page = request.getParameter("page");
                        int curPage = 1;
                        if (page != null && page.length() > 0) {
                            curPage = Integer.parseInt(page);
                        }
                        
                        StudentDB sDB=new StudentDB();
                        Map tMap = sDB.getMap("SELECT sclass FROM student WHERE sno=?",new String[]{u.getId()});
                        String sclass=(String)tMap.get("sclass");
                        
                        CselRangeDB entityDB = new CselRangeDB();
                        request.setAttribute("pageBean", entityDB.getAllPage(curPage,"SELECT * FROM cselRange WHERE srange LIKE '%"+sclass+"%'"));
                        entityDB.close();
                        request.getRequestDispatcher("scsel.jsp").forward(request, response);
                        break;
                    }
                }
            }
        }
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
