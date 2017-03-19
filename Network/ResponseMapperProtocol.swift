//
//  ResponseMapperProtocol.swift
//  NetworkLayerExample
//
//  Created by Alessio Roberto on 05/03/2017.
//  Copyright © 2017 Tomasz Szulc. All rights reserved.
//

<<<<<<< HEAD
=======
import Foundation

>>>>>>> develop
protocol ResponseMapperProtocol {
    associatedtype Item
    static func process(_ obj: Any?) throws -> Item
}
