//
//  Instrument.swift
//  EnsembleTools
//
//  Created by James Bean on 3/16/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Foundation
import DictionaryTools

/**
 Model of a physical instrument being played by a `Performer`.
 */
public struct Instrument {
    
    // MARK: - Instance Properties
    
    /// `InstrumentIdentifierPath` of `Instrument`.
    public let identifierPath: InstrumentIdentifierPath
    
    /// `InstrumentKind` of `Instrument`.
    public let kind: InstrumentKind
    
    // MARK: - Initializers
    
    /**
     Create an `Instrument`.
     */
    public init(identifierPath: InstrumentIdentifierPath, kind: InstrumentKind) {
        self.identifierPath = identifierPath
        self.kind = kind
    }
}

extension Instrument: Equatable { }

public func == (lhs: Instrument, rhs: Instrument) -> Bool {
    return lhs.identifierPath == rhs.identifierPath && lhs.kind == rhs.kind
}
