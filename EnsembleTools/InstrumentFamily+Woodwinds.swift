//
//  InstrumentFamily+Woodwinds.swift
//  EnsembleTools
//
//  Created by James Bean on 3/16/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Foundation

extension InstrumentFamily {
    
    /// Model of the woodwind instrument family.
    open class Woodwind: EnumFamily {
        
        /// Model of the flute instrument family.
        open class Flute: EnumFamily {
            open static let Piccolo: EnumKind = .Flute_Piccolo
            open static let C: EnumKind = .Flute_C
            open static let Alto: EnumKind = .Flute_Alto
            open static let Bass: EnumKind = .Flute_Bass
            open static let Contrabass: EnumKind = .Flute_Contrabass
            
            open override class var members: [EnumKind] {
                return [Piccolo, C, Alto, Bass, Contrabass]
            }
        }
        
        /// Model of the clarinet instrument family.
        open class Clarinet: EnumFamily {
            open static let Bflat: EnumKind = .Clarinet_Bflat
            open static let A: EnumKind = .Clarinet_A
            open static let Bass: EnumKind = .Clarinet_Bass
            open static let Contrabass: EnumKind = .Clarinet_Contrabass
            
            open override class var members:  [EnumKind] {
                return [Bflat, A, Bass, Contrabass]
            }
        }
        
        /// Model of the double reed instrument family.
        open class DoubleReed: EnumFamily {
            open static let Oboe: EnumKind = .Oboe
            open static let Oboe_dArmore: EnumKind = .Oboe_dAmore
            open static let English_Horn: EnumKind = .English_Horn
            open static let Bassoon: EnumKind = .Bassoon
            
            open override class var members:  [EnumKind] {
                return [Oboe, Oboe_dArmore, English_Horn, Bassoon]
            }
        }
        
        /// Model of the saxophone instrument family.
        open class Saxophone: EnumFamily {
            open static let Sopranino: EnumKind = .Saxophone_Sopranino
            open static let Soprano: EnumKind = .Saxophone_Soprano
            open static let Alto: EnumKind = .Saxophone_Alto
            open static let Baritone: EnumKind = .Saxophone_Baritone
            open static let Bass: EnumKind = .Saxophone_Bass
            open static let Contrabass: EnumKind = .Saxophone_Contrabass
            
            open override class var members:  [EnumKind] {
                return [Sopranino, Soprano, Alto, Baritone, Bass, Contrabass]
            }
        }

        open override class var subFamilies: [EnumFamily.Type] {
            return [
                Flute.self,
                Clarinet.self,
                DoubleReed.self,
                Saxophone.self,
            ]
        }
    }
}
