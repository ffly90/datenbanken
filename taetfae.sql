CREATE TABLE taetfae (
	taetnr INTEGER NOT NULL,
	faehnr INTEGER NOT NULL,
	fgradt VARCHAR(30),
	PRIMARY KEY (taetnr, faehnr),
	FOREIGN KEY (taetnr) REFERENCES tätigkeit,
	FOREIGN KEY (faehnr) REFERENCES fähigkeit
)
	
