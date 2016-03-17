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
            public static let Piccolo: InstrumentKind = .Flute_Piccolo
            public static let C: InstrumentKind = .Flute_C
            public static let Alto: InstrumentKind = .Flute_Alto
            public static let Bass: InstrumentKind = .Flute_Bass
            public static let Contrabass: InstrumentKind = .Flute_Contrabass
            
            public override class var members: [InstrumentKind] {
                return [Piccolo, C, Alto, Bass, Contrabass]
            }
        }
        
        /// Model of the clarinet instrument family.
        public class Clarinet: InstrumentFamily {
            public static let Bflat: InstrumentKind = .Clarinet_Bflat
            public static let A: InstrumentKind = .Clarinet_A
            public static let Bass: InstrumentKind = .Clarinet_Bass
            public static let Contrabass: InstrumentKind = .Clarinet_Contrabass
            
            public override class var members:  [InstrumentKind] {
                return [Bflat, A, Bass, Contrabass]
            }
        }
        
        /// Model of the double reed instrument family.
        public class DoubleReed: InstrumentFamily {
            public static let Oboe: InstrumentKind = .Oboe
            public static let Oboe_dArmore: InstrumentKind = .Oboe_dAmore
            public static let English_Horn: InstrumentKind = .English_Horn
            public static let Bassoon: InstrumentKind = .Bassoon
            
            public override class var members:  [InstrumentKind] {
                return [Oboe, Oboe_dArmore, English_Horn, Bassoon]
            }
        }
        
        /// Model of the saxophone instrument family.
        public class Saxophone: InstrumentFamily {
            public static let Sopranino: InstrumentKind = .Saxophone_Sopranino
            public static let Soprano: InstrumentKind = .Saxophone_Soprano
            public static let Alto: InstrumentKind = .Saxophone_Alto
            public static let Baritone: InstrumentKind = .Saxophone_Baritone
            public static let Bass: InstrumentKind = .Saxophone_Bass
            public static let Contrabass: InstrumentKind = .Saxophone_Contrabass
            
            public override class var members:  [InstrumentKind] {
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
