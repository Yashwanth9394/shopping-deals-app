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

## Auto-Update from Google Sheets

The app reads from `deals.csv` which is exported from your Google Sheet. To update deals:

```bash
curl -sL "https://docs.google.com/spreadsheets/d/1zt_OaS_HIAdhqsCs6ftK8dwTl8iVgxN5OyOcQhyMu1o/export?format=csv" > deals.csv
```

Or set up a cron job to update automatically!

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
