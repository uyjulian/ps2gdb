#  _____     ___ ____
#   ____|   |    ____|      PSX2 OpenSource Project
#  |     ___|   |____       (C)2002, Ray Donnelly ( rdonnelly@polygoons.com )
#  --------------------------------------------------------------------------


all:
	$(MAKE) -C ee
	$(MAKE) -C sample

clean:
	$(MAKE) -C ee clean
	$(MAKE) -C sample clean
