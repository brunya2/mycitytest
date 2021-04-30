//
//  ViewController.swift
//  myCity
//
//  Created by Brunya on 08.04.2021.
//

import UIKit

final class CityListViewController: UIViewController {
    let model = CityListModelController()
    
    private(set) lazy var cityListView = view as! CityListView

    override func loadView() {
        view = CityListView(frame: UIScreen.main.bounds, style: .plain)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Города"
        navigationController?.navigationBar.prefersLargeTitles = true
        cityListView.dataSource = self
        cityListView.delegate = self
    }
    
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
}

extension CityListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model.cities.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? CityListViewCell else {
            preconditionFailure("We use only `CityListViewCell` class")
        }
        
    
        let city = model.cities[indexPath.item]
      //  guard let weatherInfo = model.weatherInfo[city.name] else { return cell }
        cell.configure(name: city.name)
        return cell
    }
}

extension CityListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50.0
    }
}





// ecc52302-c850-495d-a05b-9ffc176e4e92



/*

CPU
    --- ------- ----- ---
    -- ------ ---- -- ---

 
 
 DispatchQueue Main Thread1(Main) UI -*-*-*-*-*- &- - - --  - - -
 
 Thread2 --*-*-*- &- - - - - - - - - -
 
 Process ( Thread, ...)

 
 
 
 
 */



