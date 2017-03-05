using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
/// <summary>
/// Summary description for Instractor
/// </summary>
public static class InstructorLayer
{
    public static DataSet SelectStudentsId(int St_Id)
    {
        string s = @"Select St_Id,St_Name From Student where St_Id=" + St_Id.ToString();
        return DataAccessLayer.SelectCommand(s);
    }
    public static DataSet SelectStudentsIdAndDepartment(int St_Id)
    {
        string s = @"select i.*,ii.Dept_Name 
            from Student i , Department ii 
            where  i.Dept_Id=ii.Dept_Id AND i.St_Id= " + St_Id.ToString();
        return DataAccessLayer.SelectCommand(s);
    }
    public static DataSet SelectStudentCourseAndInstructor(int St_Id)
    {
        string s = @"select ii.Crs_Name,iii.Ins_Name,i.St_Grade
            from St_Ins_Crs i , Course ii,Instructor iii
            where  ii.Crs_Id= i.Crs_Id and iii.Ins_Id=i.Ins_Id and i.St_Id="+ St_Id.ToString();
        return DataAccessLayer.SelectCommand(s);
    }

    public static DataSet SelectStudentExamAndAnser(int St_Id,int Ex_Id)
    {

        string s = @" select q.*, s.St_Answer ,(select q_choice from Q_Answers qs where q.Q_Id = qs.Q_Id and Q_Answer = 'a') Answer1,
	        (select q_choice from Q_Answers qs where q.Q_Id = qs.Q_Id and Q_Answer = 'b') Answer2,
	        (select q_choice from Q_Answers qs where q.Q_Id = qs.Q_Id and Q_Answer = 'c') Answer3,
	        (select q_choice from Q_Answers qs where q.Q_Id = qs.Q_Id and Q_Answer = 'd') Answer4
             from question q, St_Ex_Q s
             where s.Q_Id = q.Q_Id and s.St_Id =" + St_Id.ToString() + " and s.Ex_Id =" + Ex_Id.ToString();
        return DataAccessLayer.SelectCommand(s);
    }

    public static DataSet SelectStudentExamss(int St_Id)
    {
        string s = @"select  distinct i.Ex_Id ,ii.*,iii.Crs_Name,iiii.St_Grade
                   from St_Ex_Q i ,Exam ii,Course iii ,St_Ins_Crs iiii
                   where ii.Ex_Id=i.Ex_Id  and iii.Crs_Id=ii.Crs_Id and iiii.Crs_Id=ii.Crs_Id 
                    and i.St_Id=iiii.St_Id and i.St_Id="+ St_Id.ToString();
        return DataAccessLayer.SelectCommand(s);
    }
    public static DataSet SelectInstructorIdAndName()
    {
        string s = @"SELECT Ins_Id,Ins_Name FROM Instructor";
        return DataAccessLayer.SelectCommand(s);
    }
    
    public static DataSet SelectInstructorByCourseID(int Crs_Id)
    {
          string s = @"select distinct i.Ins_Id,i.Ins_Name
                from Instructor i,St_Ins_Crs ii
                where i.Ins_Id=ii.Ins_Id and ii.Crs_Id="+ Crs_Id.ToString();
         return DataAccessLayer.SelectCommand(s);
    }
    public static DataSet SelectAllInstructor()
    {
        string s = @"SELECT Instructor.*,Department.Dept_Name
                    FROM Instructor
                    JOIN Department ON Instructor.Dept_Id = Department.Dept_Id";
        return DataAccessLayer.SelectCommand(s);
    }

    public static int InsertInstructor(string Ins_Name, int? Ins_Age, string Ins_Address, int Dept_Id,string Ins_Salary)
    {
        string s = "Insert_Instructor";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@Ins_Name", Ins_Name),
            new SqlParameter("@Ins_Age", Ins_Age??SqlInt32.Null),
            new SqlParameter("@Ins_Address", Ins_Address??SqlString.Null) ,
            new SqlParameter("@Dept_Id", Dept_Id) ,
            new SqlParameter("@Ins_Salary", Ins_Salary??SqlString.Null)
        };
        return DataAccessLayer.DMLCommandSP(s, p);
    }
    public static int UpdateInstructor(int Ins_Id, string Ins_Name, int? Ins_Age, string Ins_Address,  int Dept_Id, decimal? Ins_Salary)   {
        string s = "Update_Instructor";
        SqlParameter[] p = new SqlParameter[] {new SqlParameter("@Ins_Id",Ins_Id),
            
            new SqlParameter("@Ins_Name", Ins_Name),
            new SqlParameter("@Ins_Age", Ins_Age??SqlInt32.Null),
            new SqlParameter("@Ins_Address", Ins_Address??SqlString.Null) ,
            new SqlParameter("@Dept_Id", Dept_Id) ,
            new SqlParameter("@Ins_Salary", Ins_Salary??SqlDecimal.Null)

        };
        return DataAccessLayer.DMLCommandSP(s, p);
    }
    public static int InstructorUpdatePerfonalInfo(int Ins_Id, string Ins_Name, int? Ins_Age, string Ins_Address)
    {
        string s = "InstructorUpdatePerfonalInfo";
        SqlParameter[] p = new SqlParameter[] {new SqlParameter("@Ins_Id",Ins_Id),

            new SqlParameter("@Ins_Name", Ins_Name),
            new SqlParameter("@Ins_Age", Ins_Age??SqlInt32.Null),
            new SqlParameter("@Ins_Address", Ins_Address??SqlString.Null)    };
        return DataAccessLayer.DMLCommandSP(s, p);
    }
    public static int DeleteInstructor(int Ins_Id)
    {
        string s = "Delete_Instructor";
        SqlParameter[] p = new SqlParameter[] { new SqlParameter("@Ins_Id", Ins_Id) };
        return DataAccessLayer.DMLCommandSP(s, p);
    }

    public static DataSet SelectInsructorById(int id)
    {
        string s = "SELECT ii.* ,i.Dept_Name FROM Instructor ii,Department i where i.Dept_Id=ii.Dept_Id and Ins_Id=" + id.ToString();
        return DataAccessLayer.SelectCommand(s);
    }
    public static DataSet SelectIns_SalaryById(int id)
    {
        string s = "SELECT Ins_Id,Ins_Name,Ins_Salary FROM Instructor where Ins_Id=" + id.ToString();
        return DataAccessLayer.SelectCommand(s);
    }

    public static DataSet SelectInstructorSalary()
    {
        string s = "SELECT  Ins_Id,Ins_Name,Ins_Salary FROM Instructor";
           return DataAccessLayer.SelectCommand(s);
    }



}