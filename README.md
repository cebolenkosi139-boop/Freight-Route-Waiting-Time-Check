# Freight Route Waiting-Time Check

A short follow-up to my [Freight Route Pricing Review](https://github.com/cebolenkosi139-boop/Freight-Route-Pricing-Review-Data-Analysis-Project).

## Question
The pricing review flagged 15 of 58 routes billed below a fair price per mile. Do those routes also lose more time to waiting at pickups and deliveries?

## Answer
No. Flagged routes average 182 minutes of waiting per load against 183 for the other 43, and the ranges overlap almost completely. The pricing gap is not explained by waiting time.

## How I checked
- SQL: joined the delivery events table to loads and averaged waiting time (detention minutes) per load for each route (`detention_by_route.sql`).
- Python: joined the result to the pricing results and compared the flagged and unflagged routes (`route_detention_check.ipynb`).

## Limits
- The dataset is simulated, so the result shows the method, not a real business.
- Results are per-route averages, and only 15 routes are in the flagged group, so this is "no difference found", not proof of no effect.

## Files
| File | What it is |
|---|---|
| detention_by_route.sql | SQL query for waiting time per route |
| detention_by_route.csv | Query result, 58 routes |
| route_pricing.csv | Pricing results from the original project |
| route_detention_check.ipynb | Python comparison |
