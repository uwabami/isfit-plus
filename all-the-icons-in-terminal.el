;;; all-the-icons-in-terminal.el --- dataset of all-the-icons for icons-in-terminal
;;
;; Copyright (C) 2019 Youhei SASAKI<uwabami@gfd-dennou.org>
;;
;; Original author: Youhei SASAKI<uwabami@gfd-dennou.org>
;; Version: 20190627
;; Package-Requires: ((all-the-icons "20210208.0"))
;; URL: https://github.com/uwabami/all-the-icons-in-terminal
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
;; Currently, this package provides an interface to the following Icon Fonts.
;;
;; - Devicons                https://github.com/vorillaz/devicons
;; - file-icons              https://atom.io/packages/file-icons
;; - font-logo               https://github.com/lukas-W/font-logos
;; - fontawesome             http://fontawesome.io/
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

;; override icon alist
(setq all-the-icons-extension-icon-alist
  '(
    ;; Meta
    ("\\.tags"                   all-the-icons-octicon "tag"               :face all-the-icons-blue)
    ("^TAGS$"                    all-the-icons-octicon "tag"               :face all-the-icons-blue)
    ("\\.log$"                   all-the-icons-octicon "bug"               :face all-the-icons-maroon)

    ;;
    ("\\.key$"                   all-the-icons-octicon "key"               :face all-the-icons-lblue)
    ("\\.pem$"                   all-the-icons-octicon "key"               :face all-the-icons-orange)
    ("\\.p12$"                   all-the-icons-octicon "key"               :face all-the-icons-dorange)
    ("\\.crt$"                   all-the-icons-octicon "key"               :face all-the-icons-lblue)
    ("\\.pub$"                   all-the-icons-octicon "key"               :face all-the-icons-blue)
    ("\\.gpg$"                   all-the-icons-octicon "key"               :face all-the-icons-lblue)

    ("^TODO$"                    all-the-icons-octicon "checklist"         :face all-the-icons-lyellow)
    ("^LICENSE$"                 all-the-icons-octicon "book"              :face all-the-icons-blue)
    ("^readme"                   all-the-icons-octicon "book"              :face all-the-icons-lcyan)

    ("\\.fish$"                  all-the-icons-alltheicon "terminal"       :face all-the-icons-lpink)
    ("\\.zsh$"                   all-the-icons-alltheicon "terminal"       :face all-the-icons-lcyan)
    ("\\.sh$"                    all-the-icons-alltheicon "terminal"       :face all-the-icons-purple)

    ;; Config
    ("\\.node$"                  all-the-icons-alltheicon "nodejs"         :face all-the-icons-green)
    ("\\.babelrc$"               all-the-icons-fileicon "babel"            :face all-the-icons-yellow)
    ("\\.bashrc$"                all-the-icons-alltheicon "script"         :face all-the-icons-dpink)
    ("\\.bowerrc$"               all-the-icons-alltheicon "bower"          :face all-the-icons-silver)
    ("^bower.json$"              all-the-icons-alltheicon "bower"          :face all-the-icons-lorange)
    ("\\.eslintignore$"          all-the-icons-fileicon "eslint"           :face all-the-icons-purple)
    ("\\.eslint"                 all-the-icons-fileicon "eslint"           :face all-the-icons-lpurple)
    ("\\.git"                    all-the-icons-alltheicon "git"            :face all-the-icons-lred)
    ("nginx"                     all-the-icons-fileicon "nginx"            :face all-the-icons-dgreen)
    ("apache"                    all-the-icons-alltheicon "apache"         :face all-the-icons-dgreen)
    ("^Makefile$"                all-the-icons-fileicon "gnu"              :face all-the-icons-dorange)
    ("\\.mk$"                    all-the-icons-fileicon "gnu"              :face all-the-icons-dorange)

    ("\\.dockerignore$"          all-the-icons-fileicon "dockerfile"       :face all-the-icons-dblue)
    ("^\\.?Dockerfile"           all-the-icons-fileicon "dockerfile"       :face all-the-icons-blue)
    ("^Brewfile$"                all-the-icons-faicon "beer"               :face all-the-icons-lsilver)
    ("\\.npmignore$"             all-the-icons-fileicon "npm"              :face all-the-icons-dred)
    ("^package.json$"            all-the-icons-fileicon "npm"              :face all-the-icons-red)
    ("^package.lock.json$"       all-the-icons-fileicon "npm"              :face all-the-icons-dred)
    ("^yarn\\.lock"              all-the-icons-fileicon "yarn"             :face all-the-icons-blue-alt)

    ("\\.xml$"                   all-the-icons-faicon "file-code-o"        :face all-the-icons-lorange)

    ;; ;; AWS
    ("^stack.*.json$"            all-the-icons-alltheicon "aws"            :face all-the-icons-orange)


    ("^serverless\\.yml$"        all-the-icons-faicon "bolt"               :face all-the-icons-yellow)
    ("\\.ini$"                   all-the-icons-octicon "settings"          :face all-the-icons-yellow)
    ("\\.[jc]son$"               all-the-icons-octicon "settings"          :face all-the-icons-yellow)
    ("\\.ya?ml$"                 all-the-icons-octicon "settings"          :face all-the-icons-dyellow)
    ("\\.toml$"                  all-the-icons-octicon "settings"          :face all-the-icons-dyellow)

    ("\\.pkg$"                   all-the-icons-octicon "package"           :face all-the-icons-dsilver)
    ("\\.rpm$"                   all-the-icons-octicon "package"           :face all-the-icons-dsilver)

    ("\\.elc$"                   all-the-icons-octicon "file-binary"       :face all-the-icons-dsilver)

    ("\\.gz$"                    all-the-icons-octicon "file-binary"       :face all-the-icons-lmaroon)
    ("\\.zip$"                   all-the-icons-octicon "file-zip"          :face all-the-icons-lmaroon)
    ("\\.7z$"                    all-the-icons-octicon "file-zip"          :face all-the-icons-lmaroon)

    ("\\.dat$"                   all-the-icons-faicon "bar-chart"          :face all-the-icons-cyan)
    ;; lock files
    ("~$"                        all-the-icons-octicon "lock"              :face all-the-icons-maroon)

    ("\\.dmg$"                   all-the-icons-octicon "tools"             :face all-the-icons-lsilver)
    ("\\.dll$"                   all-the-icons-faicon "cogs"               :face all-the-icons-silver)
    ("\\.DS_STORE$"              all-the-icons-faicon "cogs"               :face all-the-icons-silver)

    ;; Source Codes
    ("\\.scpt$"                  all-the-icons-fileicon "apple"            :face all-the-icons-pink)
    ("\\.aup$"                   all-the-icons-fileicon "audacity"         :face all-the-icons-yellow)

    ("\\.elm$"                   all-the-icons-fileicon "elm"              :face all-the-icons-blue)

    ("\\.erl$"                   all-the-icons-alltheicon "erlang"         :face all-the-icons-red)
    ("\\.hrl$"                   all-the-icons-alltheicon "erlang"         :face all-the-icons-dred)

    ("\\.eex$"                   all-the-icons-alltheicon "elixir"         :face all-the-icons-lorange)
    ("\\.leex$"                  all-the-icons-alltheicon "elixir"         :face all-the-icons-lorange)
    ("\\.ex$"                    all-the-icons-alltheicon "elixir"         :face all-the-icons-lpurple)
    ("\\.exs$"                   all-the-icons-alltheicon "elixir"         :face all-the-icons-lred)
    ("^mix.lock$"                all-the-icons-alltheicon "elixir"         :face all-the-icons-lyellow)

    ("\\.java$"                  all-the-icons-alltheicon "java"           :face all-the-icons-purple)

    ("\\.go$"                    all-the-icons-fileicon "go"               :face all-the-icons-blue)

    ("\\.mp3$"                   all-the-icons-faicon "volume-up"          :face all-the-icons-dred)
    ("\\.wav$"                   all-the-icons-faicon "volume-up"          :face all-the-icons-dred)
    ("\\.m4a$"                   all-the-icons-faicon "volume-up"          :face all-the-icons-dred)
    ("\\.ogg$"                   all-the-icons-faicon "volume-up"          :face all-the-icons-dred)
    ("\\.flac$"                  all-the-icons-faicon "volume-up"          :face all-the-icons-dred)
    ("\\.opus$"                  all-the-icons-faicon "volume-up"          :face all-the-icons-dred)
    ("\\.au$"                    all-the-icons-faicon "volume-up"          :face all-the-icons-dred)
    ("\\.aif[fc]?$"              all-the-icons-faicon "volume-up"          :face all-the-icons-dred)

    ("\\.jl$"                    all-the-icons-fileicon "julia"            :face all-the-icons-purple)
    ("\\.matlab$"                all-the-icons-fileicon "matlab"           :face all-the-icons-orange)

    ("\\.nix$"                   all-the-icons-fileicon "nix"              :face all-the-icons-blue)

    ("\\.p[ml]$"                 all-the-icons-alltheicon "perl"           :face all-the-icons-lorange)
    ("\\.pl6$"                   all-the-icons-fileicon "perl6"            :face all-the-icons-cyan)
    ("\\.pm6$"                   all-the-icons-fileicon "perl6"            :face all-the-icons-pink)
    ("\\.pod$"                   all-the-icons-alltheicon "perldocs"       :face all-the-icons-lgreen)

    ("\\.php$"                   all-the-icons-fileicon "php"              :face all-the-icons-lsilver)
    ("\\.pony$"                  all-the-icons-fileicon "pony"             :face all-the-icons-maroon)
    ("\\.ps1$"                   all-the-icons-fileicon "powershell"       :face all-the-icons-blue)
    ("\\.prol?o?g?$"             all-the-icons-alltheicon "prolog"         :face all-the-icons-lmaroon)
    ("\\.py$"                    all-the-icons-alltheicon "python"         :face all-the-icons-dblue)
    ("\\.ipynb$"                 all-the-icons-fileicon "jupyter"          :face all-the-icons-dorange)

    ("\\.rkt$"                   all-the-icons-fileicon "racket"           :face all-the-icons-red)
    ("^Gemfile\\(\\.lock\\)?$"   all-the-icons-alltheicon "ruby-alt"       :face all-the-icons-red)
    ("\\.gem$"                   all-the-icons-alltheicon "ruby-alt"       :face all-the-icons-red)
    ("_?test\\.rb$"              all-the-icons-fileicon "test-ruby"        :face all-the-icons-red)
    ("_?test_helper\\.rb$"       all-the-icons-fileicon "test-ruby"        :face all-the-icons-dred)
    ("_?spec\\.rb$"              all-the-icons-fileicon "test-ruby"        :face all-the-icons-red)
    ("_?spec_helper\\.rb$"       all-the-icons-fileicon "test-ruby"        :face all-the-icons-dred)
    ("\\.rb$"                    all-the-icons-octicon "ruby"              :face all-the-icons-lred)
    ("\\.rs$"                    all-the-icons-alltheicon "rust"           :face all-the-icons-maroon)
    ("\\.rlib$"                  all-the-icons-alltheicon "rust"           :face all-the-icons-dmaroon)
    ("\\.r[ds]?x?$"              all-the-icons-fileicon "R"                :face all-the-icons-lblue)

    ("\\.sbt$"                   all-the-icons-fileicon   "sbt"            :face all-the-icons-red)
    ("\\.scala$"                 all-the-icons-alltheicon "scala"          :face all-the-icons-red)
    ("\\.scm$"                   all-the-icons-fileicon   "scheme"         :face all-the-icons-red)
    ("\\.swift$"                 all-the-icons-alltheicon "swift"          :face all-the-icons-green)

    ("-?spec\\.ts$"              all-the-icons-fileicon "test-typescript"  :face all-the-icons-blue)
    ("-?test\\.ts$"              all-the-icons-fileicon "test-typescript"  :face all-the-icons-blue)
    ("-?spec\\.js$"              all-the-icons-fileicon "test-js"          :face all-the-icons-lpurple)
    ("-?test\\.js$"              all-the-icons-fileicon "test-js"          :face all-the-icons-lpurple)
    ("-?spec\\.jsx$"             all-the-icons-fileicon "test-react"       :face all-the-icons-blue-alt)
    ("-?test\\.jsx$"             all-the-icons-fileicon "test-react"       :face all-the-icons-blue-alt)

    ("-?spec\\."                 all-the-icons-fileicon "test-generic"     :face all-the-icons-dgreen)
    ("-?test\\."                 all-the-icons-fileicon "test-generic"     :face all-the-icons-dgreen)

    ("\\.tf\\(vars\\|state\\)?$" all-the-icons-fileicon "terraform"        :face all-the-icons-purple-alt)

    ("\\.asm$"                   all-the-icons-fileicon "assembly"         :face all-the-icons-blue)

    ;; Verilog(-AMS) and SystemVerilog(-AMS)
    ("\\.v$"                     all-the-icons-fileicon "verilog"          :face all-the-icons-red)
    ("\\.vams$"                  all-the-icons-fileicon "verilog"          :face all-the-icons-red)
    ("\\.sv$"                    all-the-icons-fileicon "verilog"          :face all-the-icons-red)
    ("\\.sva$"                   all-the-icons-fileicon "verilog"          :face all-the-icons-red)
    ("\\.svh$"                   all-the-icons-fileicon "verilog"          :face all-the-icons-red)
    ("\\.svams$"                 all-the-icons-fileicon "verilog"          :face all-the-icons-red)

    ;; VHDL(-AMS)
    ("\\.vhd$"                   all-the-icons-fileicon "vhdl"             :face all-the-icons-blue)
    ("\\.vhdl$"                  all-the-icons-fileicon "vhdl"             :face all-the-icons-blue)
    ("\\.vhms$"                  all-the-icons-fileicon "vhdl"             :face all-the-icons-blue)

    ;; Cabal
    ("\\.cabal$"                 all-the-icons-fileicon "cabal"            :face all-the-icons-lblue)

    ;; Kotlin
    ("\\.kt$"                    all-the-icons-fileicon "kotlin"           :face all-the-icons-orange)
    ("\\.kts$"                   all-the-icons-fileicon "kotlin"           :face all-the-icons-orange)

    ;; Nimrod
    ("\\.nim$"                   all-the-icons-fileicon "nimrod"           :face all-the-icons-yellow)
    ("\\.nims$"                  all-the-icons-fileicon "nimrod"           :face all-the-icons-yellow)

    ;; SQL
    ("\\.sql$"                   all-the-icons-octicon "database"          :face all-the-icons-silver)

    ;; Styles
    ("\\.styles$"                all-the-icons-material "style"            :face all-the-icons-red)

    ;; Lua
    ("\\.lua$"                   all-the-icons-fileicon "lua"              :face all-the-icons-dblue)

    ;; ASCII doc
    ("\\.adoc$"                  all-the-icons-fileicon "asciidoc"         :face all-the-icons-lblue)
    ("\\.asciidoc$"              all-the-icons-fileicon "asciidoc"         :face all-the-icons-lblue)

    ;; Puppet
    ("\\.pp$"                    all-the-icons-fileicon "puppet"           :face all-the-icons-yellow)

    ;; Jinja
    ("\\.j2$"                    all-the-icons-fileicon "jinja"            :face all-the-icons-silver)
    ("\\.jinja2$"                all-the-icons-fileicon "jinja"            :face all-the-icons-silver)

    ;; Docker
    ("\\.dockerfile$"            all-the-icons-fileicon "dockerfile"       :face all-the-icons-cyan)

    ;; Vagrant
    ("\\.vagrantfile$"           all-the-icons-fileicon "vagrant"          :face all-the-icons-blue)

    ;; There seems to be a a bug with this font icon which does not
    ;; let you propertise it without it reverting to being a lower
    ;; case phi
    ("\\.c$"                     all-the-icons-alltheicon "c-line"         :face all-the-icons-blue)
    ("\\.h$"                     all-the-icons-alltheicon "c-line"         :face all-the-icons-purple)
    ("\\.m$"                     all-the-icons-fileicon "apple"                  )
    ("\\.mm$"                    all-the-icons-fileicon "apple"                  )

    ("\\.c\\(c\\|pp\\|xx\\)$"    all-the-icons-alltheicon "cplusplus-line" :face all-the-icons-blue)
    ("\\.h\\(h\\|pp\\|xx\\)$"    all-the-icons-alltheicon "cplusplus-line" :face all-the-icons-purple)

    ("\\.csx?$"                  all-the-icons-alltheicon "csharp-line"    :face all-the-icons-dblue)

    ("\\.cljc?$"                 all-the-icons-alltheicon "clojure"        :face all-the-icons-blue )
    ("\\.cljs$"                  all-the-icons-fileicon "cljs"             :face all-the-icons-dblue )

    ("\\.coffee$"                all-the-icons-alltheicon "coffeescript"   :face all-the-icons-maroon)
    ("\\.iced$"                  all-the-icons-alltheicon "coffeescript"   :face all-the-icons-lmaroon)

    ("\\.dart$"                  all-the-icons-fileicon "dart"             :face all-the-icons-blue )

    ;; Git
    ("^MERGE_"                   all-the-icons-octicon "git-merge"         :face all-the-icons-red)
    ("^COMMIT_EDITMSG"           all-the-icons-octicon "git-commit"        :face all-the-icons-red)

    ;; Lisps
    ("\\.cl$"                    all-the-icons-fileicon "clisp"            :face all-the-icons-lorange)
    ("\\.l\\(isp\\)?$"           all-the-icons-fileicon "lisp"             :face all-the-icons-orange)
    ("\\.el$"                    all-the-icons-fileicon "elisp"            :face all-the-icons-purple)

    ;; Stylesheeting
    ("\\.css$"                   all-the-icons-alltheicon "css3"           :face all-the-icons-yellow)
    ("\\.scss$"                  all-the-icons-alltheicon "sass"           :face all-the-icons-pink)
    ("\\.sass$"                  all-the-icons-alltheicon "sass"           :face all-the-icons-dpink)
    ("\\.less$"                  all-the-icons-alltheicon "less"           :face all-the-icons-dyellow)
    ("\\.postcss$"               all-the-icons-fileicon "postcss"          :face all-the-icons-dred)
    ("\\.sss$"                   all-the-icons-fileicon "postcss"          :face all-the-icons-dred)
    ("\\.styl$"                  all-the-icons-alltheicon "stylus"         :face all-the-icons-lgreen)
    ("stylelint"                 all-the-icons-fileicon "stylelint"        :face all-the-icons-lyellow)
    ("\\.csv$"                   all-the-icons-octicon "graph"             :face all-the-icons-dblue)

    ("\\.hs$"                    all-the-icons-alltheicon "haskell"        :face all-the-icons-red)
    ("\\.chs$"                   all-the-icons-alltheicon "haskell"        :face all-the-icons-red)
    ("\\.lhs$"                   all-the-icons-alltheicon "haskell"        :face all-the-icons-red)
    ("\\.hsc$"                   all-the-icons-alltheicon "haskell"        :face all-the-icons-red)

    ;; Web modes
    ("\\.inky-haml$"             all-the-icons-fileicon "haml"             :face all-the-icons-lyellow)
    ("\\.haml$"                  all-the-icons-fileicon "haml"             :face all-the-icons-lyellow)
    ("\\.html?$"                 all-the-icons-alltheicon "html5"          :face all-the-icons-orange)
    ("\\.inky-erb?$"             all-the-icons-alltheicon "html5"          :face all-the-icons-lred)
    ("\\.erb$"                   all-the-icons-alltheicon "html5"          :face all-the-icons-lred)
    ("\\.hbs$"                   all-the-icons-fileicon "moustache"        :face all-the-icons-green)
    ("\\.inky-slim$"             all-the-icons-octicon "dashboard"         :face all-the-icons-yellow)
    ("\\.slim$"                  all-the-icons-octicon "dashboard"         :face all-the-icons-yellow)
    ("\\.jade$"                  all-the-icons-fileicon "jade"             :face all-the-icons-red)
    ("\\.pug$"                   all-the-icons-fileicon "pug-alt"          :face all-the-icons-red)

    ;; JavaScript
    ("^gulpfile"                 all-the-icons-alltheicon "gulp"           :face all-the-icons-lred)
    ("^gruntfile"                all-the-icons-alltheicon "grunt"          :face all-the-icons-lyellow)
    ("^webpack"                  all-the-icons-fileicon "webpack"          :face all-the-icons-lblue)

    ("\\.d3\\.?js"               all-the-icons-alltheicon "d3"             :face all-the-icons-lgreen)

    ("\\.re$"                    all-the-icons-fileicon "reason"           :face all-the-icons-red-alt)
    ("\\.rei$"                   all-the-icons-fileicon "reason"           :face all-the-icons-dred)
    ("\\.ml$"                    all-the-icons-fileicon "ocaml"            :face all-the-icons-lpink)
    ("\\.mli$"                   all-the-icons-fileicon "ocaml"            :face all-the-icons-dpink)

    ("\\.react"                  all-the-icons-alltheicon "react"          :face all-the-icons-lblue)
    ("\\.d\\.ts$"                all-the-icons-fileicon "typescript"       :face all-the-icons-cyan-alt)
    ("\\.ts$"                    all-the-icons-fileicon "typescript"       :face all-the-icons-blue-alt)
    ("\\.tsx$"                   all-the-icons-fileicon "typescript"       :face all-the-icons-blue-alt)
    ("\\.js$"                    all-the-icons-alltheicon "javascript"     :face all-the-icons-yellow)
    ("\\.es[0-9]$"               all-the-icons-alltheicon "javascript"     :face all-the-icons-yellow)
    ("\\.jsx$"                   all-the-icons-fileicon "jsx-2"            :face all-the-icons-cyan-alt)
    ("\\.njs$"                   all-the-icons-alltheicon "nodejs"         :face all-the-icons-lgreen)
    ("\\.vue$"                   all-the-icons-fileicon "vue"              :face all-the-icons-lgreen)

    ;; F#
    ("\\.fs[ix]?$"               all-the-icons-fileicon "fsharp"           :face all-the-icons-blue-alt)

    ;; File Types
    ("\\.ico$"                   all-the-icons-octicon "file-media"        :face all-the-icons-blue)
    ("\\.png$"                   all-the-icons-octicon "file-media"        :face all-the-icons-orange)
    ("\\.gif$"                   all-the-icons-octicon "file-media"        :face all-the-icons-green)
    ("\\.jpe?g$"                 all-the-icons-octicon "file-media"        :face all-the-icons-dblue)
    ("\\.svg$"                   all-the-icons-alltheicon "svg"            :face all-the-icons-lgreen)

    ;; Video
    ("\\.mov$"                   all-the-icons-faicon "film"               :face all-the-icons-blue)
    ("\\.mp4$"                   all-the-icons-faicon "film"               :face all-the-icons-blue)
    ("\\.mpg$"                   all-the-icons-faicon "film"               :face all-the-icons-blue)
    ("\\.mpeg$"                  all-the-icons-faicon "film"               :face all-the-icons-blue)
    ("\\.ogv$"                   all-the-icons-faicon "film"               :face all-the-icons-dblue)
    ("\\.mkv$"                   all-the-icons-faicon "film"               :face all-the-icons-blue)
    ("\\.webm$"                  all-the-icons-faicon "film"               :face all-the-icons-blue)

    ;; Fonts
    ("\\.ttf$"                   all-the-icons-fileicon "font"             :face all-the-icons-dcyan)
    ("\\.woff2?$"                all-the-icons-fileicon "font"             :face all-the-icons-cyan)

    ;; Doc
    ("\\.pdf$"                   all-the-icons-octicon "file-pdf"          :face all-the-icons-dred)
    ("\\.te?xt$"                 all-the-icons-octicon "file-text"         :face all-the-icons-cyan)
    ("\\.doc[xm]?$"              all-the-icons-fileicon "word"             :face all-the-icons-blue)
    ("\\.texi?$"                 all-the-icons-fileicon "tex"              :face all-the-icons-lred)
    ("\\.md$"                    all-the-icons-octicon "markdown"          :face all-the-icons-lblue)
    ("\\.bib$"                   all-the-icons-fileicon "bib"              :face all-the-icons-maroon)
    ("\\.org$"                   all-the-icons-fileicon "org"              :face all-the-icons-lgreen)

    ("\\.pp[st]$"                all-the-icons-fileicon "powerpoint"       :face all-the-icons-orange)
    ("\\.pp[st]x$"               all-the-icons-fileicon "powerpoint"       :face all-the-icons-red)
    ("\\.knt$"                   all-the-icons-fileicon "powerpoint"       :face all-the-icons-cyan)

    ("bookmark"                  all-the-icons-octicon "bookmark"          :face all-the-icons-lpink)
    ("\\.cache$"                 all-the-icons-octicon "database"          :face all-the-icons-green)

    ("^\\*scratch\\*$"           all-the-icons-faicon "sticky-note"        :face all-the-icons-lyellow)
    ("^\\*scratch.*"             all-the-icons-faicon "sticky-note"        :face all-the-icons-yellow)
    ("^\\*new-tab\\*$"           all-the-icons-material "star"             :face all-the-icons-cyan)

    ("^\\."                      all-the-icons-octicon "gear"              )
    (".?"                        all-the-icons-faicon "file-o"             :face all-the-icons-dsilver)
   )
 )

(setq all-the-icons-dir-icon-alist
  '(
    ("trash"            all-the-icons-faicon "trash-o"          )
    ("dropbox"          all-the-icons-faicon "dropbox"          )
    ("google[ _-]drive" all-the-icons-alltheicon "google-drive" )
    ("^atom$"           all-the-icons-alltheicon "atom"         )
    ("documents"        all-the-icons-faicon "book"             )
    ("download"         all-the-icons-faicon "cloud-download"   )
    ("desktop"          all-the-icons-octicon "device-desktop"  )
    ("pictures"         all-the-icons-faicon "picture-o"        )
    ("photos"           all-the-icons-faicon "camera-retro"     )
    ("music"            all-the-icons-faicon "music"            )
    ("movies"           all-the-icons-faicon "film"             )
    ("code"             all-the-icons-octicon "code"            )
    ("workspace"        all-the-icons-octicon "code"            )
    ("test"             all-the-icons-fileicon "test-dir"       )
    ("\\.git"           all-the-icons-alltheicon "git"          )
    (".?"               all-the-icons-octicon "file-directory"  )
    )
  )

(setq all-the-icons-weather-icon-alist
  '(
    ("tornado"               all-the-icons-wicon "tornado"                 )
    ("hurricane"             all-the-icons-wicon "hurricane"               )
    ("thunderstorms"         all-the-icons-wicon "thunderstorm"            )
    ("sunny"                 all-the-icons-wicon "day-sunny"               )
    ("rain.*snow"            all-the-icons-wicon "rain-mix"                )
    ("rain.*hail"            all-the-icons-wicon "rain-mix"                )
    ("sleet"                 all-the-icons-wicon "sleet"                   )
    ("hail"                  all-the-icons-wicon "hail"                    )
    ("drizzle"               all-the-icons-wicon "sprinkle"                )
    ("rain"                  all-the-icons-wicon "showers"                 )
    ("showers"               all-the-icons-wicon "showers"                 )
    ("blowing.*snow"         all-the-icons-wicon "snow-wind"               )
    ("snow"                  all-the-icons-wicon "snow"                    )
    ("dust"                  all-the-icons-wicon "dust"                    )
    ("fog"                   all-the-icons-wicon "fog"                     )
    ("haze"                  all-the-icons-wicon "day-haze"                )
    ("smoky"                 all-the-icons-wicon "smoke"                   )
    ("blustery"              all-the-icons-wicon "cloudy-windy"            )
    ("windy"                 all-the-icons-wicon "cloudy-gusts"            )
    ("cold"                  all-the-icons-wicon "snowflake-cold"          )
    ("partly.*cloudy.*night" all-the-icons-wicon "night-alt-partly-cloudy" )
    ("partly.*cloudy"        all-the-icons-wicon "day-cloudy-high"         )
    ("cloudy.*night"         all-the-icons-wicon "night-alt-cloudy"        )
    ("cxloudy.*day"          all-the-icons-wicon "day-cloudy"              )
    ("cloudy"                all-the-icons-wicon "cloudy"                  )
    ("clear.*night"          all-the-icons-wicon "night-clear"             )
    ("fair.*night"           all-the-icons-wicon "stars"                   )
    ("fair.*day"             all-the-icons-wicon "horizon"                 )
    ("hot"                   all-the-icons-wicon "hot"                     )
    ("not.*available"        all-the-icons-wicon "na"                      )
    )
  )

(setq all-the-icons-mode-icon-alist
  '(
    (emacs-lisp-mode                   all-the-icons-fileicon "elisp"            :face all-the-icons-purple   )
    (circe-server-mode                 all-the-icons-faicon "commenting-o"                                    )
    (circe-channel-mode                all-the-icons-faicon "commenting-o"                                    )
    (erc-mode                          all-the-icons-faicon "commenting-o"                                    )
    (inferior-emacs-lisp-mode          all-the-icons-fileicon "elisp"            :face all-the-icons-lblue    )
    (dired-mode                        all-the-icons-octicon "file-directory"                                 )
    (lisp-interaction-mode             all-the-icons-fileicon "lisp"             :face all-the-icons-orange   )
    (sly-mrepl-mode                    all-the-icons-fileicon "clisp"            :face all-the-icons-orange   )
    (slime-repl-mode                   all-the-icons-fileicon "clisp"            :face all-the-icons-orange   )
    (org-mode                          all-the-icons-fileicon "org"              :face all-the-icons-lgreen   )
    (typescript-mode                   all-the-icons-fileicon "typescript"       :face all-the-icons-blue-alt )
    (js-mode                           all-the-icons-alltheicon "javascript"     :face all-the-icons-yellow   )
    (js-jsx-mode                       all-the-icons-alltheicon "javascript"     :face all-the-icons-yellow   )
    (js2-mode                          all-the-icons-alltheicon "javascript"     :face all-the-icons-yellow   )
    (js3-mode                          all-the-icons-alltheicon "javascript"     :face all-the-icons-yellow   )
    (rjsx-mode                         all-the-icons-fileicon "jsx-2"            :face all-the-icons-cyan-alt )
    (term-mode                         all-the-icons-octicon "terminal"                                       )
    (vterm-mode                        all-the-icons-octicon "terminal"                                       )
    (eshell-mode                       all-the-icons-octicon "terminal"          :face all-the-icons-purple   )
    (magit-refs-mode                   all-the-icons-octicon "git-branch"        :face all-the-icons-red      )
    (magit-process-mode                all-the-icons-octicon "mark-github"                                    )
    (magit-diff-mode                   all-the-icons-octicon "git-compare"       :face all-the-icons-lblue    )
    (ediff-mode                        all-the-icons-octicon "git-compare"       :Face all-the-icons-red      )
    (comint-mode                       all-the-icons-faicon "terminal"           :face all-the-icons-lblue    )
    (eww-mode                          all-the-icons-faicon "firefox"            :face all-the-icons-red      )
    (org-agenda-mode                   all-the-icons-octicon "checklist"         :face all-the-icons-lgreen   )
    (cfw:calendar-mode                 all-the-icons-octicon "calendar"                                       )
    (ibuffer-mode                      all-the-icons-faicon "files-o"            :face all-the-icons-dsilver  )
    (messages-buffer-mode              all-the-icons-faicon "stack-overflow"                                  )
    (help-mode                         all-the-icons-faicon "info"               :face all-the-icons-purple   )
    (benchmark-init/tree-mode          all-the-icons-octicon "dashboard"                                      )
    (jenkins-mode                      all-the-icons-fileicon "jenkins"          :face all-the-icons-blue     )
    (magit-popup-mode                  all-the-icons-alltheicon "git"            :face all-the-icons-red      )
    (magit-status-mode                 all-the-icons-alltheicon "git"            :face all-the-icons-lred     )
    (magit-log-mode                    all-the-icons-alltheicon "git"            :face all-the-icons-green    )
    (mu4e-compose-mode                 all-the-icons-octicon "pencil"                                         )
    (mu4e-headers-mode                 all-the-icons-octicon "mail"                                           )
    (mu4e-main-mode                    all-the-icons-octicon "mail"                                           )
    (mu4e-view-mode                    all-the-icons-octicon "mail-read"                                      )
    (paradox-menu-mode                 all-the-icons-faicon "archive"            :face all-the-icons-silver   )
    (Custom-mode                       all-the-icons-octicon "settings"                                       )

    ;; Special matcher for Web Mode based on the `web-mode-content-type' of the current buffer
    (web-mode                          all-the-icons--web-mode-icon                                           )

    (fundamental-mode                  all-the-icons-fileicon "elisp"            :face all-the-icons-dsilver  )
    (special-mode                      all-the-icons-fileicon "elisp"            :face all-the-icons-yellow   )
    (text-mode                         all-the-icons-octicon "file-text"         :face all-the-icons-cyan     )
    (enh-ruby-mode                     all-the-icons-alltheicon "ruby-alt"       :face all-the-icons-lred     )
    (ruby-mode                         all-the-icons-alltheicon "ruby-alt"       :face all-the-icons-lred     )
    (inf-ruby-mode                     all-the-icons-alltheicon "ruby-alt"       :face all-the-icons-red      )
    (projectile-rails-compilation-mode all-the-icons-alltheicon "ruby-alt"       :face all-the-icons-red      )
    (rspec-compilation-mode            all-the-icons-alltheicon "ruby-alt"       :face all-the-icons-red      )
    (rake-compilation-mode             all-the-icons-alltheicon "ruby-alt"       :face all-the-icons-red      )
    (sh-mode                           all-the-icons-alltheicon "terminal"       :face all-the-icons-purple   )
    (shell-mode                        all-the-icons-alltheicon "terminal"       :face all-the-icons-purple   )
    (fish-mode                         all-the-icons-alltheicon "terminal"       :face all-the-icons-lpink    )
    (nginx-mode                        all-the-icons-fileicon "nginx"            :face all-the-icons-dgreen   )
    (apache-mode                       all-the-icons-alltheicon "apache"         :face all-the-icons-dgreen   )
    (makefile-mode                     all-the-icons-fileicon "gnu"              :face all-the-icons-dorange  )
    (dockerfile-mode                   all-the-icons-fileicon "dockerfile"       :face all-the-icons-blue     )
    (docker-compose-mode               all-the-icons-fileicon "dockerfile"       :face all-the-icons-lblue    )
    (nxml-mode                         all-the-icons-faicon "file-code-o"        :face all-the-icons-lorange  )
    (json-mode                         all-the-icons-octicon "settings"          :face all-the-icons-yellow   )
    (yaml-mode                         all-the-icons-octicon "settings"          :face all-the-icons-dyellow  )
    (elisp-byte-code-mode              all-the-icons-octicon "file-binary"       :face all-the-icons-dsilver  )
    (archive-mode                      all-the-icons-octicon "file-zip"          :face all-the-icons-lmaroon  )
    (elm-mode                          all-the-icons-fileicon "elm"              :face all-the-icons-blue     )
    (erlang-mode                       all-the-icons-alltheicon "erlang"         :face all-the-icons-red      )
    (elixir-mode                       all-the-icons-alltheicon "elixir"         :face all-the-icons-lorange  )
    (java-mode                         all-the-icons-alltheicon "java"           :face all-the-icons-purple   )
    (go-mode                           all-the-icons-fileicon "go"               :face all-the-icons-blue     )
    (matlab-mode                       all-the-icons-fileicon "matlab"           :face all-the-icons-orange   )
    (perl-mode                         all-the-icons-alltheicon "perl"           :face all-the-icons-lorange  )
    (cperl-mode                        all-the-icons-alltheicon "perl"           :face all-the-icons-lorange  )
    (php-mode                          all-the-icons-fileicon "php"              :face all-the-icons-lsilver  )
    (prolog-mode                       all-the-icons-alltheicon "prolog"         :face all-the-icons-lmaroon  )
    (python-mode                       all-the-icons-alltheicon "python"         :face all-the-icons-dblue    )
    (inferior-python-mode              all-the-icons-alltheicon "python"         :face all-the-icons-dblue    )
    (racket-mode                       all-the-icons-fileicon "racket"           :face all-the-icons-red      )
    (rust-mode                         all-the-icons-alltheicon "rust"           :face all-the-icons-maroon   )
    (scala-mode                        all-the-icons-alltheicon "scala"          :face all-the-icons-red      )
    (scheme-mode                       all-the-icons-fileicon   "scheme"         :face all-the-icons-red      )
    (swift-mode                        all-the-icons-alltheicon "swift"          :face all-the-icons-green    )
    (c-mode                            all-the-icons-alltheicon "c-line"         :face all-the-icons-blue     )
    (c++-mode                          all-the-icons-alltheicon "cplusplus-line" :face all-the-icons-blue     )
    (csharp-mode                       all-the-icons-alltheicon "csharp-line"    :face all-the-icons-dblue    )
    (clojure-mode                      all-the-icons-alltheicon "clojure"        :face all-the-icons-blue     )
    (cider-repl-mode                   all-the-icons-alltheicon "clojure"        :face all-the-icons-green    )
    (clojurescript-mode                all-the-icons-fileicon "cljs"             :face all-the-icons-dblue    )
    (coffee-mode                       all-the-icons-alltheicon "coffeescript"   :face all-the-icons-maroon   )
    (lisp-mode                         all-the-icons-fileicon "lisp"             :face all-the-icons-orange   )
    (css-mode                          all-the-icons-alltheicon "css3"           :face all-the-icons-yellow   )
    (scss-mode                         all-the-icons-alltheicon "sass"           :face all-the-icons-pink     )
    (sass-mode                         all-the-icons-alltheicon "sass"           :face all-the-icons-dpink    )
    (less-css-mode                     all-the-icons-alltheicon "less"           :face all-the-icons-dyellow  )
    (stylus-mode                       all-the-icons-alltheicon "stylus"         :face all-the-icons-lgreen   )
    (csv-mode                          all-the-icons-octicon "graph"             :face all-the-icons-dblue    )
    (haskell-mode                      all-the-icons-alltheicon "haskell"        :face all-the-icons-red      )
    (haskell-c2hs-mode                 all-the-icons-alltheicon "haskell"        :face all-the-icons-red      )
    (literate-haskell-mode             all-the-icons-alltheicon "haskell"        :face all-the-icons-red      )
    (haml-mode                         all-the-icons-fileicon "haml"             :face all-the-icons-lyellow  )
    (html-mode                         all-the-icons-alltheicon "html5"          :face all-the-icons-orange   )
    (rhtml-mode                        all-the-icons-alltheicon "html5"          :face all-the-icons-lred     )
    (mustache-mode                     all-the-icons-fileicon "moustache"        :face all-the-icons-green    )
    (slim-mode                         all-the-icons-octicon "dashboard"         :face all-the-icons-yellow   )
    (jade-mode                         all-the-icons-fileicon "jade"             :face all-the-icons-red      )
    (pug-mode                          all-the-icons-fileicon "pug"              :face all-the-icons-red      )
    (react-mode                        all-the-icons-alltheicon "react"          :face all-the-icons-lblue    )
    (image-mode                        all-the-icons-octicon "file-media"        :face all-the-icons-blue     )
    (texinfo-mode                      all-the-icons-fileicon "tex"              :face all-the-icons-lred     )
    (markdown-mode                     all-the-icons-octicon "markdown"          :face all-the-icons-lblue    )
    (bibtex-mode                       all-the-icons-fileicon "bib"              :face all-the-icons-maroon   )
    (org-mode                          all-the-icons-fileicon "org"              :face all-the-icons-lgreen   )
    (compilation-mode                  all-the-icons-faicon "cogs"                                            )
    (objc-mode                         all-the-icons-faicon "apple"                                           )
    (tuareg-mode                       all-the-icons-fileicon "ocaml"                                         )
    (purescript-mode                   all-the-icons-fileicon "purescript"                                    )
    (verilog-mode                      all-the-icons-fileicon "verilog"          :face all-the-icons-red      )
    (vhdl-mode                         all-the-icons-fileicon "vhdl"             :face all-the-icons-blue     )
    (haskell-cabal-mode                all-the-icons-fileicon "cabal"            :face all-the-icons-lblue    )
    (kotlin-mode                       all-the-icons-fileicon "kotlin"           :face all-the-icons-orange   )
    (nim-mode                          all-the-icons-fileicon "nimrod"           :face all-the-icons-yellow   )
    (sql-mode                          all-the-icons-octicon  "database"         :face all-the-icons-silver   )
    (lua-mode                          all-the-icons-fileicon "lua"              :face all-the-icons-dblue    )
    (adoc-mode                         all-the-icons-fileicon "asciidoc"         :face all-the-icons-lblue    )
    (puppet-mode                       all-the-icons-fileicon "puppet"           :face all-the-icons-yellow   )
    (jinja2-mode                       all-the-icons-fileicon "jinja"            :face all-the-icons-silver   )
    (powershell-mode                   all-the-icons-fileicon "powershell"       :face all-the-icons-blue     )
    (tex-mode                          all-the-icons-fileicon "tex"              :face all-the-icons-lred     )
    (latex-mode                        all-the-icons-fileicon "tex"              :face all-the-icons-lred     )
    (dart-mode                         all-the-icons-fileicon "dart"             :face all-the-icons-blue     )
    (fsharp-mode                       all-the-icons-fileicon "fsharp"           :face all-the-icons-blue     )
    (asm-mode                          all-the-icons-fileicon "assembly"         :face all-the-icons-blue     )
    (nasm-mode                         all-the-icons-fileicon "assembly"         :face all-the-icons-blue     )
    )
  )

(setq all-the-icons-url-alist
  '(
    ;; Social media and communities
    ("^\\(https?://\\)?\\(www\\.\\)?del\\.icio\\.us"          all-the-icons-faicon "delicious"           )
    ("^\\(https?://\\)?\\(www\\.\\)?behance\\.net"            all-the-icons-faicon "behance"             )
    ("^\\(https?://\\)?\\(www\\.\\)?dribbble\\.com"           all-the-icons-faicon "dribbble"            )
    ("^\\(https?://\\)?\\(www\\.\\)?facebook\\.com"           all-the-icons-faicon "facebook-official"   )
    ("^\\(https?://\\)?\\(www\\.\\)?glide\\.me"               all-the-icons-faicon "glide-g"             )
    ("^\\(https?://\\)?\\(www\\.\\)?plus\\.google\\.com"      all-the-icons-faicon "google-plus"         )
    ("linkedin\\.com"                                         all-the-icons-faicon "linkedin"            )
    ("^\\(https?://\\)?\\(www\\.\\)?ok\\.ru"                  all-the-icons-faicon "odnoklassniki"       )
    ("^\\(https?://\\)?\\(www\\.\\)?reddit\\.com"             all-the-icons-faicon "reddit-alien"        )
    ("^\\(https?://\\)?\\(www\\.\\)?slack\\.com"              all-the-icons-faicon "slack"               )
    ("^\\(https?://\\)?\\(www\\.\\)?snapchat\\.com"           all-the-icons-faicon "snapchat-ghost"      )
    ("^\\(https?://\\)?\\(www\\.\\)?weibo\\.com"              all-the-icons-faicon "weibo"               )
    ("^\\(https?://\\)?\\(www\\.\\)?twitter\\.com"            all-the-icons-faicon "twitter"             )
    ;; Blogging
    ("joomla\\.org"                                           all-the-icons-faicon "joomla"              )
    ("^\\(https?://\\)?\\(www\\.\\)?medium\\.com"             all-the-icons-faicon "medium"              )
    ("tumblr\\.com"                                           all-the-icons-faicon "tumblr"              )
    ("^wordpress\\.com"                                       all-the-icons-faicon "wordpress"           )
    ;; Programming
    ("^\\(https?://\\)?\\(www\\.\\)?bitbucket\\.org"          all-the-icons-octicon "bitbucket"          )
    ("^\\(https?://\\)?\\(www\\.\\)?codepen\\.io"             all-the-icons-faicon "codepen"             )
    ("^\\(https?://\\)?\\(www\\.\\)?codiepie\\.com"           all-the-icons-faicon "codiepie"            )
    ("^\\(https?://\\)?\\(www\\.\\)?gist\\.github\\.com"      all-the-icons-octicon "gist"               )
    ("^\\(https?://\\)?\\(www\\.\\)?github\\.com"             all-the-icons-octicon "mark-github"        )
    ("^\\(https?://\\)?\\(www\\.\\)?gitlab\\.com"             all-the-icons-faicon "gitlab"              )
    ("^\\(https?://\\)?\\(www\\.\\)?news\\.ycombinator\\.com" all-the-icons-faicon "hacker-news"         )
    ("^\\(https?://\\)?\\(www\\.\\)?jsfiddle\\.net"           all-the-icons-faicon "jsfiddle"            )
    ("^\\(https?://\\)?\\(www\\.\\)?maxcdn\\.com"             all-the-icons-faicon "maxcdn"              )
    ("^\\(https?://\\)?\\(www\\.\\)?stackoverflow\\.com"      all-the-icons-faicon "stack-overflow"      )
    ;; Video
    ("^\\(https?://\\)?\\(www\\.\\)?twitch\\.tv"              all-the-icons-faicon "twitch"              )
    ("^\\(https?://\\)?\\(www\\.\\)?vimeo\\.com"              all-the-icons-faicon "vimeo"               )
    ("^\\(https?://\\)?\\(www\\.\\)?youtube\\.com"            all-the-icons-faicon "youtube"             )
    ("^\\(https?://\\)?\\(www\\.\\)?youtu\\.be"               all-the-icons-faicon "youtube"             )
    ("^\\(https?://\\)?\\(www\\.\\)?vine\\.co"                all-the-icons-faicon "vine"                )
    ;; Sound
    ("^\\(https?://\\)?\\(www\\.\\)?last\\.fm"                all-the-icons-faicon "lastfm"              )
    ("^\\(https?://\\)?\\(www\\.\\)?mixcloud\\.com"           all-the-icons-faicon "mixcloud"            )
    ("^\\(https?://\\)?\\(www\\.\\)?soundcloud\\.com"         all-the-icons-faicon "soundcloud"          )
    ("spotify\\.com"                                          all-the-icons-faicon "spotify"             )
    ;; Shopping
    ("^\\(https?://\\)?\\(www\\.\\)?amazon\\."                all-the-icons-faicon "amazon"              )
    ("^\\(https?://\\)?\\(www\\.\\)?opencart\\.com"           all-the-icons-faicon "opencart"            )
    ("^\\(https?://\\)?\\(www\\.\\)?paypal\\.com"             all-the-icons-faicon "paypal"              )
    ("^\\(https?://\\)?\\(www\\.\\)?shirtsinbulk\\.com"       all-the-icons-faicon "shitsinbulk"         )
    ;; Images
    ("^\\(https?://\\)?\\(www\\.\\)?500px\\.com"              all-the-icons-faicon "500px"               )
    ("^\\(https?://\\)?\\(www\\.\\)?deviantart\\.com"         all-the-icons-faicon "deviantart"          )
    ("^\\(https?://\\)?\\(www\\.\\)?flickr\\.com"             all-the-icons-faicon "flickr"              )
    ("^\\(https?://\\)?\\(www\\.\\)?instagram\\.com"          all-the-icons-faicon "instagram"           )
    ("^\\(https?://\\)?\\(www\\.\\)?pinterest\\."             all-the-icons-faicon "pinterest"           )
    ;; Information and books
    ("^\\(https?://\\)?\\(www\\.\\)?digg\\.com"               all-the-icons-faicon "digg"                )
    ("^\\(https?://\\)?\\(www\\.\\)?foursquare\\.com"         all-the-icons-faicon "foursquare"          )
    ("^\\(https?://\\)?\\(www\\.\\)?getpocket\\.com"          all-the-icons-faicon "get-pocket"          )
    ("^\\(https?://\\)?\\(www\\.\\)?scribd\\.com"             all-the-icons-faicon "scribd"              )
    ("^\\(https?://\\)?\\(www\\.\\)?slideshare\\.net"         all-the-icons-faicon "slideshare"          )
    ("stackexchange\\.com"                                    all-the-icons-faicon "stack-exchange"      )
    ("^\\(https?://\\)?\\(www\\.\\)?stumbleupon\\.com"        all-the-icons-faicon "stumbleupon"         )
    ("^\\(https?://\\)?\\(www\\.\\)?tripadvisor\\."           all-the-icons-faicon "tripadvisor"         )
    ("^\\(https?://\\)?\\(www\\.\\)?yelp\\."                  all-the-icons-faicon "yelp"                )

    ("wikipedia\\.org"                                        all-the-icons-faicon "wikipedia-w"         )
    ;; Various companies and tools
    ("^\\(https?://\\)?\\(www\\.\\)?angel\\.co"               all-the-icons-faicon "angellist"           )
    ("^\\(https?://\\)?\\(www\\.\\)?apple\\.com"              all-the-icons-faicon "apple"               )
    ("^\\(https?://\\)?\\(www\\.\\)?buysellads\\.com"         all-the-icons-faicon "buysellads"          )
    ("^\\(https?://\\)?\\(www\\.\\)?connectdevelop\\.com"     all-the-icons-faicon "connectdevelop"      )
    ("^\\(https?://\\)?\\(www\\.\\)?dashcube\\.com"           all-the-icons-faicon "dashcube"            )
    ("^\\(https?://\\)?\\(www\\.\\)?dropbox\\.com"            all-the-icons-faicon "dropbox"             )
    ("^\\(https?://\\)?\\(www\\.\\)?enviragallery\\.com"      all-the-icons-faicon "envira"              )
    ("^\\(https?://\\)?\\(www\\.\\)?fortawesome\\.com"        all-the-icons-faicon "fort-awesome"        )
    ("^\\(https?://\\)?\\(www\\.\\)?forumbee\\.com"           all-the-icons-faicon "forumbee"            )
    ("^\\(https?://\\)?\\(www\\.\\)?gratipay\\.com"           all-the-icons-faicon "gratipay"            )
    ("^\\(https?://\\)?\\(www\\.\\)?modx\\.com"               all-the-icons-faicon "modx"                )
    ("^\\(https?://\\)?\\(www\\.\\)?pagelines\\.com"          all-the-icons-faicon "pagelines"           )
    ("^\\(https?://\\)?\\(www\\.\\)?producthunt\\.com"        all-the-icons-faicon "product-hunt"        )
    ("sellsy\\.com"                                           all-the-icons-faicon "sellsy"              )
    ("^\\(https?://\\)?\\(www\\.\\)?simplybuilt\\.com"        all-the-icons-faicon "simplybuilt"         )
    ("^\\(https?://\\)?\\(www\\.\\)?skyatlas\\.com"           all-the-icons-faicon "skyatlas"            )
    ("^\\(https?://\\)?\\(www\\.\\)?skype\\.com"              all-the-icons-faicon "skype"               )
    ("steampowered\\.com"                                     all-the-icons-faicon "steam"               )
    ("^\\(https?://\\)?\\(www\\.\\)?themeisle\\.com"          all-the-icons-faicon "themeisle"           )
    ("^\\(https?://\\)?\\(www\\.\\)?trello\\.com"             all-the-icons-faicon "trello"              )
    ("^\\(https?://\\)?\\(www\\.\\)?whatsapp\\.com"           all-the-icons-faicon "whatsapp"            )
    ("^\\(https?://\\)?\\(www\\.\\)?ycombinator\\.com"        all-the-icons-faicon "y-combinator"        )
    ("yahoo\\.com"                                            all-the-icons-faicon "yahoo"               )
    ("^\\(https?://\\)?\\(www\\.\\)?yoast\\.com"              all-the-icons-faicon "yoast"               )
    ;; Catch all
    ("android"                                                all-the-icons-faicon "android"             )
    ("creativecommons"                                        all-the-icons-faicon "creative-commons"    )
    ("forums?"                                                all-the-icons-octicon "comment-discussion" )
    ("\\.pdf$"                                                all-the-icons-octicon "file-pdf"           )
    ("google"                                                 all-the-icons-faicon "google"              )
    ("\\.rss"                                                 all-the-icons-faicon "rss"                 )
    )
  )

;;
(define-icon alltheicon all-the-icons-in-terminal-data/alltheicons-alist    "isfit+")
(define-icon devicon    all-the-icons-in-terminal-data/devicons-alist       "isfit+")
(define-icon faicon     all-the-icons-in-terminal-data/fa-icon-alist        "isfit+")
(define-icon fileicon   all-the-icons-in-terminal-data/file-icon-alist      "isfit+")
(define-icon linux      all-the-icons-in-terminal-data/linux-alist          "isfit+")
(define-icon material   all-the-icons-in-terminal-data/material-icons-alist "isfit+")
(define-icon octicon    all-the-icons-in-terminal-data/octicons-alist       "isfit+")
(define-icon powerline  all-the-icons-in-terminal-data/powerline-alist      "isfit+")
(define-icon wicon      all-the-icons-in-terminal-data/weather-icons-alist  "isfit+")
;;

(provide 'all-the-icons-in-terminal)
;;; all-the-icons-in-terminal.el ends here
