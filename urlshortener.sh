#!/bin/bash

echo "Enter the URL to shorten:"
read URL

echo "Enter the custom name:"
read CUSTOM_NAME

SHORTENED_URL=$(curl -s "https://ulvis.net/api.php?url=$URL&custom=$CUSTOM_NAME&private=1")

echo "Shortened URL: $SHORTENED_URL"
