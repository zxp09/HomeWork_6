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
    private OleDbDataAdapter da;
    static DataSet datasetF = new DataSet();
    static int RecordIndex;
    private String sql = null;
    public void OpenDatabase()
    {
        conn = new OleDbConnection();
        conn.ConnectionString=  "Provider = Microsoft.Jet.OLEDB.4.0; Data Source = " +
Server.MapPath("`App_Data\\UniversityDB.mdb");
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
    public void ShowRecord(int index)
    {
        
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}