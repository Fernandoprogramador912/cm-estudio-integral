$port = 8000
$url = "http://localhost:$port/"

# Create HttpListener
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add($url)
$listener.Start()

Write-Host "Servidor iniciado en $url" -ForegroundColor Green
Write-Host "Presiona Ctrl+C para detener el servidor" -ForegroundColor Yellow

# Function to get MIME type
function Get-MimeType {
    param($file)
    $ext = [System.IO.Path]::GetExtension($file).ToLower()
    $mimeTypes = @{
        '.html' = 'text/html; charset=utf-8'
        '.css'  = 'text/css'
        '.js'   = 'application/javascript'
        '.json' = 'application/json'
        '.png'  = 'image/png'
        '.jpg'  = 'image/jpeg'
        '.jpeg' = 'image/jpeg'
        '.gif'  = 'image/gif'
        '.svg'  = 'image/svg+xml'
        '.ico'  = 'image/x-icon'
    }
    if ($mimeTypes.ContainsKey($ext)) { return $mimeTypes[$ext] }
    return 'application/octet-stream'
}

try {
    while ($listener.IsListening) {
        $context = $listener.GetContext()
        $request = $context.Request
        $response = $context.Response
        
        $path = $request.Url.AbsolutePath
        if ($path -eq '/') {
            $path = '/index.html'
        }
        
        $localPath = Join-Path $PSScriptRoot $path.TrimStart('/')
        
        if (Test-Path $localPath -PathType Leaf) {
            $content = [System.IO.File]::ReadAllBytes($localPath)
            $mimeType = Get-MimeType $localPath
            $response.ContentType = $mimeType
            $response.ContentLength64 = $content.Length
            $response.StatusCode = 200
            $response.OutputStream.Write($content, 0, $content.Length)
        } else {
            $response.StatusCode = 404
            $notFound = [System.Text.Encoding]::UTF8.GetBytes("404 - Archivo no encontrado")
            $response.ContentLength64 = $notFound.Length
            $response.OutputStream.Write($notFound, 0, $notFound.Length)
        }
        
        $response.Close()
    }
}
finally {
    $listener.Stop()
    Write-Host "Servidor detenido" -ForegroundColor Red
}

