build-prod:
	cd client && $(MAKE) build-prod
	cd api && $(MAKE) build-prod