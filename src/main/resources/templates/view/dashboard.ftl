<#assign cssPath = "public/css/index.css" />
<#assign avatarImgPath = "public/img/image-avatar.png" />
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href="${cssPath}" />
    <title></title>
  </head>
  <body style="display: flex">
    <div style="width: 20%; background-color: #201f24; padding: 10px" id="side-bar">
      <h3>Finance</h3>
    </div>
    <div style="background-color: #f8f5f0; display: flex; flex-direction: column; width: 80%"  id="main-page">
      <h1>Overview</h1>
      <div id="info-section" style="display: flex; justify-content: space-evenly; height: 20%; margin: 10px">
        <div class="info-display-pane">
          <p id="title">Current Balance</p>
          <p id="value">$4,836.00</p>
        </div>
        <div class="info-display-pane">
          <p id="title">Income</p>
          <p id="value">$3,814.00</p>
        </div>
        <div class="info-display-pane">
          <p id="title">Expenses</p>
          <p id="value">$1,700.50</p>
        </div>
      </div>
      <div id="second-section" style="display: flex; height: 80%; background-color: aquamarine">
        <div id="user-list-pane">
          <h3 style="text-align: center">List of users</h3>
          <div id="user-list">
            <div id="list-card" style="display: flex; background-color: yellow; height: 10%">
              <div id="user-profile-details" style="display: flex; justify-content: center; align-items: center; background-color: blue; width: 30%">
                <img src="${avatarImgPath}" alt="" width="20%" height="70%">
                <span>Emma Richardson</span>
              </div>
              <div style="background-color: aquamarine">hi</div>
            </div>
          </div>
        </div>
        <div style="background-color: black; width: 50%; height: 98%; margin: 0 10px 10px 10px;">
          <h3>Other section</h3>
        </div>
      </div>
    </div>
  </body>
</html>
