
--[[

QBCore Framework
Copyright (C) 2015-2022 ESX (Jérémie N'gadi), Joshua Eger

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>

]]

local QBCore = exports[Config.qbcorename]:GetCoreObject()


if Config.Framework == "qbcore" then

    QBCore.Commands.Add(Config.cashcommand, 'Check Cash Balance', {}, false, function(source, _)
        local Player = QBCore.Functions.GetPlayer(source)
        local cashamount = Player.PlayerData.money.cash
        TriggerClientEvent('hud:client:ShowAccounts', source, 'cash', cashamount)
    end)
    
    QBCore.Commands.Add(Config.bankcommand, 'Check Bank Balance', {}, false, function(source, _)
        local Player = QBCore.Functions.GetPlayer(source)
        local bankamount = Player.PlayerData.money.bank
        TriggerClientEvent('hud:client:ShowAccounts', source, 'bank', bankamount)
    end)
    
    elseif Config.Framework == "esx" then

        return nil --- add command for esx if are using esx
        
end


