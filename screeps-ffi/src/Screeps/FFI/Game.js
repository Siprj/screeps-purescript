"use strict";

exports.getGame = function() {
    return Game;
}

exports.getUsedCpu = function() {
    return Game.cpu.getUsed();
}

exports.setShardLimits = function(limits) {
    return function() {
        return Game.cpu.setShardLimits(limits);
    }
}

exports.logCreeps = function(crees) {
    return function() {
        return console.log(crees);
    }
}

exports.notify = function(msg) {
    return function() {
        return Game.notify(msg);
    }
}

exports.notifyLater = function(msg) {
    return function(interval) {
        return function() {
            return Game.notify(msg, interval);
        }
    }
}
