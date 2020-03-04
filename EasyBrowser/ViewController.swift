//
//  ViewController.swift
//  EasyBrowser
//
//  Created by Glenn Drescher on 04/03/2020.
//  Copyright © 2020 GDev.run. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.hackingwithswift.com/read/4/2/creating-a-simple-browser-with-wkwebview")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true

    }
}

