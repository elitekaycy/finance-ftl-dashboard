<#macro page>

<#assign assets = [
  {"Asset": "BUSD Token", "Chain": "BNB Chain", "Price": 1.0, "Balance": 30.0},
  {"Asset": "KSM", "Chain": "BNB Chain", "Price": 52.38, "Balance": 0.000818},
  {"Asset": "Tether USD", "Chain": "BNB Chain", "Price": 1.0, "Balance": 675.0},
  {"Asset": "Solana", "Chain": "BNB Chain", "Price": 130.02, "Balance": 0.00805},
  {"Asset": "BTC", "Chain": "BNB Chain", "Price": 66612.02, "Balance": 0.026223916}
] />

  <div class="cr-exchange">
  <div class="cr-exchange-header">Assets</div>

  <table class="cr-exchange-table">
    <thead>
        <tr>
            <th class="icon-column">
               <i class="fa-light fa-file-lines cr-fa-dark"></i>
            </th>
            <th>Asset</th>
            <th>Chain</th>
            <th>Price</th>
            <th>Balance</th>
        </tr>
    </thead>
    <tbody>
        <#list assets as asset>
        <tr>
            <td class="icon-column">
               <i class="fa-light fa-file-lines cr-fa-dark"></i>
            </td>
            <td>${asset.Asset}</td>
            <td>${asset.Chain}</td>
            <td>${asset.Price?string("0.##")}</td>
            <td>${asset.Balance?string("0.#######")}</td>
        </tr>
        </#list>
    </tbody>
</table>
</div>
</#macro>
