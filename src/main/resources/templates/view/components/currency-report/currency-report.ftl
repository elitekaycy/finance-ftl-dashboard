<#import "./components/exchange/exchange.ftl" as Exchange />
<#import "./components/chart/chart.ftl" as Chart />
<#import "./components/news/news.ftl" as News />

<#macro report assets>
  <div class="currency-content">
    <@Chart.page />
    <@Exchange.page assets=assets/>
  <div>
</#macro>
