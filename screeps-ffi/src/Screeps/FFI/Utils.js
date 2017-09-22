"use strict";

exports.unsafeField = function(key) {
    return function(obj) {
        return obj[key];
    }
}

exports.runThisEffFn0 = function(key) {
    return function(self) {
        return function() {
            return self[key]();
        }
    }
}

exports.runThisEffFn1 = function(key) {
    return function(self) {
        return function(a) {
            return function() {
                return self[key](a);
            }
        }
    }
}
