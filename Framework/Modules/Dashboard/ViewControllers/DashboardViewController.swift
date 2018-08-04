//
//  DashboardViewController.swift
//  Framework
//
//  Created by Mohit Choudhary on 02/07/18.
//  Copyright © 2018 Particle41. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class DashboardViewController: BaseClassViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var itemListTableView: UITableView!
    var dashboardViewModel = DashboardViewModel()
    var disposeBag  = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindSearchBar()
        itemListTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension DashboardViewController{
    
    func bindSearchBar()  {
        self.searchBar
            .rx.text
            .orEmpty
            .subscribe(onNext: { [unowned self] query in
                self.dashboardViewModel.shownCities.value = self.dashboardViewModel.filterItemArray(query: query)
                self.itemListTableView.reloadData()
            })
            .disposed(by: disposeBag)
    }
    
}

extension DashboardViewController : UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dashboardViewModel.shownCities.value.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemPrototypeCell", for: indexPath)
        cell.textLabel?.text = dashboardViewModel.shownCities.value[indexPath.row]
        
        return cell
    }
    
}
