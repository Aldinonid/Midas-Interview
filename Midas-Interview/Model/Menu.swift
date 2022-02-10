//
//  Menu.swift
//  Midas-Interview
//
//  Created by Aldino Efendi on 2022/02/10.
//

import Foundation

struct Menu: Decodable {
	var code: Int
	var title: String
	var ind: String
	var eng: String
	var price: Int
	var discPrice: Int
	var image: String
}
