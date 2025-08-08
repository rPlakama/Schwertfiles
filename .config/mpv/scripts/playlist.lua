local function on_playlist_change()
  mp.commandv("keypress", "F8")
end

mp.observe_property("playlist-pos", "number", on_playlist_change)
