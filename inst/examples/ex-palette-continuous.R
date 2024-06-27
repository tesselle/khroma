## Visualize a simple DEM model
## Distribution of elevation values
elevation <- hist(volcano)

## Where are breaks?
elevation$breaks

## Build palette functions
BuRd <- color("BuRd")
ramp_BuRd <- palette_color_continuous(colors = BuRd(10))

## Plot image
image(volcano, col = ramp_BuRd(elevation$breaks))
legend("topright", legend = elevation$breaks, fill = ramp_BuRd(elevation$breaks))
