#include <vip_core>

public Plugin myinfo = {
	name = "[VIP] Time",
	author = "Mozze",
	description = "",
	version = "1.0",
	url = "t.me/pMozze"
}

public void OnClientPutInServer(int iClient) {
	if (VIP_IsClientVIP(iClient))
		return;

	char szCurrentHour[4];
	int iCurrentHour;

	FormatTime(szCurrentHour, sizeof(szCurrentHour), "%H");
	iCurrentHour = StringToInt(szCurrentHour);

	for (int Index = 21; Index <= 23; Index++)
		if (iCurrentHour == Index)
			VIP_GiveClientVIP(0, iClient, 0, "TEMPORARY", false);
	
	for (int Index = 0; Index <= 9; Index++)
		if (iCurrentHour == Index)
			VIP_GiveClientVIP(0, iClient, 0, "TEMPORARY", false);
}