//
//  AddressFactory.swift
//  BitcoinKit
//
//  Created by Shun Usami on 2018/07/03.
//  Copyright © 2018 Shun Usami
//  Copyright © 2018 BitcoinCashKit developers
//  Licensed under the Apache License, Version 2.0 (the "License");
//  You may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
//  This file has been modified by the BitcoinCashKit developers for the BitcoinCashKit project.
//  The original file was from the bitcoinj project (https://github.com/kishikawakatsumi/BitcoinKit).
//

import Foundation

public struct AddressFactory {
    public static func create(_ plainAddress: String) throws -> Address {
        do {
            return try Cashaddr(plainAddress)
        } catch AddressError.invalidVersionByte {
            throw AddressError.invalidVersionByte
        } catch AddressError.wrongNetwork {
            throw AddressError.wrongNetwork
        } catch AddressError.invalid {
            return try LegacyAddress(plainAddress)
        }
    }
}
