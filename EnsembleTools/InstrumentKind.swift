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
    
    case Violin
    case Viola
    case Violoncello
    case Contrabass
    case Guitar
    
    // MARK: - Woodwind
    
    // MARK: Flute
    
    case Flute_Piccolo
    case Flute_C
    case Flute_Alto
    case Flute_Bass
    case Flute_Contrabass
    
    // MARK: Clarinet
    
    case Clarinet_Bflat
    case Clarinet_A
    case Clarinet_Bass
    case Clarinet_Contrabass
    
    // MARK: Oboe
    
    case Oboe
    case Oboe_dAmore
    case English_Horn
    case Bassoon
    
    // MARK: Saxophone
    
    case Saxophone_Sopranino
    case Saxophone_Soprano
    case Saxophone_Alto
    case Saxophone_Tenor
    case Saxophone_Baritone
    case Saxophone_Bass
    case Saxophone_Contrabass
    
    // MARK: - Brass
    
    // MARK: Trumpet
    
    case Trumpet_Bflat
    case Trumpet_C
    
    // MARK: Trombone
    
    case Trombone_Bflat
    case Trombone_F
    
    // MARK: Horn
    
    case Horn
    
    // MARK: Tuba
    
    case Euphonium
    case Tuba
    
    // MARK: - Percussion
    
    case Percussion_Skin
    case Percussion_Metal
    case Percussion_Wood
    
    // MARK: - Keyboard
    
    case Keyboard_Piano
    
    // MARK: - Generic
    
    case ContinuousController
    case BinarySwitch
    case MultiStateSwitch
    case Trigger
    
    // MARK: - Virtual
    
    case Waveform
}