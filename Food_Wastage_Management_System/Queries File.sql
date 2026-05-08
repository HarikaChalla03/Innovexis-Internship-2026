Use Local_Food_Wastage_Management_System;

-- Food Providers & Receivers
-- How many food providers and receivers are there in each city?
-- 1. PROVIDERS : 
SELECT City, COUNT(*) AS total_providers
FROM providers
GROUP BY City
ORDER BY total_providers DESC;

-- 2. Receivers :
SELECT City, COUNT(*) AS total_receivers
FROM receivers
GROUP BY City
ORDER BY total_receivers DESC;

-- 3. Which type of food provider (restaurant, grocery store, etc.) contributes the most food?
SELECT Provider_Type, SUM(Quantity) AS total_quantity
FROM food_listings
GROUP BY Provider_Type
ORDER BY total_quantity DESC;

-- 4. What is the contact information of food providers in a specific city?
SELECT Name, Contact, City
FROM providers
WHERE City = 'Hamiltontown';

-- 5. Which receivers have claimed the most food?
SELECT receivers.Receiver_ID, receivers.Name, COUNT(*) AS total_claims
FROM receivers
JOIN claims
ON receivers.Receiver_ID = claims.Receiver_ID
GROUP BY receivers.Receiver_ID, receivers.Name
ORDER BY total_claims DESC;

--  Food Listings & Availability
-- 6. What is the total quantity of food available from all providers?
SELECT SUM(Quantity) AS total_available_quantity
FROM food_listings;

-- 7. Which city has the highest number of food listings?
SELECT Location, COUNT(*) AS listing_count
FROM food_listings
GROUP BY Location
ORDER BY listing_count DESC;

-- 8. What are the most commonly available food types?
SELECT Food_Type, COUNT(*) AS total_count
FROM food_listings
GROUP BY Food_Type
ORDER BY total_count DESC;

-- Claims & Distribution
--  9. How many food claims have been made for each food item?
SELECT Food_ID, COUNT(*) AS claim_count
FROM claims
GROUP BY Food_ID
ORDER BY claim_count DESC;

--  10. Which provider has had the highest number of successful food claims?
SELECT providers.Provider_ID, providers.Name, COUNT(*) AS successful_claims
FROM claims
JOIN food_listings
ON claims.Food_ID = food_listings.Food_ID
JOIN providers
ON food_listings.Provider_ID = providers.Provider_ID
WHERE claims.Status = 'Completed'
GROUP BY providers.Provider_ID, providers.Name
ORDER BY successful_claims DESC;

--  11. What percentage of food claims are completed vs. pending vs. canceled?
SELECT Status, COUNT(*) AS status_count
FROM claims
GROUP BY Status
ORDER BY status_count DESC;

-- Analysis & Insights
-- 12. What is the average quantity of food claimed per receiver?
SELECT receivers.Receiver_ID, receivers.Name, AVG(food_listings.Quantity) AS avg_quantity
FROM claims
JOIN receivers
ON claims.Receiver_ID = receivers.Receiver_ID
JOIN food_listings
ON claims.Food_ID = food_listings.Food_ID
GROUP BY receivers.Receiver_ID, receivers.Name
ORDER BY avg_quantity DESC;

-- 13. Which meal type (breakfast, lunch, dinner, snacks) is claimed the most?
SELECT food_listings.Meal_Type, COUNT(*) AS total_claims
FROM claims
JOIN food_listings
ON claims.Food_ID = food_listings.Food_ID
GROUP BY food_listings.Meal_Type
ORDER BY total_claims DESC;

-- 14. What is the total quantity of food donated by each provider?
SELECT providers.Provider_ID, providers.Name, SUM(food_listings.Quantity) AS total_donated
FROM providers
JOIN food_listings
ON providers.Provider_ID = food_listings.Provider_ID
GROUP BY providers.Provider_ID, providers.Name
ORDER BY total_donated DESC;

-- 15. How many claims are there for each city and claim status?
SELECT food_listings.Location, claims.Status, COUNT(*) AS claim_count
FROM claims
JOIN food_listings
ON claims.Food_ID = food_listings.Food_ID
GROUP BY food_listings.Location, claims.Status
ORDER BY food_listings.Location, claims.Status;












