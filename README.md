# ChatGPT macOS Standalone-App

Erstellt eine native ChatGPT-App für macOS mit Login, Model-Auswahl, Darkmode usw.  
Umgesetzt mit [Nativefier](https://github.com/nativefier/nativefier).

## Voraussetzungen

- macOS (getestet auf Sonoma)
- [Node.js & npm](https://nodejs.org/)
- Nativefier (`sudo npm install -g nativefier`)

## Anleitung

1. Repository clonen oder Ordner anlegen
2. Icon `chatgpt.icns` ins Verzeichnis legen  
   > Als PNG z.B. von [icons8](https://icons8.com/icon/AZOZNnY73haj/chatgpt) laden,  
   > online konvertieren ([cloudconvert.com/png-to-icns](https://cloudconvert.com/png-to-icns))
3. App bauen:
   ```sh
   ./build.sh
   ```
4. Die fertige App findest du im Ordner `ChatGPT-darwin-*`.

## Anpassungen

- **App-Name:** In `build.sh` ändern (`APP_NAME`)
- **Icon:** Eigene `.icns`-Datei als `chatgpt.icns` ablegen

## Lizenz

MIT
