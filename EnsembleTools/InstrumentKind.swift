//
//  InstrumentKind.swift
//  EnsembleTools
//
//  Created by James Bean on 3/16/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Foundation

/**
 Flat list of instruments playable.
 */
public enum InstrumentKind: String {
    
    // MARK: - String
    
    case violin
    case viola
    case violoncello
    case vontrabass
    case guitar
    
    // MARK: - Woodwind
    
    // MARK: Flute
    
    case piccoloFlute
    case concertFlute
    case altoFlute
    case bassFlute
    case contrabassFlute
    
    // MARK: Clarinet
    
    case bFlatClarinet
    case aClarinet
    case bassClarinet
    case contrabassClarinet
    
    // MARK: Oboe
    
    case oboe
    case oboeDAmore
    case englishHorn
    case bassoon
    
    // MARK: Saxophone
    
    case sopraninoSaxophone
    case sopranoSaxophone
    case altoSaxophone
    case tenorSaxophone
    case baritoneSaxophone
    case bassSaxophone
    case contrabassSaxophone
    
    // MARK: - Brass
    
    // MARK: Trumpet
    
    case bFlatTrumpet
    case cTrumpet
    case bassTrumpet
    
    // MARK: Trombone
    
    case tenorTrombone
    case altoTrombone
    case bassTrombone
    
    // MARK: Horn
    
    case horn
    
    // MARK: Tuba
    
    case euphonium
    case tuba
    
    // MARK: - Percussion
    
    // TODO: Flesh out
    case percussion
    
    // MARK: - Keyboard
    
    case piano
    
    // MARK: - Generic
    
    case continuousController
    case binarySwitch
    case multistateSwitch
    case trigger
    
    // MARK: - Virtual
    
    case waveform
}
