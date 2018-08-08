//
//  OP_RIPEMD160.swift
//  BitcoinCashKit
//
//  Created by Shun Usami on 2018/08/09.
//  Copyright © 2018 BitcoinCashKit developers. All rights reserved.
//

import Foundation

// The input is hashed using RIPEMD-160.
public struct OpRipemd160: OpCodeProtocol {
    public var value: UInt8 { return 0xa6 }
    public var name: String { return "OP_RIPEMD160" }

    // input : in
    // output : hash
    public func mainProcess(_ context: ScriptExecutionContext) throws {
        try context.assertStackHeightGreaterThan(1)

        let data: Data = context.stack.removeLast()
         let hash: Data = Crypto.ripemd160(data)
        context.stack.append(hash)
    }
}
