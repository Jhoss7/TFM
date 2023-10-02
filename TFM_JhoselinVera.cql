CREATE KEYSPACE TFM_JhoselinV
WITH durable_writes = true AND replication = {'class' : 'SimpleStrategy', 'replication_factor' : 1};

CREATE TABLE TFM_JhoselinV.tabla1(
	EntityKey int,
	StrategyPlanKey int,
	ScenarioName text,
	AccountName text,
	CurrencyName text,
	ProductCategoryName text,
	Amount float,
	LoadDate date,
	PRIMARY KEY (EntityKey,StrategyPlanKey)
) WITH CLUSTERING ORDER BY (StrategyPlanKey ASC );

CREATE TABLE TFM_JhoselinV.tabla2(
	ChannelName text,
	SalesKey int,
	StoreName text,
	ProductName text,
	PromotionName text,
	CurrencyName text,
	UnitCost float,
	UnitPrice float,
	SalesQuantity int,
	ReturnQuantity int,
	ReturnAmount float,
	DiscountQuantity int,
	DiscountAmount float,
	TotalCost float,
	SalesAmount float,
	LoadDate date,
	PRIMARY KEY (ChannelName,SalesKey)
) WITH CLUSTERING ORDER BY (SalesKey ASC );

CREATE TABLE TFM_JhoselinV.tabla3(
	StoreType text,
	InventoryKey int,
	FullDateLabel date,
	ProductName text,
	CurrencyName text,
	OnHandQuantity int,
	OnOrderQuantity int,
	SafetyStockQuantity int,
	UnitCost float,
	DaysInStock int,
	MaxDayInStock int,
	Aging int,
	PRIMARY KEY (StoreType,InventoryKey)
) WITH CLUSTERING ORDER BY ( InventoryKey ASC );