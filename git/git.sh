# Copy is default vs config
if [ $1 === "--config" ]; then
  cp .gitconfig ~/
else
  cp ~/.gitconfig .
  git add .;
  git commit -m 'Updating the git commit';
fi
