//
//  InstrumentFamilyTests.swift
//  EnsembleTools
//
//  Created by James Bean on 3/16/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import XCTest
import EnumTools
@testable import EnsembleTools

class InstrumentFamilyTests: XCTestCase {
    
    func testStringHasViolinTrue() {
        XCTAssert(InstrumentFamily.String.has(.Violin))
    }
    
    func testFluteHasAlto() {
        XCTAssert(InstrumentFamily.Woodwind.Flute.has(.Flute_Alto))
    }
    
    func testStringHasAltoFalse() {
        XCTAssertFalse(InstrumentFamily.String.has(.Flute_Alto))
    }
}
