CREATE TABLE DBO.CUSTOMERS
(
    CUST_ID                 INT NOT NULL ,
    CUST_FIRST_NAME         NVARCHAR(20) NOT NULL,
    CUST_LAST_NAME          NVARCHAR(40) NOT NULL,
    CUST_GENDER             CHAR(1) NOT NULL,
    CUST_YEAR_OF_BIRTH      INT NOT NULL,
    CUST_MARITAL_STATUS     NVARCHAR(20),
    CUST_STREET_ADDRESS     NVARCHAR(40) NOT NULL,
    CUST_POSTAL_CODE        NVARCHAR(10) NOT NULL,
    CUST_CITY               NVARCHAR(30) NOT NULL,
    CUST_CITY_ID            INT NOT NULL,
    CUST_STATE_PROVINCE     NVARCHAR(40) NOT NULL,
    CUST_STATE_PROVINCE_ID  INT NOT NULL,
    COUNTRY_ID              INT NOT NULL,
    CUST_MAIN_PHONE_NUMBER  NVARCHAR(25) NOT NULL,
    CUST_INCOME_LEVEL       NVARCHAR(30),
    CUST_CREDIT_LIMIT       INT,
    CUST_EMAIL              NVARCHAR(30),
    CUST_TOTAL              NVARCHAR(20),    
    CUST_TOTAL_ID           INT NOT NULL,
    CUST_SRC_ID             INT,
    CUST_EFF_FROM           DATETIME,
    CUST_EFF_TO             DATETIME,
    CUST_VALID              NVARCHAR(1)
)
WITH
(
	CLUSTERED COLUMNSTORE INDEX,
	DISTRIBUTION = ROUND_ROBIN
)