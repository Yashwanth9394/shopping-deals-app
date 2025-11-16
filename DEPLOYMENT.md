# 🚀 Automatic Deployment Setup Complete!

## ✅ What's Working Now

### 1. **Automatic Daily Updates** ⏰
- ✅ GitHub Actions workflow runs **every day at 8 AM UTC** (1:30 PM IST)
- ✅ Automatically fetches latest deals from your Google Sheet
- ✅ Commits changes to GitHub if there are updates
- ✅ Can also be triggered manually from GitHub Actions tab

### 2. **Continuous Deployment** 🔄
- ✅ Any push to GitHub automatically triggers Amplify deployment
- ✅ Live URL updates within 2-3 minutes
- ✅ No manual intervention needed!

## 🌐 Live URLs

**Production:** https://dev.d4bc16wbw9avw.amplifyapp.com

## 📋 How It Works

```
Google Sheets → GitHub Actions (Daily) → GitHub Repo → Amplify Auto-Deploy → Live Site
```

### Daily Workflow:
1. **8:00 AM UTC** - GitHub Actions runs automatically
2. Fetches latest CSV from Google Sheets
3. If changes detected, commits to GitHub
4. GitHub push triggers Amplify build
5. **Your site is updated** within 3-5 minutes!

## 🛠️ Manual Operations

### Update Deals Manually
```bash
./update-deals.sh
git add deals.csv
git commit -m "Update deals"
git push
```

### Trigger Auto-Update Manually
1. Go to: https://github.com/Yashwanth9394/shopping-deals-app/actions
2. Click "Update Deals Daily"
3. Click "Run workflow"
4. Select branch: `master`
5. Click "Run workflow"

### Deploy Changes to Amplify
Any push to `master` branch automatically deploys!

```bash
git add .
git commit -m "Your changes"
git push
```

## 📊 Monitoring

### Check GitHub Actions
- **URL:** https://github.com/Yashwanth9394/shopping-deals-app/actions
- View all automated runs
- See success/failure status
- Check logs

### Check Amplify Builds
```bash
amplify console
```
Or visit: https://console.aws.amazon.com/amplify/home?region=us-east-1#/d4bc16wbw9avw

## ⚙️ Configuration

### Change Update Schedule
Edit `.github/workflows/update-deals.yml`:
```yaml
on:
  schedule:
    - cron: '0 8 * * *'  # Every day at 8 AM UTC
    # '0 */6 * * *'      # Every 6 hours
    # '0 0 * * *'        # Every midnight
```

### Update Google Sheet URL
Edit `.github/workflows/update-deals.yml` and `update-deals.sh`:
```yaml
curl -sL "YOUR_GOOGLE_SHEET_CSV_URL" > deals.csv
```

## 🎯 Next Steps

Your app is now fully automated! Just:
1. ✅ Update your Google Sheet whenever you want
2. ✅ Wait for daily auto-sync (or trigger manually)
3. ✅ Site updates automatically!

No need to touch code or run commands anymore! 🎉

## 🔍 Troubleshooting

### Workflow Not Running?
- Check GitHub Actions tab for errors
- Ensure GitHub Actions is enabled in repository settings

### Amplify Not Deploying?
- Check Amplify console for build logs
- Verify `amplify.yml` exists in repository

### Need Help?
Run: `amplify console` to open AWS Amplify dashboard
