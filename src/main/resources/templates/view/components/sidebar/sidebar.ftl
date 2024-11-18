<#import "./component/sidebarItem.ftl" as SidebarItem />

<#assign sidebarItems = [
   {"title": "Overview", "icon": "fa-home", "link": ""},
   {"title": "Currency-Report", "icon": "fa-chart-line", "link": "currency-report"}] />

<#macro sidebar currentPage>
    <div class="sidebar">
      <div class="sidebar-header">
        <div class="sidebar-header-title">finance</div>
      </div>

      <div class="sidebar-menu">
      <ul>
        <#list sidebarItems as item>
          <@SidebarItem.item
              icon=item.icon
              title=item.title
              link=item.link
              currentPage=currentPage
              />
        </#list>
        </ul>
      </div>
    <div>
</#macro>
