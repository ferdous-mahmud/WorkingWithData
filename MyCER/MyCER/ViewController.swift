//
//  ViewController.swift
//  MyCER
//
//  Created by Ferdous Mahmud Akash on 3/21/23.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string: "https://app.mycer.it/cns3")
        let myRequest = URLRequest(url: myURL!)
        webView.allowsBackForwardNavigationGestures = true
        webView.load(myRequest)
        
    }
    
}



