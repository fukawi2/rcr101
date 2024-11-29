SRC_FILE = slide-deck.md

html: $(SRC_FILE)
	marp $(SRC_FILE)

pdf: $(SRC_FILE)
	marp --pdf --pdf-notes $(SRC_FILE)
