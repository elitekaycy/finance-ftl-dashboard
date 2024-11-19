<#assign chatUrl = "https://www.tradingview.com/chart/" />

<#macro page>
<div class="chart-content">
   <div class="tradingview-widget-container" style="height:100%;width:100%;border:none !important;"> 
   <div class="tradingview-widget-container__widget" style="height:calc(100% - 32px);width:100%;border:none !important;background-color:white !important;"></div>
   <div class="tradingview-widget-copyright" style="border:none !important;">
       <a href="https://www.tradingview.com/" rel="noopener nofollow" target="_blank">
           <span class="blue-text">Track all markets on TradingView</span>
       </a>
   </div>
   <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-advanced-chart.js" async>
   {
       "autosize": true,
       "symbol": "NASDAQ:AAPL", 
       "interval": "D",
       "timezone": "Etc/UTC",
       "theme": "light",
       "style": "1",
       "locale": "en",
       "allow_symbol_change": true,
       "calendar": false,
       "support_host": "https://www.tradingview.com",
       "backgroundColor": "rgba(255, 255, 255, 1)"
   }
   </script>
</div>
</div>
</#macro>

