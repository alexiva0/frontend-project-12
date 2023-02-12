lint-frontend:
	make -C frontend lint

install:
	npm ci

start-frontend:
	make -C frontend love

start-backend:
	npx start-server

deploy:
	git push heroku main

love:
	make start-backend & make start-frontend

.PHONY: lint-frontend install start-frontend start-backend deploy love