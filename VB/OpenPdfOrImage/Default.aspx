<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OpenPdfOrImage.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function OnSelectedFileOpened(s, e) {

            let filename = e.file.GetFullName();
            let extension = filename.split('.').pop();

            PopupWithDocument.Show();

            if (extension == "pdf") {
                image.SetVisible(false);
                panel.SetVisible(true);
                pdf_template.src = filename;
            }

            else {
                image.SetVisible(true);
                panel.SetVisible(false);
                image.SetImageUrl(filename);
            }
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
         <dx:ASPxFileManager ID="MyFileManager" ClientInstanceName="MyFileManager" runat="server">
                <Settings RootFolder="~\Content" ThumbnailFolder="~\Thumb\" />
             <SettingsUpload Enabled="false" />
             <ClientSideEvents SelectedFileOpened="OnSelectedFileOpened" />
         </dx:ASPxFileManager>
        <dx:ASPxPopupControl AllowResize="true" ID="PopupWithDocument" ClientInstanceName="PopupWithDocument" runat="server"  
            PopupHorizontalAlign="WindowCenter" AllowDragging="true" CloseAction="CloseButton">
            <ContentCollection>
                <dx:PopupControlContentControl runat="server">
                    <dx:ASPxImage ID="ASPxImage1" runat="server" ShowLoadingImage="true" ClientVisible="false" 
                        ClientInstanceName="image"></dx:ASPxImage>
                    <dx:ASPxPanel ID="ASPxPanel1" runat="server"  ClientVisible="false"
                        ClientInstanceName="panel">
                        <PanelCollection>
                            <dx:PanelContent>
                                <embed id="pdf_template" type='application/pdf' width="600" height="500"/>
                            </dx:PanelContent>
                        </PanelCollection>
                    </dx:ASPxPanel>
                </dx:PopupControlContentControl>
            </ContentCollection>
        </dx:ASPxPopupControl>
    </form>
</body>
</html>
