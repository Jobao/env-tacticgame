.PHONY: init

init: # environment init
	git submodule init
	git submodule update --init tactic-game-backend-nestjs
#	git submodule update --init frontend
	mkdir -p data && mkdir -p data/mongo
	cp ./config/envdata ./.env
	cd tactic-game-backend-nestjs && git checkout main && git pull origin main
#	cd frontend && git checkout main && git pull origin main
	docker compose run --rm tactic-game-backend-nestjs rm -rf /app/node_modules
	docker compose run --rm tactic-game-backend-nestjs npm install
#	docker compose run --rm TacticWebFrontend rm -rf /app/node_modules
#	docker compose run --rm TacticWebFrontend npm install
	docker compose down --remove-orphans

up:
	docker compose up -d

down:
	docker compose down --remove-orphans