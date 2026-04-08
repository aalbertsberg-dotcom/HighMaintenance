# =====================================================
# High Maintenance Hair Salon — Image Rename Script
# Run this once from PowerShell in the images folder
# =====================================================
# Usage: Right-click this file > Run with PowerShell
#   OR:  cd C:\Users\aalbe\Documents\Dev\HighMaintenance\images
#        .\rename-images.ps1
# =====================================================

$images = "C:\Users\aalbe\Documents\Dev\HighMaintenance\images"
Set-Location $images

# Team photo — case fix (Windows is fine but GitHub Pages is case-sensitive)
if (Test-Path "Team.jpg") {
    Rename-Item "Team.jpg" "team-tmp.jpg"
    Rename-Item "team-tmp.jpg" "team.jpg"
    Write-Host "Renamed: Team.jpg -> team.jpg"
}

# Salon interior (chandelier, brick walls)
if (Test-Path "503277775_4127188470898216_3196408580599085124_n.jpg") {
    Rename-Item "503277775_4127188470898216_3196408580599085124_n.jpg" "interior.jpg"
    Write-Host "Renamed: interior.jpg"
}

# Exterior — fall/Thanksgiving window art
if (Test-Path "596226750_1604363687206601_2490684473615291745_n.jpg") {
    Rename-Item "596226750_1604363687206601_2490684473615291745_n.jpg" "exterior-fall.jpg"
    Write-Host "Renamed: exterior-fall.jpg"
}

# Exterior — Christmas window art
if (Test-Path "498315449_4110401739243556_1683240357066118693_n.jpg") {
    Rename-Item "498315449_4110401739243556_1683240357066118693_n.jpg" "exterior-christmas.jpg"
    Write-Host "Renamed: exterior-christmas.jpg"
}

# Exterior — snow day
if (Test-Path "487313927_1394665328176439_2437620922754975323_n.jpg") {
    Rename-Item "487313927_1394665328176439_2437620922754975323_n.jpg" "exterior-snow.jpg"
    Write-Host "Renamed: exterior-snow.jpg"
}

# Interior gold HM sign on teal wall
if (Test-Path "503108723_4124308564519540_8806286646945368382_n.jpg") {
    Rename-Item "503108723_4124308564519540_8806286646945368382_n.jpg" "sign-wall.jpg"
    Write-Host "Renamed: sign-wall.jpg"
}

# Stylists group (3 women, older)
if (Test-Path "493951688_4090993161184414_3469162337959672313_n.jpg") {
    Rename-Item "493951688_4090993161184414_3469162337959672313_n.jpg" "stylists-group.jpg"
    Write-Host "Renamed: stylists-group.jpg"
}

# Stylist on the counter
if (Test-Path "494485255_4090993307851066_5082497710612928584_n.jpg") {
    Rename-Item "494485255_4090993307851066_5082497710612928584_n.jpg" "stylist-counter.jpg"
    Write-Host "Renamed: stylist-counter.jpg"
}

# Stylist in chair
if (Test-Path "494905525_4090993294517734_7557243035526348644_n.jpg") {
    Rename-Item "494905525_4090993294517734_7557243035526348644_n.jpg" "stylist-chair.jpg"
    Write-Host "Renamed: stylist-chair.jpg"
}

# Team lounge / pajama day fun photo
if (Test-Path "605634563_1618923265750643_4776560338758006388_n.jpg") {
    Rename-Item "605634563_1618923265750643_4776560338758006388_n.jpg" "team-lounge.jpg"
    Write-Host "Renamed: team-lounge.jpg"
}

Write-Host ""
Write-Host "Done! All images renamed." -ForegroundColor Green
Write-Host "Now run: git add . && git commit -m 'Rename images, fix logo, add gallery photo' && git push"
