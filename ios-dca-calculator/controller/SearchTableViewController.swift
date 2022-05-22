//
//  ViewController.swift
//  ios-dca-calculator
//
//  Created by Nick Chen on 2022/5/15.
//

import UIKit

class SearchTableViewController: UITableViewController {
    
    private lazy var seachController: UISearchController = {
        let sc = UISearchController(searchResultsController: nil)
        sc.searchResultsUpdater = self
        sc.delegate = self
        sc.obscuresBackgroundDuringPresentation = false
        sc.searchBar.placeholder = "Enter a company name or symbol"
        sc.searchBar.autocapitalizationType = .allCharacters
        return sc
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupNavigatorBar()
    }
    
    private func setupNavigatorBar() {
        navigationItem.searchController = self.seachController
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        return cell
    }
}

extension SearchTableViewController: UISearchResultsUpdating, UISearchControllerDelegate {
    
    // Protocol - UISearchResultsUpdating
    func updateSearchResults(for searchController: UISearchController) {
    }
}
