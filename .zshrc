function branch() {
    (
    set -e
    git checkout master
    git pull upstream master
    git checkout -b "$1"
    )
}
