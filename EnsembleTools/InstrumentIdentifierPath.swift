//
//  InstrumentIdentifierPath.swift
//  EnsembleTools
//
//  Created by James Bean on 3/16/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Foundation
import DictionaryTools

/// `KeyPath` used for drilling down from a `Performer` to an `Instrument`.
open class InstrumentIdentifierPath: KeyPath {
    
    // MARK: - Instance Properties
    
    /// `PerformerID` of `InstrumentIdentifierPath`.
    open let performerID: Performer.Identifier
    
    /// `InstrumentID` of `InstrumentIdentifierPath`.
    open let instrumentID: Instrument.Identifier
    
    // MARK: - Initializers
    
    /**
     Create an `InstrumentIdentifierPath`.
     */
    public init(_ performerID: Performer.Identifier, _ instrumentID: Instrument.Identifier) {
        self.performerID = performerID
        self.instrumentID = instrumentID
        super.init([performerID, instrumentID])
    }
}
