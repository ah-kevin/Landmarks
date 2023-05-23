//
//  ModelData.swift
//  Landmarks
//
//  Created by bjke on 2023/5/23.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")
// 创建一个 load(_:) 方法，从应用程序的主要捆绑包中获取给定名称的 JSON 数据。
// 加载方法依赖于返回类型符合 Decodable 协议，这是 Codable 协议的一个组成部分。
func load<T: Decodable>(_ filename: String) -> T {
  let data: Data

  guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
  else {
    fatalError("Couldn't find \(filename) in main bundle.")
  }

  do {
    data = try Data(contentsOf: file)
  } catch {
    fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
  }

  do {
    let decoder = JSONDecoder()
    return try decoder.decode(T.self, from: data)
  } catch {
    fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
  }
}
