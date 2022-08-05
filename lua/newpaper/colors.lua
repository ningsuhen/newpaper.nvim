local util = require("newpaper.util")

local M = {}

function M.setup(config)

    -- stylua: ignore start

    local newpaper = {
        black                = "#2B2B2B", -- color00
        maroon               = "#AF0000", -- color01
        darkgreen            = "#008700", -- color02
        olive                = "#5F8700", -- color03
        navy                 = "#27408B", -- color04
        purple               = "#8700AF", -- color05
        teal                 = "#005F87", -- color06
        silver               = "#E4E4E4", -- color07
        grey                 = "#585858", -- color08
        red                  = "#E45649", -- color09
        green                = "#50A14F", -- color10
        yellow               = "#FFFF00", -- color11
        blue                 = "#0087AF", -- color12
        magenta              = "#D7005F", -- color13
        aqua                 = "#AFD7FF", -- color14
        white                = "#FFFFFF", -- color15
        none                 = "NONE",

        -- Other colors
        lightorange          = "#E4C07A",
        orange               = "#DB6F19",
        darkorange           = "#AF5F00",
        darkyellow           = "#C18301",
        pink                 = "#FFEEFF",
        darkgrey             = "#444444",
        lightgrey            = "#878787",
        lightlightgrey       = "#C0C0C0",
        lightsilver          = "#EEEEEE",
        blueviolet           = "#AF87D7",
        lightviolet          = "#E5D9F2",
        lightblue            = "#0072C1",
        ocean                = "#2E8B57",
        nephritis            = "#00AB66",
        darkpurple           = "#5823C7",
        redorange            = "#D23C0A",
        bluegreen            = "#147B8B",
        darkengreen          = "#007200",
        aqualight            = "#DFE4EB",

        codeblock            = "#DEDEDE",

        regexp_blue          = "#3A72ED",
        regexp_green         = "#00AA00",
        regexp_orange        = "#DD7700",
        regexp_magenta       = "#CC00CC",
        regexp_brown         = "#884400",

        -- Git and diff
        git_fg               = "#413932",
        git_bg               = "#EBEAE2",
        git_added            = "#28A745",
        git_modified         = "#DBAB09",
        git_removed          = "#D73A49",
        diffadd_bg           = "#AFFFAF",
        diffdelete_bg        = "#FFD7FF",
        difftext_bg          = "#FFFFD7",
        diffchange_bg        = "#FFD787",

        -- Spell
        spellbad             = "#FFF4FF",
        spellcap             = "#E7E7FF",
        spellrare            = "#FFFFDF",
        spelllocal           = "#E3FFD5",

        -- Error message
        error_fg             = "#D75F66",
        warn_fg              = "#D37300",
        info_fg              = "#005FAF",
        hint_fg              = "#0EA674",
        lsp_error_bg         = "#FDF0F0",
        warn_bg              = "#FDF5EC",
        info_bg              = "#EBF0FD",
        hint_bg              = "#E7F8F2",

        -- Todo
        todo_error           = "#DF0000",
        todo_warn            = "#D75F00",
        todo_info            = "#3A72ED",
        todo_hint            = "#199319",
        todo_default         = "#894DEE",

        -- TeX
        tex_maroon           = "#A2251A",
        tex_olive            = "#89802B",
        tex_navy             = "#1E40C2",
        tex_red              = "#D84342",
        tex_blue             = "#0089B3",
        tex_teal             = "#005579",
        tex_magenta          = "#E00050",
        tex_aqua             = "#14A9E2",
        tex_orange           = "#D37300",
        tex_redorange        = "#F3752D",
        tex_darkorange       = "#BA6400",

        tex_lightpurple      = "#684D99",
        tex_lightviolet      = "#B777B7",
        tex_pink             = "#D75F66",
        tex_lightgreen       = "#20A93E",

        tex_math             = "#008000",
        tex_math_delim       = "#349279",
        tex_part_title       = "#5F8A00",
        tex_ch_brown         = "#8C1919",
        tex_ch_orange        = "#E5740B",
        tex_ch_green         = "#19A665",
        tex_ch_red           = "#E04A4A",
        tex_ch_blue          = "#394892",
        tex_keyword          = "#7F2DC2",
        tex_verb             = "#4D4D4D",
        tex_string           = "#007FD7",
        tex_tikz_purple      = "#635F8C",
        tex_tikz_green       = "#568355",
        tex_tikz_orange      = "#AB915E",
        tex_tikz_navy        = "#4654C0",
        tex_tikz_verb        = "#535362",
        tex_quotes           = "#003399",
        tex_SI_purple        = "#523891",
        tex_SI_orange        = "#D55C1F",
        tex_SI_red           = "#D83851",
        tex_SI_navy          = "#0B5394",
        tex_SI_green         = "#589927",
        tex_SI_magenta       = "#BC5AA2",
        tex_SI_yellow        = "#C88900",

        tex_group_error      = "#EBF2FF",
        tex_math_error       = "#CCE5CC",
        tex_math_delim_error = "#FBE5CC",
        tex_parbox_opt_error = "#F0D4D1",
        tex_only_math_error  = "#EAE8D5",

        -- Ruby
        ruby_maroon          = "#990000",
        ruby_navy            = "#09529B",
        ruby_purple          = "#6838CC",
        ruby_magenta         = "#A626A4",

        -- Lua
        lua_navy             = "#030380",
        lua_blue             = "#0D98BA",

        -- Jinja
        jinja_red            = "#b80000",

        -- Python
        python_blue          = "#336D9E",

        --Rust
        rust_green           = "#0B7261",

        -- HTML
        tag_navy             = "#0044AA",
    }
    if config.style == "light" then
        -- Default fg and bg
        newpaper.fg = newpaper.black
        newpaper.bg = newpaper.white

        -- Search
        newpaper.search_fg = newpaper.fg
    elseif config.style == "dark" then
        newpaper.black                = "#2B2B2B" -- color00
        newpaper.maroon               = "#CC5555" -- color01
        newpaper.darkgreen            = "#5FAF5F" -- color02
        newpaper.olive                = "#9D8D33" -- color03
        newpaper.navy                 = "#8195E7" -- color04
        newpaper.purple               = "#A274D1" -- color05
        newpaper.teal                 = "#86A3A3" -- color06
        newpaper.silver               = "#3A3A3A" -- color07
        newpaper.grey                 = "#808080" -- color08
        newpaper.red                  = "#E06C75" -- color09
        newpaper.green                = "#00875F" -- color10
        newpaper.yellow               = "#D8E24F" -- color11
        newpaper.blue                 = "#5FAFD7" -- color12
        newpaper.magenta              = "#D75FAF" -- color13
        newpaper.aqua                 = "#536074" -- color14
        newpaper.white                = "#C6C8CD" -- color15

        -- Other colors
        newpaper.lightorange          = "#443924"
        newpaper.orange               = "#F19321"
        newpaper.darkorange           = "#AF5F00"
        newpaper.darkyellow           = "#CEAC6E"
        newpaper.pink                 = "#2E2323"
        newpaper.darkgrey             = "#BCBCBC"
        newpaper.lightgrey            = "#787878"
        newpaper.lightlightgrey       = "#4E4E4E"
        newpaper.lightsilver          = "#303030"
        newpaper.blueviolet           = "#32174D"
        newpaper.lightviolet          = "#332442"
        newpaper.lightblue            = "#7DB1D5"
        newpaper.ocean                = "#77B499"
        newpaper.nephritis            = "#36C692"
        newpaper.darkpurple           = "#C966D5"
        newpaper.redorange            = "#DB7067"
        newpaper.bluegreen            = "#56B6C2"
        newpaper.darkengreen          = "#48B46C"
        newpaper.aqualight            = "#2E3032"

        newpaper.codeblock            = "#343434"

        newpaper.regexp_blue          = "#618EF0"
        newpaper.regexp_green         = "#46C146"
        newpaper.regexp_orange        = "#E39232"
        newpaper.regexp_magenta       = "#DA46DA"
        newpaper.regexp_brown         = "#A5767D"

        -- Git and diff
        newpaper.git_fg               = "#EBEAE2"
        newpaper.git_bg               = "#303030"
        newpaper.git_added            = "#28A745"
        newpaper.git_modified         = "#DBAB09"
        newpaper.git_removed          = "#D73A49"
        newpaper.diffadd_bg           = "#005F00"
        newpaper.diffdelete_bg        = "#5F0000"
        newpaper.difftext_bg          = "#008787"
        newpaper.diffchange_bg        = "#005F5F"

        -- Spell
        newpaper.spellbad             = "#330000"
        newpaper.spellcap             = "#000042"
        newpaper.spellrare            = "#332C00"
        newpaper.spelllocal           = "#003B00"

        -- Error message
        newpaper.error_fg             = "#DB4B4B"
        newpaper.warn_fg              = "#E0AF68"
        newpaper.info_fg              = "#0DB9D7"
        newpaper.hint_fg              = "#10B981"
        newpaper.lsp_error_bg         = "#362C3D"
        newpaper.warn_bg              = "#373640"
        newpaper.info_bg              = "#2C2C41"
        newpaper.hint_bg              = "#2E3130"

        -- Todo
        newpaper.todo_error           = "#D75F66"
        newpaper.todo_warn            = "#DF7E32"
        newpaper.todo_info            = "#5082EF"
        newpaper.todo_hint            = "#4CAB4C"
        newpaper.todo_default         = "#A070F1"

        -- TeX
        newpaper.tex_maroon           = "#C9655C"
        newpaper.tex_olive            = "#BCB677"
        newpaper.tex_navy             = "#738AE5"
        newpaper.tex_red              = "#EF5D5B"
        newpaper.tex_blue             = "#6DA6CF"
        newpaper.tex_teal             = "#88B3B2"
        newpaper.tex_magenta          = "#E5559D"
        newpaper.tex_aqua             = "#14BCCF"
        newpaper.tex_orange           = "#DA854A"
        newpaper.tex_redorange        = "#F09479"
        newpaper.tex_darkorange       = "#D28F3F"

        newpaper.tex_lightpurple      = "#A494C1"
        newpaper.tex_lightviolet      = "#D7AFC1"
        newpaper.tex_pink             = "#EF6A72"
        newpaper.tex_lightgreen       = "#00CA93"

        newpaper.tex_math             = "#5FAF5F"
        newpaper.tex_math_delim       = "#ABCE8C"
        newpaper.tex_part_title       = "#9FB866"
        newpaper.tex_ch_brown         = "#AA7477"
        newpaper.tex_ch_orange        = "#E5AC41"
        newpaper.tex_ch_green         = "#8CC63E"
        newpaper.tex_ch_red           = "#F76B68"
        newpaper.tex_ch_blue          = "#9AACCE"
        newpaper.tex_keyword          = "#9D79C1"
        newpaper.tex_verb             = "#BCBCBC"
        newpaper.tex_string           = "#73CEF4"
        newpaper.tex_tikz_purple      = "#AAA3CD"
        newpaper.tex_tikz_green       = "#8BC18B"
        newpaper.tex_tikz_orange      = "#E49B5D"
        newpaper.tex_tikz_navy        = "#9AAAEC"
        newpaper.tex_tikz_verb        = "#ACACAC"
        newpaper.tex_quotes           = "#6684C1"
        newpaper.tex_SI_purple        = "#9787BD"
        newpaper.tex_SI_orange        = "#E0895D"
        newpaper.tex_SI_red           = "#DF5F73"
        newpaper.tex_SI_navy          = "#709DCC"
        newpaper.tex_SI_green         = "#98C379"
        newpaper.tex_SI_magenta       = "#D69CC7"
        newpaper.tex_SI_yellow        = "#E3C78A"

        newpaper.tex_group_error      = "#39404C"
        newpaper.tex_math_error       = "#003300"
        newpaper.tex_math_delim_error = "#341C00"
        newpaper.tex_parbox_opt_error = "#462600"
        newpaper.tex_only_math_error  = "#3D3912"

        -- Ruby
        newpaper.ruby_maroon          = "#A44C49"
        newpaper.ruby_navy            = "#6A82D9"
        newpaper.ruby_purple          = "#C596CA"
        newpaper.ruby_magenta         = "#BE62BD"

        -- Lua
        newpaper.lua_navy             = "#9191C7"
        newpaper.lua_blue             = "#85BCDD"

        -- Jinja
        newpaper.jinja_red            = "#D05858"

        -- Python
        newpaper.python_blue          = "#3E76A3"

        -- Rust
        newpaper.rust_green           = "#6CAAA0"

        -- HTML
        newpaper.tag_navy             = "#668ECC"

        -- Default fg and bg
        newpaper.fg                   = newpaper.white
        newpaper.bg                   = newpaper.black

        -- Search
        newpaper.search_fg            = newpaper.bg
    end

    -- Optional colors
    newpaper.keyword             = newpaper.purple
    newpaper.class               = newpaper.ruby_navy
    newpaper.string              = newpaper.lightblue
    newpaper.accent              = newpaper.blue
    newpaper.comment             = newpaper.lightgrey
    newpaper.link                = newpaper.tag_navy
    newpaper.tag                 = newpaper.tag_navy
    newpaper.boolean             = newpaper.nephritis
    newpaper.text                = newpaper.darkgrey
    newpaper.variable            = newpaper.fg

    -- Editor
    newpaper.normal_fg           = newpaper.fg
    newpaper.normal_bg           = newpaper.bg
    newpaper.folded_fg           = newpaper.blue
    newpaper.folded_bg           = newpaper.aqua
    newpaper.wildmenu_fg         = newpaper.darkgrey
    newpaper.wildmenu_bg         = newpaper.yellow
    newpaper.pmenu_fg            = newpaper.darkgrey
    newpaper.pmenu_bg            = newpaper.lightlightgrey
    newpaper.selection           = newpaper.blue
    newpaper.cursor              = newpaper.fg
    newpaper.cursor_nr_fg        = newpaper.darkorange
    newpaper.cursor_nr_bg        = newpaper.lightsilver
    newpaper.linenumber_fg       = newpaper.comment
    newpaper.linenumber_bg       = newpaper.lightsilver
    newpaper.msgarea_fg          = newpaper.fg
    newpaper.msgarea_bg          = newpaper.bg
    newpaper.colorcolumn         = newpaper.silver
    newpaper.border              = newpaper.purple
    newpaper.win_border          = newpaper.grey
    newpaper.highlight           = newpaper.silver
    newpaper.disabled            = newpaper.lightlightgrey
    newpaper.contrast            = newpaper.lightlightgrey
    newpaper.active              = newpaper.silver
    newpaper.title               = newpaper.fg
    newpaper.eob                 = newpaper.disabled

    -- Search
    newpaper.search_bg           = newpaper.yellow

    -- Error message
    newpaper.errormsg_fg         = newpaper.red
    newpaper.errormsg_bg         = newpaper.pink

    -- Tabline
    newpaper.tabline_bg          = newpaper.lightlightgrey
    newpaper.tabline_active_fg   = newpaper.fg
    newpaper.tabline_active_bg   = newpaper.bg
    newpaper.tabline_inactive_fg = newpaper.lightgrey
    newpaper.tabline_inactive_bg = newpaper.silver

    -- Sidebar and float windows
    newpaper.sb_fg               = newpaper.fg
    newpaper.sb_bg               = newpaper.bg
    newpaper.sb_contrast_fg      = newpaper.fg
    newpaper.sb_contrast_bg      = newpaper.silver
    newpaper.float_fg            = newpaper.fg
    newpaper.float_bg            = newpaper.bg
    newpaper.git_sign_bg         = newpaper.git_bg
    newpaper.telescope_fg        = newpaper.fg
    newpaper.telescope_bg        = newpaper.bg
    newpaper.float_contrast      = newpaper.silver
    newpaper.telescope_contrast  = newpaper.silver

    -- Ternminal
    newpaper.term_fg             = newpaper.fg
    newpaper.term_bg             = newpaper.bg
    newpaper.term_contrast_fg    = newpaper.fg
    newpaper.term_contrast_bg    = newpaper.silver
    local term_color = {
        contrast            = { fg = newpaper.term_contrast_fg, bg = newpaper.term_contrast_bg },
        inverse             = { fg = newpaper.normal_bg, bg = newpaper.normal_fg },
        inverse_transparent = { fg = newpaper.normal_bg, bg = newpaper.none },
    }
    if config.terminal ~= nil then
        newpaper.term_fg         = term_color[config.terminal].fg
        newpaper.term_bg         = term_color[config.terminal].bg
    end

    -- IndentBlankline
    newpaper.contextchar         = newpaper.blueviolet

    -- Sidebars ----------------------------------------------------------------
    newpaper.nvimtree_fg         = newpaper.sb_fg
    newpaper.nvimtree_bg         = newpaper.sb_bg
    newpaper.trouble_fg          = newpaper.sb_fg
    newpaper.trouble_bg          = newpaper.sb_bg
    -- NvimTree
    if table.contains(config.sidebars_contrast, "NvimTree") then
        newpaper.nvimtree_fg     = newpaper.sb_contrast_fg
        newpaper.nvimtree_bg     = newpaper.aqualight
    end
    -- Troule
    if table.contains(config.sidebars_contrast, "Trouble") then
        newpaper.trouble_fg      = newpaper.sb_contrast_fg
        newpaper.trouble_bg      = newpaper.sb_contrast_bg
    end
    ----------------------------------------------------------------------------

    -- Float
    if config.contrast_float then
        newpaper.float_bg        = newpaper.float_contrast
    end

    -- Telescope
    if config.contrast_telescope then
        newpaper.telescope_bg    = newpaper.telescope_contrast
    end

    -- Set transparent background
    if config.disable_background then
        newpaper.normal_bg       = newpaper.none
        newpaper.sb_bg           = newpaper.none
        newpaper.linenumber_bg   = newpaper.none
        newpaper.git_sign_bg     = newpaper.none
        newpaper.msgarea_bg      = newpaper.none
    end

    -- Remove window split borders
    if not config.borders then
        newpaper.win_border = newpaper.bg
    end

    -- Set End of Buffer lines (~)
    if config.hide_eob then
        newpaper.eob = newpaper.bg
    end

    if not config.lsp_virtual_text_bg then
        newpaper.lsp_error_bg = newpaper.none
        newpaper.warn_bg      = newpaper.none
        newpaper.info_bg      = newpaper.none
        newpaper.hint_bg      = newpaper.none
    end

    if config.error_highlight ~= "both" and config.error_highlight ~= "bg" then
        newpaper.spellbad             = newpaper.none
        newpaper.spellcap             = newpaper.none
        newpaper.spelllocal           = newpaper.none
        newpaper.spellrare            = newpaper.none
        newpaper.tex_group_error      = newpaper.none
        newpaper.tex_math_error       = newpaper.none
        newpaper.tex_math_delim_error = newpaper.none
        newpaper.tex_parbox_opt_error = newpaper.none
        newpaper.tex_only_math_error  = newpaper.none
    end

    -- stylua: ignore end

    util.colorOverrides(newpaper, config)

    return newpaper
end

return M
