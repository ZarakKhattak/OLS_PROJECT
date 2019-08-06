DROP TABLE RENTAL;
DROP TABLE CUSTOMER;
DROP TABLE VEHICLE;
DROP TABLE VEHICLEPROPERTIES;

CREATE TABLE CUSTOMER
(
	CUSTOMERID NUMBER(12) GENERATED ALWAYS AS IDENTITY,
	FIRSTNAME NVARCHAR2(30) NOT NULL,
	LASTNAME NVARCHAR2(30) NOT NULL,
	PHONENUMBER NUMBER(10) NOT NULL,
	EMAIL NVARCHAR2(30) NOT NULL,
	LICENSENUMBER NVARCHAR2(30) NOT NULL,
	ADDRESS NVARCHAR2(30) NOT NULL,
	PROVINCE NVARCHAR2(30) NOT NULL,
	COUNTRY NVARCHAR2(30) NOT NULL,
	POSTALCODE NVARCHAR2(30) NOT NULL,
	CONSTRAINT CUSTOMER_PK PRIMARY KEY (CUSTOMERID)
);

CREATE TABLE VEHICLEPROPERTIES
(
	MAKE NVARCHAR2(30) NOT NULL,
	"MODEL" NVARCHAR2(30) NOT NULL,
	"TYPE" NVARCHAR2(30) NOT NULL,
	DESCRIPTION NVARCHAR2(30) NOT NULL,
	CONSTRAINT VEHICLEPROPERTIES_PK PRIMARY KEY (MAKE,"MODEL")
);

CREATE TABLE VEHICLE
(
	LICENSEPLATE NVARCHAR2(30) NOT NULL,
	MAKE NVARCHAR2(30) NOT NULL,
	"MODEL" NVARCHAR2(30) NOT NULL,
	CONSTRAINT VEHICLE_PK PRIMARY KEY (LICENSEPLATE),
  CONSTRAINT VEHICLE_FK FOREIGN KEY (MAKE,"MODEL") REFERENCES VEHICLEPROPERTIES(MAKE,"MODEL")
);

CREATE TABLE RENTAL
(
	RENTALID NUMBER(12) GENERATED ALWAYS AS IDENTITY,
	CUSTOMERID NUMBER(12) NOT NULL,
	STARTDATE DATE NOT NULL,
	ENDDATE DATE NOT NULL,
	LICENSEPLATE NVARCHAR2(30) NOT NULL,
	CONSTRAINT RENTAL_PK PRIMARY KEY (RENTALID),
  CONSTRAINT RENTAL_FK0 FOREIGN KEY (CUSTOMERID) REFERENCES CUSTOMER(CUSTOMERID),
  CONSTRAINT RENTAL_FK1 FOREIGN KEY (LICENSEPLATE) REFERENCES VEHICLE(LICENSEPLATE)
);

--test statements
SELECT LICENSEPLATE FROM VEHICLE WHERE NOT EXISTS
(
  SELECT LICENSEPLATE FROM RENTAL WHERE ('29-AUG-19' BETWEEN STARTDATE AND ENDDATE) AND ('30-AUG-19' BETWEEN STARTDATE AND ENDDATE)
);