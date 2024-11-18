<#macro item icon title link currentPage>

  <#assign isActive = (link == currentPage) />
  <#assign superLink = "?currentPage=${link}" />
 
  <li class="sidebar-item">
      <a href="${superLink}" class="sidebar-link  <#if isActive>sidebar-active</#if>">
        <i class="fas fa-sharp ${icon} fa-xs <#if isActive>fa-active</#if>"></i>
          <span>${title}</span>
      </a>
    </li>
</#macro>
