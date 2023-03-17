import Foundation

let JSON = """
{
    "title": "Little Lemon Rasbary pie",
    "views":  47093,
    "price":  25.50
}
"""

struct Recipe: Decodable {
    let title: String
    let views: Int
    let price: Double
}

let jsonData = JSON.data(using: .utf8)
let recipe = try! JSONDecoder().decode(Recipe.self, from: jsonData!)

print(recipe.title)
