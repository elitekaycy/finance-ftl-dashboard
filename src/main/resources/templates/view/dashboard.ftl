<#import "/components/sidebar/sidebar.ftl" as Sidebar />
<#assign cssPath = "/public/css/index.css" />

<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href="${cssPath}" />
    <title></title>
  </head>
  <body> 
   <@Sidebar.sidebar />
  </body>
</html>
