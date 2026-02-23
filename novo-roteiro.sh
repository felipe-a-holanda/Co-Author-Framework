#!/bin/bash
# Cria um novo projeto de roteiro a partir dos templates do framework.
# Uso: ./novo-roteiro.sh <nome-do-roteiro>

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TEMPLATES_DIR="$SCRIPT_DIR/framework/templates"
PROJETOS_DIR="$SCRIPT_DIR/projetos"

if [ -z "$1" ]; then
    echo "Uso: ./novo-roteiro.sh <nome-do-roteiro>"
    echo "Exemplo: ./novo-roteiro.sh meu-filme"
    exit 1
fi

NOME="$1"
DESTINO="$PROJETOS_DIR/$NOME"

if [ -d "$DESTINO" ]; then
    echo "Erro: O projeto '$NOME' já existe em $DESTINO"
    exit 1
fi

echo "Criando projeto '$NOME'..."

mkdir -p "$DESTINO/atlas" "$DESTINO/atos" "$DESTINO/rascunhos"

cp "$TEMPLATES_DIR/atlas/tema.md" "$DESTINO/atlas/"
cp "$TEMPLATES_DIR/atlas/estrutura.md" "$DESTINO/atlas/"
cp "$TEMPLATES_DIR/atlas/personagens.md" "$DESTINO/atlas/"
cp "$TEMPLATES_DIR/atlas/universo.md" "$DESTINO/atlas/"
cp "$TEMPLATES_DIR/atlas/continuidade.md" "$DESTINO/atlas/"
cp "$TEMPLATES_DIR/status.md" "$DESTINO/"
cp "$TEMPLATES_DIR/rascunhos/README.md" "$DESTINO/rascunhos/"

# Atualiza projeto-ativo.md
cat > "$SCRIPT_DIR/projeto-ativo.md" << EOF
# Projeto Ativo

## Roteiro em Foco
**Pasta:** projetos/$NOME

## Instruções
- Altere o campo "Pasta" acima para apontar para o roteiro em que está trabalhando.
- Todos os comandos e protocolos do framework usarão os arquivos dentro dessa pasta.
- Para criar um novo roteiro, copie \`framework/templates/\` para \`projetos/<nome>/\`.
EOF

echo "Projeto criado em: $DESTINO"
echo "projeto-ativo.md atualizado para: projetos/$NOME"
echo ""
echo "Próximos passos:"
echo "  1. Preencha projetos/$NOME/atlas/tema.md com a pergunta dramática central."
echo "  2. Esboce a estrutura em projetos/$NOME/atlas/estrutura.md."
echo "  3. Crie fichas de personagens em projetos/$NOME/atlas/personagens.md."
