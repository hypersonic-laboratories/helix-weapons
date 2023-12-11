HelixWeapons = {}
Package.Export("helixWeapons", HelixWeapons)

HelixWeapons.AK47 = Weapon.Inherit("AK47")
HelixWeapons.AK47.name = "AK-47"
HelixWeapons.AK47.image = "assets://helix/Thumbnails/SK_AK47.jpg"
HelixWeapons.AK47.category = "rifles"

function HelixWeapons.AK47:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_AK47")

	self:SetAmmoSettings(30, 1000)
	self:SetDamage(30)
	self:SetSpread(30)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandTransform(Vector(22, 0, 9), Rotator(0, 60, 90))
	self:SetRightHandOffset(Vector(-10, 0, 0))
	self:SetHandlingMode(HandlingMode.DoubleHandedWeapon)
	self:SetCadence(0.1)
	self:SetWallbangSettings(200, 0.75)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_762x39")

	self:SetSoundDry("helix::A_Rifle_Dry")
	self:SetSoundLoad("helix::A_Rifle_Load")
	self:SetSoundUnload("helix::A_Rifle_Unload")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_AK47_Shot")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_AK47_Fire")

	self:SetMagazineMesh("helix::SM_AK47_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular")
end

HelixWeapons.AK74U = Weapon.Inherit("AK74U")
HelixWeapons.AK74U.name = "AK-74U"
HelixWeapons.AK74U.image = "assets://helix/Thumbnails/SK_AK74U.jpg"
HelixWeapons.AK74U.category = "rifles"

function HelixWeapons.AK74U:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_AK74U")

	self:SetAmmoSettings(30, 1000)
	self:SetDamage(25)
	self:SetSpread(15)
	self:SetRecoil(0.3)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	self:SetSightTransform(Vector(0, 0, -2), Rotator(-3, 0, 0))
	self:SetLeftHandTransform(Vector(26, 0, 9), Rotator(0, 60, 90))
	self:SetRightHandOffset(Vector(-10, 0, 0))
	self:SetHandlingMode(HandlingMode.DoubleHandedWeapon)
	self:SetCadence(0.085)
	self:SetWallbangSettings(200, 0.50)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_545x39")

	self:SetSoundDry("helix::A_Rifle_Dry")
	self:SetSoundLoad("helix::A_Rifle_Load")
	self:SetSoundUnload("helix::A_Rifle_Unload")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_AK74U_Shot")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_AK74U_Fire")

	self:SetMagazineMesh("helix::SM_AK74U_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular")
end

HelixWeapons.GE36 = Weapon.Inherit("GE36")
HelixWeapons.GE36.name = "Gewehr 36"
HelixWeapons.GE36.image = "assets://helix/Thumbnails/SK_GE36.jpg"
HelixWeapons.GE36.category= "rifles"

function HelixWeapons.GE36:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_GE36")

	self:SetAmmoSettings(30, 1000)
	self:SetDamage(30)
	self:SetSpread(15)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	self:SetSightTransform(Vector(0, 0, -2.4), Rotator(0, 0, 0))
	self:SetLeftHandTransform(Vector(24, 0, 9), Rotator(0, 60, 90))
	self:SetRightHandOffset(Vector(-10, 0, 0))
	self:SetHandlingMode(HandlingMode.DoubleHandedWeapon)
	self:SetCadence(0.125)
	self:SetWallbangSettings(200, 0.5)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_556x45")

	self:SetSoundDry("helix::A_Rifle_Dry")
	self:SetSoundLoad("helix::A_Rifle_Load")
	self:SetSoundUnload("helix::A_Rifle_Unload")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_Rifle_Shot")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_GE36_Fire")

	self:SetMagazineMesh("helix::SM_GE36_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular_X")
end


HelixWeapons.Glock = Weapon.Inherit("Glock")
HelixWeapons.Glock.name = "Glock"
HelixWeapons.Glock.image = "assets://helix/Thumbnails/SK_Glock.jpg"
HelixWeapons.Glock.category= "pistols"

function HelixWeapons.Glock:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Glock")

	self:SetAmmoSettings(17, 1000)
	self:SetDamage(15)
	self:SetSpread(20)
	self:SetRecoil(0.5)
	self:SetBulletSettings(1, 30000, 30000, Color(13, 100, 0))
	self:SetSightTransform(Vector(0, 0, 1), Rotator(-0.5, 0, 0))
	self:SetLeftHandTransform(Vector(0, 0, -4), Rotator(0, 60, 100))
	self:SetRightHandOffset(Vector(-25, 0, 0))
	self:SetHandlingMode(HandlingMode.SingleHandedWeapon)
	self:SetCadence(0.15)
	self:SetWallbangSettings(160, 0.25)

	self:SetSightFOVMultiplier(0.6)
	self:SetUsageSettings(false, false)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_9mm")

	self:SetSoundDry("helix::A_Pistol_Dry")
	self:SetSoundLoad("helix::A_Pistol_Load")
	self:SetSoundUnload("helix::A_Pistol_Unload")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_Glock_Shot")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 3)

	self:SetAnimationCharacterFire("helix::A_Mannequin_Sight_Fire_Pistol")
	self:SetAnimationFire("helix::A_Glock_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Pistol")

	self:SetMagazineMesh("helix::SM_Glock_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Circle")
end

HelixWeapons.DesertEagle = Weapon.Inherit("DesertEagle")
HelixWeapons.DesertEagle.name = "Desert Eagle"
HelixWeapons.DesertEagle.image = "assets://helix/Thumbnails/SK_DesertEagle.jpg"
HelixWeapons.DesertEagle.category= "pistols"

function HelixWeapons.DesertEagle:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_DesertEagle")

	self:SetAmmoSettings(7, 1000)
	self:SetDamage(45)
	self:SetSpread(70)
	self:SetRecoil(2)
	self:SetBulletSettings(1, 30000, 30000, Color(13, 100, 0))
	self:SetSightTransform(Vector(0, 0, -1.4), Rotator(-1, 0, 0))
	self:SetLeftHandTransform(Vector(0, 0, -4), Rotator(0, 60, 100))
	self:SetRightHandOffset(Vector(-25, 0, 0))
	self:SetHandlingMode(HandlingMode.SingleHandedWeapon)
	self:SetCadence(0.225)
	self:SetWallbangSettings(400, 0.8)

	self:SetSightFOVMultiplier(0.6)
	self:SetUsageSettings(false, false)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_45ap")

	self:SetSoundDry("helix::A_Pistol_Dry")
	self:SetSoundLoad("helix::A_Pistol_Load")
	self:SetSoundUnload("helix::A_Pistol_Unload")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_DesertEagle_Shot")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 2)

	self:SetAnimationCharacterFire("helix::A_Mannequin_Sight_Fire_Pistol")
	self:SetAnimationFire("helix::A_DesertEagle_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Pistol")

	self:SetMagazineMesh("helix::SM_DesertEagle_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Tee")
end

HelixWeapons.ColtPython = Weapon.Inherit("ColtPython")
HelixWeapons.ColtPython.name = "Colt Python"
HelixWeapons.ColtPython.image = "assets://helix/Thumbnails/SK_Colt_Python.jpg"
HelixWeapons.ColtPython.category= "vintage"

function HelixWeapons.ColtPython:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_ColtPython")

	self:SetAmmoSettings(7, 1000, 1)
	self:SetDamage(45)
	self:SetSpread(70)
	self:SetRecoil(2)
	self:SetBulletSettings(1, 30000, 30000, Color(13, 100, 0))
	self:SetSightTransform(Vector(0, 0, -2), Rotator(-0.1, 0, 0))
	self:SetLeftHandTransform(Vector(0, 0, -4), Rotator(0, 60, 100))
	self:SetRightHandOffset(Vector(-25, 0, 0))
	self:SetHandlingMode(HandlingMode.SingleHandedWeapon)
	self:SetCadence(0.35)
	self:SetWallbangSettings(400, 0.8)

	self:SetSightFOVMultiplier(0.6)
	self:SetUsageSettings(false, false)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_45ap")

	self:SetSoundDry("helix::A_Pistol_Dry")
	self:SetSoundLoad("helix::A_Shotgun_Load_Bullet")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_Shotgun_Shot_C")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 2)

	self:SetAnimationCharacterFire("helix::A_Mannequin_Sight_Fire_Pistol")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Shotgun")

	self:SetCrosshairMaterial("helix::MI_Crosshair_Tee")
end


HelixWeapons.Lewis = Weapon.Inherit("Lewis")
HelixWeapons.Lewis.name = "Lewis Gun"
HelixWeapons.Lewis.image = "assets://helix/Thumbnails/SK_Lewis.jpg"
HelixWeapons.Lewis.category= "vintage"

function HelixWeapons.Lewis:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Lewis")

	self:SetAmmoSettings(47, 1000)
	self:SetDamage(25)
	self:SetSpread(10)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	self:SetSightTransform(Vector(-15, 0, -8), Rotator(-1.5, 0, 0))
	self:SetLeftHandTransform(Vector(27, 0, 6), Rotator(0, 60, 80))
	self:SetRightHandOffset(Vector(-5, 0, 0))
	self:SetHandlingMode(HandlingMode.DoubleHandedWeapon)
	self:SetCadence(0.175)
	self:SetWallbangSettings(200, 0.6)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_556x45")

	self:SetSoundDry("helix::A_Rifle_Dry")
	self:SetSoundUnload("helix::A_MMG_Reload")
	self:SetSoundLoad("helix::A_Rifle_Semi_Load")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_Rifle_Shot_B")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 8)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_Lewis_Fire")

	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular_X")
end

HelixWeapons.AR4 = Weapon.Inherit("AR4")
HelixWeapons.AR4.name = "AR-15"
HelixWeapons.AR4.image = "assets://helix/Thumbnails/SK_AR4.jpg"
HelixWeapons.AR4.category= "rifles"

function HelixWeapons.AR4:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_AR4")

	self:SetAmmoSettings(30, 1000)
	self:SetDamage(30)
	self:SetSpread(10)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	self:SetSightTransform(Vector(0, 0, -3.5), Rotator(-0.5, 0, 0))
	self:SetLeftHandTransform(Vector(25, 0, 10.5), Rotator(0, 60, 90))
	self:SetRightHandOffset(Vector(-10, 0, 0))
	self:SetHandlingMode(HandlingMode.DoubleHandedWeapon)
	self:SetCadence(0.1)
	self:SetWallbangSettings(200, 0.6)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_556x45")

	self:SetSoundDry("helix::A_Rifle_Dry")
	self:SetSoundLoad("helix::A_Rifle_Load")
	self:SetSoundUnload("helix::A_Rifle_Unload")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_M4A1_Shot")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_AR4_Fire")

	self:SetMagazineMesh("helix::SM_AR4_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular")
end


HelixWeapons.Moss500 = Weapon.Inherit("Moss500")
HelixWeapons.Moss500.name = "Moss 500"
HelixWeapons.Moss500.image = "assets://helix/Thumbnails/SK_Moss500.jpg"
HelixWeapons.Moss500.category= "shotguns"

function HelixWeapons.Moss500:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Moss500")

	self:SetAmmoSettings(6, 1000, 1)
	self:SetDamage(30)
	self:SetSpread(70)
	self:SetRecoil(3)
	self:SetBulletSettings(6, 10000, 30000, Color(100, 58, 0))
	self:SetSightTransform(Vector(0, 0, 3.6), Rotator(-2, 0, 0))
	self:SetLeftHandTransform(Vector(36.8, 0, 3.8), Rotator(-5, 10, 190))
	self:SetRightHandOffset(Vector(0, 0, 3))
	self:SetHandlingMode(HandlingMode.DoubleHandedWeapon)
	self:SetCadence(0.9)
	self:SetWallbangSettings(100, 0.25)

	self:SetSightFOVMultiplier(0.75)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_12Gauge")

	self:SetSoundDry("helix::A_Shotgun_Dry")
	self:SetSoundLoad("helix::A_Shotgun_Load_Bullet")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_Shotgun_Shot")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 1)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire_Heavy")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Shotgun")
	self:SetAnimationFire("helix::A_Moss500_Fire")

	self:SetCrosshairMaterial("helix::MI_Crosshair_Shotgun")
end


HelixWeapons.AP5 = Weapon.Inherit("AP5")
HelixWeapons.AP5.name = "MP5"
HelixWeapons.AP5.image = "assets://helix/Thumbnails/SK_AP5.jpg"
HelixWeapons.AP5.category= "smgs"

function HelixWeapons.AP5:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_AP5")

	self:SetAmmoSettings(30, 1000)
	self:SetDamage(15)
	self:SetSpread(75)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	self:SetSightTransform(Vector(0, 0, -2.2), Rotator(-2, 0, 0))
	self:SetLeftHandTransform(Vector(21, 0, 9), Rotator(0, 60, 90))
	self:SetRightHandOffset(Vector(-10, 0, 0))
	self:SetHandlingMode(HandlingMode.DoubleHandedWeapon)
	self:SetCadence(0.075)
	self:SetWallbangSettings(200, 0.5)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_9x18")

	self:SetSoundDry("helix::A_SMG_Dry")
	self:SetSoundLoad("helix::A_SMG_Load")
	self:SetSoundUnload("helix::A_SMG_Unload")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_LightMachine_Shot")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_AP5_Fire")

	self:SetMagazineMesh("helix::SM_AP5_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Submachine")
end

HelixWeapons.SMG11 = Weapon.Inherit("SMG11")
HelixWeapons.SMG11.name = "MAC-10"
HelixWeapons.SMG11.image = "assets://helix/Thumbnails/SK_SMG11.jpg"
HelixWeapons.SMG11.category= "smgs"

function HelixWeapons.SMG11:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_SMG11")

	self:SetAmmoSettings(32, 1000)
	self:SetDamage(15)
	self:SetSpread(100)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	self:SetSightTransform(Vector(0, 0, -6.5), Rotator(-5, 0, 0))
	self:SetLeftHandTransform(Vector(-0.5, -3, -1), Rotator(0, 25, 155))
	self:SetRightHandOffset(Vector(-35, 0, -5))
	self:SetHandlingMode(HandlingMode.SingleHandedWeapon)
	self:SetCadence(0.075)
	self:SetWallbangSettings(200, 0.25)

	self:SetSightFOVMultiplier(0.55)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_9x18")

	self:SetSoundDry("helix::A_SMG_Dry")
	self:SetSoundLoad("helix::A_SMG_Load")
	self:SetSoundUnload("helix::A_SMG_Unload")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_SMG_Shot")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Pistol")
	self:SetAnimationFire("helix::A_SMG11_Fire")

	self:SetMagazineMesh("helix::SM_AP5_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Submachine")
end

HelixWeapons.ASVal = Weapon.Inherit("ASVal")
HelixWeapons.ASVal.name = "AS-Val"
HelixWeapons.ASVal.image = "assets://helix/Thumbnails/SK_ASVal.jpg"
HelixWeapons.ASVal.category= "rifles"

function HelixWeapons.ASVal:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_ASVal")

	self:SetAmmoSettings(20, 1000)
	self:SetDamage(20)
	self:SetSpread(25)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(58, 100, 0))
	self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandTransform(Vector(23.5, 0, 9), Rotator(0, 60, 90))
	self:SetRightHandOffset(Vector(-12.5, 0, 0))
	self:SetHandlingMode(HandlingMode.DoubleHandedWeapon)
	self:SetCadence(0.07)
	self:SetWallbangSettings(200, 0.5)

	self:SetSightFOVMultiplier(0.55)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_556x45")

	self:SetSoundDry("helix::A_Rifle_Dry")
	self:SetSoundLoad("helix::A_Rifle_Load")
	self:SetSoundUnload("helix::A_Rifle_Unload")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_ASVal_Shot")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 4)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_ASVal_Fire")

	self:SetMagazineMesh("helix::SM_ASVal_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular")
end


HelixWeapons.M1911 = Weapon.Inherit("M1911")
HelixWeapons.M1911.name = "M1911"
HelixWeapons.M1911.image = "assets://helix/Thumbnails/SK_M1911.jpg"
HelixWeapons.M1911.category= "pistols"

function HelixWeapons.M1911:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_M1911")

	self:SetAmmoSettings(8, 1000)
	self:SetDamage(20)
	self:SetSpread(20)
	self:SetRecoil(0.5)
	self:SetBulletSettings(1, 30000, 30000, Color(13, 100, 0))
	self:SetSightTransform(Vector(0, 0, 1.5), Rotator(0, 0, 0))
	self:SetLeftHandTransform(Vector(0, 0, -4), Rotator(0, 60, 100))
	self:SetRightHandOffset(Vector(-25, 0, 0))
	self:SetHandlingMode(HandlingMode.SingleHandedWeapon)
	self:SetCadence(0.15)
	self:SetWallbangSettings(160, 0.25)

	self:SetSightFOVMultiplier(0.6)
	self:SetUsageSettings(false, false)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_45ap")

	self:SetSoundDry("helix::A_Pistol_Dry")
	self:SetSoundLoad("helix::A_Pistol_Load")
	self:SetSoundUnload("helix::A_Pistol_Unload")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_Pistol_Shot")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 2)

	self:SetAnimationFire("helix::A_M1911_Fire")
	self:SetAnimationCharacterFire("helix::A_Mannequin_Sight_Fire_Pistol")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Pistol")

	self:SetMagazineMesh("helix::SM_M1911_Mag")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Circle")
end

HelixWeapons.Makarov = Weapon.Inherit("Makarov")
HelixWeapons.Makarov.name = "Makarov"
HelixWeapons.Makarov.image = "assets://helix/Thumbnails/SK_Makarov.jpg"
HelixWeapons.Makarov.category= "pistols"

function HelixWeapons.Makarov:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Makarov")

	self:SetAmmoSettings(8, 1000)
	self:SetDamage(20)
	self:SetSpread(20)
	self:SetRecoil(0.5)
	self:SetBulletSettings(1, 30000, 30000, Color(13, 100, 0))
	self:SetSightTransform(Vector(0, 0, 1.3), Rotator(-1, 0, 0))
	self:SetLeftHandTransform(Vector(0, 0, -4), Rotator(0, 60, 100))
	self:SetRightHandOffset(Vector(-25, 0, 0))
	self:SetHandlingMode(HandlingMode.SingleHandedWeapon)
	self:SetCadence(0.15)
	self:SetWallbangSettings(160, 0.25)

	self:SetSightFOVMultiplier(0.6)
	self:SetUsageSettings(false, false)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_45ap")

	self:SetSoundDry("helix::A_Pistol_Dry")
	self:SetSoundLoad("helix::A_Pistol_Load")
	self:SetSoundUnload("helix::A_Pistol_Unload")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_Pistol_Shot_B")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 2)

	self:SetAnimationFire("helix::A_Makarov_Fire")
	self:SetAnimationCharacterFire("helix::A_Mannequin_Sight_Fire_Pistol")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Pistol")

	self:SetMagazineMesh("helix::SM_M1911_Mag")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Circle")
end

HelixWeapons.UMP45 = Weapon.Inherit("UMP45")
HelixWeapons.UMP45.name = "UMP-45"
HelixWeapons.UMP45.image = "assets://helix/Thumbnails/SK_UMP45.jpg"
HelixWeapons.UMP45.category= "smgs"

function HelixWeapons.UMP45:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_UMP45")

	self:SetAmmoSettings(25, 1000)
	self:SetDamage(35)
	self:SetSpread(50)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	self:SetSightTransform(Vector(0, 0, -1.9), Rotator(-0.4, 0, 0))
	self:SetLeftHandTransform(Vector(17, -2, 1), Rotator(25, 25, 160))
	self:SetRightHandOffset(Vector(-10, 0, 0))
	self:SetHandlingMode(HandlingMode.DoubleHandedWeapon)
	self:SetCadence(0.1)
	self:SetWallbangSettings(200, 0.5)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_9x18")

	self:SetSoundDry("helix::A_SMG_Dry")
	self:SetSoundLoad("helix::A_SMG_Load")
	self:SetSoundUnload("helix::A_SMG_Unload")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_MMG_Shot")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 5)

	self:SetAnimationFire("helix::A_UMP45_Fire")
	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")

	self:SetMagazineMesh("helix::SM_AP5_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Submachine")
end


HelixWeapons.P90 = Weapon.Inherit("P90")
HelixWeapons.P90.name = "P90"
HelixWeapons.P90.image = "assets://helix/Thumbnails/SK_P90.jpg"
HelixWeapons.P90.category= "smgs"

function HelixWeapons.P90:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_P90")

	self:SetAmmoSettings(50, 1000)
	self:SetDamage(25)
	self:SetSpread(150)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	self:SetSightTransform(Vector(0, 0, -6.25), Rotator(-1, 0, 0))
	self:SetLeftHandTransform(Vector(0, 0, -4), Rotator(0, 60, 90))
	self:SetRightHandOffset(Vector(-20, 0, 0))
	self:SetHandlingMode(HandlingMode.DoubleHandedWeapon)
	self:SetCadence(0.07)
	self:SetWallbangSettings(200, 0.5)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_9x18")

	self:SetSoundDry("helix::A_SMG_Dry")
	self:SetSoundLoad("helix::A_SMG_Load")
	self:SetSoundUnload("helix::A_SMG_Unload")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_Rifle_Shot_B")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 10)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")

	self:SetMagazineMesh("helix::SM_P90_Mag")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Submachine")

	self:AddStaticMeshAttached("sight", "helix::SM_T4_Sight", "", Vector(7, 0, 13))
end

HelixWeapons.GE3 = Weapon.Inherit("GE3")
HelixWeapons.GE3.name = "Gewehr 3"
HelixWeapons.GE3.image = "assets://helix/Thumbnails/SK_GE3.jpg"
HelixWeapons.GE3.category= "rifles"

function HelixWeapons.GE3:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_GE3")

	self:SetAmmoSettings(30, 1000)
	self:SetDamage(30)
	self:SetSpread(10)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	self:SetSightTransform(Vector(0, 0, -2.5), Rotator(-1.5, 0, 0))
	self:SetLeftHandTransform(Vector(27.5, 0, 11), Rotator(0, 60, 90))
	self:SetRightHandOffset(Vector(-10, 0, 0))
	self:SetHandlingMode(HandlingMode.DoubleHandedWeapon)
	self:SetCadence(0.09)
	self:SetWallbangSettings(200, 0.5)

	self:SetSightFOVMultiplier(0.5)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_556x45")

	self:SetSoundDry("helix::A_Rifle_Dry")
	self:SetSoundLoad("helix::A_Rifle_Load")
	self:SetSoundUnload("helix::A_Rifle_Unload")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_M4A1_02_Shot")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationFire("helix::A_GE3_Fire")
	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")

	self:SetMagazineMesh("helix::SM_GE36_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular_X")
end

HelixWeapons.AK5C = Weapon.Inherit("AK5C")
HelixWeapons.AK5C.name = "Automatkarbin 5C"
HelixWeapons.AK5C.image = "assets://helix/Thumbnails/SK_AK5C.jpg"
HelixWeapons.AK5C.category= "rifles"

function HelixWeapons.AK5C:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_AK5C")

	self:SetAmmoSettings(30, 1000)
	self:SetDamage(30)
	self:SetSpread(10)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	self:SetSightTransform(Vector(0, 0, -1.75), Rotator(0, 0, 0))
	self:SetLeftHandTransform(Vector(25, 0, 10), Rotator(0, 60, 90))
	self:SetRightHandOffset(Vector(-10, 0, 0))
	self:SetHandlingMode(HandlingMode.DoubleHandedWeapon)
	self:SetCadence(0.09)
	self:SetWallbangSettings(200, 0.5)

	self:SetSightFOVMultiplier(0.5)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_556x45")

	self:SetSoundDry("helix::A_Rifle_Dry")
	self:SetSoundLoad("helix::A_Rifle_Load")
	self:SetSoundUnload("helix::A_Rifle_Unload")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_Rifle_Semi_Shot")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationFire("helix::A_AK5C_Fire")
	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")

	self:SetMagazineMesh("helix::SM_AK5C_Mag")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular_X")
end


HelixWeapons.SA80 = Weapon.Inherit("SA80")
HelixWeapons.SA80.name = "SA-80"
HelixWeapons.SA80.image = "assets://helix/Thumbnails/SK_SA80.jpg"
HelixWeapons.SA80.category= "rifles"

function HelixWeapons.SA80:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_SA80")

	self:SetAmmoSettings(30, 1000)
	self:SetDamage(30)
	self:SetSpread(10)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	self:SetSightTransform(Vector(0, 0, -7), Rotator(0, 0, 0))
	self:SetLeftHandTransform(Vector(10, 0, 7.3), Rotator(0, 60, 90))
	self:SetRightHandOffset(Vector(-20, 0, -3))
	self:SetHandlingMode(HandlingMode.DoubleHandedWeapon)
	self:SetCadence(0.09)
	self:SetWallbangSettings(200, 0.5)

	self:SetSightFOVMultiplier(0.5)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_556x45")

	self:SetSoundDry("helix::A_Rifle_Dry")
	self:SetSoundLoad("helix::A_Rifle_Load")
	self:SetSoundUnload("helix::A_Rifle_Unload")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_AR15_A_Shot")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationFire("helix::A_SA80_Fire")
	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")

	self:SetMagazineMesh("helix::SM_AK5C_Mag")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular_X")
end

HelixWeapons.Sten = Weapon.Inherit("Sten")
HelixWeapons.Sten.name = "Sten"
HelixWeapons.Sten.image = "assets://helix/Thumbnails/SK_Sten.jpg"
HelixWeapons.Sten.category= "vintage"

function HelixWeapons.Sten:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Sten")

	self:SetAmmoSettings(30, 1000)
	self:SetDamage(30)
	self:SetSpread(10)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	self:SetSightTransform(Vector(0, 0, 0.5), Rotator(0, 0, 0))
	self:SetLeftHandTransform(Vector(16.5, 0, 5.5), Rotator(0, 60, 90))
	self:SetRightHandOffset(Vector(-10, 0, 0))
	self:SetHandlingMode(HandlingMode.DoubleHandedWeapon)
	self:SetCadence(0.075)
	self:SetWallbangSettings(200, 0.5)

	self:SetSightFOVMultiplier(0.5)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_556x45")

	self:SetSoundDry("helix::A_Rifle_Dry")
	self:SetSoundLoad("helix::A_Rifle_Load")
	self:SetSoundUnload("helix::A_Rifle_Unload")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_1911_A_Shot")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")

	self:SetMagazineMesh("helix::SM_AK5C_Mag")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular_X")
end

HelixWeapons.BAR = Weapon.Inherit("BAR")
HelixWeapons.BAR.name = "BAR"
HelixWeapons.BAR.image = "assets://helix/Thumbnails/SK_BAR.jpg"
HelixWeapons.BAR.category= "vintage"

function HelixWeapons.BAR:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_BAR")

	self:SetAmmoSettings(30, 1000)
	self:SetDamage(30)
	self:SetSpread(10)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	self:SetSightTransform(Vector(0, 0, 0.5), Rotator(-0.5, 0, 0))
	self:SetLeftHandTransform(Vector(33, 0, 3), Rotator(0, 60, 90))
	self:SetRightHandOffset(Vector(-5, 0, 0))
	self:SetHandlingMode(HandlingMode.DoubleHandedWeapon)
	self:SetCadence(0.15)
	self:SetWallbangSettings(200, 0.5)

	self:SetSightFOVMultiplier(0.5)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_556x45")

	self:SetSoundDry("helix::A_Rifle_Dry")
	self:SetSoundLoad("helix::A_Rifle_Load")
	self:SetSoundUnload("helix::A_Rifle_Unload")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_BAR_Shot")
	self:SetSoundFireLastBullets("helix::A_Rifle_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")

	self:SetMagazineMesh("helix::SM_AK5C_Mag")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular_X")
end


HelixWeapons.StG44 = Weapon.Inherit("StG44")
HelixWeapons.StG44.name = "StG44"
HelixWeapons.StG44.image = "assets://helix/Thumbnails/SK_StG44.jpg"
HelixWeapons.StG44.category= "vintage"

function HelixWeapons.StG44:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_StG44")

	self:SetAmmoSettings(30, 1000)
	self:SetDamage(30)
	self:SetSpread(10)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	self:SetSightTransform(Vector(0, 0, -2.5), Rotator(-0.5, 0, 0))
	self:SetLeftHandTransform(Vector(27.5, 0, 10), Rotator(0, 60, 90))
	self:SetRightHandOffset(Vector(-10, 0, 0))
	self:SetHandlingMode(HandlingMode.DoubleHandedWeapon)
	self:SetCadence(0.1)
	self:SetWallbangSettings(200, 0.5)

	self:SetSightFOVMultiplier(0.5)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_556x45")

	self:SetSoundDry("helix::A_Rifle_Dry")
	self:SetSoundLoad("helix::A_Rifle_Load")
	self:SetSoundUnload("helix::A_Rifle_Unload")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_StG44_Shot")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")

	self:SetMagazineMesh("helix::SM_AK5C_Mag")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular_X")
end

HelixWeapons.Ithaca37 = Weapon.Inherit("Ithaca37")
HelixWeapons.Ithaca37.name = "Ithaca 37"
HelixWeapons.Ithaca37.image = "assets://helix/Thumbnails/SK_Ithaca37.jpg"
HelixWeapons.Ithaca37.category= "shotguns"

function HelixWeapons.Ithaca37:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Ithaca37")

	self:SetAmmoSettings(6, 1000, 1)
	self:SetDamage(30)
	self:SetSpread(70)
	self:SetRecoil(3)
	self:SetBulletSettings(6, 10000, 30000, Color(100, 58, 0))
	self:SetSightTransform(Vector(0, 0, 5.5), Rotator(-1, 0, 0))
	self:SetLeftHandTransform(Vector(35, 0, 6), Rotator(0, 60, 90))
	self:SetRightHandOffset(Vector(0, 0, 5))
	self:SetHandlingMode(HandlingMode.DoubleHandedWeapon)
	self:SetCadence(0.9)
	self:SetWallbangSettings(100, 0.25)

	self:SetSightFOVMultiplier(0.75)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_12Gauge")

	self:SetSoundDry("helix::A_Shotgun_Dry")
	self:SetSoundLoad("helix::A_Shotgun_Load_Bullet")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_ShotgunBlast_Shot")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 2)

	self:SetAnimationFire("helix::A_Ithaca37_Fire")
	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire_Heavy")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Shotgun")

	self:SetCrosshairMaterial("helix::MI_Crosshair_Shotgun")
end

HelixWeapons.Rem870 = Weapon.Inherit("Rem870")
HelixWeapons.Rem870.name = "Rem 870"
HelixWeapons.Rem870.image = "assets://helix/Thumbnails/SK_Rem870.jpg"
HelixWeapons.Rem870.category= "shotguns"

function HelixWeapons.Rem870:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Rem870")

	self:SetAmmoSettings(6, 1000, 1)
	self:SetDamage(30)
	self:SetSpread(70)
	self:SetRecoil(3)
	self:SetBulletSettings(6, 10000, 30000, Color(100, 58, 0))
	self:SetSightTransform(Vector(0, 0, 4.5), Rotator(-2, 0, 0))
	self:SetLeftHandTransform(Vector(35, 0, 6), Rotator(0, 60, 90))
	self:SetRightHandOffset(Vector(0, 0, 5))
	self:SetHandlingMode(HandlingMode.DoubleHandedWeapon)
	self:SetCadence(0.9)
	self:SetWallbangSettings(100, 0.25)

	self:SetSightFOVMultiplier(0.75)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_12Gauge")

	self:SetSoundDry("helix::A_Shotgun_Dry")
	self:SetSoundLoad("helix::A_Shotgun_Load_Bullet")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_Shotgun_Shot_C")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 2)

	self:SetAnimationFire("helix::A_Rem870_Fire")
	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire_Heavy")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Shotgun")

	self:SetCrosshairMaterial("helix::MI_Crosshair_Shotgun")
end


HelixWeapons.SPAS12 = Weapon.Inherit("SPAS12")
HelixWeapons.SPAS12.name = "SPAS12"
HelixWeapons.SPAS12.image = "assets://helix/Thumbnails/SK_SPAS12.jpg"
HelixWeapons.SPAS12.category= "shotguns"

function HelixWeapons.SPAS12:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_SPAS12")

	self:SetAmmoSettings(6, 1000, 1)
	self:SetDamage(20)
	self:SetSpread(60)
	self:SetRecoil(2)
	self:SetBulletSettings(6, 10000, 30000, Color(100, 58, 0))
	self:SetSightTransform(Vector(0, 0, 2.3), Rotator(-1.5, 0, 0))
	self:SetLeftHandTransform(Vector(30, -0.5, 6), Rotator(0, 60, 90))
	self:SetRightHandOffset(Vector(0, 0, 4))
	self:SetHandlingMode(HandlingMode.DoubleHandedWeapon)
	self:SetCadence(0.6)
	self:SetWallbangSettings(100, 0.25)

	self:SetSightFOVMultiplier(0.75)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_12Gauge")

	self:SetSoundDry("helix::A_Shotgun_Dry")
	self:SetSoundLoad("helix::A_Shotgun_Load_Bullet")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_Shotgun_Shot_B")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 2)

	self:SetAnimationFire("helix::A_SPAS12_Fire")
	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire_Heavy")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Shotgun")

	self:SetCrosshairMaterial("helix::MI_Crosshair_Shotgun")
end

HelixWeapons.M1Garand = Weapon.Inherit("M1Garand")
HelixWeapons.M1Garand.name = "M1Garand"
HelixWeapons.M1Garand.image = "assets://helix/Thumbnails/SK_M1Garand.jpg"
HelixWeapons.M1Garand.category= "vintage"

function HelixWeapons.M1Garand:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_M1Garand")

	self:SetAmmoSettings(8, 1000)
	self:SetDamage(35)
	self:SetSpread(10)
	self:SetRecoil(0.5)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	self:SetSightTransform(Vector(0, 0, 2.5), Rotator(1.2, 0, 0))
	self:SetLeftHandTransform(Vector(25, 0, 6), Rotator(0, 60, 90))
	self:SetRightHandOffset(Vector(-5, 0, 0))
	self:SetHandlingMode(HandlingMode.DoubleHandedWeapon)
	self:SetCadence(0.2)
	self:SetWallbangSettings(200, 0.75)

	self:SetSightFOVMultiplier(0.5)
	self:SetUsageSettings(false, false)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_9x18")

	self:SetSoundDry("helix::A_Rifle_Dry")
	self:SetSoundLoad("helix::A_Rifle_Load")
	self:SetSoundUnload("helix::A_Rifle_Unload")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_M1Garand_Shot")
	self:SetSoundFireLastBullets("helix::A_M1Garand_Ping", 1)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")

	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular_X")
end

HelixWeapons.AWP = Weapon.Inherit("AWP")
HelixWeapons.AWP.name = "AWP"
HelixWeapons.AWP.image = "assets://helix/Thumbnails/SK_AWP.jpg"
HelixWeapons.AWP.category= "sniper-rifles"

function HelixWeapons.AWP:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_AWP")

	self:SetAmmoSettings(10, 1000)
	self:SetDamage(90)
	self:SetSpread(10)
	self:SetRecoil(3)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	self:SetSightTransform(Vector(-15, 0, -4.5), Rotator(0, 0, 0))
	self:SetLeftHandTransform(Vector(25, 0, 6), Rotator(0, 60, 90))
	self:SetRightHandOffset(Vector(-10, 0, 2))
	self:SetHandlingMode(HandlingMode.DoubleHandedWeapon)
	self:SetCadence(2)
	self:SetWallbangSettings(200, 0.75)

	self:SetSightFOVMultiplier(0.1)
	self:SetUsageSettings(false, false)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_762x39")

	self:SetSoundDry("helix::A_Shotgun_Dry")
	self:SetSoundLoad("helix::A_Shotgun_Load_Bullet")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_SniperRifle_Shot")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 2)

	self:SetAnimationFire("helix::A_AWP_Fire")
	self:SetAnimationCharacterFire("helix::A_Mannequin_Sight_Fire_Pistol")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular")

	self:AddStaticMeshAttached("sight", "helix::SM_Scope_25x56", "", Vector(20, 0, 11))
end


HelixWeapons.DC15S = Weapon.Inherit("DC15S")
HelixWeapons.DC15S.name = "DC15S"
HelixWeapons.DC15S.image = "assets://helix/Thumbnails/SK_DC15S.jpg"
HelixWeapons.DC15S.category= "rifles"

function HelixWeapons.DC15S:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_DC15S")

	self:SetAmmoSettings(30, 1000)
	self:SetDamage(25)
	self:SetSpread(40)
	self:SetRecoil(0.4)
	self:SetBulletSettings(1, 30000, 30000, Color(0, 0, 1000))
	self:SetSightTransform(Vector(-6, 0, -5), Rotator(0, 0, 0))
	self:SetLeftHandTransform(Vector(19, 0, 5), Rotator(0, 60, 90))
	self:SetRightHandOffset(Vector(-7, 0, -1))
	self:SetHandlingMode(HandlingMode.DoubleHandedWeapon)
	self:SetCadence(0.175)
	self:SetWallbangSettings(200, 0.75)

	self:SetSightFOVMultiplier(0.6)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")

	self:SetSoundDry("helix::A_Rifle_Dry")
	self:SetSoundLoad("helix::A_Rifle_Load")
	self:SetSoundUnload("helix::A_Rifle_Unload")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_Blast_Shot")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")

	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular")
end

HelixWeapons.G67 = Grenade.Inherit("G67")
HelixWeapons.G67.name = "Grenade"
HelixWeapons.G67.image = "assets://helix/Thumbnails/SM_Grenade_G67.jpg"
HelixWeapons.G67.category= "grenades"

function HelixWeapons.G67:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SM_Grenade_G67")
end