<#import "/components/sidebar/sidebar.ftl" as Sidebar />
<#import "/components/currency-report/currency-report.ftl" as CurrencyReport />
<#assign cssPath = "/public/css/index.css" />

<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href="${cssPath}" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <title>dashboard</title>
  </head>
  <body> 
  <div class="layout">
    <@Sidebar.sidebar currentPage=currentPage />
    <#if currentPage != "currency-report">
      <div class="overview-content"> 
        hello world 
      </div>
      <#else>
       <@CurrencyReport.report assets=assets/>
    </#if>
  </div>
  </body>
</html>
