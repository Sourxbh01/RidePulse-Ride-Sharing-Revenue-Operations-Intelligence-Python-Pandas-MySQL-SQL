CREATE DATABASE ridepulse;
USE ridepulse;
SHOW TABLES;

SELECT COUNT(*) AS total_rows
FROM ncr_ride_bookings;

SELECT *
FROM ncr_ride_bookings
LIMIT 10;

RENAME TABLE ncr_ride_bookings TO ride_bookings;
DESCRIBE ride_bookings;


SELECT
    `Booking Value`,
    `Ride Distance`,
    `Driver Ratings`,
    `Customer Rating`
FROM ride_bookings
LIMIT 10;

SELECT
    `Date`,
    `Time`
FROM ride_bookings
LIMIT 10;

USE ridepulse;

ALTER TABLE ride_bookings
MODIFY `Date` DATE,
MODIFY `Time` TIME,
MODIFY `Booking Value` DECIMAL(10,2),
MODIFY `Ride Distance` DECIMAL(10,2),
MODIFY `Avg VTAT` DECIMAL(10,2),
MODIFY `Avg CTAT` DECIMAL(10,2),
MODIFY `Driver Ratings` DECIMAL(3,1),
MODIFY `Customer Rating` DECIMAL(3,1);




-- =========================================================
-- Q1. OVERALL BUSINESS PERFORMANCE
-- Business Question:
-- What is the overall performance of RidePulse in terms
-- of total bookings, completed rides, cancellations,
-- and total booking value?
-- =========================================================

SELECT
    COUNT(*) AS total_bookings,

    SUM(
        CASE
            WHEN `Booking Status` = 'Completed'
            THEN 1
            ELSE 0
        END
    ) AS completed_rides,

    SUM(
        CASE
            WHEN `Booking Status` LIKE '%Cancel%'
            THEN 1
            ELSE 0
        END
    ) AS cancelled_rides,

    SUM(`Booking Value`) AS total_booking_value

FROM ride_bookings;


-- =========================================================
-- Q2. BOOKING STATUS DISTRIBUTION
-- Business Question:
-- How are bookings distributed across different
-- booking statuses?
-- =========================================================

SELECT
    `Booking Status`,
    COUNT(*) AS total_bookings,

    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM ride_bookings),
        2
    ) AS booking_percentage

FROM ride_bookings

GROUP BY `Booking Status`

ORDER BY total_bookings DESC;


-- =========================================================
-- Q3. VEHICLE PERFORMANCE
-- Business Question:
-- Which vehicle types generate the highest number
-- of bookings and booking value?
-- =========================================================

SELECT
    `Vehicle Type`,
    COUNT(*) AS total_bookings,
    SUM(`Booking Value`) AS total_booking_value,
    ROUND(AVG(`Booking Value`), 2) AS average_booking_value

FROM ride_bookings

GROUP BY `Vehicle Type`

ORDER BY total_booking_value DESC;


-- =========================================================
-- Q4. CANCELLATION ANALYSIS
-- Business Question:
-- How many rides were cancelled by customers
-- versus drivers?
-- =========================================================

SELECT
    `Booking Status`,
    COUNT(*) AS cancelled_rides

FROM ride_bookings

WHERE `Booking Status` LIKE '%Cancel%'

GROUP BY `Booking Status`

ORDER BY cancelled_rides DESC;


-- =========================================================
-- Q5. TOP CUSTOMER CANCELLATION REASONS
-- Business Question:
-- What are the most common reasons customers
-- cancel their rides?
-- =========================================================

SELECT
    `Reason for cancelling by Customer` AS cancellation_reason,
    COUNT(*) AS cancellation_count

FROM ride_bookings

WHERE `Reason for cancelling by Customer` IS NOT NULL
  AND `Reason for cancelling by Customer` <> ''

GROUP BY `Reason for cancelling by Customer`

ORDER BY cancellation_count DESC;


-- =========================================================
-- Q6. PAYMENT METHOD ANALYSIS
-- Business Question:
-- Which payment methods are used most frequently
-- and which generate the highest booking value?
-- =========================================================

SELECT
    `Payment Method`,
    COUNT(*) AS total_bookings,
    SUM(`Booking Value`) AS total_booking_value,
    ROUND(AVG(`Booking Value`), 2) AS average_booking_value

FROM ride_bookings

WHERE `Payment Method` IS NOT NULL
  AND `Payment Method` <> ''

GROUP BY `Payment Method`

ORDER BY total_booking_value DESC;


-- =========================================================
-- Q7. RIDE DISTANCE BY VEHICLE TYPE
-- Business Question:
-- What is the average ride distance for each
-- vehicle type?
-- =========================================================

SELECT
    `Vehicle Type`,
    COUNT(*) AS total_rides,
    ROUND(AVG(`Ride Distance`), 2) AS average_ride_distance,
    ROUND(MAX(`Ride Distance`), 2) AS maximum_ride_distance

FROM ride_bookings

WHERE `Ride Distance` IS NOT NULL

GROUP BY `Vehicle Type`

ORDER BY average_ride_distance DESC;


-- =========================================================
-- Q8. VEHICLE TYPES WITH HIGH BOOKING VOLUME
-- Business Question:
-- Which vehicle types have more than 1,000 bookings?
-- This helps identify vehicle categories with
-- significant demand.
-- =========================================================

SELECT
    `Vehicle Type`,
    COUNT(*) AS total_bookings,
    ROUND(AVG(`Booking Value`), 2) AS average_booking_value

FROM ride_bookings

GROUP BY `Vehicle Type`

HAVING COUNT(*) > 1000

ORDER BY total_bookings DESC;


-- =========================================================
-- Q9. MONTHLY REVENUE TREND
-- Business Question:
-- How does RidePulse booking value change
-- from month to month?
-- =========================================================

SELECT
    DATE_FORMAT(`Date`, '%Y-%m') AS month,
    COUNT(*) AS total_bookings,
    SUM(`Booking Value`) AS monthly_booking_value

FROM ride_bookings

GROUP BY DATE_FORMAT(`Date`, '%Y-%m')

ORDER BY month;


-- =========================================================
-- Q10. VEHICLE RANKING BY BOOKING VALUE
-- Business Question:
-- How do vehicle types rank based on their
-- total booking value?
-- =========================================================

SELECT
    `Vehicle Type`,
    SUM(`Booking Value`) AS total_booking_value,

    RANK() OVER (
        ORDER BY SUM(`Booking Value`) DESC
    ) AS revenue_rank

FROM ride_bookings

GROUP BY `Vehicle Type`

ORDER BY revenue_rank;

