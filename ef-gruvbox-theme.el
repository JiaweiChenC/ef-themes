;;; ef-gruvbox-theme.el --- Gruvbox Dark Medium inspired theme -*- lexical-binding:t -*-

(eval-and-compile
  (require 'ef-themes)

;;;###theme-autoload
  (deftheme ef-gruvbox
    "Gruvbox Dark Medium inspired theme."
    :background-mode 'dark
    :kind 'color-scheme
    :family 'ef)

  (defconst ef-gruvbox-palette
    '(
;;; Basic values
      (bg-main     "#282828")
      (fg-main     "#ebdbb2")
      (bg-dim      "#3c3836")
      (fg-dim      "#a89984")
      (bg-alt      "#3c3836")
      (fg-alt      "#d5c4a1")

      (bg-active   "#504945")
      (bg-inactive "#32302f")

;;; Basic hues
      (red             "#fb4934")
      (red-warmer      "#cc241d")
      (red-cooler      "#d3869b")
      (red-faint       "#b16286")

      (green           "#b8bb26")
      (green-warmer    "#98971a")
      (green-cooler    "#8ec07c")
      (green-faint     "#689d6a")

      (yellow          "#fabd2f")
      (yellow-warmer   "#d79921")
      (yellow-cooler   "#fe8019")
      (yellow-faint    "#d65d0e")

      (blue            "#83a598")
      (blue-warmer     "#458588")
      (blue-cooler     "#8ec07c")
      (blue-faint      "#83a598")

      (magenta         "#d3869b")
      (magenta-warmer  "#b16286")
      (magenta-cooler  "#d3869b")
      (magenta-faint   "#b16286")

      (cyan            "#8ec07c")
      (cyan-warmer     "#83a598")
      (cyan-cooler     "#689d6a")
      (cyan-faint      "#458588")

;;; Background accents
      (bg-red-intense     "#3c2b2b")
      (bg-green-intense   "#2b3c2b")
      (bg-yellow-intense  "#3c392b")
      (bg-blue-intense    "#2b353c")
      (bg-magenta-intense "#3c2b36")
      (bg-cyan-intense    "#2b3c3a")

      (bg-red-subtle      "#4a2f2f")
      (bg-green-subtle    "#2f4a2f")
      (bg-yellow-subtle   "#4a452f")
      (bg-blue-subtle     "#2f3f4a")
      (bg-magenta-subtle  "#4a2f42")
      (bg-cyan-subtle     "#2f4a47")

;;; Diffs
      (bg-added          "#2f4a2f")
      (bg-added-faint    "#2b3c2b")
      (bg-added-refine   "#355a35")
      (fg-added          "#b8bb26")

      (bg-changed        "#4a452f")
      (bg-changed-faint  "#3c392b")
      (bg-changed-refine "#5a4e35")
      (fg-changed        "#fabd2f")

      (bg-removed        "#4a2f2f")
      (bg-removed-faint  "#3c2b2b")
      (bg-removed-refine "#5a3535")
      (fg-removed        "#fb4934")

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

;;; Special hues
      (bg-mode-line       "#3c3836")
      (fg-mode-line       fg-main)
      (bg-completion      "#3c3836")
      (bg-hover           "#3c383680")
      (bg-hover-secondary "#504945")
      (bg-hl-line         "#3c383660")
      (bg-paren           "#92837480")
      (bg-err             "#3c2b2b")
      (bg-warning         "#3c392b")
      (bg-info            "#2b353c")

      (border        "#3c3836")
      (cursor        fg-main)
      (fg-intense    "#ffffff")

      (modeline-err     red)
      (modeline-warning yellow)
      (modeline-info    blue)

      (underline-err     red)
      (underline-warning yellow)
      (underline-info    blue)

      (bg-char-0 "#3c383680")
      (bg-char-1 "#50494580")
      (bg-char-2 "#665c5480")

;;; Mappings
      (bg-fringe unspecified)
      (fg-fringe unspecified)

      (err red)
      (warning yellow)
      (info blue)

      (link blue)
      (link-alt cyan)
      (name blue)
      (keybind blue)
      (identifier yellow)
      (prompt magenta)

      (bg-region "#3c383680")
      (fg-region unspecified)

;;; Code mappings
      (builtin magenta)
      (comment fg-dim)
      (constant magenta)
      (fnname green-cooler)
      (fncall blue) ; VSCode gruvbox uses blue-ish for function calls
      (keyword red)
      (preprocessor yellow-cooler)
      (docstring yellow-warmer)
      (string green)
      (type yellow)
      (variable fg-main)
      (rx-escape red-warmer)
      (rx-construct yellow-faint)

;;; Accent mappings
      (accent-0 yellow)
      (accent-1 red)
      (accent-2 green)
      (accent-3 blue)

;;; Date mappings
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

;;; Prose mappings
      (prose-code green-cooler)
      (prose-done green)
      (prose-macro green)
      (prose-metadata fg-dim)
      (prose-metadata-value fg-alt)
      (prose-table fg-alt)
      (prose-table-formula info)
      (prose-tag yellow-warmer)
      (prose-todo yellow)
      (prose-verbatim magenta)

;;; Mail mappings
      (mail-cite-0 yellow)
      (mail-cite-1 red)
      (mail-cite-2 cyan-faint)
      (mail-cite-3 green-faint)
      (mail-part red-faint)
      (mail-recipient cyan-faint)
      (mail-subject magenta)
      (mail-other magenta-faint)

;;; Search mappings
      (bg-search-match bg-warning)
      (bg-search-current bg-yellow-intense)
      (bg-search-lazy bg-blue-intense)
      (bg-search-replace bg-red-intense)

      (bg-search-rx-group-0 bg-magenta-intense)
      (bg-search-rx-group-1 bg-green-intense)
      (bg-search-rx-group-2 bg-red-subtle)
      (bg-search-rx-group-3 bg-cyan-subtle)

;;; Space mappings
      (bg-space unspecified)
      (fg-space border)
      (bg-space-err bg-yellow-intense)

;;; Tab mappings
      (bg-tab-bar      bg-alt)
      (bg-tab-current  bg-main)
      (bg-tab-other    bg-active)

;;; Terminal mappings
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
      (bg-term-green-bright    green-warmer)
      (fg-term-green-bright    green-warmer)

      (bg-term-yellow          yellow)
      (fg-term-yellow          yellow)
      (bg-term-yellow-bright   yellow-warmer)
      (fg-term-yellow-bright   yellow-warmer)

      (bg-term-blue            blue)
      (fg-term-blue            blue)
      (bg-term-blue-bright     blue-warmer)
      (fg-term-blue-bright     blue-warmer)

      (bg-term-magenta         magenta)
      (fg-term-magenta         magenta)
      (bg-term-magenta-bright  magenta-warmer)
      (fg-term-magenta-bright  magenta-warmer)

      (bg-term-cyan            cyan)
      (fg-term-cyan            cyan)
      (bg-term-cyan-bright     cyan-warmer)
      (fg-term-cyan-bright     cyan-warmer)

      (bg-term-white           "gray65")
      (fg-term-white           "gray65")
      (bg-term-white-bright    "white")
      (fg-term-white-bright    "white")

;;; Rainbow mappings
      (rainbow-0 yellow)
      (rainbow-1 magenta)
      (rainbow-2 green)
      (rainbow-3 blue)
      (rainbow-4 yellow-warmer)
      (rainbow-5 red)
      (rainbow-6 cyan)
      (rainbow-7 blue-warmer)
      (rainbow-8 green-faint))
    "The `ef-gruvbox' palette.")

  (defcustom ef-gruvbox-palette-overrides nil
    "Overrides for `ef-gruvbox-palette'."
    :group 'ef-themes
    :package-version '(ef-themes . "1.0.0")
    :type '(repeat (list symbol (choice symbol string)))
    :link '(info-link "(ef-themes) Palette overrides"))

  (ef-themes-theme ef-gruvbox ef-gruvbox-palette ef-gruvbox-palette-overrides)
  (provide-theme 'ef-gruvbox))

