## Task 1: Calculate the daily rate given an hourly rate
Implement the function dailyRateFrom(hourlyRate:) to calculate the daily rate given an hourly rate:
```
dailyRateFrom(hourlyRate: 60)
# => 480.0
```
The returned daily rate should be a Double.

## Task 2: Calculate the monthly rate, given an hourly rate and a discount
Implement the function monthlyRateFrom(hourlyRate:withDiscount:) to calculate the monthly rate, and apply a discount:
```
monthlyRateFrom(hourlyRate: 77, withDiscount: 10.5)
# => 12129
```
The returned monthly rate should be returned as a Double rounded to the nearest whole number.

## Task 3: Calculate the number of workdays given a budget, hourly rate and discount
Implement the function workdaysIn(budget:hourlyRate:withDiscount:), that takes a budget, a hourly rate, and a discount, and calculates how many days of work that covers. The returned number of days should be returned as a Double rounded down to the nearest integer.
```
workdaysIn(budget: 20000, hourlyRate: 80, withDiscount: 11.0)
# => 35.0
```
