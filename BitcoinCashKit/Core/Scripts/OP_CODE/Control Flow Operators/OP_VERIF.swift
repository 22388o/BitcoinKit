//
//  OP_VERIF.swift
//  BitcoinCashKit
//
//  Created by Shun Usami on 2018/08/08.
//  Copyright © 2018 BitcoinCashKit developers. All rights reserved.
//

import Foundation

public struct OpVerIf: OpCodeProtocol {
    public var value: UInt8 { return 0x65 }
    public var name: String { return "OP_VERIF" }
    
    public func mainProcess(_ context: ScriptExecutionContext) throws {
    }
}
