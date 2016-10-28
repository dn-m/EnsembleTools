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
    open class Brass: EnumFamily {
        
        /**
         Model of the trumpet instrument family.
         
         - warning: Not fully implemented!
         */
        open class Trumpet: EnumFamily {
            
            open static let Bflat: EnumKind = .Trumpet_Bflat
            open static let C: EnumKind = .Trumpet_C
            
            open override class var members: [EnumKind] { return [Bflat, C] }
        }
        
        open override class var subFamilies: [EnumFamily.Type] {
            return [Trumpet.self]
        }
    }
}
