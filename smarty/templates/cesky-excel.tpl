{extends file="main.tpl"}

{block name=title}Otevřené volby{/block}

{block name=header}
  <h1 class="jqm-logo"><a href="/"><img src="/images/logo.png" alt="Otevřené volby" title="Otevřené volby"></a></h1>
{/block}

{block name=content}
<p>Data na serveru OtevřenéVolby.cz jsou uložené ve standardním kódování <a href="http://en.wikipedia.org/wiki/UTF-8">UTF-8</a> ve formátu <a href="http://en.wikipedia.org/wiki/Comma-separated_values">CSV</a> (comma-separated values) a následně komprimované.</p>
<p>Pokud používáte Excel v české verzi:</p>

<ol>
<li>Stažený soubor rozbalte</li>
<li>Vytvořte nový sešit.</li>
<li>Klikněte na Data - (načíst externí data) z textu.</li>
<em>Excel 2013 (podobně 2010)</em>:<br/>
<img src='images/obr-13-1.jpg'><br/>
Excel 2003 (podobně 2007):<br/>
<img src='images/obr-03-1.jpg'><br/>
<li>vyberte žádaný soubor csv</li>
<li>V prvním okně Průvodce importem zvolte jako typ soubor ze dvou nabízených možností <em>Oddělovač</em></li>
<li>Pokud se vám v náhledu dat nezobrazuje česká diakritika, zvolte si správné kódování (zde 65001: Unicode UTF-8) a klikněte na <em>další</em></li>
<img src='images/obr-13-2.jpg'><br/>
<img src='images/obr-13-3.jpg'><br/>
<li>Ve druhém okně Průvodce si zvolte správný oddělovač. Po označení <em>čárka</em> by se vaše data v náhledu měla seskupit do úhledných sloupců (jako na obr.). Pokud se tak nestane, vyzkoušejte ostatní oddělovače. Nakonec se ujistěte, že jste označili právě jeden oddělovač, klikněte na <em>Dokončit</em> a poté <em>OK</em>.</li>
<img src='images/obr-13-4.jpg'><br/>
<img src='images/obr-13-5.jpg'><br/>
</ol>
{/block}

{block name=footer}
 {include file="footer.tpl"}
{/block}
