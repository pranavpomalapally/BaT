//
//  ViewController.swift
//  BaT
//
//  Created by Pranav Pomalapally on 1/5/22.
//

import UIKit
import WebKit

//weak var webViewBox: WKWebView!

class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
        webView.allowsBackForwardNavigationGestures = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string: "https://bringatrailer.com/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}


