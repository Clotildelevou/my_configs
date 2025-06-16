function conky_main()
    local result = ""

    result = result .. require("modules.header").draw()
    result = result .. require("modules.cpu").draw()
    result = result .. require("modules.temps").draw()
    result = result .. require("modules.process").draw()
    result = result .. require("modules.mem").draw()
    result = result .. require("modules.gpu").draw()
    result = result .. require("modules.network").draw()

    return result
end
