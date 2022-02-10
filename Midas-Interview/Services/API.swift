//
//  API.swift
//  Midas-Interview
//
//  Created by Aldino Efendi on 2022/02/10.
//

import UIKit

let url = "https://midas-be-task.herokuapp.com/midas/config/v1/foodDelivery/dataContent?version=1"

class APIService {
	
	static let instance = APIService()
	
	func fetch<T: Decodable>(
		type: T.Type,
		completion: @escaping (Result<T, Error>) -> ()
	) {
		guard let url = URL(string: url) else { return }
		
		URLSession.shared.dataTask(with: url) { data, response, error in
			
			guard error == nil else { return }
			guard let data = data else { return }
			
			do {
				let decoded = try JSONDecoder().decode(T.self, from: data)
				DispatchQueue.main.async {
					completion(.success(decoded))
				}
			} catch let err {
				DispatchQueue.main.async {
					completion(.failure(err))
				}
			}
		}.resume()
		
	}
	
}

class MenuViewModel: ObservableObject {
	@Published var items = [Menu]()
	
	func fetch() {
		guard let url = URL(string: url) else { return }
		
		URLSession.shared.dataTask(with: url) { data, response, error in
			do {
				if let data = data {
					let result = try JSONDecoder().decode([Menu].self, from: data)
					DispatchQueue.main.async {
						self.items = result
					}
				}
			} catch let error {
				print("Error: \(error.localizedDescription)")
			}
		}
		
	}
}
