# Script to upload project to GitHub
# Make sure Git is installed first!

Write-Host "Checking Git installation..." -ForegroundColor Yellow

# Check if git is available
try {
    $gitVersion = git --version
    Write-Host "Git found: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "ERROR: Git is not installed or not in PATH!" -ForegroundColor Red
    Write-Host "Please install Git from: https://git-scm.com/download/win" -ForegroundColor Yellow
    Write-Host "Make sure to select 'Add Git to PATH' during installation." -ForegroundColor Yellow
    exit 1
}

Write-Host "`nInitializing Git repository..." -ForegroundColor Yellow
git init

Write-Host "`nAdding remote repository..." -ForegroundColor Yellow
git remote add origin https://github.com/huynhloitg/ASPNET-dk24ttc2-nguyenhuynhloi-websitebatdongsan.git

Write-Host "`nAdding all files..." -ForegroundColor Yellow
git add .

Write-Host "`nCreating initial commit..." -ForegroundColor Yellow
git commit -m "Initial commit: Website tin tức về bất động sản"

Write-Host "`nPushing to GitHub..." -ForegroundColor Yellow
Write-Host "Note: You may need to authenticate. Use GitHub Personal Access Token if prompted for password." -ForegroundColor Cyan
git branch -M main
git push -u origin main

Write-Host "`nDone! Your code has been uploaded to GitHub." -ForegroundColor Green

