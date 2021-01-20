#include <vip_core>

public Plugin myinfo = {
	name = "[VIP] Time",
	author = "Mozze",
	description = "",
	version = "1.1",
	url = "t.me/pMozze"
}

public void VIP_OnClientLoaded(int iClient, bool bIsVIP) {
	if (bIsVIP)
		return;

	char szHour[3];
	int iCurrentHour;

	FormatTime(szHour, sizeof(szHour), "%H");
	iCurrentHour = StringToInt(szHour);

	for (int iHourIndex = 0; iHourIndex <= 9; iHourIndex++)
		if (iCurrentHour == iHourIndex)
			VIP_GiveClientVIP(0, iClient, 0, "TEMPORARY", false);

	for (int iHourIndex = 21; iHourIndex <= 23; iHourIndex++)
		if (iCurrentHour == iHourIndex)
			VIP_GiveClientVIP(0, iClient, 0, "TEMPORARY", false);
}
