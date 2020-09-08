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
            case "putedit":{
                System.out.println("编辑发布");
                CselRangeDB cselRangeDB=new CselRangeDB();
                SelectRange c=cselRangeDB.getEntity(request.getParameter("id"));
                request.setAttribute("range", c);
                cselRangeDB.close();
        
                request.getRequestDispatcher("mstudent-edit.jsp").forward(request, response);
                break;
            }
            case "puteditok":{
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
            
            case "add":{
                //添加选课信息
                int sno;
                try{
                    sno= Integer.parseInt(request.getParameter("sno"));
                }catch(Exception e){
                    out.println("<script>alert('输入错误！');history.go(-1);</script>");
                    return;
                }
                String sname=request.getParameter("sname");
                String sex=request.getParameter("sex");
                String birthday=request.getParameter("birthday");
                String nation=request.getParameter("nation");
                String grade=request.getParameter("grade");
                String secoll=request.getParameter("secoll");
                String spec=request.getParameter("spec");
                String sclass=request.getParameter("sclass");
            
                Student stu=new Student();
                stu.setSno(sno);
                stu.setSname(sname);
                stu.setSex(sex);
                stu.setBirthday(birthday);
                stu.setNation(nation);
                stu.setGrade(grade);
                stu.setSecoll(secoll);
                stu.setSpec(spec);
                stu.setSclass(sclass);
                stu.setPass("e10adc3949ba59abbe56e057f20f883e");
            
                StudentDB studentDB=new StudentDB();
                studentDB.add(stu);
                studentDB.close();
                response.sendRedirect("student");
                break;
            }
            case "edit":{
                System.out.println("编辑");
            
                StudentDB studentDB=new StudentDB();
                Student c=studentDB.getEntity(request.getParameter("sno"));
                request.setAttribute("stu", c);
                studentDB.close();
            
                request.getRequestDispatcher("mstudent-edit.jsp").forward(request, response);
                break;
            }
            case "editre":{
                System.out.println("编辑提交");
            
                int sno,oldsno;
                try{
                    sno= Integer.parseInt(request.getParameter("sno"));
                    oldsno= Integer.parseInt(request.getParameter("oldsno"));
                }catch(Exception e){
                    out.println("<script>alert('输入错误！');history.go(-1);</script>");
                    return;
                }
                String sname=request.getParameter("sname");
                String sex=request.getParameter("sex");
                String birthday=request.getParameter("birthday");
                String nation=request.getParameter("nation");
                String grade=request.getParameter("grade");
                String secoll=request.getParameter("secoll");
                String spec=request.getParameter("spec");
                String sclass=request.getParameter("sclass");
            
                Student stu=new Student();
                stu.setSno(sno);
                stu.setSname(sname);
                stu.setSclass(sclass);
            
                StudentDB studentDB=new StudentDB();
                studentDB.update(oldsno,stu);
                studentDB.close();
                response.sendRedirect("student");
                break;
            }
            case "del":{
                System.out.println("删除");
            
                int sno;
                try{
                    sno= Integer.parseInt(request.getParameter("sno"));
                }catch(Exception e){
                    out.println("<script>alert('输入错误！');history.go(-1);</script>");
                    return;
                }
            
                StudentDB studentDB=new StudentDB();
                int a=studentDB.delete(sno);
                studentDB.close();
            
                if(a>0){
                    out.println("<script>alert('删除成功');window.location.href='student';</script>");
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
                PageBean cpg=courseDB.getAllPage(sql.toString());
                courseDB.close();
                
                
                request.setAttribute("pageBean", cpg);
                request.setAttribute("year", tMap.get("year"));
                request.setAttribute("id", tMap.get("id"));
        
                request.getRequestDispatcher("scsel-detail.jsp").forward(request, response);
                break;
            }case "s-add":{
                //添加选课信息
                User u=(User)request.getSession().getAttribute("user");
                
                String sno=u.getId();
                String id=request.getParameter("id");
                String cno=request.getParameter("cno");
                String year=request.getParameter("year");
        
                SelectTemp selTemp=new SelectTemp();
                selTemp.setCno(cno);
                selTemp.setSno(sno);
                selTemp.setRangeId(id);
                selTemp.setYear(year);
        
                CselTempDB db=new CselTempDB();
                db.add(selTemp);
                db.close();
                response.sendRedirect("csel");
                break;
            }
            case "s-sel-res":{
                User u=(User)request.getSession().getAttribute("user");
    
                if(u.getLevel()==2){String sno=u.getId();
                    int curPage=1;
                    CselDB entityDB = new CselDB();
                    request.setAttribute("pageBean", entityDB.getAllPage(curPage,"SELECT * FROM viewCselTemp WHERE sno="+sno));
                    entityDB.close();
                    request.getRequestDispatcher("scsel-result.jsp").forward(request, response);
                    
                }else {
                
                }
                
            }
            default:{
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
