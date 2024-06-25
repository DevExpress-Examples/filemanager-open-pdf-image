<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/441195239/21.2.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T1055324)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->

# The File Manager for Web Forms - How to open PDF files and images in a pop-up window

This example uses an [ASPxFileManager](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxFileManager) to display folder contents. Users can click image and **PDF** files to preview their content in a pop-up window. The preview functionality uses the [ASPxPopupControl](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPopupControl?p=netframework),  [ASPxImage](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxImage), and [ASPxPanel](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPanel?p=netframework) controls. 

![Sample](./Sample.png)

## Files to Look At

* [Default.aspx](./CS/OpenPdfOrImage/Default.aspx) (VB: [Default.aspx](./VB/OpenPdfOrImage/Default.aspx))
* [Default.aspx.cs](./CS/OpenPdfOrImage/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/OpenPdfOrImage/Default.aspx.vb))

## Implementation Details

The [ASPxFileManager](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxFileManager) displays a list of image and **PDF** files. When users attempt to open a file, the control raises the [ASPxFileManager.SelectedFileOpened](https://docs.devexpress.com/AspNet/js-ASPxClientFileManager.SelectedFileOpened) event. The handler determines the file type and shows the preview. 

The handler activates the [ASPxPopupControl](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPopupControl?p=netframework) and displays one of the following embedded controls depending on the file type:

- The [ASPxImage](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxImage) control. Displays images.
- The [ASPxPanel](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPanel?p=netframework) control. Uses the [`<embed>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/embed) element to display **PDF** files.

## Documentation

* [ASPxImage Class](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxImage)
* [ASPxFileManager Class](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxFileManager)
* [ASPxPanel Class](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPanel)
* [Recommended way to embed PDF in HTML - Stack Overflow](https://stackoverflow.com/questions/291813/recommended-way-to-embed-pdf-in-html#comment17379530_291823)
<!-- feedback -->
## Does this example address your development requirements/objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=filemanager-open-pdf-image&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=filemanager-open-pdf-image&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
