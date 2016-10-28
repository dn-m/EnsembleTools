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
        XCTAssert(InstrumentFamily.String.has(.violin))
    }
    
    func testFluteHasAlto() {
        XCTAssert(InstrumentFamily.Woodwind.Flute.has(.altoFlute))
    }
    
    func testStringHasAltoFalse() {
        XCTAssertFalse(InstrumentFamily.String.has(.altoFlute))
    }
}
