# Okabe and Ito color types ====================================================
schemes_okabe2008 <- list(
  # Qualitative colour types -------------------------------------------------
  # The colours have to be used as given: do not interpolate
  "okabe ito" = list(
    type = "qualitative",
    interpolate = FALSE,
    missing = NA_character_,
    max = 8,
    colours = c("#000000", "#E69F00", "#56B4E9", "#009E73",
                "#F0E442", "#0072B2", "#D55E00", "#CC79A7"),
    names = list(
      en = c("black", "orange", "sky blue", "bluish green", "yellow", "blue",
             "vermilion", "reddish purple"),
      fr = c("noir", "orange", "bleu ciel", "bleu-vert", "jaune", "bleu",
             "vermillon", "rouge pourpre")
    ),
    scheme = NULL
  )
)
