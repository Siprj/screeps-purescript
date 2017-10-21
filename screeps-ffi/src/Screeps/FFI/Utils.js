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

exports.runThisEffFn4 = function(key) {
    return function(self) {
        return function(a) {
            return function(b) {
                return function(c) {
                    return function(d) {
                        return function() {
                            return self[key](a, b, c, d);
                        }
                    }
                }
            }
        }
    }
}

exports.runThisEffFn5 = function(key) {
    return function(self) {
        return function(a) {
            return function(b) {
                return function(c) {
                    return function(d) {
                        return function(e) {
                            return function() {
                                return self[key](a, b, c, d, e);
                            }
                        }
                    }
                }
            }
        }
    }
}

exports.selectMaybesImpl = function(isJust) {
    return function(fromJust) {
        return function(obj) {
            var newObj = {};
            for(var key in obj) {
                if(obj.hasOwnProperty(key) && isJust(obj[key])) {
                    newObj[key] = fromJust(obj[key]);
                }
            }
            return newObj;
        }
    }
}

exports.nullOrUndefinedToMaybePrime = function(Nothing) {
    return function(Just) {
        return function(obj) {
            if (obj === undefined || obj === null) {
                return Nothing
            } else {
                return Just(obj);
            }
        }
    }
}
