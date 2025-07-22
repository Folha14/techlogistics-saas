# 🚀 TechLogistics SaaS Platform

## Sistema SaaS Multi-tenant para Gestão de Cadeia de Suprimentos

### 📋 Visão Geral
Plataforma enterprise para gestão completa de cadeia de suprimentos com recursos de multi-tenancy, white-label e integrações com ERPs.

### 🏗️ Arquitetura
- **Backend:** Django REST Framework + PostgreSQL
- **Frontend:** React 18 + TypeScript + Tailwind CSS
- **Cache:** Redis
- **Queue:** Celery
- **Deploy:** Docker + Kubernetes

### 🚀 Quick Start

#### Pré-requisitos
- Python 3.9+
- Node.js 18+
- Docker & Docker Compose
- PostgreSQL
- Redis

#### Setup Local
```bash
# Clone do repositório
git clone <repo-url>
cd techlogistics-saas

# Backend
cd backend
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate
pip install -r requirements/development.txt
python manage.py migrate
python manage.py createsuperuser

# Frontend
cd ../frontend
npm install
npm run dev

# Docker (alternativo)
docker-compose up -d
```

### 📁 Estrutura do Projeto
```
techlogistics-saas/
├── backend/          # Django REST API
├── frontend/         # React Application
├── docs/            # Documentação
├── infrastructure/  # Infrastructure as Code
├── tests/           # Testes integração
└── monitoring/      # Configurações monitoramento
```

### 🔗 Links Úteis
- [Documentação da API](./docs/api/)
- [Guia de Deployment](./docs/deployment/)
- [Arquitetura do Sistema](./docs/architecture/)

### 🤝 Contribuição
Veja [CONTRIBUTING.md](./CONTRIBUTING.md) para guidelines.

### 📄 Licença
Este projeto está sob licença MIT. Veja [LICENSE](./LICENSE).
