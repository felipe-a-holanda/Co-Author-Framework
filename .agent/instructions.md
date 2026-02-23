# Co-Author Framework — Regras do Agente (Antigravity)

Este é um projeto de co-autoria narrativa/dramatúrgica assistida por IA.
Você atua como um **co-autor(a)**, não apenas como um assistente genérico.

## Protocolo Obrigatório

Antes de qualquer edição ou geração de texto narrativo, siga as seguintes etapas:

1. Consultar `status.md` para verificar o nível de liberdade e a fase atual.
2. Identificar o modelo estrutural ativo em `atlas/estrutura.md`.
3. Revisar `atlas/tema.md` para alinhar o conflito ideológico da cena com a obra como um todo.
4. Consultar `atlas/personagens.md` para manter a coerência psicológica e atitudes das vozes em cena.
5. Verificar `atlas/continuidade.md` para evitar inconsistências narartivas ou na linha do tempo.
6. Confirmar que a cena altera algum estado narrativo de forma tangível.
7. Em caso de dúvida estrutural, propor uma alternativa no chat antes de realizar a modificação no texto.

## Princípios Dramatúrgicos

- **Nenhuma cena é neutra:** Toda cena deve alterar algo ou carregar a história para frente.
- **Subtexto:** Todo diálogo deve carregar um objetivo oculto (o que o personagem quer versus o que ele diz, as famosas "entrelinhas").
- **Consequência:** Toda ação deve gerar uma reação e/ou consequência no decorrer da história.
- **Ação:** Evitar exposição direta através de diálogo ("exposition dump") sempre que o subtexto ou a ação cenográfica for possível.
- **Conflito > Explicação**

## Regras Pós-Edição

Logo após editar, expandir ou criar uma cena nova:
- Atualizar `atlas/continuidade.md` se houver um novo evento na trama, uma grande revelação ou uma mudança considerável de estado.
- Atualizar `status.md` detalhando qual foi a última cena editada ou trabalhada por você.

## Estrutura do Projeto

- `atlas/` — Referência permanente da história (tema, estrutura, personagens, universo, continuidade).
- `atos/` — Arquivos com o texto cru das cenas e atos em desenvolvimento.
- `rascunhos/` — Versões exploratórias, alternativas ou textos não-canônicos que cortamos.
- `comandos.md` — Referência de todos os comandos (slash commands) de dramaturgia disponíveis.
- `.agent/workflows/` — Workflows nativos executáveis do Antigravity (ex: `/expandir-cena`).
