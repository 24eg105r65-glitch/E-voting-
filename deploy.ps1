$env:Path = "C:\Program Files\nodejs;C:\Users\dines\AppData\Roaming\npm;" + $env:Path
Write-Host "Step 1: Logging in to Firebase (A browser window will open)..."
firebase login
if ($LASTEXITCODE -eq 0) {
    Write-Host "Step 2: Deploying to Firebase Hosting..."
    firebase deploy
} else {
    Write-Host "Login failed or cancelled."
}
Pause
