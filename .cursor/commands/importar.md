# /importar

Importa um roteiro existente para a estrutura do framework, populando o atlas e separando as cenas.

## Parâmetros esperados
- `<arquivo>` — caminho para o documento do roteiro (`.md`, `.txt`, `.fountain`, `.pdf`, etc.)
- `<nome-do-projeto>` — nome da pasta que será criada em `projetos/`

## Passos

### 1. Validação inicial
- Verificar se `<arquivo>` existe e pode ser lido.
- Verificar se `projetos/<nome-do-projeto>/` já existe. Se existir, alertar o usuário e perguntar se deseja sobrescrever.

### 2. Criar estrutura de pastas
Criar a seguinte hierarquia (copiando os templates de `framework/templates/`):
```
projetos/<nome>/
  atlas/
    tema.md
    estrutura.md
    personagens.md
    universo.md
    continuidade.md
  atos/
  rascunhos/
    README.md
  status.md
```

### 3. Ler o documento completo
- Ler o arquivo fornecido na íntegra.
- Identificar o formato (roteiro formatado, prosa, outline, etc.) e adaptar a leitura conforme necessário.

### 4. Análise dramatúrgica — extrair e popular o atlas

Executar a análise abaixo e preencher cada arquivo. Marcar campos incertos com `[inferido — revisar]`.

#### 4a. `atlas/tema.md`
Identificar:
- **Pergunta dramática central** — o conflito moral, existencial ou político que a obra levanta
- **Tese do protagonista** — o que ele acredita no início
- **Antítese** — a visão rival (antagonista, sistema, circunstância)
- **Síntese esperada** — que transformação filosófica o arco sugere
- **Tensões secundárias** — conflitos menores mas recorrentes
- **O que NÃO queremos dizer** — riscos de leitura simplista a evitar

#### 4b. `atlas/personagens.md`
Para cada personagem com presença significativa, identificar:
- Arquétipo narrativo
- Objetivo externo (o que quer concretamente)
- Necessidade interna (o que precisa aprender)
- Crença limitante
- Ferida original (se indicada ou inferível)
- Máscara social
- Momento de ruptura (se houver no texto)
- Contradições essenciais
- Dinâmica de poder nas relações

#### 4c. `atlas/estrutura.md`
- Identificar o modelo estrutural usado (3 atos, 5 atos, episódico, etc.)
- Mapear cada ato/bloco com função global
- Para cada cena/sequência identificada, preencher:
  - Função dramática
  - Conflito primário e secundário
  - Mudança de estado
  - Informação revelada
  - Relação com o tema
  - Personagens envolvidos

#### 4d. `atlas/universo.md`
- Ambientação (época, lugar, contexto social)
- Regras do mundo (limites do possível)
- Grau de realismo
- Forças invisíveis que governam o mundo
- Atmosfera e tom
- Referências estéticas (se mencionadas ou inferíveis)

#### 4e. `atlas/continuidade.md`
- Montar linha do tempo com os eventos na ordem cronológica
- Listar eventos irreversíveis
- Mapear segredos e revelações (quem sabe o quê e quando)
- Identificar objetos dramáticos recorrentes
- Listar subtramas em aberto

### 5. Separar cenas em `atos/`
- Identificar as divisões de cena/sequência no documento original.
- Criar um arquivo por cena em `atos/`, com nomenclatura:
  ```
  ato1-cena01.md
  ato1-cena02.md
  ato2-cena01.md
  ...
  ```
- Manter o texto original da cena dentro do arquivo.
- Adicionar cabeçalho com metadados:
  ```markdown
  # Cena X — [Título ou função breve]
  **Personagens:** [[personagens#Nome]], ...
  **Localização:** ...
  **Mudança de estado:** [referência a [[continuidade]]]
  ```

### 6. Criar `status.md`
Preencher com:
- Nome do projeto
- Data de importação
- Fase atual: `Importado — aguardando revisão do atlas`
- Nível de autonomia: `Modo Colaborativo`
- Última cena editada: última cena do documento
- Observações: quais campos do atlas ficaram marcados como `[inferido — revisar]`

### 7. Atualizar `projeto-ativo.md`
- Alterar o campo `Pasta` para `projetos/<nome-do-projeto>`

### 8. Relatório de importação
Apresentar ao usuário um resumo:
- Quantas cenas foram identificadas e separadas
- Quantos personagens foram mapeados
- Quais campos do atlas ficaram como `[inferido — revisar]` (lista explícita)
- Sugestões de próximos passos (ex: "Revisar tema.md antes de continuar")

## Notas
- Usar wikilinks do Obsidian em todos os arquivos gerados (`[[personagens#Nome]]`, `[[tema]]`, etc.)
- O documento original **não é apagado** — fica disponível em `rascunhos/` se o usuário quiser
- Em caso de dúvida estrutural durante a análise, registrar a dúvida no relatório final em vez de interromper o processo
- O atlas gerado é um **ponto de partida**, não uma análise definitiva — a revisão humana é esperada
