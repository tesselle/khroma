# Pol Tol's color types ======================================================
schemes_tol2018 <- list(
  # Qualitative colour types -------------------------------------------------
  # The colours have to be used as given: do not interpolate
  bright = list(
    type = "qualitative",
    interpolate = FALSE,
    missing = NA_character_,
    max = 7,
    colours = c("#4477AA", "#EE6677", "#228833", "#CCBB44",
                "#66CCEE", "#AA3377", "#BBBBBB"),
    names = list(
      en = c("blue", "red", "green", "yellow", "cyan", "purple", "grey"),
      fr = c("bleu", "rouge", "vert", "jaune", "cyan", "pourpre", "gris")
    ),
    scheme = NULL
  ),
  contrast = list(
    type = "qualitative",
    interpolate = FALSE,
    missing = NA_character_,
    max = 3,
    colours = c("#004488", "#DDAA33", "#BB5566"),
    names = list(
      en = c("blue", "yellow", "red"),
      fr = c("bleu", "jaune", "rouge")
    ),
    scheme = NULL
  ),
  vibrant = list(
    type = "qualitative",
    interpolate = FALSE,
    missing = NA_character_,
    max = 7,
    colours = c("#EE7733", "#0077BB", "#33BBEE", "#EE3377",
                "#CC3311", "#009988", "#BBBBBB"),
    names = list(
      en = c("orange", "blue", "cyan", "magenta", "red", "teal", "grey"),
      fr = c("orange", "bleu", "cyan", "magenta", "rouge", "bleu canard", "gris")
    ),
    scheme = NULL
  ),
  muted = list(
    type = "qualitative",
    interpolate = FALSE,
    missing = "#DDDDDD",
    max = 9,
    colours = c("#CC6677", "#332288", "#DDCC77", "#117733", "#88CCEE",
                "#882255", "#44AA99", "#999933", "#AA4499"),
    names = list(
      en = c("rose", "indigo", "sand", "green", "cyan", "wine",
             "teal", "olive", "purple"),
      fr = c("rose vif", "indigo", "sable", "vert", "cyan", "lie de vin",
             "bleu canard", "olive", "pourpre")
    ),
    scheme = NULL
  ),
  pale = list(
    type = "qualitative",
    interpolate = FALSE,
    missing = NA_character_,
    max = 6,
    colours = c("#BBCCEE", "#CCEEFF", "#CCDDAA",
                "#EEEEBB", "#FFCCCC", "#DDDDDD"),
    names = list(
      en = c("pale blue", "pale cyan", "pale green",
             "pale yellow", "pale red", "pale grey"),
      fr = c("bleu pâle", "cyan pâle", "vert pâle",
             "jaune pâle", "rouge pâle", "gris pâle")
    ),
    scheme = NULL
  ),
  dark = list(
    type = "qualitative",
    interpolate = FALSE,
    missing = NA_character_,
    max = 6,
    colours = c("#222255", "#225555", "#225522",
                "#666633", "#663333", "#555555"),
    names = list(
      en = c("dark blue", "dark cyan", "dark green",
             "dark yellow", "dark red", "dark grey"),
      fr = c("bleu foncé", "cyan foncé", "vert foncé",
             "jaune foncé", "rouge foncé", "gris foncé")
    ),
    scheme = NULL
  ),
  light = list(
    type = "qualitative",
    interpolate = FALSE,
    missing = NA_character_,
    max = 9,
    colours = c("#77AADD", "#EE8866", "#EEDD88", "#FFAABB", "#99DDFF",
                "#44BB99", "#BBCC33", "#AAAA00", "#DDDDDD"),
    names = list(
      en = c("light blue", "orange", "light yellow", "pink",
             "light cyan", "mint", "pear", "olive", "pale grey"),
      fr = c("bleu clair", "orange", "jaune clair", "rose",
             "cyan clair", "vert menthe", "chartreuse", "olive", "gris pâle")
    ),
    scheme = NULL
  ),
  # Diverging colour types ---------------------------------------------------
  # The colours can be used as given or linearly interpolated
  sunset = list(
    type = "diverging",
    interpolate = TRUE,
    missing = "#FFFFFF",
    max = 11,
    colours = c("#364B9A", "#4A7BB7", "#6EA6CD", "#98CAE1", "#C2E4EF", "#EAECCC",
                "#FEDA8B", "#FDB366", "#F67E4B", "#DD3D2D", "#A50026"),
    names = NULL,
    scheme = NULL
  ),
  BuRd = list(
    type = "diverging",
    interpolate = TRUE,
    missing = "#FFEE99",
    max = 9,
    colours = c("#2166AC", "#4393C3", "#92C5DE", "#D1E5F0", "#F7F7F7", "#FDDBC7",
                "#F4A582", "#D6604D", "#B2182B"),
    names = NULL,
    scheme = NULL
  ),
  PRGn = list(
    type = "diverging",
    interpolate = TRUE,
    missing = "#FFEE99",
    max = 9,
    colours = c("#762A83", "#9970AB", "#C2A5CF", "#E7D4E8", "#F7F7F7", "#D9F0D3",
                "#ACD39E", "#5AAE61", "#1B7837"),
    names = NULL,
    scheme = NULL
  ),
  # Sequential colour types --------------------------------------------------
  # The colours can be used as given or linearly interpolated
  YlOrBr = list(
    type = "sequential",
    interpolate = TRUE,
    missing = "#888888",
    max = 9,
    colours = c("#FFFFE5", "#FFF7BC", "#FEE391", "#FEC44F", "#FB9A29", "#EC7014",
                "#CC4C02", "#993404", "#662506"),
    names = NULL,
    scheme = NULL
  ),
  iridescent = list(
    type = "sequential",
    interpolate = TRUE,
    missing = "#999999",
    max = 23,
    colours = c("#FEFBE9", "#FCF7D5", "#F5F3C1", "#EAF0B5", "#DDECBF", "#D0E7CA",
                "#C2E3D2", "#B5DDD8", "#A8D8DC", "#9BD2E1", "#8DCBE4", "#81C4E7",
                "#7BBCE7", "#7EB2E4", "#88A5DD", "#9398D2", "#9B8AC4", "#9D7DB2",
                "#9A709E", "#906388", "#805770", "#684957", "#46353A"),
    names = NULL,
    scheme = NULL
  ),
  "discrete rainbow" = list(
    type = "sequential",
    interpolate = FALSE,
    missing = "#777777",
    max = 23,
    colours = c("#E8ECFB", "#D9CCE3", "#D1BBD7", "#CAACCB", "#BA8DB4",
                "#AE76A3", "#AA6F9E", "#994F88", "#882E72", "#1965B0",
                "#437DBF", "#5289C7", "#6195CF", "#7BAFDE", "#4EB265",
                "#90C987", "#CAE0AB", "#F7F056", "#F7CB45", "#F6C141",
                "#F4A736", "#F1932D", "#EE8026", "#E8601C", "#E65518",
                "#DC050C", "#A5170E", "#72190E", "#42150A"),
    names = list(
      en = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
             "11", "12", "13", "14", "15", "16", "17", "18", "19", "20",
             "21", "22", "23", "24", "25", "26", "27", "28", "29"),
      fr = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
             "11", "12", "13", "14", "15", "16", "17", "18", "19", "20",
             "21", "22", "23", "24", "25", "26", "27", "28", "29")
    ),
    scheme = list(
      c(10),
      c(10, 26),
      c(10, 18, 26),
      c(10, 15, 18, 26),
      c(10, 14, 15, 18, 26),
      c(10, 14, 15, 17, 18, 26),
      c(9, 10, 14, 15, 17, 18, 26),
      c(9, 10, 14, 15, 17, 18, 23, 26),
      c(9, 10, 14, 15, 17, 18, 23, 26, 28),
      c(9, 10, 14, 15, 17, 18, 21, 24, 26, 28),
      c(9, 10, 12, 14, 15, 17, 18, 21,24, 26, 28),
      c(3, 6, 9, 10, 12, 14, 15, 17, 18, 21, 24, 26),
      c(3, 6, 9, 10, 12, 14, 15, 16, 17, 18, 21, 24, 26),
      c(3, 6, 9, 10, 12, 14, 15, 16, 17, 18, 20, 22, 24, 26),
      c(3, 6, 9, 10, 12, 14, 15, 16, 17, 18, 20, 22, 24, 26, 28),
      c(3, 5, 7, 9, 10, 12, 14, 15, 16, 17, 18, 20, 22, 24, 26, 28),
      c(3, 5, 7, 8, 9, 10, 12, 14, 15, 16, 17, 18, 20, 22, 24, 26, 28),
      c(3, 5, 7, 8, 9, 10, 12, 14, 15, 16, 17, 18, 20, 22, 24, 26, 27, 28),
      c(2, 4, 5, 7, 8, 9, 10, 12, 14, 15, 16, 17, 18, 20, 22, 24, 26, 27, 28),
      c(2, 4, 5, 7, 8, 9, 10, 11, 13, 14, 15, 16, 17, 18, 20, 22, 24, 26, 27, 28),
      c(2, 4, 5, 7, 8, 9, 10, 11, 13, 14, 15, 16, 17, 18, 19, 21, 23, 25, 26, 27, 28),
      c(2, 4, 5, 7, 8, 9, 10, 11, 13, 14, 15, 16, 17, 18, 19, 21, 23, 25, 26, 27, 28, 29),
      c(1, 2, 4, 5, 7, 8, 9, 10, 11, 13, 14, 15, 16, 17, 18, 19, 21, 23, 25, 26, 27, 28, 29)
    )
  ),
  "smooth rainbow" = list(
    type = "sequential",
    interpolate = TRUE,
    missing = "#666666",
    max = 34,
    colours = c("#E8ECFB", "#DDD8EF", "#D1C1E1", "#C3A8D1", "#B58FC2",
                "#A778B4", "#9B62A7", "#8C4E99", "#6F4C9B", "#6059A9",
                "#5568B8", "#4E79C5", "#4D8AC6", "#4E96BC", "#549EB3",
                "#59A5A9", "#60AB9E", "#69B190", "#77B77D", "#8CBC68",
                "#A6BE54", "#BEBC48", "#D1B541", "#DDAA3C", "#E49C39",
                "#E78C35", "#E67932", "#E4632D", "#DF4828", "#DA2222",
                "#B8221E", "#95211B", "#721E17", "#521A13"),
    names = NULL,
    scheme = NULL
  )
)
