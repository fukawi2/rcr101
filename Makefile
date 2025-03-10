SRC_FILE = slide-deck.md

publish: $(SRC_FILE)
	marp -o docs/index.html $(SRC_FILE)
	rsync -a img/ docs/img/
	git add docs/
	git commit docs/ -m 'Publish current version.'
	git push

html: $(SRC_FILE)
	marp $(SRC_FILE)

pdf: $(SRC_FILE)
	marp --pdf --pdf-notes $(SRC_FILE)
