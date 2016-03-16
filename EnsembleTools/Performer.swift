//
//  Performer.swift
//  EnsembleTools
//
//  Created by James Bean on 3/16/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Foundation

/**
 Structure modeling a human musician, who may be playing `0...n` instruments
 */
public struct Performer {
    
    // MARK: - Typealiases
    
    public typealias Identifier = String
    
    // MARK: - Instance Properties
    
    /// Identifier of `Performer`.
    public let identifier: Identifier
    
    /// Full name of `Performer`.
    public let fullName: String
    
    /// Abbreviated name of `Performer`.
    public let abbreviatedName: String
    
    /// Array of `InstrumentKind` played by `Performer`.
    public let instrumentKinds: [InstrumentKind]
    
    // MARK: - Initializers
    
    /**
     Create a `Performer`.
     */
    public init(
        identifier: Identifier,
        fullName: String? = nil,
        abbreviatedName: String? = nil,
        instrumentKinds: [InstrumentKind]
    )
    {
        self.identifier = identifier
        self.fullName = fullName ?? identifier
        self.abbreviatedName = abbreviatedName ?? identifier
        self.instrumentKinds = instrumentKinds
    }
}

extension Performer: Equatable { }

public func == (lhs: Performer, rhs: Performer) -> Bool {
    return lhs.identifier == rhs.identifier && lhs.instrumentKinds == rhs.instrumentKinds
}