CreateThread( function ()
    for k, v in pairs(cfg.textures) do
        Wait(1000)
        local txd = CreateRuntimeTxd('duiTxd_'..k)
        local duiObj = CreateDui(v['new']['link'], v['new']['width'], v['new']['height'])
        _G.duiObj = duiObj
        local dui = GetDuiHandle(duiObj)
        print(dui)
        CreateRuntimeTextureFromDuiHandle(txd, 'duiTex_'..k, dui)
        AddReplaceTexture(v['old'].dictName, v['old'].txtName, 'duiTxd_'..k, 'duiTex_'..k)
    end
end)