# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


u1 = User.create(username: "Stacy", email: "stacy@gmail.com", password_digest: "Password")
u2 = User.create(username: "Natalie", email: "natalie@gmail.com", password_digest: "Password")
u3 = User.create(username: "Mia", email: "mia@gmail.com", password_digest: "Password")
u4 = User.create(username: "Sophia", email: "sophia@gmail.com", password_digest: "Password")
u5 = User.create(username: "Ava", email: "ava@gmail.com", password_digest: "Password")

coffee_one = Coffee.create(name: "GK Coffee", coffee_origin: "Embu County, Kenya", roaster_location: "Yilan, Taiwan", aroma: "Medium-Light", roast_level: "9")
coffee_two = Coffee.create(name: "Roadmap CoffeWorks", coffee_origin: "Antioquia, Columbia", roaster_location: "Lexington, Virginia", aroma: "Medium-Light", roast_level: "9")
coffee_three = Coffee.create(name: "SkyTop Coffee", coffee_origin: "Tenejapa, Mexico", roaster_location: "Manlius, New York", aroma: "Light", roast_level: "7")
coffee_four = Coffee.create(name: "Red Rooster Coffee Roaster", coffee_origin: "Sidamo region, Ethiopia", roaster_location: "Floyd, Virginia", aroma: "Light", roast_level: "6")
coffee_five = Coffee.create(name: "Drink Coffee Do Stuff", coffee_origin: "Quetzaltepec, El Salvador", roaster_location: "Truckee, California", aroma: "Medium-Light", roast_level: "6")
coffee_six = Coffee.create(name: "Red Fox", coffee_origin: "Sabanilla, Costa Rica", roaster_location: "Charlotte, North Carolina", aroma: "Light", roast_level: "5")
coffee_seven = Coffee.create(name: "Ironclad Coffee Roasters", coffee_origin: "Gedeb District, Ethiopia", roaster_location: "Richmond, Virginia", aroma: "Medium-Light", roast_level: "5")


Review.create(user_id: u1.id, coffee_id: coffee_one.id, review: "Richly complex, dazzling classic. Black currant, orange blossom, toffe, Meyer lemon. Syrupy mouthfeel. Lingering finish.")
Review.create(user_id: u2.id, coffee_id: coffee_two.id, review: "Richly fruit-forward, deep toned. Black cherry, fudge, tangerine zest, amber. High-toned acidity. Crisply sweet-tart.")
Review.create(user_id: u3.id, coffee_id: coffee_three.id, review: "Bright-toned, richly sweet. Pineapple, tamarind, apple blossom. Crisp acidity. Viscous mouthfeel.")
Review.create(user_id: u4.id, coffee_id: coffee_four.id, review: "Complex, lyrically sweet. Nectarine, bergamont, nougat, wisteria. Sweetly tart structure. Silky mouthfeel. ")
Review.create(user_id: u5.id, coffee_id: coffee_five.id, review: "Floral and deeply fruity. Guava, praline, cane sugar, kumquat. Winy acidity. Full mouthfeel")
Review.create(user_id: u1.id, coffee_id: coffee_six.id, review: "Aromatic, full-bodied, balanced. Pink grapefruit, lilac, bay leaf, rambutan. Brisk acidity. Long flavor-laden finish.")
Review.create(user_id: u1.id, coffee_id: coffee_seven.id, review: "Complexly fruit-layered, floral. Star jasmine, wild raspberry, lychee, cocoa nib. Resonant finish. ")


puts("done seeding")