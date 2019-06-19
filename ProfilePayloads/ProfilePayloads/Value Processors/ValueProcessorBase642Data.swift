//
//  ValueProcessorBase642Data.swift
//  ProfilePayloads
//
//  Created by Erik Berglund.
//  Copyright © 2018 Erik Berglund. All rights reserved.
//

import Foundation

public class PayloadValueProcessorBase642Data: PayloadValueProcessor {

    override func string(fromData data: Data) -> String? {
        return data.base64EncodedString()
    }

    override func data(fromString string: String) -> Data? {
        return Data(base64Encoded: string, options: .ignoreUnknownCharacters)
    }
}
