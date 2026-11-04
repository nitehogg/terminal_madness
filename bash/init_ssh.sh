eval "$(ssh-agent -s)"

for PUBLIC_KEY_PATH in ~/.ssh/*.pub
do
  PRIVATE_KEY_PATH="$(echo "$PUBLIC_KEY_PATH" | sed 's/\.pub$//g')"
  ssh-add "$PRIVATE_KEY_PATH"
done
