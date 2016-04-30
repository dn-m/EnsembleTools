//
//  InstrumentFamily+Brass.swift
//  EnsembleTools
//
//  Created by James Bean on 3/16/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Foundation

extension InstrumentFamily {
    
    /**
     Model of the brass instrument family.
     
     - warning: Not fully implemented!
     */
    public class Brass: EnumFamily {
        
        /**
         Model of the trumpet instrument family.
         
         - warning: Not fully implemented!
         */
        public class Trumpet: EnumFamily {
            
            public static let Bflat: EnumKind = .Trumpet_Bflat
            public static let C: EnumKind = .Trumpet_C
            
            public override class var members: [EnumKind] { return [Bflat, C] }
        }
        
        public override class var subFamilies: [EnumFamily.Type] {
            return [Trumpet.self]
        }
    }
}
