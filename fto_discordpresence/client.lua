Citizen.CreateThread(function()

	while true do

        SetDiscordAppId(594156498519951654)

        SetDiscordRichPresenceAsset('logo_name')

        SetDiscordRichPresenceAssetSmallText('Discord : https://discord.gg/fatora')
        
        SetDiscordRichPresenceAssetText('Rejoignez nous !')
        
        SetDiscordRichPresenceAssetSmall('logo_small')

        SetRichPresence(GetPlayerName(PlayerId()) .. " - ".. #players .. "/256")

        SetDiscordRichPresenceAction(0, "Se connecter", "fivem://connect/play.fatora.fr")

        SetDiscordRichPresenceAction(1, "Discord", "https://discord.gg/fatora")

  players = {}
  for i = 0, 255 do
      if NetworkIsPlayerActive( i ) then
          table.insert( players, i )
      end
  end
  SetRichPresence(GetPlayerName(PlayerId()) .. " - ".. #players .. "/150") -- Remplacer le chiffre (150) par le nombre de joueurs

        Citizen.Wait(6000)   

    end
end)
