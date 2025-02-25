if (requireNamespace("spacesXYZ", quietly = TRUE)) {
  ## Trichromat
  pal <- colour("bright")
  compare(pal(5))

  ## Deuteranopia
  deu <- change(pal, mode = "deuteranopia")
  compare(deu(5))

  ## Protanopia
  pro <- change(pal, mode = "protanopia")
  compare(pro(5))

  ## Tritanopia
  tri <- change(pal, mode = "tritanopia")
  compare(tri(5))

  ## Achromatopsia
  ach <- change(pal, mode = "achromatopsia")
  compare(ach(5))
}
