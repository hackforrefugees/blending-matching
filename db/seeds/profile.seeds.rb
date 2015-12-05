stockholm = Location.create! name: "Stockholm"
goteborg = Location.create! name: "Göteborg"
malmo = Location.create! name: "Malmö"

Profile.create!(
  name: "native stockholm",
  email: "sto1@example.com",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  password: "password",
  location: stockholm,
  tag_list: "",
  native: true,
  picture: File.open(File.join(Rails.root, '/public/images/seeds/royal-sweden.jpg'))
)

Profile.create!(
  name: "native goteborg 1",
  email: "got1@example.com",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  password: "password",
  location: goteborg,
  tag_list: "food, restaurants, fika",
  native: true,
  picture: File.open(File.join(Rails.root, '/public/images/seeds/the-jackson-family.jpg'))
)

Profile.create!(
  name: "native goteborg 2",
  email: "got2@example.com",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  password: "password",
  location: goteborg,
  tag_list: "food",
  native: true,
  picture: File.open(File.join(Rails.root, '/public/images/seeds/minions.jpg'))
)

Profile.create!(
  name: "non-native goteborg 1",
  email: "got3@example.com",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  password: "password",
  location: goteborg,
  tag_list: "football, disco, fika",
  native: false,
  picture: File.open(File.join(Rails.root, '/public/images/seeds/the-simpsons.jpg'))
)

Profile.create!(
  name: "non-native goteborg 2",
  email: "got4@example.com",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  password: "password",
  location: goteborg,
  tag_list: "football",
  native: false,
  picture: File.open(File.join(Rails.root, '/public/images/seeds/addams-family.jpg'))
)

Profile.create!(
  name: "non-native goteborg 3",
  email: "got5@example.com",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  password: "password",
  location: goteborg,
  tag_list: "fika, food",
  native: false,
  picture: File.open(File.join(Rails.root, '/public/images/seeds/sune.jpg'))
)
