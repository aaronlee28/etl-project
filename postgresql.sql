CREATE TABLE weather_data_by_date (
    IDX int NOT NULL,
	EventId varchar(255) PRIMARY KEY NOT NULL,
	Type varchar(255),
	Severity varchar(255),
	TimeZone varchar(255),
	AirportCode varchar(255),
	City varchar(255) NOT NULL,
	State varchar(255) NOT NULL,
	date varchar(255) NOT NULL
);

CREATE TABLE accident_data_by_date (
    IDX int NOT NULL,
	ID varchar(255) PRIMARY KEY NOT NULL,
	Accident_Severity varchar(255),
	Description varchar(7500),
	City varchar(255) NOT NULL,
	State varchar(255) NOT NULL,
	date varchar(255) NOT NULL
);

CREATE TABLE combined_data_by_date (
    IDX int NOT NULL,
	EventId varchar(255) NOT NULL,
	Type varchar(255),
	Severity varchar(255),
	TimeZone varchar(255),
	AirportCode varchar(255),
	City varchar(255) NOT NULL,
	State varchar(255) NOT NULL,
	date varchar(255) NOT NULL,
	ID varchar(255) NOT NULL,
	Accident_Severity varchar(255),
	Description varchar(7500),
		PRIMARY KEY (EventId, ID),
		FOREIGN KEY (EventId) REFERENCES weather_data_by_date (EventId),
		FOREIGN KEY (ID) REFERENCES accident_data_by_date (ID)
);
