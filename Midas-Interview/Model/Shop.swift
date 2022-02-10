//
//  Shop.swift
//  Midas-Interview
//
//  Created by Aldino Efendi on 2022/02/10.
//

import Foundation

struct ShopRespond1: Decodable {
	var payload: [ShopRespond2]
}

struct ShopRespond2: Decodable {
	var shop: [Shop]
}

struct Shop: Decodable {
	var code: Int
	var shopName: String
	var address: String
	var image: String
	var Menus: [Menu]
}
