use realestatedb;

# Ticket #2


SHOW COLUMNS FROM Properties;

select FirstName, LastName, City, State from agents inner join properties using(AgentID);

select transactionsID, Address as PropertyAddress, City, State
from transactions
inner join properties using(PropertyID);

select Address as PropertyAddress, City, State, ListingPrice
from properties
inner join agents using(AgentID)
where AgentID = 3;

SELECT 
    clients.FirstName,
    clients.LastName,
    clients.Email,
    properties.address AS PropertyAddress,
    properties.City,
    properties.State
FROM
    clients
        INNER JOIN
    transactions USING (clientID)
        INNER JOIN
    properties USING (propertyID);













