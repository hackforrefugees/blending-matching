stockholm = Location.create! name: "Stockholm"
goteborg = Location.create! name: "Göteborg"
malmo = Location.create! name: "Malmö"

Profile.create!(
  name: "The royal family",
  email: "royal@example.com",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  password: "password",
  location: stockholm,
  tag_list: "charity, duck hunting, politics, religion, partying",
  native: true,
  picture: File.open(File.join(Rails.root, "/public/images/seeds/royal-sweden.jpg"))
)

Profile.create!(
  name: "The upallnight family",
  email: "upallnight@example.com",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  password: "password",
  location: goteborg,
  tag_list: "partying, disco, food, restaurants, fika",
  native: true,
  picture: File.open(File.join(Rails.root, "/public/images/seeds/the-jackson-family.jpg"))
)

Profile.create!(
  name: "The adventure family",
  email: "adventure@example.com",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  password: "password",
  location: goteborg,
  tag_list: "outdoors, hiking, sports, fika",
  native: true,
  picture: File.open(File.join(Rails.root, "/public/images/seeds/minions.jpg"))
)

Profile.create!(
  name: "The culinaries",
  email: "culinaries@example.com",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  password: "password",
  location: goteborg,
  tag_list: "food, fika",
  native: false,
  picture: File.open(File.join(Rails.root, "/public/images/seeds/the-simpsons.jpg"))
)

Profile.create!(
  name: "Outdoors family",
  email: "outdoors@example.com",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  password: "password",
  location: goteborg,
  tag_list: "outdoors, hiking",
  native: false,
  picture: File.open(File.join(Rails.root, "/public/images/seeds/addams-family.jpg"))
)

Profile.create!(
  name: "The cozy family",
  email: "cozy@example.com",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  password: "password",
  location: goteborg,
  tag_list: "fika, food, outdoors, sunsets",
  native: false,
  picture: File.open(File.join(Rails.root, "/public/images/seeds/sune.jpg"))
)
