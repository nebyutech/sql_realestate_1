use realestatedb;

# Ticket #5

SELECT 
    agents.FirstName,
    agents.LastName,
    agents.Email,
    properties.Address,
    properties.City,
    properties.State,
    properties.ListingPrice
FROM
    Agents
        CROSS JOIN
    properties;
    
    
    SELECT 
    clients.FirstName,
    clients.LastName,
    clients.Email,
    properties.Address,
    properties.City,
    properties.State,
    properties.ListingPrice
FROM
    clients
        CROSS JOIN
    properties;
    
        
    SELECT 
    propertytypes.typeName,
    properties.Address,
    properties.City,
    properties.State,
    properties.ListingPrice
FROM
    PropertyTypes
        CROSS JOIN
    properties;
    
    
    SELECT 
    agents.FirstName AS AgentFirstName,
    agents.LastName AS AgentLastName,
    agents.email AS AgentEmail,
    clients.firstName AS ClientFirstName,
    clients.lastName AS ClientLastName,
    clients.email AS ClientEmail
FROM
    agents
        CROSS JOIN
    clients;
    
    
    


