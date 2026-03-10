# /rascunho

Cria um rascunho de cena a partir de um prompt, lendo todo o atlas para garantir coerência dramatúrgica.

## Parâmetro esperado
- `<descrição>` — prompt livre descrevendo a cena: personagens, localização, conflito central, função dramática desejada, posição no roteiro, ou qualquer combinação dessas informações.

## Passos

1. Ler `projeto-ativo.md` para identificar o roteiro ativo (`{projeto}`).
2. Ler `{projeto}/status.md` para verificar o nível de autonomia e a última cena editada.
3. Ler todo o atlas para construir o contexto completo:
   - `{projeto}/atlas/tema.md` — pergunta dramática central, tese/antítese, tensões secundárias
   - `{projeto}/atlas/personagens.md` — objetivos, contradições, feridas e máscaras de cada personagem relevante
   - `{projeto}/atlas/estrutura.md` — modelo estrutural, função de cada ato/bloco, onde a nova cena se encaixa
   - `{projeto}/atlas/universo.md` — ambientação, tom, regras do mundo
   - `{projeto}/atlas/continuidade.md` — eventos irreversíveis, segredos, estado atual das subtramas
4. A partir do `<descrição>` fornecido pelo usuário, determinar:
   - Quais personagens estarão presentes
   - Qual é o conflito primário e o secundário
   - Qual mudança de estado a cena deve produzir
   - Onde ela se posiciona na estrutura (ato, bloco, entre quais cenas)
   - Qual nomenclatura de arquivo usar (ex: `ato2-cena03.md`)
5. Escrever o rascunho aplicando os princípios dramatúrgicos do framework:
   - Nenhum momento neutro — cada beat avança ou complica algo
   - Subtexto nos diálogos — o que o personagem quer vs. o que diz
   - Conflito latente baseado nas contradições dos personagens
   - Coerência com o estado atual da narrativa
   - Tom e ambientação do universo
6. Salvar o rascunho em `{projeto}/rascunhos/<nome-do-arquivo>.md` com cabeçalho de metadados:
   ```markdown
   # Cena — [Título ou função breve]
   **Status:** rascunho
   **Personagens:** [[personagens#Nome]], ...
   **Localização:** ...
   **Mudança de estado:** ...
   **Posição sugerida:** [entre cena X e cena Y / no ato Z]
   ```
7. Apresentar o rascunho ao usuário com uma nota das escolhas dramatúrgicas feitas e perguntar se aprova ou quer ajustes.
8. Se aprovado, perguntar se deseja promover o arquivo para `{projeto}/atos/` e atualizar `{projeto}/atlas/continuidade.md`.

## Notas
- O rascunho vai para `rascunhos/` — não para `atos/`. Só promover para `atos/` com aprovação explícita do usuário.
- Usar wikilinks do Obsidian nas referências: `[[personagens#Nome]]`, `[[continuidade]]`, `[[tema]]`.
- Se a posição na estrutura for ambígua, propor duas opções antes de escrever.
- Campos incertos ou inferidos devem ser sinalizados com `[inferido — revisar]`.
