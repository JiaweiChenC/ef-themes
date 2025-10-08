;;; ef-kanso-pearl-theme.el --- Legible light theme inspired by Kanso Pearl -*- lexical-binding:t -*-

;; Copyright (C) 2022-2024  Free Software Foundation, Inc.

;; Author: Protesilaos Stavrou <info@protesilaos.com>
;; Maintainer: Protesilaos Stavrou <info@protesilaos.com>
;; URL: https://github.com/protesilaos/ef-themes
;; Keywords: faces, theme, accessibility

;; This file is NOT part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; The `ef-themes' are a collection of light and dark themes for GNU
;; Emacs whose goal is to provide colorful ("pretty") yet legible
;; options for users who want something with a bit more flair than the
;; `modus-themes' (also designed by me).

;;; Code:



(eval-and-compile
  (require 'ef-themes)

;;;###theme-autoload
  (deftheme ef-kanso-pearl
    "Legible light theme inspired by Kanso Pearl."
    :background-mode 'light
    :kind 'color-scheme
    :family 'ef)

  (defconst ef-kanso-pearl-palette
    '(
;;; Basic values

      (bg-main     "#f2f1ef")
      (fg-main     "#22262d")
      (bg-dim      "#e2e1df")
      (fg-dim      "#6d6d69")
      (bg-alt      "#dddddb")
      (fg-alt      "#9f9f99")

      (bg-active   "#c7d7e0")
      (bg-inactive "#e2e1df")

;;; Basic hues for foreground values

      (red             "#e82424")
      (red-warmer      "#d7474b")
      (red-cooler      "#c84053")
      (red-faint       "#b35b79")
      (green           "#6e915f")
      (green-warmer    "#6f894e")
      (green-cooler    "#597b75")
      (green-faint     "#5e857a")
      (yellow          "#de9800")
      (yellow-warmer   "#e98a00")
      (yellow-cooler   "#cc6d00")
      (yellow-faint    "#836f4a")
      (blue            "#4d699b")
      (blue-warmer     "#6693bf")
      (blue-cooler     "#5a7785")
      (blue-faint      "#4e8ca2")
      (magenta         "#624c83")
      (magenta-warmer  "#b35b79")
      (magenta-cooler  "#624c83")
      (magenta-faint   "#77713f")
      (cyan            "#597b75")
      (cyan-warmer     "#5e857a")
      (cyan-cooler     "#4e8ca2")
      (cyan-faint      "#597b75")

;;; Basic hues for background values

      (bg-red-intense     "#f0c0b0")
      (bg-green-intense   "#b7d0ae")
      (bg-yellow-intense  "#ebe08f")
      (bg-blue-intense    "#b5cbd2")
      (bg-magenta-intense "#edc9ea")
      (bg-cyan-intense    "#bae5e0")

      (bg-red-subtle      "#f4d8d0")
      (bg-green-subtle    "#c9edd7")
      (bg-yellow-subtle   "#f5edaf")
      (bg-blue-subtle     "#d0e4f0")
      (bg-magenta-subtle  "#f2e4f0")
      (bg-cyan-subtle     "#d0e8e4")

;;; Diffs

      (bg-added          "#b7d0ae")
      (bg-added-faint    "#c9edd7")
      (bg-added-refine   "#a4d4c4")
      (fg-added          "#6e915f")

      (bg-changed        "#f5edaf")
      (bg-changed-faint  "#f8f0c4")
      (bg-changed-refine "#ebe08f")
      (fg-changed        "#de9800")

      (bg-removed        "#f4d8d0")
      (bg-removed-faint  "#f8e4e0")
      (bg-removed-refine "#f0c0b0")
      (fg-removed        "#d7474b")

;;; Graphs

      (bg-graph-red-0     "#e82424")
      (bg-graph-red-1     "#f0c0b0")
      (bg-graph-green-0   "#6e915f")
      (bg-graph-green-1   "#b7d0ae")
      (bg-graph-yellow-0  "#de9800")
      (bg-graph-yellow-1  "#ebe08f")
      (bg-graph-blue-0    "#4d699b")
      (bg-graph-blue-1    "#b5cbd2")
      (bg-graph-magenta-0 "#624c83")
      (bg-graph-magenta-1 "#edc9ea")
      (bg-graph-cyan-0    "#597b75")
      (bg-graph-cyan-1    "#bae5e0")

;;; Special hues

      (bg-mode-line       "#e2e1df")
      (fg-mode-line       "#22262d")
      (bg-completion      "#c7d7e0")
      (bg-hover           "#b5cbd2")
      (bg-hover-secondary "#edc9ea")
      (bg-hl-line         "#e2e1df")
      (bg-paren           "#c7d7e0")
      (bg-err             "#f4d8d0") ; check with err
      (bg-warning         "#f5edaf") ; check with warning
      (bg-info            "#d0e8e4") ; check with info

      (border        "#c7d7e0")
      (cursor        "#22262d")
      (fg-intense    "#22262d")

      (modeline-err     "#e82424")
      (modeline-warning "#de9800")
      (modeline-info    "#4d699b")

      (underline-err     "#e82424")
      (underline-warning "#de9800")
      (underline-info    "#4d699b")

      (bg-char-0 "#bae5e0")
      (bg-char-1 "#edc9ea")
      (bg-char-2 "#ebe08f")

;;; Mappings

;;;; General mappings

      (bg-fringe unspecified)
      (fg-fringe unspecified)

      (err red)
      (warning yellow)
      (info blue)

      (link blue-faint)
      (link-alt cyan-warmer)
      (name blue)
      (keybind blue)
      (identifier yellow-cooler)
      (prompt magenta)

      (bg-region "#c7d7e0")
      (fg-region unspecified)

;;;; Code mappings

      (builtin magenta)
      (comment fg-dim)
      (constant yellow-cooler)
      (fnname green)
      (keyword magenta)
      (preprocessor blue)
      (docstring yellow-faint)
      (string yellow-cooler)
      (type blue)
      (variable fg-main)
      (rx-escape cyan-cooler) ; compare with `string'
      (rx-construct red)

;;;; Accent mappings

      (accent-0 yellow)
      (accent-1 red)
      (accent-2 magenta)
      (accent-3 blue)

;;;; Date mappings

      (date-common magenta-faint)
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

      (prose-code yellow-cooler)
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

      (mail-cite-0 yellow-cooler)
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

      (rainbow-0 yellow-cooler)
      (rainbow-1 magenta)
      (rainbow-2 blue)
      (rainbow-3 red)
      (rainbow-4 green)
      (rainbow-5 cyan)
      (rainbow-6 yellow)
      (rainbow-7 magenta-warmer)
      (rainbow-8 blue-faint))
    "The `ef-kanso-pearl' palette.
Color values have the form (COLOR-NAME HEX-VALUE) with the former
as a symbol and the latter as a string.

Semantic color mappings have the form (MAPPING-NAME COLOR-NAME)
with both as symbols.  The latter is a color that already exists
in the palette and is associated with a HEX-VALUE.")

  (defcustom ef-kanso-pearl-palette-overrides nil
    "Overrides for `ef-kanso-pearl-palette'.

Mirror the elements of the aforementioned palette, overriding
their value.

For overrides that are shared across all of the Ef themes,
refer to `ef-themes-common-palette-overrides'.

To preview the palette entries, use `ef-themes-preview-colors' or
`ef-themes-preview-colors-current' (read the documentation for
further details)."
    :group 'ef-themes
    :package-version '(ef-themes . "1.0.0")
    :type '(repeat (list symbol (choice symbol string)))
    :link '(info-link "(ef-themes) Palette overrides"))

  (ef-themes-theme ef-kanso-pearl ef-kanso-pearl-palette ef-kanso-pearl-palette-overrides)

  (provide-theme 'ef-kanso-pearl))

;;; ef-kanso-pearl-theme.el ends here
