travel_log = [
{
  "country": "France",
  "visits": 12,
  "cities": ["Paris", "Lille", "Dijon"]
},
{
  "country": "Germany",
  "visits": 5,
  "cities": ["Berlin", "Hamburg", "Stuttgart"]
},
]

def add_new_country(visitedCountry, timesVisited, citiesVisited):
    newCountry = {}
    newCountry["country"] = visitedCountry
    newCountry["visits"] = timesVisited
    newCountry ["cities"] = citiesVisited
    travel_log.append(newCountry)


add_new_country("Russia", 2, ["Moscow", "Saint Petersburg"])
print(travel_log)
