# Official color charts ========================================================
# The colours have to be used as given: do not interpolate
schemes_official <- list(
  # Bordeaux Montaigne University colour chart
  UBM = list(
    type = "qualitative",
    interpolate = FALSE,
    missing = NA_character_,
    max = 30,
    colours = c("#fcea10", "#f4c123", "#f59c00", "#ee7219", "#e30613",
                "#be1622", "#f088b6", "#ec608a", "#e8336e", "#a3195b",
                "#951b81", "#5d3a14", "#7d4e24", "#b56632", "#bf8850",
                "#a48a7b", "#878787", "#b2b2b2", "#00a19a", "#0094cd",
                "#1d71b8", "#32538d", "#312783", "#29264a", "#404e2c",
                "#006633", "#3a8c38", "#34aa35", "#95c11f", "#dedc00"
    ),
    names = list(
      en = c("UBM 01", "UBM 02", "UBM 03", "UBM 04", "UBM 05", "UBM 06",
             "UBM 07", "UBM 08", "UBM 09", "UBM 10", "UBM 11", "UBM 12",
             "UBM 13", "UBM 14", "UBM 15", "UBM 16", "UBM 17", "UBM 18",
             "UBM 19", "UBM 20", "UBM 21", "UBM 22", "UBM 23", "UBM 24",
             "UBM 25", "UBM 26", "UBM 27", "UBM 28", "UBM 29", "UBM 30"),
      fr = c("UBM 01", "UBM 02", "UBM 03", "UBM 04", "UBM 05", "UBM 06",
             "UBM 07", "UBM 08", "UBM 09", "UBM 10", "UBM 11", "UBM 12",
             "UBM 13", "UBM 14", "UBM 15", "UBM 16", "UBM 17", "UBM 18",
             "UBM 19", "UBM 20", "UBM 21", "UBM 22", "UBM 23", "UBM 24",
             "UBM 25", "UBM 26", "UBM 27", "UBM 28", "UBM 29", "UBM 30")
    ),
    scheme = NULL
  ),
  # French National Center for Scientific Research
  CNRS = list(
    type = "qualitative",
    interpolate = FALSE,
    missing = NA_character_,
    max = 10,
    colours = c("#007E94", "#62AE25", "#004494", "#E75113", "#9C126D",
                "#820E12", "#562A84", "#D4002D", "#547D3D", "#CC2381"
    ),
    names = list(
      en = c("INC", "INEE", "INP", "IN2P3", "INSB",
             "INSHS", "INS2I", "INSIS", "INSMI", "INSU"),
      fr = c("INC", "INEE", "INP", "IN2P3", "INSB",
             "INSHS", "INS2I", "INSIS", "INSMI", "INSU")
    ),
    scheme = NULL
  )
)
