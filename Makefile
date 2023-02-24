build-prod:
	cd client && $(MAKE) build-prod
	cd api && $(MAKE) build-prod

build-dev:
	cd client && $(MAKE) build-dev
	cd api && $(MAKE) build-dev