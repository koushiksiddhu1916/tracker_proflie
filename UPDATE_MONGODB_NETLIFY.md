# 🔄 Update MongoDB Atlas Connection String for Netlify

## New MongoDB Atlas Connection String

You provided:
```
mongodb+srv://231fa04e20_db_user:JFXnZRMifyLnh1yx@cluster0.9eniqrz.mongodb.net/?appName=Cluster0
```

## ✅ Formatted Connection String (with database name)

Use this formatted version in Netlify:
```
mongodb+srv://231fa04e20_db_user:JFXnZRMifyLnh1yx@cluster0.9eniqrz.mongodb.net/coding-growth-lens?retryWrites=true&w=majority&appName=Cluster0
```

**Note**: Added `/coding-growth-lens` before the `?` to specify the database name.

---

## 🚀 Update Netlify Environment Variables

### Option 1: Via Netlify Dashboard (Recommended)

1. **Go to Netlify Dashboard**: https://app.netlify.com
2. **Select your site**
3. **Go to**: Site Settings → Environment Variables
4. **Find `MONGODB_URI`** and click **Edit**
5. **Update the value** to:
   ```
   mongodb+srv://231fa04e20_db_user:JFXnZRMifyLnh1yx@cluster0.9eniqrz.mongodb.net/coding-growth-lens?retryWrites=true&w=majority&appName=Cluster0
   ```
6. **Save** the changes
7. **Netlify will automatically redeploy** your site

### Option 2: Via Netlify CLI

```bash
# Install Netlify CLI if not already installed
npm install -g netlify-cli

# Login to Netlify
netlify login

# Navigate to your project root
cd "C:\Users\Hanuman\Desktop\coding-growth-lens-main 2"

# Update MONGODB_URI environment variable
netlify env:set MONGODB_URI "mongodb+srv://231fa04e20_db_user:JFXnZRMifyLnh1yx@cluster0.9eniqrz.mongodb.net/coding-growth-lens?retryWrites=true&w=majority&appName=Cluster0" --context production

# Trigger a redeploy
netlify deploy --prod
```

---

## ✅ Verify Environment Variables

Make sure these are set in Netlify:

1. **MONGODB_URI** = `mongodb+srv://231fa04e20_db_user:JFXnZRMifyLnh1yx@cluster0.9eniqrz.mongodb.net/coding-growth-lens?retryWrites=true&w=majority&appName=Cluster0`
2. **MONGODB_DB** = `coding-growth-lens`
3. **JWT_SECRET** = (your existing secret)
4. **JWT_EXPIRES_IN** = `7d`
5. **NODE_ENV** = `production`

---

## 🧪 Test After Deployment

1. **Wait for deployment** to complete (check Netlify Dashboard)
2. **Test API health endpoint**:
   ```bash
   curl https://your-site-name.netlify.app/api/health
   ```
   Should return: `{"ok":true}`

3. **Test registration**:
   - Open your site in browser
   - Try registering a new account
   - Should work without errors

4. **Check Function logs**:
   - Go to Netlify Dashboard → Functions → View logs
   - Look for "Database connected successfully" message
   - No connection errors should appear

---

## 🔍 Troubleshooting

### Database Connection Fails

1. **Check MongoDB Atlas Network Access**:
   - Go to MongoDB Atlas → Network Access
   - Ensure `0.0.0.0/0` is whitelisted (allows all IPs)
   - Or add Netlify's IP ranges

2. **Verify Connection String**:
   - Make sure password is correct (no extra spaces)
   - Database name is included: `/coding-growth-lens`
   - Connection options are present: `?retryWrites=true&w=majority`

3. **Check Function Logs**:
   - Go to Netlify Dashboard → Functions → api → View logs
   - Look for specific error messages

### Function Timeout

- Netlify Functions have a 10-second timeout on free tier
- Database connection should complete within this time
- If timeout occurs, check MongoDB Atlas cluster status

---

## 📝 Quick Reference

**Connection String Format**:
```
mongodb+srv://username:password@cluster.mongodb.net/database?options
```

**Your Values**:
- Username: `231fa04e20_db_user`
- Password: `JFXnZRMifyLnh1yx`
- Cluster: `cluster0.9eniqrz.mongodb.net`
- Database: `coding-growth-lens`

---

## ✅ After Update

After updating the environment variable:
1. Netlify will automatically trigger a new deployment
2. Wait 2-5 minutes for deployment to complete
3. Test your API endpoints
4. Verify database connection in Function logs

**Your site should now be connected to the new MongoDB Atlas cluster!** 🎉

