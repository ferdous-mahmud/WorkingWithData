import Foundation

let downloadURL = URL(string: "https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/littleLemonSimpleMenu.json")

let request = URLRequest(url: downloadURL!)

let downloadTask = URLSession.shared.downloadTask(with: request){url, response, error in
    
    if let downloadedURL = url {
        if let string = try? String(contentsOf: downloadedURL){
            print(string)
        }
    }
}

downloadTask.resume()
