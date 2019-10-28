// if HC then exec Vcom
if !(hasInterface or isServer) then {
[] execVM "Vcom\VcomInit.sqf";
}