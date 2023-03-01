SRCD = glyphs
DIST = dists
VERSION = $(shell date '+%Y%m%d%H%M%S')

all: build

build: download
	@[ -d $(DIST) ] ||  mkdir -p $(DIST)
	@echo "----- build start -----"
	@PYTHONPATH=$(CURDIR)/scripts \
	  python3 -c "import sys;import build; sys.exit(build.build('$(VERSION)'))"
	@rm -f isfit-plus.ttf
	@echo "----- Everything seems good -----"

download: \
	set-ui_custom \
	devicons \
	fa \
	fa_ext \
	file \
	md \
	mdg \
	oct \
	logos \
	weather \
	powerline \
	powerline_extra \
	powersymbols \
	pomicon \
	alltheicons \
	codicon

set-ui_custom:
	@[ -d $(SRCD) ] || mkdir -p $(SRCD)
	@if [ ! -f $(SRCD)/set-ui_custom.otf ] ; then\
	  wget https://github.com/ryanoasis/nerd-fonts/raw/master/src/glyphs/original-source.otf -O $(SRCD)/set-ui_custom.otf ;\
	fi

devicons:
	@[ -d $(SRCD) ] ||  mkdir -p $(SRCD)
	@if [ ! -f $(SRCD)/devicons.ttf ] ; then\
	  wget https://github.com/vorillaz/devicons/raw/master/fonts/devicons.ttf -O $(SRCD)/devicons.ttf ;\
	fi

fa:
	@[ -d $(SRCD) ] ||  mkdir -p $(SRCD)
	@if [ ! -f $(SRCD)/FontAwesome.otf ] ; then\
	  echo "Download FontAwesome v4.7.0" ;\
	  wget https://github.com/FortAwesome/Font-Awesome/archive/v4.7.0.zip ;\
	  unar v4.7.0.zip ;\
	  cp -v Font-Awesome-4.7.0/fonts/FontAwesome.otf $(SRCD)/FontAwesome.otf ;\
	  rm -fr Font-Awesome-4.7.0 ;\
	  rm -f v4.7.0.zip ;\
	fi

fa_ext:
	@[ -d $(SRCD) ] ||  mkdir -p $(SRCD)
	@if [ ! -f $(SRCD)/font-awesome-extension.ttf ] ; then\
	  echo "Download FontAwesome Extension" ;\
	  wget https://github.com/AndreLZGava/font-awesome-extension/raw/master/fonts/font-awesome-extension.ttf -O $(SRCD)/font-awesome-extension.ttf ;\
	fi

md:
	@if [ ! -f $(SRCD)/materialdesignicons-webfont.ttf ] ; then\
	  wget https://github.com/Templarian/MaterialDesign-Webfont/raw/master/fonts/materialdesignicons-webfont.ttf -O $(SRCD)/materialdesignicons-webfont.ttf ;\
	fi

mdg:
	@if [ ! -f $(SRCD)/MaterialIcons-Regular.ttf ] ; then\
	  wget https://github.com/google/material-design-icons/raw/master/font/MaterialIcons-Regular.ttf -O $(SRCD)/MaterialIcons-Regular.ttf ;\
	fi

oct:
	@[ -d $(SRCD) ] ||  mkdir -p $(SRCD)
	@if [ ! -f $(SRCD)/octicons.ttf ] ; then\
	  echo "Download Octicons " ;\
	  wget https://github.com/primer/octicons/archive/v4.4.0.zip ;\
	  unar v4.4.0.zip ;\
	  cp -v octicons-4.4.0/build/font/octicons.ttf $(SRCD)/octicons.ttf ;\
	  rm -fr octicons-4.4.0 ;\
	  rm -f v4.4.0.zip ;\
	fi

powerline:
	@[ -d $(SRCD) ] ||  mkdir -p $(SRCD)
	@if [ ! -f $(SRCD)/PowerlineSymbols.otf ] ; then\
	  echo "Download Powerline Symbols" ;\
	  wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf -O $(SRCD)/PowerlineSymbols.otf ;\
	fi

powerline_extra:
	@[ -d $(SRCD) ] ||  mkdir -p $(SRCD)
	@if [ ! -f $(SRCD)/PowerlineExtraSymbols.otf ] ; then\
	  echo "Download Powerline Extra Symbols" ;\
	  wget https://github.com/ryanoasis/powerline-extra-symbols/raw/90b84948574773f8a2f08bcd26718f7c158f7a41/PowerlineExtraSymbols.otf -O $(SRCD)/PowerlineExtraSymbols.otf ;\
	fi

logos:
	@[ -d $(SRCD) ] ||  mkdir -p $(SRCD)
	@if [ ! -f $(SRCD)/font-logos.ttf ] ; then\
	  wget https://github.com/lukas-w/font-logos/raw/v0.17/assets/font-logos.ttf -O $(SRCD)/font-logos.ttf ;\
	fi

weather:
	@[ -d $(SRCD) ] ||  mkdir -p $(SRCD)
	@if [ ! -f $(SRCD)/weathericons.ttf ] ; then\
	  wget https://github.com/erikflowers/weather-icons/raw/2.0.10/font/weathericons-regular-webfont.ttf -O $(SRCD)/weathericons.ttf ;\
	fi

file:
	@[ -d $(SRCD) ] ||  mkdir -p $(SRCD)
	@if [ ! -f $(SRCD)/file-icons.ttf ] ; then\
	  wget https://github.com/file-icons/atom/raw/master/fonts/file-icons.woff2 ;\
	  woff2_decompress file-icons.woff2 ;\
	  mv file-icons.ttf $(SRCD)/ ;\
	  rm -f file-icons.woff2 ;\
	fi

alltheicons:
	@[ -d $(SRCD) ] ||  mkdir -p $(SRCD)
	@if [ ! -f $(SRCD)/all-the-icons.ttf ] ; then\
	  wget https://github.com/domtronn/all-the-icons.el/raw/master/fonts/all-the-icons.ttf -O $(SRCD)/all-the-icons.ttf ;\
	fi

codicon:
	@[ -d $(SRCD) ] ||  mkdir -p $(SRCD)
	@if [ ! -f $(SRCD)/codicon.ttf ] ; then\
	  wget https://github.com/microsoft/vscode-codicons/raw/main/dist/codicon.ttf -O $(SRCD)/codicon.ttf ;\
	fi

pomicon:
	@[ -d $(SRCD) ] ||  mkdir -p $(SRCD)
	@if [ ! -f $(SRCD)/Pomicons.ttf ] ; then\
	  wget https://github.com/gabrielelana/pomicons/raw/master/fonts/Pomicons.otf -O $(SRCD)/Pomicons.ttf ;\
	fi

powersymbols:
	@[ -d $(SRCD) ] ||  mkdir -p $(SRCD)
	@if [ ! -f $(SRCD)/Unicode_IEC_symbol_font.otf ] ; then\
	  wget https://github.com/jloughry/Unicode/raw/master/Unicode_IEC_symbol_font.otf -O $(SRCD)/Unicode_IEC_symbol_font.otf ;\
	fi

clean:
	@rm -f scripts/*.pyc
	@rm -fr scripts/__pycache__

distclean: clean
	rm -fr $(SRCD)/*.ttf
	rm -fr $(SRCD)/*.otf
	rm -fr $(DIST)/*.ttf
