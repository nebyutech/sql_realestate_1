use realestatedb;

# Ticket #4

SELECT 
    properties.Address AS PropertyAddress,
    properties.City,
    properties.State,
    properties.ListingPrice,
    agents.FirstName,
    Agents.LastName,
    agents.Email
FROM
    Agents
        RIGHT JOIN
    properties ON properties.AgentID = agents.AgentID;


SELECT 
    transactions.TransactionID,
    transactions.salePrice,
    transactions.SaleDate,
    clients.FirstName,
    clients.LastName,
    clients.email,
    clients.PhoneNumber
FROM
    clients
        RIGHT JOIN
    Transactions ON transactions.clientID = Clients.clientID;
    
SELECT 
    propertytypes.TypeName,
    properties.address,
    properties.City,
    properties.State
FROM
    properties
        RIGHT JOIN
    propertytypes ON Properties.TypeID = PropertyTypes.typeID;
    
    
    
    SELECT 
    clients.FirstName,
    clients.LastName,
    clients.Email,
    clients.PhoneNumber,
    transactions.TransactionID,
    transactions.SaleDate
FROM
    transactions
        RIGHT JOIN
    clients ON Transactions.clientID = clients.ClientID;


