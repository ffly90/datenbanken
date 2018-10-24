CREATE TABLE stellfae (
	stnr VARCHAR(5) NOT NULL,
	faehnr INTEGER NOT NULL,
	fgrads VARCHAR(1) NOT NULL,
	PRIMARY KEY (stnr, faehnr),
	FOREIGN KEY (stnr) REFERENCES stelle,
	FOREIGN KEY (faehnr) REFERENCES fähigkeit
)
	
