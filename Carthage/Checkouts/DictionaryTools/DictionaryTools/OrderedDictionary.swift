//
//  OrderedDictionary.swift
//  DictionaryTools
//
//  Created by James Bean on 2/23/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Foundation

/**
 Ordered Dictionary
 */
public struct OrderedDictionary<K: Hashable, V: Equatable> {
    
    // MARK: - Instance Variables
    
    /** 
     Keys.
     
     - note: Consider making `private`, or at least `internal`.
     */
    private var keys: [K] = []
    
    /**
     Values.
     
     - note: Consider making `private`, or at least `internal`.
     */
    private var values: [K: V] = [:]
    
    /// Amount of entries in `OrderedDictionary`
    public var count: Int { return keys.count }
    
    
    // MARK: - Initializers
    
    public init() { }
    
    // MARK: - Instance Methods
    
    /**
    Append value for key.
    
    - parameter value: Value to append to `OrderedDictionary`
    - parameter key:   Key for which to append Value
    */
    public mutating func append(value: V, forKey key: K) {
        keys.append(key)
        values[key] = value
    }
    
    /**
     Insert value for key, at a given index.
     
     - parameter value: Value to insert
     - parameter key:   Key for which to insert value
     - parameter index: Index at which to insert key
     */
    public mutating func insert(value: V, forKey key: K, atIndex index: Int) {
        keys.insert(key, atIndex: index)
        values[key] = value
    }
    
    /**
     Append the contents of another `OrderedDictionary`.
     
     - parameter orderedDictionary: `OrderedDictionary` to append.
     */
    public mutating func appendContents(of orderedDictionary: OrderedDictionary<K,V>) {
        keys.appendContentsOf(orderedDictionary.keys)
        for key in orderedDictionary.keys {
            values.updateValue(orderedDictionary[key]!, forKey: key)
        }
    }
}

// MARK: - Subscript

extension OrderedDictionary {
    
    /**
     Get the `Value` at a given `index`.
     
     - parameter index: Index for the desired `Value`
     
     - returns: `Value` at `index`, if available. Otherwise `nil`.
     */
    public subscript(index: Int) -> V? {
        if index >= keys.count { return nil }
        return values[keys[index]]
    }
    
    /**
     Get the `Value` for a given `key`.
     
     - parameter key: Key for the desired `Value`
     
     - returns: `Value for `key`, if available. Otherise `nil`.
     */
    public subscript(key: K) -> V? {
        
        get { return values[key] }
        
        set(newValue) {
            if newValue == nil {
                values.removeValueForKey(key)
                keys = keys.filter { $0 != key }
                return
            }
            
            let oldValue = values.updateValue(newValue!, forKey: key)
            if oldValue == nil { keys.append(key) }
        }
    }
}

// MARK: - Equatable

extension OrderedDictionary: Equatable { }

/**
 Check equality of two `OrderedDictionary` values.
 
 - parameter lhs: One `OrderedDictionary`
 - parameter rhs: Another `OrderedDictionary`
 
 - returns: `True` if all `Values` and `Keys` are equivalent. Otherwise `false`.
 */
public func == <K,V>(lhs: OrderedDictionary<K,V>, rhs: OrderedDictionary<K,V>) -> Bool {

    if lhs.keys != rhs.keys { return false }
    
    // for each lhs key, check if rhs has value for key, and if that value is the same
    for key in lhs.keys {
        if rhs.values[key] == nil || rhs.values[key]! != lhs.values[key]! { return false }
    }
    
    // do the same for rhs keys to lhs values
    for key in rhs.keys {
        if lhs.values[key] == nil || lhs.values[key]! != rhs.values[key]! { return false }
    }
    
    return true
}

// MARK: - SequenceType

extension OrderedDictionary: SequenceType {
    
    public func generate() -> AnyGenerator<(K,V)> {
        var zipped: [(K, V)] = []
        for key in keys { zipped.append((key, values[key]!)) }
        
        var index = 0
        return AnyGenerator {
            defer { index += 1 }
            if index < self.keys.count { return zipped[index] }
            return nil
        }
    }
}

// MARK: - CustomStringConvertible

extension OrderedDictionary: CustomStringConvertible {
    
    public var description: String {
        var result = "["
        for i in 0..<keys.count { result += "\n\t\(keys[i]): \(self[keys[i]]!)" }
        result += "\n]"
        return result
    }
}