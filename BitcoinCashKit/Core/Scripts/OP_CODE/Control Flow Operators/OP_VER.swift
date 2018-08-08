//
//  OP_VER.swift
//  BitcoinCashKit
//
//  Created by Shun Usami on 2018/08/08.
//  Copyright © 2018 BitcoinCashKit developers. All rights reserved.
//

import Foundation

public struct OpVer: OpCodeProtocol {
    public var value: UInt8 { return 0x62 }
    public var name: String { return "OP_VER" }

    public func mainProcess(_ context: ScriptExecutionContext) throws {
    }
}
