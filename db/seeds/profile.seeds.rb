goteborg = Location.create! name: "Göteborg"
malmo = Location.create! name: "Malmö"
stockholm = Location.create! name: "Stockholm"
Profile.create! name: "svensson", email: "got1@example.com", password: "password", location: goteborg
Profile.create! name: "fotball lovers", email: "got2@example.com", password: "password", location: goteborg
