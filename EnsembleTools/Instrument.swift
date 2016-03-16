//
//  Instrument.swift
//  EnsembleTools
//
//  Created by James Bean on 3/16/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Foundation
import DictionaryTools

public struct Instrument {
    
    public let identifierPath: InstrumentIdentifierPath
    public let kind: InstrumentKind
    
    public init(identifierPath: InstrumentIdentifierPath, kind: InstrumentKind) {
        self.identifierPath = identifierPath
        self.kind = kind
    }
}

extension Instrument: Equatable { }

public func == (lhs: Instrument, rhs: Instrument) -> Bool {
    return lhs.identifierPath == rhs.identifierPath && lhs.kind == rhs.kind
}
