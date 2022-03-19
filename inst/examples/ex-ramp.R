## Visualize a simple DEM model
ramp_default <- ramp(volcano, palette = "BuRd")(10)
image(volcano, col = ramp_default)
legend("topright", legend = attr(ramp_default, "breaks"), fill = ramp_default)

## Rescale to midpoint
ramp_160 <- ramp(volcano, palette = "BuRd", midpoint = 160)(10)
image(volcano, col = ramp_160)
legend("topright", legend = attr(ramp_160, "breaks"), fill = ramp_160)
