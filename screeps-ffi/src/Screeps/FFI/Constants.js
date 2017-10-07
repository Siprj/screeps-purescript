"use strict";

exports.ok = function() {
    return OK;
}

exports.errNotOwner = function() {
    return ERR_NOT_OWNER;
}

exports.errNoPath = function() {
    return ERR_NO_PATH;
}

exports.errNameExists = function() {
    return ERR_NAME_EXISTS;
}

exports.errBusy = function() {
    return ERR_BUSY;
}

exports.errNotFound = function() {
    return ERR_NOT_FOUND;
}

exports.errNotEnoughEnergy = function() {
    return ERR_NOT_ENOUGH_ENERGY;
}

exports.errNotEnoughResources = function() {
    return ERR_NOT_ENOUGH_RESOURCES;
}

exports.errInvalidTarget = function() {
    return ERR_INVALID_TARGET;
}

exports.errFull = function() {
    return ERR_FULL;
}

exports.errNotInRange = function() {
    return ERR_NOT_IN_RANGE;
}

exports.errInvalidArgs = function() {
    return ERR_INVALID_ARGS;
}

exports.errTired = function() {
    return ERR_TIRED;
}

exports.errNoBodypart = function() {
    return ERR_NO_BODYPART;
}

exports.errNotEnoughExtensions = function() {
    return ERR_NOT_ENOUGH_EXTENSIONS;
}

exports.errRclNotEnough = function() {
    return ERR_RCL_NOT_ENOUGH;
}

exports.errGclNotEnough = function() {
    return ERR_GCL_NOT_ENOUGH;
}

exports.findExitTop = function() {
    return FIND_EXIT_TOP;
}

exports.findExitRight = function() {
    return FIND_EXIT_RIGHT;
}

exports.findExitBottom = function() {
    return FIND_EXIT_BOTTOM;
}

exports.findExitLeft = function() {
    return FIND_EXIT_LEFT;
}

exports.findExit = function() {
    return FIND_EXIT;
}

exports.findCreeps = function() {
    return FIND_CREEPS;
}

exports.findMyCreeps = function() {
    return FIND_MY_CREEPS;
}

exports.findHostileCreeps = function() {
    return FIND_HOSTILE_CREEPS;
}

exports.findSourcesActive = function() {
    return FIND_SOURCES_ACTIVE;
}

exports.findSources = function() {
    return FIND_SOURCES;
}

exports.findDroppedEnergy = function() {
    return FIND_DROPPED_ENERGY;
}

exports.findDroppedResources = function() {
    return FIND_DROPPED_RESOURCES;
}

exports.findStructures = function() {
    return FIND_STRUCTURES;
}

exports.findMyStructures = function() {
    return FIND_MY_STRUCTURES;
}

exports.findHostileStructures = function() {
    return FIND_HOSTILE_STRUCTURES;
}

exports.findFlags = function() {
    return FIND_FLAGS;
}

exports.findConstructionSites = function() {
    return FIND_CONSTRUCTION_SITES;
}

exports.findMySpawns = function() {
    return FIND_MY_SPAWNS;
}

exports.findHostileSpawns = function() {
    return FIND_HOSTILE_SPAWNS;
}

exports.findMyConstructionSites = function() {
    return FIND_MY_CONSTRUCTION_SITES;
}

exports.findHostileConstructionSites = function() {
    return FIND_HOSTILE_CONSTRUCTION_SITES;
}

exports.findMinerals = function() {
    return FIND_MINERALS;
}

exports.findNukes = function() {
    return FIND_NUKES;
}

exports.top = function() {
    return TOP;
}

exports.topRight = function() {
    return TOP_RIGHT;
}

exports.right = function() {
    return RIGHT;
}

exports.bottomRight = function() {
    return BOTTOM_RIGHT;
}

exports.bottom = function() {
    return BOTTOM;
}

exports.bottomLeft = function() {
    return BOTTOM_LEFT;
}

exports.left = function() {
    return LEFT;
}

exports.topLeft = function() {
    return TOP_LEFT;
}

exports.colorRed = function() {
    return COLOR_RED;
}

exports.colorPurple = function() {
    return COLOR_PURPLE;
}

exports.colorBlue = function() {
    return COLOR_BLUE;
}

exports.colorCyan = function() {
    return COLOR_CYAN;
}

exports.colorGreen = function() {
    return COLOR_GREEN;
}

exports.colorYellow = function() {
    return COLOR_YELLOW;
}

exports.colorOrange = function() {
    return COLOR_ORANGE;
}

exports.colorBrown = function() {
    return COLOR_BROWN;
}

exports.colorGrey = function() {
    return COLOR_GREY;
}

exports.colorWhite = function() {
    return COLOR_WHITE;
}

exports.lookCreeps = function() {
    return LOOK_CREEPS;
}

exports.lookEnergy = function() {
    return LOOK_ENERGY;
}

exports.lookResources = function() {
    return LOOK_RESOURCES;
}

exports.lookSources = function() {
    return LOOK_SOURCES;
}

exports.lookMinerals = function() {
    return LOOK_MINERALS;
}

exports.lookStructures = function() {
    return LOOK_STRUCTURES;
}

exports.lookFlags = function() {
    return LOOK_FLAGS;
}

exports.lookConstructionSites = function() {
    return LOOK_CONSTRUCTION_SITES;
}

exports.lookNukes = function() {
    return LOOK_NUKES;
}

exports.lookTerrain = function() {
    return LOOK_TERRAIN;
}

exports.obstacleObjectTypes = function() {
    return OBSTACLE_OBJECT_TYPES;
}

exports.move = function() {
    return MOVE;
}

exports.work = function() {
    return WORK;
}

exports.carry = function() {
    return CARRY;
}

exports.attack = function() {
    return ATTACK;
}

exports.rangedAttack = function() {
    return RANGED_ATTACK;
}

exports.tough = function() {
    return TOUGH;
}

exports.heal = function() {
    return HEAL;
}

exports.claim = function() {
    return CLAIM;
}

exports.bodypartCost = function() {
    return BODYPART_COST;
}

exports.creepLifeTime = function() {
    return CREEP_LIFE_TIME;
}

exports.creepClaimLifeTime = function() {
    return CREEP_CLAIM_LIFE_TIME;
}

exports.creepCorpseRate = function() {
    return CREEP_CORPSE_RATE;
}

exports.carryCapacity = function() {
    return CARRY_CAPACITY;
}

exports.harvestPower = function() {
    return HARVEST_POWER;
}

exports.harvestMineralPower = function() {
    return HARVEST_MINERAL_POWER;
}

exports.repairPower = function() {
    return REPAIR_POWER;
}

exports.dismantlePower = function() {
    return DISMANTLE_POWER;
}

exports.buildPower = function() {
    return BUILD_POWER;
}

exports.attackPower = function() {
    return ATTACK_POWER;
}

exports.upgradeControllerPower = function() {
    return UPGRADE_CONTROLLER_POWER;
}

exports.rangedAttackPower = function() {
    return RANGED_ATTACK_POWER;
}

exports.healPower = function() {
    return HEAL_POWER;
}

exports.rangedHealPower = function() {
    return RANGED_HEAL_POWER;
}

exports.repairCost = function() {
    return REPAIR_COST;
}

exports.dismantleCost = function() {
    return DISMANTLE_COST;
}

exports.rampartDecayAmount = function() {
    return RAMPART_DECAY_AMOUNT;
}

exports.rampartDecayTime = function() {
    return RAMPART_DECAY_TIME;
}

exports.rampartHits = function() {
    return RAMPART_HITS;
}

exports.rampartHitsMax = function() {
    return RAMPART_HITS_MAX;
}

exports.energyRegenTime = function() {
    return ENERGY_REGEN_TIME;
}

exports.energyDecay = function() {
    return ENERGY_DECAY;
}

exports.spawnHits = function() {
    return SPAWN_HITS;
}

exports.spawnEnergyStart = function() {
    return SPAWN_ENERGY_START;
}

exports.spawnEnergyCapacity = function() {
    return SPAWN_ENERGY_CAPACITY;
}

exports.creepSpawnTime = function() {
    return CREEP_SPAWN_TIME;
}

exports.spawnRenewRatio = function() {
    return SPAWN_RENEW_RATIO;
}

exports.sourceEnergyCapacity = function() {
    return SOURCE_ENERGY_CAPACITY;
}

exports.sourceEnergyNeutralCapacity = function() {
    return SOURCE_ENERGY_NEUTRAL_CAPACITY;
}

exports.sourceEnergyKeeperCapacity = function() {
    return SOURCE_ENERGY_KEEPER_CAPACITY;
}

exports.wallHits = function() {
    return WALL_HITS;
}

exports.wallHitsMax = function() {
    return WALL_HITS_MAX;
}

exports.extensionHits = function() {
    return EXTENSION_HITS;
}

exports.extensionEnergyCapacity = function() {
    return EXTENSION_ENERGY_CAPACITY;
}

exports.roadHits = function() {
    return ROAD_HITS;
}

exports.roadWearout = function() {
    return ROAD_WEAROUT;
}

exports.roadDecayAmount = function() {
    return ROAD_DECAY_AMOUNT;
}

exports.roadDecayTime = function() {
    return ROAD_DECAY_TIME;
}

exports.linkHits = function() {
    return LINK_HITS;
}

exports.linkHitsMax = function() {
    return LINK_HITS_MAX;
}

exports.linkCapacity = function() {
    return LINK_CAPACITY;
}

exports.linkCooldown = function() {
    return LINK_COOLDOWN;
}

exports.linkLossRatio = function() {
    return LINK_LOSS_RATIO;
}

exports.storageCapacity = function() {
    return STORAGE_CAPACITY;
}

exports.storageHits = function() {
    return STORAGE_HITS;
}

exports.structureSpawn = function() {
    return STRUCTURE_SPAWN;
}

exports.structureExtension = function() {
    return STRUCTURE_EXTENSION;
}

exports.structureRoad = function() {
    return STRUCTURE_ROAD;
}

exports.structureWall = function() {
    return STRUCTURE_WALL;
}

exports.structureRampart = function() {
    return STRUCTURE_RAMPART;
}

exports.structureKeeperLair = function() {
    return STRUCTURE_KEEPER_LAIR;
}

exports.structurePortal = function() {
    return STRUCTURE_PORTAL;
}

exports.structureController = function() {
    return STRUCTURE_CONTROLLER;
}

exports.structureLink = function() {
    return STRUCTURE_LINK;
}

exports.structureStorage = function() {
    return STRUCTURE_STORAGE;
}

exports.structureTower = function() {
    return STRUCTURE_TOWER;
}

exports.structureObserver = function() {
    return STRUCTURE_OBSERVER;
}

exports.structurePowerBank = function() {
    return STRUCTURE_POWER_BANK;
}

exports.structurePowerSpawn = function() {
    return STRUCTURE_POWER_SPAWN;
}

exports.structureExtractor = function() {
    return STRUCTURE_EXTRACTOR;
}

exports.structureLab = function() {
    return STRUCTURE_LAB;
}

exports.structureTerminal = function() {
    return STRUCTURE_TERMINAL;
}

exports.structureContainer = function() {
    return STRUCTURE_CONTAINER;
}

exports.structureNuker = function() {
    return STRUCTURE_NUKER;
}

exports.constructionCost = function() {
    return CONSTRUCTION_COST;
}

exports.constructionCostRoadSwampRatio = function() {
    return CONSTRUCTION_COST_ROAD_SWAMP_RATIO;
}

exports.controllerLevels = function() {
    return CONTROLLER_LEVELS;
}

exports.controllerStructures = function() {
    return CONTROLLER_STRUCTURES;
}

exports.controllerDowngrade = function() {
    return CONTROLLER_DOWNGRADE;
}

exports.controllerClaimDowngrade = function() {
    return CONTROLLER_CLAIM_DOWNGRADE;
}

exports.controllerReserve = function() {
    return CONTROLLER_RESERVE;
}

exports.controllerReserveMax = function() {
    return CONTROLLER_RESERVE_MAX;
}

exports.controllerMaxUpgradePerTick = function() {
    return CONTROLLER_MAX_UPGRADE_PER_TICK;
}

exports.controllerAttackBlockedUpgrade = function() {
    return CONTROLLER_ATTACK_BLOCKED_UPGRADE;
}

exports.controllerNukeBlockedUpgrade = function() {
    return CONTROLLER_NUKE_BLOCKED_UPGRADE;
}

exports.safeModeDuration = function() {
    return SAFE_MODE_DURATION;
}

exports.safeModeCooldown = function() {
    return SAFE_MODE_COOLDOWN;
}

exports.safeModeCost = function() {
    return SAFE_MODE_COST;
}

exports.towerHits = function() {
    return TOWER_HITS;
}

exports.towerCapacity = function() {
    return TOWER_CAPACITY;
}

exports.towerEnergyCost = function() {
    return TOWER_ENERGY_COST;
}

exports.towerPowerAttack = function() {
    return TOWER_POWER_ATTACK;
}

exports.towerPowerHeal = function() {
    return TOWER_POWER_HEAL;
}

exports.towerPowerRepair = function() {
    return TOWER_POWER_REPAIR;
}

exports.towerOptimalRange = function() {
    return TOWER_OPTIMAL_RANGE;
}

exports.towerFalloffRange = function() {
    return TOWER_FALLOFF_RANGE;
}

exports.towerFalloff = function() {
    return TOWER_FALLOFF;
}

exports.observerHits = function() {
    return OBSERVER_HITS;
}

exports.observerRange = function() {
    return OBSERVER_RANGE;
}

exports.powerBankHits = function() {
    return POWER_BANK_HITS;
}

exports.powerBankCapacityMax = function() {
    return POWER_BANK_CAPACITY_MAX;
}

exports.powerBankCapacityMin = function() {
    return POWER_BANK_CAPACITY_MIN;
}

exports.powerBankCapacityCrit = function() {
    return POWER_BANK_CAPACITY_CRIT;
}

exports.powerBankDecay = function() {
    return POWER_BANK_DECAY;
}

exports.powerBankHitBack = function() {
    return POWER_BANK_HIT_BACK;
}

exports.powerSpawnHits = function() {
    return POWER_SPAWN_HITS;
}

exports.powerSpawnEnergyCapacity = function() {
    return POWER_SPAWN_ENERGY_CAPACITY;
}

exports.powerSpawnPowerCapacity = function() {
    return POWER_SPAWN_POWER_CAPACITY;
}

exports.powerSpawnEnergyRatio = function() {
    return POWER_SPAWN_ENERGY_RATIO;
}

exports.extractorHits = function() {
    return EXTRACTOR_HITS;
}

exports.extractorCooldown = function() {
    return EXTRACTOR_COOLDOWN;
}

exports.labHits = function() {
    return LAB_HITS;
}

exports.labMineralCapacity = function() {
    return LAB_MINERAL_CAPACITY;
}

exports.labEnergyCapacity = function() {
    return LAB_ENERGY_CAPACITY;
}

exports.labBoostEnergy = function() {
    return LAB_BOOST_ENERGY;
}

exports.labBoostMineral = function() {
    return LAB_BOOST_MINERAL;
}

exports.labCooldown = function() {
    return LAB_COOLDOWN;
}

exports.labReactionAmount = function() {
    return LAB_REACTION_AMOUNT;
}

exports.gclPow = function() {
    return GCL_POW;
}

exports.gclMultiply = function() {
    return GCL_MULTIPLY;
}

exports.gclNovice = function() {
    return GCL_NOVICE;
}

exports.terrainMaskWall = function() {
    return TERRAIN_MASK_WALL;
}

exports.terrainMaskSwamp = function() {
    return TERRAIN_MASK_SWAMP;
}

exports.terrainMaskLava = function() {
    return TERRAIN_MASK_LAVA;
}

exports.maxConstructionSites = function() {
    return MAX_CONSTRUCTION_SITES;
}

exports.maxCreepSize = function() {
    return MAX_CREEP_SIZE;
}

exports.mineralRegenTime = function() {
    return MINERAL_REGEN_TIME;
}

exports.mineralMinAmount = function() {
    return MINERAL_MIN_AMOUNT;
}

exports.mineralRandomFactor = function() {
    return MINERAL_RANDOM_FACTOR;
}

exports.mineralDensity = function() {
    return MINERAL_DENSITY;
}

exports.mineralDensityProbability = function() {
    return MINERAL_DENSITY_PROBABILITY;
}
exports.mineralDensityChange = function() {
    return MINERAL_DENSITY_CHANGE;
}

exports.densityLow = function() {
    return DENSITY_LOW;
}

exports.densityModerate = function() {
    return DENSITY_MODERATE;
}

exports.densityHigh = function() {
    return DENSITY_HIGH;
}

exports.densityUltra = function() {
    return DENSITY_ULTRA;
}

exports.terminalCapacity = function() {
    return TERMINAL_CAPACITY;
}

exports.terminalHits = function() {
    return TERMINAL_HITS;
}

exports.terminalSendCost = function() {
    return TERMINAL_SEND_COST;
}

exports.terminalMinSend = function() {
    return TERMINAL_MIN_SEND;
}

exports.terminalCooldown = function() {
    return TERMINAL_COOLDOWN;
}

exports.containerHits = function() {
    return CONTAINER_HITS;
}

exports.containerCapacity = function() {
    return CONTAINER_CAPACITY;
}

exports.containerDecay = function() {
    return CONTAINER_DECAY;
}

exports.containerDecayTime = function() {
    return CONTAINER_DECAY_TIME;
}

exports.containerDecayTimeOwned = function() {
    return CONTAINER_DECAY_TIME_OWNED;
}

exports.nukerHits = function() {
    return NUKER_HITS;
}

exports.nukerCooldown = function() {
    return NUKER_COOLDOWN;
}

exports.nukerEnergyCapacity = function() {
    return NUKER_ENERGY_CAPACITY;
}

exports.nukerGhodiumCapacity = function() {
    return NUKER_GHODIUM_CAPACITY;
}

exports.nukeLandTime = function() {
    return NUKE_LAND_TIME;
}

exports.nukeRange = function() {
    return NUKE_RANGE;
}

exports.nukeDamage = function() {
    return NUKE_DAMAGE;
}

exports.portalDecay = function() {
    return PORTAL_DECAY;
}

exports.orderSell = function() {
    return ORDER_SELL;
}

exports.orderBuy = function() {
    return ORDER_BUY;
}

exports.marketFee = function() {
    return MARKET_FEE;
}

exports.flagsLimit = function() {
    return FLAGS_LIMIT;
}

exports.subscriptionToken = function() {
    return SUBSCRIPTION_TOKEN;
}

exports.resourceEnergy = function() {
    return RESOURCE_ENERGY;
}

exports.resourcePower = function() {
    return RESOURCE_POWER;
}

exports.resourceHydrogen = function() {
    return RESOURCE_HYDROGEN;
}

exports.resourceOxygen = function() {
    return RESOURCE_OXYGEN;
}

exports.resourceUtrium = function() {
    return RESOURCE_UTRIUM;
}

exports.resourceLemergium = function() {
    return RESOURCE_LEMERGIUM;
}

exports.resourceKeanium = function() {
    return RESOURCE_KEANIUM;
}

exports.resourceZynthium = function() {
    return RESOURCE_ZYNTHIUM;
}

exports.resourceCatalyst = function() {
    return RESOURCE_CATALYST;
}

exports.resourceGhodium = function() {
    return RESOURCE_GHODIUM;
}

exports.resourceHydroxide = function() {
    return RESOURCE_HYDROXIDE;
}

exports.resourceZynthiumKeanite = function() {
    return RESOURCE_ZYNTHIUM_KEANITE;
}

exports.resourceUtriumLemergite = function() {
    return RESOURCE_UTRIUM_LEMERGITE;
}

exports.resourceUtriumHydride = function() {
    return RESOURCE_UTRIUM_HYDRIDE;
}

exports.resourceUtriumOxide = function() {
    return RESOURCE_UTRIUM_OXIDE;
}

exports.resourceKeaniumHydride = function() {
    return RESOURCE_KEANIUM_HYDRIDE;
}

exports.resourceKeaniumOxide = function() {
    return RESOURCE_KEANIUM_OXIDE;
}

exports.resourceLemergiumHydride = function() {
    return RESOURCE_LEMERGIUM_HYDRIDE;
}

exports.resourceLemergiumOxide = function() {
    return RESOURCE_LEMERGIUM_OXIDE;
}

exports.resourceZynthiumHydride = function() {
    return RESOURCE_ZYNTHIUM_HYDRIDE;
}

exports.resourceZynthiumOxide = function() {
    return RESOURCE_ZYNTHIUM_OXIDE;
}

exports.resourceGhodiumHydride = function() {
    return RESOURCE_GHODIUM_HYDRIDE;
}

exports.resourceGhodiumOxide = function() {
    return RESOURCE_GHODIUM_OXIDE;
}

exports.resourceUtriumAcid = function() {
    return RESOURCE_UTRIUM_ACID;
}

exports.resourceUtriumAlkalide = function() {
    return RESOURCE_UTRIUM_ALKALIDE;
}

exports.resourceKeaniumAcid = function() {
    return RESOURCE_KEANIUM_ACID;
}

exports.resourceKeaniumAlkalide = function() {
    return RESOURCE_KEANIUM_ALKALIDE;
}

exports.resourceLemergiumAcid = function() {
    return RESOURCE_LEMERGIUM_ACID;
}

exports.resourceLemergiumAlkalide = function() {
    return RESOURCE_LEMERGIUM_ALKALIDE;
}

exports.resourceZynthiumAcid = function() {
    return RESOURCE_ZYNTHIUM_ACID;
}

exports.resourceZynthiumAlkalide = function() {
    return RESOURCE_ZYNTHIUM_ALKALIDE;
}

exports.resourceGhodiumAcid = function() {
    return RESOURCE_GHODIUM_ACID;
}

exports.resourceGhodiumAlkalide = function() {
    return RESOURCE_GHODIUM_ALKALIDE;
}

exports.resourceCatalyzedUtriumAcid = function() {
    return RESOURCE_CATALYZED_UTRIUM_ACID;
}

exports.resourceCatalyzedUtriumAlkalide = function() {
    return RESOURCE_CATALYZED_UTRIUM_ALKALIDE;
}

exports.resourceCatalyzedKeaniumAcid = function() {
    return RESOURCE_CATALYZED_KEANIUM_ACID;
}

exports.resourceCatalyzedKeaniumAlkalide = function() {
    return RESOURCE_CATALYZED_KEANIUM_ALKALIDE;
}

exports.resourceCatalyzedLemergiumAcid = function() {
    return RESOURCE_CATALYZED_LEMERGIUM_ACID;
}

exports.resourceCatalyzedLemergiumAlkalide = function() {
    return RESOURCE_CATALYZED_LEMERGIUM_ALKALIDE;
}

exports.resourceCatalyzedZynthiumAcid = function() {
    return RESOURCE_CATALYZED_ZYNTHIUM_ACID;
}

exports.resourceCatalyzedZynthiumAlkalide = function() {
    return RESOURCE_CATALYZED_ZYNTHIUM_ALKALIDE;
}

exports.resourceCatalyzedGhodiumAcid = function() {
    return RESOURCE_CATALYZED_GHODIUM_ACID;
}

exports.resourceCatalyzedGhodiumAlkalide = function() {
    return RESOURCE_CATALYZED_GHODIUM_ALKALIDE;
}

exports.reactions = function() {
    return REACTIONS;
}

exports.boosts = function() {
    return BOOSTS;
}

exports.portalUnstable = function() {
    return PORTAL_UNSTABLE;
}

exports.portalMinTimeout = function() {
    return PORTAL_MIN_TIMEOUT;
}

exports.portalMaxTimeout = function() {
    return PORTAL_MAX_TIMEOUT;
}

exports.powerBankRespawnTime = function() {
    return POWER_BANK_RESPAWN_TIME;
}

exports.invadersEnergyGoal = function() {
    return INVADERS_ENERGY_GOAL;
}

exports.systemUsername = function() {
    return SYSTEM_USERNAME;
}

exports.signNoviceArea = function() {
    return SIGN_NOVICE_AREA;
}

exports.signRespawnArea = function() {
    return SIGN_RESPAWN_AREA;
}
