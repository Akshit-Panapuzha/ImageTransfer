using ImageTransfer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ImageTransfer
{
    public partial class LoadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = "";
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if ((FileTpUpload.PostedFile != null) && (FileTpUpload.PostedFile.ContentLength > 0))
            {
                string fileName = System.IO.Path.GetFileName(FileTpUpload.PostedFile.FileName);
                string base64StringImage = GetImageinBase64();
                var imageToSend = new ImageModel();
                imageToSend.ImageName = fileName;
                imageToSend.Base64Image = base64StringImage;
                using (var client = new System.Net.Http.HttpClient())
                {
                    client.BaseAddress = new Uri("http://localhost:61433/api/values");
                    var postTask = client.PostAsJsonAsync<ImageModel>("values", imageToSend);
                    postTask.Wait();
                    var result = postTask.Result;
                    if (result.IsSuccessStatusCode)
                    {
                        Label2.Text = "Image Transfered succesfully";
                    }
                    else
                    {
                        Label2.Text = result.ReasonPhrase.ToString();
                    }
                }
            }
        }

        private string GetImageinBase64()
        {
            System.IO.Stream fs = FileTpUpload.PostedFile.InputStream;
            System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
            Byte[] bytes = br.ReadBytes((Int32)fs.Length);
            string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
            return base64String;
        }
    }
}