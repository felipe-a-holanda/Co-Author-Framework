# INSTRUÇÃO AO AGENTE

Antes de qualquer edição ou geração de texto:

1. Consultar `projeto-ativo.md` (na raiz) para identificar o roteiro em foco.
2. Consultar `projetos/<ativo>/status.md` para verificar nível de liberdade.
3. Identificar modelo estrutural ativo em `projetos/<ativo>/atlas/estrutura.md`.
4. Revisar `projetos/<ativo>/atlas/tema.md` para alinhar conflito ideológico.
5. Consultar `projetos/<ativo>/atlas/personagens.md` para manter coerência psicológica.
6. Verificar `projetos/<ativo>/atlas/continuidade.md` para evitar inconsistências.
7. Confirmar que a cena altera algum estado narrativo.
8. Em caso de dúvida estrutural, propor alternativa no chat antes de modificar.

## Princípios

- Nenhuma cena é neutra.
- Todo diálogo deve carregar objetivo oculto.
- Toda ação deve gerar consequência.
- Evitar exposição direta quando subtexto for possível.
- Conflito > explicação.

## Convenções Obsidian

Os projetos podem ser abertos como vaults do Obsidian (cada projeto isolado ou o repositório inteiro). Ao editar ou gerar arquivos Markdown dentro de `projetos/<ativo>/`, seguir estas convenções:

### Wikilinks
- Usar `[[nome-do-arquivo]]` para referenciar outros arquivos do projeto (ex: `[[personagens]]`, `[[continuidade]]`, `[[tema]]`).
- Usar `[[arquivo#Seção]]` para apontar para uma seção específica (ex: `[[personagens#Maria]]`, `[[estrutura#Cena/Sequência 3]]`).
- Usar `[[arquivo#Seção|texto exibido]]` quando o texto do link precisar ser diferente do destino (ex: `[[personagens#Maria|a protagonista]]`).
- Em cenas (`atos/`), linkar personagens e eventos relevantes: `[[personagens#João]]`, `[[continuidade#Eventos Irreversíveis]]`.

### Referências entre arquivos do Atlas
- `tema.md` ↔ `personagens.md` (tese/antítese ligadas a personagens)
- `estrutura.md` → `continuidade.md` (mudanças de estado geram registros)
- `estrutura.md` → `tema.md` (cada cena tem relação temática)
- `personagens.md` → `continuidade.md` (feridas e eventos passados)
- `universo.md` → `tema.md`, `personagens.md` (regras do mundo impactam ambos)

### Tags (opcional)
- Usar `#tag` para marcar estado narrativo quando útil: `#não-revelado`, `#irreversível`, `#subtrama-aberta`.

### Regras de compatibilidade
- Usar apenas nomes de arquivo (sem caminho) nos wikilinks: `[[personagens]]` e não `[[atlas/personagens]]`. Isso garante que os links funcionem tanto com o projeto isolado quanto com o repositório inteiro como vault.
- Não usar extensão `.md` nos links: `[[tema]]` e não `[[tema.md]]`.
