local Keys = {
  ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
  ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
  ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
  ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
  ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
  ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
  ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
  ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
  ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

ESX = nil
local PlayerData              = {}
local training = false
local resting = false
local membership = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
		PlayerData = ESX.GetPlayerData()
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

function hintToDisplay(text)
	SetTextComponentFormat("STRING")
	AddTextComponentString(text)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

local blips = {
	{title="Spor Salonu", colour=5, id=311, x = -22.09, y = -1661.43, z = 46.37}
}
	
Citizen.CreateThread(function()

	for _, info in pairs(blips) do
		info.blip = AddBlipForCoord(info.x, info.y, info.z)
		SetBlipSprite(info.blip, info.id)
		SetBlipDisplay(info.blip, 4)
		SetBlipScale(info.blip, 1.0)
		SetBlipColour(info.blip, info.colour)
		SetBlipAsShortRange(info.blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(info.title)
		EndTextCommandSetBlipName(info.blip)
	end
end)

RegisterNetEvent('BRL-GYM:trueMembership')
AddEventHandler('BRL-GYM:trueMembership', function()
	membership = true
end)

RegisterNetEvent('BRL-GYM:falseMembership')
AddEventHandler('BRL-GYM:falseMembership', function()
	membership = false
end)


local arms = {
    {x = -40.14,y = -1659.94,z = 29.5}
}

local pushup = {
    {x = -33.19,y = -1653.38,z = 29.51}
}

local yoga = {
    {x = -29.44,y = -1655.01,z = 29.51}
}

local arm = {
    {x = -30.31,y = -1653.18,z = 29.51}
}

local situp = {
    {x = -42.19,y = -1671.31,z = 29.51}
}

local gym = {
    {x = -33.64,y = -1662.32,z = 29.49}
}

local chins = {
    {x = -37.01,y = -1660.59,z = 29.51}
}

local chin = {
    {x = -35.84,y = -1659.3,z = 29.49}
}

local rentbike = {
    {x = -52.85,y = -1676.15,z = 29.14}
}

-- LOCATION (END)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(rentbike) do
            DrawMarker(21, rentbike[k].x, rentbike[k].y, rentbike[k].z, 0, 0, 0, 0, 0, 0, 0.301, 0.301, 0.3001, 0, 153, 255, 255, 0, 0, 0, 0)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(arms) do
            DrawMarker(21, arms[k].x, arms[k].y, arms[k].z, 0, 0, 0, 0, 0, 0, 0.301, 0.301, 0.3001, 0, 255, 50, 200, 0, 0, 0, 0)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(pushup) do
            DrawMarker(21, pushup[k].x, pushup[k].y, pushup[k].z, 0, 0, 0, 0, 0, 0, 0.301, 0.301, 0.3001, 0, 255, 50, 200, 0, 0, 0, 0)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(yoga) do
            DrawMarker(21, yoga[k].x, yoga[k].y, yoga[k].z, 0, 0, 0, 0, 0, 0, 0.301, 0.301, 0.3001, 0, 255, 50, 200, 0, 0, 0, 0)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(situps) do
            DrawMarker(21, situps[k].x, situps[k].y, situps[k].z, 0, 0, 0, 0, 0, 0, 0.301, 0.301, 0.3001, 0, 255, 50, 200, 0, 0, 0, 0)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(arm) do
            DrawMarker(21, arm[k].x, arm[k].y, arm[k].z, 0, 0, 0, 0, 0, 0, 0.301, 0.301, 0.3001, 0, 255, 50, 200, 0, 0, 0, 0)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(gym) do
            DrawMarker(21, gym[k].x, gym[k].y, gym[k].z, 0, 0, 0, 0, 0, 0, 0.301, 0.301, 0.3001, 0, 153, 255, 255, 0, 0, 0, 0)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(chins) do
            DrawMarker(21, chins[k].x, chins[k].y, chins[k].z, 0, 0, 0, 0, 0, 0, 0.301, 0.301, 0.3001, 0, 255, 50, 200, 0, 0, 0, 0)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(chin) do
            DrawMarker(21, chin[k].x, chin[k].y, chin[k].z, 0, 0, 0, 0, 0, 0, 0.301, 0.301, 0.3001, 0, 255, 50, 200, 0, 0, 0, 0)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(rentbike) do
			local plyCoords = GetEntityCoords(PlayerPedId(), false)
			local sleep = 1000
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, rentbike[k].x, rentbike[k].y, rentbike[k].z)
			if dist <= 0.5 then
				hintToDisplay('Bisiklet almak istiyorsanız ~INPUT_CONTEXT~ tuşuna basınız.')
				if IsControlJustPressed(0, Keys['E']) then -- "E"
					sleep = 1
					if IsPedInAnyVehicle(PlayerPedId()) then
						ESX.ShowNotification("Aracı tekrar alamazsınız.")
					else
						OpenBikeMenu()
					end
				end			
            end
		end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(gym) do
			local plyCoords = GetEntityCoords(PlayerPedId(), false)
			local sleep = 1000
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, gym[k].x, gym[k].y, gym[k].z)
            if dist <= 0.5 then
				hintToDisplay('Spor Salonu menüsünü açmak için ~INPUT_CONTEXT~ tuşuna basınız.')
				if IsControlJustPressed(0, Keys['E']) then
					sleep = 1
					OpenGymMenu()
				end			
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(arms) do
			local plyCoords = GetEntityCoords(PlayerPedId(), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, arms[k].x, arms[k].y, arms[k].z)
            if dist <= 0.5 then
				hintToDisplay('Ağırlığı kaldırmak için ~INPUT_CONTEXT~ tuşuna basınız.')
				if IsControlJustPressed(0, Keys['E']) then
					if training == false then
						TriggerServerEvent('BRL-GYM:checkChip')
						ESX.ShowNotification("Egzersiz başlıyor...")
						Citizen.Wait(1000)					
						if membership == true then
							local playerPed = PlayerPedId()
							TaskStartScenarioInPlace(playerPed, "world_human_muscle_free_weights", 0, true)
							Citizen.Wait(30000)
							ClearPedTasksImmediately(playerPed)
							ESX.ShowNotification("Başka bir egzersiz yapmak için 60 saniye  beklemen gerekli.")
							training = true
						elseif membership == false then
							ESX.ShowNotification("Eğersiz yapman için Üyelik kartın olması gerekli.")
						end
					elseif training == true then
						ESX.ShowNotification("Şuanda dinlenmelisin.")
						
						resting = true					
						CheckTraining()
					end
				end			
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(chins) do
            local plyCoords = GetEntityCoords(PlayerPedId(), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, chins[k].x, chins[k].y, chins[k].z)
            if dist <= 0.5 then
				hintToDisplay('Barfiks çekmek ~INPUT_CONTEXT~ tuşuna basınız.')
				if IsControlJustPressed(0, Keys['E']) then
					if training == false then
						TriggerServerEvent('BRL-GYM:checkChip')
						ESX.ShowNotification("Egzersiz başlıyor...")
						Citizen.Wait(1000)					
					
						if membership == true then
							local playerPed = PlayerPedId()
							TaskStartScenarioInPlace(playerPed, "prop_human_muscle_chin_ups", 0, true)
							Citizen.Wait(30000)
							ClearPedTasksImmediately(playerPed)
							ESX.ShowNotification("Başka bir egzersiz yapmak için 60 saniye beklemen gerekli.")
							
							
							training = true
						elseif membership == false then
							ESX.ShowNotification("Eğersiz yapman için Üyelik kartın olması gerekli.")
						end
					elseif training == true then
						ESX.ShowNotification("Şuanda dinlenmelisin.")
						
						resting = true
						
						CheckTraining()
					end
				end			
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(chin) do

            local plyCoords = GetEntityCoords(PlayerPedId(), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, chin[k].x, chin[k].y, chin[k].z)

            if dist <= 0.5 then
				hintToDisplay('Barfiks çekmek ~INPUT_CONTEXT~ tuşuna basınız.')
				
				if IsControlJustPressed(0, Keys['E']) then
					if training == false then
					
						TriggerServerEvent('BRL-GYM:checkChip')
						ESX.ShowNotification("Egzersiz başlıyor...")
						Citizen.Wait(1000)					
					
						if membership == true then
							local playerPed = PlayerPedId()
							TaskStartScenarioInPlace(playerPed, "prop_human_muscle_chin_ups", 0, true)
							Citizen.Wait(30000)
							ClearPedTasksImmediately(playerPed)
							ESX.ShowNotification("Başka bir egzersiz yapmak için 60 saniye beklemen gerekli.")
							
							
							training = true
						elseif membership == false then
							ESX.ShowNotification("Eğersiz yapman için Üyelik kartın olması gerekli.")
						end
					elseif training == true then
						ESX.ShowNotification("Şuanda dinlenmelisin.")
						
						resting = true
						
						CheckTraining()
					end
				end			
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(pushup) do

            local plyCoords = GetEntityCoords(PlayerPedId(), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, pushup[k].x, pushup[k].y, pushup[k].z)

            if dist <= 0.5 then
				hintToDisplay('Şınav çekmek için ~INPUT_CONTEXT~ tuşuna basınız. ')
				
				if IsControlJustPressed(0, Keys['E']) then
					if training == false then
					
						TriggerServerEvent('BRL-GYM:checkChip')
						ESX.ShowNotification("Egzersiz başlıyor...")
						Citizen.Wait(1000)					
					
						if membership == true then				
							local playerPed = PlayerPedId()
							TaskStartScenarioInPlace(playerPed, "world_human_push_ups", 0, true)
							Citizen.Wait(30000)
							ClearPedTasksImmediately(playerPed)
							ESX.ShowNotification("Başka bir egzersiz yapmak için 60 saniye  beklemen gerekli.")
						
							
							training = true
						elseif membership == false then
							ESX.ShowNotification("Eğersiz yapman için Üyelik kartın  olması gerekli.")
						end							
					elseif training == true then
						ESX.ShowNotification("Şuanda dinlenmelisin.")
						
						resting = true
						
						CheckTraining()
					end
				end			
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(yoga) do

            local plyCoords = GetEntityCoords(PlayerPedId(), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, yoga[k].x, yoga[k].y, yoga[k].z)

            if dist <= 0.5 then
				hintToDisplay('Yoga yapmak için ~INPUT_CONTEXT~ tuşuna basınız.')
				
				if IsControlJustPressed(0, Keys['E']) then
					if training == false then
					
						TriggerServerEvent('BRL-GYM:checkChip')
						ESX.ShowNotification("Egzersiz başlıyor...")
						Citizen.Wait(1000)					
					
						if membership == true then	
							local playerPed = PlayerPedId()
							TaskStartScenarioInPlace(playerPed, "world_human_yoga", 0, true)
							Citizen.Wait(30000)
							ClearPedTasksImmediately(playerPed)
							ESX.ShowNotification("Başka bir egzersiz yapmak için 60 saniye beklemen gerekli.")
						
							
							training = true
						elseif membership == false then
							ESX.ShowNotification("Eğersiz yapman için Üyelik kartın olması gerekli.")
						end
					elseif training == true then
						ESX.ShowNotification("Şuanda dinlenmelisin.")
						
						resting = true
						
						CheckTraining()
					end
				end			
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(situps) do

            local plyCoords = GetEntityCoords(PlayerPedId(), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, situps[k].x, situps[k].y, situps[k].z)

            if dist <= 0.5 then
				hintToDisplay('Mekik çekmek için ~INPUT_CONTEXT~ tuşuna basınız.')
				
				if IsControlJustPressed(0, Keys['E']) then
					if training == false then

						TriggerServerEvent('BRL-GYM:checkChip')
						ESX.ShowNotification("Egzersiz başlıyor...")
						Citizen.Wait(1000)					
					
						if membership == true then	
							local playerPed = PlayerPedId()
							TaskStartScenarioInPlace(playerPed, "world_human_sit_ups", 0, true)
							Citizen.Wait(30000)
							ClearPedTasksImmediately(playerPed)
							ESX.ShowNotification("Başka bir egzersiz yapmak için 60 saniye beklemen gerekli.")
						
							
							training = true
						elseif membership == false then
							ESX.ShowNotification("Eğersiz yapman için Üyelik kartın olması gerekli.")
						end
					elseif training == true then
						ESX.ShowNotification("Şuanda dinlenmelisin.")
						
						resting = true
						
						CheckTraining()
					end
				end			
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(arm) do

            local plyCoords = GetEntityCoords(PlayerPedId(), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, arm[k].x, arm[k].y, arm[k].z)

            if dist <= 0.5 then
				hintToDisplay('Mekik çekmek için ~INPUT_CONTEXT~ tuşuna basınız.')
				
				if IsControlJustPressed(0, Keys['E']) then
					if training == false then

						TriggerServerEvent('BRL-GYM:checkChip')
						ESX.ShowNotification("Egzersiz başlıyor...")
						Citizen.Wait(1000)					
					
						if membership == true then	
							local playerPed = PlayerPedId()
							TaskStartScenarioInPlace(playerPed, "world_human_sit_ups", 0, true)
							Citizen.Wait(30000)
							ClearPedTasksImmediately(playerPed)
							ESX.ShowNotification("Başka bir egzersiz yapmak için 60 saniye beklemen gerekli.")
						
							
							training = true
						elseif membership == false then
							ESX.ShowNotification("Eğersiz yapman için Üyelik kartın olması gerekli.")
						end
					elseif training == true then
						ESX.ShowNotification("Şuanda dinlenmelisin.")
						
						resting = true
						
						CheckTraining()
					end
				end			
            end
        end
    end
end)

function CheckTraining()
	if resting == true then
		ESX.ShowNotification("Otur ve soluklan.")
		
		resting = false
		Citizen.Wait(80000)
		training = false
	end
	
	if resting == false then
		ESX.ShowNotification("Egzersizden ayrıldın.")
	end
end

function OpenGymMenu()
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'gym_menu',
        {
            title    = 'Barlas Spor Salonuna Hoş Geldiniz.',
            elements = {
				{label = 'İçecek almak istiyorum hangi içeçekleriniz bulunmakta?', value = 'shop'},
				{label = 'Hangi Saatler Açıksınız?', value = 'hours'},
				{label = 'Üyelik almak istiyorum. Ücreti Ne kadar?', value = 'ship'},
            }
        },
        function(data, menu)
            if data.current.value == 'shop' then
				OpenGymShopMenu()
            elseif data.current.value == 'hours' then
				ESX.UI.Menu.CloseAll()
				
				ESX.ShowNotification("Merhabalar Çalışma Saatlerimiz 7/24.")
            elseif data.current.value == 'ship' then
				OpenGymShipMenu()
            end
        end,
        function(data, menu)
            menu.close()
        end
    )
end

function OpenGymShopMenu()
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'gym_shop_menu',
        {
            title    = 'Barlas - Market',
            elements = {
				{label = 'Protein Shake ($15)', value = 'protein_shake'},
				{label = 'Su ($5)', value = 'water'},
				{label = 'Redbull ($8)', value = 'powerade'},
            }
        },
        function(data, menu)
            if data.current.value == 'protein_shake' then
				TriggerServerEvent('BRL-GYM:buyProteinshake')
            elseif data.current.value == 'water' then
				TriggerServerEvent('BRL-GYM:buyWater')
            elseif data.current.value == 'powerade' then
				TriggerServerEvent('BRL-GYM:buyPowerade')
            end
        end,
        function(data, menu)
            menu.close()
        end
    )
end

function OpenGymShipMenu()
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'gym_ship_menu',
        {
            title    = 'Barlas GYM - Üyelik Kartı',
            elements = {
				{label = 'Üyelik Kartı almak istiyorsanız ($800)ödemelisiniz.', value = 'membership'},
            }
        },
        function(data, menu)
            if data.current.value == 'membership' then
				TriggerServerEvent('BRL-GYM:buyMembership')
				
				ESX.UI.Menu.CloseAll()
            end
        end,
        function(data, menu)
            menu.close()
        end
    )
end

function OpenBikeMenu()
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'bike_menu',
        {
            title    = 'Bisiklet almak mı istiyorsun?',
            elements = {
				{label = 'BMX Bisikleti ($250)', value = 'bmx'},
				{label = 'Cruiser Bisikleti ($300)', value = 'cruiser'},
				{label = 'Fixter Bisikleti ($329)', value = 'fixter'},
				{label = 'Scorcher Bisikleti ($400)', value = 'scorcher'},
            }
        },
        function(data, menu)
            if data.current.value == 'bmx' then
				TriggerServerEvent('BRL-GYM:hireBmx')
				TriggerEvent('esx:spawnVehicle', "bmx")
				
				ESX.UI.Menu.CloseAll()
            elseif data.current.value == 'cruiser' then
				TriggerServerEvent('BRL-GYM:hireCruiser')
				TriggerEvent('esx:spawnVehicle', "cruiser")
				
				ESX.UI.Menu.CloseAll()
            elseif data.current.value == 'fixter' then
				TriggerServerEvent('BRL-GYM:hireFixter')
				TriggerEvent('esx:spawnVehicle', "fixter")
				
				ESX.UI.Menu.CloseAll()
            elseif data.current.value == 'scorcher' then
				TriggerServerEvent('BRL-GYM:hireScorcher')
				TriggerEvent('esx:spawnVehicle', "scorcher")
				
				ESX.UI.Menu.CloseAll()
            end
        end,
        function(data, menu)
            menu.close()
        end
    )
end