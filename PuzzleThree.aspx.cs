using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlServerCe;
using System.Data;
using System.Linq.Expressions;



public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {


    }


    [System.Web.Services.WebMethod]
    public static string GetShapeCategories()
    {
        var javascriptSerializer = new System.Web.Script.Serialization.JavaScriptSerializer();
        DataClassesDataContext dbContext = new DataClassesDataContext();
        var shapeCategories = (from shapeCat in dbContext.tblShapeCategories
                              join shapes in dbContext.tblShapes
                              on shapeCat.ID equals shapes.ShapeCategoryID
                              select new { ShapeCategoryID = shapeCat.ID, ShapeCategoryName = shapeCat.ShapeCategory, ShapeName = shapes.Shape }).OrderBy(x => x.ShapeCategoryID);
        string jsonString = javascriptSerializer.Serialize(shapeCategories);
        
        return  jsonString;
    }


}

