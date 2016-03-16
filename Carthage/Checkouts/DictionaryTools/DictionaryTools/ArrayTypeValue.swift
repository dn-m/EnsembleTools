//
//  ArrayTypeValue.swift
//  DictionaryTools
//
//  Created by James Bean on 2/22/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import Foundation

public extension Dictionary where Value: _ArrayType {

    // MARK: - [Hashable: [Any]]
    
    /**
     Ensure that an `Array` value exists for `key`:
        
     - No action taken if an `Array` value exists for `key`.
     
     >`["key": [1,2,3]].ensureValueFor("key") -> ["key": [1,2,3]]`
     
     - If no value exists for `key`, an empty `Array` is added for the value `key`.
     
     >`["key": [1,2,3]].ensureValueFor("newKey") -> ["key": [1,2,3], "newKey": []]`
     
     - note: Update to `ensureValue(for key: Key)` when updating to Swift 2.0
    
     - parameter key: `Key`
     */
    mutating func ensureValue(forKey key: Key) {
        if self[key] == nil { self[key] = [] }
    }
    
    /**
     Safely append value to the `Array` `Value` for `key`
     
     >`["key": [1,2]].safelyAppend(3, toArrayWithKey: "key") -> ["key": [1,2,3]]`
     
     >`[:].safelyAppend(0, toArrayWithKey: "key") -> ["key: [0]"]`
     
     - parameter value: Value to append
     - parameter key:   Key for Array to append to
     */
    mutating func safelyAppend(value: Value.Generator.Element, toArrayWithKey key: Key) {
        ensureValue(forKey: key)
        self[key]!.append(value)
    }
    
    /**
     Safely append the contents of an array to the array value for a given key
     
     >`["key": [1]].safelyAppendContentsOf([2,3], toArrayWithKey: "key") -> ["key": [1,2,3]]`
     
     - parameter values: Array of values of which to append the contents to the array at key
     - parameter key:    Key for array to append to
     */
    mutating func safelyAppendContents(of values: Value, toArrayWithKey key: Key) {
        ensureValue(forKey: key)
        self[key]!.appendContentsOf(values)
    }
}

public extension Dictionary where Value: _ArrayType, Value.Generator.Element: Equatable {
    
    // MARK: -  [Hashable: [Equatable]]
    
    /**
     Safely append value to the array value for a given key. If this value already exists in
     desired array, the new value will not be added.
    
     - parameter value: Value to append to array for a given key
     - parameter key:   Key for array to append to
     */
    mutating func safelyAndUniquelyAppend(value: Value.Generator.Element,
        toArrayWithKey key: Key
    )
    {
        ensureValue(forKey: key)
        if self[key]!.contains(value) { return }
        self[key]!.append(value)
    }
}


/**
 Check equality of two Dictionarys with type <Hashable, [Equatable]>
 
 - parameter lhs: First dictionary
 - parameter rhs: Second dictionary
 
 - returns: True if all values are equivalent in both Dictionaries. Otherwise false.
 */
func == <K: Hashable, A: _ArrayType where A.Generator.Element: Equatable>(
    lhs: [K:A], rhs: [K:A]
) -> Bool
{
    for key in lhs.keys {
        if rhs[key] == nil { return false }
        else {
            if (lhs[key] as? [A.Generator.Element])! != (rhs[key] as? [A.Generator.Element])! {
                return false
            }
        }
    }
    return true
}

/**
 Check inequality of two `Dictionary` structs, which both have `[Equatable]` as `Value`
 
 - parameter lhs: One `Dictionary`
 - parameter rhs: Another `Dictionary`
 
 - returns: True if each `Element` in each `Array` for each `Key` equivalent 
    in both `Dictionary` values. Otherwise false.
 */
func != <K: Hashable, A: _ArrayType where A.Generator.Element: Equatable>(
    lhs: [K:A], rhs: [K:A]
) -> Bool
{
    return !(lhs == rhs)
}