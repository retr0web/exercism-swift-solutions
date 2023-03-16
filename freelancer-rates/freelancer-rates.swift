func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate * 8)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    let monthRate = Double(dailyRateFrom(hourlyRate: hourlyRate) * 22)
    let plusDiscount = discount / 100
    return (monthRate - (monthRate * plusDiscount)).rounded(.toNearestOrAwayFromZero)
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    let workDay = dailyRateFrom(hourlyRate: hourlyRate) - (dailyRateFrom(hourlyRate: hourlyRate) * (discount / 100))
    return (budget / workDay).rounded(.down)
}

// Tests
dailyRateFrom(hourlyRate: 60)
// 480.0
monthlyRateFrom(hourlyRate: 77, withDiscount: 10.5)
// 12129
workdaysIn(budget: 20000, hourlyRate: 80, withDiscount: 11.0)
// 35.0