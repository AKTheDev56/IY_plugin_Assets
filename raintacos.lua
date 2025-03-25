local player = game.Players.LocalPlayer
               local character = player.Character or player.CharacterAdded:Wait()
               local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

               local Bind9ewhbpethgn = Instance.new("BindableEvent") --the random gibberish is once again, to not interfere with other game events
               Bind9ewhbpethgn.Name = "Bind9ewhbpethgn"
               Bind9ewhbpethgn.Parent = workspace

               local Bind9oehrber09hg = Instance.new("BindableEvent")
               Bind9oehrber09hg.Name = "Bind9oehrber09hg"
               Bind9oehrber09hg.Parent = workspace

               local loopRunning = true

               local function startLoop()
                   while loopRunning do
                       local randomX = math.random(-10, 10)
                       local randomZ = math.random(-10, 10)
                       local spawnPosition = humanoidRootPart.Position + Vector3.new(randomX, 20, randomZ)

                       local part = Instance.new("Part")
                       part.Size = Vector3.new(0.4, 0.6, 1.2)
                       part.Position = spawnPosition
                       part.Anchored = false
                       part.Parent = workspace

                       local specialMesh = Instance.new("SpecialMesh")
                       specialMesh.Parent = part
                       specialMesh.MeshId = "http://www.roblox.com/asset/?id=14846869"
                       specialMesh.TextureId = "http://www.roblox.com/asset/?id=14846834"
                       specialMesh.Scale = Vector3.new(1, 1, 1)

                       task.wait(0.5)
                   end
               end

               Bind9ewhbpethgn.Event:Connect(function()
                   loopRunning = true
                   startLoop()
               end)

               Bind9oehrber09hg.Event:Connect(function()
                   loopRunning = false
               end)

               startLoop()
