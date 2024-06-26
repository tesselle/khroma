## Visualize a simple DEM model
## Distribution of elevation values
elevation <- hist(volcano)

## Where are breaks?
elevation$breaks

## Build palette functions
ramp_BuRd <- palette_color_picker("BuRd")

(col <- ramp_BuRd(elevation$breaks))
image(volcano, col = col)
legend("topright", legend = elevation$breaks, fill = col)

## Rescale to midpoint
ramp_BuRd <- palette_color_picker("BuRd", midpoint = 160)

(col <- ramp_BuRd(elevation$breaks))
image(volcano, col = col)
legend("topright", legend = elevation$breaks, fill = col)
