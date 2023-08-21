## Visualize a simple DEM model
## Distribution of elevation values
elevation <- hist(volcano)

## Where are breaks?
elevation$breaks

## Build palette function
ramp_BuRd <- ramp(palette = "BuRd")

(col <- ramp_BuRd(elevation$breaks))
image(volcano, col = col)
legend("topright", legend = attr(col, "breaks"), fill = col)

## Rescale to midpoint
(col <- ramp_BuRd(elevation$breaks, midpoint = 160))
image(volcano, col = col)
legend("topright", legend = attr(col, "breaks"), fill = col)
