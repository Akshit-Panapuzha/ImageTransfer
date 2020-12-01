using System;

namespace ImageTransfer
{
    public partial class UploadImage : System.Web.UI.Page
    {
        protected System.Web.UI.HtmlControls.HtmlInputFile FileTpUpload;
        protected System.Web.UI.HtmlControls.HtmlInputButton btnUpload;
        protected void Page_Load(object sender, EventArgs e)
        {
        }
            override protected void OnInit(EventArgs e)
        {
            // 
            // CODEGEN: This call is required by the ASP.NET Web Form Designer.
            // 
            InitializeComponent();
            base.OnInit(e);
        }

        private void InitializeComponent()
        {
            this.btnUpload.ServerClick += new EventHandler(this.btnUpload_ServerClick);
            this.Load += new System.EventHandler(this.Page_Load);
        }
        protected void btnUpload_ServerClick(object sender, EventArgs e)
        {
            if ((FileTpUpload.PostedFile != null) && (FileTpUpload.PostedFile.ContentLength > 0))
            {
                string fn = System.IO.Path.GetFileName(FileTpUpload.PostedFile.FileName);
                string SaveLocation = Server.MapPath("Data") + "\\" + fn;
                try
                {
                    FileTpUpload.PostedFile.SaveAs(SaveLocation);
                    Response.Write("The file has been uploaded.");
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.Message);                  
                }
            }
        }
    }
}
    

    

