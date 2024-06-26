# Trichromat
pal <- colour("bright")
plot_scheme(pal(7))

# Deuteranopia
deu <- change(pal, mode = "deuteranopia")
plot_scheme(deu(7))

# Protanopia
pro <- change(pal, mode = "protanopia")
plot_scheme(pro(7))

# Tritanopia
tri <- change(pal, mode = "tritanopia")
plot_scheme(tri(7))

# Achromatopsia
ach <- change(pal, mode = "achromatopsia")
plot_scheme(ach(7))

## Plot simulated color blindness
plot_scheme_colorblind(pal(7))

