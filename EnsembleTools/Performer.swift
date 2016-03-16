//
//  Performer.swift
//  EnsembleTools
//
//  Created by James Bean on 3/16/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Foundation

public struct Performer {
    
    public let identifier: String
    public let fullName: String
    public let abbreviatedName: String
    public let instrumentKinds: [InstrumentKind]
    
    public init(
        identifier: String,
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