# Co-Author-Framework

Arquitetura modular para escrita dramática assistida por IA, projetada para manter coerência estrutural, profundidade psicológica e integridade temática ao longo de projetos longos.

## O que este framework faz

Este repositório é um **sistema de trabalho** para escrever com IA de forma controlada.
Em vez de tratar o roteiro como um único arquivo "solto", ele força um ciclo consistente:

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

O processo é cíclico: **estruturar → escrever → auditar → atualizar estado → reescrever**.

## Por que não escrever direto com IA?

LLMs tendem a:

- Repetir padrões genéricos.
- Perder continuidade em projetos longos.
- Reescrever estrutura sem intenção.

O Co-Author Framework existe para introduzir:

- **Estado explícito** — o mundo narrativo é travado em arquivos versionáveis.
- **Função dramática consciente** — cada cena tem papel estrutural declarado.
- **Governança de edição** — o nível de liberdade do agente é configurável.

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
│       ├── .obsidian/              # Config Obsidian (vault do projeto)
│       ├── atlas/                  # Preenchido com conteúdo real
│       ├── atos/                   # Cenas em desenvolvimento
│       ├── rascunhos/              # Versões exploratórias
│       └── status.md               # Estado e nível de liberdade
│
├── .obsidian/                      # Config Obsidian (vault raiz)
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

## Uso com Obsidian

Cada projeto e o repositório inteiro podem ser abertos como **vaults do Obsidian**.

### Dois modos de uso

- **Vault por projeto** — Abra `projetos/<nome>/` como vault. Ideal para foco em um roteiro.
- **Vault raiz** — Abra a raiz do repositório como vault. Ideal para visão global e navegação entre projetos.

Ambos os modos são compatíveis simultaneamente. Os `[[wikilinks]]` usam apenas nome de arquivo (sem caminho), e o Obsidian resolve pelo caminho mais curto.

### Convenções de wikilinks

| Sintaxe | Uso |
|---|---|
| `[[personagens]]` | Link para o arquivo inteiro |
| `[[personagens#Maria]]` | Link para seção específica |
| `[[personagens#Maria\|a protagonista]]` | Link com texto de exibição |

Os templates do atlas já vêm com wikilinks entre si. Ao escrever cenas em `atos/`, use links para personagens e eventos:

```markdown
[[personagens#João]] entra na sala. O [[continuidade#Objetos Dramáticos|revólver]] está sobre a mesa.
```

### Tags (opcional)

Use tags para marcar estado narrativo: `#não-revelado`, `#irreversível`, `#subtrama-aberta`.

### Configuração automática

O script `novo-roteiro.sh` já cria `.obsidian/app.json` em cada projeto com:
- Wikilinks ativados (não Markdown links)
- Formato de link mais curto (compatível com ambos os modos de vault)

Para o vault raiz, `.obsidian/app.json` já existe na raiz do repositório com a mesma config.

### Graph View

No Obsidian, use **Graph View** para visualizar as conexões entre atlas, cenas e personagens. Quanto mais wikilinks nos seus arquivos, mais útil será o grafo.

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

Abra `projetos/<roteiro>/status.md`. Esse arquivo controla duas dimensões independentes:

- **Fase** — estágio do projeto (ex.: Inicialização, Estruturação, Polimento).
- **Nível de Liberdade** — quanto o agente pode intervir (Restrito / Colaborativo / Autônomo).

Confira se ambos estão configurados corretamente para o momento atual do roteiro.

### Os wikilinks não funcionam no Obsidian

Verifique se você abriu a pasta correta como vault:
- Para um projeto: `projetos/<nome>/`
- Para visão global: a raiz do repositório

Confirme que em **Settings > Files & Links**:
- "Use [[Wikilinks]]" está ativado
- "New link format" está em "Shortest path when possible"
