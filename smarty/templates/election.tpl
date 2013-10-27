{extends file="main.tpl"}

{block name=title}Otevřené volby{/block}

{block name=header}
  <h1 class="jqm-logo"><a href="/"><img src="images/logo.png" alt="Otevřené volby" title="Otevřené volby" /></a></h1>
{/block}

{block name=content}
  <div class="jqm-home-welcome">
		<h2>Data a analýzy k volbám - {$election['name']}</h2>
		<p class="jqm-intro">Data ve strojově čitelném formátu</p>
		<p class="jqm-intro"><small>Přehledně, strukturovaně, zdarma.</small></p>
  </div> <!-- jqm-home-welcome -->
 
  <ul data-role="listview" data-inset="true" data-theme="d" data-icon="false" class="jqm-list jqm-home-list"> 
  {foreach $files as $year=>$yearar}
    <li><h3>{$year}</h3></li>
    {foreach $yearar as $item}
      <li>
        <a target="_blank" href="./data/{$item['name']}" data-ajax="false">{$item['name']} <span class="ui-li-count">{$item['size']}</span></a>
      </li>
    {/foreach}
  
  {/foreach}
  </ul>

{/block}

{block name=footer}
 {include file="footer.tpl"}
{/block}
