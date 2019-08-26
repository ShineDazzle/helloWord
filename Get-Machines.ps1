$token = ./Get-Token.ps1


$url = "https://api.securitycenter.windows.com/api/machines"

$body = 
@{}


$headers = @{ 
    'Content-Type' = 'application/json'
    Accept = 'application/json'
    Authorization = "Bearer $token"
}

$response = Invoke-WebRequest -Method Get -Uri $url -Body $body  -Headers $headers -ErrorAction Stop

return ($response.Content | ConvertFrom-Json)
