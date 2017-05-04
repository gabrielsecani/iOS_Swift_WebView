//
//  ViewController.swift
//  aula12_webview
//
//  Created by Usuário Convidado on 04/05/17.
//  Copyright © 2017 Usuário Convidado. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    
    @IBOutlet weak var meuWebView: UIWebView!
    @IBOutlet weak var meuActivity: UIActivityIndicatorView!
    
    let URL_PAGINA = "http://www.google.com.br"
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        
        var msg:String
        msg = "Erro: \(error.localizedDescription)"
        
        
        let alerta = UIAlertController(
            title: "Aviso",
            message: msg,
            preferredStyle: UIAlertControllerStyle.alert)
        
        alerta.addAction(UIAlertAction(
            title: "OK",
            style: UIAlertActionStyle.default,
            handler: nil))
        
        present(alerta, animated: true, completion: nil)
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        meuActivity.stopAnimating()
        meuActivity.isHidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        meuActivity.startAnimating()
        
        //meuWebView.delegate = self
    
        let URL_OK = URL(string: URL_PAGINA)
    
        let request = URLRequest(url: URL_OK!)
        meuWebView.loadRequest(request)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
