ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterCommand('feed', 'admin', function(xPlayer, args, showError)
	args.playerId.triggerEvent('healscript:feedPlayer')
	args.playerId.triggerEvent('chat:addMessage', {args = {'^5FEED', 'Dein Hunger wurde gestillt.'}})
end, true, {help = 'Einen Spieler das Essen auffüllen.', validate = true, arguments = {
	{name = 'playerId', help = 'Spieler ID', type = 'player'}
}})

ESX.RegisterCommand('heal', 'admin', function(xPlayer, args, showError)
	args.playerId.triggerEvent('healscript:healPlayer')
	args.playerId.triggerEvent('chat:addMessage', {args = {'^5HEAL', 'Dein Leben wurde aufgefuellt.'}})
end, true, {help = 'Einen Spieler Leben auffüllen.', validate = true, arguments = {
	{name = 'playerId', help = 'Spieler ID', type = 'player'}
}})

ESX.RegisterCommand('addArmour', 'admin', function(xPlayer, args, showError)
	args.playerId.triggerEvent('healscript:addArmour')
	args.playerId.triggerEvent('chat:addMessage', {args = {'^5ARMOUR', 'Deine Schussweste wurde aufgefuellt.'}})
end, true, {help = 'Einen Spieler die Schussweste auffuellen.', validate = true, arguments = {
	{name = 'playerId', help = 'Spieler ID', type = 'player'}
}})