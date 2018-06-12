$url3 = "https://api.myjson.com/bins/thft2";
$ip = Invoke-RestMethod http://ipinfo.io/json | Select -exp ip;
$contentType3 = "application/json; charset=utf-8";

$json = "{`"a`" : `"$ip`"}";
Invoke-RestMethod -Method PUT -Uri $url3 -ContentType $contentType3 -Body $json;
