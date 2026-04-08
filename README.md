# High Maintenance Hair Salon — Website

**Live:** https://aalbertsberg-dotcom.github.io/HighMaintenance  
**Local Dev:** `C:\Users\aalbe\Documents\Dev\HighMaintenance`

---

## Files

| File | Description |
|------|-------------|
| `index.html` | Homepage — hero, services, about, booking form, map, footer |
| `meet-us.html` | Team grid page — placeholder cards for all stylists |
| `stylist-demo.html` | Pitch demo of individual stylist page |
| `images/hm-logo.svg` | Recreated HM Hair Salon logo (SVG, scalable) |
| `images/daa-logo.svg` | Double-A Solutions footer logo |

---

## Before Going Live

### 1. Images needed — drop in `images/` folder

| Filename | What it is |
|----------|------------|
| `team.jpg` | Team photo (the group shot you uploaded) |
| `interior.jpg` | Salon interior photo |
| `gallery-1.jpg` through `gallery-7.jpg` | Portfolio/work photos |
| `stylist-[name].jpg` | Each stylist's headshot |

**Team photo rename:**  
`557535580_1548403016136002_4988406460262036009_n.jpg` → `team.jpg`

### 2. Formspree setup
1. Go to https://formspree.io and create a free account
2. Create a new form → get your endpoint ID
3. In `index.html` and `stylist-demo.html`, replace `FORM_ID` with your actual ID:
   ```
   action="https://formspree.io/f/YOUR_ACTUAL_ID"
   ```

### 3. Stylist info
When you have stylist names, titles, and specialties:
- Update the placeholder cards in `meet-us.html`
- Duplicate `stylist-demo.html` for each stylist, rename to `stylist-[name].html`
- Update the hidden input: `<input type="hidden" name="stylist" value="Stylist Name"/>`
- Add headshot images to `images/`
- Update the "Preferred Stylist" dropdown in `index.html` booking form

### 4. Map embed
Update the Google Maps embed in `index.html` with a real embed URL:
1. Go to Google Maps → search the address → Share → Embed a map → copy iframe src

### 5. Google Analytics (optional)
Add GA4 tag before `</head>` in each file.

---

## Git Push
```powershell
cd C:\Users\aalbe\Documents\Dev\HighMaintenance
git add .
git commit -m "Initial site build"
git push
```

---

Built by [Double-A Solutions](https://aalbertsberg.us)
