# SIGMA

## Visão Geral
SIGMA é um sistema integrado de gestão de manutenção de ativos, desenvolvido para controlar usuários, equipamentos, inventário de hardware, manutenções, garantias, estoque e relatórios.

## Funcionalidades principais
- Gestão de usuários e controle de acesso
- Cadastro e consulta de equipamentos
- Inventário de hardware e upgrades
- Controle de garantias e alertas de vencimento
- Gestão de manutenções corretivas e preventivas
- Controle de peças e movimentação de estoque
- Relatórios gerenciais e indicadores de desempenho
- Auditoria e registro de ações dos usuários

## Estrutura do projeto
- `frontend/`
  - `assets/css/` — estilos base e navegação visual
  - `assets/js/` — scripts de interface e módulos do frontend
  - `pages/` — páginas HTML do sistema
- `backend/app/`
  - `config/` — configuração da aplicação
  - `database/` — scripts de banco de dados e seed
  - `middleware/` — autenticação e permissões
  - `modules/` — módulos do sistema por domínio
  - `utils/` — utilitários de formatação, validação e helpers
- `docs/requirements.md` — requisitos funcionais, não funcionais e regras de negócio
- `index.html` — página inicial ou ponto de partida do frontend

## Tecnologias
- Frontend: HTML, CSS e JavaScript
- Backend: arquitetura em camadas Python (estrutura de pastas pronta, mas sem implementação de código nos arquivos Python)
- Banco de dados: modelo SQL em `backend/app/database/table_sigma.sql`

## Como usar
1. Abra `index.html` no navegador para visualizar o frontend estático.
2. Se desejar avançar com o backend, implemente os módulos Python em `backend/app/`.
3. Use `docs/requirements.md` como referência de funcionalidades e regras de negócio.

## Documentação
- Requisitos funcionais, não funcionais e regras de negócio: `docs/requirements.md`

## Observações
- O backend está estruturado e pronto para receber implementação, mas os arquivos Python estão atualmente vazios.
- `frontend/assets/css/style.css` importa os estilos base, incluindo `variables.css`.
- Se optar por adicionar backend Python, recomenda-se definir um ambiente virtual e incluir um arquivo de dependências (`requirements.txt` ou `pyproject.toml`).
