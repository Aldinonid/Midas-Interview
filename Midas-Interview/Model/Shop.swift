//
//  Shop.swift
//  Midas-Interview
//
//  Created by Aldino Efendi on 2022/02/10.
//

import Foundation

struct ShopRespond: Decodable {
	var payload: [Shop]
}

struct Shop: Decodable {
	var code: Int
	var shopName: String
	var address: String
	var image: String
	var menus: [Menu]
}
