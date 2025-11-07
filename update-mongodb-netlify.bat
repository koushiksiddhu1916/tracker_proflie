@echo off
echo ========================================
echo Update MongoDB Atlas Connection for Netlify
echo ========================================
echo.

echo Step 1: Updating Netlify Environment Variable...
echo.

netlify env:set MONGODB_URI "mongodb+srv://231fa04e20_db_user:JFXnZRMifyLnh1yx@cluster0.9eniqrz.mongodb.net/coding-growth-lens?retryWrites=true&w=majority&appName=Cluster0" --context production

echo.
echo Step 2: Triggering redeployment...
echo.

netlify deploy --prod

echo.
echo ========================================
echo Done! Check Netlify Dashboard for deployment status.
echo ========================================
pause

