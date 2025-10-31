printl("cheated-ai script loaded.");
#define trace_distance 4000

function ai_shoot() {
	for (local i = 1; i <= GetPlayerCount(2); i++) {
		local bot = GetPlayerFromUserID(i);
		if (bot != null && bot.IsValid() && IsPlayerABot(bot) && !bot.IsDead() && bot.IsSurvivor()) //valid AI survivor
		{
			local botEyePos = bot.EyePosition(), closestTarget = null, closestDist = 9999, infected = null;
			while ((infected = Entities.FindInSphere(infected, botEyePos, trace_distance)) != null) //infected in sphere
			{
				if (infected != null && infected.IsValid() && !infected.IsDead() && !infected.IsSurvivor()) //valid infected
				{
					local tracetable = {
						start = botEyePos,
						end = infected.GetOrigin(),
						ignore = bot,
						mask = TRACE_MASK_SHOT
					};
					TraceLine(tracetable);
					if (tracetable.hit && tracetable.enthit == infected) //target priority: Tank, Smoker, Spitter, Charger, Hunter, Boomer, Jockey, common infected
					{
						local dist = (infected.GetOrigin() - botEyePos).Length();
						local ztype = infected.GetZombieType();
						if (ztype != 9) //special infected
						{
							if (ztype == 8) { //Tank
								closestTarget = infected;
								break;
							} else if (ztype == 1) { //Smoker
								closestTarget = infected;
								break;
							} else if (ztype == 4) { //Spitter
								closestTarget = infected;
								break;
							} else if (ztype == 6) { //Charger
								closestTarget = infected;
								break;
							} else if (ztype == 3) { //Hunter
								closestTarget = infected;
								break;
							} else if (ztype == 2) { //Boomer
								closestTarget = infected;
								break;
							} else if (ztype == 5) { //Jockey
								closestTarget = infected;
								break;
							}
						} else if (dist < closestDist) { //common infected
							closestDist = dist;
							closestTarget = infected;
						}
					}
				}
			}
			if (closestTarget) {
				//锁头+开火

			}
		}
	}
}