//
//  ViewController.swift
//  ShimmerEffect
//
//  Created by Sciffer Analytics on 13/10/21.
//

import UIKit

class ViewController: UITableViewController {
    
    // MARK: Properties
    
    private var numberOfItems: Int = 20
    
    
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(DetailTableViewCell.self, forCellReuseIdentifier: DetailTableViewCell.identifier)
        tableView.isScrollEnabled = false
        tableView.allowsSelection = false
        title = "Shimmer Effect"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.navigationBar.startShimmerEffect()
    }
    
    
    // MARK: UITableView
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        numberOfItems
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: DetailTableViewCell.identifier, for: indexPath) as? DetailTableViewCell else {
            return .init()
        }
        cell.textLabel?.text = "                                                                        "
        cell.detailTextLabel?.text = "                                                                          "
        cell.startShimmerEffect()
        return cell
    }
    
}
