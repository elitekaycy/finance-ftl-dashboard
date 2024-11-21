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
    <@Overview.page (users)/>
    <script>
      document.addEventListener("DOMContentLoaded", () => {
        let btnConvert = document.getElementById("btn-convert")


        function handleCurrencyConversion() {
          const amount = document.getElementById("amount").value;
          const currencyFrom = document.getElementById("currency-from").value;
          const currencyTo = document.getElementById("currency-to").value;
          let output = document.getElementById("result");

          fetch("https://api.frankfurter.app/2024-11-21?base="+currencyFrom+"&symbols="+currencyTo)
                  .then(async(response) => {
                    const body = await response.json();
                    if(body) {
                      console.log("body", body)
                      output.innerHTML = "<p><strong>" + amount + " " + currencyFrom + " = " + (Number(amount) * Number(body.rates[currencyTo])) + "</strong></p>"+
                              "<span>Last updated at "+ body.date + "</span>";
                    }

                  });
        }

        btnConvert.addEventListener("click", handleCurrencyConversion);

      })
    </script>
  </body>
</html>
