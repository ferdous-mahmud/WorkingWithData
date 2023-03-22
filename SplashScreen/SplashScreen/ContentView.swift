//
//  ContentView.swift
//  SplashScreen
//
//  Created by Ferdous Mahmud Akash on 3/22/23.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        if Reachability.isConnectedToNetwork(){
            ZStack{
                WebView(url: URL(string: "https://app.mycer.it/cns3")!)
            }
            .ignoresSafeArea()
        } else {
            VStack {
                Image(systemName: "wifi.slash")
                    .font(.system(size: 80))
                Text("No Internet Connection")
                    .padding(.top)
                    .bold()
                Text("Please check your connection and try again.")
            }
        }
        
    }
}

struct WebView: UIViewRepresentable {
 
    var url: URL
 
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
 
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.allowsBackForwardNavigationGestures = true
        webView.load(request)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

