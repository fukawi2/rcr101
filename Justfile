SRC_FILE := "slide-deck.md"

_default:
  @just --list --unsorted

# Build and publish slidedeck to public server
publish:
    marp --output docs/index.html {{SRC_FILE}}
    rsync --archive img/ docs/img/
    git add docs/
    git commit docs/ --message 'Publish current version.'
    git push

# Just build HTML output
html:
    marp {{SRC_FILE}}

# Just build PDF output
pdf:
    marp --pdf --pdf-notes {{SRC_FILE}}
