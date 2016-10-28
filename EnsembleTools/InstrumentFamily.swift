//
//  InstrumentFamily.swift
//  EnsembleTools
//
//  Created by James Bean on 3/16/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Foundation
import EnumTools

/** 
 Hierarchical model of families of instruments.
 
 >`InstrumentFamily.Woodwinds.Flutes.Alto`
 */
open class InstrumentFamily: EnumTree {
    
    // MARK: - Associated Types
    
    public typealias EnumKind = InstrumentKind
    public typealias EnumFamily = InstrumentFamily
    
    // MARK: - Type Properties
 
    /// Members of `InstrumentFamily`.
    open class var members: [EnumKind] { return [] }
    
    /// SubFamilies of `InstrumentFamily`.
    open class var subFamilies: [EnumFamily.Type] { return [] }
    
    // clef and transposition contexts
}
