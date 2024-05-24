//
//  ViewController.swift
//  BookingApp
//
//  Created by Supraja on 24/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var hotelsTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        hotelsTableView.register(UINib(nibName: HotelTableViewCell.id, bundle: nil), forCellReuseIdentifier: HotelTableViewCell.id)
        hotelsTableView.dataSource = self
        hotelsTableView.delegate = self
        
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HotelTableViewCell.id, for: indexPath)
        return cell
    }
}
