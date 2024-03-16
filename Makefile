#  _____     ___ ____
#   ____|   |    ____|      PSX2 OpenSource Project
#  |     ___|   |____       (C)2002, Ray Donnelly ( rdonnelly@polygoons.com )
#  --------------------------------------------------------------------------


all:
	$(MAKE) -C ee
	$(MAKE) -C sample

debug:
	$(MAKE) -C ee debug
	$(MAKE) -C sample

install:
	$(MAKE) -C ee install

clean:
	$(MAKE) -C ee clean
	$(MAKE) -C sample clean
