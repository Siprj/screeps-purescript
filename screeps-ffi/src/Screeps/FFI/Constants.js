"use strict";

exports.ok = OK;

exports.errNotOwner = ERR_NOT_OWNER;

exports.errNoPath = ERR_NO_PATH;

exports.errNameExists = ERR_NAME_EXISTS;

exports.errBusy = ERR_BUSY;

exports.errNotFound = ERR_NOT_FOUND;

exports.errNotEnoughEnergy = ERR_NOT_ENOUGH_ENERGY;

exports.errNotEnoughResources = ERR_NOT_ENOUGH_RESOURCES;

exports.errInvalidTarget = ERR_INVALID_TARGET;

exports.errFull = ERR_FULL;

exports.errNotInRange = ERR_NOT_IN_RANGE;

exports.errInvalidArgs = ERR_INVALID_ARGS;

exports.errTired = ERR_TIRED;

exports.errNoBodypart = ERR_NO_BODYPART;

exports.errNotEnoughExtensions = ERR_NOT_ENOUGH_EXTENSIONS;

exports.errRclNotEnough = ERR_RCL_NOT_ENOUGH;

exports.errGclNotEnough = ERR_GCL_NOT_ENOUGH;

exports.findExitTop = FIND_EXIT_TOP;

exports.findExitRight = FIND_EXIT_RIGHT;

exports.findExitBottom = FIND_EXIT_BOTTOM;

exports.findExitLeft = FIND_EXIT_LEFT;

exports.findExit = FIND_EXIT;

exports.findCreeps = FIND_CREEPS;

exports.findMyCreeps = FIND_MY_CREEPS;

exports.findHostileCreeps = FIND_HOSTILE_CREEPS;

exports.findSourcesActive = FIND_SOURCES_ACTIVE;

exports.findSources = FIND_SOURCES;

exports.findDroppedEnergy = FIND_DROPPED_ENERGY;

exports.findDroppedResources = FIND_DROPPED_RESOURCES;

exports.findStructures = FIND_STRUCTURES;

exports.findMyStructures = FIND_MY_STRUCTURES;

exports.findHostileStructures = FIND_HOSTILE_STRUCTURES;

exports.findFlags = FIND_FLAGS;

exports.findConstructionSites = FIND_CONSTRUCTION_SITES;

exports.findMySpawns = FIND_MY_SPAWNS;

exports.findHostileSpawns = FIND_HOSTILE_SPAWNS;

exports.findMyConstructionSites = FIND_MY_CONSTRUCTION_SITES;

exports.findHostileConstructionSites = FIND_HOSTILE_CONSTRUCTION_SITES;

exports.findMinerals = FIND_MINERALS;

exports.findNukes = FIND_NUKES;

exports.top = TOP;

exports.topRight = TOP_RIGHT;

exports.right = RIGHT;

exports.bottomRight = BOTTOM_RIGHT;

exports.bottom = BOTTOM;

exports.bottomLeft = BOTTOM_LEFT;

exports.left = LEFT;

exports.topLeft = TOP_LEFT;

exports.colorRed = COLOR_RED;

exports.colorPurple = COLOR_PURPLE;

exports.colorBlue = COLOR_BLUE;

exports.colorCyan = COLOR_CYAN;

exports.colorGreen = COLOR_GREEN;

exports.colorYellow = COLOR_YELLOW;

exports.colorOrange = COLOR_ORANGE;

exports.colorBrown = COLOR_BROWN;

exports.colorGrey = COLOR_GREY;

exports.colorWhite = COLOR_WHITE;

exports.lookCreeps = LOOK_CREEPS;

exports.lookEnergy = LOOK_ENERGY;

exports.lookResources = LOOK_RESOURCES;

exports.lookSources = LOOK_SOURCES;

exports.lookMinerals = LOOK_MINERALS;

exports.lookStructures = LOOK_STRUCTURES;

exports.lookFlags = LOOK_FLAGS;

exports.lookConstructionSites = LOOK_CONSTRUCTION_SITES;

exports.lookNukes = LOOK_NUKES;

exports.lookTerrain = LOOK_TERRAIN;

exports.obstacleObjectTypes = OBSTACLE_OBJECT_TYPES;

exports.move = MOVE;

exports.work = WORK;

exports.carry = CARRY;

exports.attack = ATTACK;

exports.rangedAttack = RANGED_ATTACK;

exports.tough = TOUGH;

exports.heal = HEAL;

exports.claim = CLAIM;

exports.bodypartCost = BODYPART_COST;

exports.creepLifeTime = CREEP_LIFE_TIME;

exports.creepClaimLifeTime = CREEP_CLAIM_LIFE_TIME;

exports.creepCorpseRate = CREEP_CORPSE_RATE;

exports.carryCapacity = CARRY_CAPACITY;

exports.harvestPower = HARVEST_POWER;

exports.harvestMineralPower = HARVEST_MINERAL_POWER;

exports.repairPower = REPAIR_POWER;

exports.dismantlePower = DISMANTLE_POWER;

exports.buildPower = BUILD_POWER;

exports.attackPower = ATTACK_POWER;

exports.upgradeControllerPower = UPGRADE_CONTROLLER_POWER;

exports.rangedAttackPower = RANGED_ATTACK_POWER;

exports.healPower = HEAL_POWER;

exports.rangedHealPower = RANGED_HEAL_POWER;

exports.repairCost = REPAIR_COST;

exports.dismantleCost = DISMANTLE_COST;

exports.rampartDecayAmount = RAMPART_DECAY_AMOUNT;

exports.rampartDecayTime = RAMPART_DECAY_TIME;

exports.rampartHits = RAMPART_HITS;

exports.rampartHitsMax = RAMPART_HITS_MAX;

exports.energyRegenTime = ENERGY_REGEN_TIME;

exports.energyDecay = ENERGY_DECAY;

exports.spawnHits = SPAWN_HITS;

exports.spawnEnergyStart = SPAWN_ENERGY_START;

exports.spawnEnergyCapacity = SPAWN_ENERGY_CAPACITY;

exports.creepSpawnTime = CREEP_SPAWN_TIME;

exports.spawnRenewRatio = SPAWN_RENEW_RATIO;

exports.sourceEnergyCapacity = SOURCE_ENERGY_CAPACITY;

exports.sourceEnergyNeutralCapacity = SOURCE_ENERGY_NEUTRAL_CAPACITY;

exports.sourceEnergyKeeperCapacity = SOURCE_ENERGY_KEEPER_CAPACITY;

exports.wallHits = WALL_HITS;

exports.wallHitsMax = WALL_HITS_MAX;

exports.extensionHits = EXTENSION_HITS;

exports.extensionEnergyCapacity = EXTENSION_ENERGY_CAPACITY;

exports.roadHits = ROAD_HITS;

exports.roadWearout = ROAD_WEAROUT;

exports.roadDecayAmount = ROAD_DECAY_AMOUNT;

exports.roadDecayTime = ROAD_DECAY_TIME;

exports.linkHits = LINK_HITS;

exports.linkHitsMax = LINK_HITS_MAX;

exports.linkCapacity = LINK_CAPACITY;

exports.linkCooldown = LINK_COOLDOWN;

exports.linkLossRatio = LINK_LOSS_RATIO;

exports.storageCapacity = STORAGE_CAPACITY;

exports.storageHits = STORAGE_HITS;

exports.structureSpawn = STRUCTURE_SPAWN;

exports.structureExtension = STRUCTURE_EXTENSION;

exports.structureRoad = STRUCTURE_ROAD;

exports.structureWall = STRUCTURE_WALL;

exports.structureRampart = STRUCTURE_RAMPART;

exports.structureKeeperLair = STRUCTURE_KEEPER_LAIR;

exports.structurePortal = STRUCTURE_PORTAL;

exports.structureController = STRUCTURE_CONTROLLER;

exports.structureLink = STRUCTURE_LINK;

exports.structureStorage = STRUCTURE_STORAGE;

exports.structureTower = STRUCTURE_TOWER;

exports.structureObserver = STRUCTURE_OBSERVER;

exports.structurePowerBank = STRUCTURE_POWER_BANK;

exports.structurePowerSpawn = STRUCTURE_POWER_SPAWN;

exports.structureExtractor = STRUCTURE_EXTRACTOR;

exports.structureLab = STRUCTURE_LAB;

exports.structureTerminal = STRUCTURE_TERMINAL;

exports.structureContainer = STRUCTURE_CONTAINER;

exports.structureNuker = STRUCTURE_NUKER;

exports.constructionCost = CONSTRUCTION_COST;

exports.constructionCostRoadSwampRatio = CONSTRUCTION_COST_ROAD_SWAMP_RATIO;

exports.controllerLevels = CONTROLLER_LEVELS;

exports.controllerStructures = CONTROLLER_STRUCTURES;

exports.controllerDowngrade = CONTROLLER_DOWNGRADE;

exports.controllerClaimDowngrade = CONTROLLER_CLAIM_DOWNGRADE;

exports.controllerReserve = CONTROLLER_RESERVE;

exports.controllerReserveMax = CONTROLLER_RESERVE_MAX;

exports.controllerMaxUpgradePerTick = CONTROLLER_MAX_UPGRADE_PER_TICK;

exports.controllerAttackBlockedUpgrade = CONTROLLER_ATTACK_BLOCKED_UPGRADE;

exports.controllerNukeBlockedUpgrade = CONTROLLER_NUKE_BLOCKED_UPGRADE;

exports.safeModeDuration = SAFE_MODE_DURATION;

exports.safeModeCooldown = SAFE_MODE_COOLDOWN;

exports.safeModeCost = SAFE_MODE_COST;

exports.towerHits = TOWER_HITS;

exports.towerCapacity = TOWER_CAPACITY;

exports.towerEnergyCost = TOWER_ENERGY_COST;

exports.towerPowerAttack = TOWER_POWER_ATTACK;

exports.towerPowerHeal = TOWER_POWER_HEAL;

exports.towerPowerRepair = TOWER_POWER_REPAIR;

exports.towerOptimalRange = TOWER_OPTIMAL_RANGE;

exports.towerFalloffRange = TOWER_FALLOFF_RANGE;

exports.towerFalloff = TOWER_FALLOFF;

exports.observerHits = OBSERVER_HITS;

exports.observerRange = OBSERVER_RANGE;

exports.powerBankHits = POWER_BANK_HITS;

exports.powerBankCapacityMax = POWER_BANK_CAPACITY_MAX;

exports.powerBankCapacityMin = POWER_BANK_CAPACITY_MIN;

exports.powerBankCapacityCrit = POWER_BANK_CAPACITY_CRIT;

exports.powerBankDecay = POWER_BANK_DECAY;

exports.powerBankHitBack = POWER_BANK_HIT_BACK;

exports.powerSpawnHits = POWER_SPAWN_HITS;

exports.powerSpawnEnergyCapacity = POWER_SPAWN_ENERGY_CAPACITY;

exports.powerSpawnPowerCapacity = POWER_SPAWN_POWER_CAPACITY;

exports.powerSpawnEnergyRatio = POWER_SPAWN_ENERGY_RATIO;

exports.extractorHits = EXTRACTOR_HITS;

exports.extractorCooldown = EXTRACTOR_COOLDOWN;

exports.labHits = LAB_HITS;

exports.labMineralCapacity = LAB_MINERAL_CAPACITY;

exports.labEnergyCapacity = LAB_ENERGY_CAPACITY;

exports.labBoostEnergy = LAB_BOOST_ENERGY;

exports.labBoostMineral = LAB_BOOST_MINERAL;

exports.labCooldown = LAB_COOLDOWN;

exports.labReactionAmount = LAB_REACTION_AMOUNT;

exports.gclPow = GCL_POW;

exports.gclMultiply = GCL_MULTIPLY;

exports.gclNovice = GCL_NOVICE;

exports.terrainMaskWall = TERRAIN_MASK_WALL;

exports.terrainMaskSwamp = TERRAIN_MASK_SWAMP;

exports.terrainMaskLava = TERRAIN_MASK_LAVA;

exports.maxConstructionSites = MAX_CONSTRUCTION_SITES;

exports.maxCreepSize = MAX_CREEP_SIZE;

exports.mineralRegenTime = MINERAL_REGEN_TIME;

exports.mineralMinAmount = MINERAL_MIN_AMOUNT;

exports.mineralRandomFactor = MINERAL_RANDOM_FACTOR;

exports.mineralDensity = MINERAL_DENSITY;

exports.mineralDensityProbability = MINERAL_DENSITY_PROBABILITY;

exports.mineralDensityChange = MINERAL_DENSITY_CHANGE;

exports.densityLow = DENSITY_LOW;

exports.densityModerate = DENSITY_MODERATE;

exports.densityHigh = DENSITY_HIGH;

exports.densityUltra = DENSITY_ULTRA;

exports.terminalCapacity = TERMINAL_CAPACITY;

exports.terminalHits = TERMINAL_HITS;

exports.terminalSendCost = TERMINAL_SEND_COST;

exports.terminalMinSend = TERMINAL_MIN_SEND;

exports.terminalCooldown = TERMINAL_COOLDOWN;

exports.containerHits = CONTAINER_HITS;

exports.containerCapacity = CONTAINER_CAPACITY;

exports.containerDecay = CONTAINER_DECAY;

exports.containerDecayTime = CONTAINER_DECAY_TIME;

exports.containerDecayTimeOwned = CONTAINER_DECAY_TIME_OWNED;

exports.nukerHits = NUKER_HITS;

exports.nukerCooldown = NUKER_COOLDOWN;

exports.nukerEnergyCapacity = NUKER_ENERGY_CAPACITY;

exports.nukerGhodiumCapacity = NUKER_GHODIUM_CAPACITY;

exports.nukeLandTime = NUKE_LAND_TIME;

exports.nukeRange = NUKE_RANGE;

exports.nukeDamage = NUKE_DAMAGE;

exports.portalDecay = PORTAL_DECAY;

exports.orderSell = ORDER_SELL;

exports.orderBuy = ORDER_BUY;

exports.marketFee = MARKET_FEE;

exports.flagsLimit = FLAGS_LIMIT;

exports.subscriptionToken = SUBSCRIPTION_TOKEN;

exports.resourceEnergy = RESOURCE_ENERGY;

exports.resourcePower = RESOURCE_POWER;

exports.resourceHydrogen = RESOURCE_HYDROGEN;

exports.resourceOxygen = RESOURCE_OXYGEN;

exports.resourceUtrium = RESOURCE_UTRIUM;

exports.resourceLemergium = RESOURCE_LEMERGIUM;

exports.resourceKeanium = RESOURCE_KEANIUM;

exports.resourceZynthium = RESOURCE_ZYNTHIUM;

exports.resourceCatalyst = RESOURCE_CATALYST;

exports.resourceGhodium = RESOURCE_GHODIUM;

exports.resourceHydroxide = RESOURCE_HYDROXIDE;

exports.resourceZynthiumKeanite = RESOURCE_ZYNTHIUM_KEANITE;

exports.resourceUtriumLemergite = RESOURCE_UTRIUM_LEMERGITE;

exports.resourceUtriumHydride = RESOURCE_UTRIUM_HYDRIDE;

exports.resourceUtriumOxide = RESOURCE_UTRIUM_OXIDE;

exports.resourceKeaniumHydride = RESOURCE_KEANIUM_HYDRIDE;

exports.resourceKeaniumOxide = RESOURCE_KEANIUM_OXIDE;

exports.resourceLemergiumHydride = RESOURCE_LEMERGIUM_HYDRIDE;

exports.resourceLemergiumOxide = RESOURCE_LEMERGIUM_OXIDE;

exports.resourceZynthiumHydride = RESOURCE_ZYNTHIUM_HYDRIDE;

exports.resourceZynthiumOxide = RESOURCE_ZYNTHIUM_OXIDE;

exports.resourceGhodiumHydride = RESOURCE_GHODIUM_HYDRIDE;

exports.resourceGhodiumOxide = RESOURCE_GHODIUM_OXIDE;

exports.resourceUtriumAcid = RESOURCE_UTRIUM_ACID;

exports.resourceUtriumAlkalide = RESOURCE_UTRIUM_ALKALIDE;

exports.resourceKeaniumAcid = RESOURCE_KEANIUM_ACID;

exports.resourceKeaniumAlkalide = RESOURCE_KEANIUM_ALKALIDE;

exports.resourceLemergiumAcid = RESOURCE_LEMERGIUM_ACID;

exports.resourceLemergiumAlkalide = RESOURCE_LEMERGIUM_ALKALIDE;

exports.resourceZynthiumAcid = RESOURCE_ZYNTHIUM_ACID;

exports.resourceZynthiumAlkalide = RESOURCE_ZYNTHIUM_ALKALIDE;

exports.resourceGhodiumAcid = RESOURCE_GHODIUM_ACID;

exports.resourceGhodiumAlkalide = RESOURCE_GHODIUM_ALKALIDE;

exports.resourceCatalyzedUtriumAcid = RESOURCE_CATALYZED_UTRIUM_ACID;

exports.resourceCatalyzedUtriumAlkalide = RESOURCE_CATALYZED_UTRIUM_ALKALIDE;

exports.resourceCatalyzedKeaniumAcid = RESOURCE_CATALYZED_KEANIUM_ACID;

exports.resourceCatalyzedKeaniumAlkalide = RESOURCE_CATALYZED_KEANIUM_ALKALIDE;

exports.resourceCatalyzedLemergiumAcid = RESOURCE_CATALYZED_LEMERGIUM_ACID;

exports.resourceCatalyzedLemergiumAlkalide = RESOURCE_CATALYZED_LEMERGIUM_ALKALIDE;

exports.resourceCatalyzedZynthiumAcid = RESOURCE_CATALYZED_ZYNTHIUM_ACID;

exports.resourceCatalyzedZynthiumAlkalide = RESOURCE_CATALYZED_ZYNTHIUM_ALKALIDE;

exports.resourceCatalyzedGhodiumAcid = RESOURCE_CATALYZED_GHODIUM_ACID;

exports.resourceCatalyzedGhodiumAlkalide = RESOURCE_CATALYZED_GHODIUM_ALKALIDE;

exports.reactions = REACTIONS;

exports.boosts = BOOSTS;

exports.portalUnstable = PORTAL_UNSTABLE;

exports.portalMinTimeout = PORTAL_MIN_TIMEOUT;

exports.portalMaxTimeout = PORTAL_MAX_TIMEOUT;

exports.powerBankRespawnTime = POWER_BANK_RESPAWN_TIME;

exports.invadersEnergyGoal = INVADERS_ENERGY_GOAL;

exports.systemUsername = SYSTEM_USERNAME;

exports.signNoviceArea = SIGN_NOVICE_AREA;

exports.signRespawnArea = SIGN_RESPAWN_AREA;

