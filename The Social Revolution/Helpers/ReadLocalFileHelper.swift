//
//  ReadLocalFileHelper.swift
//  The Social Revolution
//
//  Created by Karim Elgendy on 15/02/2021.
//

import Foundation

struct ReadLocalFileHelper {
    /// Reads a local json file into a Data object & converts the data to the type specified at call
    /// - Parameter fileName: The name of the json file
    /// - Returns: A model of type T, where T is specified in the instantiation of the property calling this method. Otherwise, returns nil (in case of failure).
    static func readJsonFile<T: Codable>(with fileName: String) -> T? {
        if let path = Bundle.main.path(forResource: fileName, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                return ModelParserHelper.parse(with: data)
            } catch (let err) {
                print("Problem decoding the file specified\n", err)
            }
        } else {
            print("File not found: ", fileName)
        }
        
        return nil
    }
}
