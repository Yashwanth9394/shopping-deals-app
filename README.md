# Shopping Deals Web App

A beautiful, modern web application to display shopping deals from your Google Sheets in a much better way!

## Features

- 🎨 **Modern UI** - Beautiful gradient design with smooth animations
- 🔍 **Search & Filter** - Search products and filter by store
- 📊 **Statistics** - See total deals, average savings, and max discount
- 🏷️ **Deal Cards** - Each deal displayed with price, discount, coupon codes
- 📱 **Responsive** - Works perfectly on mobile, tablet, and desktop
- ⚡ **Fast** - Loads data directly from your Google Sheet CSV export
- 🎯 **Smart Sorting** - Sort by discount, price (low to high, high to low)

## How to Use

1. **Open the app**: Simply open `index.html` in any web browser
2. **Search**: Use the search box to find specific products or stores
3. **Filter**: Select a specific store from the dropdown
4. **Sort**: Choose how you want to sort the deals
5. **Click**: Click "Get This Deal" to visit the deal page

## 🔄 Auto-Update from Google Sheets

### Automatic Daily Updates ⏰
Your app automatically updates from Google Sheets **every day at 8 AM UTC** (1:30 PM IST) using GitHub Actions!

The workflow:
1. 📥 Fetches latest data from your Google Sheet
2. 🔍 Checks if there are any changes
3. ✅ Commits and pushes changes to GitHub
4. 🚀 Amplify automatically deploys the updates

### Manual Update
To update deals manually anytime:

```bash
./update-deals.sh
git add deals.csv
git commit -m "Update deals"
git push
```

Or trigger the GitHub Action manually from the "Actions" tab on GitHub.

### Continuous Deployment
Every push to the `master` branch automatically triggers a deployment to Amplify!

## Local Development

No build process needed! Just open `index.html` in your browser.

For a local server (optional):
```bash
python3 -m http.server 8000
# Then visit http://localhost:8000
```

## Technologies Used

- Pure HTML5
- CSS3 (Gradients, Animations, Grid, Flexbox)
- Vanilla JavaScript (No frameworks needed!)

## Customization

- Edit colors in the CSS gradient sections
- Modify card styles in the `.deal-card` class
- Adjust grid layout in `.deals-grid`
- Change animation timings in `@keyframes`

Enjoy your beautiful shopping deals app! 🎉
