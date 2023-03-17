import Foundation

let JSON = """
[
    {
        "title": "Little Lemon Rasbary pie",
        "views":  47093,
        "price":  25.50
    },
    {
        "title": "Little Lemon Apple pie",
        "views":  48923,
        "price":  15.50
    }
]
"""

struct Recipe: Decodable {
    let title: String
    let views: Int
    let price: Double
}

let jsonData = JSON.data(using: .utf8)!

let recipes = try! JSONDecoder().decode([Recipe].self, from: jsonData)

for recipe in recipes {
    print(recipe.title)
}
