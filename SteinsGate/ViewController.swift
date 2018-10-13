//
//  ViewController.swift
//  SteinsGate
//
//  Created by Iris on 2018/10/9.
//  Copyright © 2018 Iris. All rights reserved.
//

import UIKit
import WebKit
class video1: UIViewController, WKUIDelegate, WKNavigationDelegate {
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://www.youtube.com/embed/6XkXlWRf7eY")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        webView.allowsBackForwardNavigationGestures = true
    }
}
