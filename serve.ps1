param([string]$Root, [int]$Port = 8123)
# Servidor local mínimo para previsualizar el prototipo
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$Port/")
$listener.Start()
Write-Host "Sirviendo $Root en http://localhost:$Port/"
$tipos = @{ '.html' = 'text/html; charset=utf-8'; '.css' = 'text/css'; '.js' = 'text/javascript'; '.svg' = 'image/svg+xml'; '.png' = 'image/png' }
while ($listener.IsListening) {
  $ctx = $listener.GetContext()
  $ruta = [Uri]::UnescapeDataString($ctx.Request.Url.AbsolutePath.TrimStart('/'))
  if ($ruta -eq '') { $ruta = 'index.html' }
  $archivo = Join-Path $Root $ruta
  if (Test-Path $archivo -PathType Leaf) {
    $bytes = [IO.File]::ReadAllBytes($archivo)
    $ext = [IO.Path]::GetExtension($archivo)
    $ctx.Response.ContentType = if ($tipos.ContainsKey($ext)) { $tipos[$ext] } else { 'application/octet-stream' }
    $ctx.Response.OutputStream.Write($bytes, 0, $bytes.Length)
  } else {
    $ctx.Response.StatusCode = 404
  }
  $ctx.Response.Close()
}
