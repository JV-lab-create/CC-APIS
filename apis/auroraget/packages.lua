function getData()
local link = {
    ["store"] = {
        ["basalt"] = { type = "command", command = "wget run https://raw.githubusercontent.com/Pyroxenium/Basalt/refs/heads/master/docs/install.lua release latest.lua" },
        ["rednetspy"] = { type = "pastebin", id = "s5wXb5fD", filePath = "/program/rednetspy/rednetspy.lua" name = "Red Net Spy"},
        ["minex"] = "pastebin run mAzxu4t0",
        ["progressBarApi"] = { type = "file", fileURL = "https://raw.githubusercontent.com/Missooni/CC/refs/heads/main/progressBar/progressBar.lua", filePath = "/apis/progbarapi.lua" name = "progress.bar.api"},
        ["forms"] = { type = "file", fileURL = "https://raw.githubusercontent.com/Missooni/CC/refs/heads/main/textForms/forms.lua", filePath = "/apis/forms.lua" name = "HTML.forms.api"}, 
        ["authapi"] = "pastebin run Yi6gq4HR",
        ["bootscreen.dev"] = "pastebin get NL5ULKf6 bootAnim.lua",
        ["tts-engine.dev"] = "wget run https://raw.githubusercontent.com/TheAio/tts-engine/main/install.lua",
        ["packtool"] = "pastebin get g9k6mbuT packtool.lua",
        ["crashmessage.dev"] = { type = "command", command = "wget run pastebin get ZkxkftC5 crashMsg.lua release latest.lua" },
        ["malware"] = { type = "command", command = "pastebin run VzvPyNdu" },
        ["LibAppend"] = "pastebin get Rac6Jxjg /apis/LibAppend.lua",
        ["TeleClass"] = "pastebin get t2TvSiSU /apis/TeleClass.lua",
        ["TeleEvents"] = "pastebin get KA2dK07y /apis/TeleEvents.lua",
        ["bpi"] = "pastebin get sSSyDAFm /apis/bpi.lua",
        ["DiscordHook"] = "wget https://raw.githubusercontent.com/Wendelstein7/DiscordHook-CC/master/DiscordHook.lua /apis/DiscordHook.lua",
        ["skynet"] = "wget https://raw.githubusercontent.com/osmarks/skynet/master/client.lua /apis/skynet",
        ["telepaint"] = "pastebin get V0gqrj2v",
        ["alongtimeago"] = "wget https://raw.githubusercontent.com/cc-tweaked/treasure-disks/refs/heads/master/data/computercraft/lua/treasure/dan200/alongtimeago/alongtimeago.lua",
        ["luaide"] = "wget https://github.com/cc-tweaked/treasure-disks/raw/refs/heads/master/data/computercraft/lua/treasure/gravity_score/luaide/luaide.lua",
        ["battleship"] = "wget https://raw.githubusercontent.com/cc-tweaked/treasure-disks/refs/heads/master/data/computercraft/lua/treasure/gopher_atl/battleship/battleship.lua",
        ["npaintpro"] = "wget https://github.com/cc-tweaked/treasure-disks/blob/master/data/computercraft/lua/treasure/nitrogenfingers/npaintpro/npaintpro.lua",
        ["protector"] = "wget https://raw.githubusercontent.com/cc-tweaked/treasure-disks/refs/heads/master/data/computercraft/lua/treasure/fredthead/protector/protector.lua",
        ["ticktactoe"] = "wget https://raw.githubusercontent.com/cc-tweaked/treasure-disks/refs/heads/master/data/computercraft/lua/treasure/theoriginalbit/tictactoe/tictactoe.lua",
        ["maze3d"] = "wget https://raw.githubusercontent.com/cc-tweaked/treasure-disks/refs/heads/master/data/computercraft/lua/treasure/jtk/maze3d/maze3d.lua"
    },
}
return link
end
