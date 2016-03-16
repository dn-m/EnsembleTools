//
//  InstrumentFamily.swift
//  EnsembleTools
//
//  Created by James Bean on 3/16/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Foundation

public class InstrumentFamily {
    
    public static var members: [InstrumentKind] { return getMembers() }
    
    public static var subFamilies: [InstrumentFamily.Type] { return getSubFamilies() }
    
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