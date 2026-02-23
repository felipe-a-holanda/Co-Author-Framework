# Co-Author-Framework

## Estrutura do Projeto — v2.0

```
/
    README.md
    status.md
    comandos.md
    INSTRUCAO_AO_AGENTE.md
    .gitignore
    .windsurf/
        rules
        workflows/
            expandir-cena.md
            contradizer-personagem.md
            intensificar-tema.md
            versao-alternativa.md
            compactar.md
            subtexto-maximo.md
            auditoria-continuidade.md
    .cursor/
        rules
    atlas/
        tema.md
        estrutura.md
        personagens.md
        universo.md
        continuidade.md
    atos/
    rascunhos/
        README.md
```

## Descrição

Framework de co-autoria assistida por IA para criação de roteiros, narrativas e obras dramáticas.

### Pastas

- **atlas/** — Referência permanente: tema, estrutura, personagens, universo e continuidade.
- **atos/** — Textos dos atos/cenas em desenvolvimento.
- **rascunhos/** — Versões exploratórias e variações.

### Arquivos Raiz

- **status.md** — Estado atual do projeto e nível de liberdade do agente.
- **comandos.md** — Referência dos comandos de dramaturgia.
- **INSTRUCAO_AO_AGENTE.md** — Protocolo operacional (documentação humana).

### Configuração de IDE

- **.windsurf/rules** — Regras automáticas para Windsurf/Cascade.
- **.windsurf/workflows/** — Comandos executáveis via `/slash-command` no Windsurf.
- **.cursor/rules** — Regras automáticas para Cursor.
