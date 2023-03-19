//
//  ViewController.swift
//  CustiomTableView
//
//  Created by Ferdous Mahmud Akash on 3/19/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
   
    struct Product {
        let lebel: String
        let imageName: String
    }
    
    let productData: [Product] = [
        Product(lebel: "Vintage Instant Camera", imageName: "product1"),
        Product(lebel: "Green Leaf Plant", imageName: "product2"),
        Product(lebel: "Black Road Byke", imageName: "product3"),
        Product(lebel: "Wireless Headphones", imageName: "product4"),
        Product(lebel: "Round White Watch", imageName: "product5"),
        Product(lebel: "Red Nike Sneaker", imageName: "product6")
    ]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        productData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let product = productData[indexPath.row]
        
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProductTableViewCell
        cell.productlebel.text = product.lebel
        cell.productImageView.image = UIImage(named: product.imageName)

        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

}

