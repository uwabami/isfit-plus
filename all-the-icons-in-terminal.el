;;; all-the-icons-in-terminal.el --- dataset of all-the-icons for icons-in-terminal
;;
;; Copyright (C) 2019-2021 Youhei SASAKI<uwabami@gfd-dennou.org>
;;
;; Original author: Youhei SASAKI<uwabami@gfd-dennou.org>
;; Version: 20221027
;; Package-Requires: ((emacs "28.0") (all-the-icons-nerd-fonts "0.2"))
;; URL: https://github.com/uwabami/isfit-plus
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
;; This package was provide dataset of all-the-icons-nerd-fonts.el
;; with isfit+, Icon Symbols Font In Terminal plus:
;; https://github.com/uwabami/isfit-plus
;;
;; Currently, this package provides an interface to the following Icon Fonts.
;;
;; - file-icons              https://atom.io/packages/file-icons
;; - material-design-icons   https://github.com/google/material-design-icons
;; - all-the-icons           https://github.com/domtronn/all-the-icons.el
;;
;;; Code:
(require 'all-the-icons-nerd-fonts)
(require 'data-alltheicons-in-terminal  "./data/data-alltheicons-in-terminal.el")
(require 'data-fileicons-in-terminal    "./data/data-fileicons-in-terminal.el")
(require 'data-material-in-terminal    "./data/data-materila-in-terminal.el")
;;
(defgroup all-the-icons-in-terminal nil
  "font integration for all-the-icons."
  :prefix "all-the-icons-in-terminal-"
  :group 'all-the-icons)

(defcustom all-the-icons-in-terminal-family "isfit+"
  "The font-family to use with `all-the-icons-in-terminal' icons."
  :type 'string)

(all-the-icons-define-icon alltheicon all-the-icons-in-terminal-data/alltheicons-alist   all-the-icons-in-terminal-family)
(all-the-icons-define-icon fileicon   all-the-icons-in-terminal-data/file-icon-alist     all-the-icons-in-terminal-family)
(all-the-icons-define-icon material   all-the-icons-in-terminal-data/material-icon-alist all-the-icons-in-terminal-family)
;;

(provide 'all-the-icons-in-terminal)
;;; all-the-icons-in-terminal.el ends here
