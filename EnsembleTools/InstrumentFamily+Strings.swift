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
        
        open static let violin: EnumKind = .violin
        open static let viola: EnumKind = .viola
        open static let violoncello: EnumKind = .violoncello
        open static let contrabass: EnumKind = .contrabass
        open static let guitar: EnumKind = .guitar
        
        open override class var members: [EnumKind] {
            return [ violin, viola, violoncello, contrabass, guitar ]
        }
    }
}
