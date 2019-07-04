SRCD = fonts
DIST = dists
TMPD = tmp
VERSION = $(shell date '+%Y%m%d%H%M%S')

all: build

build: download
	@[ -d $(DIST) ] ||  mkdir -p $(DIST)
	@echo "----- build start -----"
	./scripts/generate_font.py ./config.json > $(DIST)/mapping.txt
	@echo "----- Everything seems good -----"

download: dev powerline fontawesome md oct logos weather file alltheicons

dev:
	@[ -d $(SRCD) ] ||  mkdir -p $(SRCD)
	@if [ ! -f $(SRCD)/devicons.ttf ] ; then\
	  wget https://github.com/vorillaz/devicons/raw/master/fonts/devicons.ttf -O $(SRCD)/devicons.ttf ;\
	fi

powerline:
	@[ -d $(SRCD) ] ||  mkdir -p $(SRCD)
	@if [ ! -f $(SRCD)/PowerlineExtraSymbols.otf ] ; then\
	  echo "Download Powerline Extra Symbols" ;\
	  wget https://github.com/ryanoasis/powerline-extra-symbols/raw/90b84948574773f8a2f08bcd26718f7c158f7a41/PowerlineExtraSymbols.otf -O $(SRCD)/PowerlineExtraSymbols.otf ;\
	fi

fontawesome:
	@[ -d $(SRCD) ] ||  mkdir -p $(SRCD)
	@if [ ! -f $(SRCD)/FontAwesome.otf ] ; then\
	  echo "Download FontAwesome v4.7.0" ;\
	  wget https://github.com/FortAwesome/Font-Awesome/archive/v4.7.0.zip ;\
	  unar v4.7.0.zip ;\
	  cp -v Font-Awesome-4.7.0/fonts/FontAwesome.otf $(SRCD)/FontAwesome.otf ;\
	  rm -fr Font-Awesome-4.7.0 ;\
	  rm -f v4.7.0.zip ;\
	fi

md:
	@if [ ! -f $(SRCD)/MaterialIcons-Regular.ttf ] ; then\
	  wget https://github.com/google/material-design-icons/raw/master/iconfont/MaterialIcons-Regular.ttf -O $(SRCD)/MaterialIcons-Regular.ttf ;\
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

logos:
	@[ -d $(SRCD) ] ||  mkdir -p $(SRCD)
	@if [ ! -f $(SRCD)/font-logos.ttf ] ; then\
	  wget https://github.com/lukas-w/font-logos/raw/v0.11/assets/font-logos.ttf -O $(SRCD)/font-logos.ttf ;\
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
	  wget https://github.com/domtronn/all-the-icons.el/raw/52d1f2d36468146c93aaf11399f581401a233306/fonts/all-the-icons.ttf -O $(SRCD)/all-the-icons.ttf ;\
	fi

clean:
	@rm -f scripts/*.pyc

# distclean: clean
# 	rm -fr $(SRCD)/*.ttf
# 	rm -fr $(SRCD)/*.otf
# 	rm -fr $(DIST)/*.ttf
# 	rm -fr $(TMPD)
