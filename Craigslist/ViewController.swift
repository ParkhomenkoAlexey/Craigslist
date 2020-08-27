//
//  ViewController.swift
//  Craigslist
//
//  Created by Даниил Статиев on 26.08.2020.
//  Copyright © 2020 Даниил Статиев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .blue
    }


}

// MARK: - SwiftUI
import SwiftUI

struct VCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let viewController = ViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<VCProvider.ContainerView>) -> ViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: VCProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<VCProvider.ContainerView>) {
            
        }
    }
}
