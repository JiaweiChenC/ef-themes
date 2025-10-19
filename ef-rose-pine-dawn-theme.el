;;; ef-rose-pine-dawn-theme.el --- Legible light theme inspired by Rose Pine Dawn -*- lexical-binding:t -*-

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
  (deftheme ef-rose-pine-dawn
    "Legible light theme inspired by Rose Pine Dawn."
    :background-mode 'light
    :kind 'color-scheme
    :family 'ef)

  (defconst ef-rose-pine-dawn-palette
    '(
;;; Basic values

      (bg-main     "#faf4ed")
      (fg-main     "#575279")
      (bg-dim      "#f2e9de")
      (fg-dim      "#a09a9c")
      (bg-alt      "#fffaf3")
      (fg-alt      "#9893a5")

      (bg-active   "#dfdad9")
      (bg-inactive "#f4ede8")

;;; Basic hues for foreground values

      (red             "#b4637a")
      (red-warmer      "#d7827e")
      (red-cooler      "#b4637a")
      (red-faint       "#b4637a")
      (green           "#286983")
      (green-warmer    "#56949f")
      (green-cooler    "#286983")
      (green-faint     "#56949f")
      (yellow          "#ea9d34")
      (yellow-warmer   "#ea9d34")
      (yellow-cooler   "#d7827e")
      (yellow-faint    "#ea9d34")
      (blue            "#286983")
      (blue-warmer     "#907aa9")
      (blue-cooler     "#286983")
      (blue-faint      "#56949f")
      (magenta         "#907aa9")
      (magenta-warmer  "#b4637a")
      (magenta-cooler  "#907aa9")
      (magenta-faint   "#907aa9")
      (cyan            "#56949f")
      (cyan-warmer     "#56949f")
      (cyan-cooler     "#286983")
      (cyan-faint      "#56949f")

;;; Basic hues for background values

      (bg-red-intense     "#f0c0b0")
      (bg-green-intense   "#b9e0b4")
      (bg-yellow-intense  "#ebe08f")
      (bg-blue-intense    "#ccd0f4")
      (bg-magenta-intense "#edc9ea")
      (bg-cyan-intense    "#bae5e0")

      (bg-red-subtle      "#f4d8d0")
      (bg-green-subtle    "#c9edd7")
      (bg-yellow-subtle   "#f5edaf")
      (bg-blue-subtle     "#e0d6f4")
      (bg-magenta-subtle  "#f2e4f0")
      (bg-cyan-subtle     "#d0e8e4")

;;; Diffs

      (bg-added          "#c9edd7")
      (bg-added-faint    "#d4f0dc")
      (bg-added-refine   "#b4e9d0")
      (fg-added          "#286983")

      (bg-changed        "#f5edaf")
      (bg-changed-faint  "#f8f0c4")
      (bg-changed-refine "#ebe08f")
      (fg-changed        "#ea9d34")

      (bg-removed        "#f4d8d0")
      (bg-removed-faint  "#f8e4e0")
      (bg-removed-refine "#f0c0b0")
      (fg-removed        "#b4637a")

;;; Graphs

      (bg-graph-red-0     "#d7827e")
      (bg-graph-red-1     "#f0c0b0")
      (bg-graph-green-0   "#56949f")
      (bg-graph-green-1   "#b9e0b4")
      (bg-graph-yellow-0  "#ea9d34")
      (bg-graph-yellow-1  "#ebe08f")
      (bg-graph-blue-0    "#286983")
      (bg-graph-blue-1    "#ccd0f4")
      (bg-graph-magenta-0 "#907aa9")
      (bg-graph-magenta-1 "#edc9ea")
      (bg-graph-cyan-0    "#56949f")
      (bg-graph-cyan-1    "#bae5e0")

;;; Special hues

      (bg-mode-line       "#f2e9de")
      (fg-mode-line       "#575279")
      (bg-completion      "#f0e7e0")
      (bg-hover           "#ebe08f")
      (bg-hover-secondary "#edc9ea")
      (bg-hl-line         "#f4ede8")
      (bg-paren           "#dfdad9")
      (bg-err             "#f4d8d0") ; check with err
      (bg-warning         "#f5edaf") ; check with warning
      (bg-info            "#d0e8e4") ; check with info

      (border        "#dfdad9")
      (cursor        "#575279")
      (fg-intense    "#575279")

      (modeline-err     "#b4637a")
      (modeline-warning "#ea9d34")
      (modeline-info    "#286983")

      (underline-err     "#b4637a")
      (underline-warning "#ea9d34")
      (underline-info    "#286983")

      (bg-char-0 "#bae5e0")
      (bg-char-1 "#edc9ea")
      (bg-char-2 "#ebe08f")

;;; Mappings

;;;; General mappings

      (bg-fringe unspecified)
      (fg-fringe unspecified)

      (err red)
      (warning yellow)
      (info cyan)

      (link blue)
      (link-alt magenta)
      (name cyan)
      (keybind blue)
      (identifier yellow)
      (prompt magenta)

      (bg-region "#f2e9de")
      (fg-region unspecified)

;;;; Code mappings

      (builtin magenta)
      (comment fg-dim)
      (constant blue-warmer)
      (fnname cyan)
      (keyword blue)
      (preprocessor cyan-cooler)
      (docstring yellow-faint)
      (string yellow)
      (type red-warmer)
      (variable magenta)
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

      (prose-code blue)
      (prose-done cyan)
      (prose-macro green)
      (prose-metadata fg-dim)
      (prose-metadata-value fg-alt)
      (prose-table fg-alt)
      (prose-table-formula info)
      (prose-tag yellow-faint)
      (prose-todo yellow)
      (prose-verbatim magenta)

;;;; Mail mappings

      (mail-cite-0 yellow)
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

      (rainbow-0 yellow)
      (rainbow-1 magenta)
      (rainbow-2 blue)
      (rainbow-3 red)
      (rainbow-4 magenta-cooler)
      (rainbow-5 green)
      (rainbow-6 cyan)
      (rainbow-7 yellow-warmer)
      (rainbow-8 red-faint))
    "The `ef-rose-pine-dawn' palette.
Color values have the form (COLOR-NAME HEX-VALUE) with the former
as a symbol and the latter as a string.

Semantic color mappings have the form (MAPPING-NAME COLOR-NAME)
with both as symbols.  The latter is a color that already exists
in the palette and is associated with a HEX-VALUE.")

  (defcustom ef-rose-pine-dawn-palette-overrides nil
    "Overrides for `ef-rose-pine-dawn-palette'.

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

  (ef-themes-theme ef-rose-pine-dawn ef-rose-pine-dawn-palette ef-rose-pine-dawn-palette-overrides)

  (provide-theme 'ef-rose-pine-dawn))

;;; ef-rose-pine-dawn-theme.el ends here

