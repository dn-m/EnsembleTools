//
//  InstrumentFamily+Brass.swift
//  EnsembleTools
//
//  Created by James Bean on 3/16/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Foundation

/**
 - warning: Not fully implemented!
 */
public class Brass: InstrumentFamily {
    
    public class Trumpets: InstrumentFamily {
        public static let Bflat: InstrumentKind = .Trumpet_Bflat
        public static let C: InstrumentKind = .Trumpet_C
        
        internal override class func getMembers() -> [InstrumentKind] {
            return [Bflat, C]
        }
    }
    
    internal override class func getSubFamilies() -> [InstrumentFamily.Type] {
        return [Trumpets.self]
    }
}