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
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string: "https://bringatrailer.com/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)

        
        //To go forward:
        let leftSwipe = UISwipeGestureRecognizer(target: webView, action: #selector(webView.goForward))
        leftSwipe.direction = .left
        webView.addGestureRecognizer(leftSwipe)

        //To go back:
        let rightSwipe = UISwipeGestureRecognizer(target: webView, action: #selector(webView.goBack))
        rightSwipe.direction = .right
        webView.addGestureRecognizer(rightSwipe)
    }
}


