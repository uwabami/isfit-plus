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
(require 'data-material-in-terminal     "./data/data-material-in-terminal.el")
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

;; override icons alist
(defvar all-the-icons-in-terminal-extension-icon-alist
  '(
    ("fish"         all-the-icons-alltheicon "terminal"       :face all-the-icons-lpink)
    ("zsh"          all-the-icons-alltheicon "terminal"       :face all-the-icons-lcyan)
    ("sh"           all-the-icons-alltheicon "terminal"       :face all-the-icons-purple)
    ;; Meta
    ("tags"         all-the-icons-octicon "tag"               :face all-the-icons-blue)
    ("log"          all-the-icons-octicon "bug"               :face all-the-icons-maroon)
    ;; Config
    ("node"         all-the-icons-alltheicon "nodejs"         :face all-the-icons-green)
    ("babelrc"      all-the-icons-fileicon "babel"            :face all-the-icons-yellow)
    ("bashrc"       all-the-icons-alltheicon "script"         :face all-the-icons-dpink)
    ("bowerrc"      all-the-icons-alltheicon "bower"          :face all-the-icons-silver)
    ("cr"           all-the-icons-fileicon "crystal"          :face all-the-icons-yellow)
    ("ecr"          all-the-icons-fileicon "crystal"          :face all-the-icons-yellow)
    ("ini"          all-the-icons-octicon "settings"          :face all-the-icons-yellow)
    ("eslintignore" all-the-icons-fileicon "eslint"           :face all-the-icons-purple)
    ("eslint"       all-the-icons-fileicon "eslint"           :face all-the-icons-lpurple)
    ("git"          all-the-icons-alltheicon "git"            :face all-the-icons-lred)
    ("mk"           all-the-icons-fileicon "gnu"              :face all-the-icons-dorange)
    ("cmake"        all-the-icons-fileicon "cmake"            :face all-the-icons-red)
    ("dockerignore" all-the-icons-fileicon "dockerfile"       :face all-the-icons-dblue)
    ("xml"          all-the-icons-faicon "file-code-o"        :face all-the-icons-lorange)
    ("json"         all-the-icons-octicon "settings"          :face all-the-icons-yellow)
    ("cson"         all-the-icons-octicon "settings"          :face all-the-icons-yellow)
    ("yml"          all-the-icons-octicon "settings"          :face all-the-icons-dyellow)
    ("yaml"         all-the-icons-octicon "settings"          :face all-the-icons-dyellow)
    ;; ?
    ("pkg"          all-the-icons-octicon "package"           :face all-the-icons-dsilver)
    ("rpm"          all-the-icons-octicon "package"           :face all-the-icons-dsilver)
    ("pkgbuild"     all-the-icons-octicon "package"           :face all-the-icons-dsilver)
    ("elc"          all-the-icons-octicon "file-binary"       :face all-the-icons-dsilver)
    ("gz"           all-the-icons-octicon "file-binary"       :face all-the-icons-lmaroon)
    ("zip"          all-the-icons-octicon "file-zip"          :face all-the-icons-lmaroon)
    ("7z"           all-the-icons-octicon "file-zip"          :face all-the-icons-lmaroon)
    ("dat"          all-the-icons-faicon "bar-chart"          :face all-the-icons-cyan)
    ("dmg"          all-the-icons-octicon "tools"             :face all-the-icons-lsilver)
    ("dll"          all-the-icons-faicon "cogs"               :face all-the-icons-silver)
    ("ds_store"     all-the-icons-faicon "cogs"               :face all-the-icons-silver)
    ;; Source Codes
    ("scpt"         all-the-icons-fileicon "apple"            :face all-the-icons-pink)
    ("aup"          all-the-icons-fileicon "audacity"         :face all-the-icons-yellow)
    ("elm"          all-the-icons-fileicon "elm"              :face all-the-icons-blue)
    ("erl"          all-the-icons-alltheicon "erlang"         :face all-the-icons-red)
    ("hrl"          all-the-icons-alltheicon "erlang"         :face all-the-icons-dred)
    ("eex"          all-the-icons-alltheicon "elixir"         :face all-the-icons-lorange)
    ("leex"         all-the-icons-alltheicon "elixir"         :face all-the-icons-lorange)
    ("heex"         all-the-icons-alltheicon "elixir"         :face all-the-icons-lorange)
    ("ex"           all-the-icons-alltheicon "elixir"         :face all-the-icons-lpurple)
    ("exs"          all-the-icons-alltheicon "elixir"         :face all-the-icons-lred)
    ("java"         all-the-icons-alltheicon "java"           :face all-the-icons-purple)
    ("gradle"       all-the-icons-fileicon "gradle"           :face all-the-icons-silver)
    ("ebuild"       all-the-icons-fileicon "gentoo"           :face all-the-icons-cyan)
    ("eclass"       all-the-icons-fileicon "gentoo"           :face all-the-icons-blue)
    ("go"           all-the-icons-fileicon "go"               :face all-the-icons-blue)
    ("jl"           all-the-icons-fileicon "julia"            :face all-the-icons-purple)
    ("magik"        all-the-icons-faicon "magic"              :face all-the-icons-blue)
    ("matlab"       all-the-icons-fileicon "matlab"           :face all-the-icons-orange)
    ("nix"          all-the-icons-fileicon "nix"              :face all-the-icons-blue)
    ("pl"           all-the-icons-alltheicon "perl"           :face all-the-icons-lorange)
    ("pm"           all-the-icons-alltheicon "perl"           :face all-the-icons-lorange)
    ("pl6"          all-the-icons-fileicon "raku"             :face all-the-icons-cyan)
    ("pm6"          all-the-icons-fileicon "raku"             :face all-the-icons-pink)
    ("pod"          all-the-icons-alltheicon "perldocs"       :face all-the-icons-lgreen)
    ("php"          all-the-icons-fileicon "php"              :face all-the-icons-lsilver)
    ("pony"         all-the-icons-fileicon "pony"             :face all-the-icons-maroon)
    ("ps1"          all-the-icons-fileicon "powershell"       :face all-the-icons-blue)
    ("pro"          all-the-icons-alltheicon "prolog"         :face all-the-icons-lmaroon)
    ("proog"        all-the-icons-alltheicon "prolog"         :face all-the-icons-lmaroon)
    ("py"           all-the-icons-alltheicon "python"         :face all-the-icons-dblue)
    ("idr"          all-the-icons-fileicon "idris"            :face all-the-icons-red)
    ("ipynb"        all-the-icons-fileicon "jupyter"          :face all-the-icons-dorange)
    ("gem"          all-the-icons-alltheicon "ruby-alt"       :face all-the-icons-red)
    ("raku"         all-the-icons-fileicon "raku"             :face all-the-icons-cyan)
    ("rakumod"      all-the-icons-fileicon "raku"             :face all-the-icons-pink)
    ("rb"           all-the-icons-octicon "ruby"              :face all-the-icons-lred)
    ("rs"           all-the-icons-alltheicon "rust"           :face all-the-icons-maroon)
    ("rlib"         all-the-icons-alltheicon "rust"           :face all-the-icons-dmaroon)
    ("r"            all-the-icons-fileicon "R"                :face all-the-icons-lblue)
    ("rd"           all-the-icons-fileicon "R"                :face all-the-icons-lblue)
    ("rdx"          all-the-icons-fileicon "R"                :face all-the-icons-lblue)
    ("rsx"          all-the-icons-fileicon "R"                :face all-the-icons-lblue)
    ("svelte"       all-the-icons-fileicon "svelte"           :face all-the-icons-red)
    ("gql"          all-the-icons-fileicon "graphql"          :face all-the-icons-dpink)
    ("graphql"      all-the-icons-fileicon "graphql"          :face all-the-icons-dpink)
    ;; There seems to be a a bug with this font icon which does not
    ;; let you propertise it without it reverting to being a lower
    ;; case phi
    ("c"            all-the-icons-alltheicon "c-line"         :face all-the-icons-blue)
    ("h"            all-the-icons-alltheicon "c-line"         :face all-the-icons-purple)
    ("m"            all-the-icons-fileicon "apple")
    ("mm"           all-the-icons-fileicon "apple")
    ;;
    ("cc"           all-the-icons-alltheicon "cplusplus-line" :face all-the-icons-blue)
    ("cpp"          all-the-icons-alltheicon "cplusplus-line" :face all-the-icons-blue)
    ("cxx"          all-the-icons-alltheicon "cplusplus-line" :face all-the-icons-blue)
    ("hh"           all-the-icons-alltheicon "cplusplus-line" :face all-the-icons-purple)
    ("hpp"          all-the-icons-alltheicon "cplusplus-line" :face all-the-icons-purple)
    ("hxx"          all-the-icons-alltheicon "cplusplus-line" :face all-the-icons-purple)
    ;; Lisps
    ("cl"           all-the-icons-fileicon "clisp"            :face all-the-icons-lorange)
    ("l"            all-the-icons-fileicon "lisp"             :face all-the-icons-orange)
    ("lisp"         all-the-icons-fileicon "lisp"             :face all-the-icons-orange)
    ("hy"           all-the-icons-fileicon "hy"               :face all-the-icons-blue)
    ("el"           all-the-icons-fileicon "elisp"            :face all-the-icons-purple)
    ("clj"          all-the-icons-alltheicon "clojure-line"   :face all-the-icons-blue)
    ("cljc"         all-the-icons-alltheicon "clojure-line"   :face all-the-icons-blue)
    ("cljs"         all-the-icons-fileicon "cljs"             :face all-the-icons-dblue)
    ("coffee"       all-the-icons-alltheicon "coffeescript"   :face all-the-icons-maroon)
    ("iced"         all-the-icons-alltheicon "coffeescript"   :face all-the-icons-lmaroon)
    ("dart"         all-the-icons-fileicon "dart"             :face all-the-icons-blue)
    ("rkt"          all-the-icons-fileicon "racket"           :face all-the-icons-red)
    ("scrbl"        all-the-icons-fileicon "racket"           :face all-the-icons-blue)
    ;; Stylesheeting
    ("css"          all-the-icons-alltheicon "css3"           :face all-the-icons-yellow)
    ("scss"         all-the-icons-alltheicon "sass"           :face all-the-icons-pink)
    ("sass"         all-the-icons-alltheicon "sass"           :face all-the-icons-dpink)
    ("less"         all-the-icons-alltheicon "less"           :face all-the-icons-dyellow)
    ("postcss"      all-the-icons-fileicon "postcss"          :face all-the-icons-dred)
    ("pcss"         all-the-icons-fileicon "postcss"          :face all-the-icons-dred)
    ("sss"          all-the-icons-fileicon "postcss"          :face all-the-icons-dred)
    ("styl"         all-the-icons-alltheicon "stylus"         :face all-the-icons-lgreen)
    ("csv"          all-the-icons-octicon "graph"             :face all-the-icons-dblue)
    ;; haskell
    ("hs"           all-the-icons-alltheicon "haskell"        :face all-the-icons-red)
    ("chs"          all-the-icons-alltheicon "haskell"        :face all-the-icons-red)
    ("lhs"          all-the-icons-alltheicon "haskell"        :face all-the-icons-red)
    ("hsc"          all-the-icons-alltheicon "haskell"        :face all-the-icons-red)
    ;; Web modes
    ("inky-haml"    all-the-icons-fileicon "haml"             :face all-the-icons-lyellow)
    ("haml"         all-the-icons-fileicon "haml"             :face all-the-icons-lyellow)
    ("htm"          all-the-icons-alltheicon "html5"          :face all-the-icons-orange)
    ("html"         all-the-icons-alltheicon "html5"          :face all-the-icons-orange)
    ("inky-er"      all-the-icons-alltheicon "html5"          :face all-the-icons-lred)
    ("inky-erb"     all-the-icons-alltheicon "html5"          :face all-the-icons-lred)
    ("erb"          all-the-icons-alltheicon "html5"          :face all-the-icons-lred)
    ("hbs"          all-the-icons-fileicon "moustache"        :face all-the-icons-green)
    ("inky-slim"    all-the-icons-octicon "dashboard"         :face all-the-icons-yellow)
    ("slim"         all-the-icons-octicon "dashboard"         :face all-the-icons-yellow)
    ("jade"         all-the-icons-fileicon "jade"             :face all-the-icons-red)
    ("pug"          all-the-icons-fileicon "pug-alt"          :face all-the-icons-red)
    ;; Javascript
    ("d3js"         all-the-icons-alltheicon "d3"             :face all-the-icons-lgreen)
    ("re"           all-the-icons-fileicon "reason"           :face all-the-icons-red-alt)
    ("rei"          all-the-icons-fileicon "reason"           :face all-the-icons-dred)
    ("ml"           all-the-icons-fileicon "ocaml"            :face all-the-icons-lpink)
    ("mli"          all-the-icons-fileicon "ocaml"            :face all-the-icons-dpink)
    ("react"        all-the-icons-alltheicon "react"          :face all-the-icons-lblue)
    ("ts"           all-the-icons-fileicon "typescript"       :face all-the-icons-blue-alt)
    ("js"           all-the-icons-alltheicon "javascript"     :face all-the-icons-yellow)
    ("mjs"          all-the-icons-alltheicon "javascript"     :face all-the-icons-yellow)
    ("es"           all-the-icons-alltheicon "javascript"     :face all-the-icons-yellow)
    ("jsx"          all-the-icons-fileicon "jsx-2"            :face all-the-icons-cyan-alt)
    ("tsx"          all-the-icons-fileicon "tsx"              :face all-the-icons-cyan-alt)
    ("njs"          all-the-icons-alltheicon "nodejs"         :face all-the-icons-lgreen)
    ("vue"          all-the-icons-fileicon "vue"              :face all-the-icons-lgreen)
    ("wasm"         all-the-icons-fileicon "wasm"             :face all-the-icons-purple-alt)
    ("wat"          all-the-icons-fileicon "wasm"             :face all-the-icons-purple-alt)

    ("sbt"          all-the-icons-fileicon   "sbt"            :face all-the-icons-red)
    ("scala"        all-the-icons-alltheicon "scala"          :face all-the-icons-red)
    ("scm"          all-the-icons-fileicon   "scheme"         :face all-the-icons-red)
    ("swift"        all-the-icons-alltheicon "swift"          :face all-the-icons-green)

    ("tcl"          all-the-icons-fileicon "tcl"              :face all-the-icons-dred)

    ("tf"           all-the-icons-fileicon "terraform"        :face all-the-icons-purple-alt)
    ("tfvars"       all-the-icons-fileicon "terraform"        :face all-the-icons-purple-alt)
    ("tfstate"      all-the-icons-fileicon "terraform"        :face all-the-icons-purple-alt)

    ("asm"          all-the-icons-fileicon "assembly"         :face all-the-icons-blue)
    ;; Verilog(-AMS) and SystemVerilog(-AMS)
    ("v"            all-the-icons-fileicon "verilog"          :face all-the-icons-red)
    ("vams"         all-the-icons-fileicon "verilog"          :face all-the-icons-red)
    ("sv"           all-the-icons-fileicon "verilog"          :face all-the-icons-red)
    ("sva"          all-the-icons-fileicon "verilog"          :face all-the-icons-red)
    ("svh"          all-the-icons-fileicon "verilog"          :face all-the-icons-red)
    ("svams"        all-the-icons-fileicon "verilog"          :face all-the-icons-red)
    ;; VHDL(-AMS)
    ("vhd"          all-the-icons-fileicon "vhdl"             :face all-the-icons-blue)
    ("vhdl"         all-the-icons-fileicon "vhdl"             :face all-the-icons-blue)
    ("vhms"         all-the-icons-fileicon "vhdl"             :face all-the-icons-blue)
    ;; Cabal
    ("cabal"        all-the-icons-fileicon "cabal"            :face all-the-icons-lblue)
    ;; Kotlin
    ("kt"           all-the-icons-fileicon "kotlin"           :face all-the-icons-orange)
    ("kts"          all-the-icons-fileicon "kotlin"           :face all-the-icons-orange)
    ;; Nimrod
    ("nim"          all-the-icons-fileicon "nimrod"           :face all-the-icons-yellow)
    ("nims"         all-the-icons-fileicon "nimrod"           :face all-the-icons-yellow)
    ;; SQL
    ("sql"          all-the-icons-octicon "database"          :face all-the-icons-silver)
    ;; Styles
    ("styles"       all-the-icons-material "style"            :face all-the-icons-red)
    ;; Lua
    ("lua"          all-the-icons-fileicon "lua"              :face all-the-icons-dblue)
    ;; ASCII doc
    ("adoc"         all-the-icons-fileicon "asciidoc"         :face all-the-icons-lblue)
    ("asciidoc"     all-the-icons-fileicon "asciidoc"         :face all-the-icons-lblue)
    ;; Puppet
    ("pp"           all-the-icons-fileicon "puppet"           :face all-the-icons-yellow)
    ;; Jinja
    ("j2"           all-the-icons-fileicon "jinja"            :face all-the-icons-silver)
    ("jinja2"       all-the-icons-fileicon "jinja"            :face all-the-icons-silver)
    ;; Docker
    ("dockerfile"   all-the-icons-fileicon "dockerfile"       :face all-the-icons-cyan)
    ;; Vagrant
    ("vagrantfile"  all-the-icons-fileicon "vagrant"          :face all-the-icons-blue)
    ;; GLSL
    ("glsl"         all-the-icons-fileicon "vertex-shader"    :face all-the-icons-blue)
    ("vert"         all-the-icons-fileicon "vertex-shader"    :face all-the-icons-blue)
    ("tesc"         all-the-icons-fileicon "vertex-shader"    :face all-the-icons-purple)
    ("tese"         all-the-icons-fileicon "vertex-shader"    :face all-the-icons-dpurple)
    ("geom"         all-the-icons-fileicon "vertex-shader"    :face all-the-icons-green)
    ("frag"         all-the-icons-fileicon "vertex-shader"    :face all-the-icons-red)
    ("comp"         all-the-icons-fileicon "vertex-shader"    :face all-the-icons-dblue)
    ;; CUDA
    ("cu"           all-the-icons-fileicon "nvidia"           :face all-the-icons-green)
    ("cuh"          all-the-icons-fileicon "nvidia"           :face all-the-icons-green)
    ;; Fortran
    ("f90"          all-the-icons-fileicon "fortran"          :face all-the-icons-purple)
    ;; C#
    ("cs"           all-the-icons-alltheicon "csharp-line"    :face all-the-icons-dblue)
    ("csx"          all-the-icons-alltheicon "csharp-line"    :face all-the-icons-dblue)
    ;; F#
    ("fs"           all-the-icons-fileicon "fsharp"           :face all-the-icons-blue-alt)
    ("fsi"          all-the-icons-fileicon "fsharp"           :face all-the-icons-blue-alt)
    ("fsx"          all-the-icons-fileicon "fsharp"           :face all-the-icons-blue-alt)
    ("fsscript"     all-the-icons-fileicon "fsharp"           :face all-the-icons-blue-alt)
    ;; zig
    ("zig"          all-the-icons-fileicon "zig"              :face all-the-icons-orange)
    ;; odin
    ("odin"         all-the-icons-fileicon "odin"             :face all-the-icons-lblue)
    ;; File Types
    ("ico"          all-the-icons-octicon "file-media"        :face all-the-icons-blue)
    ("png"          all-the-icons-octicon "file-media"        :face all-the-icons-orange)
    ("gif"          all-the-icons-octicon "file-media"        :face all-the-icons-green)
    ("jpeg"         all-the-icons-octicon "file-media"        :face all-the-icons-dblue)
    ("jpg"          all-the-icons-octicon "file-media"        :face all-the-icons-dblue)
    ("webp"         all-the-icons-octicon "file-media"        :face all-the-icons-dblue)
    ;; Audio
    ("mp3"          all-the-icons-faicon "volume-up"          :face all-the-icons-dred)
    ("wav"          all-the-icons-faicon "volume-up"          :face all-the-icons-dred)
    ("m4a"          all-the-icons-faicon "volume-up"          :face all-the-icons-dred)
    ("ogg"          all-the-icons-faicon "volume-up"          :face all-the-icons-dred)
    ("flac"         all-the-icons-faicon "volume-up"          :face all-the-icons-dred)
    ("opus"         all-the-icons-faicon "volume-up"          :face all-the-icons-dred)
    ("au"           all-the-icons-faicon "volume-up"          :face all-the-icons-dred)
    ("aif"          all-the-icons-faicon "volume-up"          :face all-the-icons-dred)
    ("aifc"         all-the-icons-faicon "volume-up"          :face all-the-icons-dred)
    ("aiff"         all-the-icons-faicon "volume-up"          :face all-the-icons-dred)
    ("svg"          all-the-icons-alltheicon "svg"            :face all-the-icons-lgreen)
    ;; Video
    ("mov"          all-the-icons-faicon "film"               :face all-the-icons-blue)
    ("mp4"          all-the-icons-faicon "film"               :face all-the-icons-blue)
    ("ogv"          all-the-icons-faicon "film"               :face all-the-icons-dblue)
    ("mpg"          all-the-icons-faicon "film"               :face all-the-icons-blue)
    ("mpeg"         all-the-icons-faicon "film"               :face all-the-icons-blue)
    ("flv"          all-the-icons-faicon "film"               :face all-the-icons-blue)
    ("ogv"          all-the-icons-faicon "film"               :face all-the-icons-dblue)
    ("mkv"          all-the-icons-faicon "film"               :face all-the-icons-blue)
    ("webm"         all-the-icons-faicon "film"               :face all-the-icons-blue)
    ("dav"          all-the-icons-faicon "film"               :face all-the-icons-blue)
    ;; Fonts
    ("ttf"          all-the-icons-fileicon "font"             :face all-the-icons-dcyan)
    ("woff"         all-the-icons-fileicon "font"             :face all-the-icons-cyan)
    ("woff2"        all-the-icons-fileicon "font"             :face all-the-icons-cyan)
    ;; Doc
    ("pdf"          all-the-icons-octicon "file-pdf"          :face all-the-icons-dred)
    ("text"         all-the-icons-octicon "file-text"         :face all-the-icons-cyan)
    ("txt"          all-the-icons-octicon "file-text"         :face all-the-icons-cyan)
    ("doc"          all-the-icons-fileicon "word"             :face all-the-icons-blue)
    ("docx"         all-the-icons-fileicon "word"             :face all-the-icons-blue)
    ("docm"         all-the-icons-fileicon "word"             :face all-the-icons-blue)
    ("eml"          all-the-icons-faicon "envelope"           :face all-the-icons-blue)
    ("msg"          all-the-icons-faicon "envelope"           :face all-the-icons-blue)
    ("texi"         all-the-icons-fileicon "tex"              :face all-the-icons-lred)
    ("tex"          all-the-icons-fileicon "tex"              :face all-the-icons-lred)
    ("md"           all-the-icons-octicon "markdown"          :face all-the-icons-lblue)
    ("bib"          all-the-icons-fileicon "bib"              :face all-the-icons-maroon)
    ("org"          all-the-icons-fileicon "org"              :face all-the-icons-lgreen)
    ("pps"          all-the-icons-fileicon "powerpoint"       :face all-the-icons-orange)
    ("ppt"          all-the-icons-fileicon "powerpoint"       :face all-the-icons-orange)
    ("pptsx"        all-the-icons-fileicon "powerpoint"       :face all-the-icons-orange)
    ("pptx"         all-the-icons-fileicon "powerpoint"       :face all-the-icons-orange)
    ("knt"          all-the-icons-fileicon "powerpoint"       :face all-the-icons-cyan)
    ("xlsx"         all-the-icons-fileicon "excel"            :face all-the-icons-dgreen)
    ("xlsm"         all-the-icons-fileicon "excel"            :face all-the-icons-dgreen)
    ("xlsb"         all-the-icons-fileicon "excel"            :face all-the-icons-dgreen)
    ("xltx"         all-the-icons-fileicon "excel"            :face all-the-icons-dgreen)
    ("xltm"         all-the-icons-fileicon "excel"            :face all-the-icons-dgreen)
    ("ly"           all-the-icons-faicon   "music"            :face all-the-icons-green)
    ;;
    ("key"          all-the-icons-octicon "key"               :face all-the-icons-lblue)
    ("pem"          all-the-icons-octicon "key"               :face all-the-icons-orange)
    ("p12"          all-the-icons-octicon "key"               :face all-the-icons-dorange)
    ("crt"          all-the-icons-octicon "key"               :face all-the-icons-lblue)
    ("pub"          all-the-icons-octicon "key"               :face all-the-icons-blue)
    ("gpg"          all-the-icons-octicon "key"               :face all-the-icons-lblue)
    ("cache"        all-the-icons-octicon "database"          :face all-the-icons-green)))

(setq all-the-icons-extension-icon-alist
      all-the-icons-in-terminal-extension-icon-alist)

(defvar all-the-icons-in-terminal-regexp-icon-alist
  '(
    ;;
    ("^TAGS$"           all-the-icons-octicon "tag"                :face all-the-icons-blue)
    ("^TODO$"           all-the-icons-octicon "checklist"          :face all-the-icons-lyellow)
    ("^LICENSE$"        all-the-icons-octicon "book"               :face all-the-icons-blue)
    ("^readme"          all-the-icons-octicon "book"               :face all-the-icons-lcyan)

    ;; Config
    ("nginx$"            all-the-icons-fileicon "nginx"            :face all-the-icons-dgreen)
    ("apache$"           all-the-icons-alltheicon "apache"         :face all-the-icons-dgreen)

    ;; C
    ("^Makefile$"       all-the-icons-fileicon "gnu"               :face all-the-icons-dorange)
    ("^CMakeLists.txt$" all-the-icons-fileicon "cmake"             :face all-the-icons-red)
    ("^CMakeCache.txt$" all-the-icons-fileicon "cmake"             :face all-the-icons-blue)
    ("^meson.build$"    all-the-icons-fileicon "meson"             :face all-the-icons-purple)
    ("^meson_options.txt$" all-the-icons-fileicon "meson"          :face all-the-icons-purple)

    ;; Docker
    ("^\\.?Dockerfile"  all-the-icons-fileicon "dockerfile"        :face all-the-icons-blue)

    ;; Homebrew
    ("^Brewfile$"       all-the-icons-faicon "beer"                :face all-the-icons-lsilver)

    ;; ;; AWS
    ("^stack.*.json$"   all-the-icons-alltheicon "aws"             :face all-the-icons-orange)
    ("^serverless\\.yml$" all-the-icons-faicon "bolt"              :face all-the-icons-yellow)

    ;; lock files
    ("~$"               all-the-icons-octicon "lock"               :face all-the-icons-maroon)

    ;; Source Codes
    ("^mix.lock$"       all-the-icons-alltheicon "elixir"          :face all-the-icons-lyellow)

    ;; Ruby
    ("^Gemfile\\(\\.lock\\)?$" all-the-icons-alltheicon "ruby-alt" :face all-the-icons-red)
    ("_?test\\.rb$"        all-the-icons-fileicon "test-ruby"      :face all-the-icons-red)
    ("_?test_helper\\.rb$" all-the-icons-fileicon "test-ruby"      :face all-the-icons-dred)
    ("_?spec\\.rb$"        all-the-icons-fileicon "test-ruby"      :face all-the-icons-red)
    ("_?spec_helper\\.rb$" all-the-icons-fileicon "test-ruby"      :face all-the-icons-dred)

    ("-?spec\\.ts$"     all-the-icons-fileicon "test-typescript"   :face all-the-icons-blue)
    ("-?test\\.ts$"     all-the-icons-fileicon "test-typescript"   :face all-the-icons-blue)
    ("-?spec\\.js$"     all-the-icons-fileicon "test-js"           :face all-the-icons-lpurple)
    ("-?test\\.js$"     all-the-icons-fileicon "test-js"           :face all-the-icons-lpurple)
    ("-?spec\\.jsx$"    all-the-icons-fileicon "test-react"        :face all-the-icons-blue-alt)
    ("-?test\\.jsx$"    all-the-icons-fileicon "test-react"        :face all-the-icons-blue-alt)

    ;; Git
    ("^MERGE_"          all-the-icons-octicon "git-merge"          :face all-the-icons-red)
    ("^COMMIT_EDITMSG"  all-the-icons-octicon "git-commit"         :face all-the-icons-red)

    ;; Stylesheeting
    ("stylelint"        all-the-icons-fileicon "stylelint"         :face all-the-icons-lyellow)

    ;; JavaScript
    ("^package.json$"   all-the-icons-fileicon "npm"               :face all-the-icons-red)
    ("^package.lock.json$" all-the-icons-fileicon "npm"            :face all-the-icons-dred)
    ("^yarn\\.lock"     all-the-icons-fileicon "yarn"              :face all-the-icons-blue-alt)
    ("\\.npmignore$"    all-the-icons-fileicon "npm"               :face all-the-icons-dred)
    ("^bower.json$"     all-the-icons-alltheicon "bower"           :face all-the-icons-lorange)
    ("^gulpfile"        all-the-icons-alltheicon "gulp"            :face all-the-icons-lred)
    ("^gruntfile"       all-the-icons-alltheicon "grunt"           :face all-the-icons-lyellow)
    ("^webpack"         all-the-icons-fileicon "webpack"           :face all-the-icons-lblue)

    ;; Go
    ("^go.mod$"         all-the-icons-fileicon "config-go"         :face all-the-icons-blue-alt)
    ("^go.work$"        all-the-icons-fileicon "config-go"         :face all-the-icons-blue-alt)

    ;; Emacs
    ("bookmark"         all-the-icons-octicon "bookmark"           :face all-the-icons-lpink)

    ("^\\*scratch\\*$"  all-the-icons-faicon "sticky-note"         :face all-the-icons-lyellow)
    ("^\\*scratch.*"    all-the-icons-faicon "sticky-note"         :face all-the-icons-yellow)
    ("^\\*new-tab\\*$"  all-the-icons-material "star"              :face all-the-icons-cyan)

    ("^\\."             all-the-icons-octicon "gear")
    ))
(setq all-the-icons-regexp-icon-alist
      all-the-icons-in-terminal-regexp-icon-alist)

(defvar all-the-icons-in-terminal-default-file-icon
  '(all-the-icons-faicon "file-o" :face all-the-icons-dsilver))

(setq all-the-icons-default-file-icon
      all-the-icons-in-terminal-default-file-icon)

(defvar all-the-icons-in-terminal-dir-icon-alist
  '(
    ("trash"            all-the-icons-faicon "trash-o")
    ("dropbox"          all-the-icons-faicon "dropbox")
    ("google[ _-]drive" all-the-icons-alltheicon "google-drive")
    ("^atom$"           all-the-icons-alltheicon "atom")
    ("documents"        all-the-icons-faicon "book")
    ("download"         all-the-icons-faicon "cloud-download")
    ("desktop"          all-the-icons-octicon "device-desktop")
    ("pictures"         all-the-icons-faicon "picture-o")
    ("photos"           all-the-icons-faicon "camera-retro")
    ("music"            all-the-icons-faicon "music")
    ("movies"           all-the-icons-faicon "film")
    ("code"             all-the-icons-octicon "code")
    ("workspace"        all-the-icons-octicon "code")
    ("test"             all-the-icons-fileicon "test-dir")
    ("\\.git"           all-the-icons-alltheicon "git")
    (".?"               all-the-icons-octicon "file-directory")
    ))

(setq all-the-icons-dir-icon-alist
      all-the-icons-in-terminal-dir-icon-alist)

(defvar all-the-icons-in-terminal-weather-icon-alist
  '(
    ("tornado"               all-the-icons-wicon "tornado")
    ("hurricane"             all-the-icons-wicon "hurricane")
    ("thunderstorms"         all-the-icons-wicon "thunderstorm")
    ("sunny"                 all-the-icons-wicon "day-sunny")
    ("rain.*snow"            all-the-icons-wicon "rain-mix")
    ("rain.*hail"            all-the-icons-wicon "rain-mix")
    ("sleet"                 all-the-icons-wicon "sleet")
    ("hail"                  all-the-icons-wicon "hail")
    ("drizzle"               all-the-icons-wicon "sprinkle")
    ("rain"                  all-the-icons-wicon "showers")
    ("showers"               all-the-icons-wicon "showers")
    ("blowing.*snow"         all-the-icons-wicon "snow-wind")
    ("snow"                  all-the-icons-wicon "snow")
    ("dust"                  all-the-icons-wicon "dust")
    ("fog"                   all-the-icons-wicon "fog")
    ("haze"                  all-the-icons-wicon "day-haze")
    ("smoky"                 all-the-icons-wicon "smoke")
    ("blustery"              all-the-icons-wicon "cloudy-windy")
    ("windy"                 all-the-icons-wicon "cloudy-gusts")
    ("cold"                  all-the-icons-wicon "snowflake-cold")
    ("partly.*cloudy.*night" all-the-icons-wicon "night-alt-partly-cloudy")
    ("partly.*cloudy"        all-the-icons-wicon "day-cloudy-high")
    ("cloudy.*night"         all-the-icons-wicon "night-alt-cloudy")
    ("cxloudy.*day"          all-the-icons-wicon "day-cloudy")
    ("cloudy"                all-the-icons-wicon "cloudy")
    ("clear.*night"          all-the-icons-wicon "night-clear")
    ("fair.*night"           all-the-icons-wicon "stars")
    ("fair.*day"             all-the-icons-wicon "horizon")
    ("hot"                   all-the-icons-wicon "hot")
    ("not.*available"        all-the-icons-wicon "na")
    ))

(setq all-the-icons-weather-icon-alist
      all-the-icons-in-terminal-weather-icon-alist)

(defvar all-the-icons-in-terminal-mode-icon-alist
  '(
    (emacs-lisp-mode           all-the-icons-fileicon "elisp"                     :face all-the-icons-purple)
    (circe-server-mode         all-the-icons-faicon "commenting-o")
    (circe-channel-mode        all-the-icons-faicon "commenting-o")
    (circe-query-mode          all-the-icons-faicon "commenting-o")
    (crystal-mode              all-the-icons-fileicon "crystal"                   :face all-the-icons-yellow)
    (erc-mode                  all-the-icons-faicon "commenting-o")
    (inferior-emacs-lisp-mode  all-the-icons-fileicon "elisp"                     :face all-the-icons-lblue)
    (dired-mode                all-the-icons-octicon "file-directory")
    (lisp-interaction-mode     all-the-icons-fileicon "lisp"                      :face all-the-icons-orange)
    (sly-mrepl-mode            all-the-icons-fileicon "clisp"                     :face all-the-icons-orange)
    (slime-repl-mode           all-the-icons-fileicon "clisp"                     :face all-the-icons-orange)
    (org-mode                  all-the-icons-fileicon "org"                       :face all-the-icons-lgreen)
    (typescript-mode           all-the-icons-fileicon "typescript"                :face all-the-icons-blue-alt)
    (typescript-ts-mode        all-the-icons-fileicon "typescript"                :face all-the-icons-blue-alt)
    (typescript-tsx-mode       all-the-icons-fileicon "tsx"                       :face all-the-icons-cyan-alt)
    (tsx-ts-mode               all-the-icons-fileicon "tsx"                       :face all-the-icons-cyan-alt)
    (js-mode                   all-the-icons-alltheicon "javascript"              :face all-the-icons-yellow)
    (js-jsx-mode               all-the-icons-alltheicon "javascript"              :face all-the-icons-yellow)
    (js2-mode                  all-the-icons-alltheicon "javascript"              :face all-the-icons-yellow)
    (js3-mode                  all-the-icons-alltheicon "javascript"              :face all-the-icons-yellow)
    (rjsx-mode                 all-the-icons-fileicon "jsx-2"                     :face all-the-icons-cyan-alt)
    (term-mode                 all-the-icons-octicon "terminal")
    (vterm-mode                all-the-icons-octicon "terminal")
    (eshell-mode               all-the-icons-octicon "terminal"                   :face all-the-icons-purple)
    (magit-refs-mode           all-the-icons-octicon "git-branch"                 :face all-the-icons-red)
    (magit-process-mode        all-the-icons-octicon "mark-github")
    (magit-diff-mode           all-the-icons-octicon "git-compare"                :face all-the-icons-lblue)
    (ediff-mode                all-the-icons-octicon "git-compare"                :face all-the-icons-red)
    (comint-mode               all-the-icons-faicon "terminal"                    :face all-the-icons-lblue)
    (eww-mode                  all-the-icons-faicon "firefox"                     :face all-the-icons-red)
    (org-agenda-mode           all-the-icons-octicon "checklist"                  :face all-the-icons-lgreen)
    (cfw:calendar-mode         all-the-icons-octicon "calendar")
    (ibuffer-mode              all-the-icons-faicon "files-o"                     :face all-the-icons-dsilver)
    (messages-buffer-mode      all-the-icons-faicon "file-o"                      :face all-the-icons-dsilver)
    (help-mode                 all-the-icons-faicon "info"                        :face all-the-icons-purple)
    (helpful-mode              all-the-icons-faicon "info"                        :face all-the-icons-purple)
    (benchmark-init/tree-mode  all-the-icons-octicon "dashboard")
    (jenkins-mode              all-the-icons-fileicon "jenkins"                   :face all-the-icons-blue)
    (magit-popup-mode          all-the-icons-alltheicon "git"                     :face all-the-icons-red)
    (magit-status-mode         all-the-icons-alltheicon "git"                     :face all-the-icons-lred)
    (magit-log-mode            all-the-icons-alltheicon "git"                     :face all-the-icons-green)
    (mu4e-compose-mode         all-the-icons-octicon "pencil")
    (mu4e-headers-mode         all-the-icons-octicon "mail")
    (mu4e-main-mode            all-the-icons-octicon "mail")
    (mu4e-view-mode            all-the-icons-octicon "mail-read")
    (sieve-mode                all-the-icons-octicon "mail")
    (gnus-group-mode           all-the-icons-octicon "mail")
    (gnus-summary-mode         all-the-icons-octicon "mail")
    (gnus-article-mode         all-the-icons-octicon "mail-read")
    (message-mode              all-the-icons-octicon "pencil")
    (package-menu-mode         all-the-icons-faicon "archive"                     :face all-the-icons-silver)
    (paradox-menu-mode         all-the-icons-faicon "archive"                     :face all-the-icons-silver)
    (Custom-mode               all-the-icons-octicon "settings")

    ;; Special matcher for Web Mode based on the `web-mode-content-type' of the current buffer
    (web-mode             all-the-icons--web-mode-icon)

    (fundamental-mode                   all-the-icons-fileicon "elisp"            :face all-the-icons-dsilver)
    (special-mode                       all-the-icons-fileicon "elisp"            :face all-the-icons-yellow)
    (text-mode                          all-the-icons-octicon "file-text"         :face all-the-icons-cyan)
    (enh-ruby-mode                      all-the-icons-alltheicon "ruby-alt"       :face all-the-icons-lred)
    (ruby-mode                          all-the-icons-alltheicon "ruby-alt"       :face all-the-icons-lred)
    (ruby-ts-mode                       all-the-icons-alltheicon "ruby-alt"       :face all-the-icons-lred)
    (inf-ruby-mode                      all-the-icons-alltheicon "ruby-alt"       :face all-the-icons-red)
    (projectile-rails-compilation-mode  all-the-icons-alltheicon "ruby-alt"       :face all-the-icons-red)
    (rspec-compilation-mode             all-the-icons-alltheicon "ruby-alt"       :face all-the-icons-red)
    (rake-compilation-mode              all-the-icons-alltheicon "ruby-alt"       :face all-the-icons-red)
    (sh-mode                            all-the-icons-alltheicon "terminal"       :face all-the-icons-purple)
    (shell-mode                         all-the-icons-alltheicon "terminal"       :face all-the-icons-purple)
    (fish-mode                          all-the-icons-alltheicon "terminal"       :face all-the-icons-lpink)
    (nginx-mode                         all-the-icons-fileicon "nginx"            :face all-the-icons-dgreen)
    (apache-mode                        all-the-icons-alltheicon "apache"         :face all-the-icons-dgreen)
    (makefile-mode                      all-the-icons-fileicon "gnu"              :face all-the-icons-dorange)
    (cmake-mode                         all-the-icons-fileicon "cmake"            :face all-the-icons-red)
    (cmake-ts-mode                      all-the-icons-fileicon "cmake"            :face all-the-icons-red)
    (dockerfile-mode                    all-the-icons-fileicon "dockerfile"       :face all-the-icons-blue)
    (dockerfile-ts-mode                 all-the-icons-fileicon "dockerfile"       :face all-the-icons-blue)
    (docker-compose-mode                all-the-icons-fileicon "dockerfile"       :face all-the-icons-lblue)
    (nxml-mode                          all-the-icons-faicon "file-code-o"        :face all-the-icons-lorange)
    (json-mode                          all-the-icons-octicon "settings"          :face all-the-icons-yellow)
    (json-ts-mode                       all-the-icons-octicon "settings"          :face all-the-icons-yellow)
    (jsonian-mode                       all-the-icons-octicon "settings"          :face all-the-icons-yellow)
    (yaml-mode                          all-the-icons-octicon "settings"          :face all-the-icons-dyellow)
    (yaml-ts-mode                       all-the-icons-octicon "settings"          :face all-the-icons-dyellow)
    (elisp-byte-code-mode               all-the-icons-octicon "file-binary"       :face all-the-icons-dsilver)
    (archive-mode                       all-the-icons-octicon "file-zip"          :face all-the-icons-lmaroon)
    (elm-mode                           all-the-icons-fileicon "elm"              :face all-the-icons-blue)
    (erlang-mode                        all-the-icons-alltheicon "erlang"         :face all-the-icons-red)
    (elixir-mode                        all-the-icons-alltheicon "elixir"         :face all-the-icons-lorange)
    (java-mode                          all-the-icons-alltheicon "java"           :face all-the-icons-purple)
    (java-ts-mode                       all-the-icons-alltheicon "java"           :face all-the-icons-purple)
    (go-mode                            all-the-icons-fileicon "go"               :face all-the-icons-blue)
    (go-ts-mode                         all-the-icons-fileicon "go"               :face all-the-icons-blue)
    (go-dot-mod-mode                    all-the-icons-fileicon "config-go"        :face all-the-icons-blue-alt)
    (go-dot-work-mode                   all-the-icons-fileicon "config-go"        :face all-the-icons-blue-alt)
    (graphql-mode                       all-the-icons-fileicon "graphql"          :face all-the-icons-dpink)
    (matlab-mode                        all-the-icons-fileicon "matlab"           :face all-the-icons-orange)
    (nix-mode                           all-the-icons-fileicon "nix"              :face all-the-icons-blue)
    (perl-mode                          all-the-icons-alltheicon "perl"           :face all-the-icons-lorange)
    (cperl-mode                         all-the-icons-alltheicon "perl"           :face all-the-icons-lorange)
    (php-mode                           all-the-icons-fileicon "php"              :face all-the-icons-lsilver)
    (prolog-mode                        all-the-icons-alltheicon "prolog"         :face all-the-icons-lmaroon)
    (python-mode                        all-the-icons-alltheicon "python"         :face all-the-icons-dblue)
    (python-ts-mode                     all-the-icons-alltheicon "python"         :face all-the-icons-dblue)
    (inferior-python-mode               all-the-icons-alltheicon "python"         :face all-the-icons-dblue)
    (racket-mode                        all-the-icons-fileicon "racket"           :face all-the-icons-red)
    (rust-mode                          all-the-icons-alltheicon "rust"           :face all-the-icons-maroon)
    (rustic-mode                        all-the-icons-alltheicon "rust"           :face all-the-icons-maroon)
    (rust-ts-mode                       all-the-icons-alltheicon "rust"           :face all-the-icons-maroon)
    (scala-mode                         all-the-icons-alltheicon "scala"          :face all-the-icons-red)
    (scheme-mode                        all-the-icons-fileicon   "scheme"         :face all-the-icons-red)
    (swift-mode                         all-the-icons-alltheicon "swift"          :face all-the-icons-green)
    (svelte-mode                        all-the-icons-fileicon "svelte"           :face all-the-icons-red)
    (c-mode                             all-the-icons-alltheicon "c-line"         :face all-the-icons-blue)
    (c-ts-mode                          all-the-icons-alltheicon "c-line"         :face all-the-icons-blue)
    (c++-mode                           all-the-icons-alltheicon "cplusplus-line" :face all-the-icons-blue)
    (c++-ts-mode                        all-the-icons-alltheicon "cplusplus-line" :face all-the-icons-blue)
    (csharp-mode                        all-the-icons-alltheicon "csharp-line"    :face all-the-icons-dblue)
    (csharp-ts-mode                     all-the-icons-alltheicon "csharp-line"    :face all-the-icons-dblue)
    (clojure-mode                       all-the-icons-alltheicon "clojure"        :face all-the-icons-blue)
    (cider-repl-mode                    all-the-icons-alltheicon "clojure"        :face all-the-icons-green)
    (clojurescript-mode                 all-the-icons-fileicon "cljs"             :face all-the-icons-dblue)
    (coffee-mode                        all-the-icons-alltheicon "coffeescript"   :face all-the-icons-maroon)
    (lisp-mode                          all-the-icons-fileicon "lisp"             :face all-the-icons-orange)
    (css-mode                           all-the-icons-alltheicon "css3"           :face all-the-icons-yellow)
    (css-ts-mode                        all-the-icons-alltheicon "css3"           :face all-the-icons-yellow)
    (scss-mode                          all-the-icons-alltheicon "sass"           :face all-the-icons-pink)
    (sass-mode                          all-the-icons-alltheicon "sass"           :face all-the-icons-dpink)
    (less-css-mode                      all-the-icons-alltheicon "less"           :face all-the-icons-dyellow)
    (stylus-mode                        all-the-icons-alltheicon "stylus"         :face all-the-icons-lgreen)
    (csv-mode                           all-the-icons-octicon "graph"             :face all-the-icons-dblue)
    (haskell-mode                       all-the-icons-alltheicon "haskell"        :face all-the-icons-red)
    (haskell-c2hs-mode                  all-the-icons-alltheicon "haskell"        :face all-the-icons-red)
    (literate-haskell-mode              all-the-icons-alltheicon "haskell"        :face all-the-icons-red)
    (haml-mode                          all-the-icons-fileicon "haml"             :face all-the-icons-lyellow)
    (html-mode                          all-the-icons-alltheicon "html5"          :face all-the-icons-orange)
    (html-ts-mode                       all-the-icons-alltheicon "html5"          :face all-the-icons-orange)
    (rhtml-mode                         all-the-icons-alltheicon "html5"          :face all-the-icons-lred)
    (mustache-mode                      all-the-icons-fileicon "moustache"        :face all-the-icons-green)
    (slim-mode                          all-the-icons-octicon "dashboard"         :face all-the-icons-yellow)
    (jade-mode                          all-the-icons-fileicon "jade"             :face all-the-icons-red)
    (pug-mode                           all-the-icons-fileicon "pug"              :face all-the-icons-red)
    (react-mode                         all-the-icons-alltheicon "react"          :face all-the-icons-lblue)
    (image-mode                         all-the-icons-octicon "file-media"        :face all-the-icons-blue)
    (texinfo-mode                       all-the-icons-fileicon "tex"              :face all-the-icons-lred)
    (markdown-mode                      all-the-icons-octicon "markdown"          :face all-the-icons-lblue)
    (bibtex-mode                        all-the-icons-fileicon "bib"              :face all-the-icons-maroon)
    (org-mode                           all-the-icons-fileicon "org"              :face all-the-icons-lgreen)
    (compilation-mode                   all-the-icons-faicon "cogs")
    (objc-mode                          all-the-icons-faicon "apple")
    (tuareg-mode                        all-the-icons-fileicon "ocaml")
    (purescript-mode                    all-the-icons-fileicon "purescript")
    (verilog-mode                       all-the-icons-fileicon "verilog"          :face all-the-icons-red)
    (vhdl-mode                          all-the-icons-fileicon "vhdl"             :face all-the-icons-blue)
    (haskell-cabal-mode                 all-the-icons-fileicon "cabal"            :face all-the-icons-lblue)
    (kotlin-mode                        all-the-icons-fileicon "kotlin"           :face all-the-icons-orange)
    (kotlin-ts-mode                     all-the-icons-fileicon "kotlin"           :face all-the-icons-orange)
    (nim-mode                           all-the-icons-fileicon "nimrod"           :face all-the-icons-yellow)
    (sql-mode                           all-the-icons-octicon  "database"         :face all-the-icons-silver)
    (lua-mode                           all-the-icons-fileicon "lua"              :face all-the-icons-dblue)
    (adoc-mode                          all-the-icons-fileicon "asciidoc"         :face all-the-icons-lblue)
    (puppet-mode                        all-the-icons-fileicon "puppet"           :face all-the-icons-yellow)
    (jinja2-mode                        all-the-icons-fileicon "jinja"            :face all-the-icons-silver)
    (powershell-mode                    all-the-icons-fileicon "powershell"       :face all-the-icons-blue)
    (tex-mode                           all-the-icons-fileicon "tex"              :face all-the-icons-lred)
    (latex-mode                         all-the-icons-fileicon "tex"              :face all-the-icons-lred)
    (dart-mode                          all-the-icons-fileicon "dart"             :face all-the-icons-blue)
    (fsharp-mode                        all-the-icons-fileicon "fsharp"           :face all-the-icons-blue)
    (asm-mode                           all-the-icons-fileicon "assembly"         :face all-the-icons-blue)
    (nasm-mode                          all-the-icons-fileicon "assembly"         :face all-the-icons-blue)
    (tcl-mode                           all-the-icons-fileicon "tcl"              :face all-the-icons-dred)
    (cuda-mode                          all-the-icons-fileicon "nvidia"           :face all-the-icons-green)
    (f90-mode                           all-the-icons-fileicon "fortran"          :face all-the-icons-purple)
    (hy-mode                            all-the-icons-fileicon "hy"               :face all-the-icons-blue)
    (glsl-mode                          all-the-icons-fileicon "vertex-shader"    :face all-the-icons-green)
    (zig-mode                           all-the-icons-fileicon "zig"              :face all-the-icons-orange)
    (odin-mode                          all-the-icons-fileicon "odin"             :face all-the-icons-lblue)
    (pdf-view-mode                      all-the-icons-octicon  "file-pdf"         :face all-the-icons-dred)
    (spacemacs-buffer-mode              all-the-icons-fileicon "elisp"            :face all-the-icons-purple)
    (elfeed-search-mode                 all-the-icons-faicon   "rss-square"       :face all-the-icons-orange)
    (elfeed-show-mode                   all-the-icons-faicon   "rss"              :face all-the-icons-orange)
    (emms-browser-mode                  all-the-icons-faicon   "music"            :face all-the-icons-silver)
    (emms-lyrics-mode                   all-the-icons-faicon   "music"            :face all-the-icons-silver)
    (emms-show-all-mode                 all-the-icons-faicon   "music"            :face all-the-icons-silver)
    (emms-metaplaylist-mode             all-the-icons-faicon   "music"            :face all-the-icons-silver)
    (emms-tag-editor-mode               all-the-icons-faicon   "music"            :face all-the-icons-silver)
    (emms-playlist-mode                 all-the-icons-faicon   "music"            :face all-the-icons-silver)
    (lilypond-mode                      all-the-icons-faicon   "music"            :face all-the-icons-green)
    (magik-session-mode                 all-the-icons-alltheicon "terminal"       :face all-the-icons-blue)
    (magik-cb-mode                      all-the-icons-faicon "book"               :face all-the-icons-blue)
    (meson-mode                         all-the-icons-fileicon "meson"            :face all-the-icons-purple)
    (man-common                         all-the-icons-fileicon "man-page"         :face all-the-icons-blue)))
(setq all-the-icons-mode-icon-alist
      all-the-icons-in-terminal-mode-icon-alist)

(provide 'all-the-icons-in-terminal)
;;; all-the-icons-in-terminal.el ends here
