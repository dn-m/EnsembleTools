//
//  InstrumentFamily.swift
//  EnsembleTools
//
//  Created by James Bean on 3/16/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Foundation

/** 
 Hierarchical model of families of instruments.
 
 >`InstrumentFamily.Woodwinds.Flutes.Alto`
 */
public class InstrumentFamily {
    
    // MARK: - Type Properties
    
    /// Members of `InstrumentFamily`.
    public static var members: [InstrumentKind] { return getMembers() }
    
    /// SubFamilies of `InstrumentFamily`.
    public static var subFamilies: [InstrumentFamily.Type] { return getSubFamilies() }
    
    /**
     - returns: `true` if `instrumentKind` is a leaf element of `InstrumentFamily`. Otherwise `false`.
     */
    public static func has(instrumentKind: InstrumentKind) -> Bool {
        if members.contains(instrumentKind) { return true }
        for family in subFamilies { if family.has(instrumentKind) { return true } }
        return false
    }
    
    internal class func getMembers() -> [InstrumentKind] {
        return []
    }
    
    internal class func getSubFamilies() -> [InstrumentFamily.Type] {
        return []
    }
}