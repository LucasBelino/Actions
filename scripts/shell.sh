cd Actions
ls
echo "Envio de e-mail"
pwd
sudo apt-get install mailutils
echo "Mandando e-mail com mail do linux" | mail -s "Notificação Pipeline" "$RECIPIENT_EMAIL"