module Screeps.FFI.Constants where

import Data.StrMap (StrMap)


newtype ReturnCode = ReturnCode Int

foreign import ok :: ReturnCode
foreign import errNotOwner :: ReturnCode
foreign import errNoPath :: ReturnCode
foreign import errNameExists :: ReturnCode
foreign import errBusy :: ReturnCode
foreign import errNotFound :: ReturnCode
foreign import errNotEnoughEnergy :: ReturnCode
foreign import errNotEnoughResources :: ReturnCode
foreign import errInvalidTarget :: ReturnCode
foreign import errFull :: ReturnCode
foreign import errNotInRange :: ReturnCode
foreign import errInvalidArgs :: ReturnCode
foreign import errTired :: ReturnCode
foreign import errNoBodypart :: ReturnCode
foreign import errNotEnoughExtensions :: ReturnCode
foreign import errRclNotEnough :: ReturnCode
foreign import errGclNotEnough :: ReturnCode

newtype ExitDirection = ExitDirection Int

foreign import findExitTop :: ExitDirection
foreign import findExitRight :: ExitDirection
foreign import findExitBottom :: ExitDirection
foreign import findExitLeft :: ExitDirection

newtype FindConstant = FindConstant Int

foreign import findExit :: FindConstant
foreign import findCreeps :: FindConstant
foreign import findMyCreeps :: FindConstant
foreign import findHostileCreeps :: FindConstant
foreign import findSourcesActive :: FindConstant
foreign import findSources :: FindConstant
foreign import findDroppedEnergy :: FindConstant
foreign import findDroppedResources :: FindConstant
foreign import findStructures :: FindConstant
foreign import findMyStructures :: FindConstant
foreign import findHostileStructures :: FindConstant
foreign import findFlags :: FindConstant
foreign import findConstructionSites :: FindConstant
foreign import findMySpawns :: FindConstant
foreign import findHostileSpawns :: FindConstant
foreign import findMyConstructionSites :: FindConstant
foreign import findHostileConstructionSites :: FindConstant
foreign import findMinerals :: FindConstant
foreign import findNukes :: FindConstant

newtype DirectionConstant = DirectionConstant Int

foreign import top :: DirectionConstant
foreign import topRight :: DirectionConstant
foreign import right :: DirectionConstant
foreign import bottomRight :: DirectionConstant
foreign import bottom :: DirectionConstant
foreign import bottomLeft :: DirectionConstant
foreign import left :: DirectionConstant
foreign import topLeft :: DirectionConstant

newtype ColorConstant = ColorConstant Number

foreign import colorRed :: ColorConstant
foreign import colorPurple :: ColorConstant
foreign import colorBlue :: ColorConstant
foreign import colorCyan :: ColorConstant
foreign import colorGreen :: ColorConstant
foreign import colorYellow :: ColorConstant
foreign import colorOrange :: ColorConstant
foreign import colorBrown :: ColorConstant
foreign import colorGrey :: ColorConstant
foreign import colorWhite :: ColorConstant

newtype LookConstant = LookConstant String

foreign import lookCreeps :: LookConstant
foreign import lookEnergy :: LookConstant
foreign import lookResources :: LookConstant
foreign import lookSources :: LookConstant
foreign import lookMinerals :: LookConstant
foreign import lookStructures :: LookConstant
foreign import lookFlags :: LookConstant
foreign import lookConstructionSites :: LookConstant
foreign import lookNukes :: LookConstant
foreign import lookTerrain :: LookConstant

newtype ObjectTypeConstant = ObjectTypeConstant String

foreign import obstacleObjectTypes :: Array ObjectTypeConstant

newtype BodyPartConstant = BodyPartConstant String

foreign import move :: BodyPartConstant
foreign import work :: BodyPartConstant
foreign import carry :: BodyPartConstant
foreign import attack :: BodyPartConstant
foreign import rangedAttack :: BodyPartConstant
foreign import tough :: BodyPartConstant
foreign import heal :: BodyPartConstant
foreign import claim :: BodyPartConstant

foreign import bodypartCost :: StrMap Number

foreign import creepLifeTime :: Number
foreign import creepClaimLifeTime :: Number
foreign import creepCorpseRate :: Number
foreign import carryCapacity :: Number
foreign import harvestPower :: Number
foreign import harvestMineralPower :: Number
foreign import repairPower :: Number
foreign import dismantlePower :: Number
foreign import buildPower :: Number
foreign import attackPower :: Number
foreign import upgradeControllerPower :: Number
foreign import rangedAttackPower :: Number
foreign import healPower :: Number
foreign import rangedHealPower :: Number
foreign import repairCost :: Number
foreign import dismantleCost :: Number

foreign import rampartDecayAmount :: Number
foreign import rampartDecayTime :: Number
foreign import rampartHits :: Number
foreign import rampartHitsMax :: Number

newtype TODO = TODO Number

foreign import energyRegenTime :: TODO
foreign import energyDecay :: TODO

foreign import spawnHits :: TODO
foreign import spawnEnergyStart :: TODO
foreign import spawnEnergyCapacity :: TODO
foreign import creepSpawnTime :: TODO
foreign import spawnRenewRatio :: TODO
foreign import sourceEnergyCapacity :: TODO
foreign import sourceEnergyNeutralCapacity :: TODO
foreign import sourceEnergyKeeperCapacity :: TODO
foreign import wallHits :: TODO
foreign import wallHitsMax :: TODO
foreign import extensionHits :: TODO
foreign import extensionEnergyCapacity :: TODO
foreign import roadHits :: TODO
foreign import roadWearout :: TODO
foreign import roadDecayAmount :: TODO
foreign import roadDecayTime :: TODO
foreign import linkHits :: TODO
foreign import linkHitsMax :: TODO
foreign import linkCapacity :: TODO
foreign import linkCooldown :: TODO
foreign import linkLossRatio :: TODO
foreign import storageCapacity :: TODO
foreign import storageHits :: TODO

newtype StructureType = StructureType String

foreign import structureSpawn :: StructureType
foreign import structureExtension :: StructureType
foreign import structureRoad :: StructureType
foreign import structureWall :: StructureType
foreign import structureRampart :: StructureType
foreign import structureKeeperLair :: StructureType
foreign import structurePortal :: StructureType
foreign import structureController :: StructureType
foreign import structureLink :: StructureType
foreign import structureStorage :: StructureType
foreign import structureTower :: StructureType
foreign import structureObserver :: StructureType
foreign import structurePowerBank :: StructureType
foreign import structurePowerSpawn :: StructureType
foreign import structureExtractor :: StructureType
foreign import structureLab :: StructureType
foreign import structureTerminal :: StructureType
foreign import structureContainer :: StructureType
foreign import structureNuker :: StructureType

foreign import constructionCost :: TODO
foreign import constructionCostRoadSwampRatio :: TODO
foreign import controllerLevels :: TODO
foreign import controllerStructures :: TODO
foreign import controllerDowngrade :: TODO
foreign import controllerClaimDowngrade :: TODO
foreign import controllerReserve :: TODO
foreign import controllerReserveMax :: TODO
foreign import controllerMaxUpgradePerTick :: TODO
foreign import controllerAttackBlockedUpgrade :: TODO
foreign import controllerNukeBlockedUpgrade :: TODO
foreign import safeModeDuration :: TODO
foreign import safeModeCooldown :: TODO
foreign import safeModeCost :: TODO
foreign import towerHits :: TODO
foreign import towerCapacity :: TODO
foreign import towerEnergyCost :: TODO
foreign import towerPowerAttack :: TODO
foreign import towerPowerHeal :: TODO
foreign import towerPowerRepair :: TODO
foreign import towerOptimalRange :: TODO
foreign import towerFalloffRange :: TODO
foreign import towerFalloff :: TODO
foreign import observerHits :: TODO
foreign import observerRange :: TODO
foreign import powerBankHits :: TODO
foreign import powerBankCapacityMax :: TODO
foreign import powerBankCapacityMin :: TODO
foreign import powerBankCapacityCrit :: TODO
foreign import powerBankDecay :: TODO
foreign import powerBankHitBack :: TODO
foreign import powerSpawnHits :: TODO
foreign import powerSpawnEnergyCapacity :: TODO
foreign import powerSpawnPowerCapacity :: TODO
foreign import powerSpawnEnergyRatio :: TODO
foreign import extractorHits :: TODO
foreign import extractorCooldown :: TODO
foreign import labHits :: TODO
foreign import labMineralCapacity :: TODO
foreign import labEnergyCapacity :: TODO
foreign import labBoostEnergy :: TODO
foreign import labBoostMineral :: TODO
foreign import labCooldown :: TODO
foreign import labReactionAmount :: TODO
foreign import gclPow :: TODO
foreign import gclMultiply :: TODO
foreign import gclNovice :: TODO
foreign import terrainMaskWall :: TODO
foreign import terrainMaskSwamp :: TODO
foreign import terrainMaskLava :: TODO
foreign import maxConstructionSites :: TODO
foreign import maxCreepSize :: TODO
foreign import mineralRegenTime :: TODO
foreign import mineralMinAmount :: TODO
foreign import mineralRandomFactor :: TODO
foreign import mineralDensity :: TODO
foreign import mineralDensityProbability :: TODO
foreign import mineralDensityChange :: TODO
foreign import densityLow :: TODO
foreign import densityModerate :: TODO
foreign import densityHigh :: TODO
foreign import densityUltra :: TODO
foreign import terminalCapacity :: TODO
foreign import terminalHits :: TODO
foreign import terminalSendCost :: TODO
foreign import terminalMinSend :: TODO
foreign import terminalCooldown :: TODO
foreign import containerHits :: TODO
foreign import containerCapacity :: TODO
foreign import containerDecay :: TODO
foreign import containerDecayTime :: TODO
foreign import containerDecayTimeOwned :: TODO
foreign import nukerHits :: TODO
foreign import nukerCooldown :: TODO
foreign import nukerEnergyCapacity :: TODO
foreign import nukerGhodiumCapacity :: TODO
foreign import nukeLandTime :: TODO
foreign import nukeRange :: TODO
foreign import nukeDamage :: TODO
foreign import portalDecay :: TODO
foreign import orderSell :: TODO
foreign import orderBuy :: TODO
foreign import marketFee :: TODO
foreign import flagsLimit :: TODO
foreign import subscriptionToken :: TODO

newtype ResourceConstant = ResourceConstant String

foreign import resourceEnergy :: ResourceConstant
foreign import resourcePower :: ResourceConstant
foreign import resourceHydrogen :: ResourceConstant
foreign import resourceOxygen :: ResourceConstant
foreign import resourceUtrium :: ResourceConstant
foreign import resourceLemergium :: ResourceConstant
foreign import resourceKeanium :: ResourceConstant
foreign import resourceZynthium :: ResourceConstant
foreign import resourceCatalyst :: ResourceConstant
foreign import resourceGhodium :: ResourceConstant
foreign import resourceHydroxide :: ResourceConstant
foreign import resourceZynthiumKeanite :: ResourceConstant
foreign import resourceUtriumLemergite :: ResourceConstant
foreign import resourceUtriumHydride :: ResourceConstant
foreign import resourceUtriumOxide :: ResourceConstant
foreign import resourceKeaniumHydride :: ResourceConstant
foreign import resourceKeaniumOxide :: ResourceConstant
foreign import resourceLemergiumHydride :: ResourceConstant
foreign import resourceLemergiumOxide :: ResourceConstant
foreign import resourceZynthiumHydride :: ResourceConstant
foreign import resourceZynthiumOxide :: ResourceConstant
foreign import resourceGhodiumHydride :: ResourceConstant
foreign import resourceGhodiumOxide :: ResourceConstant
foreign import resourceUtriumAcid :: ResourceConstant
foreign import resourceUtriumAlkalide :: ResourceConstant
foreign import resourceKeaniumAcid :: ResourceConstant
foreign import resourceKeaniumAlkalide :: ResourceConstant
foreign import resourceLemergiumAcid :: ResourceConstant
foreign import resourceLemergiumAlkalide :: ResourceConstant
foreign import resourceZynthiumAcid :: ResourceConstant
foreign import resourceZynthiumAlkalide :: ResourceConstant
foreign import resourceGhodiumAcid :: ResourceConstant
foreign import resourceGhodiumAlkalide :: ResourceConstant
foreign import resourceCatalyzedUtriumAcid :: ResourceConstant
foreign import resourceCatalyzedUtriumAlkalide :: ResourceConstant
foreign import resourceCatalyzedKeaniumAcid :: ResourceConstant
foreign import resourceCatalyzedKeaniumAlkalide :: ResourceConstant
foreign import resourceCatalyzedLemergiumAcid :: ResourceConstant
foreign import resourceCatalyzedLemergiumAlkalide :: ResourceConstant
foreign import resourceCatalyzedZynthiumAcid :: ResourceConstant
foreign import resourceCatalyzedZynthiumAlkalide :: ResourceConstant
foreign import resourceCatalyzedGhodiumAcid :: ResourceConstant
foreign import resourceCatalyzedGhodiumAlkalide :: ResourceConstant

foreign import reactions :: TODO
foreign import boosts :: TODO
foreign import portalUnstable :: TODO
foreign import portalMinTimeout :: TODO
foreign import portalMaxTimeout :: TODO
foreign import powerBankRespawnTime :: TODO
foreign import invadersEnergyGoal :: TODO
foreign import systemUsername :: TODO
foreign import signNoviceArea :: TODO
foreign import signRespawnArea :: TODO
