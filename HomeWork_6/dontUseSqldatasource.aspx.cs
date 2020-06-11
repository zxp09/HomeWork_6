using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class dontUseSqldatasource : System.Web.UI.Page
{
    private OleDbConnection conn = null;
    private OleDbCommand cmd = null;
    //    private OleDbDataAdapter da;
    //    static DataSet datasetF = new DataSet();
    //    static int RecordIndex;
    //    private String sql = null;
    public void OpenDatabase()
    {
        conn = new OleDbConnection();
        conn.ConnectionString = "Provider = Microsoft.Jet.OLEDB.4.0; Data Source = " +
Server.MapPath("App_Data\\UniversityDB.mdb");
        if (conn.State == ConnectionState.Closed)
        {
            conn.Open();
        }
    }
    public int ExecuteDB(String sql)
    {
        OpenDatabase();
        cmd = new OleDbCommand(sql, conn);
        int ret = cmd.ExecuteNonQuery();
        conn.Close();
        if (ret == 0)
            return (0);
        else
            return (1);
    }
    //    public void ShowRecord(int index)
    //    {
    //        TextBox1.Text = datasetF.Tables["QryData"].Rows[index]["FacSSN"].ToString();
    //        TextBox2.Text = datasetF.Tables["QryData"].Rows[index]["FacFirstName"].ToString();
    //        TextBox3.Text = datasetF.Tables["QryData"].Rows[index]["FacLastName"].ToString();
    //        TextBox4.Text = datasetF.Tables["QryData"].Rows[index]["FacCity"].ToString();
    //        TextBox5.Text = datasetF.Tables["QryData"].Rows[index]["FacState"].ToString();
    //        TextBox6.Text = datasetF.Tables["QryData"].Rows[index]["FacDept"].ToString();
    //        TextBox7.Text = datasetF.Tables["QryData"].Rows[index]["FacRank"].ToString();
    //        TextBox8.Text = datasetF.Tables["QryData"].Rows[index]["FacSalary"].ToString();
    //        TextBox9.Text = datasetF.Tables["QryData"].Rows[index]["FacSupervisor"].ToString();
    //        TextBox10.Text = datasetF.Tables["QryData"].Rows[index]["FacHireDate"].ToString();
    //        TextBox11.Text = datasetF.Tables["QryData"].Rows[index]["FacZipCode"].ToString();
    //    }
    protected void Page_Load(object sender, EventArgs e)
    {
        //OleDbConnection conn = new OleDbConnection();
        //conn = new OleDbConnection();
        //conn.ConnectionString = "Provider = Microsoft.Jet.OLEDB.4.0; Data Source = " + Server.MapPath("App_Data\\UniversityDB.mdb");
        //conn.Open();
        OpenDatabase();

        OleDbCommand oleDbCommand = new OleDbCommand("select * from student",conn);
        
        
        OleDbDataAdapter dbDataAdapter = new OleDbDataAdapter();
        dbDataAdapter.SelectCommand = oleDbCommand;
        DataSet dataSet = new DataSet();
        dbDataAdapter.Fill(dataSet);
        GridView1.DataSource = dataSet.Tables[0].DefaultView;
        GridView1.DataBind();
        conn.Close();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e) //再添加一个detailview作为新增或编辑（未被调用）
    {
        GridViewRow row = GridView1.SelectedRow;
        SqlDataSource1.FilterExpression = " [StdSSN] = '" + row.Cells[1].Text + "'";
        //OleDbCommand sqlInsertCommand = new OleDbCommand();
        //sqlInsertCommand.CommandText = @"insert into Student values(@ssn,@firstname,@lastname,@city,@state,@zip,@major,@class,@gpa);";
        //sqlInsertCommand.Connection = conn;
        //String sql = "Insert into student values('" 
        //    + GridView1.SelectedRow.Cells[0].Text.ToString().Trim() 
        //    + "','" + GridView1.SelectedRow.Cells[1].Text.ToString().Trim()
        //    + "','" + GridView1.SelectedRow.Cells[2].Text.ToString().Trim()
        //    + "','" + GridView1.SelectedRow.Cells[3].Text.ToString().Trim()
        //    + "','" + GridView1.SelectedRow.Cells[4].Text.ToString().Trim()
        //    + "','" + GridView1.SelectedRow.Cells[5].Text.ToString().Trim()
        //    + "','" + GridView1.SelectedRow.Cells[6].Text.ToString().Trim()
        //    + "','" + GridView1.SelectedRow.Cells[7].Text.ToString().Trim()
        //    + "','" + GridView1.SelectedRow.Cells[8].Text.ToString().Trim()
        //    + "','" + GridView1.SelectedRow.Cells[9].Text.ToString().Trim() + "')";
        //ExecuteDB(sql);
        //OleDbParameterCollection parameter = sqlInsertCommand.Parameters;
        //parameter.Add(new OleDbParameter("@ssn", OleDbType.VarWChar, 9, "StdSSN"));
        //parameter.Add(new OleDbParameter("@firstname", OleDbType.VarWChar, 30, "StdFirstName"));
        //parameter.Add(new OleDbParameter("@lastname", OleDbType.VarWChar, 50, "StdLastName"));
        //parameter.Add(new OleDbParameter("@city", OleDbType.VarWChar, 50, "StdCity"));
        //parameter.Add(new OleDbParameter("@state", OleDbType.VarWChar, 2, "StdSSN"));
        //parameter.Add(new OleDbParameter("@zip", OleDbType.VarWChar, 9, "StdZip"));
        //parameter.Add(new OleDbParameter("@major", OleDbType.VarWChar, 10, "StdMajor"));
        //parameter.Add(new OleDbParameter("@class", OleDbType.VarWChar, 6, "stdClass"));
        //parameter.Add(new OleDbParameter("@gpa", OleDbType.VarChar, 2, "stdSSN"));

    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        
    }

    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {

    }

    protected void DetailsView1_ItemDeleting(object sender, DetailsViewDeleteEventArgs e)
    {
        //String sql = "update enrollment,student set enrollment.StdSSN="+"''"+" where student.StdSSN=enrollment.StdSSN";
        //String sql = "delete from enrollment inner join student on enrollment.StdSSN = student.StdSSN where enrollment.StdSSN = student.StdSSN";
        String sql = "delete enrollment from enrollment,student where student.StdSSN=enrollment.StdSSN";
        ExecuteDB(sql);
        String deletesql = "delete from student where StdSSN='" + e.Values[0].ToString().Trim() + "'";
        ExecuteDB(deletesql);
    }
}