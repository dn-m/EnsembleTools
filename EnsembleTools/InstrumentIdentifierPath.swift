//
//  InstrumentIdentifierPath.swift
//  EnsembleTools
//
//  Created by James Bean on 3/16/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Foundation
import DictionaryTools

public class InstrumentIdentifierPath: KeyPath {
    
    public let performerID: PerformerID
    public let instrumentID: InstrumentID
    
    public init(_ performerID: PerformerID, _ instrumentID: InstrumentID) {
        self.performerID = performerID
        self.instrumentID = instrumentID
        super.init([performerID, instrumentID])
    }
}