//
//  TableViewCell.swift
//  Midas-Interview
//
//  Created by Aldino Efendi on 2022/02/10.
//

import UIKit

class MenuCell: UITableViewCell {

	static let identifier = "ShopCell"
	
	let titleLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let indonesianTitleLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let englishTitleLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let priceLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let discountPriceLabel: UILabel = {
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
		contentView.addSubview(titleLabel)
		contentView.addSubview(indonesianTitleLabel)
		contentView.addSubview(englishTitleLabel)
		contentView.addSubview(priceLabel)
		contentView.addSubview(discountPriceLabel)
	}
	
	func constraints() {
		NSLayoutConstraint.activate([
			image.topAnchor.constraint(equalTo: contentView.topAnchor),
			image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
			image.heightAnchor.constraint(equalToConstant: 100),
			image.widthAnchor.constraint(equalToConstant: 100),
			
			titleLabel.topAnchor.constraint(equalTo: image.bottomAnchor),
			titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
			titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
			
			indonesianTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
			indonesianTitleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
			indonesianTitleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
			
			englishTitleLabel.topAnchor.constraint(equalTo: indonesianTitleLabel.bottomAnchor),
			englishTitleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
			englishTitleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
			
			priceLabel.topAnchor.constraint(equalTo: englishTitleLabel.bottomAnchor),
			priceLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
			priceLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
			
			discountPriceLabel.topAnchor.constraint(equalTo: priceLabel.bottomAnchor),
			discountPriceLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
			discountPriceLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
		])
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
