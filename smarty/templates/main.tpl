<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>{block name=title}{/block}</title>
	<link rel="shortcut icon" href="./images/favicon.ico" type="image/x-icon">
	<link rel="icon" href="./images/favicon.ico" type="image/x-icon">
    <script src="/css/jquery-1.8.1.min.js"></script>
	<script src="/css/jquery.mobile-1.3.2.min.js"></script>
	<!--<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" />-->
	<link rel="stylesheet" href="/css/jquery.mobile.min.css"/>
	<link rel="stylesheet" href="/css/jqm-demos.css" />
	<link rel="stylesheet" href="/css/ovolby.css" />
	{block name=head}{/block}
</head>
<body>

<div data-role="page" class="jqm-demos jqm-demos-home">
  <div data-role="header" class="jqm-header">
    {block name=header}{/block}
  </div> <!-- /header -->
  <div data-role="content" class="jqm-content">
    {block name=content}{/block}
  </div> <!-- /content -->
  <div data-role="footer" class="jqm-footer">
    {block name=footer}{/block}
  </div> <!-- /footer -->
</div> <!-- /page -->
</body>
</html>
