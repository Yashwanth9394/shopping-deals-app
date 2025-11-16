#!/bin/bash

# Script to manually update deals from Google Sheets
# Run this anytime: ./update-deals.sh

echo "📥 Fetching latest deals from Google Sheets..."
curl -sL "https://docs.google.com/spreadsheets/d/1zt_OaS_HIAdhqsCs6ftK8dwTl8iVgxN5OyOcQhyMu1o/export?format=csv" > deals.csv

echo "✅ Deals updated successfully!"
echo ""
echo "To deploy to Amplify, run:"
echo "  git add deals.csv"
echo "  git commit -m 'Update deals'"
echo "  git push"
