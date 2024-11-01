function set_angle(argument0,argument1,argument2){
	argument0 = argument0 mod 360; // Îãðàíè÷èâàåì íàïðàâëåíèå - îò -360 äî 360 (íå âêëþ÷èòåëüíî).
	if argument0 <0 argument0 += 360; // Åñëè íàïðàâëåíèå ìåíüøå 360 - ïðåîáðàçîâûâàåì çíà÷åíèå â ïîëîæèòåëüíîå
	if abs(angle_difference(argument0,argument1))<argument2 // Åñëè ðàçíèöà ìåæäó íàïðàâëåíèÿìè ìåíüøå ñêîðîñòè ïîâîðîòà, òî...
		return argument1; // Âîçâðàùàåì òðåáóåìîå íàïðàâëåíèå
	return argument0 + (sign(sin(degtorad(argument1-argument0)))*argument2);
}