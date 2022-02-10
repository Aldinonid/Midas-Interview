//
//  TableViewCell.swift
//  Midas-Interview
//
//  Created by Aldino Efendi on 2022/02/10.
//

import UIKit

class MenuCell: UITableViewCell {

	static let identifier = "ShopCell"
	
	let menuNameLabel: UILabel = {
		let label = UILabel()
		label.text = "Title: "
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let indTitleLabel: UILabel = {
		let label = UILabel()
		label.text = "Ind: "
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let engLabel: UILabel = {
		let label = UILabel()
		label.text = "Eng: "
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let priceTitleLabel: UILabel = {
		let label = UILabel()
		label.text = "Price: "
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let discLabel: UILabel = {
		let label = UILabel()
		label.text = "Discount: "
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let titleLabel: UILabel = {
		let label = UILabel()
		label.numberOfLines = 0
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let indonesianTitleLabel: UILabel = {
		let label = UILabel()
		label.numberOfLines = 0
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let englishTitleLabel: UILabel = {
		let label = UILabel()
		label.numberOfLines = 0
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
//		contentView.addSubview(image)
		contentView.addSubview(menuNameLabel)
		contentView.addSubview(indTitleLabel)
		contentView.addSubview(engLabel)
		contentView.addSubview(priceTitleLabel)
		contentView.addSubview(discLabel)
		contentView.addSubview(titleLabel)
		contentView.addSubview(indonesianTitleLabel)
		contentView.addSubview(englishTitleLabel)
		contentView.addSubview(priceLabel)
		contentView.addSubview(discountPriceLabel)
	}
	
	func constraints() {
		NSLayoutConstraint.activate([
//			image.topAnchor.constraint(equalTo: contentView.topAnchor),
//			image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
//			image.heightAnchor.constraint(equalToConstant: 100),
//			image.widthAnchor.constraint(equalToConstant: 100),
			
			menuNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
			menuNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
			
			titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
			titleLabel.leadingAnchor.constraint(equalTo: menuNameLabel.trailingAnchor),
			titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
			
			indTitleLabel.topAnchor.constraint(equalTo: menuNameLabel.bottomAnchor, constant: 8),
			indTitleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
			
			indonesianTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
			indonesianTitleLabel.leadingAnchor.constraint(equalTo: indTitleLabel.trailingAnchor, constant: 15),
			indonesianTitleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
			
			engLabel.topAnchor.constraint(equalTo: indonesianTitleLabel.bottomAnchor, constant: 8),
			engLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
			
			englishTitleLabel.topAnchor.constraint(equalTo: indonesianTitleLabel.bottomAnchor, constant: 8),
			englishTitleLabel.leadingAnchor.constraint(equalTo: engLabel.trailingAnchor, constant: 20),
			englishTitleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
			
			priceTitleLabel.topAnchor.constraint(equalTo: englishTitleLabel.bottomAnchor, constant: 8),
			priceTitleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
			
			priceLabel.topAnchor.constraint(equalTo: englishTitleLabel.bottomAnchor, constant: 8),
			priceLabel.leadingAnchor.constraint(equalTo: priceTitleLabel.trailingAnchor),
			priceLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
			
			discLabel.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 8),
			discLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
			
			discountPriceLabel.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 8),
			discountPriceLabel.leadingAnchor.constraint(equalTo: discLabel.trailingAnchor),
			discountPriceLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
		])
	}
	
	func updateCell(menu: Menu) {
		image.image = UIImage(named: menu.image)
		titleLabel.text = menu.title
		indonesianTitleLabel.text = menu.ind
		englishTitleLabel.text = menu.eng
		priceLabel.text = "\(menu.price)"
		discountPriceLabel.text = "\(menu.price)"
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
