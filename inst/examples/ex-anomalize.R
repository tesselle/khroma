# Trichromat
pal <- colour("bright")
scales::show_col(pal(7))

# Deuteranopia
deu <- convert(pal, mode = "deuteranopia")
scales::show_col(deu(7))

# Protanopia
pro <- convert(pal, mode = "protanopia")
scales::show_col(pro(7))

# Tritanopia
tri <- convert(pal, mode = "tritanopia")
scales::show_col(tri(7))

# Achromatopsia
ach <- convert(pal, mode = "achromatopsia")
scales::show_col(ach(7))
