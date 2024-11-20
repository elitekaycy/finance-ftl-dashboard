<#assign cssPath = "public/css/index.css" />
<#import "./components/overview/overview.ftl" as Overview />

<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href="${cssPath}" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,300,0,0&icon_names=swap_vert" />    <title></title>
  </head>
  <body style="display: flex">
    <div style="width: 20%; background-color: #201f24; padding: 10px; color: #ffffff" id="side-bar">
      <h3>Finance</h3>
    </div>
    <@Overview.page/>
  </body>
</html>
