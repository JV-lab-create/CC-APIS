-- Download File
function download(link, file)
	if http.checkURL(link) ~= true then
		return false 
	end
	local url = http.get(link)
	local result = url.readAll()
	if result ~= nil then
		newFile = fs.open(file , "w")
		newFile.write(result)
		newFile.close()
	else
		osapi.log("osapi-func","dl:retrieve=nil",3)
		rc = rc + 1
		os.sleep(3)
	end
	end
	if rc == 3 and realurl == true then osapi.log("osapi-func","E:dl:failed",1) return false
end

print("MineExplorer Installer")
print("This will install to /program/minex/")
print("Do you want to continue [Y/N]")
local continue = read()
if continue ~= "y" then
    return
end

if fs.exists("/programs/minex/") then
    print("Installer has detected existsing installation It will not overwrite files")
else
    shell.run("mkdir /programs/minex/")
end
if fs.exists("/programs/minex/events.lua") then
    shell.run("delete /programs/minex/events.lua")
end
if fs.exists("/programs/minex/files.lua") then
    shell.run("delete /programs/minex/files.lua")
end
if fs.exists("/programs/minex/input.lua") then
    shell.run("delete /programs/minex/input.lua")
end
if fs.exists("/programs/minex/main.lua") then
    shell.run("delete /programs/minex/main.lua")
end
if fs.exists("/programs/minex/navigation.lua") then
    shell.run("delete /programs/minex/navigation.lua")
end
if fs.exists("/programs/minex/popup.lua") then
    shell.run("delete /programs/minex/popup.lua")
end
if fs.exists("/programs/minex/renderer.lua") then
    shell.run("delete /programs/minex/renderer.lua")
end

print("Downloading Minex from Internet")
download("https://raw.githubusercontent.com/ReimarPB/MineExplorer/refs/heads/master/src/events.lua", "/temp/apt/events.tmp")
download("https://raw.githubusercontent.com/ReimarPB/MineExplorer/refs/heads/master/src/files.lua", "/temp/apt/files.tmp")
download("https://raw.githubusercontent.com/ReimarPB/MineExplorer/refs/heads/master/src/input.lua", "/temp/apt/input.tmp")
download("https://raw.githubusercontent.com/ReimarPB/MineExplorer/refs/heads/master/src/main.lua", "/temp/apt/main.tmp")
download("https://raw.githubusercontent.com/ReimarPB/MineExplorer/refs/heads/master/src/navigation.lua", "/temp/apt/navigation.tmp")
download("https://raw.githubusercontent.com/ReimarPB/MineExplorer/refs/heads/master/src/popup.lua", "/temp/apt/popup.tmp")
download("https://raw.githubusercontent.com/ReimarPB/MineExplorer/refs/heads/master/src/renderer.lua", "/temp/apt/renderer.tmp")
print("Minex was downloaded, copying files")

if fs.exists("/temp/apt/events.tmp") then
    shell.run("move /temp/apt/events.tmp /programs/minex/events.lua")
else
    printError("events was not downloaded pre retry installation!")
end

if fs.exists("/temp/apt/files.tmp") then
    shell.run("move /temp/apt/files.tmp /programs/minex/files.lua")
else
    printError("files was not downloaded pre retry installation!")
end

if fs.exists("/temp/apt/input.tmp") then
    shell.run("move /temp/apt/input.tmp /programs/minex/input.lua")
else
    printError("input was not downloaded pre retry installation!")
end

if fs.exists("/temp/apt/main.tmp") then 
    shell.run("move /temp/apt/main.tmp /programs/minex/main.lua")
else
    printError("main was not downloaded pre retry installation!")
end

if fs.exists("/temp/apt/navigation.tmp") then
    shell.run("move /temp/apt/navigation.tmp /programs/minex/navigation.lua")
else
    printError("navigation was not downloaded pre retry installation!")
end

if fs.exists("/temp/apt/popup.tmp") then
    shell.run("move /temp/apt/popup.tmp /programs/minex/popup.lua")
else
    printError("popup was not downloaded pre retry installation!")
end

if fs.exists("/temp/apt/renderer.tmp") then
    shell.run("move /temp/apt/renderer.tmp /programs/minex/renderer.lua")
else
    printError("renderer was not downloaded pre retry installation!")
end

shell.setAlias("minex" , "/programs/minex/main.lua")

print("Installed! Removeing Temp Files")

if fs.exists("/temp/apt/events.tmp") then
    shell.run("delete /temp/apt/events.tmp")
end
if fs.exists("/temp/apt/files.tmp") then
    shell.run("delete /temp/apt/files.tmp")
end
if fs.exists("/temp/apt/input.tmp") then
    shell.run("delete /temp/apt/input.tmp")
end
if fs.exists("/temp/apt/main.tmp") then
    shell.run("delete /temp/apt/main.tmp")
end
if fs.exists("/temp/apt/navigation.tmp") then
    shell.run("delete /temp/apt/navigation.tmp")
end
if fs.exists("/temp/apt/popup.tmp") then
    shell.run("delete /temp/apt/popup.tmp")
end
if fs.exists("/temp/apt/renderer.tmp") then
    shell.run("delete /temp/apt/renderer.tmp")
end
print("Finished! To run it type minex")