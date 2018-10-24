CREATE TABLE stellfae (
	taetnr INTEGER NOT NULL,
	faehnr INTEGER NOT NULL,
	fgrads VARCHAR(30),
	PRIMARY KEY (taetnr, faehnr),
	FOREIGN KEY (taetnr) REFERENCES tätigkeit
)
	
