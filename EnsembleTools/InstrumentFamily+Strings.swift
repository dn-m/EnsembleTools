//
//  InstrumentFamily+Strings.swift
//  EnsembleTools
//
//  Created by James Bean on 3/16/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Foundation

extension InstrumentFamily {
    
    /// Model of the string instrument family.
    open class String: EnumFamily {
        
        open static let Violin: EnumKind = .Violin
        open static let Viola: EnumKind = .Viola
        open static let Violoncello: EnumKind = .Violoncello
        open static let Contrabass: EnumKind = .Contrabass
        open static let Guitar: EnumKind = .Guitar
        
        open override class var members: [EnumKind] {
            return [ Violin, Viola, Violoncello, Contrabass, Guitar ]
        }
    }
}
