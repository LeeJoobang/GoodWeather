//
//  WebService.swift
//  GoodWeather
//
//  Created by Joobang on 2023/04/07.
//

import Foundation

struct Resource<T>{
    let url: URL
    let parse: (Data) -> T?
    
}

final class WebService {
    func load<T>(resource: Resource<T>, completion: @escaping (T?) -> ()){
        URLSession.shared.dataTask(with: resource.url) { data, response, error in
            
            print(data)

            if let data = data {
                //데이터 파싱 이후 ui - mainthread에서 진행해야 함.
                DispatchQueue.main.async {
                    completion(resource.parse(data))
                }
            } else {
                completion(nil)
            }
            
        }.resume() // very important
    }
}
