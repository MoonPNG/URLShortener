#!/bin/bash

INSTALL_DIR="$HOME/.urlshortener"
mkdir -p "$INSTALL_DIR"

cat << 'EOF' > "$INSTALL_DIR/urlshortener.sh"
#!/bin/bash

echo "Enter the URL to shorten:"
read URL

echo "Enter the custom name:"
read CUSTOM_NAME

SHORTENED_URL=$(curl -s "https://ulvis.net/api.php?url=$URL&custom=$CUSTOM_NAME&private=1")

echo "Shortened URL: $SHORTENED_URL"
EOF

chmod +x "$INSTALL_DIR/urlshortener.sh"
ln -sf "$INSTALL_DIR/urlshortener.sh" /usr/local/bin/urlshortener

echo "Installation complete! You can now run 'urlshortener' from anywhere."
