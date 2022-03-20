## Visualize a simple DEM model

## Distribution of elevation values
elevation <- hist(volcano)

## Where are breaks?
elevation$breaks

## No rescaling
ramp_default <- ramp(elevation$breaks, palette = "BuRd")(10)
image(volcano, col = ramp_default)
legend("topright", legend = attr(ramp_default, "breaks"), fill = ramp_default)

## Rescale to midpoint
ramp_160 <- ramp(elevation$breaks, palette = "BuRd", midpoint = 160)(10)
image(volcano, col = ramp_160)
legend("topright", legend = attr(ramp_160, "breaks"), fill = ramp_160)
