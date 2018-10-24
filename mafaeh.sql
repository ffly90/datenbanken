CREATE TABLE mafaeh (
	pnr INTEGER NOT NULL,
	faehnr INTEGER NOT NULL,
	fgradp VARCHAR(1) NOT NULL,
	PRIMARY KEY (pnr, faehnr),
	FOREIGN KEY (pnr) REFERENCES mitarbeiter,
	FOREIGN KEY (faehnr) REFERENCES fähigkeit
)
	
