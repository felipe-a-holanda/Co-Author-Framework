# Co-Author-Framework

Framework de co-autoria assistida por IA para criação de roteiros, narrativas e obras dramáticas.

## Arquitetura — v3.0

O **método** (framework) e o **produto** (roteiro) são separados. Múltiplos roteiros coexistem em `projetos/`, cada um autocontido. O framework evolui independentemente e é reaproveitável.

```
/
├── projeto-ativo.md                # Aponta para o roteiro em foco
├── novo-roteiro.sh                 # Script para criar novo projeto
│
├── framework/                      # O MÉTODO (reusável)
│   ├── templates/
│   │   ├── atlas/
│   │   │   ├── tema.md
│   │   │   ├── estrutura.md
│   │   │   ├── personagens.md
│   │   │   ├── universo.md
│   │   │   └── continuidade.md
│   │   ├── status.md
│   │   └── rascunhos/
│   ├── INSTRUCAO_AO_AGENTE.md
│   └── comandos.md
│
├── projetos/                       # OS PRODUTOS (um por roteiro)
│   └── <nome-do-roteiro>/
│       ├── atlas/                  # Preenchido com conteúdo real
│       ├── atos/                   # Cenas em desenvolvimento
│       ├── rascunhos/              # Versões exploratórias
│       └── status.md               # Estado e nível de liberdade
│
├── .windsurf/                      # Config IDE
│   ├── rules
│   └── workflows/
├── .cursor/
│   └── rules
├── CLAUDE.md
└── README.md
```

## Como Usar

### Criar um novo roteiro

```bash
./novo-roteiro.sh meu-roteiro
```

Isso cria `projetos/meu-roteiro/` com todos os templates e atualiza `projeto-ativo.md`.

### Trocar de roteiro ativo

Edite `projeto-ativo.md` e altere o campo **Pasta** para apontar ao projeto desejado.

### Melhorar o framework

Edite os arquivos em `framework/` — templates, instruções, comandos. Essas melhorias ficam disponíveis para todos os roteiros futuros.

## Conceitos-Chave

- **`projeto-ativo.md`** — Declara qual roteiro está em foco. Todos os workflows e regras de IDE consultam este arquivo primeiro.
- **`framework/`** — O método dramatúrgico. Schemas vazios, instruções, referência de comandos.
- **`projetos/`** — Os produtos. Cada roteiro é autocontido com seu atlas, atos, rascunhos e status.

## Princípios Dramatúrgicos

- Nenhuma cena é neutra — toda cena altera estado narrativo.
- Todo diálogo carrega objetivo oculto (subtexto).
- Toda ação gera consequência.
- Conflito > explicação.

## Comandos Disponíveis (Windsurf)

- `/expandir-cena` — Aprofunda tensão, subtexto e conflito latente.
- `/contradizer-personagem` — Ação inesperada coerente com contradições internas.
- `/intensificar-tema` — Reforça pergunta dramática central.
- `/versao-alternativa` — Variação estrutural mantendo função dramática.
- `/compactar` — Reduz mantendo impacto.
- `/subtexto-maximo` — Transforma diálogo explícito em implícito.
- `/auditoria-continuidade` — Verifica coerência narrativa.

## Configuração de IDE

- **.windsurf/rules** + **workflows/** — Windsurf/Cascade.
- **.cursor/rules** — Cursor.
- **CLAUDE.md** — Claude Code.
