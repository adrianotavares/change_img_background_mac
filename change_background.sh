#!/bin/bash

#!/bin/bash

# Caminho do diretório onde os arquivos de imagem estão localizados
IMAGE_DIR="/Users/<user>/dev/shell/"
IMAGE_PREFIX="img_"
IMAGE_SUFFIX=".png"
IMAGE_COUNT=5

# Caminho do arquivo de contador
COUNTER_FILE="/Users/<user>/dev/shell/image_counter.txt"

# Verificar se o arquivo de contador existe, caso contrário, criar e inicializar com 1
if [ ! -f "$COUNTER_FILE" ]; then
    echo 1 > "$COUNTER_FILE"
fi

# Ler o valor atual do contador
COUNTER=$(cat "$COUNTER_FILE")

# Calcular o próximo valor do contador
NEXT_COUNTER=$((COUNTER + 1))
if [ "$NEXT_COUNTER" -gt "$IMAGE_COUNT" ]; then
    NEXT_COUNTER=1
fi

# Atualizar o arquivo de contador com o próximo valor
echo "$NEXT_COUNTER" > "$COUNTER_FILE"

# Construir o nome do arquivo de imagem atual
CURRENT_IMAGE="${IMAGE_DIR}${IMAGE_PREFIX}$(printf "%02d" $COUNTER)${IMAGE_SUFFIX}"

# Caminho do diretório onde os arquivos estão localizados
DIRECTORY="/Library/Desktop Pictures"

# Caminho do mais novo arquivo
NEWEST_FILE=$(ls -t "$DIRECTORY"/*.png | head -n 1)

# Imprimir o arquivo mais recente encontrado
echo "newest: $NEWEST_FILE img: $CURRENT_IMAGE"

# Copiar e renomear o arquivo
cp "$CURRENT_IMAGE" "$NEWEST_FILE" 