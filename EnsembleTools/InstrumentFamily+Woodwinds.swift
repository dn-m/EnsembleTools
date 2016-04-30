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
    public class Woodwind: InstrumentFamily {
        
        /// Model of the flute instrument family.
        public class Flute: InstrumentFamily {
            public static let Piccolo: EnumKind = .Flute_Piccolo
            public static let C: EnumKind = .Flute_C
            public static let Alto: EnumKind = .Flute_Alto
            public static let Bass: EnumKind = .Flute_Bass
            public static let Contrabass: EnumKind = .Flute_Contrabass
            
            public override class var members: [EnumKind] {
                return [Piccolo, C, Alto, Bass, Contrabass]
            }
        }
        
        /// Model of the clarinet instrument family.
        public class Clarinet: InstrumentFamily {
            public static let Bflat: EnumKind = .Clarinet_Bflat
            public static let A: EnumKind = .Clarinet_A
            public static let Bass: EnumKind = .Clarinet_Bass
            public static let Contrabass: EnumKind = .Clarinet_Contrabass
            
            public override class var members:  [EnumKind] {
                return [Bflat, A, Bass, Contrabass]
            }
        }
        
        /// Model of the double reed instrument family.
        public class DoubleReed: InstrumentFamily {
            public static let Oboe: EnumKind = .Oboe
            public static let Oboe_dArmore: EnumKind = .Oboe_dAmore
            public static let English_Horn: EnumKind = .English_Horn
            public static let Bassoon: EnumKind = .Bassoon
            
            public override class var members:  [EnumKind] {
                return [Oboe, Oboe_dArmore, English_Horn, Bassoon]
            }
        }
        
        /// Model of the saxophone instrument family.
        public class Saxophone: InstrumentFamily {
            public static let Sopranino: EnumKind = .Saxophone_Sopranino
            public static let Soprano: EnumKind = .Saxophone_Soprano
            public static let Alto: EnumKind = .Saxophone_Alto
            public static let Baritone: EnumKind = .Saxophone_Baritone
            public static let Bass: EnumKind = .Saxophone_Bass
            public static let Contrabass: EnumKind = .Saxophone_Contrabass
            
            public override class var members:  [EnumKind] {
                return [Sopranino, Soprano, Alto, Baritone, Bass, Contrabass]
            }
        }

        public override class var subFamilies: [InstrumentFamily.Type] {
            return [
                Flute.self,
                Clarinet.self,
                DoubleReed.self,
                Saxophone.self,
            ]
        }
    }
}
