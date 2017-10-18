"use strict";

exports.getMemory = Memory;

exports.getMemorySegmentPrime = function(ptr) {
    return function(key) {
        return function() {
            return ptr[key];
        }
    }
}

exports.setMemorySegmentPrime = function(ptr) {
    return function(key) {
        return function(obj) {
            return function() {
                return ptr[key] = obj;
            }
        }
    }
}
