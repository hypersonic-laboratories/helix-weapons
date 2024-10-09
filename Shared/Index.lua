NewHelixWeapons = {}
Package.Export("newHelixWeapons", NewHelixWeapons)




-- ------------------------------------------------RIFLES------------------------------------------------

-- ----------------------------------------ACM CONSTRUCTOR

NewHelixWeapons.ACM = Weapon.Inherit("ACM")
NewHelixWeapons.ACM.name = "ACM"
NewHelixWeapons.ACM.category = "rifles"
function NewHelixWeapons.ACM:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_ACM")

	self.muzzleList = {
		"SM_Suppressor1",
		"SM_Compensator2",
		"SM_FlashHider1"
	}
	self.opticList = {
		"SM_Optic1",
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic5",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8",
		"SM_Optic9",
		"SM_OpticSniper4"
	}

	self.stockList = {
		"SM_Stock1",
		"SM_Stock4",
		"SM_Stock8",
		"SM_Stock9"
	}


	self.mag = "helix::"
	self.stock = "helix::"
	self.muzzle = "helix::"
	self.optic = "helix::"


	self:AddStaticMeshAttached("mag", self.mag .. "SM_ACM_Mag", "Clip", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("stock", self.stock .. "SM_ACM_Stock", "Stock", Vector(0, 0, 0), Rotator(0, 0, 0))


	self:SetAmmoSettings(30, 30)
	self:SetDamage(35)
	self:SetSpread(28)
	self:SetRecoil(0.45)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(1, 1, 1))
	self:SetHandlingMode(HandlingMode.LongWeapon)
	self:SetCadence(0.2)
	self:SetWallbangSettings(200, 0.75)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_762x39")

	self:SetSoundDry("helix::A_Rifle_Dry")
	self:SetSoundLoad("helix::A_Rifle_InsertMag_002")
	self:SetSoundUnload("helix::A_Rifle_RemoveMag_002")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_ACM_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_AK47_Fire")

	self:SetMagazineMesh("helix::SM_AK47_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular")
end

function NewHelixWeapons.ACM:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "mag" and partType ~= "stock" and partType ~= "optic" and partType ~= "muzzle" then
		return
	end

	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(10, 0, 13), Rotator(0, 0, 0))
	elseif partType == "stock" then
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-3, 0, 11), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(58, 0, 11.3), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.ACM:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.ACM:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

-- ----------------------------------------Patriot CONSTRUCTOR


NewHelixWeapons.Patriot = Weapon.Inherit("Patriot")
NewHelixWeapons.Patriot.name = "Patriot"
NewHelixWeapons.Patriot.category = "rifles"

function NewHelixWeapons.Patriot:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Patriot")

	--
	self.muzzleList = {
		"SM_Suppressor1",
		"SM_Compensator2",
		"SM_FlashHider1"
	}


	self.opticList = {
		"SM_Optic1",
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic5",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8",
		"SM_Optic9",
		"SM_OpticSniper4"
	}


	self.stockList = {
		"SM_Stock1",
		"SM_Stock2",
		"SM_Stock3",
		"SM_Stock4"
	}


	self.rearGripList = {
		"SM_DefaultSabra",
		"SM_DefaultMK4",
		"SM_DefaultFang",
		"SM_DefaultRoma12"
	}


	self.mag = "helix::"
	self.stock = "helix::"
	self.muzzle = "helix::"
	self.optic = "helix::"
	self.reargrip = "helix::"

	self:AddStaticMeshAttached("mag", self.mag .. "SM_Patriot_Mag", "Clip", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("reargrip", self.stock .. "SM_Patriot_RearGrip", "Grip", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("stock", self.stock .. "SM_Patriot_Stock", "Stock", Vector(0, 0, 0), Rotator(0, 0, 0))


	self:SetAmmoSettings(30, 30)
	self:SetDamage(30)
	self:SetSpread(30)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(1.5, 1, -0.5))
	self:SetHandlingMode(HandlingMode.LongWeapon)
	self:SetCadence(0.1)
	self:SetWallbangSettings(200, 0.75)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_762x39")

	self:SetSoundDry("helix::A_Rifle_Dry")
	self:SetSoundLoad("helix::A_Rifle_InsertMag_003")
	self:SetSoundUnload("helix::A_Rifle_RemoveMag_003")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_Patriot_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_AK47_Fire")

	self:SetMagazineMesh("helix::SM_AK47_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular")
end

function NewHelixWeapons.Patriot:SetPart(partType, newPart)
	-- print("partType:", partType, "Type:", type(partType))
	-- print("Mesh Path:", "helix::" .. newPart, "Type:", type(newPart))
	-- print("Attachment Point:", string.upper(firstLetterOfString(partType)))
	if not newPart then return end

	if partType ~= "mag" and partType ~= "stock" and partType ~= "optic" and partType ~= "muzzle" and partType ~= "reargrip" then
		return
	end
	print("partType", partType)
	print("partType", self.stock)
	print("SELF PARTY", self[partType], self[partType])
	if self[partType] and self[partType] ~= "helix::" then
		print("HELLO")
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(10, 0, 13), Rotator(0, 0, 0))
	elseif partType == "stock" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-3, 0, 11), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(58, 0, 12), Rotator(0, 0, 0))
	elseif partType == "reargrip" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(1, 0, 6),
			Rotator(-3, 0, 0))
	end
end

function NewHelixWeapons.Patriot:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.Patriot:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

----------------------------------------Queen CONSTRUCTOR

NewHelixWeapons.Queen = Weapon.Inherit("Queen")
NewHelixWeapons.Queen.name = "Queen"
NewHelixWeapons.Queen.category = "rifles"

function NewHelixWeapons.Queen:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Queen-80")


	self.muzzleList = {
		"SM_Suppressor1",
		"SM_Compensator2",
		"SM_FlashHider1"
	}


	self.opticList = {
		"SM_Optic1",
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic5",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8",
		"SM_Optic9"
	}


	self.rearGripList = {
		"SM_RearGrip2",
		"SM_RearGrip4"
	}



	self.mag = "helix::"
	self.muzzle = "helix::"
	self.optic = "helix::"
	self.reargrip = "helix::"

	self:AddStaticMeshAttached("reargrip", self.reargrip .. "SM_Queen-80_RearGrip", "Grip", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("mag", self.mag .. "SM_Queen-80_Mag", "Clip", Vector(0, 0, 0), Rotator(0, 0, 0))


	self:SetAmmoSettings(30, 30)
	self:SetDamage(25)
	self:SetSpread(33)
	self:SetRecoil(0.29)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(6, 1.25, -1.5))
	self:SetHandlingMode(HandlingMode.LongWeapon)
	self:SetCadence(0.15)
	self:SetWallbangSettings(200, 0.75)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_762x39")

	self:SetSoundDry("helix::A_Rifle_Dry")
	self:SetSoundLoad("helix::A_Rifle_InsertMag_003")
	self:SetSoundUnload("helix::A_Rifle_RemoveMag_003")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_Queen-80_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_AK47_Fire")

	self:SetMagazineMesh("helix::SM_Queen-80_MagEmpty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular")
end

function NewHelixWeapons.Queen:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "optic" and partType ~= "muzzle" and partType ~= "reargrip" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(10, 0, 13), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(38, 0, 10.2), Rotator(0, 0, 0))
	elseif partType == "reargrip" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(1, 0, 8),
			Rotator(-3, 0, 0))
	end
end

function NewHelixWeapons.Queen:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.Queen:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

----------------------------------------KAL CONSTRUCTOR

NewHelixWeapons.KAL = Weapon.Inherit("KAL")
NewHelixWeapons.KAL.name = "KAL"
NewHelixWeapons.KAL.category = "rifles"

function NewHelixWeapons.KAL:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_KAL")

	self.muzzleList = {
		"SM_Suppressor1",
		"SM_Compensator2",
		"SM_FlashHider1"
	}

	self.opticList = {
		"SM_PicatinnyRail2",
		"SM_Optic1",
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic5",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8",
		"SM_Optic9",
		"SM_OpticSniper4"
	}

	self.stockList = {
		"SM_Stock1",
		"SM_Stock2",
		"SM_Stock3",
		"SM_Stock4"
	}

	self.rearGripList = {
		"SM_RearGrip4",
		"SM_RearGrip5",
		"SM_RearGrip7",
		"SM_RearGrip8"
	}


	self.mag = "helix::"
	self.muzzle = "helix::"
	self.optic = "helix::"
	self.reargrip = "helix::"
	self.stock = "helix::"



	self:AddStaticMeshAttached("stock", self.stock .. "SM_KAL_Stock", "Stock", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("reargrip", self.reargrip .. "SM_KAL_RearGrip", "Grip", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("mag", self.mag .. "SM_KAL_Mag", "Clip", Vector(0, 0, 0), Rotator(0, 0, 0))



	self:SetAmmoSettings(30, 30)
	self:SetDamage(30)
	self:SetSpread(27)
	self:SetRecoil(0.30)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(0.5, 1, 1.25))
	self:SetHandlingMode(HandlingMode.LongWeapon)
	self:SetCadence(0.19)
	self:SetWallbangSettings(200, 0.75)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_762x39")

	self:SetSoundDry("helix::A_Rifle_Dry")
	self:SetSoundLoad("helix::A_Rifle_InsertMag_002")
	self:SetSoundUnload("helix::A_Rifle_RemoveMag_002")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_KAL_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_AK47_Fire")

	self:SetMagazineMesh("helix::SM_AK47_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular")
end

function NewHelixWeapons.KAL:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "mag" and partType ~= "stock" and partType ~= "optic" and partType ~= "muzzle" and partType ~= "reargrip" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(10, 0, 11), Rotator(0, 0, 0))
	elseif partType == "stock" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(0, 0, 8.5), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(61, 0, 8), Rotator(0, 0, 0))
	elseif partType == "reargrip" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(0.6, 0, 5),
			Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.KAL:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.KAL:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

----------------------------------------Condor CONSTRUCTOR

NewHelixWeapons.Condor = Weapon.Inherit("Condor")
NewHelixWeapons.Condor.name = "Condor"
NewHelixWeapons.Condor.category = "rifles"
function NewHelixWeapons.Condor:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Condor")


	self.muzzleList = {
		"SM_Suppressor1",
		"SM_Compensator2",
		"SM_FlashHider1"
	}

	self.opticList = {
		"SM_Optic1",
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic5",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8",
		"SM_Optic9",
		"SM_OpticSniper4"
	}

	self.rearGripList = {
		"SM_RearGrip2",
		"SM_RearGrip3",
		"SM_RearGrip4",
		"SM_RearGrip7"
	}

	self.stockList = {
		"SM_Stock1",
		"SM_Stock4",
		"SM_Stock7",
		"SM_Stock8",
		"SM_Stock9"
	}

	self.muzzle = "helix::"
	self.optic = "helix::"
	self.reargrip = "helix::"
	self.stock = "helix::"

	self:AddStaticMeshAttached("reargrip", self.reargrip .. "SM_Condor_RearGrip", "Grip", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("sight", "helix::SM_Condor_IronSight", "IronSight", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("mag", "helix::SM_Condor_MagFull", "Clip", Vector(0, 0, 0), Rotator(0, 0, 0))



	self:SetAmmoSettings(30, 30)
	self:SetDamage(33)
	self:SetSpread(30)
	self:SetRecoil(0.21)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(1, 1.5, 0))
	self:SetHandlingMode(HandlingMode.LongWeapon)
	self:SetCadence(0.11)
	self:SetWallbangSettings(200, 0.75)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_762x39")

	self:SetSoundDry("helix::A_Rifle_Dry")
	self:SetSoundLoad("helix::A_Rifle_InsertMag_002")
	self:SetSoundUnload("helix::A_Rifle_RemoveMag_002")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_Condor_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_AK47_Fire")

	self:SetMagazineMesh("helix::SM_AK47_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular")
end

function NewHelixWeapons.Condor:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "mag" and partType ~= "stock" and partType ~= "optic" and partType ~= "muzzle" and partType ~= "reargrip" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(7, 0, 16), Rotator(0, 0, 0))
	elseif partType == "stock" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-9, 0, 12.5), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(50, 0, 13.3), Rotator(0, 0, 0))
	elseif partType == "reargrip" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-7, 0, 9),
			Rotator(-2, 0, 0))
	end
end

function NewHelixWeapons.Condor:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.Condor:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

----------------------------------------Austro CONSTRUCTOR


NewHelixWeapons.Austro = Weapon.Inherit("Austro")
NewHelixWeapons.Austro.name = "Austro"
NewHelixWeapons.Austro.category = "rifles"
function NewHelixWeapons.Austro:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Austro")

	self.muzzleList = {
		"SM_Suppressor1",
		"SM_Compensator2",
		"SM_FlashHider1"
	}

	self.opticList = {
		"SM_Optic1",
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic5",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8",
		"SM_Optic9",
		"SM_OpticSniper4"
	}

	self.muzzle = "helix::"
	self.optic = "helix::"

	self:AddStaticMeshAttached("mag", "helix::SM_Austro_Mag", "Clip", Vector(0, 0, 0), Rotator(0, 0, 0))

	self:SetAmmoSettings(30, 30)
	self:SetDamage(30)
	self:SetSpread(30)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(1.75, 1, 0))
	self:SetHandlingMode(HandlingMode.LongWeapon)
	self:SetCadence(0.1)
	self:SetWallbangSettings(200, 0.75)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_762x39")

	self:SetSoundDry("helix::A_Rifle_Dry")
	self:SetSoundLoad("helix::A_Rifle_InsertMag_002")
	self:SetSoundUnload("helix::A_Rifle_RemoveMag_002")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_Austro_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_AK47_Fire")

	self:SetMagazineMesh("helix::SM_AK47_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular")
end

function NewHelixWeapons.Austro:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "mag" and partType ~= "optic" and partType ~= "muzzle" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(9, 0, 12.5), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(50, 0, 10), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.Austro:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.Austro:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

----------------------------------------PitViper CONSTRUCTOR

NewHelixWeapons.Pit_Viper = Weapon.Inherit("Pit_Viper")
NewHelixWeapons.Pit_Viper.name = "PitViper"
NewHelixWeapons.Pit_Viper.category = "rifles"
function NewHelixWeapons.Pit_Viper:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Pit_Viper")

	self.muzzleList = {
		"SM_Suppressor1",
		"SM_Compensator2",
		"SM_FlashHider1"
	}

	self.opticList = {
		"SM_Optic1",
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic5",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8",
		"SM_Optic9",
		"SM_OpticSniper4"
	}

	self.rearGripList = {
		"SM_RearGrip3",
		"SM_RearGrip4",
		"SM_RearGrip5",
		"SM_RearGrip7",
		"SM_RearGrip8"
	}

	self.stockList = {
		"SM_Stock1",
		"SM_Stock2",
		"SM_Stock3",
		"SM_Stock4"
	}



	self.muzzle = "helix::"
	self.optic = "helix::"
	self.reargrip = "helix::"
	self.stock = "helix::"

	self:AddStaticMeshAttached("mag", "helix::SM_Pit_Viper_Mag", "Clip", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("sight", "helix::SM_Pit_Viper_IronSight", "IronSight", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("reargrip", self.reargrip .. "SM_Pit_Viper_RearGrip", "Grip", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("stock", self.stock .. "SM_Pit_Viper_Stock", "Stock", Vector(0, 0, 0), Rotator(0, 0, 0))

	self:SetAmmoSettings(30, 30)
	self:SetDamage(30)
	self:SetSpread(30)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(1, 1, 1))
	self:SetHandlingMode(HandlingMode.LongWeapon)
	self:SetCadence(0.1)
	self:SetWallbangSettings(200, 0.75)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_762x39")

	self:SetSoundDry("helix::A_Rifle_Dry")
	self:SetSoundLoad("helix::A_Rifle_InsertMag_002")
	self:SetSoundUnload("helix::A_Rifle_RemoveMag_002")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_PitViper_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_AK47_Fire")

	self:SetMagazineMesh("helix::SM_AK47_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular")
end

function NewHelixWeapons.Pit_Viper:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "mag" and partType ~= "stock" and partType ~= "optic" and partType ~= "muzzle" and partType ~= "reargrip" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(4, 0, 6), Rotator(0, 0, 0))
	elseif partType == "stock" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-13, 0, 3), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(35.5, 0, 4), Rotator(0, 0, 0))
	elseif partType == "reargrip" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-10.5, 0, 0),
			Rotator(-2, 0, 0))
	end
end

function NewHelixWeapons.Pit_Viper:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.Pit_Viper:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

----------------------------------------MK4 CONSTRUCTOR

NewHelixWeapons.MK4 = Weapon.Inherit("MK4")
NewHelixWeapons.MK4.name = "MK4"
NewHelixWeapons.MK4.category = "rifles"
function NewHelixWeapons.MK4:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_MK4")


	self.muzzleList = {
		"SM_Suppressor1",
		"SM_Compensator2",
		"SM_FlashHider1"
	}

	self.opticList = {
		"SM_Optic1",
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic5",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8",
		"SM_Optic9",
		"SM_OpticSniper4"
	}


	self.stockList = {
		"SM_defaultMK4",
		"SM_Stock1",
		"SM_Stock2",
		"SM_Stock3",
		"SM_Stock4"
	}


	self.muzzle = "helix::"
	self.optic = "helix::"
	self.stock = "helix::"
	self.reargrip = "helix::"


	self:AddStaticMeshAttached("mag", "helix::SM_MK4_Mag", "Clip", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("sight", "helix::SM_MK4_IronSight", "IronSight", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("stock", self.stock .. "SM_MK4_Stock", "Stock", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("reargrip", self.reargrip .. "SM_MK4_RearGrip", "Grip", Vector(0, 0, 0), Rotator(0, 0, 0))

	self:SetAmmoSettings(30, 30)
	self:SetDamage(30)
	self:SetSpread(30)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(2, 1.5, 0.25))
	self:SetHandlingMode(HandlingMode.LongWeapon)
	self:SetCadence(0.1)
	self:SetWallbangSettings(200, 0.75)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_762x39")

	self:SetSoundDry("helix::A_Rifle_Dry")
	self:SetSoundLoad("helix::A_Rifle_InsertMag_002")
	self:SetSoundUnload("helix::A_Rifle_RemoveMag_002")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_ACM_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_AK47_Fire")

	self:SetMagazineMesh("helix::SM_AK47_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular")
end

function NewHelixWeapons.MK4:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "mag" and partType ~= "stock" and partType ~= "optic" and partType ~= "muzzle" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(4, 0, 12), Rotator(0, 0, 0))
		self:RemoveStaticMeshAttached("sight")
	elseif partType == "stock" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-3, 0, 10.7), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(55, 0, 10.6), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.MK4:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.MK4:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

----------------------------------------SovWhisper CONSTRUCTOR

NewHelixWeapons.SovWhisper = Weapon.Inherit("SovWhisper")
NewHelixWeapons.SovWhisper.name = "SovWhisper"
NewHelixWeapons.SovWhisper.category = "rifles"
function NewHelixWeapons.SovWhisper:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_SovWhisper")


	self.opticList = {
		"SM_Optic1",
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic5",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8",
		"SM_Optic9",
		"SM_OpticSniper4"
	}

	self.rearGripList = {
		"SM_RearGrip1",
		"SM_RearGrip4",
		"SM_RearGrip5",
		"SM_RearGrip7"
	}

	self.stockList = {
		"SM_Stock1",
		"SM_Stock2",
		"SM_Stock3",
		"SM_Stock4"
	}

	self.optic = "helix::"
	self.reargrip = "helix::"
	self.stock = "helix::"

	self:AddStaticMeshAttached("mag", "helix::SM_SovWhisper_Mag", "Clip", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("sight", "helix::SM_SovWhisper_IronSight", "Rail", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("reargrip", self.reargrip .. "SM_SovWhisper_RearGrip", "Grip", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("stock", self.stock .. "SM_SovWhisper_Stock", "Stock", Vector(0, 0, 0), Rotator(0, 0, 0))

	self:SetAmmoSettings(30, 30)
	self:SetDamage(30)
	self:SetSpread(30)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(1, 1, -0.5))
	self:SetHandlingMode(HandlingMode.LongWeapon)
	self:SetCadence(0.1)
	self:SetWallbangSettings(200, 0.75)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_762x39")

	self:SetSoundDry("helix::A_Rifle_Dry")
	self:SetSoundLoad("helix::A_Rifle_InsertMag_002")
	self:SetSoundUnload("helix::A_Rifle_RemoveMag_002")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_Suppressor_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_AK47_Fire")

	self:SetMagazineMesh("helix::SM_AK47_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular")
end

function NewHelixWeapons.SovWhisper:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "mag" and partType ~= "stock" and partType ~= "optic" and partType ~= "muzzle" and partType ~= "reargrip" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(4, 0, 12), Rotator(0, 0, 0))

		self:AddStaticMeshAttached("rail", "helix::SM_PicatinnyRail1_SovWhisper", "Rail",
			Vector(4, 0, 12), Rotator(0, 0, 0))
		self:RemoveStaticMeshAttached("sight")
	elseif partType == "stock" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-3, 0, 8), Rotator(0, 0, 0))
	elseif partType == "reargrip" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(0, 0, 5.3),
			Rotator(-2.4, 0, 0))
	end
end

function NewHelixWeapons.SovWhisper:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.SovWhisper:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

----------------------------------------Krink CONSTRUCTOR

NewHelixWeapons.Krink = Weapon.Inherit("Krink")
NewHelixWeapons.Krink.name = "Krink"
NewHelixWeapons.Krink.category = "rifles"
function NewHelixWeapons.Krink:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Krink")

	self.muzzleList = {
		"SM_Suppressor1",
		"SM_Compensator2",
		"SM_FlashHider1"
	}

	self.opticList = {
		"SM_Optic1",
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic5",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8",
		"SM_Optic9",
		"SM_OpticSniper4"
	}

	self.rearGripList = {
		"SM_RearGrip1",
		"SM_RearGrip3",
		"SM_RearGrip5",
		"SM_RearGrip7"
	}
	self.stockList = {
		"SM_Stock2",
		"SM_Stock3",
		"SM_Stock4",
		"SM_Stock5"
	}


	self.optic = "helix::"
	self.reargrip = "helix::"
	self.stock = "helix::"
	self.muzzle = "helix::"

	self:AddStaticMeshAttached("mag", "helix::SM_Krink_Mag", "Clip", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("sight", "helix::SM_Krink_IronSight", "Rail", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("reargrip", self.reargrip .. "SM_Krink_RearGrip", "Grip", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("stock", self.stock .. "SM_Krink_Stock", "Stock", Vector(0, 0, 0), Rotator(0, 0, 0))

	self:SetAmmoSettings(30, 30)
	self:SetDamage(30)
	self:SetSpread(30)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(1, 1, 1.5))
	self:SetHandlingMode(HandlingMode.LongWeapon)
	self:SetCadence(0.1)
	self:SetWallbangSettings(200, 0.75)

	self:SetParticlesBulletTrail("helix::P_Bullet_Trail")
	self:SetParticlesBarrel("helix::P_Weapon_BarrelSmoke")
	self:SetParticlesShells("helix::P_Weapon_Shells_762x39")

	self:SetSoundDry("helix::A_Rifle_Dry")
	self:SetSoundLoad("helix::A_Rifle_InsertMag_002")
	self:SetSoundUnload("helix::A_Rifle_RemoveMag_002")
	self:SetSoundZooming("helix::A_AimZoom")
	self:SetSoundAim("helix::A_Rattle")
	self:SetSoundFire("helix::A_Krink_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_AK47_Fire")

	self:SetMagazineMesh("helix::SM_AK47_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular")
end

function NewHelixWeapons.Krink:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "mag" and partType ~= "stock" and partType ~= "optic" and partType ~= "muzzle" and partType ~= "reargrip" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(4, 0, 12), Rotator(0, 0, 0))

		self:AddStaticMeshAttached("rail", "helix::SM_PicatinnyRail1_SovWhisper", "Rail",
			Vector(4, 0, 12), Rotator(0, 0, 0))
		self:RemoveStaticMeshAttached("sight")
	elseif partType == "stock" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-3, 0, 8), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(44, 0, 7.7), Rotator(0, 0, 0))
	elseif partType == "reargrip" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(0.7, 0, 4.6),
			Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.Krink:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.Krink:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

-- ------------------------------------------------SMG------------------------------------------------


-- ----------------------------------------Fang CONSTRUCTOR

NewHelixWeapons.Fang = Weapon.Inherit("Fang")
NewHelixWeapons.Fang.name = "Fang"
NewHelixWeapons.Fang.image = "assets://helix/Thumbnails/SK_AP5.jpg"
NewHelixWeapons.Fang.category = "smgs"

function NewHelixWeapons.Fang:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Fang")

	self.muzzleList = {
		"SM_Suppressor3",
		"SM_Compensator3",
		"SM_FlashHider2"
	}

	self.opticList = {
		"SM_Optic1",
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8"
	}

	-- Para la lista de stocks (sin los default)
	self.stockList = {
		"SM_Stock1",
		"SM_Stock2",
		"SM_Stock3",
		"SM_Stock4"
	}


	self.optic = "helix::"
	self.reargrip = "helix::"
	self.stock = "helix::"
	self.muzzle = "helix::"

	self:AddStaticMeshAttached("mag", "helix::SM_Fang_Mag", "Mag", Vector(17, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("reargrip", self.reargrip .. "SM_Fang_RearGrip", "RearGrip", Vector(4, 0, 11),
		Rotator(0, 0, 0))
	self:AddStaticMeshAttached("stock", self.stock .. "SM_Fang_Stock", "Stock", Vector(2, 0, 17.3), Rotator(0, 0, 0))



	self:SetAmmoSettings(30, 1000)
	self:SetDamage(15)
	self:SetSpread(75)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(1.5, 0, -5))
	self:SetHandlingMode(HandlingMode.LongWeapon)
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
	self:SetSoundFire("helix::A_Fang_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_AP5_Fire")

	self:SetMagazineMesh("helix::SM_AP5_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Submachine")
end

function NewHelixWeapons.Fang:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "mag" and partType ~= "stock" and partType ~= "optic" and partType ~= "muzzle" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(9, -0.2, 19), Rotator(0, 0, 0))
	elseif partType == "stock" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-0.5, 0, 16), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(34, 0, 15.3), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.Fang:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.Fang:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

-- ----------------------------------------PP CONSTRUCTOR


NewHelixWeapons.PP = Weapon.Inherit("PP")
NewHelixWeapons.PP.name = "PP"
NewHelixWeapons.PP.image = "assets://helix/Thumbnails/SK_AP5.jpg"
NewHelixWeapons.PP.category = "smgs"

function NewHelixWeapons.PP:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_PP-Y")


	self.muzzleList = {
		"SM_Suppressor3",
		"SM_Compensator3",
		"SM_FlashHider2"
	}

	self.opticList = {
		"SM_Optic1",
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8"
	}


	self.stockList = {
		"SM_Stock3",
		"SM_Stock4",
		"SM_Stock5",
		"SM_Stock6"
	}



	self.optic = "helix::"
	self.reargrip = "helix::"
	self.stock = "helix::"
	self.muzzle = "helix::"

	self:AddStaticMeshAttached("sight", "helix::SM_PP-Y_IronSight", "IronSight", Vector(-2, 0, 10.9), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("mag", "helix::SM_PP-Y_Mag", "Mag", Vector(11, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("reargrip", self.reargrip .. "SM_PP-Y_RearGrip", "RearGrip", Vector(1, 0, 5),
		Rotator(0, 0, 0))
	self:AddStaticMeshAttached("stock", self.stock .. "SM_PP-Y_Stock", "Stock", Vector(-4, 0, 9), Rotator(0, 0, 0))

	self:SetAmmoSettings(30, 1000)
	self:SetDamage(15)
	self:SetSpread(75)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(0.5, 1, 1.5))
	self:SetHandlingMode(HandlingMode.LongWeapon)
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
	self:SetSoundFire("helix::A_PP-Y_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_AP5_Fire")

	self:SetMagazineMesh("helix::SM_AP5_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Submachine")
end

function NewHelixWeapons.PP:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "mag" and partType ~= "stock" and partType ~= "optic" and partType ~= "muzzle" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(6, -0.2, 10), Rotator(0, 0, 0))
		self:AddStaticMeshAttached("rail", "helix::SM_PicatinnyRail1_SovWhisper", "Rail",
			Vector(4, 0, 10.6), Rotator(0, 0, 0))
	elseif partType == "stock" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-4, 0, 8), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(25, 0, 8), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.PP:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.PP:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

----------------------------------------Vulcan CONSTRUCTOR
NewHelixWeapons.Vulcan = Weapon.Inherit("Vulcan")
NewHelixWeapons.Vulcan.name = "Vulcan"
NewHelixWeapons.Vulcan.image = "assets://helix/Thumbnails/SK_AP5.jpg"
NewHelixWeapons.Vulcan.category = "smgs"

function NewHelixWeapons.Vulcan:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Vulcan")



	self.muzzleList = {
		"SM_Suppressor3",
		"SM_Compensator3",
		"SM_FlashHider2"
	}

	self.opticList = {
		"SM_Optic1",
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic5",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8",
		"SM_Optic9"
	}

	self.stockList = {
		"SM_Stock1",
		"SM_Stock2",
		"SM_Stock3",
		"SM_Stock4",
		"SM_Stock5"
	}

	self.stock = "helix::"

	self:AddStaticMeshAttached("mag", "helix::SM_Vulcan_Mag", "Mag", Vector(15, 0, -7), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("stock", self.stock .. "SM_Vulcan_Stock", "Mag", Vector(-3, 0, 7.3), Rotator(0, 0, 0))

	self:SetAmmoSettings(30, 1000)
	self:SetDamage(15)
	self:SetSpread(75)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(0, 1, 0.5))
	self:SetHandlingMode(HandlingMode.LongWeapon)
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
	self:SetSoundFire("helix::A_Vulcan_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_AP5_Fire")

	self:SetMagazineMesh("helix::SM_AP5_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Submachine")
end

function NewHelixWeapons.Vulcan:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "mag" and partType ~= "stock" and partType ~= "optic" and partType ~= "muzzle" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(8, 0, 8.9), Rotator(0, 0, 0))
	elseif partType == "stock" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-3, 0, 7.6), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(35, 0, 4.3), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.Vulcan:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.Vulcan:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

----------------------------------------Freq CONSTRUCTOR


NewHelixWeapons.Freq = Weapon.Inherit("Freq")
NewHelixWeapons.Freq.name = "Freq"
NewHelixWeapons.Freq.image = "assets://helix/Thumbnails/SK_AP5.jpg"
NewHelixWeapons.Freq.category = "smgs"

function NewHelixWeapons.Freq:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Freq")

	self.muzzleList = {
		"SM_Suppressor3",
		"SM_Compensator3",
		"SM_FlashHider2"
	}

	self.opticList = {
		"SM_Optic1",
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8"
	}

	self.stockList = {
		"SM_Stock5",
		"SM_Stock6"
	}

	self:AddStaticMeshAttached("mag", "helix::SM_Freq_Mag", "Mag", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("sight", "helix::SM_Freq_IronSight", "Sight", Vector(0, 0, 0), Rotator(0, 0, 0))

	self:SetAmmoSettings(30, 1000)
	self:SetDamage(15)
	self:SetSpread(75)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(1.25, 1, 0.25))
	self:SetHandlingMode(HandlingMode.SingleHandedWeapon)
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
	self:SetSoundFire("helix::A_Freq_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_AP5_Fire")

	self:SetMagazineMesh("helix::SM_AP5_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Submachine")
end

function NewHelixWeapons.Freq:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "mag" and partType ~= "stock" and partType ~= "optic" and partType ~= "muzzle" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(0, 0, 11), Rotator(0, 0, 0))
	elseif partType == "stock" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-12, 0, 10), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(15, 0, 8.8), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.Freq:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.Freq:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

----------------------------------------Convert CONSTRUCTOR


NewHelixWeapons.Convert = Weapon.Inherit("Convert")
NewHelixWeapons.Convert.name = "Convert"
NewHelixWeapons.Convert.image = "assets://helix/Thumbnails/SK_AP5.jpg"
NewHelixWeapons.Convert.category = "smgs"

function NewHelixWeapons.Convert:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Convert")


	self.muzzleList = {
		"SM_Suppressor3",
		"SM_Compensator3",
		"SM_FlashHider2"
	}

	self.opticList = {
		"SM_Optic1",
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8"
	}

	self.stockList = {
		"SM_Stock3",
		"SM_Stock4",
		"SM_Stock5"
	}



	self:AddStaticMeshAttached("mag", "helix::SM_Convert_Mag", "Mag", Vector(0, 0, 0), Rotator(0, 0, 0))

	self:SetAmmoSettings(30, 1000)
	self:SetDamage(15)
	self:SetSpread(75)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(1.25, 1, 0.25))
	self:SetHandlingMode(HandlingMode.SingleHandedWeapon)
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
	self:SetSoundFire("helix::A_Convert_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_AP5_Fire")

	self:SetMagazineMesh("helix::SM_AP5_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Submachine")
end

function NewHelixWeapons.Convert:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "mag" and partType ~= "stock" and partType ~= "optic" and partType ~= "muzzle" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(0, 0, 11), Rotator(0, 0, 0))
	elseif partType == "stock" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-15, 0, 8), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(26, 0, 8.3), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.Convert:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.Convert:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

----------------------------------------Orion CONSTRUCTOR


NewHelixWeapons.Orion = Weapon.Inherit("Orion")
NewHelixWeapons.Orion.name = "Orion"
NewHelixWeapons.Orion.image = "assets://helix/Thumbnails/SK_AP5.jpg"
NewHelixWeapons.Orion.category = "smgs"

function NewHelixWeapons.Orion:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Orion")


	self.muzzleList = {
		"SM_Suppressor3",
		"SM_Compensator1",
		"SM_FlashHider1"
	}
	self.opticList = {
		"SM_Optic1",
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic5",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8",
		"SM_Optic9"
	}
	self.stockList = {
		"SM_Stock4",
		"SM_Stock5",
		"SM_Stock7",
		"SM_Stock9"
	}




	self:AddStaticMeshAttached("mag", "helix::SM_Orion_Mag", "Mag", Vector(6.5, 0, 8), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("sight", "helix::SM_Orion_IronSight", "Sight", Vector(3, 0, 17), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("muzzle", "helix::SM_Orion_Muzzle", "Muzzle", Vector(26, 0, 13.7), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("stock", "helix::SM_Orion_Stock", "Stock", Vector(-12, 0, 15), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("stockSocket", "helix::SM_Orion_StockSocket", "StockSocket", Vector(-10, 0, 15),
		Rotator(0, 0, 0))


	self:SetAmmoSettings(30, 1000)
	self:SetDamage(15)
	self:SetSpread(75)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(-6, 1, -2.25))
	self:SetHandlingMode(HandlingMode.LongWeapon)
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

function NewHelixWeapons.Orion:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "mag" and partType ~= "stock" and partType ~= "optic" and partType ~= "muzzle" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(0, 0, 17), Rotator(0, 0, 0))
		self:RemoveStaticMeshAttached("sight")
	elseif partType == "stock" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-12, 0, 15), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(26, 0, 13.7), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.Orion:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.Orion:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

----------------------------------------PM99 CONSTRUCTOR


NewHelixWeapons.PM99 = Weapon.Inherit("PM99")
NewHelixWeapons.PM99.name = "PM99"
NewHelixWeapons.PM99.image = "assets://helix/Thumbnails/SK_AP5.jpg"
NewHelixWeapons.PM99.category = "smgs"

function NewHelixWeapons.PM99:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_PM-99")

	self.muzzleList = {
		"SM_Suppressor3",
		"SM_Compensator3",
		"SM_FlashHider2"
	}

	self.opticList = {
		"SM_Optic1",
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8"
	}

	self.stockList = {
		"SM_Stock2",
		"SM_Stock3",
		"SM_Stock4"
	}



	self:AddStaticMeshAttached("mag", "helix::SM_PM-99_Mag", "Mag", Vector(5, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("sight", "helix::SM_PM-99_IronSight", "Sight", Vector(-6.2, 0, 16), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("stock", "helix::SM_PM-99_Stock", "Stock", Vector(-10, 0, 13), Rotator(0, 0, 0))


	self:SetAmmoSettings(30, 1000)
	self:SetDamage(15)
	self:SetSpread(75)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(-6, 1.5, -2))
	self:SetHandlingMode(HandlingMode.SingleHandedWeapon)
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
	self:SetSoundFire("helix::A_PM-99_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_AP5_Fire")

	self:SetMagazineMesh("helix::SM_AP5_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Submachine")
end

function NewHelixWeapons.PM99:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "stock" and partType ~= "optic" and partType ~= "muzzle" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(0, 0, 15), Rotator(0, 0, 0))
		self:RemoveStaticMeshAttached("sight")
	elseif partType == "stock" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-9, 0, 13), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(27, 0, 13), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.PM99:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.PM99:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

----------------------------------------M77 CONSTRUCTOR

NewHelixWeapons.M77 = Weapon.Inherit("M77")
NewHelixWeapons.M77.name = "M77"
NewHelixWeapons.M77.image = "assets://helix/Thumbnails/SK_AP5.jpg"
NewHelixWeapons.M77.category = "smgs"

function NewHelixWeapons.M77:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_M77")


	self.muzzleList = {
		"SM_Suppressor3",
		"SM_Compensator3",
		"SM_FlashHider2"
	}

	self.opticList = {
		"SM_Optic1",
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8"
	}

	self.stockList = {
		"SM_Stock4",
		"SM_Stock5",
		"SM_Stock6"
	}




	self:AddStaticMeshAttached("mag", "helix::SM_M77_Mag_X", "Mag", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("sight", "helix::SM_M77_IronSight", "Sight", Vector(13, 0, 10.7), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("stock", "helix::SM_M77_Stock", "Stock", Vector(-8, 0, 5), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("belt", "helix::SM_M77_Belt", "Belt", Vector(15, 0, 5), Rotator(0, 0, 0))


	self:SetAmmoSettings(30, 1000)
	self:SetDamage(15)
	self:SetSpread(75)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(0, 0.5, 2))
	self:SetHandlingMode(HandlingMode.SingleHandedWeapon)
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
	self:SetSoundFire("helix::A_M77_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_AP5_Fire")

	self:SetMagazineMesh("helix::SM_AP5_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Submachine")
end

function NewHelixWeapons.M77:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "stock" and partType ~= "optic" and partType ~= "muzzle" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(6, 0, 11), Rotator(0, 0, 0))
		self:AddStaticMeshAttached("rail", "helix::SM_PicatinnyRail1_SovWhisper", "Rail",
			Vector(7, 0, 10.6), Rotator(0, 0, 0))
		self:RemoveStaticMeshAttached("sight")
	elseif partType == "stock" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-9, 0, 7.5), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(19.4, 0, 8), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.M77:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.M77:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

----------------------------------------Bison CONSTRUCTOR

NewHelixWeapons.Bison = Weapon.Inherit("Bison")
NewHelixWeapons.Bison.name = "Bison"
NewHelixWeapons.Bison.image = "assets://helix/Thumbnails/SK_AP5.jpg"
NewHelixWeapons.Bison.category = "smgs"

function NewHelixWeapons.Bison:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Bison")


	self.muzzleList = {
		"SM_Suppressor3",
		"SM_Compensator1",
		"SM_FlashHider1"
	}

	self.opticList = {
		"SM_Optic1",
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic5",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8",
		"SM_Optic9",
		"SM_Optic_Sniper_4"
	}


	self.rearGripList = {
		"SM_RearGrip1",
		"SM_RearGrip4",
		"SM_RearGrip6",
		"SM_RearGrip8"
	}


	self.stockList = {
		"SM_Stock2",
		"SM_Stock3",
		"SM_Stock4",
		"SM_Stock5"
	}


	self:AddStaticMeshAttached("mag", "helix::SM_Bison_Mag", "Mag", Vector(15, 0, 8.2), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("reargrip", "helix::SM_Bison_RearGrip", "RearGrip", Vector(0, 0, 5), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("stock", "helix::SM_Bison_Stock", "Stock", Vector(-3, 0, 6), Rotator(0, 0, 0))


	self:SetAmmoSettings(30, 1000)
	self:SetDamage(15)
	self:SetSpread(75)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(0.5, 1, 2.25))
	self:SetHandlingMode(HandlingMode.LongWeapon)
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
	self:SetSoundFire("helix::A_Bison_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_AP5_Fire")

	self:SetMagazineMesh("helix::SM_AP5_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Submachine")
end

function NewHelixWeapons.Bison:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "stock" and partType ~= "optic" and partType ~= "muzzle" and partType ~= "reargrip" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(6, 0, 11.8), Rotator(0, 0, 0))
		self:AddStaticMeshAttached("rail", "helix::SM_PicatinnyRail1_SovWhisper", "Rail",
			Vector(7, 0, 11.5), Rotator(0, 0, 0))
		self:RemoveStaticMeshAttached("sight")
	elseif partType == "stock" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-3.6, 0, 7.5), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(40.5, 0, 8), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.Bison:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.Bison:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

----------------------------------------Mouflan CONSTRUCTOR

NewHelixWeapons.Mouflan = Weapon.Inherit("Mouflan")
NewHelixWeapons.Mouflan.name = "Mouflan"
NewHelixWeapons.Mouflan.image = "assets://helix/Thumbnails/SK_AP5.jpg"
NewHelixWeapons.Mouflan.category = "smgs"

function NewHelixWeapons.Mouflan:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Mouflan")


	self.muzzleList = {
		"SM_Suppressor3",
		"SM_Compensator1",
		"SM_FlashHider1"
	}

	self.opticList = {
		"SM_Optic1",
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic5",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8",
		"SM_Optic9",
		"SM_Optic_Sniper_4"
	}

	self.stockList = {
		"SM_Stock2",
		"SM_Stock4",
		"SM_Stock5",
		"SM_Stock9"
	}



	self:AddStaticMeshAttached("mag", "helix::SM_Mouflan_Mag", "Mag", Vector(26, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("sight", "helix::SM_Mouflan_IronSight", "Sight", Vector(13, 0, 9.6), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("stock", "helix::SM_Mouflan_Stock", "Stock", Vector(0, 0, 5.7), Rotator(0, 0, 0))

	self:SetAmmoSettings(30, 1000)
	self:SetDamage(15)
	self:SetSpread(75)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(0.25, 1, 4))
	self:SetHandlingMode(HandlingMode.LongWeapon)
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
	self:SetSoundFire("helix::A_Mouflan_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 6)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetAnimationFire("helix::A_AP5_Fire")

	self:SetMagazineMesh("helix::SM_AP5_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Submachine")
end

function NewHelixWeapons.Mouflan:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "stock" and partType ~= "optic" and partType ~= "muzzle" and partType ~= "reargrip" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(7, 0, 9.3), Rotator(0, 0, 0))
		self:AddStaticMeshAttached("rail", "helix::SM_PicatinnyRail1_SovWhisper", "Rail",
			Vector(8, 0, 9), Rotator(0, 0, 0))
		self:RemoveStaticMeshAttached("sight")
	elseif partType == "stock" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-1, 0, 7.8), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(50.1, 0, 7.7), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.Mouflan:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.Mouflan:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

-- ------------------------------------------------Pistols------------------------------------------------


-- ----------------------------------------Gaston CONSTRUCTOR

NewHelixWeapons.Gaston = Weapon.Inherit("Gaston")
NewHelixWeapons.Gaston.name = "Gaston"
NewHelixWeapons.Gaston.image = "assets://helix/Thumbnails/SK_DesertEagle.jpg"
NewHelixWeapons.Gaston.category = "pistols"

function NewHelixWeapons.Gaston:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Gaston")


	self.muzzleList = {
		"SM_Suppressor4",
		"SM_Compensator3",
		"SM_FlashHider1"
	}

	self.opticList = {
		"SM_Optic2",
		"SM_Optic4",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8"
	}


	self:AddStaticMeshAttached("mag", "helix::SM_Gaston_Mag", "Clip", Vector(0, 0, 0), Rotator(0, 0, 0))


	self:SetAmmoSettings(7, 1000)
	self:SetDamage(45)
	self:SetSpread(70)
	self:SetRecoil(2)
	self:SetBulletSettings(1, 30000, 30000, Color(13, 100, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, 1.5), Rotator(0, 0, 0))
	self:SetRightHandOffset(Vector(2, 1, 0.75))
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
	self:SetSoundFire("helix::A_Gaston_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 2)

	self:SetAnimationCharacterFire("helix::A_Mannequin_Sight_Fire_Pistol")
	-- self:SetAnimationFire("helix::A_DesertEagle_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Pistol")

	self:SetMagazineMesh("helix::SM_DesertEagle_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Tee")
end

function NewHelixWeapons.Gaston:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "optic" and partType ~= "muzzle" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(7, 0, 10.2), Rotator(0, 0, 0))
		self:AddStaticMeshAttached("rail", "helix::SM_PicatinnyRail1_Gaston", "Rail",
			Vector(8, 0, 9.9), Rotator(0, 0, 0))
		self:RemoveStaticMeshAttached("sight")
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(17.7, 0, 8.6), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.Gaston:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.Gaston:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

-- ----------------------------------------Mirage CONSTRUCTOR

NewHelixWeapons.Mirage = Weapon.Inherit("Mirage")
NewHelixWeapons.Mirage.name = "Mirage"
NewHelixWeapons.Mirage.image = "assets://helix/Thumbnails/SK_DesertEagle.jpg"
NewHelixWeapons.Mirage.category = "pistols"

function NewHelixWeapons.Mirage:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Mirage")

	self.muzzleList = {
		"SM_Suppressor4",
		"SM_Compensator3",
		"SM_FlashHider1"
	}

	self.opticList = {
		"SM_Optic2",
		"SM_Optic4",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8"
	}


	self:AddStaticMeshAttached("mag", "helix::SM_Mirage_Mag", "Clip", Vector(0, 0, 0), Rotator(0, 0, 0))



	self:SetAmmoSettings(7, 1000)
	self:SetDamage(45)
	self:SetSpread(70)
	self:SetRecoil(2)
	self:SetBulletSettings(1, 30000, 30000, Color(13, 100, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, 1.5), Rotator(0, 0, 0))
	self:SetRightHandOffset(Vector(3, 1, 0))
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
	self:SetSoundFire("helix::A_Mirage_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 2)

	self:SetAnimationCharacterFire("helix::A_Mannequin_Sight_Fire_Pistol")
	-- self:SetAnimationFire("helix::A_DesertEagle_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Pistol")

	self:SetMagazineMesh("helix::SM_DesertEagle_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Tee")
end

function NewHelixWeapons.Mirage:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "optic" and partType ~= "muzzle" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(7, 0, 10.9), Rotator(0, 0, 0))
		self:AddStaticMeshAttached("rail", "helix::SM_PicatinnyRail1_Mirage", "Rail",
			Vector(8, 0, 10.6), Rotator(0, 0, 0))
		self:RemoveStaticMeshAttached("sight")
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(22, 0, 9.9), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.Mirage:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.Mirage:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

-- ----------------------------------------Fierro CONSTRUCTOR

NewHelixWeapons.Fierro = Weapon.Inherit("Fierro")
NewHelixWeapons.Fierro.name = "Fierro"
NewHelixWeapons.Fierro.image = "assets://helix/Thumbnails/SK_DesertEagle.jpg"
NewHelixWeapons.Fierro.category = "pistols"

function NewHelixWeapons.Fierro:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Fierro")

	self.muzzleList = {
		"SM_Suppressor4",
		"SM_Compensator3",
		"SM_FlashHider1"
	}

	self.opticList = {
		"SM_Optic4",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8"
	}

	self:SetAmmoSettings(7, 1000)
	self:SetDamage(45)
	self:SetSpread(70)
	self:SetRecoil(2)
	self:SetBulletSettings(1, 30000, 30000, Color(13, 100, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, 1.5), Rotator(0, 0, 0))
	self:SetRightHandOffset(Vector(2.75, 1, 0))
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
	self:SetSoundFire("helix::A_Fierro_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 2)

	self:SetAnimationCharacterFire("helix::A_Mannequin_Sight_Fire_Pistol")
	self:SetAnimationFire("helix::A_DesertEagle_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Pistol")

	self:SetMagazineMesh("helix::SM_DesertEagle_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Tee")
end

function NewHelixWeapons.Fierro:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "optic" and partType ~= "muzzle" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(12.2, 0, 10.3), Rotator(0, 0, 0))
		self:RemoveStaticMeshAttached("sight")
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(25.5, 0, 9.3), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.Fierro:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.Fierro:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

----------------------------------------Banshee CONSTRUCTOR


NewHelixWeapons.Banshee = Weapon.Inherit("Banshee")
NewHelixWeapons.Banshee.name = "Banshee"
NewHelixWeapons.Banshee.image = "assets://helix/Thumbnails/SK_DesertEagle.jpg"
NewHelixWeapons.Banshee.category = "pistols"

function NewHelixWeapons.Banshee:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Banshee")

	self.muzzleList = {
		"SM_Suppressor4",
		"SM_Compensator3",
		"SM_FlashHider1"
	}

	self.opticList = {
		"SM_Optic2",
		"SM_Optic4",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8"
	}

	self:AddStaticMeshAttached("mag", "helix::SM_Banshee_Mag", "Clip", Vector(0, 0, 0), Rotator(0, 0, 0))



	self:SetAmmoSettings(7, 1000)
	self:SetDamage(45)
	self:SetSpread(70)
	self:SetRecoil(2)
	self:SetBulletSettings(1, 30000, 30000, Color(13, 100, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, 1.5), Rotator(0, 0, 0))
	self:SetRightHandOffset(Vector(2, 1, 0.25))
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
	self:SetSoundFire("helix::A_Banshee_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 2)

	self:SetAnimationCharacterFire("helix::A_Mannequin_Sight_Fire_Pistol")
	self:SetAnimationFire("helix::A_DesertEagle_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Pistol")

	self:SetMagazineMesh("helix::SM_DesertEagle_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Tee")
end

function NewHelixWeapons.Banshee:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "optic" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(9, 0, 9.7), Rotator(0, 0, 0))
		self:AddStaticMeshAttached("rail", "helix::SM_PicatinnyRail1_Banshee", "Rail",
			Vector(10, 0, 9.5), Rotator(0, 0, 0))
		self:RemoveStaticMeshAttached("sight")
	end
end

function NewHelixWeapons.Banshee:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.Banshee:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

----------------------------------------Roger CONSTRUCTOR

NewHelixWeapons.Roger = Weapon.Inherit("Roger")
NewHelixWeapons.Roger.name = "Roger"
NewHelixWeapons.Roger.image = "assets://helix/Thumbnails/SK_DesertEagle.jpg"
NewHelixWeapons.Roger.category = "pistols"

function NewHelixWeapons.Roger:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Roger")

	self.muzzleList = {
		"SM_Suppressor4",
		"SM_Compensator3",
		"SM_FlashHider1"
	}

	self.opticList = {
		"SM_Optic2",
		"SM_Optic4",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8"
	}


	self:AddStaticMeshAttached("mag", "helix::SM_Roger_Mag", "Clip", Vector(0, 0, 0), Rotator(0, 0, 0))


	self:SetAmmoSettings(7, 1000)
	self:SetDamage(45)
	self:SetSpread(70)
	self:SetRecoil(2)
	self:SetBulletSettings(1, 30000, 30000, Color(13, 100, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, 1.5), Rotator(0, 0, 0))
	self:SetRightHandOffset(Vector(1.5, 1, 0.5))
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
	self:SetSoundFire("helix::A_Roger_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 2)

	self:SetAnimationCharacterFire("helix::A_Mannequin_Sight_Fire_Pistol")
	self:SetAnimationFire("helix::A_DesertEagle_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Pistol")

	self:SetMagazineMesh("helix::SM_DesertEagle_Mag_Empty")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Tee")
end

function NewHelixWeapons.Roger:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "optic" and partType ~= "muzzle" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(8, 0, 9.2), Rotator(0, 0, 0))
		self:AddStaticMeshAttached("rail", "helix::SM_PicatinnyRail1_Roger", "Rail",
			Vector(9, 0, 9), Rotator(0, 0, 0))
		self:RemoveStaticMeshAttached("sight")
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(17, 0, 7.8), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.Roger:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.Roger:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

------------------------------------------------Shotguns------------------------------------------------

----------------------------------------Roma12 CONSTRUCTOR

NewHelixWeapons.Roma12 = Weapon.Inherit("Roma12")
NewHelixWeapons.Roma12.name = "Roma12"
NewHelixWeapons.Roma12.image = "assets://helix/Thumbnails/SK_Moss500.jpg"
NewHelixWeapons.Roma12.category = "shotguns"

function NewHelixWeapons.Roma12:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Roma-12")

	self.muzzleList = {
		"SM_Suppressor2",
		"SM_Compensator4",
		"SM_FlashHider2"
	}

	self.opticList = {
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic6",
		"SM_Optic8"
	}


	self:AddStaticMeshAttached("mag", "helix::SM_Roma-12_Mag", "Mag", Vector(0, 0, 0), Rotator(0, 0, 0))


	self:SetAmmoSettings(6, 1000, 1)
	self:SetDamage(30)
	self:SetSpread(70)
	self:SetRecoil(3)
	self:SetBulletSettings(6, 10000, 30000, Color(100, 58, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(0.5, 1, -1.5))
	self:SetHandlingMode(HandlingMode.LongWeapon)
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
	self:SetSoundFire("helix::A_Roma-12_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 1)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire_Heavy")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Shotgun")
	-- self:SetAnimationFire("helix::A_Moss500_Fire")

	self:SetCrosshairMaterial("helix::MI_Crosshair_Shotgun")
end

function NewHelixWeapons.Roma12:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "optic" and partType ~= "muzzle" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(16, 0, 14), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(48, 0, 11.7), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.Roma12:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.Roma12:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

-- ----------------------------------------Finisher CONSTRUCTOR

NewHelixWeapons.Finisher = Weapon.Inherit("Finisher")
NewHelixWeapons.Finisher.name = "Finisher"
NewHelixWeapons.Finisher.image = "assets://helix/Thumbnails/SK_Moss500.jpg"
NewHelixWeapons.Finisher.category = "shotguns"

function NewHelixWeapons.Finisher:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Finisher")

	self.muzzleList = {
		"SM_Suppressor2",
		"SM_Compensator4",
		"SM_FlashHider2"
	}

	self.opticList = {
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic6",
		"SM_Optic8"
	}

	self:SetAmmoSettings(6, 1000, 1)
	self:SetDamage(30)
	self:SetSpread(70)
	self:SetRecoil(3)
	self:SetBulletSettings(6, 10000, 30000, Color(100, 58, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(0.5, 1, -0.25))
	self:SetHandlingMode(HandlingMode.LongWeapon)
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
	self:SetSoundFire("helix::A_Finisher_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 1)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire_Heavy")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Shotgun")
	-- self:SetAnimationFire("helix::A_Moss500_Fire")

	self:SetCrosshairMaterial("helix::MI_Crosshair_Shotgun")
end

function NewHelixWeapons.Finisher:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "optic" and partType ~= "muzzle" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(16, 0, 12.7), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(64, 0, 10), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.Finisher:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.Finisher:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

----------------------------------------KTK CONSTRUCTOR

NewHelixWeapons.KTK = Weapon.Inherit("KTK")
NewHelixWeapons.KTK.name = "KTK"
NewHelixWeapons.KTK.image = "assets://helix/Thumbnails/SK_Moss500.jpg"
NewHelixWeapons.KTK.category = "shotguns"

function NewHelixWeapons.KTK:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_KTK")

	self.muzzleList = {
		"SM_Suppressor2",
		"SM_Compensator4",
		"SM_FlashHider2"
	}

	self.opticList = {
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic6",
		"SM_Optic8"
	}

	self:SetAmmoSettings(6, 1000, 1)
	self:SetDamage(30)
	self:SetSpread(70)
	self:SetRecoil(3)
	self:SetBulletSettings(6, 10000, 30000, Color(100, 58, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(0, 1, 2))
	self:SetHandlingMode(HandlingMode.LongWeapon)
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
	self:SetSoundFire("helix::A_KTK_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 1)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire_Heavy")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Shotgun")
	self:SetAnimationFire("helix::A_Moss500_Fire")

	self:SetCrosshairMaterial("helix::MI_Crosshair_Shotgun")
end

function NewHelixWeapons.KTK:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "optic" and partType ~= "muzzle" then
		return
	end

	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(16, 0, 16.2), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(35, 0, 13), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.KTK:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.KTK:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

----------------------------------------Remi CONSTRUCTOR

NewHelixWeapons.Remi = Weapon.Inherit("Remi")
NewHelixWeapons.Remi.name = "Remi"
NewHelixWeapons.Remi.image = "assets://helix/Thumbnails/SK_Moss500.jpg"
NewHelixWeapons.Remi.category = "shotguns"

function NewHelixWeapons.Remi:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Remi")

	self.muzzleList = {
		"SM_Suppressor2",
		"SM_Compensator4",
		"SM_FlashHider2"
	}

	self.opticList = {
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic6",
		"SM_Optic8"
	}


	self:SetAmmoSettings(6, 1000, 1)
	self:SetDamage(30)
	self:SetSpread(70)
	self:SetRecoil(3)
	self:SetBulletSettings(6, 10000, 30000, Color(100, 58, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(-5, 2, 13))
	self:SetHandlingMode(HandlingMode.LongWeapon)
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
	self:SetSoundFire("helix::A_Remi_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 1)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire_Heavy")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Shotgun")
	-- self:SetAnimationFire("helix::A_Moss500_Fire")

	self:SetCrosshairMaterial("helix::MI_Crosshair_Shotgun")
end

function NewHelixWeapons.Remi:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "optic" and partType ~= "muzzle" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(16, 0, 2.2), Rotator(0, 0, 0))
		self:AddStaticMeshAttached("rail", "helix::SM_PicatinnyRail1_Remi", "Rail",
			Vector(18, 0, 2), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(65, 0, 0.8), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.Remi:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.Remi:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

----------------------------------------DB12 CONSTRUCTOR

NewHelixWeapons.DB12 = Weapon.Inherit("DB12")
NewHelixWeapons.DB12.name = "DB12"
NewHelixWeapons.DB12.image = "assets://helix/Thumbnails/SK_Moss500.jpg"
NewHelixWeapons.DB12.category = "shotguns"

function NewHelixWeapons.DB12:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_DB-12")

	self.opticList = {
		"SM_Optic2",
		"SM_Optic4",
		"SM_Optic6",
		"SM_Optic7"
	}


	self:SetAmmoSettings(6, 1000, 1)
	self:SetDamage(30)
	self:SetSpread(70)
	self:SetRecoil(3)
	self:SetBulletSettings(6, 10000, 30000, Color(100, 58, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(3.5, 1, 5.75))
	self:SetHandlingMode(HandlingMode.LongWeapon)
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
	self:SetSoundFire("helix::A_DB-12_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 1)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire_Heavy")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Shotgun")
	-- self:SetAnimationFire("helix::A_Moss500_Fire")

	self:SetCrosshairMaterial("helix::MI_Crosshair_Shotgun")
end

function NewHelixWeapons.DB12:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "optic" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(30, 0, 6.4), Rotator(0, 0, 0))
		self:AddStaticMeshAttached("rail", "helix::SM_PicatinnyRail3", "Rail",
			Vector(30, 0, 6.2), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.DB12:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.DB12:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

------------------------------------------------LMGs------------------------------------------------


----------------------------------------LWS32 CONSTRUCTOR

NewHelixWeapons.LWS32 = Weapon.Inherit("LWS32")
NewHelixWeapons.LWS32.name = "LWS32"
NewHelixWeapons.LWS32.image = "assets://helix/Thumbnails/SK_Lewis.jpg"
NewHelixWeapons.LWS32.category = "lmg"

function NewHelixWeapons.LWS32:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_LWS-32")

	self.muzzleList = {
		"SM_Suppressor1",
		"SM_Compensator4",
		"SM_FlashHider1"
	}
	self.opticList = {
		"SM_Optic1",
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic5",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8",
		"SM_Optic9",
		"SM_OpticSniper4"
	}
	self.stockList = {
		"SM_Stock2",
		"SM_Stock7",
		"SM_Stock8",
		"SM_Stock9"
	}


	self:AddStaticMeshAttached("mag", "helix::SM_LWS-32_Mag", "Clip", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("sight", "helix::SM_LWS-32_IronSight", "IronSight", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("stock", "helix::SM_LWS-32_Stock", "Stock", Vector(0, 0, 0), Rotator(0, 0, 0))

	self:SetAmmoSettings(47, 1000)
	self:SetDamage(25)
	self:SetSpread(10)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(1, 1, -0.5))
	self:SetHandlingMode(HandlingMode.LongWeapon)
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
	self:SetSoundFire("helix::A_LWS-32_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 8)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	-- self:SetAnimationFire("helix::A_Lewis_Fire")

	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular_X")
end

function NewHelixWeapons.LWS32:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "mag" and partType ~= "stock" and partType ~= "optic" and partType ~= "muzzle" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(3, 0, 16.5), Rotator(0, 0, 0))
	elseif partType == "stock" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-8.5, 0, 13), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(74.5, 0, 13.9), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.LWS32:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.LWS32:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

----------------------------------------KFS CONSTRUCTOR

NewHelixWeapons.KFS = Weapon.Inherit("KFS")
NewHelixWeapons.KFS.name = "KFS"
NewHelixWeapons.KFS.image = "assets://helix/Thumbnails/SK_Lewis.jpg"
NewHelixWeapons.KFS.category = "lmg"

function NewHelixWeapons.KFS:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_KFS")

	self.muzzleList = {
		"SM_Suppressor2",
		"SM_Compensator4",
		"SM_FlashHider1"
	}
	self.opticList = {
		"SM_Optic1",
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic5",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8",
		"SM_Optic9",
		"SM_OpticSniper4"
	}
	self.rearGripList = {
		"SM_RearGrip2",
		"SM_RearGrip4",
		"SM_RearGrip6",
		"SM_RearGrip7"
	}
	self.stockList = {
		"SM_Stock2",
		"SM_Stock7",
		"SM_Stock8",
		"SM_Stock9"
	}

	self:AddStaticMeshAttached("mag", "helix::SM_KFS_Mag", "Clip", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("reargrip", "helix::SM_KFS_RearGrip", "Grip", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("stock", "helix::SM_KFS_Stock", "Stock", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("sight", "helix::SM_KFS_IronSight", "IronSight", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("muzzle", "helix::SM_KFS_Muzzle", "Muzzle", Vector(0, 0, 0), Rotator(0, 0, 0))



	self:SetAmmoSettings(47, 1000)
	self:SetDamage(25)
	self:SetSpread(10)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(1, 1.5, 0))
	self:SetHandlingMode(HandlingMode.LongWeapon)
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
	self:SetSoundFire("helix::A_KFS_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 8)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	-- self:SetAnimationFire("helix::A_Lewis_Fire")

	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular_X")
end

function NewHelixWeapons.KFS:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "mag" and partType ~= "stock" and partType ~= "optic" and partType ~= "muzzle" and partType ~= "reargrip" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-2, 0, 10), Rotator(0, 0, 0))
	elseif partType == "stock" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-14, 0, 6), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(87.5, 0, 7.5), Rotator(0, 0, 0))
	elseif partType == "reargrip" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-7, 0, 2),
			Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.KFS:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.KFS:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

----------------------------------------Sabra CONSTRUCTOR

NewHelixWeapons.Sabra = Weapon.Inherit("Sabra")
NewHelixWeapons.Sabra.name = "Sabra"
NewHelixWeapons.Sabra.image = "assets://helix/Thumbnails/SK_Lewis.jpg"
NewHelixWeapons.Sabra.category = "lmg"

function NewHelixWeapons.Sabra:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Sabra")

	self.muzzleList = {
		"SM_Suppressor2",
		"SM_Compensator4",
		"SM_FlashHider1"
	}


	self.opticList = {
		"SM_Optic1",
		"SM_Optic2",
		"SM_Optic3",
		"SM_Optic4",
		"SM_Optic5",
		"SM_Optic6",
		"SM_Optic7",
		"SM_Optic8",
		"SM_Optic9",
		"SM_OpticSniper4"
	}


	self.stockList = {
		"SM_Stock2",
		"SM_Stock7",
		"SM_Stock8",
		"SM_Stock9"
	}


	self:AddStaticMeshAttached("mag", "helix::SM_Sabra_Mag", "Clip", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("reargrip", "helix::SM_Sabra_RearGrip", "Grip", Vector(0, 0, 0), Rotator(0, 0, 0))
	self:AddStaticMeshAttached("stock", "helix::SM_Sabra_Stock", "Stock", Vector(0, 0, 0), Rotator(0, 0, 0))


	self:SetAmmoSettings(47, 1000)
	self:SetDamage(25)
	self:SetSpread(10)
	self:SetRecoil(0.25)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(1.5, 1, 0))
	self:SetHandlingMode(HandlingMode.LongWeapon)
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
	self:SetSoundFire("helix::A_Sabra_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 8)

	self:SetAnimationCharacterFire("helix::AM_Mannequin_Sight_Fire")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	-- self:SetAnimationFire("helix::A_Lewis_Fire")

	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular_X")
end

function NewHelixWeapons.Sabra:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "mag" and partType ~= "stock" and partType ~= "optic" and partType ~= "muzzle" and partType ~= "reargrip" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-10, 1.6, 14), Rotator(0, 0, 0))
	elseif partType == "stock" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-24, 1.6, 11), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(45, 1.6, 11.5), Rotator(0, 0, 0))
	elseif partType == "reargrip" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(-12.5, 1.6, 4),
			Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.Sabra:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.Sabra:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

------------------------------------------------sniper-rifles------------------------------------------------

----------------------------------------CS446 CONSTRUCTOR

NewHelixWeapons.CS446 = Weapon.Inherit("CS446")
NewHelixWeapons.CS446.name = "CS446"
NewHelixWeapons.CS446.image = "assets://helix/Thumbnails/SK_AWP.jpg"
NewHelixWeapons.CS446.category = "sniper-rifles"

function NewHelixWeapons.CS446:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_CS-446")

	self.muzzleList = {
		"SM_Suppressor5",
		"SM_Compensator1",
		"SM_FlashHider2"
	}
	self.opticList = {
		"SM_Optic1",
		"SM_Optic4",
		"SM_Optic5",
		"SM_Optic9",
		"SM_OpticSniper1",
		"SM_OpticSniper2",
		"SM_OpticSniper3",
		"SM_OpticSniper4",
		"SM_OpticSniper5",
		"SM_OpticSniper6"
	}
	self.stockList = {}


	self:AddStaticMeshAttached("mag", "helix::SM_CS-446_Mag", "Clip", Vector(0, 0, 0), Rotator(0, 0, 0))



	self:SetAmmoSettings(10, 1000)
	self:SetDamage(90)
	self:SetSpread(10)
	self:SetRecoil(3)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(2.25, 1, 0))
	self:SetHandlingMode(HandlingMode.LongWeapon)
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
	self:SetSoundFire("helix::A_CS-446_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 2)

	self:SetAnimationFire("helix::A_AWP_Fire")
	self:SetAnimationCharacterFire("helix::A_Mannequin_Sight_Fire_Pistol")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular")
end

function NewHelixWeapons.CS446:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "optic" and partType ~= "muzzle" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(13, 0, 18), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(93.9, 0, 14.8), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.CS446:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.CS446:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

----------------------------------------Ronin777 CONSTRUCTOR

NewHelixWeapons.Ronin777 = Weapon.Inherit("Ronin777")
NewHelixWeapons.Ronin777.name = "Ronin777"
NewHelixWeapons.Ronin777.image = "assets://helix/Thumbnails/SK_AWP.jpg"
NewHelixWeapons.Ronin777.category = "sniper-rifles"

function NewHelixWeapons.Ronin777:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_Ronin-777")


	self.muzzleList = {
		"SM_Suppressor5",
		"SM_Compensator1",
		"SM_FlashHider2"
	}

	self.opticList = {
		"SM_Optic1",
		"SM_Optic4",
		"SM_Optic5",
		"SM_Optic9",
		"SM_OpticSniper1",
		"SM_OpticSniper2",
		"SM_OpticSniper3",
		"SM_OpticSniper4",
		"SM_OpticSniper5",
		"SM_OpticSniper6"
	}

	self.stockList = {}


	self:AddStaticMeshAttached("mag", "helix::SM_Ronin-777_Mag", "Clip", Vector(0, 0, 0), Rotator(0, 0, 0))


	self:SetAmmoSettings(10, 1000)
	self:SetDamage(90)
	self:SetSpread(10)
	self:SetRecoil(3)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(-0.5, 2.5, 0))
	self:SetHandlingMode(HandlingMode.LongWeapon)
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
	self:SetSoundFire("helix::A_Ronin-777_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 2)

	self:SetAnimationFire("helix::A_AWP_Fire")
	self:SetAnimationCharacterFire("helix::A_Mannequin_Sight_Fire_Pistol")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular")
end

function NewHelixWeapons.Ronin777:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "optic" and partType ~= "muzzle" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(13, 1.35, 16.6), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(90.5, 1.5, 14.4), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.Ronin777:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.Ronin777:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

-- ----------------------------------------DMC68 CONSTRUCTOR

NewHelixWeapons.DMC68 = Weapon.Inherit("DMC68")
NewHelixWeapons.DMC68.name = "DMC68"
NewHelixWeapons.DMC68.image = "assets://helix/Thumbnails/SK_AWP.jpg"
NewHelixWeapons.DMC68.category = "sniper-rifles"

function NewHelixWeapons.DMC68:Constructor(location, rotation)
	self.Super:Constructor(location or Vector(), rotation or Rotator(), "helix::SK_DMC-68")


	self.muzzleList = {
		"SM_Suppressor5",
		"SM_Compensator1",
		"SM_FlashHider2"
	}
	self.opticList = {
		"SM_Optic1",
		"SM_Optic4",
		"SM_Optic5",
		"SM_Optic7",
		"SM_Optic9",
		"SM_OpticSniper1",
		"SM_OpticSniper2",
		"SM_OpticSniper3",
		"SM_OpticSniper4",
		"SM_OpticSniper5",
		"SM_OpticSniper6"
	}

	self:AddStaticMeshAttached("mag", "helix::SM_DMC-68_Mag", "Clip", Vector(0, 0, 0), Rotator(0, 0, 0))

	self:SetAmmoSettings(10, 1000)
	self:SetDamage(90)
	self:SetSpread(10)
	self:SetRecoil(3)
	self:SetBulletSettings(1, 30000, 30000, Color(100, 58, 0))
	-- ALS NOT IMPLEMENTED self:SetSightTransform(Vector(0, 0, -1), Rotator(-1.5, 0, 0))
	self:SetLeftHandBone("b_gun_lefthand")
	self:SetRightHandOffset(Vector(1.5, 1, 0))
	self:SetHandlingMode(HandlingMode.LongWeapon)
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
	self:SetSoundFire("helix::A_DMC-68_Shot_001")
	self:SetSoundFireLastBullets("helix::A_SMG_Dry", 2)

	self:SetAnimationFire("helix::A_AWP_Fire")
	self:SetAnimationCharacterFire("helix::A_Mannequin_Sight_Fire_Pistol")
	self:SetAnimationReload("helix::AM_Mannequin_Reload_Rifle")
	self:SetCrosshairMaterial("helix::MI_Crosshair_Regular")
end

function NewHelixWeapons.DMC68:SetPart(partType, newPart)
	if not newPart then return end

	if partType ~= "optic" and partType ~= "muzzle" then
		return
	end
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
	end

	if partType == "optic" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(32, 0, 5.4), Rotator(0, 0, 0))
	elseif partType == "muzzle" then
		self[partType] = newPart
		self:AddStaticMeshAttached(partType, "helix::" .. newPart, string.upper(firstLetterOfString(partType)),
			Vector(74.5, 0, 3.5), Rotator(0, 0, 0))
	end
end

function NewHelixWeapons.DMC68:RemovePart(partType)
	if self[partType] and self[partType] ~= "helix::" then
		self:RemoveStaticMeshAttached(partType)
		self[partType] = "helix::"
	end
end

function NewHelixWeapons.DMC68:ResetToDefault()
	self:SetPart("mag", "SM_ACM_Mag")
	self:SetPart("stock", "SM_ACM_Stock")
	self:SetPart("optic", nil)
end

function firstLetterOfString(str)
	return (str:gsub("^%l", string.upper))
end
