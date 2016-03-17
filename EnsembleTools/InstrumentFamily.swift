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
public class InstrumentFamily: EnumTree {
    
    // MARK: - Associated Types
    
    public typealias EnumKind = InstrumentKind
    public typealias EnumFamily = InstrumentFamily
    
    // MARK: - Type Properties
 
    /// Members of `InstrumentFamily`.
    public static var members: [EnumKind] { return getMembers() }
    
    /// SubFamilies of `InstrumentFamily`.
    public static var subFamilies: [InstrumentFamily.Type] { return getSubFamilies() }
    
    public class func getMembers() -> [InstrumentKind] {
        return []
    }
    
    public class func getSubFamilies() -> [InstrumentFamily.Type] {
        return []
    }
}
