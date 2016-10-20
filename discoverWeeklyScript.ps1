$url = "https://api.spotify.com/v1/users/spotifydiscover/playlists/6N7mRyylqso6ZQls1pS0Vp/tracks"
$body = @{
Accept="application/json";
Authorization=" Bearer BQAecfU6h3utGO31jDBOualmVDSMQJA-xU2g3bTejiifinjx8nSSi3buhvgf6mRWoqs0cs7wTLagxsmniV78C3_QFfhn-8SmGlbKSncHusVrUthy83P6Bd6-zaOWhOrC2Dsd5NnhC4M"
}

$date = Get-Date -Format dd-MM-yyyy_HH-mm
$filePath = "D:\Spotify\DiscoverWeekly\" + $date + ".xml"
$filePath = "D:\Spotify\DiscoverWeekly\test.xml"
$tracks = Invoke-RestMethod -Uri $url -Method Get -Headers $body
$tracks | Export-Clixml -Path $filePath