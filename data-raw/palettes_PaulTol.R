# Pol Tol's color types ======================================================
palettes_tol2018 <- list(
  # Qualitative colour types -------------------------------------------------
  # The colours have to be used as given: do not interpolate
  bright = list(
    type = "qualitative",
    interpolate = FALSE,
    missing = NA_character_,
    colours = c(
      `blue`   = "#4477AA", `red`  = "#EE6677", `green`  = "#228833",
      `yellow` = "#CCBB44", `cyan` = "#66CCEE", `purple` = "#AA3377",
      `grey`   = "#BBBBBB"),
    scheme = NULL
  ),
  contrast = list(
    type = "qualitative",
    interpolate = FALSE,
    missing = NA_character_,
    colours = c(
      `blue`   = "#004488", `yellow` = "#DDAA33", `red`  = "#BB5566"),
    scheme = NULL
  ),
  vibrant = list(
    type = "qualitative",
    interpolate = FALSE,
    missing = NA_character_,
    colours = c(
      `orange`  = "#EE7733", `blue` = "#0077BB", `cyan` = "#33BBEE",
      `magenta` = "#EE3377", `red`  = "#CC3311", `teal` = "#009988",
      `grey`    = "#BBBBBB"),
    scheme = NULL
  ),
  muted = list(
    type = "qualitative",
    interpolate = FALSE,
    missing = "#DDDDDD",
    colours = c(
      `rose`   = "#CC6677", `indigo` = "#332288", `sand`   = "#DDCC77",
      `green`  = "#117733", `cyan`   = "#88CCEE", `wine`   = "#882255",
      `teal`   = "#44AA99", `olive`  = "#999933", `purple` = "#AA4499"),
    scheme = NULL
  ),
  pale = list(
    type = "qualitative",
    interpolate = FALSE,
    missing = NA_character_,
    colours = c(
      `pale blue`  = "#BBCCEE", `pale cyan`   = "#CCEEFF",
      `pale green` = "#CCDDAA", `pale yellow` = "#EEEEBB",
      `pale red`   = "#FFCCCC", `pale grey`   = "#DDDDDD"),
    scheme = NULL
  ),
  dark = list(
    type = "qualitative",
    interpolate = FALSE,
    missing = NA_character_,
    colours = c(
      `dark blue`  = "#222255", `dark cyan`   = "#225555",
      `dark green` = "#225522", `dark yellow` = "#666633",
      `dark red`   = "#663333", `dark grey`   = "#555555"),
    scheme = NULL
  ),
  light = list(
    type = "qualitative",
    interpolate = FALSE,
    missing = NA_character_,
    colours = c(
      `light blue`   = "#77AADD", `orange` = "#EE8866",
      `light yellow` = "#EEDD88", `pink`   = "#FFAABB",
      `light cyant`  = "#99DDFF", `mint`   = "#44BB99",
      `pear`         = "#BBCC33", `olive`  = "#AAAA00",
      `pale grey`    = "#DDDDDD"),
    scheme = NULL
  ),
  # Diverging colour types ---------------------------------------------------
  # The colours can be used as given or linearly interpolated
  sunset = list(
    type = "diverging",
    interpolate = TRUE,
    missing = "#FFFFFF",
    colours = c("#364B9A", "#4A7BB7", "#6EA6CD", "#98CAE1", "#C2E4EF", "#EAECCC",
                "#FEDA8B", "#FDB366", "#F67E4B", "#DD3D2D", "#A50026"),
    scheme = NULL
  ),
  BuRd = list(
    type = "diverging",
    interpolate = TRUE,
    missing = "#FFEE99",
    colours = c("#2166AC", "#4393C3", "#92C5DE", "#D1E5F0", "#F7F7F7", "#FDDBC7",
                "#F4A582", "#D6604D", "#B2182B"),
    scheme = NULL
  ),
  PRGn = list(
    type = "diverging",
    interpolate = TRUE,
    missing = "#FFEE99",
    colours = c("#762A83", "#9970AB", "#C2A5CF", "#E7D4E8", "#F7F7F7", "#D9F0D3",
                "#ACD39E", "#5AAE61", "#1B7837"),
    scheme = NULL
  ),
  # Sequential colour types --------------------------------------------------
  # The colours can be used as given or linearly interpolated
  YlOrBr = list(
    type = "sequential",
    interpolate = TRUE,
    missing = "#888888",
    colours = c("#FFFFE5", "#FFF7BC", "#FEE391", "#FEC44F", "#FB9A29", "#EC7014",
                "#CC4C02", "#993404", "#662506"),
    scheme = NULL
  ),
  iridescent = list(
    type = "sequential",
    interpolate = TRUE,
    missing = "#999999",
    colours = c("#FEFBE9", "#FCF7D5", "#F5F3C1", "#EAF0B5", "#DDECBF", "#D0E7CA",
                "#C2E3D2", "#B5DDD8", "#A8D8DC", "#9BD2E1", "#8DCBE4", "#81C4E7",
                "#7BBCE7", "#7EB2E4", "#88A5DD", "#9398D2", "#9B8AC4", "#9D7DB2",
                "#9A709E", "#906388", "#805770", "#684957", "#46353A"),
    scheme = NULL
  ),
  "discrete rainbow" = list(
    type = "qualitative",
    interpolate = FALSE,
    missing = "#777777",
    colours = c(`1`  = "#E8ECFB", `2`  = "#D9CCE3", `3`  = "#D1BBD7",
                `4`  = "#CAACCB", `5`  = "#BA8DB4", `6`  = "#AE76A3",
                `7`  = "#AA6F9E", `8`  = "#994F88", `9`  = "#882E72",
                `10` = "#1965B0", `11` = "#437DBF", `12` = "#5289C7",
                `13` = "#6195CF", `14` = "#7BAFDE", `15` = "#4EB265",
                `16` = "#90C987", `17` = "#CAE0AB", `18` = "#F7F056",
                `19` = "#F7CB45", `20` = "#F6C141", `21` = "#F4A736",
                `22` = "#F1932D", `23` = "#EE8026", `24` = "#E8601C",
                `25` = "#E65518", `26` = "#DC050C", `27` = "#A5170E",
                `28` = "#72190E", `29` = "#42150A"),
    scheme = list(
      `1` = c(10),
      `2` = c(10, 26),
      `3` = c(10, 18, 26),
      `4` = c(10, 15, 18, 26),
      `5` = c(10, 14, 15, 18, 26),
      `6` = c(10, 14, 15, 17, 18, 26),
      `7` = c(9, 10, 14, 15, 17, 18, 26),
      `8` = c(9, 10, 14, 15, 17, 18, 23, 26),
      `9` = c(9, 10, 14, 15, 17, 18, 23, 26, 28),
      `10` = c(9, 10, 14, 15, 17, 18, 21, 24, 26, 28),
      `11` = c(9, 10, 12, 14, 15, 17, 18, 21,24, 26, 28),
      `12` = c(3, 6, 9, 10, 12, 14, 15, 17, 18, 21, 24, 26),
      `13` = c(3, 6, 9, 10, 12, 14, 15, 16, 17, 18, 21, 24, 26),
      `14` = c(3, 6, 9, 10, 12, 14, 15, 16, 17, 18, 20, 22, 24, 26),
      `15` = c(3, 6, 9, 10, 12, 14, 15, 16, 17, 18, 20, 22, 24, 26, 28),
      `16` = c(3, 5, 7, 9, 10, 12, 14, 15, 16, 17, 18, 20, 22, 24, 26, 28),
      `17` = c(3, 5, 7, 8, 9, 10, 12, 14, 15, 16, 17, 18, 20, 22, 24, 26, 28),
      `18` = c(3, 5, 7, 8, 9, 10, 12, 14, 15, 16, 17, 18, 20, 22, 24, 26, 27, 28),
      `19` = c(2, 4, 5, 7, 8, 9, 10, 12, 14, 15, 16, 17, 18, 20, 22, 24, 26, 27, 28),
      `20` = c(2, 4, 5, 7, 8, 9, 10, 11, 13, 14, 15, 16, 17, 18, 20, 22, 24, 26, 27, 28),
      `21` = c(2, 4, 5, 7, 8, 9, 10, 11, 13, 14, 15, 16, 17, 18, 19, 21, 23, 25, 26, 27, 28),
      `22` = c(2, 4, 5, 7, 8, 9, 10, 11, 13, 14, 15, 16, 17, 18, 19, 21, 23, 25, 26, 27, 28, 29),
      `23` = c(1, 2, 4, 5, 7, 8, 9, 10, 11, 13, 14, 15, 16, 17, 18, 19, 21, 23, 25, 26, 27, 28, 29)
    )
  ),
  "smooth rainbow" = list(
    type = "sequential",
    interpolate = TRUE,
    missing = "#666666",
    colours = c("#E8ECFB", "#DDD8EF", "#D1C1E1", "#C3A8D1", "#B58FC2",
                "#A778B4", "#9B62A7", "#8C4E99", "#6F4C9B", "#6059A9",
                "#5568B8", "#4E79C5", "#4D8AC6", "#4E96BC", "#549EB3",
                "#59A5A9", "#60AB9E", "#69B190", "#77B77D", "#8CBC68",
                "#A6BE54", "#BEBC48", "#D1B541", "#DDAA3C", "#E49C39",
                "#E78C35", "#E67932", "#E4632D", "#DF4828", "#DA2222",
                "#B8221E", "#95211B", "#721E17", "#521A13"),
    scheme = NULL
    )
)
