<#import "./components/exchange/exchange.ftl" as Exchange />
<#import "./components/news/news.ftl" as News />

<#macro report>
  <div class="currency-content">
    <@Exchange.page />
  <div>
</#macro>
