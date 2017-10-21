"use strict";

exports.getMemory = Memory;

exports.getMemorySegment = function(ptr) {
    return function(key) {
        return function() {
            return ptr[key];
        }
    }
}

exports.setMemorySegment = function(ptr) {
    return function(key) {
        return function(obj) {
            return function() {
                return ptr[key] = obj;
            }
        }
    }
}

exports.deleteMemorySegment = function(ptr) {
    return function(key) {
        return function() {
            delete ptr[key];
        }
    }
}
