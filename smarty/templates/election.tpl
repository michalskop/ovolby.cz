{extends file="main.tpl"}

{block name=title}Otevřené volby{/block}

{block name=header}
  <h1 class="jqm-logo"><a href="/"><img src="images/logo.png" alt="Otevřené volby" title="Otevřené volby" /></a></h1>
{/block}

{block name=content}
  <div class="jqm-home-welcome">
		<h2>Data a analýzy ke všem volbám - {$election['name']}</h2>
		<p class="jqm-intro">Data ve strojově čitelném formátu</p>
		<p class="jqm-intro"><small>Máme je všecky.</small></p>
  </div> <!-- jqm-home-welcome -->
 
  <ul data-role="listview" data-inset="true" data-theme="d" data-icon="false" class="jqm-list jqm-home-list"> 
  {foreach $files as $year=>$yearar}
    <li><h3>{$year}</h3></li>
    {foreach $yearar as $item}
      <li>
        <a target="_blank" href="./data/{$item}" data-ajax="false">{$item}</a>
      </li>
    {/foreach}
  
  {/foreach}
  </ul>

{/block}

{block name=footer}
 {include file="footer.tpl"}
{/block}
