.PHONY: help setup dev test build deploy clean

# Cores
YELLOW := \033[1;33m
GREEN := \033[0;32m
RED := \033[0;31m
NC := \033[0m

help: ## Mostra esta ajuda
	@echo "$(YELLOW)TechLogistics SaaS - Comandos Disponíveis:$(NC)"
	@echo ""
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  $(GREEN)%-15s$(NC) %s\n", $$1, $$2}' $(MAKEFILE_LIST)

setup: ## Setup inicial do projeto
	@echo "$(YELLOW)🚀 Setup inicial...$(NC)"
	@docker-compose up -d db redis
	@cd backend && python -m venv venv
	@cd backend && pip install -r requirements/development.txt
	@cd frontend && npm install
	@echo "$(GREEN)✅ Setup concluído!$(NC)"

dev: ## Inicia ambiente de desenvolvimento
	@echo "$(YELLOW)🔧 Iniciando desenvolvimento...$(NC)"
	@docker-compose up -d

test: ## Executa todos os testes
	@echo "$(YELLOW)🧪 Executando testes...$(NC)"
	@cd backend && python manage.py test
	@cd frontend && npm test

lint: ## Executa linting
	@echo "$(YELLOW)🔍 Executando linting...$(NC)"
	@cd backend && flake8 .
	@cd frontend && npm run lint

build: ## Build para produção
	@echo "$(YELLOW)🏗️ Building...$(NC)"
	@docker-compose -f docker-compose.prod.yml build

deploy-staging: ## Deploy para staging
	@echo "$(YELLOW)🚀 Deploy staging...$(NC)"
	@./scripts/deployment/deploy.sh staging

backup-db: ## Backup do banco de dados
	@echo "$(YELLOW)💾 Backup database...$(NC)"
	@./scripts/database/backup_db.sh

clean: ## Limpa containers e volumes
	@echo "$(YELLOW)🧹 Limpando...$(NC)"
	@docker-compose down -v
	@docker system prune -f
