@echo off
REM Vercel Deployment Script for CodeTrack (Windows)

echo 🚀 CodeTrack Vercel Deployment
echo ==============================
echo.

REM Check if Vercel CLI is installed
where vercel >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Vercel CLI not found. Installing...
    npm install -g vercel
)

echo 📋 Choose deployment option:
echo 1) Deploy Frontend only
echo 2) Deploy Backend only
echo 3) Deploy Both (as separate projects)
echo 4) Deploy as Monorepo (single project)
echo.
set /p option="Enter option (1-4): "

if "%option%"=="1" (
    echo 📦 Deploying Frontend...
    cd client
    vercel
) else if "%option%"=="2" (
    echo 📦 Deploying Backend...
    cd server
    vercel
) else if "%option%"=="3" (
    echo 📦 Deploying Backend first...
    cd server
    vercel
    set /p BACKEND_URL="Enter backend URL: "
    echo.
    echo 📦 Deploying Frontend...
    cd ..\client
    vercel
    echo.
    echo ✅ Don't forget to set CLIENT_ORIGIN=%BACKEND_URL% in backend environment variables
) else if "%option%"=="4" (
    echo 📦 Deploying as Monorepo...
    vercel
) else (
    echo ❌ Invalid option
    exit /b 1
)

echo.
echo ✅ Deployment complete!
echo 📝 Don't forget to set environment variables in Vercel Dashboard
pause

