//
//  ShopCell.swift
//  Midas-Interview
//
//  Created by Aldino Efendi on 2022/02/10.
//

import UIKit

class ShopCell: UITableViewCell {
	
	static let identifier = "ShopCell"
	
	let shopTitleLabel: UILabel = {
		let label = UILabel()
		label.text = "Shop Name: "
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let addressTitleLabel: UILabel = {
		let label = UILabel()
		label.text = "Address: "
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let shopNameLabel: UILabel = {
		let label = UILabel()
		label.numberOfLines = 0
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let addressLabel: UILabel = {
		let label = UILabel()
		label.numberOfLines = 0
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let image: UIImageView = {
		let image = UIImage()
		let imageView = UIImageView(image: image)
		imageView.translatesAutoresizingMaskIntoConstraints = false
		return imageView
	}()
	
	func setup() {
//		contentView.addSubview(image)
		contentView.addSubview(shopTitleLabel)
		contentView.addSubview(addressTitleLabel)
		contentView.addSubview(shopNameLabel)
		contentView.addSubview(addressLabel)
	}
	
	func constraints() {
		NSLayoutConstraint.activate([
//			image.topAnchor.constraint(equalTo: contentView.topAnchor),
//			image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
//			image.heightAnchor.constraint(equalToConstant: 100),
//			image.widthAnchor.constraint(equalToConstant: 100),
			
//			shopLabel.topAnchor.constraint(equalTo: image.bottomAnchor),
			shopTitleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
			shopTitleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
			
			shopNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
			shopNameLabel.leadingAnchor.constraint(equalTo: shopTitleLabel.trailingAnchor, constant: 2),
			shopNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
			
			addressTitleLabel.topAnchor.constraint(equalTo: shopTitleLabel.bottomAnchor, constant: 8),
			addressTitleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
			
			addressLabel.topAnchor.constraint(equalTo: shopNameLabel.bottomAnchor, constant: 8),
			addressLabel.leadingAnchor.constraint(equalTo: addressTitleLabel.trailingAnchor, constant: 15),
			addressLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
			
		])
	}
	
	func updateCell(shop: Shop) {
		image.image = UIImage(named: shop.image)
		shopNameLabel.text = shop.shopName
		addressLabel.text = shop.address
	}
	
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		
		setup()
		constraints()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}
