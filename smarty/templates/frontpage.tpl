{extends file="main.tpl"}

{block name=title}Otevřené volby{/block}

{block name=header}
  <h1 class="jqm-logo"><img src="http://view.jquerymobile.com/1.3.2/dist/demos/_assets/img/jquery-logo.png" alt="Otevřené volby"></h1>
{/block}

{block name=content}
  <div class="jqm-home-welcome">
		<h2>Data a analýzy ke všem volbám</h2>
		<p class="jqm-intro">Data i ve strojově čitelném formátu pro všechny volby v ČR</p>
		<p class="jqm-intro"><small>Máme je všecky.</small></p>
  </div> <!-- jqm-home-welcome -->
  
  <ul data-role="listview" data-inset="true" data-theme="d" data-icon="false" data-filter-placeholder="Search..." class="jqm-list jqm-home-list">
    {foreach from=$elections key=k item=election}
      <li><a href="./election.php?kind={$k}"><h2>{$election.name}</h2>
      <p>
      {foreach from=$election.year item=year}
        {$year}
      {/foreach}
      </p>
      </a></li>
    {/foreach}
  </ul>
{/block}

{block name=footer}
 {include file="footer.tpl"}
{/block}
