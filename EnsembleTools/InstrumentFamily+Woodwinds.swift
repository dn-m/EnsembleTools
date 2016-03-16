//
//  InstrumentFamily+Woodwinds.swift
//  EnsembleTools
//
//  Created by James Bean on 3/16/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Foundation


extension InstrumentFamily {
    
    public class Woodwinds: InstrumentFamily {
        
        public class Flutes: InstrumentFamily {
            public static let Piccolo: InstrumentKind = .Flute_Piccolo
            public static let C: InstrumentKind = .Flute_C
            public static let Alto: InstrumentKind = .Flute_Alto
            public static let Bass: InstrumentKind = .Flute_Bass
            public static let Contrabass: InstrumentKind = .Flute_Contrabass
            
            internal override class func getMembers() -> [InstrumentKind] {
                return [Piccolo, C, Alto, Bass, Contrabass]
            }
        }
        
        public class Clarinets: InstrumentFamily {
            public static let Bflat: InstrumentKind = .Clarinet_Bflat
            public static let A: InstrumentKind = .Clarinet_A
            public static let Bass: InstrumentKind = .Clarinet_Bass
            public static let Contrabass: InstrumentKind = .Clarinet_Contrabass
            
            internal override class func getMembers() -> [InstrumentKind] {
                return [Bflat, A, Bass, Contrabass]
            }
        }
        
        public class DoubleReeds: InstrumentFamily {
            public static let Oboe: InstrumentKind = .Oboe
            public static let Oboe_dArmore: InstrumentKind = .Oboe_dAmore
            public static let English_Horn: InstrumentKind = .English_Horn
            public static let Bassoon: InstrumentKind = .Bassoon
            
            internal override class func getMembers() -> [InstrumentKind] {
                return [Oboe, Oboe_dArmore, English_Horn, Bassoon]
            }
        }
        
        public class Saxophones: InstrumentFamily {
            public static let Sopranino: InstrumentKind = .Saxophone_Sopranino
            public static let Soprano: InstrumentKind = .Saxophone_Soprano
            public static let Alto: InstrumentKind = .Saxophone_Alto
            public static let Baritone: InstrumentKind = .Saxophone_Baritone
            public static let Bass: InstrumentKind = .Saxophone_Bass
            public static let Contrabass: InstrumentKind = .Saxophone_Contrabass
            
            internal override class func getMembers() -> [InstrumentKind] {
                return [Sopranino, Soprano, Alto, Baritone, Bass, Contrabass]
            }
        }
        
        internal override class func getSubFamilies() -> [InstrumentFamily.Type] {
            return [
                Flutes.self,
                Clarinets.self,
                DoubleReeds.self,
                Saxophones.self,
            ]
        }
    }
}
