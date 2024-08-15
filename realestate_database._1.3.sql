use realestatedb;

# Ticket #3

SELECT 
    agents.FirstName,
    agents.LastName,
    agents.Email,
    agents.PhoneNumber,
    properties.Address AS PropertyAddress,
    properties.City,
    properties.State
FROM
    agents
        LEFT JOIN
    properties ON Agents.AgentID = properties.AgentID;
    
  -- Retrieve all properties along with their transaction details, even if the property has not been sold yet
SELECT Properties.Address AS PropertyAddress, Properties.City, Properties.State, Properties.ListingPrice, 
       Transactions.TransactionID, Transactions.SalePrice
FROM Properties
LEFT JOIN Transactions ON Properties.PropertyID = Transactions.PropertyID;

-- List all clients along with the properties they have purchased, even if they haven't purchased anything
SELECT 
    Clients.FirstName,
    Clients.LastName,
    Clients.Email,
    Clients.PhoneNumber,
    Properties.Address AS PropertyAddress,
    Properties.City,
    Properties.State
FROM
    Clients
        LEFT JOIN
    Transactions ON Clients.ClientID = Transactions.ClientID
        LEFT JOIN
    Properties ON Transactions.PropertyID = Properties.PropertyID;


-- Retrieve all property types along with the details of properties listed under each type, even if no properties are listed under that type
SELECT PropertyTypes.TypeName, 
       Properties.Address AS PropertyAddress, Properties.City, Properties.State
FROM PropertyTypes
LEFT JOIN Properties ON PropertyTypes.TypeID = Properties.TypeID;


