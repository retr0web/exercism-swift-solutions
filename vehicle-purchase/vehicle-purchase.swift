func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    if ((price / 60) < monthlyBudget) {
        return "Yes! I'm getting a \(vehicle)"
    }
    else if ((monthlyBudget * 1.01)...(monthlyBudget * 1.1) ~= (price / 60)) {
        return "I'll have to be frugal if I want a \(vehicle)"              
    }
    else {
        return "Darn! No \(vehicle) for me"
    }
}

func licenseType(numberOfWheels wheels: Int) -> String {
  switch wheels {
    case 2, 3:
      return "You will need a motorcycle license for your vehicle"
    case 4, 6:
      return "You will need an automobile license for your vehicle"
    case 18:
      return "You will need a commercial trucking license for your vehicle"
    default:
      return "We do not issue licenses for those types of vehicles"
  }
}

func registrationFee(msrp: Int, yearsOld: Int) -> Int {
    guard yearsOld <= 10 else {return 25}
    return Int((max(msrp, 25000) - (msrp * yearsOld * 10 / 100)) / 100)
}

// Tests

canIBuy(vehicle: "1974 Ford Pinto", price: 516.32, monthlyBudget: 100.00)
// => "Yes! I'm getting a 1974 Ford Pinto"
canIBuy(vehicle: "2011 Bugatti Veyron", price: 2_250_880.00, monthlyBudget: 10000.00)
// => "Darn! No 2011 Bugatti Veyron for me"
canIBuy(vehicle: "2020 Indian FTR 1200", price: 12_500, monthlyBudget: 200)
// => "I'll have to be frugal if I want a 2020 Indian FTR 1200"

licenseType(numberOfWheels: 2)
// => "You will need a motorcycle license for your vehicle"
licenseType(numberOfWheels: 6)
// => "You will need an automobile license for your vehicle"
licenseType(numberOfWheels: 18)
// => "You will need a commercial trucking license for your vehicle"
licenseType(numberOfWheels: 0)
// => "We do not issue licenses for those types of vehicles"

registrationFee(msrp: 2_250_800, yearsOld: 9)
// => 2250
registrationFee(msrp: 25_000, yearsOld: 3)
// => 175
registrationFee(msrp: 34_000, yearsOld: 30)
// => 25