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



let JSON2 = """
[
    {
        "title": "Little Lemon Rasbary pie",
        "views":  47093,
        "price":  25.50,
        "url": "www.littlelemon.com/recipe/rasbary-pie"
    },
    {
        "title": "Little Lemon Apple pie",
        "views":  48923,
        "price":  15.50,
        "url": "www.littlelemon.com/recipe/apple-pie"
    }
]
"""

struct Recipe2: Decodable {
    enum CodingKeys: String, CodingKey { case
        title, views,
        imageLink = "url"
    }
    
    let title: String
    let views: Int
    let imageLink: String
}

let jsonData2 = JSON2.data(using: .utf8)!
let recipe2 = try! JSONDecoder().decode([Recipe2].self, from: jsonData2)

for rec in recipe2 {
    print(rec.imageLink)
}
