# ~/.config/fish/config.fish
alias pl='git pull upstream master --rebase --autostash'

function cb -d "git: Create a new updated branch from master"
  git checkout master
  pl 
  git checkout -b "$argv"
  echo -n \a ## Lekker man!
end

function cbs -d "git: Create a new updated branch from master and keep your changes"
  git stash
  git checkout master
  pl 
  git checkout -b "$argv"
  git stash pop  
  echo -n \a ## Lekker man!
end

function clean_branches -d "git: Clean all your branches not merged to master"
  git branch | grep -v '^*' | xargs git branch -d
end
