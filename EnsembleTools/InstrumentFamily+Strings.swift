//
//  InstrumentFamily+Strings.swift
//  EnsembleTools
//
//  Created by James Bean on 3/16/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Foundation

extension InstrumentFamily {
    
    public class Strings: InstrumentFamily {
        
        public class override func getMembers() -> [InstrumentKind] {
            return [ Violin, Viola, Violoncello, Contrabass, Guitar ]
        }
        
        public static let Violin: InstrumentKind = .Violin
        public static let Viola: InstrumentKind = .Viola
        public static let Violoncello: InstrumentKind = .Violoncello
        public static let Contrabass: InstrumentKind = .Contrabass
        public static let Guitar: InstrumentKind = .Guitar
    }
}