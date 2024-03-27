//
//  ViewController.swift
//  Death Note
//
//  Created by Efekan Güvendik on 6.02.2024.


import UIKit
import SwiftUI

class HomeViewController: UIViewController {
    
    private var homeView = HomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeView = HomeView(frame: view.bounds)
        view.addSubview(homeView)
       setupController()
    }
    private func setupController() {
        title = "Home"
        navigationController?.navigationBar.tintColor = .systemRed
        homeView.addbutton.addTarget(self, action: #selector(addButtonDown), for: .touchDown)
        homeView.addbutton.addTarget(self, action: #selector(addButtonUp), for: [.touchUpInside , .touchUpOutside])
    }
    @objc func addButtonDown(){
        UIView.animate(withDuration: 0.2 ){
            self.homeView.addbutton.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
        }
        homeView.addbutton.alpha = 0.5
        homeView.addbutton.backgroundColor = UIColor.black
    }
    @objc func addButtonUp() {
        UIView.animate(withDuration: 0.2) {
            self.homeView.addbutton.transform = CGAffineTransform.identity
        }
        homeView.addbutton.alpha = 1.0
        homeView.addbutton.backgroundColor = UIColor.red
        let VC = NotesViewController()
        navigationController?.pushViewController(VC, animated: true)
    }
    
    
}


