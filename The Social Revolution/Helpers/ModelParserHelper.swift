//
//  ModelParserHelper.swift
//  The Social Revolution
//
//  Created by Karim Elgendy on 15/02/2021.
//

import Foundation

struct ModelParserHelper<T: Decodable> {
    /// Converts Data type to specified type T
    /// - Parameter data: The Data to convert
    /// - Returns: The model required by the caller or nil if failure to convert data to model.
    static func parse(with data: Data) -> T? {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        do {
            return try decoder.decode(T.self, from: data)
        } catch (let err) {
            print("Decoding failed: \n", err)
            return nil
        }
        
    }
}
