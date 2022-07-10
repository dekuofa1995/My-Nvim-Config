local function reload()
  -- print(os.getenv("MYVIMRC"))
  dofile(os.getenv("MYVIMRC"))
end

return reload
