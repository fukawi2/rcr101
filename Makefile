SRC_FILE = slide-deck.md

publish: $(SRC_FILE)
	marp -o output/index.html $(SRC_FILE)

html: $(SRC_FILE)
	marp $(SRC_FILE)

pdf: $(SRC_FILE)
	marp --pdf --pdf-notes $(SRC_FILE)
