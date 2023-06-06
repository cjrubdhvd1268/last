local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and not seenCutscene then
		setProperty('camGame.visible', false);
		setProperty('camHUD.visible', false);

		runTimer('lowEnd',1,1);

		allowCountdown = true;
		return Function_Stop;
	end

	setProperty('camGame.visible', true);
	setProperty('camHUD.visible', true);
	return Function_Continue;
end


function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'lowEnd' then
			startVideo('Ads');
	end
end