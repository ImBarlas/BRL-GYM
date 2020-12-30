ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

RegisterServerEvent('BRL-GYM:hireBmx')
AddEventHandler('BRL-GYM:hireBmx', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)	
	if xPlayer.getInventoryItem('cash').count >= 250 then
		xPlayer.removeInventoryItem('cash', 300)			
		notification("Bisikleti aldınız. BMX")
	else
		notification("Bisikleti çaldın çünkü üstünde para yoktu.Polise haber verdim teslim ol.")
	end	
end)

RegisterServerEvent('BRL-GYM:hireCruiser')
AddEventHandler('BRL-GYM:hireCruiser', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)	
	if xPlayer.getInventoryItem('cash').count >= 300 then
		xPlayer.removeInventoryItem('cash', 300)			
		notification("Bisikleti aldınız. CRUISER")
	else
		notification("Bisikleti çaldın çünkü üstünde para yoktu.Polise haber verdim teslim ol.")
	end	
end)

RegisterServerEvent('BRL-GYM:hireFixter')
AddEventHandler('BRL-GYM:hireFixter', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)	
	if xPlayer.getInventoryItem('cash').count >= 329 then
		xPlayer.removeInventoryItem('cash', 329)			
		notification("Bisikleti aldınız. FIXTER")
	else
		notification("Bisikleti çaldın çünkü üstünde para yoktu.Polise haber verdim teslim ol.")
	end	
end)

RegisterServerEvent('BRL-GYM:hireScorcher')
AddEventHandler('BRL-GYM:hireScorcher', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)	
	if xPlayer.getInventoryItem('cash').count >= 400 then
		xPlayer.removeInventoryItem('cash', 400)			
		notification("Bisikleti aldınız. SCORCHER")
	else
		notification("Bisikleti çaldın çünkü üstünde para yoktu.Polise haber verdim teslim ol")
	end	
end)

RegisterServerEvent('BRL-GYM:checkChip')
AddEventHandler('BRL-GYM:checkChip', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local oneQuantity = xPlayer.getInventoryItem('gym_membership').count
	if oneQuantity > 0 then
		TriggerClientEvent('BRL-GYM:trueMembership', source) -- true
	else
		TriggerClientEvent('BRL-GYM:falseMembership', source) -- false
	end
end)

RegisterServerEvent('BRL-GYM:buyMembership')
AddEventHandler('BRL-GYM:buyMembership', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)	
	if xPlayer.getInventoryItem('cash').count >= 800 then
		xPlayer.removeInventoryItem('cash', 800)
		xPlayer.addInventoryItem('gym_membership', 1)		
		notification("GYM Üyelik Kartı Satın Aldınız.")
		TriggerClientEvent('BRL-GYM:trueMembership', source) -- true
	else
		notification("Yeterli paranız yok.")
	end	
end)


RegisterServerEvent('BRL-GYM:buyProteinshake')
AddEventHandler('BRL-GYM:buyProteinshake', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)	
	if xPlayer.getInventoryItem('cash').count >= 15 then
		xPlayer.removeInventoryItem('cash', 15)
		xPlayer.addInventoryItem('protein_shake', 1)
		notification("Protein Shake satın aldınız.")
	else
		notification("Yeterli paranız yok.")
	end	
end)

ESX.RegisterUsableItem('protein_shake', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('protein_shake', 1)
	TriggerClientEvent('esx_status:add', source, 'thirst', 350000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, 'Protein içtiniz.')

end)

RegisterServerEvent('BRL-GYM:buyWater')
AddEventHandler('BRL-GYM:buyWater', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)	
	if xPlayer.getInventoryItem('cash').count >= 5 then
		xPlayer.removeInventoryItem('cash', 5)
		xPlayer.addInventoryItem('water', 1)
		notification("Su satın aldınız.")
	else
		notification("Yeterli paranız yok.")
	end		
end)

RegisterServerEvent('BRL-GYM:buyPowerade')
AddEventHandler('BRL-GYM:buyPowerade', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)	
	if xPlayer.getInventoryItem('cash').count >= 8 then
		xPlayer.removeInventoryItem('cash', 8)
		xPlayer.addInventoryItem('powerade', 1)
		notification("Redbull satın aldınız.")
	else
		notification("Yeterli paranız yok.")
	end		
end)

ESX.RegisterUsableItem('powerade', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('powerade', 1)
	TriggerClientEvent('esx_status:add', source, 'thirst', 700000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, ' Enerji içeceği içtiniz.')

end)

function notification(text)
	TriggerClientEvent('esx:showNotification', source, text)
end

Citizen.CreateThread(function()	
	if GetCurrentResourceName() == 'BRL-GYM' then
		else
			print("^3BRL-GYM: ^4KAPALI,^3 LUTFEN KLASORUN ADINI BRL-GYM YAPINIZ.")
			print("^3BRL-GYM: ^4KAPALI,^3 LUTFEN KLASORUN ADINI BRL-GYM YAPINIZ.")
			print("^3BRL-GYM: ^4KAPALI,^3 LUTFEN KLASORUN ADINI BRL-GYM YAPINIZ.")
			print("^3BRL-GYM: ^4KAPALI,^3 LUTFEN KLASORUN ADINI BRL-GYM YAPINIZ.")
			print("^3BRL-GYM: ^4KAPALI,^3 LUTFEN KLASORUN ADINI BRL-GYM YAPINIZ.")
			print("^3BRL-GYM: ^4KAPALI,^3 LUTFEN KLASORUN ADINI BRL-GYM YAPINIZ.")
			print("^3BRL-GYM: ^4KAPALI,^3 LUTFEN KLASORUN ADINI BRL-GYM YAPINIZ.")
			print("^3BRL-GYM: ^4KAPALI,^3 LUTFEN KLASORUN ADINI BRL-GYM YAPINIZ.")
	Citizen.Wait(5000)
	os.exit()
		end
  end)