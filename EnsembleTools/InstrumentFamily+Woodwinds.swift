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
            open static let piccolo: EnumKind = .piccoloFlute
            open static let c: EnumKind = .concertFlute
            open static let alto: EnumKind = .altoFlute
            open static let bass: EnumKind = .bassFlute
            open static let contrabass: EnumKind = .contrabassFlute
            
            open override class var members: [EnumKind] {
                return [piccolo, c, alto, bass, contrabass]
            }
        }
        
        /// Model of the clarinet instrument family.
        open class Clarinet: EnumFamily {
            open static let bFlat: EnumKind = .bFlatClarinet
            open static let a: EnumKind = .aClarinet
            open static let bass: EnumKind = .bassClarinet
            open static let contrabass: EnumKind = .contrabassClarinet
            
            open override class var members:  [EnumKind] {
                return [bFlat, a, bass, contrabass]
            }
        }
        
        /// Model of the double reed instrument family.
        open class DoubleReed: EnumFamily {
            open static let oboe: EnumKind = .oboe
            open static let oboeDAmore: EnumKind = .oboeDAmore
            open static let englishHorn: EnumKind = .englishHorn
            open static let bassoon: EnumKind = .bassoon
            
            open override class var members:  [EnumKind] {
                return [oboe, oboeDAmore, englishHorn, bassoon]
            }
        }
        
        /// Model of the saxophone instrument family.
        open class Saxophone: EnumFamily {
            open static let sopranino: EnumKind = .sopraninoSaxophone
            open static let soprano: EnumKind = .sopranoSaxophone
            open static let alto: EnumKind = .altoSaxophone
            open static let baritone: EnumKind = .baritoneSaxophone
            open static let bass: EnumKind = .bassSaxophone
            open static let contrabass: EnumKind = .contrabassSaxophone
            
            open override class var members:  [EnumKind] {
                return [sopranino, soprano, alto, baritone, bass, contrabass]
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
