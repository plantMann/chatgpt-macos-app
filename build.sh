#!/bin/bash
# Erstellt eine macOS-App für ChatGPT mit Nativefier

# Prüfschritt: Ist nativefier installiert?
if ! command -v nativefier &> /dev/null
then
    echo "Nativefier nicht gefunden! Installiere mit: sudo npm install -g nativefier"
    exit 1
fi

APP_NAME="ChatGPT"
ICON_PATH="chatgpt.icns"

# Prüfschritt: Ist das Icon vorhanden?
if [ ! -f "$ICON_PATH" ]; then
    echo "Warnung: Icon-Datei ($ICON_PATH) nicht gefunden. Die App wird ohne eigenes Icon gebaut!"
    sleep 1
fi

# App bauen
nativefier "https://chat.openai.com" \
  --name "ChatGPT" \
  --icon "chatgpt.icns" \
  --darwin-dark-mode \
  --user-agent "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36" \
  --overwrite
echo ""
echo "✅ Fertig! Du findest die App im Ordner: ${APP_NAME}-darwin-*"
echo "Ziehe die .app am besten ins Programme-Verzeichnis."
