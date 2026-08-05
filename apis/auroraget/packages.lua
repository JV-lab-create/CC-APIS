function getData()
local link = {
    ["store"] = {
        ["basalt"] = { type = "command", command = "wget run https://raw.githubusercontent.com/Pyroxenium/Basalt/refs/heads/master/docs/install.lua release latest.lua" },
        ["rednetspy"] = { type = "pastebin", id = "s5wXb5fD", filePath = "/program/rednetspy/rednetspy.lua" name = "Red Net Spy"},
        ["minex"] = "pastebin run mAzxu4t0",
        ["progressBarApi"] = { type = "file", fileURL = "https://raw.githubusercontent.com/Missooni/CC/refs/heads/main/progressBar/progressBar.lua", filePath = "/apis/progbarapi.lua" name = "progress.bar.api"},
        ["forms"] = { type = "file", fileURL = "https://raw.githubusercontent.com/Missooni/CC/refs/heads/main/textForms/forms.lua", filePath = "/apis/forms.lua" name = "HTML.forms.api"}, 
        ["authapi"] = { type = "command", command = "pastebin run Yi6gq4HR" },
        ["bootscreen.dev"] = "pastebin get NL5ULKf6 bootAnim.lua", 
        ["tts-engine.dev"] = { type = "command", command = "wget run https://raw.githubusercontent.com/TheAio/tts-engine/main/install.lua" },
        ["packtool"] = { type = "pastebin", id = "g9k6mbuT", filePath = "/program/packtool.lua" name = "packtool"},
        ["crashmessage.dev"] = { type = "command", command = "wget run pastebin get ZkxkftC5 crashMsg.lua release latest.lua" },
        ["malware"] = { type = "command", command = "pastebin run VzvPyNdu" },
        ["LibAppend"] = { type = "pastebin", id = "Rac6Jxjg", filePath = "/apis/LibAppend.lua" name = "LibAppend"},
        ["TeleClass"] = { type = "pastebin", id = "t2TvSiSU", filePath = "/apis/TeleClass.lua" name = "TeleClass"},
        ["TeleEvents"] = { type = "pastebin", id = "KA2dK07y", filePath = "/apis/TeleEvents.lua" name = "TeleEvents"},
        ["bpi"] = { type = "pastebin", id = "sSSyDAFm", filePath = "/apis/bpi.lua" name = "bpi"},
        ["DiscordHook"] = "wget https://raw.githubusercontent.com/Wendelstein7/DiscordHook-CC/master/DiscordHook.lua /apis/DiscordHook.lua",
        ["skynet"] = "wget https://raw.githubusercontent.com/osmarks/skynet/master/client.lua /apis/skynet",
        ["telepaint"] = "pastebin get V0gqrj2v",
        ["alongtimeago"] = { type = "command", fileURL = "https://raw.githubusercontent.com/cc-tweaked/treasure-disks/refs/heads/master/data/computercraft/lua/treasure/dan200/alongtimeago/alongtimeago.lua"},
        ["luaide"] = { type = "file", fileURL = "https://github.com/cc-tweaked/treasure-disks/raw/refs/heads/master/data/computercraft/lua/treasure/gravity_score/luaide/luaide.lua", filePath = "/program/luaide/luaide.lua" name = "Lua IDE"},
        ["battleship"] = { type = "file", fileURL = "https://raw.githubusercontent.com/cc-tweaked/treasure-disks/refs/heads/master/data/computercraft/lua/treasure/gopher_atl/battleship/battleship.lua", filePath = "/program/games/battleship.lua" name = "battleship"},
        ["npaintpro"] = { type = "file", fileURL = "https://github.com/cc-tweaked/treasure-disks/blob/master/data/computercraft/lua/treasure/nitrogenfingers/npaintpro/npaintpro.lua", filePath = "/program/games/npaintpro.lua" name = "npaintpro"},
        ["protector"] = { type = "file", fileURL = "https://raw.githubusercontent.com/cc-tweaked/treasure-disks/refs/heads/master/data/computercraft/lua/treasure/fredthead/protector/protector.lua", filePath = "/program/games/protector.lua" name = "protector"},
        ["ticktactoe"] = { type = "file", fileURL = "https://raw.githubusercontent.com/cc-tweaked/treasure-disks/refs/heads/master/data/computercraft/lua/treasure/theoriginalbit/tictactoe/tictactoe.lua", filePath = "/program/games/tictactoe.lua" name = "tictactoe"},
        ["maze3d"] = { type = "file", fileURL = "https://raw.githubusercontent.com/cc-tweaked/treasure-disks/refs/heads/master/data/computercraft/lua/treasure/theoriginalbit/tictactoe/maze3d.lua", filePath = "/program/games/maze3d.lua" name = "maze3d"},
    },
}
return link
end
