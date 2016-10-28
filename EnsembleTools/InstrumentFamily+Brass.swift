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
            
            open static let bFlat: EnumKind = .bFlatTrumpet
            open static let c: EnumKind = .cTrumpet
            open static let bass: EnumKind = .bassTrumpet
            
            open override class var members: [EnumKind] { return [bFlat, c, bass] }
        }
        
        open override class var subFamilies: [EnumFamily.Type] {
            return [Trumpet.self]
        }
    }
}
