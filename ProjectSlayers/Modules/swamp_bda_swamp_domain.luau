local v0 = {
    currentid = ""
};
local v1 = require(game.ReplicatedStorage.Modules.Client.character_handler);
local l_resume_0 = coroutine.resume;
local l_create_0 = coroutine.create;
local _ = game:GetService("RunService");
local _ = game.Players.LocalPlayer:GetMouse();
local l_LocalPlayer_0 = game.Players.LocalPlayer;
local v7 = game.ReplicatedStorage.PlayerValues:WaitForChild(l_LocalPlayer_0.Name);
local v8 = 0;
local l_tick_0 = tick;
local l_get_item_health_0 = require(game.ReplicatedStorage.Modules.Server.Server_Modules:WaitForChild("get_item_health"));
local v11 = "";
local v12 = {
    "Stun", 
    "KnockedOut", 
    "RagDoll"
};
v7.ChildAdded:Connect(function(v13) --[[ Line: 15 ]]
    -- upvalues: v12 (copy), v11 (ref)
    if table.find(v12, v13.Name) ~= nil then
        v11 = "";
    end;
end);
local v14 = RaycastParams.new();
v14.FilterDescendantsInstances = {
    workspace.Map
};
v14.FilterType = Enum.RaycastFilterType.Whitelist;
local l_RunService_1 = game:GetService("RunService");
local v16 = false;
local _ = game:GetService("TweenService");
local _ = TweenInfo.new(0.23, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0);
local v19 = false;
local v20 = require(game.ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Global"):WaitForChild("skills_custom_add_thing"))[script.Name];
local v21 = 0;
local v22 = 0;
local v23 = {
    "Stun"
};
v7.ChildAdded:Connect(function(v24) --[[ Line: 35 ]]
    -- upvalues: v23 (copy), v22 (ref)
    if table.find(v23, v24.Name) ~= nil then
        v22 = "";
    end;
end);
v0.Down = function(v25) --[[ Line: 36 ]]
    -- upvalues: v16 (ref), l_LocalPlayer_0 (copy), l_get_item_health_0 (copy), v0 (copy), v1 (copy), l_tick_0 (copy), v21 (ref), v19 (ref), l_resume_0 (copy), l_create_0 (copy), l_RunService_1 (copy), v8 (ref), v7 (copy), v20 (copy), v22 (ref)
    if v25 == nil then
        return;
    else
        local v26 = false;
        v16 = false;
        if v25 == nil or l_LocalPlayer_0.Character == nil or l_LocalPlayer_0.Character ~= nil and l_LocalPlayer_0.Character:FindFirstChild("CombatIsEquiped", true) == nil then
            return;
        elseif l_LocalPlayer_0.Character:FindFirstChild("CombatIsEquiped", true) ~= nil and l_LocalPlayer_0.Character:FindFirstChild("CombatIsEquiped", true).Parent == nil then
            return;
        else
            local v27 = false;
            if l_LocalPlayer_0.Character:FindFirstChild("CombatIsEquiped", true) ~= nil then
                v27 = l_LocalPlayer_0.Character:FindFirstChild("CombatIsEquiped", true).Parent:FindFirstChild("Id");
            end;
            if v27 == false then
                v27 = nil;
            end;
            if v27 == nil then
                return;
            else
                v27 = v27.Value;
                if v27 == nil then
                    return;
                elseif l_get_item_health_0(v27, game.Players.LocalPlayer.Name) ~= true then
                    return;
                else
                    local v28 = _G.generateid();
                    v0.currentid = v28;
                    if v1:Check() == true or _G.previouslydidcomboasd123 ~= nil and _G.can_perf_air_tang == true and l_tick_0() - _G.previouslydidcomboasd123 <= 1 then
                        if v1:Check() ~= true then
                            v16 = true;
                        end;
                        local l_Character_0 = game.Players.LocalPlayer.Character;
                        if l_Character_0 ~= nil then
                            local l_HumanoidRootPart_0 = l_Character_0:FindFirstChild("HumanoidRootPart");
                            local l_Humanoid_0 = l_Character_0:FindFirstChild("Humanoid");
                            if l_HumanoidRootPart_0 ~= nil and l_Humanoid_0 ~= nil and _G:Stamina(56) == true then
                                _G.Skills_Performance(script.Name, l_tick_0(), 5);
                                _G.Skills_Performance(script.Name, l_tick_0(), 1);
                                v26 = true;
                                if v16 == true then
                                    _G.can_perf_air_tang = false;
                                end;
                                if v16 == false then
                                    v1.Disabled = true;
                                end;
                                v21 = 0;
                                v19 = true;
                                local l_BodyVelocity_0 = Instance.new("BodyVelocity");
                                l_BodyVelocity_0.MaxForce = Vector3.new(10000, 10000, 10000, 0);
                                l_BodyVelocity_0.Velocity = Vector3.new();
                                l_BodyVelocity_0.Name = "thunderclap_and_flash_bv";
                                l_BodyVelocity_0.Parent = l_HumanoidRootPart_0;
                                local l_BodyGyro_0 = Instance.new("BodyGyro");
                                l_BodyGyro_0.P = 20000;
                                l_BodyGyro_0.MaxTorque = Vector3.new(0, 1.0000000200408773E21, 0, 0);
                                l_BodyGyro_0.Name = "thunderclapandflashbg";
                                l_BodyGyro_0.Parent = l_HumanoidRootPart_0;
                                l_resume_0(l_create_0(function() --[[ Line: 85 ]]
                                    -- upvalues: l_BodyGyro_0 (copy), l_HumanoidRootPart_0 (copy), l_RunService_1 (ref)
                                    while l_BodyGyro_0 ~= nil and l_BodyGyro_0.Parent ~= nil and l_BodyGyro_0:FindFirstChild("Cancel") == nil do
                                        l_BodyGyro_0.CFrame = CFrame.new(l_HumanoidRootPart_0.Position, _G.getmousepos());
                                        l_RunService_1.RenderStepped:wait();
                                    end;
                                end));
                                v8 = l_tick_0();
                                local v34 = l_Humanoid_0:LoadAnimation(game.ReplicatedStorage.Animations.Moves.Swamp.swamp_on_ground_Double);
                                v34:Play();
                                local v35 = {};
                                local v36 = false;
                                do
                                    local l_v35_0, l_v36_0 = v35, v36;
                                    task.delay(0.2, function() --[[ Line: 96 ]]
                                        -- upvalues: v0 (ref), v28 (copy), v7 (ref), v21 (ref), v20 (ref), l_Character_0 (copy), l_HumanoidRootPart_0 (copy), l_v35_0 (ref), l_v36_0 (ref), v19 (ref), v25 (copy)
                                        if v0.currentid ~= v28 then
                                            return;
                                        else
                                            for v39 = 1, 39 do
                                                if v28 == v0.currentid and v7 ~= nil and game.Players.LocalPlayer ~= nil and game.Players.LocalPlayer.Character ~= nil and v21 < v20 and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil and v7:FindFirstChild("Stamina") ~= nil and v7.Stamina.Value > 2 then
                                                    _G:RemoveStam(2);
                                                    task.spawn(function() --[[ Line: 101 ]]
                                                        -- upvalues: l_Character_0 (ref), l_HumanoidRootPart_0 (ref), v39 (copy), l_v35_0 (ref)
                                                        local v40 = game.ReplicatedStorage.Remotes.To_Server.Handle_Initiate_S_:InvokeServer("Swamp_domain_Damage", l_Character_0, l_HumanoidRootPart_0.CFrame, v39, l_v35_0);
                                                        if v40 ~= nil and typeof(v40) == "table" then
                                                            l_v35_0 = v40;
                                                        end;
                                                    end);
                                                    wait(0.25);
                                                else
                                                    l_v36_0 = true;
                                                    if v19 == true then
                                                        v0.Up(v25);
                                                        return;
                                                    else
                                                        break;
                                                    end;
                                                end;
                                            end;
                                            return;
                                        end;
                                    end);
                                    v22 = _G.generateid();
                                    task.delay(0.3, function() --[[ Line: 119 ]]
                                        -- upvalues: v0 (ref), v28 (copy), l_HumanoidRootPart_0 (copy), l_Character_0 (copy)
                                        if v0.currentid == v28 then
                                            _G:Initiate_C("swamp_domain_mainasd", {
                                                CF = l_HumanoidRootPart_0.CFrame, 
                                                Character = l_Character_0, 
                                                Duration = 8.7
                                            });
                                        end;
                                    end);
                                    task.spawn(function() --[[ Line: 124 ]]
                                        -- upvalues: v0 (ref), v28 (copy), v34 (copy)
                                        task.wait(0.5);
                                        if v0.currentid == v28 then
                                            v34:AdjustSpeed(0);
                                        end;
                                    end);
                                end;
                            end;
                        end;
                    end;
                    return v26;
                end;
            end;
        end;
    end;
end;
v0.Up = function(v41) --[[ Line: 143 ]]
    -- upvalues: v19 (ref), v22 (ref), l_tick_0 (copy), v8 (ref), v0 (copy), v11 (ref), v16 (ref), v1 (copy)
    if v41 == nil then
        return;
    elseif v19 == false then
        return true;
    else
        v19 = false;
        local v42 = _G.generateid();
        v22 = v42;
        repeat
            task.wait();
        until l_tick_0() - v8 >= 2;
        if v42 ~= v22 then
            v0.Cancel(v41);
            return true;
        else
            v0.currentid = _G.generateid();
            v11 = _G.generateid();
            local l_Character_1 = game.Players.LocalPlayer.Character;
            if l_Character_1 ~= nil then
                _G:Initiate_C("swamp_domain_mainasd", {
                    Character = l_Character_1
                }, true);
                local l_HumanoidRootPart_1 = l_Character_1:FindFirstChild("HumanoidRootPart");
                local l_Humanoid_1 = l_Character_1:FindFirstChild("Humanoid");
                if l_HumanoidRootPart_1 ~= nil and l_Humanoid_1 ~= nil then
                    local l_thunderclapandflashbg_0 = l_HumanoidRootPart_1:FindFirstChild("thunderclapandflashbg");
                    if l_thunderclapandflashbg_0 ~= nil then
                        local l_StringValue_0 = Instance.new("StringValue");
                        l_StringValue_0.Name = "Cancel";
                        l_StringValue_0.Parent = l_thunderclapandflashbg_0;
                        game.Debris:AddItem(l_thunderclapandflashbg_0, 0.25);
                    end;
                    local l_thunderclap_and_flash_bv_0 = l_HumanoidRootPart_1:FindFirstChild("thunderclap_and_flash_bv");
                    if l_thunderclap_and_flash_bv_0 ~= nil then
                        game.Debris:AddItem(l_thunderclap_and_flash_bv_0, 0.25);
                    end;
                    for _, v50 in pairs(l_Humanoid_1:GetPlayingAnimationTracks()) do
                        if v50.Name == "swamp_on_ground_Double" then
                            v50:AdjustSpeed(1);
                        end;
                    end;
                end;
            end;
            if v41 ~= nil and v41:FindFirstChild("LastUsed") ~= nil then
                v41.LastUsed.Value = l_tick_0();
            end;
            task.wait(0.3);
            if v16 == false then
                v1.Disabled = false;
            end;
            _G.can_perf_air_tang = true;
            return true;
        end;
    end;
end;
v0.Cancel = function(v51) --[[ Line: 198 ]]
    -- upvalues: v19 (ref), v0 (copy), l_tick_0 (copy), v16 (ref), v1 (copy)
    if v51 == nil then
        return;
    else
        v19 = false;
        v0.currentid = _G.generateid();
        local l_Character_2 = game.Players.LocalPlayer.Character;
        if l_Character_2 ~= nil then
            _G:Initiate_C("swamp_domain_mainasd", {
                Character = l_Character_2
            }, true);
            local l_HumanoidRootPart_2 = l_Character_2:FindFirstChild("HumanoidRootPart");
            local l_Humanoid_2 = l_Character_2:FindFirstChild("Humanoid");
            if l_HumanoidRootPart_2 ~= nil and l_Humanoid_2 ~= nil then
                for _, v56 in pairs(l_HumanoidRootPart_2:GetChildren()) do
                    if v56.Name == "thunderclap_and_flash_bv" or v56.Name == "thunderclapandflashbg" then
                        v56:Destroy();
                    end;
                end;
                for _, v58 in pairs(l_Humanoid_2:GetPlayingAnimationTracks()) do
                    if v58.Name == "swamp_on_ground_Double" then
                        v58:Stop();
                    end;
                end;
            end;
        end;
        if v51 ~= nil and v51:FindFirstChild("LastUsed") ~= nil then
            v51.LastUsed.Value = l_tick_0();
        end;
        task.wait(0.3);
        if v16 == false then
            v1.Disabled = false;
        end;
        _G.can_perf_air_tang = true;
        return true;
    end;
end;
return v0;