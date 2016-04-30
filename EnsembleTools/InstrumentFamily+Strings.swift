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
    public class String: InstrumentFamily {
        
        public static let Violin: EnumKind = .Violin
        public static let Viola: EnumKind = .Viola
        public static let Violoncello: EnumKind = .Violoncello
        public static let Contrabass: EnumKind = .Contrabass
        public static let Guitar: EnumKind = .Guitar
        
        public override class var members: [EnumKind] {
            return [ Violin, Viola, Violoncello, Contrabass, Guitar ]
        }
    }
}
