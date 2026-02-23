# Co-Author-Framework

Framework de co-autoria assistida por IA para criação de roteiros, narrativas e obras dramáticas.

## O que este framework faz

Este repositório é um **sistema de trabalho** para escrever com IA de forma controlada.
Em vez de tratar o roteiro como um único arquivo “solto”, ele força um ciclo consistente:

- **Atlas como fonte de verdade**: tema, estrutura, personagens, universo e continuidade.
- **Cenas como unidades de mudança**: cada cena deve alterar estado narrativo.
- **Comandos dramatúrgicos operacionais**: workflows que reescrevem/expandem/comprimem cenas mantendo coerência.
- **Ritual de consistência**: antes e depois de editar, checar e atualizar os arquivos certos.

O resultado esperado é:

- **Menos “alucinação estrutural”** (a IA inventa fatos que quebram continuidade).
- **Mais consistência de voz e psicologia** (personagens com contradições sustentadas).
- **Reescrita orientada por função dramática** (não apenas “melhorar o texto”).

## Como funciona (em 60 segundos)

1. Você escolhe qual roteiro está ativo em `projeto-ativo.md`.
2. Você preenche o `atlas/` do roteiro ativo.
3. Você escreve cenas em `atos/`.
4. Você usa comandos (ex.: `/expandir-cena`, `/subtexto-maximo`) para reescrever cenas com objetivo dramatúrgico.
5. Você mantém `continuidade.md` e `status.md` atualizados, para a IA nunca perder o estado do projeto.

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

## Como Usar (Quickstart)

### 1) Criar um novo roteiro

```bash
./novo-roteiro.sh meu-roteiro
```

Isso cria `projetos/meu-roteiro/` com todos os templates e atualiza `projeto-ativo.md`.

### 2) Preencher o Atlas (primeira passada)

No seu projeto (`projetos/meu-roteiro/atlas/`), comece por:

- `tema.md`
- `estrutura.md`
- `personagens.md`

Depois complemente:

- `universo.md`
- `continuidade.md`

### 3) Criar a primeira cena

Crie um arquivo em `projetos/meu-roteiro/atos/` e escreva a cena.

Sugestão de convenção:

- `projetos/meu-roteiro/atos/ato-01-cena-01.md`

### 4) Usar um comando dramatúrgico

Exemplos:

- Use `/expandir-cena` para aumentar tensão e conflito latente.
- Use `/subtexto-maximo` para transformar diálogo explícito em implícito.

### 5) Manter o estado atualizado

Após reescritas importantes:

- Atualize `projetos/meu-roteiro/atlas/continuidade.md`.
- Atualize `projetos/meu-roteiro/status.md`.

### Trocar de roteiro ativo

Edite `projeto-ativo.md` e altere o campo **Pasta** para apontar ao projeto desejado.

### Melhorar o framework

Edite os arquivos em `framework/` (templates, instruções e comandos). Essas melhorias ficam disponíveis para todos os roteiros futuros.

## Conceitos-Chave

- **`projeto-ativo.md`** — Declara qual roteiro está em foco. Todos os workflows e regras de IDE consultam este arquivo primeiro.
- **`framework/`** — O método dramatúrgico. Schemas vazios, instruções, referência de comandos.
- **`projetos/`** — Os produtos. Cada roteiro é autocontido com seu atlas, atos, rascunhos e status.

## Fluxo de trabalho recomendado

1. Defina o **tema** (pergunta dramática, tese vs. antítese).
2. Esboce a **estrutura** (função dramática + mudança de estado por cena).
3. Trave os **personagens** (objetivo externo, necessidade interna, contradições).
4. Escreva cenas em `atos/`.
5. A cada cena concluída, atualize **continuidade** e **status**.
6. Use comandos para reescrita direcionada (subtexto, compressão, alternativa estrutural).

## Convenções (sugestões)

Você pode manter `atos/` plano ou hierárquico. Se quiser hierarquia:

- `projetos/<roteiro>/atos/ato-01/`
- `projetos/<roteiro>/atos/ato-02/`

O importante é:

- As cenas existirem como arquivos, para a IA operar com precisão.
- `continuidade.md` registrar eventos irreversíveis, segredos e objetos dramáticos.

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

## FAQ (problemas comuns)

### A IA está lendo o roteiro errado

Verifique `projeto-ativo.md` e confirme que o campo **Pasta** aponta para o projeto correto em `projetos/<nome>`.

### A IA “esqueceu” eventos, segredos ou objetos

Revise e atualize `projetos/<roteiro>/atlas/continuidade.md`. Esse arquivo é o mecanismo principal para travar o estado do mundo.

### A IA está reescrevendo sem respeitar o nível de liberdade

Abra `projetos/<roteiro>/status.md` e confira o modo marcado (Restrito/Colaborativo/Autônomo).
