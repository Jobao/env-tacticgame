.PHONY: init

init: # environment init
	git submodule init
	git submodule update --init tacticwebbackend
#	git submodule update --init frontend
	cp ./config/envdata ./.env
	cd tacticwebbackend && git checkout main && git pull origin main
#	cd frontend && git checkout main && git pull origin main
	docker compose run --rm tacticwebbackend rm -rf /app/node_modules
	docker compose run --rm tacticwebbackend npm install
#	docker compose run --rm TacticWebFrontend rm -rf /app/node_modules
#	docker compose run --rm TacticWebFrontend npm install
	docker compose down --remove-orphans

up:
	docker compose up -d