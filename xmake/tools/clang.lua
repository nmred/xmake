--!The Make-like Build Utility based on Lua
-- 
-- XMake is free software; you can redistribute it and/or modify
-- it under the terms of the GNU Lesser General Public License as published by
-- the Free Software Foundation; either version 2.1 of the License, or
-- (at your option) any later version.
-- 
-- XMake is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Lesser General Public License for more details.
-- 
-- You should have received a copy of the GNU Lesser General Public License
-- along with XMake; 
-- If not, see <a href="http://www.gnu.org/licenses/"> http://www.gnu.org/licenses/</a>
-- 
-- Copyright (C) 2015 - 2016, ruki All rights reserved.
--
-- @author      ruki
-- @file        clang.lua
--

-- inherit gcc
inherit("gcc")

-- init it
function init(shellname, kind)
    
    -- init super
    _super.init(shellname or "clang", kind)

    -- init shflags
    _super._g.shflags = { "-dynamiclib", "-fPIC" }

    -- suppress warning 
    _super._g.cxflags = {"-Qunused-arguments"}
    _super._g.mxflags = {"-Qunused-arguments"}
    _super._g.asflags = {"-Qunused-arguments"}

    -- init flags map
    _super._g.mapflags["-s"] = "-Wl,-S"
    _super._g.mapflags["-S"] = "-Wl,-S"
 
end

-- make the strip flag
function strip(level)

    -- the maps
    local maps = 
    {   
        debug       = "-Wl,-S"
    ,   all         = "-Wl,-S"
    }

    -- make it
    return maps[level] or ""
end
