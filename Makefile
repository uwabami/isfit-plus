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

download: fileicons alltheicons nerdsymbol mdg

nerdsymbol:
	@[ -d $(SRCD) ] ||	mkdir -p $(SRCD)
	@if [ ! -f $(SRCD)/SymbolsNerdFont-Regular.ttf ] ; then\
	  echo "Download NerdFontSymbolOnly" ;\
	  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/NerdFontsSymbolsOnly.zip ;\
	  unar NerdFontsSymbolsOnly.zip ;\
	  cp -v NerdFontsSymbolsOnly/SymbolsNerdFont-Regular.ttf $(SRCD)/ ;\
	  rm -fr NerdFontsSymbolsOnly ;\
	  rm -f NerdFontsSymbolsOnly.zip ;\
	fi

fileicons:
	@[ -d $(SRCD) ] ||  mkdir -p $(SRCD)
	@if [ ! -f $(SRCD)/file-icons.ttf ] ; then\
	  wget https://github.com/file-icons/atom/raw/v2.1.7/fonts/file-icons.woff2 ;\
	  woff2_decompress file-icons.woff2 ;\
	  mv file-icons.ttf $(SRCD)/ ;\
	  rm -f file-icons.woff2 ;\
	fi

alltheicons:
	@[ -d $(SRCD) ] ||  mkdir -p $(SRCD)
	@if [ ! -f $(SRCD)/all-the-icons.ttf ] ; then\
	  wget https://github.com/domtronn/all-the-icons.el/raw/master/fonts/all-the-icons.ttf -O $(SRCD)/all-the-icons.ttf ;\
	fi

mdg:
	@if [ ! -f $(SRCD)/MaterialIcons-Regular.ttf ] ; then\
	  wget https://github.com/google/material-design-icons/raw/4.0.0/font/MaterialIcons-Regular.ttf -O $(SRCD)/MaterialIcons-Regular.ttf ;\
	fi

clean:
	@rm -f scripts/*.pyc
	@rm -fr scripts/__pycache__

distclean: clean
	rm -fr $(SRCD)/*.ttf
	rm -fr $(SRCD)/*.otf
	rm -fr $(DIST)/*.ttf
