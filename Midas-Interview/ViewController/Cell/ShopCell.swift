//
//  ShopCell.swift
//  Midas-Interview
//
//  Created by Aldino Efendi on 2022/02/10.
//

import UIKit

class ShopCell: UITableViewCell {
	
	static let identifier = "ShopCell"
	
	let shopLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let addressLabel: UILabel = {
		let label = UILabel()
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
		contentView.addSubview(image)
		contentView.addSubview(shopLabel)
		contentView.addSubview(addressLabel)
	}
	
	func constraints() {
		NSLayoutConstraint.activate([
			image.topAnchor.constraint(equalTo: contentView.topAnchor),
			image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
			image.heightAnchor.constraint(equalToConstant: 100),
			image.widthAnchor.constraint(equalToConstant: 100),
			
			shopLabel.topAnchor.constraint(equalTo: image.topAnchor),
			shopLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
			shopLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
			
			addressLabel.topAnchor.constraint(equalTo: shopLabel.topAnchor),
			addressLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
			addressLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
			
		])
	}
	
	func updateCell(shop: Shop) {
		image.image = UIImage(named: shop.image)
		shopLabel.text = "Shop Name: \(shop.shopName)"
		addressLabel.text = "Address: \(shop.address)"
	}
	
	override func awakeFromNib() {
		super.awakeFromNib()
		setup()
		constraints()
	}
	
	override func setSelected(_ selected: Bool, animated: Bool) {
		super.setSelected(selected, animated: animated)
		// Configure the view for the selected state
	}
	
}
