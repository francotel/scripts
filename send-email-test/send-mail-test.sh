#!/bin/bash

# Subject
SUBJECT="Send email test"

# From
FROM="test@servidor.com"

# To
TOEMAIL="digitvperu@gmail.com"

# Message
EMAILMESSAGE="message.txt"

echo "This is email text" >> $EMAILMESSAGE

# Sending email using /bin/mail
mail -a "From: $FROM" -s "$SUBJECT" "$TOEMAIL" << EOF
HELLO WORLD
TEST MESSAGE
EOF
