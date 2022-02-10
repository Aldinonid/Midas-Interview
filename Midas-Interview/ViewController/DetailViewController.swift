//
//  DetailViewController.swift
//  Midas-Interview
//
//  Created by Aldino Efendi on 2022/02/10.
//

import UIKit

class DetailViewController: UIViewController {

	var items = [Menu]()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .systemBackground
		title = "Menu Lists"
		navigationController?.navigationBar.prefersLargeTitles = true
		
		setup()
		constraints()
		initTableView()
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
		table.register(MenuCell.self, forCellReuseIdentifier: MenuCell.identifier)
		table.rowHeight = 300
		table.translatesAutoresizingMaskIntoConstraints = false
		return table
	}()
	
}

extension DetailViewController: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return items.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let menu: Menu = items[indexPath.row]
		let cell = tableView.dequeueReusableCell(withIdentifier: MenuCell.identifier, for: indexPath as IndexPath) as! MenuCell
		cell.updateCell(menu: menu)
		return cell
	}
	
	func initTableView() {
		tableView.delegate = self
		tableView.dataSource = self
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
	}
	
	
}
