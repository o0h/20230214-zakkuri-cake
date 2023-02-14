.PHONY: default help init up down sh ps logs php-lint
PROJECT_NAME := zakkuri-cake
DOCKER_COMMAND := COMPOSE_PROJECT_NAME=$(PROJECT_NAME) docker compose -f .runtime/docker-compose.yml

default: init up

help: ## 今表示している内容を表示します
	@cat README.md
	@echo "\n----\n\n## コマンド一覧"
## obtained from https://qiita.com/po3rin/items/7875ef9db5ca994ff762
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

init: ## ローカル開発に必要なサービスのセットアップを行います
	docker-compose -f .runtime/docker-compose.yml build
	${DOCKER_COMMAND} run --rm -e XDEBUG_MODE=off app composer install --no-interaction

up: ## ローカル開発環境(のサーバー)を立ち上げます
	${DOCKER_COMMAND} up -d app db nginx

down: ## upで立ち上げたサービスを停止します
	${DOCKER_COMMAND} down --remove-orphans

sh: ## 起動中のappサービスに入ってシェルを実行します
	${DOCKER_COMMAND} exec app sh

mysql: ## 起動中のdbサービスに入ってMySQLコマンドを対話モードで実行します
	${DOCKER_COMMAND} exec db mysql -u app_user -psecret app_db

ps: ## 起動中のサービスの一覧を表示します
	${DOCKER_COMMAND} ps

logs: ## 起動中のサービスのlogを表示します
	${DOCKER_COMMAND} logs -f