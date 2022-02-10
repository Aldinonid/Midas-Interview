//
//  ViewController.swift
//  Midas-Interview
//
//  Created by Aldino Efendi on 2022/02/10.
//

import UIKit

class HomeViewController: UIViewController {

	private var shops: [ShopRespond2] = []
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .systemBackground
		title = "Shop Lists"
		navigationController?.navigationBar.prefersLargeTitles = true
		
		setup()
		constraints()
		initTableView()
		
		APIService.instance.fetch(type: ShopRespond1.self) { [weak self] result in
			switch result {
				case .success(let result):
					self?.shops = result.payload
					DispatchQueue.main.async {
						self?.tableView.reloadData()
					}
				case .failure(let err):
					print(err)
			}
		}
		
	}
	
	func setup() {
		view.addSubview(tableView)
	}
	
	func constraints() {
		NSLayoutConstraint.activate([
			tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
			tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
			tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
			tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
		])
	}
    
	let tableView: UITableView = {
		let table = UITableView()
		table.register(ShopCell.self, forCellReuseIdentifier: ShopCell.identifier)
		table.translatesAutoresizingMaskIntoConstraints = false
		return table
	}()
	

}


extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return shops.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let shop: Shop = shops[indexPath.row].shop
		let cell = tableView.dequeueReusableCell(withIdentifier: ShopCell.identifier, for: indexPath) as! ShopCell
		cell.updateCell(shop: shop)
		return cell
	}
	
	func initTableView() {
		tableView.delegate = self
		tableView.dataSource = self
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let vc = DetailViewController()
		navigationController?.pushViewController(vc, animated: true)
	}
	
	
}
