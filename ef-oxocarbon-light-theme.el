;;; ef-oxocarbon-light-theme.el --- Oxocarbon-inspired light theme -*- lexical-binding:t -*-

(eval-and-compile
  (require 'ef-themes)

;;;###theme-autoload
  (deftheme ef-oxocarbon-light
    "Light theme inspired by oxocarbon.nvim (light variant)."
    :background-mode 'light
    :kind 'color-scheme
    :family 'ef)

  (defconst ef-oxocarbon-light-palette
    '(
;;; Basic values (derived from oxocarbon light tables)
      (bg-main     "#ffffff")
      (fg-main     "#37474F")
      (bg-dim      "#f5f5f5")
      (fg-dim      "#90A4AE")
      (bg-alt      "#FAFAFA")
      (fg-alt      "#525252")

      (bg-active   "#ECEFF1")
      (bg-inactive "#F7F7F7")

;;; Basic hues for foreground values (mapped from base07..base15 in oxocarbon light)
      (red             "#ee5396")   ; base10
      (red-warmer      "#ff7eb6")   ; base12
      (red-cooler      "#ffab91")   ; base15
      (red-faint       "#c94f6d")

      (green           "#42be65")   ; base13
      (green-warmer    "#08bdba")   ; base07 (teal-ish)
      (green-cooler    "#be95ff")   ; base14 (used as cooler alt)
      (green-faint     "#7ec68a")

      (yellow          "#FF6F00")   ; base10 alt
      (yellow-warmer   "#0f62fe")   ; base11 (as warmer accent per palette style)
      (yellow-cooler   "#673AB7")   ; base12 (violet)
      (yellow-faint    "#e09a00")

      (blue            "#78a9ff")   ; base09
      (blue-warmer     "#33b1ff")   ; base11 (dark variant context)
      (blue-cooler     "#0f62fe")   ; base11 (strong blue)
      (blue-faint      "#82cfff")   ; base15

      (magenta         "#be95ff")   ; base14 (violet)
      (magenta-warmer  "#ff7eb6")   ; base12
      (magenta-cooler  "#673AB7")   ; base12 (alt)
      (magenta-faint   "#b392ff")

      (cyan            "#08bdba")   ; base07
      (cyan-warmer     "#3ddbd9")   ; dark variant alt
      (cyan-cooler     "#82cfff")   ; base15 alt
      (cyan-faint      "#66cfd1")

;;; Basic hues for background values (soft tints for UI)
      (bg-red-intense     "#ffe6ef")
      (bg-green-intense   "#e8f6ee")
      (bg-yellow-intense  "#fff3d6")
      (bg-blue-intense    "#e8f1ff")
      (bg-magenta-intense "#f3edff")
      (bg-cyan-intense    "#e8fbfb")

      (bg-red-subtle      "#ffdfe9")
      (bg-green-subtle    "#eaf6f2")
      (bg-yellow-subtle   "#fff5de")
      (bg-blue-subtle     "#eef4ff")
      (bg-magenta-subtle  "#f7f2ff")
      (bg-cyan-subtle     "#eefcfc")

;;; Diffs
      (bg-added          bg-green-intense)
      (bg-added-faint    bg-green-subtle)
      (bg-added-refine   "#daf0e4")
      (fg-added          green)

      (bg-changed        bg-yellow-intense)
      (bg-changed-faint  bg-yellow-subtle)
      (bg-changed-refine "#ffe8b0")
      (fg-changed        yellow)

      (bg-removed        bg-red-intense)
      (bg-removed-faint  bg-red-subtle)
      (bg-removed-refine "#ffd0e0")
      (fg-removed        red)

;;; Graphs
      (bg-graph-red-0     red)
      (bg-graph-red-1     bg-red-intense)
      (bg-graph-green-0   green)
      (bg-graph-green-1   bg-green-intense)
      (bg-graph-yellow-0  yellow)
      (bg-graph-yellow-1  bg-yellow-intense)
      (bg-graph-blue-0    blue)
      (bg-graph-blue-1    bg-blue-intense)
      (bg-graph-magenta-0 magenta)
      (bg-graph-magenta-1 bg-magenta-intense)
      (bg-graph-cyan-0    cyan)
      (bg-graph-cyan-1    bg-cyan-intense)

;;; Special hues (UI)
      (bg-mode-line       "#FAFAFA")
      (fg-mode-line       fg-main)
      (bg-completion      "#ECEFF1")
      (bg-hover           "#E3F2FD")
      (bg-hover-secondary "#EDE7F6")
      (bg-hl-line         "#F5F5F5")
      (bg-paren           "#E0F2F1")
      (bg-err             bg-red-intense)
      (bg-warning         bg-yellow-intense)
      (bg-info            bg-blue-intense)

      (border        "#ECEFF1")
      (cursor        fg-alt)
      (fg-intense    "#000000")

      (modeline-err     red)
      (modeline-warning yellow)
      (modeline-info    blue)

      (underline-err     red)
      (underline-warning yellow)
      (underline-info    blue)

      (bg-char-0 "#e3f2fd")
      (bg-char-1 "#ede7f6")
      (bg-char-2 "#e0f2f1")

;;; Mappings
;;;; General mappings
      (bg-fringe unspecified)
      (fg-fringe unspecified)

      (err red)
      (warning yellow)
      (info blue)

      (link blue)
      (link-alt magenta)
      (name blue)
      (keybind blue)
      (identifier blue)
      (prompt magenta)

      (bg-region "#e8edf0")
      (fg-region unspecified)

;;;; Code mappings
      (builtin magenta)
      (comment fg-dim)
      (constant blue)
      (fnname cyan)
      (keyword blue)
      (preprocessor blue-cooler)
      (docstring yellow-faint)
      (string green)
      (type magenta)
      (variable fg-main)
      (rx-escape cyan-cooler)
      (rx-construct red)

;;;; Accent mappings
      (accent-0 blue)
      (accent-1 magenta)
      (accent-2 green)
      (accent-3 yellow)

;;;; Date mappings
      (date-common magenta)
      (date-deadline red)
      (date-deadline-subtle red-faint)
      (date-event fg-alt)
      (date-holiday red-warmer)
      (date-now fg-main)
      (date-range fg-alt)
      (date-scheduled yellow)
      (date-scheduled-subtle yellow-faint)
      (date-weekday magenta)
      (date-weekend blue-faint)

;;;; Prose mappings
      (prose-code blue)
      (prose-done green)
      (prose-macro green)
      (prose-metadata fg-dim)
      (prose-metadata-value fg-alt)
      (prose-table fg-alt)
      (prose-table-formula info)
      (prose-tag yellow-faint)
      (prose-todo yellow)
      (prose-verbatim magenta)

;;;; Mail mappings
      (mail-cite-0 blue)
      (mail-cite-1 red)
      (mail-cite-2 cyan-faint)
      (mail-cite-3 green-faint)
      (mail-part red-faint)
      (mail-recipient cyan-faint)
      (mail-subject magenta)
      (mail-other magenta-faint)

;;;; Search mappings
      (bg-search-match bg-warning)
      (bg-search-current bg-yellow-intense)
      (bg-search-lazy bg-blue-intense)
      (bg-search-replace bg-red-intense)

      (bg-search-rx-group-0 bg-magenta-intense)
      (bg-search-rx-group-1 bg-green-intense)
      (bg-search-rx-group-2 bg-red-subtle)
      (bg-search-rx-group-3 bg-cyan-subtle)

;;;; Space mappings
      (bg-space unspecified)
      (fg-space border)
      (bg-space-err bg-yellow-intense)

;;;; Tab mappings
      (bg-tab-bar      bg-alt)
      (bg-tab-current  bg-main)
      (bg-tab-other    bg-active)

;;;; Terminal mappings
      (bg-term-black           "black")
      (fg-term-black           "black")
      (bg-term-black-bright    "gray35")
      (fg-term-black-bright    "gray35")

      (bg-term-red             red)
      (fg-term-red             red)
      (bg-term-red-bright      red-warmer)
      (fg-term-red-bright      red-warmer)

      (bg-term-green           green)
      (fg-term-green           green)
      (bg-term-green-bright    green-cooler)
      (fg-term-green-bright    green-cooler)

      (bg-term-yellow          yellow)
      (fg-term-yellow          yellow)
      (bg-term-yellow-bright   yellow-warmer)
      (fg-term-yellow-bright   yellow-warmer)

      (bg-term-blue            blue)
      (fg-term-blue            blue)
      (bg-term-blue-bright     blue-cooler)
      (fg-term-blue-bright     blue-cooler)

      (bg-term-magenta         magenta)
      (fg-term-magenta         magenta)
      (bg-term-magenta-bright  magenta-cooler)
      (fg-term-magenta-bright  magenta-cooler)

      (bg-term-cyan            cyan)
      (fg-term-cyan            cyan)
      (bg-term-cyan-bright     cyan-cooler)
      (fg-term-cyan-bright     cyan-cooler)

      (bg-term-white           "gray65")
      (fg-term-white           "gray65")
      (bg-term-white-bright    "white")
      (fg-term-white-bright    "white")

;;;; Rainbow mappings
      (rainbow-0 blue)
      (rainbow-1 magenta)
      (rainbow-2 green)
      (rainbow-3 yellow)
      (rainbow-4 blue-faint)
      (rainbow-5 magenta-cooler)
      (rainbow-6 green-warmer)
      (rainbow-7 cyan)
      (rainbow-8 red))
    "The `ef-oxocarbon-light' palette.
Color values have the form (COLOR-NAME HEX-VALUE) with the former
as a symbol and the latter as a string.

Semantic color mappings have the form (MAPPING-NAME COLOR-NAME)
with both as symbols.  The latter is a color that already exists
in the palette and is associated with a HEX-VALUE.")

  (defcustom ef-oxocarbon-light-palette-overrides nil
    "Overrides for `ef-oxocarbon-light-palette'."
    :group 'ef-themes
    :package-version '(ef-themes . "1.0.0")
    :type '(repeat (list symbol (choice symbol string)))
    :link '(info-link "(ef-themes) Palette overrides"))

  (ef-themes-theme ef-oxocarbon-light ef-oxocarbon-light-palette ef-oxocarbon-light-palette-overrides)
  (provide-theme 'ef-oxocarbon-light))
