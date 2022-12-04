local apifunctions = {
    --A tidier way of checking for multiple matched strings.
    ['Find'] = function(target, strings)
        local returns = {}
        for i, v in pairs(strings) do
            h = tostring(v)
            if string.find(target, h) then
                table.insert(returns, h)
            end
        end
        return(returns)
    end,
    --Tween speed based on distance from the target. Helps prevent flags and keeps tweens consistent.
    ['TweenSpeed'] = function(target)
        local distancefromtarget = (target - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
        if distancefromtarget < 3 then
            tweenspeed = 3
        else
            tweenspeed = (distancefromtarget/100)
        end
        return(tweenspeed)
    end,
    ['SecToMin'] = function(sec)
        return(sec/60)
    end,
    ['MinToSec'] = function(minutes)
        return(minutes*60)
    end
}

return apifunctions
