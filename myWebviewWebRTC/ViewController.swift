   //  ViewController.swift
   //  myWebviewWebRTCIOS
   //
   //  Created by 赵伟 on 2022/12/19.
   //

   import UIKit
   import WebKit

   class ViewController: UIViewController, WKUIDelegate {

       var wkwebview: WKWebView!

       override func viewDidLoad() {
           super.viewDidLoad()
           let request = URLRequest(url: URL(string: "https://zegocloud.github.io/zego_uikit_prebuilt_web/video_conference/index.html?roomID=zegocloud&role=Host")!)
           wkwebview.load(request)
       }
       override func loadView() {
               let webConfiguration = WKWebViewConfiguration()
               webConfiguration.allowsInlineMediaPlayback = true //** Added as an example for your case
               wkwebview = WKWebView(frame: .zero, configuration: webConfiguration)
               wkwebview.uiDelegate = self
               view = wkwebview
           }
   }
