
/*
	Description:
		Add function HearingAid to eventHandler "Fired" of player parameter

	Parameter(s):
		0: OBJECT - player

	Returns:
		NOTHING
*/
_this addEventHandler ["Fired",{_this call VCM_fnc_HearingAids;}];
if (VCM_ENABLE_IRCHECK) then {
	_this spawn VCM_fnc_IRCHECK;
	_this addEventHandler ["Respawn",{_this spawn VCM_fnc_IRCHECK;}];
};
VCM_PLAYERSLIST pushBack _this;