//
//  ViewController.swift
//  Craigslist
//
//  Created by Даниил Статиев on 26.08.2020.
//  Copyright © 2020 Даниил Статиев. All rights reserved.
//

import UIKit

class CountryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var countruTableView = UITableView()
    let identifire = "MyCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemFill
        createTable()
        setupNavigationBar()
        setupSearchBar()
    }
// MARK: - Setup UI Elements
    
    private func createTable() {
        self.countruTableView = UITableView(frame: view.bounds, style: .plain)
        countruTableView.register(UITableViewCell.self, forCellReuseIdentifier: identifire)
        self.countruTableView.delegate = self
        self.countruTableView.dataSource = self
        
        countruTableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        view.addSubview(countruTableView)
    }
    
    private func setupNavigationBar() {
        let titleLabel = UILabel()
        titleLabel.text = "Country"
        titleLabel.font = UIFont.systemFont(ofSize: 30, weight: .heavy)
        titleLabel.textColor = .black
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: titleLabel)
    }
    
    private func setupSearchBar() {
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.delegate = self
    }
// MARK: - UITableViewDataSource and UITableViewDelegate
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return 5
       }
       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifire, for: indexPath)
        cell.textLabel?.text = "123"
        return cell
       }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55.0
    }
}
// MARK: - UISearchBarDelegate
    
    extension CountryViewController: UISearchBarDelegate {
        
        func searchBar (_ searchBar: UISearchBar, textDidChange searchText: String) {
            print(searchText)
        }
    }

// MARK: - SwiftUI
    
import SwiftUI

struct CountryVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let countryController = CountryViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<CountryVCProvider.ContainerView>) -> CountryViewController {
            return countryController
        }
        
        func updateUIViewController(_ uiViewController: CountryVCProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<CountryVCProvider.ContainerView>) {
            
        }
    }
}
