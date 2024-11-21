<#assign avatarImgPath = "public/img/image-avatar.png" />
<#macro page users>
    <div style="background-color: #f8f5f0; color: #000000; display: flex; flex-direction: column; width: 100%"  id="main-page">
      <h1 style="margin-left: 30px">Overview</h1>
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
      <div id="second-section" style="display: flex; height: 80%;">
        <div id="user-list-pane">
          <h3 style="margin: 20px 0 10px 30px">List of users</h3>
          <div id="user-list">
            <#list users as user>
              <div id="list-card" style="display: flex; border-bottom: 1px solid #d3d3d3; margin: 10px 30px 5px 25px; padding: 10px 0; height: 10%; justify-content: space-between">
                <div id="user-profile-details" style="display: flex; justify-content: flex-start; align-items: center; width: 50%; padding-left: 5px">
                  <img style="border: 1px solid #000000; border-radius: 50%" src="${avatarImgPath}" alt="" width="10%" height="50%">
                  <span style="margin-left: 10px">
                    <#if user.name != "">
                      ${user.name}
                    <#else>
                      ${user.username}
                    </#if>
                    </span>
                </div>
                <div style="width: 30%; display: flex; flex-direction: column; align-items: flex-end; justify-content: center; padding-right: 5px">
                  <span style="margin-bottom: 5px; color: #00fa9a; font-size: large">
                    <#if user.location != "">
                      ${user.location}
                    <#else>
                      N/A
                    </#if>
                  </span>
                  <span>
                    <#if user.joined != "">
                      ${user.joined}
                    <#else>
                      N/A
                    </#if>
                  </span>
                </div>
              </div>
            <#else>
              <p style="margin: 20px 0 10px 30px">No Users</p>
            </#list>
          </div>
        </div>
        <div class="converter-container">
          <div class="amount-input">
            <label for="amount">Amount</label>
            <div class="amount-controls">
              <button class="minus-btn">-</button>
              <input type="number" id="amount" />
              <button class="plus-btn">+</button>
            </div>
          </div>

          <div class="currency-select">
            <div class="select-box">
              <label for="currency-from">Select From</label>
              <select id="currency-from">
                <option value="USD">US Dollar (USD)</option>
                <option value="EUR">Euro (EUR)</option>
                <option value="JPY">Japanese Yen (JPY)</option>
              </select>
            </div>
            <div class="swap-icon">
              <span>&#8646;</span>
            </div>
            <div class="select-box">
              <label for="currency-to">Select To</label>
              <select id="currency-to" >
                <option value="USD">US Dollar (USD)</option>
                <option value="EUR">Euro (EUR)</option>
                <option value="JPY">Japanese Yen (JPY)</option>
              </select>
            </div>
          </div>
          <div>
            <button id="btn-convert">Convert</button>
          </div>
          <div id="result" class="conversion-result">
            <p><strong>100 BTC = $6,852,278</strong></p>
            <span>Last updated at 05:55 AM UTC</span>
          </div>
        </div>
      </div>
    </div>
</#macro>