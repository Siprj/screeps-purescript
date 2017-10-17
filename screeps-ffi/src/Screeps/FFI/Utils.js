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

exports.runThisEffFn2 = function(key) {
    return function(self) {
        return function(a) {
            return function(b) {
                return function() {
                    return self[key](a, b);
                }
            }
        }
    }
}

exports.runThisEffFn3 = function(key) {
    return function(self) {
        return function(a) {
            return function(b) {
                return function(c) {
                    return function() {
                        return self[key](a, b, c);
                    }
                }
            }
        }
    }
}

exports.selectMaybesImpl = function(isJust){
    return function(fromJust){
        return function(obj){
            var newObj = {};
            for(var key in obj){
                if(obj.hasOwnProperty(key) && isJust(obj[key])){
                    newObj[key] = fromJust(obj[key]);
                }
            }
            return newObj;
        }
    }
}
