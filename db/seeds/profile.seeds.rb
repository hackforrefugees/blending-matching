stockholm = Location.create! name: "Stockholm"
goteborg = Location.create! name: "Göteborg"
malmo = Location.create! name: "Malmö"

Profile.create!(
  name: "svensson",
  email: "got1@example.com",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  password: "password",
  location: goteborg,
  tag_list: "food, restaurants, fika",
  native: true
)

Profile.create!(
  name: "football lovers",
  email: "got2@example.com",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  password: "password",
  location: goteborg,
  tag_list: "football, disco, fika",
  native: false
)
