# Colour ramp

    Code
      ramp(h, palette = "BuRd")(10)
    Output
       [1] "#2166AC" "#3985BC" "#68A9CF" "#9AC8E0" "#C6DFEC" "#E7EEF1" "#F7EAE2"
       [8] "#F9D2BD" "#F2AC90" "#E37E65" "#CC4C43" "#B2182B"
      attr(,"breaks")
       [1]  90 100 110 120 130 140 150 160 170 180 190 200

---

    Code
      ramp(h, palette = "BuRd", midpoint = 160)(10)
    Output
       [1] "#2166AC" "#347FB8" "#5199C6" "#7BB5D6" "#A1CBE2" "#C4DEEB" "#DFECF1"
       [8] "#EFECEA" "#F9E5DA" "#F9D0BA" "#F4B297" "#EB9072"
      attr(,"breaks")
       [1]  90 100 110 120 130 140 150 160 170 180 190 200

# Palette informations

    Code
      info()
    Output
                 palette        type max missing
      1             broc   diverging 256    <NA>
      2             cork   diverging 256    <NA>
      3              vik   diverging 256    <NA>
      4           lisbon   diverging 256    <NA>
      5           tofino   diverging 256    <NA>
      6           berlin   diverging 256    <NA>
      7             roma   diverging 256    <NA>
      8              bam   diverging 256    <NA>
      9           vanimo   diverging 256    <NA>
      10          oleron   diverging 256    <NA>
      11          bukavu   diverging 256    <NA>
      12             fes   diverging 256    <NA>
      13           devon  sequential 256    <NA>
      14         lajolla  sequential 256    <NA>
      15          bamako  sequential 256    <NA>
      16           davos  sequential 256    <NA>
      17          bilbao  sequential 256    <NA>
      18            nuuk  sequential 256    <NA>
      19            oslo  sequential 256    <NA>
      20           grayC  sequential 256    <NA>
      21          hawaii  sequential 256    <NA>
      22           lapaz  sequential 256    <NA>
      23           tokyo  sequential 256    <NA>
      24            buda  sequential 256    <NA>
      25           acton  sequential 256    <NA>
      26           turku  sequential 256    <NA>
      27           imola  sequential 256    <NA>
      28          batlow  sequential 256    <NA>
      29         batlowW  sequential 256    <NA>
      30         batlowK  sequential 256    <NA>
      31           brocO  sequential 256    <NA>
      32           corkO  sequential 256    <NA>
      33            vikO  sequential 256    <NA>
      34           romaO  sequential 256    <NA>
      35            bamO  sequential 256    <NA>
      36          bright qualitative   7    <NA>
      37    highcontrast qualitative   3    <NA>
      38         vibrant qualitative   7    <NA>
      39           muted qualitative   9 #DDDDDD
      40  mediumcontrast qualitative   6    <NA>
      41            pale qualitative   6    <NA>
      42            dark qualitative   6    <NA>
      43           light qualitative   9    <NA>
      44          sunset   diverging  11 #FFFFFF
      45            BuRd   diverging   9 #FFEE99
      46            PRGn   diverging   9 #FFEE99
      47          YlOrBr  sequential   9 #888888
      48      iridescent  sequential  23 #999999
      49 discreterainbow  sequential  23 #777777
      50   smoothrainbow  sequential  34 #666666
      51        okabeito qualitative   8    <NA>
      52   okabeitoblack qualitative   8    <NA>
      53    stratigraphy qualitative 175    <NA>
      54            soil qualitative  24    <NA>
      55            land qualitative  14    <NA>

