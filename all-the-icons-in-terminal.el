;;; all-the-icons-in-terminal.el --- dataset of all-the-icons for icons-in-terminal
;;
;; Copyright (C) 2019 Youhei SASAKI<uwabami@gfd-dennou.org>
;;
;;
;; Author: Dominic Charlesworth <dgc336@gmail.com>
;; Version: 20190303
;; Package-Requires: ((all-the-icons "20190223.2143"))
;; URL: https://github.com/domtronn/all-the-icons.el
;; Keywords: convenient, lisp
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.
;;
;;; Commentary:
;;
;; This package was provide dataset of all-the-icons.el
;; https://github.com/domtronn/all-the-icons.el
;; by Dominic Charlesworth <dgc336@gmail.com>.
;;
;; Currently, this package provides an interface to the following Icon Fonts
;; through folk version of `icons-in-terminal` fonts.
;;
;; - Devicons                https://github.com/vorillaz/devicons
;; - FiraCode                https://github.com/tonsky/FiraCode
;; - Pomicons                https://github.com/gabrielelana/pomicons
;; - file-icons              https://atom.io/packages/file-icons
;; - font-linux              https://github.com/Lukas-W/font-linux
;; - font-mfizz              https://github.com/fizzed/font-mfizz
;; - fontawesome             http://fontawesome.io/
;; - linea                   http://linea.io/
;; - material-design-icons   https://github.com/google/material-design-icons
;; - octicons                https://octicons.github.com/
;; - powerline-extra-symbols https://github.com/ryanoasis/powerline-extra-symbols
;; - weather-icons           https://erikflowers.github.io/weather-icons/
;; - all-the-icons           https://github.com/domtronn/all-the-icons.el
;;
;;; Code:
(require 'all-the-icons)
(require 'data-alltheicons-in-terminal  "./data/data-alltheicons-in-terminal.el")
(require 'data-devicons-in-terminal     "./data/data-devicons-in-terminal.el")
(require 'data-faicons-in-terminal      "./data/data-faicons-in-terminal.el")
(require 'data-fileicons-in-terminal    "./data/data-fileicons-in-terminal.el")
(require 'data-linux-in-terminal        "./data/data-linux-in-terminal.el")
(require 'data-material-in-terminal     "./data/data-material-in-terminal.el")
(require 'data-octicons-in-terminal     "./data/data-octicons-in-terminal.el")
(require 'data-powerline-in-terminal    "./data/data-powerline-in-terminal.el")
(require 'data-weathericons-in-terminal "./data/data-weathericons-in-terminal.el")
;;
(define-icon alltheicon all-the-icons-in-terminal-data/alltheicons-alist    "icons-in-terminal")
(define-icon devicon    all-the-icons-in-terminal-data/devicons-alist       "icons-in-terminal")
(define-icon faicon     all-the-icons-in-terminal-data/fa-icon-alist        "icons-in-terminal")
(define-icon fileicon   all-the-icons-in-terminal-data/file-icon-alist      "icons-in-terminal")
(define-icon linux      all-the-icons-in-terminal-data/linux-alist          "icons-in-terminal")
(define-icon material   all-the-icons-in-terminal-data/material-icons-alist "icons-in-terminal")
(define-icon octicon    all-the-icons-in-terminal-data/octicons-alist       "icons-in-terminal")
(define-icon powerline  all-the-icons-in-terminal-data/powerline-alist      "icons-in-terminal")
(define-icon wicon      all-the-icons-in-terminal-data/weather-icons-alist  "icons-in-terminal")
;;
(provide 'all-the-icons-in-terminal)
;;; all-the-icons-in-terminal.el ends here
