
if not getgenv().SCRIPT_KEY then
	if not SCRIPT_KEY then
		r = "No script key provided, please pass a SCRIPT_KEY!"
		loadstring(game:HttpGet("https://jnkie.com/sdk/love.lua"))()
		return
	end

	local v = SCRIPT_KEY
	getgenv().SCRIPT_KEY = v
end

if getgenv().EXECUTING == "true" then
	warn("There is already an execution in progress. Please wait before executing another script.")
	return
end

getgenv().EXECUTING = "true"

spawn(function()
	task.wait(5)
	getgenv().EXECUTING = "false"
end)

if Faces.new(Enum.NormalId.Front, Enum.NormalId.Left, 1, 2).Front ~= true then
	LPH_CRASH()
end

if Faces.new(Enum.NormalId.Front, Enum.NormalId.Left, 1, 2).Back ~= false then
	LPH_CRASH()
end

if pcall(function()
	game:GetService("RunsServices")
end) then
	LPH_CRASH()
end

do
	local ok, result = pcall(function()
		return pcall()
	end)

	if ok or result and not tostring(result):match("missing argument") then
		LPH_CRASH()
	end
end

if typeof(game:GetService("RunService").Heartbeat:Wait()) ~= "number" or game:GetService("RunService").Heartbeat:Wait() <= 0 then
	LPH_CRASH()
end

if pcall(setmetatable, game, {}) or pcall(setfenv, 1, {}) then
	LPH_CRASH()
end

do
	local ok, result = pcall(function()
		return debug and debug.info and debug.info(2, "f")
	end)

	if not (ok and result) then
		LPH_CRASH()
	end
end

if debug.setmemorycategory("X") == debug.setmemorycategory("X") then
	LPH_CRASH()
end

if not utf8.graphemes then
	LPH_CRASH()
end

do
	local ok, result = pcall(function()
		return game:GetService("HttpService"):GetSecret("JUNKIE-DEVELOPMENT")
	end)

	if not result:match("Can't find secret with given key") then
		LPH_CRASH()
	end
end

if not SharedTable.new() then
	LPH_CRASH()
end

if #(function(arg)
	local v = Random.new(tick() * math.random() * math.random())
	local str = ""

	for i = 1, v:NextNumber(20, 30) do
		str ..= utf8.char(v:NextNumber(97, 8000))
	end

	return ("\0"):rep(25) .. str .. arg .. ("\0"):rep(25) .. str
end)("hi") < 150 then
	LPH_CRASH()
end

local flag = not setmetatable or not pcall or not debug or not rawget or not rawset or not pcall(rawset, {}, " ", " ") or not select or not select(2, pcall(rawget, debug, "info"))

if not flag then
	local v = print
	flag = not select(2, pcall(rawget, debug, "info"))(v, "s") == "[C]"
end

if not flag then
	local v = require
	flag = not select(2, pcall(rawget, debug, "info"))(v, "s") == "[C]"
end

if flag then
	LPH_CRASH()
end

local fn

fn = function(arg, arg2)
	r = arg2 and arg2 .. "\n\nError code: " .. arg or arg
	loadstring(game:HttpGet("https://jnkie.com/sdk/love.lua"))()
	task.wait(3)
end

local v
v = debug.info(1, "l")
local v2 = debug.info(1, "l")

if isfunctionhooked then
	local flag2 = false

	pcall(function()
		flag2 = isfunctionhooked(math.randomseed) or isfunctionhooked(game.HttpGet) or isfunctionhooked(os.time) or isfunctionhooked(loadstring) or isfunctionhooked(request)
	end)

	pcall(function()
		if hookfunction and type(hookfunction) == "function" then
			local function fn2()
			end

			hookfunction(fn2, function()
				print("hellow")
			end)

			if not isfunctionhooked(fn2) then
				while true do
				end
			end
		end
	end)

	if flag2 then
		LPH_CRASH()
	end
end

if isreadonly then
	if not isreadonly(string) and not identifyexecutor():match("^Velocity") then
		LPH_CRASH()
	end

	if not isreadonly(math) then
		LPH_CRASH()
	end

	if not isreadonly(table) then
		LPH_CRASH()
	end

	if not isreadonly(os) then
		LPH_CRASH()
	end
end

if getrenv then
	if math.randomseed ~= getrenv().math.randomseed then
		LPH_CRASH()
	end

	if math.random ~= getrenv().math.random then
		LPH_CRASH()
	end

	if tonumber ~= getrenv().tonumber then
		LPH_CRASH()
	end

	if os.time ~= getrenv().os.time then
		LPH_CRASH()
	end

	if tostring ~= getrenv().tostring then
		LPH_CRASH()
	end

	if os.clock ~= getrenv().os.clock then
		LPH_CRASH()
	end
end

if os.time() < 1790086573 then
	fn("J2_116")
	LPH_CRASH()
end

if debug.info(1, "l") ~= v2 or debug.info(1, "l") ~= v then
	LPH_CRASH()
end

local n, tbl, n2, heartbeat, flag2, tbl2, tbl3, fn2, fn3

do
	local v3 = debug.info(1, "l")

	local function fn4(arg)
		for i = 1, 197 do
			local ok, result = pcall(function()
				return coroutine.wrap(arg)
			end)

			if not ok then
				fn("J2_205")
				LPH_CRASH()
			end

			if type(result) == "function" then
				arg = result
			end
		end

		local ok, result = pcall(arg)
		if tostring(result or ""):find("C stack overflow") then
			return true
		end
		return false
	end

	if fn4(request) and not identifyexecutor():match("^Hydrogen") and not identifyexecutor():match("^Xeno") and not identifyexecutor():match("^Solara") then
		fn("J2_260", "Executor compatibility error (" .. tostring(identifyexecutor()) .. ")")
		LPH_CRASH()
	end

	if fn4(math.max) then
		fn("J2_173")
		LPH_CRASH()
	end

	if fn4(os.clock) then
		fn("J2_216")
		LPH_CRASH()
	end

	if fn4(os.time) then
		fn("J2_022")
		LPH_CRASH()
	end

	if fn4(math.floor) then
		fn("J2_093")
		LPH_CRASH()
	end

	if fn4(math.random) then
		fn("J2_065")
		LPH_CRASH()
	end

	if fn4(math.min) then
		fn("J2_003")
		LPH_CRASH()
	end

	if fn4(math.abs) then
		fn("J2_151")
		LPH_CRASH()
	end

	if fn4(task.spawn) then
		fn("J2_022")
		LPH_CRASH()
	end

	if pcall(function()
		return getfenv()["pr" .. nil .. "nt"]
	end) then
		fn("J2_113")
		LPH_CRASH()
	end

	local flag3 = false

	local tbl4 = {
		__tostring = function()
			flag3 = true
			return ""
		end,
		__eq = function()
			flag3 = true
			return false
		end,
		__index = function()
			flag3 = true

			return function()
				return ""
			end
		end,
		__concat = function()
			flag3 = true
			return ""
		end,
		__len = function()
			flag3 = true
			return 0
		end,
	}

	local tbl5 = {
		Url = setmetatable({}, tbl4),
		Method = "GET",
		Headers = { Accept = "*/*", ["User-Agent"] = "Roblox/WinInet" },
	}

	setmetatable(tbl5, setmetatable({}, { __index = function()
		flag3 = true
		return nil
	end }))

	tbl5.Headers[setmetatable({}, tbl4)] = "1"
	pcall(request, tbl5)

	if flag3 then
		fn("J2_260", "Executor compatibility error (" .. tostring(identifyexecutor()) .. ")")
		LPH_CRASH()
	end

	n = 0

	tbl = {
		_87491c24f33a = game:GetService("HapticService"),
		_4394c3024dfa = 63022,
		_aa3783cf86e2 = "gzJXo46",
		_1926cb045d5a = "420kNL4lkS2p",
		_5c6ea90de569 = "wlGH5jh",
		_566dc221588e = 580746044,
		_2d6f49bf1e43 = true,
		_64eea9724700 = 2488229196,
		_b5bc9bd4030c = 2110653709,
		_a7d55cc2bb31 = game:GetService("MemStorageService"),
		_f817725775d9 = 150499,
		["\u{DFE}ဟഁໍణ௪൧"] = game:GetService("TeleportService"),
		_7f9d77ea7a03 = 43772015,
		_84c392c696a1 = 44472,
		_c0e9c2949186 = "" .. math.random(800, 999),
		_ef29eb26b91c = "cta544a",
		_8c24bc177b9c = false,
		_ae4a6edf01dd = 135698,
	}

	tbl._fc490c4ae1fe = "_b10bc5968c6f" .. tostring(tbl)
	tbl._f2f010623bb9 = {}
	getfenv()[5267229] = 0
	n2 = 1717
	tbl["\u{DFE}ဟഁໍణ௪൧"]:SetTeleportSetting("၉దୂછ\u{D53}ു", "")
	tbl["\u{DFE}ဟഁໍణ௪൧"]:SetTeleportSetting("ळ೯໑ຂฌഌஉນ", getgenv().SCRIPT_KEY)

	if tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("ळ೯໑ຂฌഌஉນ") ~= getgenv().SCRIPT_KEY then
		LPH_CRASH()
	end

	heartbeat = game:GetService("RunService").Heartbeat
	flag2 = true
	tbl2 = {}
	tbl3 = {}

	fn2 = function(arg, arg2, arg3, arg4)
		if arg4 ~= nil and arg4 == tbl2 then
			return tbl3
		end
		local flag4 = type(arg3) ~= "number"

		if not flag4 then
			local v4 = tostring
			flag4 = tostring(arg3) ~= v4(146552)
		end

		if flag4 then
			LPH_CRASH()
		end

		if not rawequal(arg3, 146552) == true then
			LPH_CRASH()
		end

		if not ({ [arg3] = true })[146552] then
			LPH_CRASH()
		end

		if arg3 ~= 146552 then
			LPH_CRASH()
		end

		if arg3 - 146552 ~= 0 then
			LPH_CRASH()
		end

		if arg ~= nil and arg2 ~= nil then
			local tbl6 = { [arg2] = arg }
			if not rawequal(({ [arg] = arg2 })[arg2], arg2) or not rawequal(tbl6[arg], arg) then
				return false
			end
		end

		if not (arg == arg2 and not (arg ~= arg2)) then
			return false
		end

		if not (not arg ~= arg2 == true) or not (arg ~= arg2 == false) then
			return false
		end

		if arg == nil or arg2 == nil then
			if arg ~= arg2 then
				return false
			end
		end

		local tbl6 = { [arg] = true }
		if rawget(tbl6, arg2) ~= true then
			return false
		end
		rawset(tbl6, arg, nil)
		local flag5 = type(arg) == type(arg2) and (type(arg) == "number" or type(arg) == "string")

		if flag5 then
			flag5 = not (arg >= arg2 and arg2 >= arg and arg <= arg2 and arg2 <= arg)
		end

		if flag5 then
			return false
		end
		local flag6 = type(arg) == type(arg2) and (type(arg) == "number" or type(arg) == "string")

		if flag6 then
			flag6 = {}
			local flag7 = arg == arg2
			local flag8 = arg2 == arg
			local v4 = rawequal(arg, arg2)
			local v5 = rawequal(arg2, arg)
			local flag9 = not (arg ~= arg2)
			local flag10 = arg2 >= arg and arg2 <= arg
			local flag11 = arg2 == arg
			local flag12 = arg <= arg2
			local flag13 = arg2 >= arg
			local flag14 = not (arg ~= arg2)
			local flag15 = arg >= arg2 and arg <= arg2
			flag6[1] = flag7
			flag6[2] = flag8
			flag6[3] = v4
			flag6[4] = v5
			flag6[5] = flag9
			flag6[6] = flag10
			flag6[7] = flag11
			flag6[8] = flag12
			flag6[9] = flag13
			flag6[10] = flag14
			flag6[11] = flag15
		end

		if not flag6 then
			flag6 = {}
			local v4 = rawequal(arg, arg2)
			local v5 = rawequal(arg2, arg)
			flag6[1] = arg == arg2
			flag6[2] = arg2 == arg
			flag6[3] = v4
			flag6[4] = v5
			flag6[5] = not (arg ~= arg2)
			flag6[6] = true
			flag6[7] = arg2 == arg
			flag6[8] = true
			flag6[9] = true
			flag6[10] = not (arg ~= arg2)
			flag6[11] = true
		end

		local flag7 = false

		setmetatable(flag6, {
			__newindex = function()
				flag7 = true
			end,
			__metatable = {},
		})

		local n3 = 0

		while true do
			n3 += 1

			if flag6[n3] ~= true then
				return false
			elseif n3 == 11 then
				break
			end
		end

		flag6.JOZ3WfYzbikoisTg = true
		if not flag7 then
			return false
		end

		if type(arg) ~= typeof(arg2) or typeof(arg) ~= type(arg2) then
			return false
		end

		if #tostring(arg) ~= #tostring(arg2) then
			return false
		end

		if not rawequal(arg, arg2) or not rawequal(arg2, arg) then
			return false
		end

		if tostring(arg) < tostring(arg2) or tostring(arg) > tostring(arg2) or not rawequal(tostring(arg), tostring(arg2)) then
			return false
		end
		return true
	end

	fn3 = function(arg, arg2, arg3, arg4)
		if arg4 ~= nil and arg4 == tbl2 then
			return tbl3
		end
		local flag4 = type(arg3) ~= "number"

		if not flag4 then
			local v4 = tostring
			flag4 = tostring(arg3) ~= v4(587626)
		end

		if flag4 then
			LPH_CRASH()
		end

		if arg3 - 587626 ~= 0 then
			LPH_CRASH()
		end

		if not rawequal(arg3, 587626) then
			LPH_CRASH()
		end

		if not ({ [arg3] = true })[587626] then
			LPH_CRASH()
		end

		if arg3 ~= 587626 == true then
			LPH_CRASH()
		end

		if flag2 then
			tbl["\u{DFE}ဟഁໍణ௪൧"]:SetTeleportSetting("၉దୂછ\u{D53}ു", tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("၉దୂછ\u{D53}ു") .. "2SctgdAcqj7zBEbYQVecGaxyIjeVW9Ou00XwHl")
		end

		n2 += 28

		if type(arg) == type(arg2) and (type(arg) == "number" or type(arg) == "string") then
			if not (arg >= arg2) or not (arg2 >= arg) or not (arg <= arg2) or not (arg2 <= arg) then
				return false
			end
		end

		if type(arg) ~= typeof(arg2) or typeof(arg) ~= type(arg2) then
			return false
		end

		if #tostring(arg) ~= #tostring(arg2) then
			return false
		end

		if not rawequal(arg, arg2) or not rawequal(arg2, arg) then
			return false
		end
		local flag5 = tostring(arg) < tostring(arg2) or tostring(arg) > tostring(arg2)
		local flag6

		if flag5 then
			flag6 = flag5
		else
			local v4 = tostring
			flag6 = not rawequal(tostring(arg), v4(arg2))
		end

		if flag6 then
			return false
		end

		if arg == nil or arg2 == nil then
			if arg ~= arg2 then
				return false
			end
		end

		local tbl6 = { [arg] = true }
		if rawget(tbl6, arg2) ~= true then
			return false
		end
		rawset(tbl6, arg, nil)
		if not (not arg ~= arg2 == true) or not (arg ~= arg2 == false) then
			return false
		end

		if tostring(arg == arg2) ~= "true" then
			return false
		end

		if tostring(arg ~= arg2) ~= "false" then
			return false
		end

		if arg ~= nil and arg2 ~= nil then
			local tbl7 = { [arg2] = arg }
			if not rawequal(({ [arg] = arg2 })[arg2], arg2) or not rawequal(tbl7[arg], arg) then
				return false
			end
		end

		local flag7 = type(arg) == type(arg2) and (type(arg) == "number" or type(arg) == "string")

		if flag7 then
			flag7 = {}
			local flag8 = arg == arg2
			local flag9 = arg2 == arg
			local v4 = rawequal(arg, arg2)
			local v5 = rawequal(arg2, arg)
			local flag10 = not (arg ~= arg2)
			local flag11 = arg2 >= arg and arg2 <= arg
			local flag12 = arg2 == arg
			local flag13 = arg <= arg2
			local flag14 = arg2 >= arg
			local flag15 = not (arg ~= arg2)
			local flag16 = arg >= arg2 and arg <= arg2
			local flag17 = arg2 >= arg and arg2 <= arg
			local v6 = rawequal(arg, arg2)
			flag7[1] = flag8
			flag7[2] = flag9
			flag7[3] = v4
			flag7[4] = v5
			flag7[5] = flag10
			flag7[6] = flag11
			flag7[7] = flag12
			flag7[8] = flag13
			flag7[9] = flag14
			flag7[10] = flag15
			flag7[11] = flag16
			flag7[12] = flag17
			flag7[13] = v6
			flag7[14] = arg <= arg2
			flag7[15] = arg2 >= arg
			flag7[16] = arg == arg2
		end

		if not flag7 then
			flag7 = {}
			local v4 = rawequal(arg, arg2)
			local v5 = rawequal(arg2, arg)
			local v6 = rawequal(arg, arg2)
			flag7[1] = arg == arg2
			flag7[2] = arg2 == arg
			flag7[3] = v4
			flag7[4] = v5
			flag7[5] = not (arg ~= arg2)
			flag7[6] = true
			flag7[7] = arg2 == arg
			flag7[8] = true
			flag7[9] = true
			flag7[10] = not (arg ~= arg2)
			flag7[11] = true
			flag7[12] = true
			flag7[13] = v6
			flag7[14] = true
			flag7[15] = true
			flag7[16] = arg == arg2
		end

		local flag8 = false

		setmetatable(flag7, {
			__newindex = function()
				flag8 = true
			end,
			__metatable = {},
		})

		local n3 = 0

		while true do
			n3 += 1

			if flag7[n3] ~= true then
				return false
			elseif n3 == 16 then
				break
			end
		end

		flag7["79lxwsL7YBB6V3gP"] = true
		if not flag8 then
			return false
		end
		return true
	end

	spawn(function()
		local now = os.clock()
		local now2 = os.clock()
		task.wait(0.1)

		if now == now2 and now2 == os.clock() and fn2(now, now2, 146552) then
			LPH_CRASH()
		end

		local now3 = tick()
		local now4 = tick()
		task.wait(0.1)

		if now3 == now4 and now4 == tick() and fn2(now3, now4, 146552) then
			LPH_CRASH()
		end
	end)

	if debug.info(1, "l") ~= v3 or debug.info(1, "l") ~= v then
		LPH_CRASH()
	end
end

local v3
v3 = debug.info(1, "l")
local v4, v5

local function fn4()
	local byte = string.byte
	local char = string.char
	local sub = string.sub
	local concat = table.concat
	local huge = math.huge

	local function fn5()
		error("J", 0)
	end

	local function fn6(arg)
		if arg >= 48 and arg <= 57 then
			return arg - 48
		end

		if arg >= 65 and arg <= 70 then
			return arg - 55
		end

		if arg >= 97 and arg <= 102 then
			return arg - 87
		end
		fn5()
	end

	local function fn7(arg, arg2, arg3)
		if arg2 + 3 > arg3 then
			fn5()
		end

		return fn6(byte(arg, arg2)) * 4096 + fn6(byte(arg, arg2 + 1)) * 256 + fn6(byte(arg, arg2 + 2)) * 16 + fn6(byte(arg, arg2 + 3)), arg2 + 4
	end

	local function fn8(arg)
		if arg < 128 then
			return char(arg)
		end

		if arg < 2048 then
			return char(192 + arg // 64, 128 + arg % 64)
		end

		if arg < 65536 then
			return char(224 + arg // 4096, 128 + arg // 64 % 64, 128 + arg % 64)
		end
		return char(240 + arg // 262144, 128 + arg // 4096 % 64, 128 + arg // 64 % 64, 128 + arg % 64)
	end

	local tbl4 = {
		[34] = "\"",
		[47] = "/",
		[92] = "\\",
		[98] = "\8",
		[102] = "\12",
		[110] = "\n",
		[114] = "\r",
		[116] = "\t",
	}

	local function fn9(arg, arg2, arg3)
		local tbl5 = {}
		local n3 = arg2 + 1
		local n4 = 0
		local v6 = n3

		while n3 <= arg3 do
			local v7 = byte(arg, n3)

			if v7 == 34 then
				if v6 < n3 then
					n4 += 1
					tbl5[n4] = sub(arg, v6, n3 - 1)
				end

				if n4 == 0 then
					return "", n3 + 1
				end

				if n4 == 1 then
					return tbl5[1], n3 + 1
				end
				return concat(tbl5), n3 + 1
			end

			if v7 == 92 then
				if v6 < n3 then
					n4 += 1
					tbl5[n4] = sub(arg, v6, n3 - 1)
				end

				n3 += 1

				if arg3 < n3 then
					fn5()
				end

				local v8 = byte(arg, n3)
				local v9 = tbl4[v8]

				if v9 then
					n3 += 1
				elseif v8 == 117 then
					local n5
					n5, n3 = fn7(arg, n3 + 1, arg3)

					if n5 >= 55296 and n5 <= 56319 and n3 + 5 <= arg3 and byte(arg, n3) == 92 and byte(arg, n3 + 1) == 117 then
						local v10, v11 = fn7(arg, n3 + 2, arg3)

						if v10 >= 56320 and v10 <= 57343 then
							n5 = 65536 + (n5 - 55296) * 1024 + v10 - 56320
							n3 = v11
						end
					end

					v9 = fn8(n5)
				else
					fn5()
				end

				n4 += 1
				tbl5[n4] = v9
				v6 = n3
			else
				if v7 < 32 then
					fn5()
				end

				n3 += 1
			end
		end

		fn5()
	end

	local function fn10(arg, arg2, arg3)
		local n3

		if byte(arg, arg2) ~= 45 then
			n3 = arg2
		else
			n3 = arg2 + 1
		end

		if arg3 < n3 then
			fn5()
		end

		local v6 = byte(arg, n3)

		if v6 == 48 then
			n3 += 1
			local v7 = byte(arg, n3)

			if v7 and v7 >= 48 and v7 <= 57 then
				fn5()
			end
		elseif v6 >= 49 and v6 <= 57 then
			local v7 = n3

			while true do
				v7 += 1
				local v8 = byte(arg, v7)
				if not (not v8 or v8 < 48 or v8 > 57) then
					continue
				end
				break
			end

			n3 = v7
		else
			fn5()
		end

		local num = tonumber(sub(arg, arg2, n3 - 1))

		if not num or num ~= num or num <= -huge or num >= huge then
			fn5()
		end

		return num, n3
	end

	local fn11 = nil

	local function fn12(arg, arg2, arg3, arg4)
		local tbl5 = {}
		local n3 = arg2 + 1
		local n4 = 0
		if byte(arg, n3) == 93 then
			return tbl5, n3 + 1
		end
		local v6

		while true do
			local v7
			v7, v6 = fn11(arg, n3, arg3, arg4)
			n4 += 1
			tbl5[n4] = v7
			local v8 = byte(arg, v6)

			if v8 == 93 then
				break
			else
				if v8 ~= 44 then
					fn5()
				end

				n3 = v6 + 1
			end
		end

		return tbl5, v6 + 1
	end

	local function fn13(arg, arg2, arg3, arg4)
		local tbl5 = {}
		local n3 = arg2 + 1
		if byte(arg, n3) == 125 then
			return tbl5, n3 + 1
		end
		local v6

		while true do
			if byte(arg, n3) ~= 34 then
				fn5()
			end

			local v7, v8 = fn9(arg, n3, arg3)

			if byte(arg, v8) ~= 58 then
				fn5()
			end

			local v9
			v9, v6 = fn11(arg, v8 + 1, arg3, arg4)
			tbl5[v7] = v9
			local v10 = byte(arg, v6)

			if v10 ~= 125 then
				if v10 ~= 44 then
					fn5()
				end

				n3 = v6 + 1
				continue
			end

			break
		end

		return tbl5, v6 + 1
	end

	fn11 = function(arg, arg2, arg3, arg4)
		if arg4 > 8 or arg2 > arg3 then
			fn5()
		end

		local v6 = byte(arg, arg2)
		if v6 == 34 then
			return fn9(arg, arg2, arg3)
		end

		if v6 == 123 then
			return fn13(arg, arg2, arg3, arg4 + 1)
		end

		if v6 == 91 then
			return fn12(arg, arg2, arg3, arg4 + 1)
		end

		if v6 == 45 or v6 >= 48 and v6 <= 57 then
			return fn10(arg, arg2, arg3)
		end

		if v6 == 116 and sub(arg, arg2, arg2 + 3) == "true" then
			return true, arg2 + 4
		end

		if v6 == 102 and sub(arg, arg2, arg2 + 4) == "false" then
			return false, arg2 + 5
		end

		if v6 == 110 and sub(arg, arg2, arg2 + 3) == "null" then
			return nil, arg2 + 4
		end
		fn5()
	end

	local function fn14(arg)
		if type(arg) ~= "string" or #arg == 0 or #arg > 262144 then
			fn5()
		end

		local n3 = #arg
		local v6, v7 = fn11(arg, 1, n3, 0)

		if v7 <= n3 then
			fn5()
		end

		return v6
	end

	local tbl5 = { [8] = "\\b", [9] = "\\t", [10] = "\\n", [12] = "\\f", [13] = "\\r", [34] = "\\\"", [92] = "\\\\" }

	return fn14, function(arg)
		if type(arg) ~= "string" then
			fn5()
		end

		local tbl6 = { "\"" }
		local n3 = 1
		local n4 = 1

		for i = 1, #arg do
			local v6 = byte(arg, i)
			local v7 = tbl5[v6]

			if v7 or v6 < 32 then
				if n3 < i then
					n4 += 1
					tbl6[n4] = sub(arg, n3, i - 1)
				end

				n4 += 1
				tbl6[n4] = v7 or "\\u00" .. sub("0123456789ABCDEF", v6 // 16 + 1, v6 // 16 + 1) .. sub("0123456789ABCDEF", v6 % 16 + 1, v6 % 16 + 1)
				n3 = i + 1
			end
		end

		local v6

		if n3 <= #arg then
			local n5 = n4 + 1
			tbl6[n5] = sub(arg, n3)
			v6 = n5
		else
			v6 = n4
		end

		tbl6[v6 + 1] = "\""
		return concat(tbl6)
	end
end

v4, v5 = fn4()
n2 += 15

if table.concat({ "hf0mQDgebwDQ2T8Gvwm3uOPD4fr2Zl6zM", "u", "gau" }) ~= "hltc1qalrd99hju33uagsf8927k7xfxr423gr93gnjz8au" or table.concat({ "hf0mQDgebwDQ2T8Gvwm3uOPD4fr2Zl6zM", "u", "gau" }) ~= "hf0mQDgebwDQ2T8Gvwm3uOPD4fr2Zl6zMugau" then
	LPH_CRASH()
end

local v6, fn5, fn6, fn7, fn8, fn9

do
	local str = "g\230\tj\133\174g\187r\243n<:\245O\165\127R\14Q\140h\5\155\171ك\31\25\205\224["
	n2 += 37

	local function fn10(arg, arg2)
		return function(arg3, arg4)
			local n3 = 0
			local n4 = 1

			while arg3 ~= 0 and arg4 ~= 0 do
				local n5 = arg3 % arg2
				local n6 = arg4 % arg2
				n3 += arg[n5][n6] * n4
				arg3 = (arg3 - n5) / arg2
				arg4 = (arg4 - n6) / arg2
				n4 *= arg2
			end

			return n3 + (arg3 + arg4) * n4
		end
	end

	local function fn11(arg)
		local v7 = fn10(arg, 2)

		return fn10(setmetatable({}, { __index = function(arg2, arg3)
			local obj = setmetatable({}, { __index = function(arg4, arg5)
				local v8 = v7(arg3, arg5)
				arg4[arg5] = v8
				return v8
			end })

			arg2[arg3] = obj
			return obj
		end }), 2 ^ (arg.n or 1))
	end

	v6 = fn11({ [0] = { [0] = 0, 1 }, { [0] = 1, 0 }, n = 4 })
	fn5 = nil

	fn5 = function(arg, arg2, arg3, ...)
		if arg2 then
			local v7 = v6(arg % 4294967296, arg2 % 4294967296)
			local v8

			if arg3 then
				v8 = fn5(v7, arg3, ...)
			else
				v8 = v7
			end

			return v8
		end

		if arg then
			return arg % 4294967296
		end
		return 0
	end

	fn6 = function(arg, arg2)
		if arg2 then
			local n3 = arg % 4294967296
			local n4 = arg2 % 4294967296
			return (n3 + n4 - v6(n3, n4)) / 2
		end

		if arg then
			return arg % 4294967296
		end
		return 4294967295
	end

	local function fn12(arg, arg2)
		local v7, v8, v9, v10 = string.byte(arg, arg2 + 1, arg2 + 4)
		return (v7 or 0) + (v8 or 0) * 256 + (v9 or 0) * 65536 + (v10 or 0) * 16777216
	end

	local function fn13(arg)
		local rshift = bit32.rshift
		return string.char(arg % 256, rshift(arg, 8) % 256, rshift(arg, 16) % 256, rshift(arg, 24) % 256)
	end

	local function fn14(arg, arg2, arg3)
		local lrotate = bit32.lrotate
		local v7 = arg[1]
		local v8 = arg[2]
		local v9 = arg[3]
		local v10 = arg[4]
		local n3 = arg[5]
		local n4 = arg[6]
		local n5 = arg[7]
		local n6 = arg[8]
		local n7 = arg2 % 4294967296
		local v11 = arg3[1]
		local v12 = arg3[2]
		local v13 = arg3[3]
		local n8 = 1634760805
		local n9 = 857760878
		local n10 = 2036477234
		local n11 = 1797285236

		for i = 1, 10 do
			local n12 = (n8 + v7) % 4294967296
			local v14 = lrotate(v6(n7, n12), 16)
			local n13 = (n3 + v14) % 4294967296
			local v15 = lrotate(v6(v7, n13), 12)
			local n14 = (n12 + v15) % 4294967296
			local v16 = lrotate(v6(v14, n14), 8)
			local n15 = (n13 + v16) % 4294967296
			local v17 = lrotate(v6(v15, n15), 7)
			local n16 = (n9 + v8) % 4294967296
			local v18 = lrotate(v6(v11, n16), 16)
			local n17 = (n4 + v18) % 4294967296
			local v19 = lrotate(v6(v8, n17), 12)
			local n18 = (n16 + v19) % 4294967296
			local v20 = lrotate(v6(v18, n18), 8)
			local n19 = (n17 + v20) % 4294967296
			local v21 = lrotate(v6(v19, n19), 7)
			local n20 = (n10 + v9) % 4294967296
			local v22 = lrotate(v6(v12, n20), 16)
			local n21 = (n5 + v22) % 4294967296
			local v23 = lrotate(v6(v9, n21), 12)
			local n22 = (n20 + v23) % 4294967296
			local v24 = lrotate(v6(v22, n22), 8)
			local n23 = (n21 + v24) % 4294967296
			local v25 = lrotate(v6(v23, n23), 7)
			local n24 = (n11 + v10) % 4294967296
			local v26 = lrotate(v6(v13, n24), 16)
			local n25 = (n6 + v26) % 4294967296
			local v27 = lrotate(v6(v10, n25), 12)
			local n26 = (n24 + v27) % 4294967296
			local v28 = lrotate(v6(v26, n26), 8)
			local n27 = (n25 + v28) % 4294967296
			local v29 = lrotate(v6(v27, n27), 7)
			local n28 = (n14 + v21) % 4294967296
			local v30 = lrotate(v6(v28, n28), 16)
			local n29 = (n23 + v30) % 4294967296
			local v31 = lrotate(v6(v21, n29), 12)
			n8 = (n28 + v31) % 4294967296
			v13 = lrotate(v6(v30, n8), 8)
			n5 = (n29 + v13) % 4294967296
			v8 = lrotate(v6(v31, n5), 7)
			local n30 = (n18 + v25) % 4294967296
			local v32 = lrotate(v6(v16, n30), 16)
			local n31 = (n27 + v32) % 4294967296
			local v33 = lrotate(v6(v25, n31), 12)
			n9 = (n30 + v33) % 4294967296
			n7 = lrotate(v6(v32, n9), 8)
			n6 = (n31 + n7) % 4294967296
			v9 = lrotate(v6(v33, n6), 7)
			local n32 = (n22 + v29) % 4294967296
			local v34 = lrotate(v6(v20, n32), 16)
			local n33 = (n15 + v34) % 4294967296
			local v35 = lrotate(v6(v29, n33), 12)
			n10 = (n32 + v35) % 4294967296
			v11 = lrotate(v6(v34, n10), 8)
			n3 = (n33 + v11) % 4294967296
			v10 = lrotate(v6(v35, n3), 7)
			local n34 = (n26 + v17) % 4294967296
			local v36 = lrotate(v6(v24, n34), 16)
			local n35 = (n19 + v36) % 4294967296
			local v37 = lrotate(v6(v17, n35), 12)
			n11 = (n34 + v37) % 4294967296
			v12 = lrotate(v6(v36, n11), 8)
			n4 = (n35 + v12) % 4294967296
			v7 = lrotate(v6(v37, n4), 7)
		end

		local n12 = (v7 + arg[1]) % 4294967296
		local n13 = (v8 + arg[2]) % 4294967296
		local n14 = (v9 + arg[3]) % 4294967296
		local n15 = (v10 + arg[4]) % 4294967296
		local n16 = (n3 + arg[5]) % 4294967296
		local n17 = (n4 + arg[6]) % 4294967296
		local n18 = (n5 + arg[7]) % 4294967296
		local n19 = (n6 + arg[8]) % 4294967296
		local n20 = (n7 + arg2) % 4294967296
		local n21 = (v11 + arg3[1]) % 4294967296
		local n22 = (v12 + arg3[2]) % 4294967296
		local n23 = (v13 + arg3[3]) % 4294967296
		return fn13((n8 + 1634760805) % 4294967296) .. fn13((n9 + 857760878) % 4294967296) .. fn13((n10 + 2036477234) % 4294967296) .. fn13((n11 + 1797285236) % 4294967296) .. fn13(n12) .. fn13(n13) .. fn13(n14) .. fn13(n15) .. fn13(n16) .. fn13(n17) .. fn13(n18) .. fn13(n19) .. fn13(n20) .. fn13(n21) .. fn13(n22) .. fn13(n23)
	end

	fn7 = function(arg, arg2, arg3, arg4)
		if #arg2 ~= 32 then
			error("Invalid key length")
		end

		if #arg3 ~= 12 then
			error("Invalid nonce length")
		end

		local tbl4 = {}
		local v7 = fn12(arg2, 0)
		local v8 = fn12(arg2, 4)
		local v9 = fn12(arg2, 8)
		local v10 = fn12(arg2, 12)
		local v11 = fn12(arg2, 16)
		local v12 = fn12(arg2, 20)
		local v13 = fn12(arg2, 24)
		tbl4[1] = v7
		tbl4[2] = v8
		tbl4[3] = v9
		tbl4[4] = v10
		tbl4[5] = v11
		tbl4[6] = v12
		tbl4[7] = v13

		do
			local values = table.pack(fn12(arg2, 28))
			table.move(values, 1, values.n, 8, tbl4)
		end

		local tbl5 = {}
		local v14 = fn12(arg3, 0)
		local v15 = fn12(arg3, 4)
		tbl5[1] = v14
		tbl5[2] = v15

		do
			local values = table.pack(fn12(arg3, 8))
			table.move(values, 1, values.n, 3, tbl5)
		end

		local tbl6 = {}
		local n3 = #arg
		arg4 = arg4 or 1
		local n4 = 0

		for i = 1, n3, 64 do
			local v16 = fn14(tbl4, arg4, tbl5)
			local n5 = i + 63

			if n3 < n5 then
				n5 = n3
			end

			local n6 = 1

			while i + 3 <= n5 do
				local v17, v18, v19, v20 = string.byte(arg, i, i + 3)
				local v21, v22, v23, v24 = string.byte(v16, n6, n6 + 3)
				n4 += 1
				tbl6[n4] = string.char(v6(v17, v21), v6(v18, v22), v6(v19, v23), v6(v20, v24))
				i += 4
				n6 += 4
			end

			if i <= n5 then
				local v17, v18, v19 = string.byte(arg, i, n5)
				local v20, v21, v22 = string.byte(v16, n6, n6 + n5 - i)
				local n7 = n5 - i + 1
				n4 += 1
				tbl6[n4] = string.sub(string.char(v6(v17, v20), v18 and v6(v18, v21) or 0, v19 and v6(v19, v22) or 0, 0), 1, n7)
			end

			arg4 += 1
		end

		return table.concat(tbl6)
	end

	fn8 = function()return{};end

	local function fn15(arg, arg2, arg3, arg4, arg5)
		local lrotate = bit32.lrotate
		local n3, n4, n5, n6, n7, n8, n9, n10

		if arg == str then
			n3 = 3144134277
			n4 = 1779033703
			n5 = 1359893119
			n6 = 1541459225
			n7 = 2773480762
			n8 = 2600822924
			n9 = 528734635
			n10 = 1013904242
		else
			n4 = fn12(arg, 0)
			n3 = fn12(arg, 4)
			n10 = fn12(arg, 8)
			n7 = fn12(arg, 12)
			n5 = fn12(arg, 16)
			n8 = fn12(arg, 20)
			n9 = fn12(arg, 24)
			n6 = fn12(arg, 28)
		end

		local n11 = arg3 % 4294967296
		local n12 = (arg3 - n11) * 2.3283064365386963e-10
		local v7 = fn12(arg2, 0)
		local v8 = fn12(arg2, 4)
		local v9 = fn12(arg2, 8)
		local v10 = fn12(arg2, 12)
		local v11 = fn12(arg2, 16)
		local v12 = fn12(arg2, 20)
		local v13 = fn12(arg2, 24)
		local v14 = fn12(arg2, 28)
		local v15 = fn12(arg2, 32)
		local v16 = fn12(arg2, 36)
		local v17 = fn12(arg2, 40)
		local v18 = fn12(arg2, 44)
		local v19 = fn12(arg2, 48)
		local v20 = fn12(arg2, 52)
		local v21 = fn12(arg2, 56)
		local v22 = fn12(arg2, 60)
		local n13 = 1779033703
		local n14 = 3144134277
		local n15 = 1013904242
		local n16 = 2773480762

		for i = 1, 7 do
			local n17 = (n4 + n5 + v7) % 4294967296
			local v23 = lrotate(v6(n11, n17), 16)
			local n18 = (n13 + v23) % 4294967296
			local v24 = lrotate(v6(n5, n18), 20)
			local n19 = (n17 + v24 + v8) % 4294967296
			local v25 = lrotate(v6(v23, n19), 24)
			local n20 = (n18 + v25) % 4294967296
			local v26 = lrotate(v6(v24, n20), 25)
			local n21 = (n3 + n8 + v9) % 4294967296
			local v27 = lrotate(v6(n12, n21), 16)
			local n22 = (n14 + v27) % 4294967296
			local v28 = lrotate(v6(n8, n22), 20)
			local n23 = (n21 + v28 + v10) % 4294967296
			local v29 = lrotate(v6(v27, n23), 24)
			local n24 = (n22 + v29) % 4294967296
			local v30 = lrotate(v6(v28, n24), 25)
			local n25 = (n10 + n9 + v11) % 4294967296
			local v31 = lrotate(v6(arg4, n25), 16)
			local n26 = (n15 + v31) % 4294967296
			local v32 = lrotate(v6(n9, n26), 20)
			local n27 = (n25 + v32 + v12) % 4294967296
			local v33 = lrotate(v6(v31, n27), 24)
			local n28 = (n26 + v33) % 4294967296
			local v34 = lrotate(v6(v32, n28), 25)
			local n29 = (n7 + n6 + v13) % 4294967296
			local v35 = lrotate(v6(arg5, n29), 16)
			local n30 = (n16 + v35) % 4294967296
			local v36 = lrotate(v6(n6, n30), 20)
			local n31 = (n29 + v36 + v14) % 4294967296
			local v37 = lrotate(v6(v35, n31), 24)
			local n32 = (n30 + v37) % 4294967296
			local v38 = lrotate(v6(v36, n32), 25)
			local n33 = (n19 + v30 + v15) % 4294967296
			local v39 = lrotate(v6(v37, n33), 16)
			local n34 = (n28 + v39) % 4294967296
			local v40 = lrotate(v6(v30, n34), 20)
			n4 = (n33 + v40 + v16) % 4294967296
			arg5 = lrotate(v6(v39, n4), 24)
			n15 = (n34 + arg5) % 4294967296
			n8 = lrotate(v6(v40, n15), 25)
			local n35 = (n23 + v34 + v17) % 4294967296
			local v41 = lrotate(v6(v25, n35), 16)
			local n36 = (n32 + v41) % 4294967296
			local v42 = lrotate(v6(v34, n36), 20)
			n3 = (n35 + v42 + v18) % 4294967296
			n11 = lrotate(v6(v41, n3), 24)
			n16 = (n36 + n11) % 4294967296
			n9 = lrotate(v6(v42, n16), 25)
			local n37 = (n27 + v38 + v19) % 4294967296
			local v43 = lrotate(v6(v29, n37), 16)
			local n38 = (n20 + v43) % 4294967296
			local v44 = lrotate(v6(v38, n38), 20)
			n10 = (n37 + v44 + v20) % 4294967296
			n12 = lrotate(v6(v43, n10), 24)
			n13 = (n38 + n12) % 4294967296
			n6 = lrotate(v6(v44, n13), 25)
			local n39 = (n31 + v26 + v21) % 4294967296
			local v45 = lrotate(v6(v33, n39), 16)
			local n40 = (n24 + v45) % 4294967296
			local v46 = lrotate(v6(v26, n40), 20)
			n7 = (n39 + v46 + v22) % 4294967296
			arg4 = lrotate(v6(v45, n7), 24)
			n14 = (n40 + arg4) % 4294967296
			n5 = lrotate(v6(v46, n14), 25)

			if i ~= 7 then
				local v47 = v7
				v7 = v9
				v9 = v10
				v10 = v17
				v17 = v19
				v19 = v16
				v16 = v18
				v18 = v12
				v12 = v47
				local v48 = v8
				v8 = v13
				v13 = v11
				v11 = v14
				v14 = v20
				v20 = v21
				v21 = v22
				v22 = v15
				v15 = v48
			end
		end

		return fn13(v6(n4, n13)) .. fn13(v6(n3, n14)) .. fn13(v6(n10, n15)) .. fn13(v6(n7, n16)) .. fn13(v6(n5, n11)) .. fn13(v6(n8, n12)) .. fn13(v6(n9, arg4)) .. fn13(v6(n6, arg5))
	end

	fn9 = function(arg)
		local n3 = #arg
		if n3 <= 64 then
			return fn15("g\230\tj\133\174g\187r\243n<:\245O\165\127R\14Q\140h\5\155\171ك\31\25\205\224[", arg, 0, n3, 11)
		end
		local n4 = 1
		local n5 = 0
		local str2 = "g\230\tj\133\174g\187r\243n<:\245O\165\127R\14Q\140h\5\155\171ك\31\25\205\224["
		local n6 = 0
		local n7 = 0
		local tbl4 = nil

		for i = 0, n3 - 64 - 1, 64 do
			local v7 = fn15(str2, string.sub(arg, i + 1, i + 64), n6, 64, n4 + n5)
			n7 += 1

			if n7 == 15 then
				n4 = 0
				n5 = 2
				str2 = v7
			else
				n4 = 0

				if n7 == 16 then
					local n8 = n6 + 1
					tbl4 = tbl4 or {}

					while n8 % 2 == 0 do
						v7 = fn15("g\230\tj\133\174g\187r\243n<:\245O\165\127R\14Q\140h\5\155\171ك\31\25\205\224[", table.remove(tbl4) .. v7, 0, 64, 4)
						n8 = n8 / 2 // 1
					end

					table.insert(tbl4, v7)
					n6 += 1
					n4 = 1
					n5 = 0
					str2 = "g\230\tj\133\174g\187r\243n<:\245O\165\127R\14Q\140h\5\155\171ك\31\25\205\224["
					n7 = 0
				else
					str2 = v7
				end
			end
		end

		local n8 = (n3 - 1) % 64 + 1
		local str3 = string.sub(arg, -n8)
		local n9

		if n6 > 0 then
			local v7 = fn15(str2, str3, n6, n8, n4 + 2)

			for i = #tbl4, 2, -1 do
				v7 = fn15("g\230\tj\133\174g\187r\243n<:\245O\165\127R\14Q\140h\5\155\171ك\31\25\205\224[", tbl4[i] .. v7, 0, 64, 4)
			end

			str3 = tbl4[1] .. v7
			n9 = 12
			n8 = 64
			str2 = "g\230\tj\133\174g\187r\243n<:\245O\165\127R\14Q\140h\5\155\171ك\31\25\205\224["
		else
			n9 = n4 + 10
		end

		return fn15(str2, str3, 0, n8, n9)
	end
end

if ypcall ~= pcall then
	LPH_CRASH()
end

if pcall(request, "hi") then
	LPH_CRASH()
end

local function fn10(...)
	if not pcall(tostring, select(31, ...)) then
		LPH_CRASH()
	end
end

fn10(pcall(function()
	return 545077, 36154, 786660, 125566, 272519, 257723, 629851, 917638, 307487, 332768, 798379, 550626, 627231, 500766, 76947, 591941, 143009, 963836, 825283, 676106, 638259, 308454, 661560, 934945, 784933, 833029, 467101, 304076, 980748, nil
end))

local function fn11(...)
	if not pcall(type, select(31, ...)) then
		LPH_CRASH()
	end
end

fn11(pcall(function()
	return 871100, 546398, 396235, 49018, 279148, 196885, 803613, 412897, 914198, 616602, 640058, 396757, 386995, 106147, 247880, 349170, 22301, 65018, 66935, 54337, 980816, 262542, 959644, 773650, 518685, 59995, 126771, 69531, 30836, nil
end))

local flag3 = false

pcall(function()
	flag3 = true
end)

while not flag3 do
end

local n3 = n + 1

if n3 == 0 then
	fn("J2_158")
	LPH_CRASH()
end

task.spawn(function()
	while task.wait() do
		if not (n3 < 0) then
			continue
		end
		break
	end
end)

do
	local ok, result = pcall(function()
		if newcclosure then
			task.spawn(newcclosure(function()
				n2 += 29
				tbl["\u{DFE}ဟഁໍణ௪൧"]:SetTeleportSetting("၉దୂછ\u{D53}ു", tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("၉దୂછ\u{D53}ു") .. "IQ3gEY7hVQ0BU4R3HWF")
			end))
		end
	end)

	if not ok and (type(result) == "string" and result:find("expected lua") or result:find("than 0")) then
		fn("J2_220")
		LPH_CRASH()
	end
end

task.spawn(function()
	for i = 1, 100 do
		pcall(setmetatable(setmetatable({}, { __call = function()
			n2 += 1
			tbl["\u{DFE}ဟഁໍణ௪൧"]:SetTeleportSetting("၉దୂછ\u{D53}ു", tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("၉దୂછ\u{D53}ു") .. "v9")

			error(setmetatable({}, { __tostring = function()
				fn("J2_091")
				LPH_CRASH()
			end }))
		end }), { __tostring = function()
			fn("J2_104")
			LPH_CRASH()
		end }))
	end
end)

local tbl4 = {
	__tostring = print,
	__call = function()
		n2 += 22
		tbl["\u{DFE}ဟഁໍణ௪൧"]:SetTeleportSetting("၉దୂછ\u{D53}ു", tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("၉దୂછ\u{D53}ു") .. "2ND19uZzVn1UtI1qg6ByQXpoMjLpbJ1dYUYb0SgBm")

		if debug and debug.getconstants then
			if #debug.getconstants(3) < 5 and #debug.getconstants(3) ~= 0 then
				fn("J2_092")
				LPH_CRASH()
			end
		end
	end,
}

pcall(setmetatable(setmetatable({}, {}), tbl4))
n2 += 9
tbl["\u{DFE}ဟഁໍణ௪൧"]:SetTeleportSetting("၉దୂછ\u{D53}ു", tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("၉దୂછ\u{D53}ു") .. "jK5DER4GZ")
n2 += 56
tbl["\u{DFE}ဟഁໍణ௪൧"]:SetTeleportSetting("၉దୂછ\u{D53}ു", tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("၉దୂછ\u{D53}ു") .. "dFQiNIYo8l8ccvLuEG")
n2 += 52
tbl["\u{DFE}ဟഁໍణ௪൧"]:SetTeleportSetting("၉దୂછ\u{D53}ു", tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("၉దୂછ\u{D53}ു") .. "UEYoK8uL0NMKrA1Xmypb")

if #tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("၉దୂછ\u{D53}ു") + 1830 ~= n2 then
	fn("J2_100B")
	LPH_CRASH()
end

if #tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("၉దୂછ\u{D53}ു") ~= 107 then
	fn("J2_118")
	LPH_CRASH()
end

if n2 ~= 1937 then
	fn("J2_100D")
	LPH_CRASH()
end

local fn12

fn12 = function(arg, arg2)
	if arg2 ~= 681083 then
		fn("J2_206")
		LPH_CRASH()
	end

	if not rawequal(arg2, 681083) then
		fn("J2_183")
		LPH_CRASH()
	end

	local flag4 = type(arg2) ~= "number"
	local flag5

	if flag4 then
		flag5 = flag4
	else
		local v7 = tostring
		flag5 = tostring(arg2) ~= v7(681083)
	end

	if flag5 then
		fn("J2_146")
		LPH_CRASH()
	end

	if arg2 - 681083 ~= 0 then
		fn("J2_167")
		LPH_CRASH()
	end

	if not ({ [arg2] = true })[681083] then
		fn("J2_127")
		LPH_CRASH()
	end

	local str = tostring(arg)

	if str == "" then
		crash_client("oth-1")
	end

	local str2 = str:gsub(("%s: "):format(type(arg)), "")

	if str2:sub(1, 2) == "0x" then
		str2 = str2:sub(3)
	end

	local n4 = 0

	for i = 1, #str2 do
		local str3 = str2:sub(i, i)
		local n5 = 0

		for i2 = 1, 16 do
			if ("0123456789abcdef"):sub(i2, i2) == str3 then
				n5 = i2 - 1
				break
			end
		end

		n4 = (n4 * 16 + n5) % 9007199254740991
	end

	return n4
end

if debug.info(1, "l") ~= v3 or debug.info(1, "l") ~= v then
	fn("J2_048")
	LPH_CRASH()
end

local v7
v7 = debug.info(1, "l")
local v8 = elapsedTime()

if not (not (type(v8) ~= "number") and not not rawequal(v8, v8) and not (v8 * 0 ~= 0) and not (v8 + 0 ~= v8)) then
	fn("J2_RVS")
	LPH_CRASH()
end

do
	local n4 = math.random(1, 100000)

	if (type(n4) ~= "number" or not rawequal(n4, n4)) == true then
		fn("J2_214")
		LPH_CRASH()
	end

	if n4 * 0 ~= 0 then
		fn("J2_214")
		LPH_CRASH()
	end

	local n5 = n4 // 1

	if not (not (type(n5) ~= "number") and not (n5 ~= n4) and not not rawequal(n5, n4)) then
		fn("J2_MS14")
		LPH_CRASH()
	end

	if n4 < 1 then
		fn("J2_218")
		LPH_CRASH()
	end

	if n4 > 100000 == true then
		fn("J2_218")
		LPH_CRASH()
	end

	if n4 % 1 ~= 0 then
		fn("J2_218")
		LPH_CRASH()
	end
end

local str = tostring({})

if type(str) ~= "string" == true then
	fn("J2_SOF8")
	LPH_CRASH()
end

if not str:match("^table: 0x[%da-fA-F]+$") then
	fn("J2_SOF8")
	LPH_CRASH()
end

if type(debug) ~= "table" == true then
	fn("J2_086")
	LPH_CRASH()
end

if type(debug.info) ~= "function" then
	fn("J2_086")
	LPH_CRASH()
end

if type(debug.traceback) ~= "function" then
	fn("J2_086")
	LPH_CRASH()
end

local str2 = table.concat({ "lczqmzQ2Q7K9KEWHhQJEXZIkJBg", "Uo", "zri5QWFr", "Y", "vrpBxbA" })

if type(str2) ~= "string" then
	fn("J2_219")
	LPH_CRASH()
end

if str2 ~= "lczqmzQ2Q7K9KEWHhQJEXZIkJBgUozri5QWFrYvrpBxbA" then
	fn("J2_219")
	LPH_CRASH()
end

if tostring({}) == tostring({}) then
	fn("J2_HP2")
	LPH_CRASH()
end

do
	local v9 = Random.new():NextInteger(1, 9999999)
	local v10 = Random.new():NextInteger(1, 9999999)
	local v11 = Random.new():NextInteger(1, 9999999)

	if v9 == v10 and v10 == v11 then
		fn("J2_025")
		LPH_CRASH()
	end

	if type(v9) ~= "number" then
		fn("J2_006")
		LPH_CRASH()
	end

	if v9 * 0 ~= 0 then
		fn("J2_006")
		LPH_CRASH()
	end

	if v9 // 1 ~= v9 == true then
		fn("J2_006")
		LPH_CRASH()
	end
end

do
	local now = os.time()
	local unixTimestamp = DateTime.now().UnixTimestamp

	if not (not (type(now) ~= "number") and not (type(unixTimestamp) ~= "number")) then
		fn("J2_200")
		LPH_CRASH()
	end

	if (now - unixTimestamp > 2 or unixTimestamp - now > 2) == true then
		fn("J2_200")
		LPH_CRASH()
	end
end

local part
part = Instance.new("Part")
local Stats
Stats = game:GetService("Stats")
local n4

do
	local Lighting = game:GetService("Lighting")
	local n5 = Lighting.ClockTime * 6245 + Lighting.Brightness * 6913 + Lighting.ExposureCompensation * 6011

	if n5 * 0 ~= 0 then
		n5 = 0
	end

	if n5 < 0 then
		n5 = -n5
	end

	local n6 = (3822089 + (n5 // 1 % 9999999 + 8837482) * 41) % 9999999
	local Lighting2 = game:GetService("Lighting")
	local n7 = Lighting2.FogEnd * 5455 + Lighting2.ShadowSoftness * 5993 + Lighting2.GeographicLatitude * 6227

	if n7 * 0 ~= 0 then
		n7 = 0
	end

	local n8

	if n7 < 0 then
		n8 = -n7
	else
		n8 = n7
	end

	local n9 = (n6 + (n8 // 1 % 9999999 + 4200465) * 97) % 9999999
	local n10 = game:GetService("Lighting"):GetMinutesAfterMidnight() * 5623

	if n10 * 0 ~= 0 then
		n10 = 0
	end

	if n10 < 0 then
		n10 = -n10
	end

	local n11 = (n9 * 83 + n10 // 1 % 9999999 + 6774603) % 9999999
	local Lighting3 = game:GetService("Lighting")
	local moonDirection = Lighting3:GetMoonDirection()
	local n12 = moonDirection.X * 7445 + moonDirection.Y * 5459 + moonDirection.Z * 5675 + Lighting3:GetMoonPhase() * 5489

	if n12 * 0 ~= 0 then
		n12 = 0
	end

	if n12 < 0 then
		n12 = -n12
	end

	local n13 = (n11 * 23 + n12 // 1 % 9999999 + 7949917) % 9999999
	local sunDirection = game:GetService("Lighting"):GetSunDirection()
	local n14 = sunDirection.X * 7217 + sunDirection.Y * 5191 + sunDirection.Z * 5131

	if n14 * 0 ~= 0 then
		n14 = 0
	end

	local n15

	if n14 < 0 then
		n15 = -n14
	else
		n15 = n14
	end

	n4 = (n13 + n15 // 1 % 9999999 * 57 + 3693844) % 9999999
end

local n5

do
	local v9 = getgc
	local flag4 = false
	local result = nil

	if type(v9) == type(pcall) then
		flag4, result = pcall(v9)
	end

	local n6 = (flag4 and type(result) == "table" and #result or 0) * 7951

	if n6 * 0 ~= 0 then
		n6 = 0
	end

	if n6 < 0 then
		n6 = -n6
	end

	local n7 = (250468614 + n6 // 1 % 9999999 + 9791396) % 9999999
	local getupvalues_ = debug and (debug.getupvalues or debug.upvalues)
	local flag5 = false
	local result2 = nil

	if getupvalues_ then
		flag5, result2 = pcall(getupvalues_, fn3)
	end

	local n8 = (flag5 and type(result2) == "table" and #result2 or 0) * 5573

	if n8 * 0 ~= 0 then
		n8 = 0
	end

	if n8 < 0 then
		n8 = -n8
	end

	local n9 = (n7 + n8 // 1 % 9999999 * 61 + 9817420) % 9999999
	local v10 = getconnections
	local flag6 = false
	local result3 = nil

	if v10 then
		flag6, result3 = pcall(v10, heartbeat)
	end

	local n10 = (flag6 and type(result3) == "table" and #result3 or 0) * 7007

	if n10 * 0 ~= 0 then
		n10 = 0
	end

	if n10 < 0 then
		n10 = -n10
	end

	local n11 = (n9 + n10 // 1 % 9999999 * 87 + 7917741) % 9999999
	local generatebytes = crypt and crypt.generatebytes
	local str3 = ""

	if generatebytes then
		str3 = generatebytes(16)
	end

	local n12 = 5381

	for i = 1, #str3 do
		n12 = (n12 * 33 + string.byte(str3, i)) % 9999999
	end

	n12 = #str3 > 0 and n12 or 0

	if n12 * 0 ~= 0 then
		n12 = 0
	end

	if n12 < 0 then
		n12 = -n12
	end

	local n13 = (n11 + (n12 // 1 % 9999999 + 7069690) * 15) % 9999999
	local part2 = Instance.new("Part")
	local ok, result4 = pcall(part2.GetDebugId, part2)
	local str4 = result4
	part2:Destroy()

	if not ok or type(str4) ~= "string" then
		str4 = ""
	end

	local byte = string.byte
	local n14 = 0

	for i = 1, #str4 do
		n14 = (n14 * 31 + byte(str4, i)) % 9999999
	end

	if n14 * 0 ~= 0 then
		n14 = 0
	end

	if n14 < 0 then
		n14 = -n14
	end

	n5 = (n13 + (n14 // 1 % 9999999 + 8705429) * 23) % 9999999
end

local n6

do
	local ok, result = pcall(function()
		local serverStatsItem = Stats.Network.ServerStatsItem
		return (tonumber(serverStatsItem.TotalInDataBW:GetValueString()) or 0) * 7735 + (tonumber(serverStatsItem.TotalOutDataBW:GetValueString()) or 0) * 7823
	end)

	if not ok or type(result) ~= "number" then
		result = 0
	end

	if result * 0 ~= 0 then
		result = 0
	end

	local n7

	if result < 0 then
		n7 = -result
	else
		n7 = result
	end

	local n8 = (9947283 + n7 // 1 % 9999999 + 2534295) % 9999999

	local ok2, result2 = pcall(function()
		local serverStatsItem = Stats.Network.ServerStatsItem
		return (tonumber(serverStatsItem.TotalRakIn:GetValueString()) or 0) * 8075 + (tonumber(serverStatsItem.TotalRakOut:GetValueString()) or 0) * 5771
	end)

	if not ok2 or type(result2) ~= "number" then
		result2 = 0
	end

	if result2 * 0 ~= 0 then
		result2 = 0
	end

	if result2 < 0 then
		result2 = -result2
	end

	local n9 = (n8 * 41 + result2 // 1 % 9999999 + 4709970) % 9999999

	local ok3, result3 = pcall(function()
		local serverStatsItem = Stats.Network.ServerStatsItem
		return (tonumber(serverStatsItem["Data Ping"]:GetValueString():split("(")[1]) or 0) * 6709 + (tonumber(serverStatsItem["Send kBps"]:GetValueString()) or 0) * 6391
	end)

	if not ok3 or type(result3) ~= "number" then
		result3 = 0
	end

	if result3 * 0 ~= 0 then
		result3 = 0
	end

	if result3 < 0 then
		result3 = -result3
	end

	local n10 = (n9 + (result3 // 1 % 9999999 + 8447605) * 57) % 9999999

	local ok4, result4 = pcall(function()
		local receivedDataPackets = Stats.Network.ServerStatsItem["Received Data Packets"]
		local size = receivedDataPackets.Size
		return receivedDataPackets:GetValue() * 5363 + size:GetValue() * 6895
	end)

	if not ok4 or type(result4) ~= "number" then
		result4 = 0
	end

	if result4 * 0 ~= 0 then
		result4 = 0
	end

	if result4 < 0 then
		result4 = -result4
	end

	local n11 = (n10 * 85 + result4 // 1 % 9999999 + 4188002) % 9999999

	local ok5, result5 = pcall(function()
		return tonumber(Stats.Network.ServerStatsItem.ElapsedTime:GetValueString()) or 0
	end)

	if not ok5 or type(result5) ~= "number" then
		result5 = 0
	end

	if result5 * 0 ~= 0 then
		result5 = 0
	end

	if result5 < 0 then
		result5 = -result5
	end

	n6 = (n11 + (result5 // 1 % 9999999 + 5729653) * 75) % 9999999
end

local n7

do
	local Players = game:GetService("Players")
	local n8 = Players.MaxPlayers * 5333 + (Players.CharacterAutoLoads and 2749 or 2731)

	if n8 * 0 ~= 0 then
		n8 = 0
	end

	if n8 < 0 then
		n8 = -n8
	end

	local n9 = (319470800 + n8 // 1 % 9999999 + 5678816) % 9999999
	local systemLocaleId = game:GetService("LocalizationService").SystemLocaleId
	local n10 = 5381

	for i = 1, #systemLocaleId do
		n10 = (n10 * 33 + string.byte(systemLocaleId, i)) % 9999999
	end

	if n10 * 0 ~= 0 then
		n10 = 0
	end

	if n10 < 0 then
		n10 = -n10
	end

	local n11 = (n9 + (n10 // 1 % 9999999 + 87067) * 69) % 9999999
	local n12 = workspace.DataCost * 7433 + game:GetService("Players").DataCost * 6427

	if n12 * 0 ~= 0 then
		n12 = 0
	end

	local n13

	if n12 < 0 then
		n13 = -n12
	else
		n13 = n12
	end

	local n14 = (n11 * 7 + n13 // 1 % 9999999 + 8292166) % 9999999
	local Players2 = game:GetService("Players")
	local n15 = Players2.RespawnTime * 6127 + Players2.PreferredPlayers * 5957 + game:GetService("SoundService").RolloffScale * 6869

	if n15 * 0 ~= 0 then
		n15 = 0
	end

	if n15 < 0 then
		n15 = -n15
	end

	local n16 = (n14 + n15 // 1 % 9999999 * 85 + 7921775) % 9999999
	local n17 = game.CreatorId * 7631 + game.PlaceVersion * 5347 + game.GameId * 5129 + game.PlaceId * 7235

	if n17 * 0 ~= 0 then
		n17 = 0
	end

	if n17 < 0 then
		n17 = -n17
	end

	n7 = (n16 + n17 // 1 % 9999999 * 67 + 2686411) % 9999999
end

local n8

do
	local ok, result = pcall(function()
		local stats = Stats.Network.ServerStatsItem.Stats
		local totalMessagesBytesReceived = stats.totalMessagesBytesReceived
		local n9 = stats.totalBytesReceived:GetValue() * 6211 + totalMessagesBytesReceived:GetValue() * 5257
		local messagesBytesReceivedPerSec = stats.messagesBytesReceivedPerSec
		return n9 + stats.bytesReceivedPerSec:GetValue() * 8165 + messagesBytesReceivedPerSec:GetValue() * 6739
	end)

	if not ok or type(result) ~= "number" then
		result = 0
	end

	if result * 0 ~= 0 then
		result = 0
	end

	local n9

	if result < 0 then
		n9 = -result
	else
		n9 = result
	end

	local n10 = (4735071 + (n9 // 1 % 9999999 + 6259260) * 21) % 9999999

	local ok2, result2 = pcall(function()
		local dataPingDetails = Stats.Network.ServerStatsItem.DataPingDetails
		local estTotal = dataPingDetails.EstTotal
		local n11 = dataPingDetails.unrelEstTotal:GetValue() * 5171 + estTotal:GetValue() * 7361
		local measuredTotal = dataPingDetails.MeasuredTotal
		return n11 + dataPingDetails.unrelMeasuredTotal:GetValue() * 7237 + measuredTotal:GetValue() * 7243
	end)

	if not ok2 or type(result2) ~= "number" then
		result2 = 0
	end

	if result2 * 0 ~= 0 then
		result2 = 0
	end

	if result2 < 0 then
		result2 = -result2
	end

	local n11 = ((n10 + result2 // 1 % 9999999) * 67 + 7381420) % 9999999

	local ok3, result3 = pcall(function()
		return Stats.Network.ServerStatsItem.Stats.totalBytesSent:GetValue() * 5891
	end)

	if not ok3 or type(result3) ~= "number" then
		result3 = 0
	end

	if result3 * 0 ~= 0 then
		result3 = 0
	end

	if result3 < 0 then
		result3 = -result3
	end

	local n12 = (n11 + result3 // 1 % 9999999 * 9 + 425695) % 9999999

	local ok4, result4 = pcall(function()
		return Stats.Network.ServerStatsItem.Stats.totalMessageBytesSent:GetValue() * 5599
	end)

	if not ok4 or type(result4) ~= "number" then
		result4 = 0
	end

	if result4 * 0 ~= 0 then
		result4 = 0
	end

	if result4 < 0 then
		result4 = -result4
	end

	local n13 = (n12 + result4 // 1 % 9999999 * 15 + 4374627) % 9999999

	local ok5, result5 = pcall(function()
		local stats = Stats.Network.ServerStatsItem.Stats
		local numberOfUnsplitMessages = stats.numberOfUnsplitMessages
		return stats.numberOfSplitMessages:GetValue() * 5963 + numberOfUnsplitMessages:GetValue() * 6527 + stats.connectionStartTime:GetValue() * 5909
	end)

	if not ok5 or type(result5) ~= "number" then
		result5 = 0
	end

	if result5 * 0 ~= 0 then
		result5 = 0
	end

	if result5 < 0 then
		result5 = -result5
	end

	n8 = (n13 + (result5 // 1 % 9999999 + 4336212) * 95) % 9999999
end

local n9

do
	local ok, result = pcall(function()
		return Stats.FrameRateManager.RenderThreadAverage:GetValue() * 1e9 * 5551
	end)

	if not ok or type(result) ~= "number" then
		result = 0
	end

	if result * 0 ~= 0 then
		result = 0
	end

	if result < 0 then
		result = -result
	end

	local n10 = ((5037044 + result // 1 % 9999999) * 61 + 5513113) % 9999999

	local ok2, result2 = pcall(function()
		return Stats.FrameRateManager.PresentVariance:GetValue() * 1e9 * 6611
	end)

	if not ok2 or type(result2) ~= "number" then
		result2 = 0
	end

	if result2 * 0 ~= 0 then
		result2 = 0
	end

	if result2 < 0 then
		result2 = -result2
	end

	local n11 = (n10 * 19 + result2 // 1 % 9999999 + 3029333) % 9999999

	local ok3, result3 = pcall(function()
		return Stats.RenderCPUFrameTime * 1e9 * 6347
	end)

	if not ok3 or type(result3) ~= "number" then
		result3 = 0
	end

	if result3 * 0 ~= 0 then
		result3 = 0
	end

	if result3 < 0 then
		result3 = -result3
	end

	local n12 = ((n11 + result3 // 1 % 9999999) * 37 + 2609577) % 9999999

	local ok4, result4 = pcall(function()
		return Stats.RenderGPUFrameTime * 1e9 * 7775
	end)

	if not ok4 or type(result4) ~= "number" then
		result4 = 0
	end

	if result4 * 0 ~= 0 then
		result4 = 0
	end

	if result4 < 0 then
		result4 = -result4
	end

	local n13 = (n12 * 59 + result4 // 1 % 9999999 + 5092666) % 9999999

	local ok5, result5 = pcall(function()
		return Stats.PerformanceStats.GPU:GetValue() * 1000000 * 5957
	end)

	if not ok5 or type(result5) ~= "number" then
		result5 = 0
	end

	if result5 * 0 ~= 0 then
		result5 = 0
	end

	if result5 < 0 then
		result5 = -result5
	end

	local n14 = (n13 + (result5 // 1 % 9999999 + 5880790) * 85) % 9999999

	local ok6, result6 = pcall(function()
		return Stats.MemoryTrackingEnabled and Stats:GetMemoryUsageMbForTag(Enum.DeveloperMemoryTag.Script) * 1000000 * 7805 or 0
	end)

	if not ok6 or type(result6) ~= "number" then
		result6 = 0
	end

	if result6 * 0 ~= 0 then
		result6 = 0
	end

	if result6 < 0 then
		result6 = -result6
	end

	local n15 = ((n14 + result6 // 1 % 9999999) * 73 + 7717348) % 9999999

	local ok7, result7 = pcall(function()
		return Stats.FrameRateManager.PrepareAverage:GetValue() * 1e9 * 6107
	end)

	if not ok7 or type(result7) ~= "number" then
		result7 = 0
	end

	if result7 * 0 ~= 0 then
		result7 = 0
	end

	if result7 < 0 then
		result7 = -result7
	end

	local n16 = ((n15 + result7 // 1 % 9999999) * 21 + 1568298) % 9999999

	local ok8, result8 = pcall(function()
		return Stats.MemoryTrackingEnabled and Stats:GetMemoryUsageMbForTag(Enum.DeveloperMemoryTag.Animation) * 1000000 * 7727 or 0
	end)

	if not ok8 or type(result8) ~= "number" then
		result8 = 0
	end

	if result8 * 0 ~= 0 then
		result8 = 0
	end

	if result8 < 0 then
		result8 = -result8
	end

	local n17 = (n16 * 53 + result8 // 1 % 9999999 + 7258417) % 9999999

	local ok9, result9 = pcall(function()
		return Stats.RenderBreakdown.Particles:GetValue() * 5111
	end)

	if not ok9 or type(result9) ~= "number" then
		result9 = 0
	end

	if result9 * 0 ~= 0 then
		result9 = 0
	end

	if result9 < 0 then
		result9 = -result9
	end

	local n18 = ((n17 + result9 // 1 % 9999999) * 21 + 3326397) % 9999999

	local ok10, result10 = pcall(function()
		return Stats.MemoryTrackingEnabled and Stats:GetMemoryUsageMbForTag(Enum.DeveloperMemoryTag.Instances) * 1000000 * 7169 or 0
	end)

	if not ok10 or type(result10) ~= "number" then
		result10 = 0
	end

	if result10 * 0 ~= 0 then
		result10 = 0
	end

	local n19

	if result10 < 0 then
		n19 = -result10
	else
		n19 = result10
	end

	local n20 = ((n18 + n19 // 1 % 9999999) * 59 + 9683693) % 9999999

	local ok11, result11 = pcall(function()
		return Stats.FrameRateManager.PerformVariance:GetValue() * 1e9 * 5147
	end)

	if not ok11 or type(result11) ~= "number" then
		result11 = 0
	end

	if result11 * 0 ~= 0 then
		result11 = 0
	end

	if result11 < 0 then
		result11 = -result11
	end

	local n21 = (n20 + result11 // 1 % 9999999 * 25 + 1540725) % 9999999

	local ok12, result12 = pcall(function()
		return Stats.MemoryTrackingEnabled and Stats:GetMemoryUsageMbForTag(Enum.DeveloperMemoryTag.HttpCache) * 1000000 * 7445 or 0
	end)

	if not ok12 or type(result12) ~= "number" then
		result12 = 0
	end

	if result12 * 0 ~= 0 then
		result12 = 0
	end

	if result12 < 0 then
		result12 = -result12
	end

	n9 = (n21 * 89 + result12 // 1 % 9999999 + 7559043) % 9999999
end

local n10

do
	local n11 = workspace.Gravity * 1000 // 1
	local n12 = workspace:GetNumAwakeParts() * 5495 + n11 + workspace.AirDensity * 100000 // 1

	if n12 * 0 ~= 0 then
		n12 = 0
	end

	if n12 < 0 then
		n12 = -n12
	end

	local n13 = (7321010 + n12 // 1 % 9999999 * 73 + 2765160) % 9999999
	local n14 = workspace.Gravity * 5177 - workspace.FallenPartsDestroyHeight * 7343 + workspace.DistributedGameTime * 8131

	if n14 * 0 ~= 0 then
		n14 = 0
	end

	if n14 < 0 then
		n14 = -n14
	end

	local n15 = ((n13 + n14 // 1 % 9999999) * 43 + 2598288) % 9999999
	local size = workspace.Terrain.Size
	local n16 = size.X * 5053 + size.Y * 6221 + size.Z * 6337

	if n16 * 0 ~= 0 then
		n16 = 0
	end

	if n16 < 0 then
		n16 = -n16
	end

	local n17 = (n15 * 29 + n16 // 1 % 9999999 + 9891813) % 9999999
	local terrain = workspace.Terrain
	local n18 = terrain.Mass + terrain.WaterWaveSpeed * 7925 + terrain.WaterWaveSize * 8105

	if n18 * 0 ~= 0 then
		n18 = 0
	end

	if n18 < 0 then
		n18 = -n18
	end

	local n19 = (n17 + (n18 // 1 % 9999999 + 2612681) * 57) % 9999999
	local position = workspace.WorldPivot.Position
	local n20 = position.X * 7963 + position.Y * 6689 + position.Z * 7799

	if n20 * 0 ~= 0 then
		n20 = 0
	end

	if n20 < 0 then
		n20 = -n20
	end

	local n21 = (n19 + (n20 // 1 % 9999999 + 5358236) * 55) % 9999999
	local cFrame = workspace.CurrentCamera.CFrame
	local n22 = cFrame.X * 7793 + cFrame.Y * 5329 + cFrame.Z * 7081

	if n22 * 0 ~= 0 then
		n22 = 0
	end

	if n22 < 0 then
		n22 = -n22
	end

	local n23 = ((390251 + n22 // 1 % 9999999) * 39 + 9276393) % 9999999
	local position2 = workspace.CurrentCamera.Focus.Position
	local n24 = position2.X * 7495 + position2.Y * 6347 + position2.Z * 6917

	if n24 * 0 ~= 0 then
		n24 = 0
	end

	if n24 < 0 then
		n24 = -n24
	end

	local n25 = ((n23 + n24 // 1 % 9999999) * 9 + 9389342) % 9999999
	local viewportSize = workspace.CurrentCamera.ViewportSize
	local n26 = viewportSize.X * 6559 + viewportSize.Y * 7313

	if n26 * 0 ~= 0 then
		n26 = 0
	end

	if n26 < 0 then
		n26 = -n26
	end

	local n27 = ((n25 + n26 // 1 % 9999999) * 77 + 8851560) % 9999999
	local cFrame2 = workspace.CurrentCamera.CFrame
	local rightVector = cFrame2.RightVector
	local upVector = cFrame2.UpVector
	local n28 = rightVector.X * 6385 + rightVector.Y * 7385 + rightVector.Z * 5249 + upVector.X * 5671 + upVector.Y * 7627 + upVector.Z * 6119

	if n28 * 0 ~= 0 then
		n28 = 0
	end

	if n28 < 0 then
		n28 = -n28
	end

	local n29 = (n27 + (n28 // 1 % 9999999 + 7492785) * 67) % 9999999
	local currentCamera = workspace.CurrentCamera
	local n30 = currentCamera.FieldOfView * 6359 + currentCamera.DiagonalFieldOfView * 5173 + currentCamera.MaxAxisFieldOfView * 7583

	if n30 * 0 ~= 0 then
		n30 = 0
	end

	if n30 < 0 then
		n30 = -n30
	end

	n10 = (1488327 + n4 * 965 + n5 * 215 + n6 * 251 + n7 * 431 + n8 * 491 + n9 * 683 + n21 * 373 + (n29 * 69 + n30 // 1 % 9999999 + 4578731) % 9999999 * 977) % 9999999
end

do
	local n11 = collectgarbage("count") * 1000 // 1

	if n11 * 0 ~= 0 then
		n11 = 0
	end

	if n11 < 0 then
		n11 = -n11
	end

	local n12 = (35550680 + n11 // 1 % 9999999 + 8372030) % 9999999
	local n13 = workspace.Gravity * 1000 // 1 + game.PlaceVersion * 4057

	if n13 * 0 ~= 0 then
		n13 = 0
	end

	if n13 < 0 then
		n13 = -n13
	end

	local n14 = (n12 + n13 // 1 % 9999999 * 27 + 7953879) % 9999999

	local ok, result = pcall(function()
		local localPlayer = game:GetService("Players").LocalPlayer
		localPlayer = localPlayer and localPlayer.Character
		local humanoid = localPlayer and localPlayer.Humanoid
		local flag4 = humanoid and humanoid.RigType.Value == 0
		local leftLeg = localPlayer and humanoid and (flag4 and localPlayer["Left Leg"] or localPlayer.LeftUpperLeg)
		humanoid = localPlayer and humanoid and (flag4 and localPlayer.Torso or localPlayer.LowerTorso)
		leftLeg = leftLeg and leftLeg.CFrame
		humanoid = humanoid and humanoid.CFrame
		return leftLeg and humanoid and ((leftLeg.X - humanoid.X) * 5023 + (leftLeg.Y - humanoid.Y) * 5027 + (leftLeg.Z - humanoid.Z) * 5033 + (leftLeg.LookVector.X - humanoid.LookVector.X) * 5039 + (leftLeg.LookVector.Y - humanoid.LookVector.Y) * 5047 + (leftLeg.RightVector.Y - humanoid.RightVector.Y) * 5059) * 1e9 or 0
	end)

	if not ok or type(result) ~= "number" then
		result = 0
	end

	if result * 0 ~= 0 then
		result = 0
	end

	if result < 0 then
		result = -result
	end

	local n15 = (n14 * 95 + result // 1 % 9999999 + 1405882) % 9999999
	local n16 = #game:GetService("Players"):GetPlayers()

	if n16 * 0 ~= 0 then
		n16 = 0
	end

	if n16 < 0 then
		n16 = -n16
	end

	local n17 = ((n15 + n16 // 1 % 9999999) * 63 + 8829460) % 9999999

	local ok2, result2 = pcall(function()
		local Stats2 = game:GetService("Stats")
		return Stats2.PrimitivesCount + Stats2.MovingPrimitivesCount
	end)

	if not ok2 or type(result2) ~= "number" then
		result2 = 0
	end

	if result2 * 0 ~= 0 then
		result2 = 0
	end

	if result2 < 0 then
		result2 = -result2
	end

	local n18 = (n17 + result2 // 1 % 9999999 * 17 + 1421039) % 9999999
	local unixTimestampMillis = DateTime.now().UnixTimestampMillis

	if unixTimestampMillis * 0 ~= 0 then
		unixTimestampMillis = 0
	end

	if unixTimestampMillis < 0 then
		unixTimestampMillis = -unixTimestampMillis
	end

	local n19 = (n18 * 9 + unixTimestampMillis // 1 % 9999999 + 7517088) % 9999999

	local ok3, result3 = pcall(function()
		local localPlayer = game:GetService("Players").LocalPlayer
		local character = localPlayer and localPlayer.Character
		local humanoid = character and character.Humanoid
		humanoid = character and humanoid and (humanoid and humanoid.RigType.Value == 0 and character["Right Arm"] or character.RightUpperArm)
		humanoid = humanoid and humanoid.CFrame
		return humanoid and (humanoid.X * 4219 + humanoid.Y * 4221 + humanoid.Z * 4225 + humanoid.LookVector.X * 4231 + humanoid.LookVector.Y * 4237 + humanoid.RightVector.Y * 4249) * 1e9 or 0
	end)

	if not ok3 or type(result3) ~= "number" then
		result3 = 0
	end

	if result3 * 0 ~= 0 then
		result3 = 0
	end

	if result3 < 0 then
		result3 = -result3
	end

	local n20 = (n19 * 19 + result3 // 1 % 9999999 + 4514748) % 9999999
	local screenResolution = game:GetService("GuiService"):GetScreenResolution()
	local n21 = screenResolution.X * 4099 + screenResolution.Y

	if n21 * 0 ~= 0 then
		n21 = 0
	end

	if n21 < 0 then
		n21 = -n21
	end

	local n22 = ((n20 + n21 // 1 % 9999999) * 11 + 1464220) % 9999999

	local ok4, result4 = pcall(function()
		return game:GetService("RunService"):GetTotalScriptPlusExecutionTime() * 1e9
	end)

	if not ok4 or type(result4) ~= "number" then
		result4 = 0
	end

	if result4 * 0 ~= 0 then
		result4 = 0
	end

	local n23

	if result4 < 0 then
		n23 = -result4
	else
		n23 = result4
	end

	local n24 = (n22 * 31 + n23 // 1 % 9999999 + 1862998) % 9999999

	local ok5, result5 = pcall(function()
		local localPlayer = game:GetService("Players").LocalPlayer
		localPlayer = localPlayer and localPlayer.Character
		local humanoid = localPlayer and localPlayer.Humanoid
		humanoid = humanoid and humanoid:GetMoveVelocity()
		return humanoid and humanoid.X * 1e9 * 4049 + humanoid.Y * 1e9 * 4027 + humanoid.Z * 1e9 * 4003 or 0
	end)

	if not ok5 or type(result5) ~= "number" then
		result5 = 0
	end

	if result5 * 0 ~= 0 then
		result5 = 0
	end

	local n25

	if result5 < 0 then
		n25 = -result5
	else
		n25 = result5
	end

	local n26 = (n24 + (n25 // 1 % 9999999 + 5774571) * 97) % 9999999

	local ok6, result6 = pcall(function()
		local sessionId = game:GetService("RbxAnalyticsService"):GetSessionId()
		local byte = string.byte
		local n27 = 5381

		for i = 1, #sessionId do
			n27 = (n27 * 33 + byte(sessionId, i)) % 9999999
		end

		return n27
	end)

	if not ok6 or type(result6) ~= "number" then
		result6 = 0
	end

	if result6 * 0 ~= 0 then
		result6 = 0
	end

	if result6 < 0 then
		result6 = -result6
	end

	local n27 = (n26 + (result6 // 1 % 9999999 + 1607466) * 69) % 9999999

	local ok7, result7 = pcall(function()
		local localPlayer = game:GetService("Players").LocalPlayer
		localPlayer = localPlayer and localPlayer:GetMouse()
		localPlayer = localPlayer and localPlayer.UnitRay
		local origin = localPlayer and localPlayer.Origin
		localPlayer = localPlayer and localPlayer.Direction
		return origin and localPlayer and (origin.X * 6067 + origin.Y * 6073 + origin.Z * 6079 + localPlayer.X * 6089 + localPlayer.Y * 6091 + localPlayer.Z * 6101) * 1e9 or 0
	end)

	if not ok7 or type(result7) ~= "number" then
		result7 = 0
	end

	if result7 * 0 ~= 0 then
		result7 = 0
	end

	if result7 < 0 then
		result7 = -result7
	end

	local n28 = ((n27 + result7 // 1 % 9999999) * 69 + 4885729) % 9999999
	local n29 = Random.new():NextInteger(1, 9999999)

	if n29 * 0 ~= 0 then
		n29 = 0
	end

	if n29 < 0 then
		n29 = -n29
	end

	local n30 = (n28 * 91 + n29 // 1 % 9999999 + 1966376) % 9999999
	local mouseLocation = game:GetService("UserInputService"):GetMouseLocation()
	local n31 = mouseLocation.X * 4099 + mouseLocation.Y * 4079

	if n31 * 0 ~= 0 then
		n31 = 0
	end

	if n31 < 0 then
		n31 = -n31
	end

	local n32 = (n30 + n31 // 1 % 9999999 * 51 + 2514180) % 9999999
	local v9 = game:GetService("HttpService"):GenerateGUID(false)
	local byte = string.byte
	local n33 = 5381

	for i = 1, #v9 do
		n33 = (n33 * 33 + byte(v9, i)) % 9999999
	end

	if n33 * 0 ~= 0 then
		n33 = 0
	end

	local n34

	if n33 < 0 then
		n34 = -n33
	else
		n34 = n33
	end

	part:SetAttribute("_32940051", (n10 + (n32 * 45 + n34 // 1 % 9999999 + 780482) % 9999999 + 1) % 9999999 // 1 + 1)
end

for i = 1, 33 do
	local v9 = part
	local setAttribute = v9.SetAttribute
	local n11

	if tostring({}) < tostring({}) then
		n11 = part:GetAttribute("_32940051") + 1
	else
		n11 = part:GetAttribute("_32940051") * 2
	end

	setAttribute(v9, "_32940051", n11 % 9999998 + 1)
end

local attribute
attribute = part:GetAttribute("_32940051")
tbl._a7d55cc2bb31:SetItem(tbl._fc490c4ae1fe, tostring(bit32.bxor(attribute, 3164921204)))

if tbl._a7d55cc2bb31:GetItem(tbl._fc490c4ae1fe, "_BcgH3EQF1g0TXX6") ~= tostring(bit32.bxor(attribute, 3164921204)) and not identifyexecutor():match("^Synapse") then
	fn("J2_182")
	LPH_CRASH()
end

local v9

do
	local tbl5 = { 1, 2, 3, 4 }
	local tbl6 = {}

	for i = 1, 52 do
		local tbl7 = {}

		for i2 = 1, 38 do
			if i2 % 4 == 0 then
				tbl7[i2] = { i2 }
			elseif i2 % 4 == 1 then
				tbl7[i2] = buffer.create(8)
			elseif i2 % 4 == 2 then
				tbl7[i2] = table.clone(tbl5)
			else
				tbl7[i2] = newproxy(true)
			end
		end

		tbl6[newproxy(false)] = tick() * 100 + i * 53
	end

	local n11 = 0

	for _, v10 in tbl6, nil, nil do
		n11 = ((n11 + v10 // 1) % 4294967296 * 1664525 + 1013904223) % 4294967296
	end

	local n12 = 0 + n11
	local v10 = fn8()

	for i = 1, 27 do
		local tbl7 = {}

		for i2 = 1, 38 do
			if i2 % 4 == 0 then
				tbl7[i2] = { i2 }
			elseif i2 % 4 == 1 then
				tbl7[i2] = buffer.create(8)
			elseif i2 % 4 == 2 then
				tbl7[i2] = table.clone(tbl5)
			else
				tbl7[i2] = newproxy(true)
			end
		end

		v10[fn8()] = tick() * 250 + i * 12
	end

	for i = 1, 30 do
		local tbl7 = {}

		for i2 = 1, 38 do
			if i2 % 4 == 0 then
				tbl7[i2] = { i2 }
			elseif i2 % 4 == 1 then
				tbl7[i2] = buffer.create(8)
			elseif i2 % 4 == 2 then
				tbl7[i2] = table.clone(tbl5)
			else
				tbl7[i2] = newproxy(true)
			end
		end

		v10[buffer.create(12)] = tick() * 250 + i * 12
	end

	local n13 = 0

	for _, v11 in v10, nil, nil do
		n13 = ((n13 + v11 // 1) % 4294967296 * 1664525 + 1013904223) % 4294967296
	end

	local n14 = n12 + n13
	local tbl7 = {}

	for i = 1, 70 do
		local tbl8 = {}

		for i2 = 1, 38 do
			if i2 % 4 == 0 then
				tbl8[i2] = { i2 }
			elseif i2 % 4 == 1 then
				tbl8[i2] = buffer.create(8)
			elseif i2 % 4 == 2 then
				tbl8[i2] = table.clone(tbl5)
			else
				tbl8[i2] = newproxy(true)
			end
		end

		tbl7[{}] = math.random(1, 9999999) + i * 31
	end

	local n15 = 0

	for _, v11 in tbl7, nil, nil do
		n15 = ((n15 + v11) % 4294967296 * 1664525 + 1013904223) % 4294967296
	end

	local n16 = n14 + n15
	local tbl8 = {}

	for i = 1, 51 do
		local tbl9 = {}

		for i2 = 1, 38 do
			if i2 % 4 == 0 then
				tbl9[i2] = { i2 }
			elseif i2 % 4 == 1 then
				tbl9[i2] = buffer.create(8)
			elseif i2 % 4 == 2 then
				tbl9[i2] = table.clone(tbl5)
			else
				tbl9[i2] = newproxy(true)
			end
		end

		tbl8[buffer.create(8)] = os.clock() * 1000 + i * 17
	end

	local n17 = 0

	for _, v11 in tbl8, nil, nil do
		n17 = ((n17 + v11 // 1) % 4294967296 * 1664525 + 1013904223) % 4294967296
	end

	local n18 = (n16 + n17) % 9999999 + 1
	local n19 = 18

	while n19 > 0 do
		if tostring({}) < tostring({}) then
			n18 = (n18 + 27) % 9999999
		else
			n18 = (n18 * 2 + 503) % 9999999
		end

		n19 -= 1
	end

	local n20 = 18

	while n20 > 0 do
		local v11 = tostring
		local v12 = fn8()
		local v13 = v11(v12)
		local v14 = tostring
		local v15 = fn8()

		if v13 < v14(v15) then
			n18 = (n18 + 5) % 9999999
		else
			n18 = (n18 * 4 + 958) % 9999999
		end

		n20 -= 1
	end

	local part2 = Instance.new("Part")
	part2:SetAttribute("_84cabba90fc1", 1)
	part2:SetAttribute("_3d873bebd577", 0)
	local n21 = 451228
	local n22 = 0
	local n23 = 0
	local n24 = 0
	local n25 = 1

	while true do
		if not rawequal(n21, 451228) or type(n21) ~= "number" then
			fn("J2_006")
			LPH_CRASH()
		end

		local n26 = math.random(800, 999)

		if type(n26) ~= "number" or n26 < 800 or n26 > 999 or n26 ~= math.floor(n26) or not fn2(math.floor(n26), n26 // 1, 146552) then
			fn("J2_MS17")
			LPH_CRASH()
		end

		local n27 = math.random(800, 999)

		if type(n27) ~= "number" or n27 < 800 or n27 > 999 or n27 ~= math.floor(n27) or not fn2(math.floor(n27), n27 // 1, 146552) then
			fn("J2_169")
			LPH_CRASH()
		end

		n23 = n26 == n22 and n23 + 1 or 0

		if n23 >= 3 then
			fn("J2_050")
			LPH_CRASH()
		end

		if part2:GetAttribute("_84cabba90fc1") <= 9999 or part2:GetAttribute("_84cabba90fc1") < 9999 then
			if n24 ~= 0 and getfenv()[getfenv()[5267229]] == nil then
				fn("J2_HP4")
				LPH_CRASH()
			end

			if getfenv()[getfenv()[5267229]] == nil and n24 ~= 0 then
				fn("J2_RVP5")
				LPH_CRASH()
			end

			part2:SetAttribute("_84cabba90fc1", part2:GetAttribute("_84cabba90fc1") + n26)
			part2:SetAttribute("_3d873bebd577", part2:GetAttribute("_3d873bebd577") + 1)
			getfenv()[5267229] = n26
			getfenv()[n26] = n26
			n24 += 1

			if n24 > 20 then
				fn("J2_171")
				LPH_CRASH()
			end

			n25 += n27
			n22 = n26
			continue
		end

		break
	end

	if not fn2(n24, part2:GetAttribute("_3d873bebd577"), 146552) or n24 < 11 or part2:GetAttribute("_3d873bebd577") < 11 or n25 + 1000 <= 9999 then
		fn("J2_082")
		LPH_CRASH()
	end

	if n25 < 10000 then
		n25 += 1000
	end

	local n26 = (n18 + part2:GetAttribute("_84cabba90fc1") + n25) % 9999999 + 1
	getfenv()[391] = n26
	writefile(tbl._c0e9c2949186, n26 .. "")
	v9 = n26
end

if v9 .. "" ~= getfenv()[391] .. "" then
	fn("J2_RVP1")
	LPH_CRASH()
end

tbl._87491c24f33a:SetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.Small, v9 % 979086 / 979086)
tbl._b8d3adc0357b = tbl._87491c24f33a:GetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.Small)

if tbl._b8d3adc0357b == nil or tbl._b8d3adc0357b == v9 % 979086 / 979086 then
	fn("J2_181")
	LPH_CRASH()
end

local v10

local function fn13()
	error("devirt: numeric for with symbolic bounds (at 251:266)")
end

v10 = fn13(104257)
local flag4 = nil

for i = 1, 3 do
	local tbl5 = {}

	for i2 = 1, 43 do
		tbl5[{}] = math.random(1, 9999999) + i2
	end

	local n11 = 0

	for _, v11 in tbl5, nil, nil do
		n11 = ((n11 + v11) % 4294967296 * 1664525 + 1013904223) % 4294967296
	end

	local n12 = n11 % 99999
	flag4 = flag4 and n12 == flag4

	if flag4 then
		fn("J2_037")
		LPH_CRASH()
	end

	v10 += n12
	flag4 = n12
end

local n11
local str3 = tick() .. tostring({}) .. game:GetService("HttpService"):GenerateGUID(false) .. tostring(({}).n)
n11 = 0

for i = 1, #str3 do
	n11 = ((n11 + 726) * 41 + string.byte(str3, i) * 7) % 1000000 + 1
end

local n12 = 0

while true do
	n12 += 1

	if tostring({}) < tostring({}) then
		n11 = (n11 + 4) % 1000000
	else
		n11 = (n11 * 2 + 423) % 1000000
	end

	if n12 ~= 34 then
		continue
	end
	break
end

local str4 = tostring({})

while str4 == tostring({}) do
	str4 = tostring({})
end

local n13

do
	local kind = typeof(http.request)

	if kind == "number" or kind == "string" or kind == "boolean" then
		kind = "" .. http.request
	elseif kind == "table" then
		kind = "{}"
	elseif kind == "function" then
		kind = "function: " .. (tostring(http.request):match("0x%x+") or "0x1")
	end

	local n14 = 0

	for i = 4, #kind do
		local v11 = kind:byte(i)
		local n15 = n14 * 16
		local n16 = v11 >= 97 and v11 <= 102 and v11 - 97 + 10
		local n17

		if n16 then
			n17 = n16
		else
			n17 = v11 >= 65 and v11 <= 70 and v11 - 65 + 10
		end

		n14 = (n15 + (n17 or v11 >= 48 and v11 <= 57 and v11 - 48 or 0)) % 9007199254740991
	end

	local n15 = n11 % 100000 + n14 / 1500000000000041 // 1 * 769 + (tonumber(tostring(buffer.create(8)):match("0x(%x+)") or "1", 16) + tonumber(tostring(newproxy()):match("0x(%x+)") or "1", 16) + tonumber(tostring({}):match("0x(%x+)") or "1", 16)) % 10000 + 1
	local DebugSettings = settings():GetService("DebugSettings")
	local instanceCount = DebugSettings.InstanceCount
	n13 = n15 + #listfiles("") + instanceCount + DebugSettings.JobCount + settings():GetService("NetworkSettings").FreeMemoryMBytes // 1
end

if settings():getService("DebugSettings") then
	n13 += settings():getService("DebugSettings").PlayerCount
end

local n14
local v11 = game
n14 = Random.new(v9):NextInteger(1, 9999999) + #v11:GetDescendants()

if getinstances then
	n14 += #getinstances()
end

if getnilinstances then
	n14 += #getnilinstances()
end

local n15

do
	local kind = typeof(isfunctionhooked)

	if kind == "number" or kind == "string" or kind == "boolean" then
		kind = "" .. isfunctionhooked
	elseif kind == "table" then
		kind = "{}"
	elseif kind == "function" then
		kind = "function: " .. (tostring(isfunctionhooked):match("0x%x+") or "0x1")
	end

	local n16 = 0

	for i = 4, #kind do
		local v12 = kind:byte(i)
		local n17 = n16 * 16
		local n18 = v12 >= 65 and v12 <= 70 and v12 - 65 + 10 or v12 >= 48 and v12 <= 57 and v12 - 48

		if not n18 then
			n18 = v12 >= 97 and v12 <= 102 and v12 - 97 + 10
		end

		n16 = (n17 + (n18 or 0)) % 9007199254740991
	end

	n15 = n11 / 1000 // 1 % 100000 + n16 / 1000000000000061 // 1 * 67 + 1 + 1
end

wait(0.1)

if getscriptbytecode then
	local character = game:GetService("Players").LocalPlayer.Character
	character = character and character:FindFirstChild("Animate")
	character = character and getscriptbytecode(character)

	if type(character) == "string" then
		n15 += #character
	end
end

tbl["\u{DFE}ဟഁໍణ௪൧"]:SetTeleportSetting("ฦဴೊஔ\u{CD8}బ", n14)

if attribute % attribute ~= 0 then
	fn("J2_MS22")
	LPH_CRASH()
end

if n14 % n14 ~= 0 then
	fn("J2_MS22")
	LPH_CRASH()
end

local n16 = (attribute + n14) // 1

if type(n16) ~= "number" then
	fn("J2_HP1")
	LPH_CRASH()
end

if n16 * 0 ~= 0 == true then
	fn("J2_HP1")
	LPH_CRASH()
end

if n16 ~= n16 // 1 then
	fn("J2_HP1")
	LPH_CRASH()
end

if (not tostring(attribute):match("^%d+$") or not tostring(n14):match("^%d+$")) == true then
	fn("J2_MS08")
	LPH_CRASH()
end

if attribute // 1 ~= attribute then
	fn("J2_MS11")
	LPH_CRASH()
end

if v9 // 1 ~= v9 then
	fn("J2_MS11")
	LPH_CRASH()
end

if n14 // 1 ~= n14 then
	fn("J2_MS11")
	LPH_CRASH()
end

if not rawequal(attribute, attribute) or not rawequal(v9, getfenv()[391]) then
	fn("J2_REQ1")
	LPH_CRASH()
end

if not rawequal(n14, n14) == true then
	fn("J2_REQ1")
	LPH_CRASH()
end

if attribute * 0 ~= 0 or v9 * 0 ~= 0 or v10 * 0 ~= 0 then
	fn("J2_120")
	LPH_CRASH()
end

if (n11 * 0 ~= 0 or n14 * 0 ~= 0) == true then
	fn("J2_120")
	LPH_CRASH()
end

if attribute + 0 ~= attribute then
	fn("J2_098")
	LPH_CRASH()
end

if n14 + 0 ~= n14 then
	fn("J2_098")
	LPH_CRASH()
end

if attribute < 1 or attribute > 9999999 or v9 < 1 or v9 > 9999999 or v10 < 1 or v10 > 937433 or v10 % 1 ~= 0 or n11 < 0 then
	fn("J2_011")
	LPH_CRASH()
end

if not (not (n11 > 1000000) and not (n11 % 1 ~= 0) and not (n13 < 1) and not (n13 > 1e9) and not (n15 < 2) and not (n15 > 1e9) and not (n14 < 1) and not (n14 > 99999999)) then
	fn("J2_011")
	LPH_CRASH()
end

if not (not (attribute - part:GetAttribute("_32940051") ~= 0) and not (n14 - n14 ~= 0)) then
	fn("J2_164")
	LPH_CRASH()
end

if attribute / attribute ~= 1 then
	fn("J2_123")
	LPH_CRASH()
end

if n14 / n14 ~= 1 == true then
	fn("J2_123")
	LPH_CRASH()
end

if (type(attribute) ~= "number" or type(v9) ~= "number" or type(v10) ~= "number" or type(n11) ~= "number" or type(n13) ~= "number" or type(n15) ~= "number" or type(n14) ~= "number") == true then
	fn("J2_SOF3")
	LPH_CRASH()
end

local n17 = 0

for k in {
	[attribute] = true,
	[v9] = true,
	[v10] = true,
	[n11] = true,
	[n13] = true,
	[n15] = true,
	[n14] = true,
}, nil, nil do
	n17 += 1
end

if n17 < 4 then
	fn("J2_162")
	LPH_CRASH()
end

n2 += 54
tbl["\u{DFE}ဟഁໍణ௪൧"]:SetTeleportSetting("၉దୂછ\u{D53}ു", tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("၉దୂછ\u{D53}ു") .. "u9mT2wA7pv6kKJkGy")

if fn3(attribute, n14, 587626) or attribute == n14 or n14 .. "" == attribute then
	fn("J2_MS04")
	LPH_CRASH()
end

n2 += 26
tbl["\u{DFE}ဟഁໍణ௪൧"]:SetTeleportSetting("၉దୂછ\u{D53}ു", tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("၉దୂછ\u{D53}ു") .. "KkiLcyr")
tbl["\u{DFE}ဟഁໍణ௪൧"]:SetTeleportSetting("൹៶\u{EF0}ಀឬဇ", (n15 // 10000 + 1 + attribute + n14 + n13 // 10000 + 1 + n11 + v10 + #getgenv().SCRIPT_KEY + v9) / 100000 * 1000 * 0.2 // 1)
part:SetAttribute("_4bc933f2", attribute % 999999)
part:SetAttribute("_95193079", v10 % 999999)
part:SetAttribute("_a01dd837", n11 % 999999)
part:SetAttribute("_0ff4262c", bit32.bxor(n13 % 999999, n15 % 999999))
local sound
sound = Instance.new("Sound")
sound.Name = "_f855bad1bfeb" .. n14 % 10000
sound.Volume = n13 % 100 / 100
sound.Pitch = n15 % 200 / 100
sound.TimePosition = attribute % 1000 / 10
local teleportOptions
teleportOptions = Instance.new("TeleportOptions")

teleportOptions:SetTeleportData({
	_639c08c9934a = attribute % 999999 .. "_" .. getfenv()[391] % 999999,
	_fc64b4bb60eb = v10 % 999999,
	_e69ff9e6ab27 = n11 % 999999,
	_49675f438ee9 = bit32.bxor(n13 % 999999, n14 % 999999),
	_ed8336914229 = bit32.bxor(bit32.bxor(attribute % 999999, v10 % 999999), n15 % 999999),
	_18b7fa8f9c66 = os.time(),
	_1f249a2dfdcd = n13 % 10000 .. n15 % 10000,
})

local proxy
proxy = newproxy(true)
local intValue
intValue = Instance.new("IntValue")
local v12
v12 = nil
local frame
frame = Instance.new("Frame")
intValue.Name = (attribute + v9 + v10 + n11 + n13 // 10000 + 1 + n15 // 10000 + 1 + n14 + #getgenv().SCRIPT_KEY) / 100000 * 1000 * 0.2 // 1
n2 += 8
tbl["\u{DFE}ဟഁໍణ௪൧"]:SetTeleportSetting("၉దୂછ\u{D53}ു", tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("၉దୂછ\u{D53}ു") .. "hqelM4ZM73U3R")
getfenv()[560] = attribute
getfenv()[66] = v9
getfenv()[366] = bit32.bxor(n11 % 4294967295, n14 % 4294967295)

do
	local bxor = bit32.bxor
	local bxor2 = bit32.bxor
	getfenv()[88] = bxor(bit32.bxor(attribute % 4294967295, v9 % 4294967295), bxor2(v10 % 4294967295, n14 % 4294967295))
end

debug.setmemorycategory("_mjQKAUms" .. tostring((attribute % 202988 * 39 + 1487) % 202988))
n2 += 38
tbl["\u{DFE}ဟഁໍణ௪൧"]:SetTeleportSetting("၉దୂછ\u{D53}ു", tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("၉దୂછ\u{D53}ു") .. "DxusKIShd9Ph173NNG")
tbl["\u{DFE}ဟഁໍణ௪൧"]:SetTeleportSetting("၉దୂછ\u{D53}ു", tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("၉దୂછ\u{D53}ു") .. "hAVmWl8pnXneIa")

if fn12({}, 681083) == "" then
	fn("J2_224")
	LPH_CRASH()
end

n2 += 48
tbl["\u{DFE}ဟഁໍణ௪൧"]:SetTeleportSetting("၉దୂછ\u{D53}ു", tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("၉దୂછ\u{D53}ു") .. "cEQ4E")

if debug.info(1, "l") ~= v7 or debug.info(1, "l") ~= v then
	fn("J2_145")
	LPH_CRASH()
end

local v13
v13 = debug.info(1, "l")

if restorefunction then
	pcall(restorefunction, request)
end

if isfunctionhooked and isfunctionhooked(request) then
	fn("J2_039")
	LPH_CRASH()
end

local configuration
configuration = Instance.new("Configuration")
local v14

do
	local n18 = 0
	tbl._87491c24f33a:SetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.RightTrigger, v10 % 908834 / 908834)
	tbl._237e9c21a85f = tbl._87491c24f33a:GetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.RightTrigger)

	if tbl._237e9c21a85f == nil or tbl._237e9c21a85f == v10 % 908834 / 908834 then
		fn("J2_223")
		LPH_CRASH()
	end

	if not (tbl._a7d55cc2bb31:HasItem(tbl._fc490c4ae1fe) and tbl._a7d55cc2bb31:GetItem(tbl._fc490c4ae1fe, "_nS5VQGeqWkIk677") == tostring(bit32.bxor(attribute, 3164921204))) and not identifyexecutor():match("^Synapse") then
		fn("J2_SOF4")
		LPH_CRASH()
	end

	local bxor = bit32.bxor
	tbl._a7d55cc2bb31:SetItem(tbl._fc490c4ae1fe, tostring(bit32.bxor(bit32.bxor(n15, n14, n11), bit32.bxor(v10, v9, n13), bxor(attribute, 3164955069))))
	local v15 = tostring
	local bxor2 = bit32.bxor
	local bxor3 = bit32.bxor

	if (tbl._a7d55cc2bb31:GetItem(tbl._fc490c4ae1fe, "_GqWxILVValSxVWa") == v15(bxor2(bit32.bxor(n15, n14, n11), bit32.bxor(v10, v9, n13), bxor3(attribute, 3164955069))) and tbl._a7d55cc2bb31:HasItem(tbl._fc490c4ae1fe)) ~= true and not identifyexecutor():match("^Synapse") then
		fn("J2_RV2")
		LPH_CRASH()
	end

	local function fn14()
		error("devirt: storing a non-empty VM table into a register (at 90:35974)")
	end

	v14 = fn14(461981, tbl._f2f010623bb9)
end

tbl._f2f010623bb9 = nil
local n18

do
	local str5 = tostring(v14._d896e278fd4079a39a5526bd or "")
	local str6 = tostring(v14._fbf1fe80cdce9b14352ce0a9 or "")
	n18 = (#str5 * 33 + #str6 * 65 + (str6:byte(#str6) or 0) * 75 + (type(v14._2419ac5e6a1163d5d41cc103) == "number" and v14._2419ac5e6a1163d5d41cc103 % 1159319 or 0) * 101 + (str5:byte(1) or 0) * 29 + (type(v14._573954519c2d90d6741859d7) == "number" and v14._573954519c2d90d6741859d7 % 1022799 or 0) * 53 + (type(v14._8400a93eec51e296adfcc3ad) == "number" and v14._8400a93eec51e296adfcc3ad % 958511 or 0) * 121) % 2147483629
end

if (function()
	local n19 = 31
	local n20 = nil
	local n21 = nil
	local n22 = nil
	local n23 = nil
	local n24 = nil
	local n25 = nil
	local n26 = nil
	local v15 = nil
	local v16 = nil
	local v17 = nil
	local v18 = nil
	local n27 = nil
	local v19 = nil
	local bxor = nil
	local n28 = nil
	local n29 = nil

	while true do
		local flag5 = false
		local exitTo = nil

		while true do
			if not flag5 then
				if not (n19 <= 35) then
					if not (n19 <= 41) then
						if not (n19 <= 44) then
							if not (n19 <= 45) then
								if not (n19 <= 46) then
									local getTeleportSetting = tbl["\u{DFE}ဟഁໍణ௪൧"].GetTeleportSetting
									local v20 = getTeleportSetting(getTeleportSetting, "\u{B7F}ቮဨညఒາ\u{EEE}")
									n19 = 27
									n20 = 2933973557
									n21 = 995990515
									n22 = 2062773448
									n23 = 149229512
									n24 = 1751127030
									n25 = 1949993441
									n26 = 2843857617
									v18 = v20
									flag5 = n19 <= 23
								elseif not (v19 % 2 == 1) then
									exitTo = 16
									break
								else
									n19 = 32
									flag5 = n19 <= 23
								end
							else
								exitTo = 15
								break
							end
						elseif not (n19 <= 42) then
							if not (n19 <= 43) then
								local v20 = fn2
								local flag6 = not v14._d96658a6f22fc0489eeb02b6

								if not flag6 then
									local v21 = v20
									n19 = 40
									n27 = flag6
									n29 = v21
								else
									local v21 = v20
									n19 = 6
									n29 = v21
								end

								flag5 = n19 <= 23
							else
								exitTo = 14
								break
							end
						else
							n19 = 38
							n28 = (n28 * 5 + 6979400) % 16777213
							n29 = (127038655 - v19) % 268435456 * 8 + 5
							flag5 = n19 <= 23
						end
					elseif not (n19 <= 38) then
						if not (n19 <= 39) then
							if not (n19 <= 40) then
								exitTo = 12
								break
							elseif not n27 then
								exitTo = 13
								break
							else
								if not n27 then
									n23 %= 4294967296
								end

								n19 = 30
								flag5 = n19 <= 23
							end
						else
							n19 = 38
							n28 = (n28 * 5 + 5829385) % 16777213
							n29 = bxor(107830509, v19) * 8 + 1
							flag5 = n19 <= 23
						end
					elseif not (n19 <= 36) then
						if not (n19 <= 37) then
							if not (n29 == (127038655 - v19) % 268435456 * 8 + 5) then
								n19 = 18
								flag5 = true
							else
								n19 = 37
								flag5 = n19 <= 23
							end
						elseif not (n28 ~= 5773550) then
							n19 = 11
							flag5 = true
						else
							n19 = 2
							flag5 = n19 <= 23
						end
					else
						local getTeleportSetting = tbl["\u{DFE}ဟഁໍణ௪൧"].GetTeleportSetting
						local v20 = getTeleportSetting(getTeleportSetting, "ትఊఆૠఢସඨ")
						n19 = 23
						n20 = 2933973557
						n21 = 995990515
						n22 = 3213044703
						n23 = 149229512
						n24 = 1751127030
						n25 = 1949993441
						n26 = 2843857617
						v18 = v20
						flag5 = n19 <= 23
					end
				elseif not (n19 <= 29) then
					if not (n19 <= 32) then
						if not (n19 <= 33) then
							if not (n19 <= 34) then
								if not (n29 == bxor(215553582, v19) * 8 + 6) then
									n19 = 14
									flag5 = true
								else
									n19 = 44
									flag5 = n19 <= 23
								end
							else
								exitTo = 11
								break
							end
						else
							local v20 = bit32.bxor(183609351, n26 + 231900248)
							local v21 = table.pack(bit32.band(n23, 4294967295))
							local v22 = table.pack(bit32.band(v20, 4294967295))
							local v23 = table.pack(bit32.band(v21[1], 65535))
							local v24 = table.pack(bit32.rshift(v21[1], 16))
							local v25 = table.pack(bit32.band(v22[1], 65535))
							local n30 = (n25 + n24 + bit32.band(v23[1] * v25[1] + bit32.lshift(bit32.band(v23[1] * bit32.rshift(v22[1], 16) + v24[1] * v25[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
							local n31 = v17 * 67108864
							local n32 = 1 - 2 * v16

							if n29(n27, v18, n32 * n32) then
								n19 = 9
								flag5 = true
							else
								n19 = 17
								flag5 = n19 <= 23
							end
						end
					else
						if not (n19 <= 30) then
							if not (n19 <= 31) then
								n19 = 38
								n28 = (n28 + 6090993) % 16777213
								n29 = (10855450 + v19) % 268435456 * 8 + 0
							else
								local n30 = n18 % 268435456
								n19 = 18
								v19 = n30
								bxor = bit32.bxor
								n28 = 2213787
								n29 = (89616760 + n30) % 268435456 * 8 + 0
							end
						else
							local getTeleportSetting = tbl["\u{DFE}ဟഁໍణ௪൧"].GetTeleportSetting
							local v20 = getTeleportSetting(getTeleportSetting, "ऒච৽౿প៨")
							n19 = 0
							n20 = 2933973557
							n21 = 995990515
							n22 = 2711609085
							n23 = 149229512
							n24 = 1751127030
							n25 = 1949993441
							n26 = 2843857617
							v18 = v20
						end

						flag5 = n19 <= 23
					end
				elseif not (n19 <= 26) then
					if not (n19 <= 27) then
						if not (n19 <= 28) then
							local v20 = table.pack(bit32.band(n24, 4294967295))
							local v21 = table.pack(bit32.band(n23, 4294967295))
							local v22 = table.pack(bit32.band(v20[1], 65535))
							local v23 = table.pack(bit32.rshift(v20[1], 16))
							local v24 = table.pack(bit32.band(v21[1], 65535))
							local n30 = bit32.band(v22[1] * v24[1] + bit32.lshift(bit32.band(v22[1] * bit32.rshift(v21[1], 16) + v23[1] * v24[1], 65535), 16), 4294967295) % 4294967296
							local v25 = table.pack(bit32.band(bit32.bxor(1259052799, n26 + 1314147152), 4294967295))
							local v26 = table.pack(bit32.band(v25[1], 65535))
							local n31 = (n25 + n30 + bit32.band(52511 * v26[1] + bit32.lshift(bit32.band(52511 * bit32.rshift(v25[1], 16) + 48029 * v26[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
							local n32 = v17 % 4294967296
							local v27 = table.pack(bit32.band(n32 + 231900248, 4294967295))
							local v28 = table.pack(bit32.band(v27[1], 65535))
							local n33 = 2540627129 + bit32.band(23871 * v28[1] + bit32.lshift(bit32.band(23871 * bit32.rshift(v27[1], 16) + 37300 * v28[1], 65535), 16), 4294967295) % 4294967296
							local v29 = table.pack(bit32.band(bit32.band(n32 + 231900248, 183609351), 4294967295))
							local v30 = table.pack(bit32.band(v29[1], 65535))
							n19 = 33
							n23 = 1850450626
							n24 = bit32.band(17794 * v30[1] + bit32.lshift(bit32.band(17794 * bit32.rshift(v29[1], 16) + 56471 * v30[1], 65535), 16), 4294967295) % 4294967296
							n25 = n33
							n26 = n32
							v17 = n31
							flag5 = n19 <= 23
						else
							exitTo = 10
							break
						end
					else
						local n30 = (n22 + n21 + bit32.bxor(n26, n20) + bit32.bxor(n25, 2372129226) + bit32.bxor(n24, 1810284895) + bit32.bxor(n23, 1248440564)) % 4294967296
						local n31 = n30 % 4294967296
						local v20 = table.pack(bit32.band(n31 + 2720284022, 4294967295))
						local v21 = table.pack(bit32.band(v20[1], 65535))
						n19 = 5
						n22 = n31 + 2720284022
						n23 = 2671993125
						n24 = 2
						n25 = 1622974171 + bit32.band(2930 * v21[1] + bit32.lshift(bit32.band(2930 * bit32.rshift(v20[1], 16) + 31523 * v21[1], 65535), 16), 4294967295) % 4294967296
						n26 = n31
						v17 = n30
						flag5 = n19 <= 23
					end
				else
					if not (n19 <= 24) then
						if not (n19 <= 25) then
							local v20 = bit32.band(n23, n22)
							local v21 = table.pack(bit32.band(n24, 4294967295))
							local v22 = table.pack(bit32.band(v20, 4294967295))
							local v23 = table.pack(bit32.band(v21[1], 65535))
							local v24 = table.pack(bit32.rshift(v21[1], 16))
							local v25 = table.pack(bit32.band(v22[1], 65535))
							local n30 = bit32.band(v23[1] * v25[1] + bit32.lshift(bit32.band(v23[1] * bit32.rshift(v22[1], 16) + v24[1] * v25[1], 65535), 16), 4294967295) % 4294967296
							local v26 = table.pack(bit32.band(bit32.bxor(3925281003, n26 + 2823300645), 4294967295))
							local v27 = table.pack(bit32.band(v26[1], 65535))
							local n31 = (n25 + n30 + bit32.band(23980 * v27[1] + bit32.lshift(bit32.band(23980 * bit32.rshift(v26[1], 16) + 49541 * v27[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
							local n32 = v17 % 4294967296
							local v28 = table.pack(bit32.band(n32 + 3773511009, 4294967295))
							local v29 = table.pack(bit32.band(v28[1], 65535))
							local n33 = 3216314221 + bit32.band(1915 * v29[1] + bit32.lshift(bit32.band(1915 * bit32.rshift(v28[1], 16) + 5180 * v29[1], 65535), 16), 4294967295) % 4294967296
							local v30 = table.pack(bit32.band(bit32.band(n32 + 3773511009, 580525111), 4294967295))
							local v31 = table.pack(bit32.band(v30[1], 65535))
							n19 = 19
							n24 = bit32.band(63620 * v31[1] + bit32.lshift(bit32.band(63620 * bit32.rshift(v30[1], 16) + 60355 * v31[1], 65535), 16), 4294967295) % 4294967296
							n25 = n33
							n26 = n32
							v16 = n31
						else
							local v20 = bit32.bor(n23, n22)
							local v21 = table.pack(bit32.band(n24, 4294967295))
							local v22 = table.pack(bit32.band(v20, 4294967295))
							local v23 = table.pack(bit32.band(v21[1], 65535))
							local v24 = table.pack(bit32.rshift(v21[1], 16))
							local v25 = table.pack(bit32.band(v22[1], 65535))
							local n30 = bit32.band(v23[1] * v25[1] + bit32.lshift(bit32.band(v23[1] * bit32.rshift(v22[1], 16) + v24[1] * v25[1], 65535), 16), 4294967295) % 4294967296
							local v26 = table.pack(bit32.band(bit32.bxor(3023681210, n26 + 2423135430), 4294967295))
							local v27 = table.pack(bit32.band(v26[1], 65535))
							local n31 = (n25 + n30 + bit32.band(60584 * v27[1] + bit32.lshift(bit32.band(60584 * bit32.rshift(v26[1], 16) + 41207 * v27[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
							local n32 = v17 % 4294967296
							local v28 = table.pack(bit32.band(n32 + 2743011071, 4294967295))
							local v29 = table.pack(bit32.band(v28[1], 65535))
							n19 = 10
							n22 = 3341970659
							n23 = 2147483647
							n24 = bit32.band(0 * v29[1] + bit32.lshift(bit32.band(0 * bit32.rshift(v28[1], 16) + 32768 * v29[1], 65535), 16), 4294967295) % 4294967296
							n25 = 4294967295
							n26 = n32
							v15 = n31
						end
					else
						local v20 = fn2
						local fbf1fe80cdce9b14352ce0a9 = v14._fbf1fe80cdce9b14352ce0a9

						if not fbf1fe80cdce9b14352ce0a9 then
							local v21 = v20
							n19 = 13
							n29 = v21
						else
							local v21 = v20
							n19 = 47
							n27 = fbf1fe80cdce9b14352ce0a9
							n29 = v21
						end
					end

					flag5 = n19 <= 23
				end
			else
				if not (n19 <= 11) then
					if not (n19 <= 17) then
						if not (n19 <= 20) then
							if not (n19 <= 21) then
								if not (n19 <= 22) then
									local n30 = (n22 + n21 + bit32.bxor(n26, n20) + bit32.bxor(n25, 2372129226) + bit32.bxor(n24, 1810284895) + bit32.bxor(n23, 1248440564)) % 4294967296
									local n31 = n30 % 4294967296
									local v20 = table.pack(bit32.band(n31 + 2823300645, 4294967295))
									local v21 = table.pack(bit32.band(v20[1], 65535))
									n19 = 26
									n22 = n31 + 2823300645
									n23 = 3925281003
									n24 = 2198518614
									n25 = 749251591 + bit32.band(41557 * v21[1] + bit32.lshift(bit32.band(41557 * bit32.rshift(v20[1], 16) + 15994 * v21[1], 65535), 16), 4294967295) % 4294967296
									n26 = n31
									v17 = n30
									flag5 = n19 <= 23
									continue
								else
									local v20 = bit32.bxor(n22, n26 + 3252640722)
									local v21 = table.pack(bit32.band(n23, 4294967295))
									local v22 = table.pack(bit32.band(v20, 4294967295))
									local v23 = table.pack(bit32.band(v21[1], 65535))
									local v24 = table.pack(bit32.rshift(v21[1], 16))
									local v25 = table.pack(bit32.band(v22[1], 65535))
									local n30 = (n25 + n24 + bit32.band(v23[1] * v25[1] + bit32.lshift(bit32.band(v23[1] * bit32.rshift(v22[1], 16) + v24[1] * v25[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
									local n31 = v17 * 67108864
									local n32 = 1 - 2 * v16

									if n29(n27, v18, n32 * n32) then
										exitTo = 9
										break
									else
										n19 = 45
										flag5 = n19 <= 23
										continue
									end
								end
							else
								exitTo = 8
								break
							end
						elseif not (n19 <= 18) then
							if not (n19 <= 19) then
								local v20 = bit32.band(n23, 823015293)
								local v21 = table.pack(bit32.band(n24, 4294967295))
								local v22 = table.pack(bit32.band(v20, 4294967295))
								local v23 = table.pack(bit32.band(v21[1], 65535))
								local v24 = table.pack(bit32.rshift(v21[1], 16))
								local v25 = table.pack(bit32.band(v22[1], 65535))
								local n30 = bit32.band(v23[1] * v25[1] + bit32.lshift(bit32.band(v23[1] * bit32.rshift(v22[1], 16) + v24[1] * v25[1], 65535), 16), 4294967295) % 4294967296
								local v26 = table.pack(bit32.band(bit32.bxor(823015293, n26 + 222470553), 4294967295))
								local v27 = table.pack(bit32.band(v26[1], 65535))
								local n31 = (n25 + n30 + bit32.band(14628 * v27[1] + bit32.lshift(bit32.band(14628 * bit32.rshift(v26[1], 16) + 42923 * v27[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
								local n32 = v17 % 4294967296
								local v28 = table.pack(bit32.band(n32 + 2423135430, 4294967295))
								local v29 = table.pack(bit32.band(v28[1], 65535))
								n19 = 25
								n22 = 3023681210
								n23 = n32 + 2423135430
								n24 = 3188729522
								n25 = 1401924438 + bit32.band(60583 * v29[1] + bit32.lshift(bit32.band(60583 * bit32.rshift(v28[1], 16) + 41207 * v29[1], 65535), 16), 4294967295) % 4294967296
								n26 = n32
								v16 = n31
							else
								local v20 = table.pack(bit32.band(bit32.bor(n26 + 3773511009, 580525111), 4294967295))
								local v21 = table.pack(bit32.band(v20[1], 65535))
								local n30 = (n25 + n24 + bit32.band(63622 * v21[1] + bit32.lshift(bit32.band(63622 * bit32.rshift(v20[1], 16) + 60355 * v21[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
								local n31 = v17 % 4294967296
								local v22 = table.pack(bit32.band(n31 + 2679610549, 4294967295))
								local v23 = table.pack(bit32.band(v22[1], 65535))
								local n32 = 3776876411 + bit32.band(11090 * v23[1] + bit32.lshift(bit32.band(11090 * bit32.rshift(v22[1], 16) + 51929 * v23[1], 65535), 16), 4294967295) % 4294967296
								local v24 = table.pack(bit32.band(bit32.band(3776876411, n31 + 2679610549), 4294967295))
								local v25 = table.pack(bit32.band(v24[1], 65535))
								n19 = 8
								n22 = 3403230033
								n23 = 3403230033
								n24 = bit32.band(65534 * v25[1] + bit32.lshift(bit32.band(65534 * bit32.rshift(v24[1], 16) + 65535 * v25[1], 65535), 16), 4294967295) % 4294967296
								n25 = n32
								n26 = n31
								v15 = n30
							end

							flag5 = n19 <= 23
							continue
						elseif not (n29 == (10855450 + v19) % 268435456 * 8 + 0) then
							n19 = 15
							flag5 = true
							continue
						else
							n19 = 4
							flag5 = n19 <= 23
							continue
						end
					elseif not (n19 <= 14) then
						if not (n19 <= 15) then
							if not (n19 <= 16) then
								exitTo = 7
								break
							else
								local v20 = bit32.band(n23, 127310850)
								local v21 = table.pack(bit32.band(n24, 4294967295))
								local v22 = table.pack(bit32.band(v20, 4294967295))
								local v23 = table.pack(bit32.band(v21[1], 65535))
								local v24 = table.pack(bit32.rshift(v21[1], 16))
								local v25 = table.pack(bit32.band(v22[1], 65535))
								local n30 = bit32.band(v23[1] * v25[1] + bit32.lshift(bit32.band(v23[1] * bit32.rshift(v22[1], 16) + v24[1] * v25[1], 65535), 16), 4294967295) % 4294967296
								local v26 = table.pack(bit32.band(bit32.bxor(127310850, n26 + 175600739), 4294967295))
								local v27 = table.pack(bit32.band(v26[1], 65535))
								local n31 = (n25 + n30 + bit32.band(20307 * v27[1] + bit32.lshift(bit32.band(20307 * bit32.rshift(v26[1], 16) + 47567 * v27[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
								local n32 = v17 % 4294967296
								local v28 = table.pack(bit32.band(n32 + 1314147152, 4294967295))
								local v29 = table.pack(bit32.band(v28[1], 65535))
								local n33 = 518925086 + bit32.band(13026 * v29[1] + bit32.lshift(bit32.band(13026 * bit32.rshift(v28[1], 16) + 17506 * v29[1], 65535), 16), 4294967295) % 4294967296
								n19 = 29
								n23 = bit32.band(1259052799, n32 + 1314147152)
								n24 = 2000394812
								n25 = n33
								n26 = n32
								v15 = n31
								flag5 = n19 <= 23
								continue
							end
						elseif not (n29 == bxor(107830509, v19) * 8 + 1) then
							exitTo = 6
							break
						else
							n19 = 1
							flag5 = n19 <= 23
							continue
						end
					elseif not (n19 <= 12) then
						if not (n19 <= 13) then
							if not (n29 == (89616760 + v19) % 268435456 * 8 + 0) then
								n19 = 21
								flag5 = true
								continue
							else
								n19 = 24
								flag5 = n19 <= 23
								continue
							end
						else
							exitTo = 5
							break
						end
					else
						n19 = 7
						n27 = 1144672
						flag5 = true
						continue
					end
				elseif not (n19 <= 5) then
					if not (n19 <= 8) then
						if not (n19 <= 9) then
							if not (n19 <= 10) then
								exitTo = 4
								break
							else
								local v20 = bit32.bxor(n22, n26 + 2743011071)
								local v21 = bit32.bnot(v20)
								local v22 = table.pack(bit32.band(n23, 4294967295))
								local v23 = table.pack(bit32.band(v21, 4294967295))
								local v24 = table.pack(bit32.band(v22[1], 65535))
								local v25 = table.pack(bit32.rshift(v22[1], 16))
								local v26 = table.pack(bit32.band(v23[1], 65535))
								local n30 = (n25 + n24 + bit32.band(v24[1] * v26[1] + bit32.lshift(bit32.band(v24[1] * bit32.rshift(v23[1], 16) + v25[1] * v26[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
								local n31 = v17 % 4294967296
								local v27 = table.pack(bit32.band(n31 + 2836338882, 4294967295))
								local v28 = table.pack(bit32.band(v27[1], 65535))
								local n32 = 1829188610 + bit32.band(49883 * v28[1] + bit32.lshift(bit32.band(49883 * bit32.rshift(v27[1], 16) + 351 * v28[1], 65535), 16), 4294967295) % 4294967296
								local v29 = table.pack(bit32.band(bit32.band(n31 + 2836338882, 3436883622), 4294967295))
								local v30 = table.pack(bit32.band(v29[1], 65535))
								n19 = 3
								n22 = 3436883622
								n23 = 4271914278
								n24 = bit32.band(15652 * v30[1] + bit32.lshift(bit32.band(15652 * bit32.rshift(v29[1], 16) + 65184 * v30[1], 65535), 16), 4294967295) % 4294967296
								n25 = n32
								n26 = n31
								v17 = n30
								flag5 = n19 <= 23
								continue
							end
						else
							n19 = 38
							n28 = (n28 * 5 + 4494167) % 16777213
							n29 = bxor(215553582, v19) * 8 + 6
							flag5 = n19 <= 23
							continue
						end
					elseif not (n19 <= 6) then
						if not (n19 <= 7) then
							local v20 = bit32.bnot(n26 + 2679610549)
							local v21 = table.pack(bit32.band(n22, 4294967295))
							local v22 = table.pack(bit32.band(v20, 4294967295))
							local v23 = table.pack(bit32.band(v21[1], 65535))
							local v24 = table.pack(bit32.rshift(v21[1], 16))
							local v25 = table.pack(bit32.band(v22[1], 65535))
							local n30 = (n25 + n24 + n23 + bit32.band(v23[1] * v25[1] + bit32.lshift(bit32.band(v23[1] * bit32.rshift(v22[1], 16) + v24[1] * v25[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
							local n31 = v17 % 4294967296
							local v26 = table.pack(bit32.band(n31 + 3252640722, 4294967295))
							local v27 = table.pack(bit32.band(v26[1], 65535))
							local n32 = 395536024 + bit32.band(42753 * v27[1] + bit32.lshift(bit32.band(42753 * bit32.rshift(v26[1], 16) + 4226 * v27[1], 65535), 16), 4294967295) % 4294967296
							local v28 = table.pack(bit32.band(bit32.band(59653784, n31 + 3252640722), 4294967295))
							local v29 = table.pack(bit32.band(v28[1], 65535))
							n19 = 22
							n22 = 59653784
							n23 = 4017969408
							n24 = bit32.band(45566 * v29[1] + bit32.lshift(bit32.band(45566 * bit32.rshift(v28[1], 16) + 57082 * v29[1], 65535), 16), 4294967295) % 4294967296
							n25 = n32
							n26 = n31
							v17 = n30
							flag5 = n19 <= 23
							continue
						elseif not n27 then
							exitTo = 3
							break
						else
							n19 = 36
							flag5 = n19 <= 23
							continue
						end
					else
						exitTo = 2
						break
					end
				elseif not (n19 <= 2) then
					if not (n19 <= 3) then
						if not (n19 <= 4) then
							local v20 = bit32.bor(n23, n22)
							local v21 = table.pack(bit32.band(n24, 4294967295))
							local v22 = table.pack(bit32.band(v20, 4294967295))
							local v23 = table.pack(bit32.band(v21[1], 65535))
							local v24 = table.pack(bit32.rshift(v21[1], 16))
							local v25 = table.pack(bit32.band(v22[1], 65535))
							local n30 = bit32.band(v23[1] * v25[1] + bit32.lshift(bit32.band(v23[1] * bit32.rshift(v22[1], 16) + v24[1] * v25[1], 65535), 16), 4294967295) % 4294967296
							local v26 = table.pack(bit32.band(bit32.bnot(n26 + 2720284022), 4294967295))
							local v27 = table.pack(bit32.band(v26[1], 65535))
							local n31 = (n25 + n30 + 2065894259 + bit32.band(2931 * v27[1] + bit32.lshift(bit32.band(2931 * bit32.rshift(v26[1], 16) + 31523 * v27[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
							local n32 = v17 % 4294967296
							local v28 = table.pack(bit32.band(n32 + 175600739, 4294967295))
							local v29 = table.pack(bit32.band(v28[1], 65535))
							n19 = 16
							n23 = n32 + 175600739
							n24 = 1939775140
							n25 = 2147445084 + bit32.band(45230 * v29[1] + bit32.lshift(bit32.band(45230 * bit32.rshift(v28[1], 16) + 17968 * v29[1], 65535), 16), 4294967295) % 4294967296
							n26 = n32
							v16 = n31
						else
							n19 = 38
							n28 = (n28 * 5 + 8928846) % 16777213
							n29 = bxor(107830509, v19) * 8 + 1
						end

						flag5 = n19 <= 23
						continue
					else
						local v20 = bit32.bor(n22, n26 + 2836338882)
						local v21 = table.pack(bit32.band(n23, 4294967295))
						local v22 = table.pack(bit32.band(v20, 4294967295))
						local v23 = table.pack(bit32.band(v21[1], 65535))
						local v24 = table.pack(bit32.rshift(v21[1], 16))
						local v25 = table.pack(bit32.band(v22[1], 65535))
						local n30 = (n25 + n24 + bit32.band(v23[1] * v25[1] + bit32.lshift(bit32.band(v23[1] * bit32.rshift(v22[1], 16) + v24[1] * v25[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
						local n31 = v17 * 67108864
						local n32 = 1 - 2 * v16

						if n29(n27, v18, n32 * n32) then
							exitTo = 1
							break
						else
							n19 = 28
							flag5 = n19 <= 23
							continue
						end
					end
				elseif not (n19 <= 0) then
					if n19 <= 1 then
						local v20 = fn2
						local flag6 = not v14._d75b8cd135fe6c4c3d591cff

						if not flag6 then
							local v21 = v20
							n19 = 7
							n27 = flag6
							n29 = v21
						else
							local v21 = v20
							n19 = 12
							n29 = v21
						end

						flag5 = n19 <= 23
						continue
					end
				else
					local n30 = (n22 + n21 + bit32.bxor(n26, n20) + bit32.bxor(n25, 2372129226) + bit32.bxor(n24, 1810284895) + bit32.bxor(n23, 1248440564)) % 4294967296
					local n31 = n30 % 4294967296
					local v20 = table.pack(bit32.band(n31 + 222470553, 4294967295))
					local v21 = table.pack(bit32.band(v20[1], 65535))
					n19 = 20
					n23 = n31 + 222470553
					n24 = 1331065414
					n25 = 2234815721 + bit32.band(50909 * v21[1] + bit32.lshift(bit32.band(50909 * bit32.rshift(v20[1], 16) + 22612 * v21[1], 65535), 16), 4294967295) % 4294967296
					n26 = n31
					v17 = n30
					flag5 = n19 <= 23
					continue
				end

				break
			end
		end

		if exitTo == 1 then
			n19 = 46
			continue
		end

		if exitTo == 2 then
			n19 = 40
			n27 = 5063085
			continue
		end

		if exitTo == 3 then
			n19 = 43
			continue
		end

		if exitTo == 4 then
			n19 = 34
			n29 = true
			continue
		end

		if exitTo == 5 then
			n19 = 47
			n27 = ""
			continue
		end

		if exitTo == 6 then
			n19 = 35
			continue
		end

		if exitTo == 7 then
			fn("J2_221")
			LPH_CRASH()
		end

		if exitTo == 8 then
			fn("J2_026")
			LPH_CRASH()
		end

		if exitTo == 9 then
			n19 = 42
			continue
		end

		if exitTo == 10 then
			fn("J2_190")
			LPH_CRASH()
		end

		if exitTo == 11 then
			return n29
		end

		if exitTo == 12 then
			n19 = 30
			n27 = 5065051
			continue
		end

		if exitTo == 13 then
			n19 = 41
			continue
		end

		if exitTo == 14 then
			n19 = 36
			n27 = 1155829
			continue
		end

		if exitTo == 15 then
			fn("J2_019")
			LPH_CRASH()
		end

		if exitTo == 16 then
			n19 = 39
			continue
		end
		break
	end

	fn("J2_SOF1")
	LPH_CRASH()
end)() ~= true then
	return 0
end

local flag5 = tbl._a7d55cc2bb31:GetItem(tbl._fc490c4ae1fe, "_V3NCw6d98kk4T5o") == "_V3NCw6d98kk4T5o"

if not flag5 then
	local v15 = tostring
	local bxor = bit32.bxor
	local bxor2 = bit32.bxor
	flag5 = tbl._a7d55cc2bb31:GetItem(tbl._fc490c4ae1fe, "_V3NCw6d98kk4T5o") ~= v15(bxor(bit32.bxor(v10, v9, n11), bit32.bxor(n14, n15, 3164992998), bxor2(attribute, n13)))
end

if flag5 and not identifyexecutor():match("^Synapse") then
	fn("J2_052")
	LPH_CRASH()
end

local bxor = bit32.bxor
tbl._a7d55cc2bb31:SetItem(tbl._fc490c4ae1fe, tostring(bit32.bxor(bit32.bxor(attribute, v9, n13), bit32.bxor(3165001775, v10, n18), bxor(n14, n11, n15))))
local flag6 = tbl._a7d55cc2bb31:HasItem(tbl._fc490c4ae1fe)

if flag6 then
	local v15 = tostring
	local bxor2 = bit32.bxor
	local bxor3 = bit32.bxor
	flag6 = tbl._a7d55cc2bb31:GetItem(tbl._fc490c4ae1fe, "_gqkLmXyC2rfUgkZ") == v15(bxor2(bit32.bxor(attribute, v9, n13), bit32.bxor(3165001775, v10, n18), bxor3(n14, n11, n15)))
end

if not flag6 and not identifyexecutor():match("^Synapse") then
	fn("J2_042")
	LPH_CRASH()
end

n2 += 17
tbl["\u{DFE}ဟഁໍణ௪൧"]:SetTeleportSetting("၉దୂછ\u{D53}ു", tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("၉దୂછ\u{D53}ു") .. "e0mNfS9gd8A")

if debug.info(1, "l") ~= v13 or debug.info(1, "l") ~= v then
	fn("J2_004")
	LPH_CRASH()
end

debug.info(1, "l")

if (function()
	local n19 = 39
	local n20 = nil
	local n21 = nil
	local n22 = nil
	local n23 = nil
	local n24 = nil
	local n25 = nil
	local v15 = nil
	local v16 = nil
	local v17 = nil
	local n26 = nil
	local n27 = nil
	local v18 = nil
	local v19 = nil
	local n28 = nil
	local n29 = nil

	while true do
		local flag7 = false
		local exitTo = nil

		while true do
			if not flag7 then
				if not (n19 <= 35) then
					if not (n19 <= 41) then
						if not (n19 <= 44) then
							if not (n19 <= 45) then
								if not (n19 <= 46) then
									exitTo = 19
									break
								elseif not (v18 % 2 == 1) then
									exitTo = 20
									break
								else
									n19 = 11
									flag7 = n19 <= 23
								end
							else
								exitTo = 18
								break
							end
						elseif not (n19 <= 42) then
							if not (n19 <= 43) then
								local v20 = bit32.bor(1478850060, n25 + 1276531546)
								local v21 = table.pack(bit32.band(n22, 4294967295))
								local v22 = table.pack(bit32.band(v20, 4294967295))
								local v23 = table.pack(bit32.band(v21[1], 65535))
								local v24 = table.pack(bit32.rshift(v21[1], 16))
								local v25 = table.pack(bit32.band(v22[1], 65535))
								local n30 = (n24 + n23 + bit32.band(v23[1] * v25[1] + bit32.lshift(bit32.band(v23[1] * bit32.rshift(v22[1], 16) + v24[1] * v25[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
								local n31 = v17 % 4294967296
								local v26 = table.pack(bit32.band(n31 + 3880869064, 4294967295))
								local v27 = table.pack(bit32.band(v26[1], 65535))
								local n32 = 3985484292 + bit32.band(20522 * v27[1] + bit32.lshift(bit32.band(20522 * bit32.rshift(v26[1], 16) + 14776 * v27[1], 65535), 16), 4294967295) % 4294967296
								local v28 = table.pack(bit32.band(bit32.band(4086861690, n31 + 3880869064), 4294967295))
								local v29 = table.pack(bit32.band(v28[1], 65535))
								n19 = 22
								n21 = 4086861690
								n22 = 3326586839
								n23 = bit32.band(24492 * v29[1] + bit32.lshift(bit32.band(24492 * bit32.rshift(v28[1], 16) + 35983 * v29[1], 65535), 16), 4294967295) % 4294967296
								n24 = n32
								n25 = n31
								v17 = n30
							else
								local v20 = fn2
								local n0561028e410c44cfef375d98 = v14._0561028e410c44cfef375d98

								if not n0561028e410c44cfef375d98 then
									local v21 = v20
									n19 = 15
									n26 = n0561028e410c44cfef375d98
									n27 = 3076276
									n29 = v21
								else
									local v21 = v20
									n19 = 29
									n27 = 3076276
									n29 = v21
								end
							end

							flag7 = n19 <= 23
						elseif not (n28 ~= 1539742) then
							exitTo = 17
							break
						else
							n19 = 1
							flag7 = n19 <= 23
						end
					elseif not (n19 <= 38) then
						if not (n19 <= 39) then
							if not (n19 <= 40) then
								local v20 = bit32.band(n22, 1475707508)
								local v21 = table.pack(bit32.band(n23, 4294967295))
								local v22 = table.pack(bit32.band(v20, 4294967295))
								local v23 = table.pack(bit32.band(v21[1], 65535))
								local v24 = table.pack(bit32.rshift(v21[1], 16))
								local v25 = table.pack(bit32.band(v22[1], 65535))
								local n30 = bit32.band(v23[1] * v25[1] + bit32.lshift(bit32.band(v23[1] * bit32.rshift(v22[1], 16) + v24[1] * v25[1], 65535), 16), 4294967295) % 4294967296
								local v26 = table.pack(bit32.band(bit32.bxor(1475707508, n25 + 1269714882), 4294967295))
								local v27 = table.pack(bit32.band(v26[1], 65535))
								local n31 = (n24 + n30 + bit32.band(37426 * v27[1] + bit32.lshift(bit32.band(37426 * bit32.rshift(v26[1], 16) + 58228 * v27[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
								local n32 = v17 % 4294967296
								local v28 = table.pack(bit32.band(n32 + 3454583723, 4294967295))
								local v29 = table.pack(bit32.band(v28[1], 65535))
								local n33 = 3804141152 + bit32.band(24544 * v29[1] + bit32.lshift(bit32.band(24544 * bit32.rshift(v28[1], 16) + 5472 * v29[1], 65535), 16), 4294967295) % 4294967296
								n19 = 33
								n22 = bit32.band(3660575309, n32 + 3454583723)
								n23 = 3577692224
								n24 = n33
								n25 = n32
								v16 = n31
								flag7 = n19 <= 23
							elseif not n27 then
								n19 = 13
								flag7 = true
							else
								n19 = 28
								flag7 = n19 <= 23
							end
						else
							local bxor2 = bit32.bxor
							local n30 = n18 % 268435456
							local n31 = bxor2(43528234, n30) * 8 + 3
							local v20 = bxor2
							n19 = 25
							v18 = n30
							v19 = v20
							n28 = 9943361
							n29 = n31
							flag7 = n19 <= 23
						end
					elseif not (n19 <= 36) then
						if not (n19 <= 37) then
							local flag8 = not v14._d75b8cd135fe6c4c3d591cff

							if not flag8 then
								local v20 = flag8
								n19 = 24
								n29 = v20
								flag7 = n19 <= 23
							else
								exitTo = 16
								break
							end
						else
							n19 = 0
							n27 = 17830
							flag7 = true
						end
					elseif not (n29 == (77724403 - v18) % 268435456 * 8 + 6) then
						n19 = 8
						flag7 = true
					else
						n19 = 30
						flag7 = n19 <= 23
					end
				elseif not (n19 <= 29) then
					if not (n19 <= 32) then
						if not (n19 <= 33) then
							if not (n19 <= 34) then
								exitTo = 15
								break
							else
								local n30 = (n21 + n20 + bit32.bxor(n25, 2933973557) + bit32.bxor(n24, 2372129226) + bit32.bxor(n23, 1810284895) + bit32.bxor(n22, 1248440564)) % 4294967296
								local n31 = n30 % 4294967296
								local v20 = table.pack(bit32.band(n31 + 1269714882, 4294967295))
								local v21 = table.pack(bit32.band(v20[1], 65535))
								n19 = 41
								n22 = n31 + 1269714882
								n23 = 3337167970
								n24 = 755752908 + bit32.band(28111 * v21[1] + bit32.lshift(bit32.band(28111 * bit32.rshift(v20[1], 16) + 7307 * v21[1], 65535), 16), 4294967295) % 4294967296
								n25 = n31
								v17 = n30
								flag7 = n19 <= 23
							end
						else
							local v20 = table.pack(bit32.band(n23, 4294967295))
							local v21 = table.pack(bit32.band(n22, 4294967295))
							local v22 = table.pack(bit32.band(v20[1], 65535))
							local v23 = table.pack(bit32.rshift(v20[1], 16))
							local v24 = table.pack(bit32.band(v21[1], 65535))
							local n30 = bit32.band(v22[1] * v24[1] + bit32.lshift(bit32.band(v22[1] * bit32.rshift(v21[1], 16) + v23[1] * v24[1], 65535), 16), 4294967295) % 4294967296
							local v25 = table.pack(bit32.band(bit32.bxor(3660575309, n25 + 3454583723), 4294967295))
							local v26 = table.pack(bit32.band(v25[1], 65535))
							local n31 = (n24 + n30 + bit32.band(40993 * v26[1] + bit32.lshift(bit32.band(40993 * bit32.rshift(v25[1], 16) + 60063 * v26[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
							local n32 = v17 % 4294967296
							local v27 = table.pack(bit32.band(n32 + 1276531546, 4294967295))
							local v28 = table.pack(bit32.band(v27[1], 65535))
							local n33 = 1560265784 + bit32.band(56154 * v28[1] + bit32.lshift(bit32.band(56154 * bit32.rshift(v27[1], 16) + 35666 * v28[1], 65535), 16), 4294967295) % 4294967296
							local v29 = table.pack(bit32.band(bit32.band(n32 + 1276531546, 1478850060), 4294967295))
							local v30 = table.pack(bit32.band(v29[1], 65535))
							n19 = 44
							n22 = 1957504167
							n23 = bit32.band(9381 * v30[1] + bit32.lshift(bit32.band(9381 * bit32.rshift(v29[1], 16) + 29869 * v30[1], 65535), 16), 4294967295) % 4294967296
							n24 = n33
							n25 = n32
							v15 = n31
							flag7 = n19 <= 23
						end
					elseif not (n19 <= 30) then
						if not (n19 <= 31) then
							exitTo = 13
							break
						elseif not (n29 == v19(43528234, v18) * 8 + 3) then
							exitTo = 14
							break
						else
							n19 = 43
							flag7 = n19 <= 23
						end
					else
						n19 = 18
						n28 = (n28 * 91 + 921859) % 16777213
						n29 = (263272204 + v18) % 268435456 * 8 + 2
						flag7 = n19 <= 23
					end
				elseif not (n19 <= 26) then
					if not (n19 <= 27) then
						if not (n19 <= 28) then
							n19 = 15
							n26 = 0
							flag7 = true
						else
							local getAttribute = configuration.GetAttribute

							if not (n29 + n27 ~= getAttribute(getAttribute, "_773b131ca836")) then
								exitTo = 12
								break
							else
								n19 = 19
								flag7 = n19 <= 23
							end
						end
					else
						local getAttribute = configuration.GetAttribute

						if not (n29 ~= getAttribute(getAttribute, "_c84ca78cbc7c")) then
							n19 = 14
							flag7 = true
						else
							n19 = 45
							flag7 = n19 <= 23
						end
					end
				elseif not (n19 <= 24) then
					if not (n19 <= 25) then
						n19 = 18
						n28 = (n28 * 91 + 15609851) % 16777213
						n29 = (263272204 + v18) % 268435456 * 8 + 2
						flag7 = n19 <= 23
					elseif not (n29 == v19(39243571, v18) * 8 + 4) then
						exitTo = 11
						break
					else
						n19 = 4
						flag7 = n19 <= 23
					end
				elseif not n29 then
					n19 = 12
					flag7 = true
				else
					n19 = 27
					flag7 = n19 <= 23
				end
			else
				if not (n19 <= 11) then
					if not (n19 <= 17) then
						if not (n19 <= 20) then
							if not (n19 <= 21) then
								if not (n19 <= 22) then
									n19 = 18
									n28 = (n28 * 91 + 11455463) % 16777213
									n29 = v19(194021274, v18) * 8 + 3
									flag7 = n19 <= 23
									continue
								else
									local v20 = bit32.bxor(n21, n25 + 3880869064)
									local v21 = table.pack(bit32.band(n22, 4294967295))
									local v22 = table.pack(bit32.band(v20, 4294967295))
									local v23 = table.pack(bit32.band(v21[1], 65535))
									local v24 = table.pack(bit32.rshift(v21[1], 16))
									local v25 = table.pack(bit32.band(v22[1], 65535))
									local n30 = (n24 + n23 + bit32.band(v23[1] * v25[1] + bit32.lshift(bit32.band(v23[1] * bit32.rshift(v22[1], 16) + v24[1] * v25[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
									local n31 = v17 * 67108864
									local n32 = 1 - 2 * v16

									if n29(n27, n26, n32 * n32) then
										n19 = 2
										flag7 = true
										continue
									else
										n19 = 21
										flag7 = n19 <= 23
										continue
									end
								end
							else
								exitTo = 10
								break
							end
						elseif not (n19 <= 18) then
							if not (n19 <= 19) then
								local n0561028e410c44cfef375d98 = v14._0561028e410c44cfef375d98

								if not n0561028e410c44cfef375d98 then
									local v20 = n0561028e410c44cfef375d98
									n19 = 0
									n27 = v20
									n29 = 2236928
									flag7 = n19 <= 23
									continue
								else
									exitTo = 9
									break
								end
							else
								exitTo = 8
								break
							end
						elseif not (n29 == v19(194021274, v18) * 8 + 3) then
							exitTo = 7
							break
						else
							n19 = 42
							flag7 = n19 <= 23
							continue
						end
					elseif not (n19 <= 14) then
						if not (n19 <= 15) then
							if not (n19 <= 16) then
								exitTo = 6
								break
							else
								local getAttribute = configuration.GetAttribute

								if not (n29 + n27 ~= getAttribute(getAttribute, "_bf734645ce09")) then
									n19 = 23
									flag7 = true
									continue
								else
									n19 = 3
									flag7 = n19 <= 23
									continue
								end
							end
						elseif not n26 then
							n19 = 5
							flag7 = true
							continue
						else
							n19 = 6
							flag7 = n19 <= 23
							continue
						end
					elseif not (n19 <= 12) then
						if not (n19 <= 13) then
							n19 = 18
							n28 = (n28 * 91 + 15641511) % 16777213
							n29 = v19(39243571, v18) * 8 + 4
							flag7 = n19 <= 23
							continue
						else
							exitTo = 5
							break
						end
					else
						exitTo = 4
						break
					end
				elseif not (n19 <= 5) then
					if not (n19 <= 8) then
						if not (n19 <= 9) then
							if not (n19 <= 10) then
								n19 = 18
								n28 = (n28 + 4401801) % 16777213
								n29 = (77724403 - v18) % 268435456 * 8 + 6
								flag7 = n19 <= 23
								continue
							else
								exitTo = 3
								break
							end
						elseif not (n29 == (263272204 + v18) % 268435456 * 8 + 2) then
							n19 = 10
							flag7 = true
							continue
						else
							n19 = 20
							flag7 = n19 <= 23
							continue
						end
					elseif not (n19 <= 6) then
						if not (n19 <= 7) then
							if not (n29 == (21910816 - v18) % 268435456 * 8 + 6) then
								n19 = 9
								flag7 = true
								continue
							else
								n19 = 38
								flag7 = n19 <= 23
								continue
							end
						else
							n19 = 16
							n27 = 0
							flag7 = true
							continue
						end
					else
						local getTeleportSetting = tbl["\u{DFE}ဟഁໍణ௪൧"].GetTeleportSetting
						local n30 = n27 - n26
						n19 = 34
						n20 = 995990515
						n21 = 2317056971
						n22 = 149229512
						n23 = 1751127030
						n24 = 1949993441
						n25 = 2843857617
						n26 = getTeleportSetting(getTeleportSetting, "౻যথஹ")
						n27 = n30
						flag7 = n19 <= 23
						continue
					end
				elseif not (n19 <= 2) then
					if not (n19 <= 3) then
						if not (n19 <= 4) then
							n19 = 6
							n26 = 4048
							flag7 = true
							continue
						else
							local d96658a6f22fc0489eeb02b6 = v14._d96658a6f22fc0489eeb02b6

							if not d96658a6f22fc0489eeb02b6 then
								local v20 = d96658a6f22fc0489eeb02b6
								n19 = 40
								n27 = v20
								n29 = 4187753
								flag7 = n19 <= 23
								continue
							else
								n19 = 17
								n29 = 4187753
								flag7 = true
								continue
							end
						end
					else
						exitTo = 2
						break
					end
				elseif not (n19 <= 0) then
					if not (n19 <= 1) then
						n19 = 18
						n28 = (n28 * 91 + 3923040) % 16777213
						n29 = (21910816 - v18) % 268435456 * 8 + 6
						flag7 = n19 <= 23
						continue
					else
						exitTo = 1
						break
					end
				elseif not n27 then
					if not n27 then
						n19 = 7
						flag7 = true
						continue
					end
				else
					n19 = 16
					flag7 = n19 <= 23
					continue
				end

				break
			end
		end

		if exitTo == 1 then
			fn("J2_014")
			LPH_CRASH()
		end

		if exitTo == 2 then
			fn("J2_211")
			LPH_CRASH()
		end

		if exitTo == 3 then
			fn("J2_005")
			LPH_CRASH()
		end

		if exitTo == 4 then
			error("devirt: symbolic next pc/mode: (r18 Add 1) / 90 (at 90:29)")
		end

		if exitTo == 5 then
			n19 = 28
			n27 = 0
			continue
		end

		if exitTo == 6 then
			n19 = 40
			n27 = 11454
			continue
		end

		if exitTo == 7 then
			n19 = 25
			continue
		end

		if exitTo == 8 then
			fn("J2_024")
			LPH_CRASH()
		end

		if exitTo == 9 then
			n19 = 37
			n29 = 2236928
			continue
		end

		if exitTo == 10 then
			fn("J2_105")
			LPH_CRASH()
		end

		if exitTo == 11 then
			n19 = 31
			continue
		end

		if exitTo == 12 then
			n19 = 46
			continue
		end

		if exitTo == 13 then
			n19 = 35
			n29 = true
			continue
		end

		if exitTo == 14 then
			n19 = 36
			continue
		end

		if exitTo == 15 then
			return n29
		end

		if exitTo == 16 then
			n19 = 47
			continue
		end

		if exitTo == 17 then
			n19 = 32
			continue
		end

		if exitTo == 18 then
			fn("J2_RVP4")
			LPH_CRASH()
		end

		if exitTo == 19 then
			n19 = 24
			n29 = 288368
			continue
		end

		if exitTo == 20 then
			n19 = 26
			continue
		end
		break
	end

	error("devirt: symbolic next pc/mode: (r20 Add 1) / 90 (at 90:29)")
end)() ~= true then
	return 0
end

do
	local flag7 = tbl._a7d55cc2bb31:GetItem(tbl._fc490c4ae1fe, "_BzPEazgjjHPveBk") == "_BzPEazgjjHPveBk"
	local flag8

	if flag7 then
		flag8 = flag7
	else
		local v15 = tostring
		local bxor2 = bit32.bxor
		flag8 = tbl._a7d55cc2bb31:GetItem(tbl._fc490c4ae1fe, "_BzPEazgjjHPveBk") ~= v15(bxor2(bit32.bxor(attribute, v9, n13), bit32.bxor(3165001775, v10, n18), bit32.bxor(n14, n11, n15)))
	end

	if flag8 and not identifyexecutor():match("^Synapse") then
		fn("J2_149")
		LPH_CRASH()
	end
end

local bxor2 = bit32.bxor
tbl._a7d55cc2bb31:SetItem(tbl._fc490c4ae1fe, tostring(bit32.bxor(bit32.bxor(n11, 3165039696, n14), bit32.bxor(v9, attribute, n15), bxor2(n13, v10, n18))))
local flag7 = not tbl._a7d55cc2bb31:HasItem(tbl._fc490c4ae1fe)

if not flag7 then
	local v15 = tostring
	local bxor3 = bit32.bxor
	local bxor4 = bit32.bxor
	flag7 = tbl._a7d55cc2bb31:GetItem(tbl._fc490c4ae1fe, "_54ayr1ziQgJBofK") ~= v15(bxor3(bit32.bxor(n11, 3165039696, n14), bit32.bxor(v9, attribute, n15), bxor4(n13, v10, n18)))
end

if flag7 and not identifyexecutor():match("^Synapse") then
	fn("J2_195")
	LPH_CRASH()
end

if not fn3(debug.setmemorycategory("_mjQKAUms" .. tostring((n14 % 202988 * 39 + 1487) % 202988)), "_mjQKAUms" .. tostring((attribute % 202988 * 39 + 1487) % 202988), 587626) then
	fn("J2_080")
	LPH_CRASH()
end

if (function()
	local n19 = 47
	local n20 = nil
	local n21 = nil
	local n22 = nil
	local n23 = nil
	local n24 = nil
	local n25 = nil
	local n26 = nil
	local v15 = nil
	local v16 = nil
	local v17 = nil
	local flag8 = nil
	local v18 = nil
	local bxor3 = nil
	local n27 = nil
	local n28 = nil
	local flag9 = nil
	local exitTo

	while true do
		local flag10 = false
		exitTo = nil

		while true do
			if not flag10 then
				if not (n19 <= 40) then
					if not (n19 <= 47) then
						if not (n19 <= 50) then
							if not (n19 <= 52) then
								if not (n19 <= 53) then
									exitTo = 18
									break
								elseif not flag8 then
									n19 = 24
									flag10 = true
								else
									n19 = 44
									flag10 = n19 <= 26
								end
							elseif not (n19 <= 51) then
								exitTo = 16
								break
							elseif not (n28 == (64337183 + v18) % 268435456 * 8 + 7) then
								exitTo = 17
								break
							else
								n19 = 37
								flag10 = n19 <= 26
							end
						elseif not (n19 <= 48) then
							if not (n19 <= 49) then
								n19 = 6
								flag9 = true
							else
								n19 = 3
								flag9 = -54207383
							end

							flag10 = true
						else
							local v19 = bit32.bxor(n22, n26 + 2027588710)
							local v20 = table.pack(bit32.band(n23, 4294967295))
							local v21 = table.pack(bit32.band(v19, 4294967295))
							local v22 = table.pack(bit32.band(v20[1], 65535))
							local v23 = table.pack(bit32.rshift(v20[1], 16))
							local v24 = table.pack(bit32.band(v21[1], 65535))
							local n29 = (n25 + n24 + bit32.band(v22[1] * v24[1] + bit32.lshift(bit32.band(v22[1] * bit32.rshift(v21[1], 16) + v23[1] * v24[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
							local n30 = v17 * 67108864
							local n31 = 1 - 2 * v16

							if flag9(n28, flag8, n31 * n31) then
								exitTo = 15
								break
							else
								n19 = 20
								flag10 = n19 <= 26
							end
						end
					elseif not (n19 <= 43) then
						if not (n19 <= 45) then
							if not (n19 <= 46) then
								local n29 = n18 % 268435456
								n19 = 24
								v18 = n29
								bxor3 = bit32.bxor
								n27 = 15461528
								n28 = (206215219 - n29) % 268435456 * 8 + 4
								flag9 = 218131893
								flag10 = n19 <= 26
							else
								n19 = 3
								flag9 = -54207383
								flag10 = true
							end
						elseif not (n19 <= 44) then
							local n29 = (n26 + n25 + 3857410514) % 4294967296
							local n30 = v17 % 4294967296
							local v19 = table.pack(bit32.band(n30 + 1231443125, 4294967295))
							local v20 = table.pack(bit32.band(v19[1], 65535))
							local n31 = 838266558 + bit32.band(37117 * v20[1] + bit32.lshift(bit32.band(37117 * bit32.rshift(v19[1], 16) + 42336 * v20[1], 65535), 16), 4294967295) % 4294967296
							local v21 = table.pack(bit32.band(bit32.band(n30 + 1231443125, 3779472662), 4294967295))
							local v22 = table.pack(bit32.band(v21[1], 65535))
							n19 = 43
							n23 = 1520398084
							n24 = bit32.band(56838 * v22[1] + bit32.lshift(bit32.band(56838 * bit32.rshift(v21[1], 16) + 46398 * v22[1], 65535), 16), 4294967295) % 4294967296
							n25 = n31
							n26 = n30
							v16 = n29
							flag10 = n19 <= 26
						elseif not (n27 ~= 3021057) then
							exitTo = 14
							break
						else
							n19 = 34
							flag10 = n19 <= 26
						end
					elseif not (n19 <= 41) then
						if not (n19 <= 42) then
							local v19 = bit32.bxor(3779472662, n26 + 1231443125)
							local v20 = table.pack(bit32.band(n23, 4294967295))
							local v21 = table.pack(bit32.band(v19, 4294967295))
							local v22 = table.pack(bit32.band(v20[1], 65535))
							local v23 = table.pack(bit32.rshift(v20[1], 16))
							local v24 = table.pack(bit32.band(v21[1], 65535))
							local n29 = (n25 + n24 + bit32.band(v22[1] * v24[1] + bit32.lshift(bit32.band(v22[1] * bit32.rshift(v21[1], 16) + v23[1] * v24[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
							local n30 = v17 % 4294967296
							local v25 = table.pack(bit32.band(n30 + 3186397977, 4294967295))
							local v26 = table.pack(bit32.band(v25[1], 65535))
							local n31 = 2837981856 + bit32.band(65535 * v26[1] + bit32.lshift(bit32.band(65535 * bit32.rshift(v25[1], 16) + 65535 * v26[1], 65535), 16), 4294967295) % 4294967296
							local v27 = table.pack(bit32.band(bit32.bor(1437898602, n30 + 3186397977), 4294967295))
							local v28 = table.pack(bit32.band(v27[1], 65535))
							n19 = 10
							n24 = 2270048785
							n25 = bit32.band(2 * v28[1] + bit32.lshift(bit32.band(2 * bit32.rshift(v27[1], 16) + 0 * v28[1], 65535), 16), 4294967295) % 4294967296
							n26 = n31
							v15 = n29
							flag10 = n19 <= 26
						elseif not (n28 == bxor3(191335273, v18) * 8 + 3) then
							exitTo = 13
							break
						else
							n19 = 17
							flag10 = n19 <= 26
						end
					else
						local v19 = bit32.band(n23, n22)
						local v20 = table.pack(bit32.band(n24, 4294967295))
						local v21 = table.pack(bit32.band(v19, 4294967295))
						local v22 = table.pack(bit32.band(v20[1], 65535))
						local v23 = table.pack(bit32.rshift(v20[1], 16))
						local v24 = table.pack(bit32.band(v21[1], 65535))
						local n29 = bit32.band(v22[1] * v24[1] + bit32.lshift(bit32.band(v22[1] * bit32.rshift(v21[1], 16) + v23[1] * v24[1], 65535), 16), 4294967295) % 4294967296
						local v25 = table.pack(bit32.band(bit32.bxor(3707486377, n26 + 2576268307), 4294967295))
						local v26 = table.pack(bit32.band(v25[1], 65535))
						local n30 = (n25 + n29 + bit32.band(22833 * v26[1] + bit32.lshift(bit32.band(22833 * bit32.rshift(v25[1], 16) + 28231 * v26[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
						local n31 = v17 % 4294967296
						local v27 = table.pack(bit32.band(n31 + 2654681625, 4294967295))
						local v28 = table.pack(bit32.band(v27[1], 65535))
						n19 = 33
						n22 = 3788550847
						n23 = 2147483647
						n24 = bit32.band(0 * v28[1] + bit32.lshift(bit32.band(0 * bit32.rshift(v27[1], 16) + 32768 * v28[1], 65535), 16), 4294967295) % 4294967296
						n25 = 4294967295
						n26 = n31
						v15 = n30
						flag10 = n19 <= 26
					end
				elseif not (n19 <= 33) then
					if not (n19 <= 36) then
						if not (n19 <= 38) then
							if not (n19 <= 39) then
								n19 = 3
								n27 = (n27 * 11 + 1784152) % 16777213
								n28 = bxor3(191335273, v18) * 8 + 3
								flag9 = 239634956
								flag10 = n19 <= 26
							elseif not (n28 == bxor3(35250078, v18) * 8 + 1) then
								exitTo = 12
								break
							else
								n19 = 35
								flag10 = n19 <= 26
							end
						elseif not (n19 <= 37) then
							n19 = 3
							n27 = (n27 + 2253485) % 16777213
							n28 = (81589029 + v18) % 268435456 * 8 + 7
							flag9 = 218131893
							flag10 = n19 <= 26
						else
							local getAttribute = configuration.GetAttribute

							if not (n18 ~= getAttribute(getAttribute, "_85803028a338")) then
								exitTo = 11
								break
							else
								n19 = 54
								flag10 = n19 <= 26
							end
						end
					elseif not (n19 <= 34) then
						if not (n19 <= 35) then
							n19 = 3
							n27 = (n27 * 11 + 6934661) % 16777213
							n28 = (64337183 + v18) % 268435456 * 8 + 7
							flag9 = 239634956
							flag10 = n19 <= 26
						else
							local fbf1fe80cdce9b14352ce0a9 = v14._fbf1fe80cdce9b14352ce0a9

							if not fbf1fe80cdce9b14352ce0a9 then
								n19 = 4
								flag10 = true
							else
								local v19 = fbf1fe80cdce9b14352ce0a9
								n19 = 22
								flag9 = v19
								flag10 = n19 <= 26
							end
						end
					else
						exitTo = 10
						break
					end
				elseif not (n19 <= 29) then
					if not (n19 <= 31) then
						if not (n19 <= 32) then
							local v19 = bit32.bxor(n22, n26 + 2654681625)
							local v20 = bit32.bnot(v19)
							local v21 = table.pack(bit32.band(n23, 4294967295))
							local v22 = table.pack(bit32.band(v20, 4294967295))
							local v23 = table.pack(bit32.band(v21[1], 65535))
							local v24 = table.pack(bit32.rshift(v21[1], 16))
							local v25 = table.pack(bit32.band(v22[1], 65535))
							local n29 = (n25 + n24 + bit32.band(v23[1] * v25[1] + bit32.lshift(bit32.band(v23[1] * bit32.rshift(v22[1], 16) + v24[1] * v25[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
							local n30 = v17 % 4294967296
							local v26 = table.pack(bit32.band(n30 + 2027588710, 4294967295))
							local v27 = table.pack(bit32.band(v26[1], 65535))
							local n31 = 1510778980 + bit32.band(53107 * v27[1] + bit32.lshift(bit32.band(53107 * bit32.rshift(v26[1], 16) + 1288 * v27[1], 65535), 16), 4294967295) % 4294967296
							local v28 = table.pack(bit32.band(bit32.band(3158807820, n30 + 2027588710), 4294967295))
							local v29 = table.pack(bit32.band(v28[1], 65535))
							n19 = 48
							n22 = 3158807820
							n23 = 4210503822
							n24 = bit32.band(24858 * v29[1] + bit32.lshift(bit32.band(24858 * bit32.rshift(v28[1], 16) + 62958 * v29[1], 65535), 16), 4294967295) % 4294967296
							n25 = n31
							n26 = n30
							v17 = n29
						else
							n19 = 3
							n27 = (n27 * 11 + 13410199) % 16777213
							n28 = (105338874 - v18) % 268435456 * 8 + 4
							flag9 = 218131893
						end

						flag10 = n19 <= 26
					elseif not (n19 <= 30) then
						local v19 = bit32.bor(n23, n26 + n22)
						local v20 = table.pack(bit32.band(n24, 4294967295))
						local v21 = table.pack(bit32.band(v19, 4294967295))
						local v22 = table.pack(bit32.band(v20[1], 65535))
						local v23 = table.pack(bit32.rshift(v20[1], 16))
						local v24 = table.pack(bit32.band(v21[1], 65535))
						local n29 = bit32.band(v22[1] * v24[1] + bit32.lshift(bit32.band(v22[1] * bit32.rshift(v21[1], 16) + v23[1] * v24[1], 65535), 16), 4294967295) % 4294967296
						local v25 = table.pack(bit32.band(bit32.bxor(2905538103, n26 + 1774318993), 4294967295))
						local v26 = table.pack(bit32.band(v25[1], 65535))
						local n30 = (n25 + n29 + bit32.band(44639 * v26[1] + bit32.lshift(bit32.band(44639 * bit32.rshift(v25[1], 16) + 33805 * v26[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
						local n31 = v17 % 4294967296
						local v27 = table.pack(bit32.band(n31 + 2576268307, 4294967295))
						local v28 = table.pack(bit32.band(v27[1], 65535))
						n19 = 41
						n22 = 3707486377
						n23 = n31 + 2576268307
						n24 = 3700339296
						n25 = 4260503376 + bit32.band(42704 * v28[1] + bit32.lshift(bit32.band(42704 * bit32.rshift(v27[1], 16) + 37304 * v28[1], 65535), 16), 4294967295) % 4294967296
						n26 = n31
						v16 = n30
						flag10 = n19 <= 26
					elseif not (v18 % 2 ~= 1) then
						exitTo = 9
						break
					else
						n19 = 32
						flag10 = n19 <= 26
					end
				elseif not (n19 <= 27) then
					if not (n19 <= 28) then
						n19 = 3
						n27 = (n27 * 11 + 5399077) % 16777213
						n28 = (105338874 - v18) % 268435456 * 8 + 4
						flag9 = 218131893
						flag10 = n19 <= 26
					elseif not (n28 == (105338874 - v18) % 268435456 * 8 + 4) then
						n19 = 2
						flag10 = true
					else
						n19 = 26
						flag10 = n19 <= 26
					end
				else
					n19 = 3
					n27 = (n27 * 11 + 8062527) % 16777213
					n28 = bxor3(35250078, v18) * 8 + 1
					flag9 = 239634956
					flag10 = n19 <= 26
				end
			else
				if not (n19 <= 12) then
					if not (n19 <= 19) then
						if not (n19 <= 22) then
							if not (n19 <= 24) then
								if not (n19 <= 25) then
									local getTeleportSetting = tbl["\u{DFE}ဟഁໍణ௪൧"].GetTeleportSetting
									local v19 = n18
									n19 = 1
									local v20 = fn2
									n21 = 995990515
									n22 = 364125546
									n23 = 149229512
									n24 = 1751127030
									n25 = 1949993441
									n26 = 2843857617
									flag8 = getTeleportSetting(getTeleportSetting, "னဍৼ౼")
									n28 = v19
									flag9 = v20
									flag10 = n19 <= 26
									continue
								elseif not (flag9 == 218131893) then
									n19 = 23
									flag10 = true
									continue
								else
									n19 = 28
									flag10 = n19 <= 26
									continue
								end
							elseif not (n19 <= 23) then
								if not (flag9 == 239634956) then
									n19 = 25
									flag10 = true
									continue
								else
									n19 = 51
									flag10 = n19 <= 26
									continue
								end
							else
								exitTo = 8
								break
							end
						elseif not (n19 <= 20) then
							if not (n19 <= 21) then
								local getAttribute = configuration.GetAttribute

								if not (flag9 ~= getAttribute(getAttribute, "_8656284a99e2")) then
									exitTo = 7
									break
								else
									n19 = 9
									flag10 = n19 <= 26
									continue
								end
							else
								local n29 = v17 * 67108864
								local n30 = 1 - 2 * v16

								if flag9(n28, flag8, n30 * n30) then
									n19 = 16
									flag10 = true
									continue
								else
									n19 = 14
									flag10 = n19 <= 26
									continue
								end
							end
						else
							exitTo = 6
							break
						end
					elseif not (n19 <= 15) then
						if not (n19 <= 17) then
							if not (n19 <= 18) then
								if not (n28 == (206215219 - v18) % 268435456 * 8 + 4) then
									exitTo = 5
									break
								else
									n19 = 5
									flag10 = n19 <= 26
									continue
								end
							else
								local n29 = (n22 + n21 + bit32.bxor(n26, n20) + bit32.bxor(n25, 2372129226) + bit32.bxor(n24, 1810284895) + bit32.bxor(n23, 1248440564)) % 4294967296
								local n30 = n29 % 4294967296
								local v19 = table.pack(bit32.band(n30 + 1774318993, 4294967295))
								local v20 = table.pack(bit32.band(v19[1], 65535))
								n19 = 31
								n22 = 1774318993
								n23 = 2905538103
								n24 = 4158956356
								n25 = 3436558898 + bit32.band(44638 * v20[1] + bit32.lshift(bit32.band(44638 * bit32.rshift(v19[1], 16) + 33805 * v20[1], 65535), 16), 4294967295) % 4294967296
								n26 = n30
								v17 = n29
								flag10 = n19 <= 26
								continue
							end
						elseif not (n19 <= 16) then
							local d896e278fd4079a39a5526bd = v14._d896e278fd4079a39a5526bd

							if not d896e278fd4079a39a5526bd then
								n19 = 12
								flag10 = true
								continue
							else
								local v19 = d896e278fd4079a39a5526bd
								n19 = 7
								flag9 = v19
								flag10 = n19 <= 26
								continue
							end
						else
							n19 = 3
							n27 = (n27 * 11 + 3356127) % 16777213
							n28 = bxor3(77165004, v18) * 8 + 1
							flag9 = 239634956
							flag10 = n19 <= 26
							continue
						end
					elseif not (n19 <= 13) then
						if not (n19 <= 14) then
							local flag11 = n28 == bxor3(77165004, v18) * 8 + 1

							if not flag11 then
								local v19 = flag11
								n19 = 53
								flag8 = v19
								flag10 = n19 <= 26
								continue
							else
								n19 = 8
								flag10 = true
								continue
							end
						else
							exitTo = 4
							break
						end
					else
						n19 = 11
						n28 = ""
						flag10 = true
						continue
					end
				elseif not (n19 <= 5) then
					if not (n19 <= 8) then
						if not (n19 <= 10) then
							if not (n19 <= 11) then
								n19 = 7
								flag9 = ""
								flag10 = true
								continue
							else
								local getTeleportSetting = tbl["\u{DFE}ဟഁໍణ௪൧"].GetTeleportSetting
								local v19 = getTeleportSetting(getTeleportSetting, "൭ልॾൊឌែ")
								n19 = 18
								n20 = 2933973557
								n21 = 995990515
								n22 = 3242283455
								n23 = 149229512
								n24 = 1751127030
								n25 = 1949993441
								n26 = 2843857617
								flag8 = v19
								flag10 = n19 <= 26
								continue
							end
						elseif not (n19 <= 9) then
							local n29 = (n26 + n25 + n24 + 2044005349) % 4294967296
							local n30 = v17 % 4294967296
							local v19 = table.pack(bit32.band(n30 + 2769377782, 4294967295))
							local v20 = table.pack(bit32.band(v19[1], 65535))
							local n31 = 1237746397 + bit32.band(65535 * v20[1] + bit32.lshift(bit32.band(65535 * bit32.rshift(v19[1], 16) + 65535 * v20[1], 65535), 16), 4294967295) % 4294967296
							local v21 = table.pack(bit32.band(bit32.bor(n30 + 2769377782, 1022438983), 4294967295))
							local v22 = table.pack(bit32.band(v21[1], 65535))
							n19 = 21
							n24 = 1451893692
							n25 = bit32.band(2 * v22[1] + bit32.lshift(bit32.band(2 * bit32.rshift(v21[1], 16) + 0 * v22[1], 65535), 16), 4294967295) % 4294967296
							n26 = n31
							v17 = n29
							flag10 = n19 <= 26
							continue
						else
							exitTo = 3
							break
						end
					elseif not (n19 <= 6) then
						if not (n19 <= 7) then
							n19 = 53
							flag8 = flag9 == 239634956
							flag10 = n19 <= 26
							continue
						else
							local getAttribute = configuration.GetAttribute

							if not (flag9 ~= getAttribute(getAttribute, "_f3eb7e42e9e0")) then
								exitTo = 2
								break
							else
								n19 = 52
								flag10 = n19 <= 26
								continue
							end
						end
					else
						exitTo = 1
						break
					end
				elseif not (n19 <= 2) then
					if not (n19 <= 3) then
						if not (n19 <= 4) then
							local v19 = fn2
							local d896e278fd4079a39a5526bd = v14._d896e278fd4079a39a5526bd

							if not d896e278fd4079a39a5526bd then
								local v20 = v19
								n19 = 13
								flag9 = v20
							else
								local v20 = v19
								local v21 = d896e278fd4079a39a5526bd
								n19 = 11
								local v22 = v20
								n28 = v21
								flag9 = v22
							end

							flag10 = n19 <= 26
							continue
						else
							n19 = 22
							flag9 = ""
							flag10 = true
							continue
						end
					elseif not (flag9 == -54207383) then
						n19 = 15
						flag10 = true
						continue
					else
						n19 = 0
						flag10 = n19 <= 26
						continue
					end
				elseif not (n19 <= 0) then
					if not (n19 <= 1) then
						if not (n28 == (81589029 + v18) % 268435456 * 8 + 7) then
							n19 = 19
							flag10 = true
							continue
						else
							n19 = 29
							flag10 = n19 <= 26
							continue
						end
					else
						local n29 = (n22 + n21 + bit32.bxor(n26, 2933973557) + bit32.bxor(n25, 2372129226) + bit32.bxor(n24, 1810284895) + bit32.bxor(n23, 1248440564)) % 4294967296
						local n30 = n29 % 4294967296
						local v19 = table.pack(bit32.band(bit32.band(n30 + 3402341738, 1655402939), 4294967295))
						local v20 = table.pack(bit32.band(v19[1], 65535))
						n19 = 45
						n25 = bit32.band(65534 * v20[1] + bit32.lshift(bit32.band(65534 * bit32.rshift(v19[1], 16) + 65535 * v20[1], 65535), 16), 4294967295) % 4294967296
						n26 = 2092959721 + n30 + 3402341738
						v17 = n29
						flag10 = n19 <= 26
						continue
					end
				end

				break
			end
		end

		if exitTo == 1 then
			return flag9
		end

		if exitTo == 2 then
			n19 = 30
			continue
		end

		if exitTo == 3 then
			fn("J2_196")
			LPH_CRASH()
		end

		if exitTo == 4 then
			fn("J2_041")
			LPH_CRASH()
		end

		if exitTo == 5 then
			n19 = 49
			continue
		end

		if exitTo == 6 then
			fn("J2_023")
			LPH_CRASH()
		end

		if exitTo == 7 then
			n19 = 36
			continue
		end

		if exitTo == 8 then
			error("devirt: symbolic next pc/mode: (r19 Add 1) / 90 (at 90:17)")
		end

		if exitTo == 9 then
			n19 = 38
			continue
		end

		if exitTo == 10 then
			fn("J2_021")
			LPH_CRASH()
		end

		if exitTo == 11 then
			n19 = 40
			continue
		end

		if exitTo == 12 then
			n19 = 42
			continue
		end

		if exitTo == 13 then
			n19 = 46
			continue
		end

		if exitTo == 14 then
			n19 = 50
			continue
		end

		if exitTo == 15 then
			n19 = 27
			continue
		end

		if exitTo == 16 then
			fn("J2_203")
			LPH_CRASH()
		end

		if exitTo == 17 then
			n19 = 39
			continue
		end
		break
	end

	if exitTo == 18 then
		fn("J2_067")
		LPH_CRASH()
	end

	fn("J2_028")
	LPH_CRASH()
end)() ~= true then
	return 0
end

local flag8 = not tbl._a7d55cc2bb31:HasItem(tbl._fc490c4ae1fe)

if not flag8 then
	local v15 = tostring
	local bxor3 = bit32.bxor
	local bxor4 = bit32.bxor
	flag8 = tbl._a7d55cc2bb31:GetItem(tbl._fc490c4ae1fe, "_foKDDp4u4wBClec") ~= v15(bxor3(bit32.bxor(n11, 3165039696, n14), bit32.bxor(v9, attribute, n15), bxor4(n13, v10, n18)))
end

if flag8 and not identifyexecutor():match("^Synapse") then
	fn("J2_074")
	LPH_CRASH()
end

local bxor3 = bit32.bxor
tbl._a7d55cc2bb31:SetItem(tbl._fc490c4ae1fe, tostring(bit32.bxor(bit32.bxor(n18, n15, v10), bit32.bxor(n13, attribute, v9), bxor3(n11, 3165073561, n14))))
local flag9 = tbl._a7d55cc2bb31:HasItem(tbl._fc490c4ae1fe)

if flag9 then
	local v15 = tostring
	local bxor4 = bit32.bxor
	local bxor5 = bit32.bxor
	flag9 = tbl._a7d55cc2bb31:GetItem(tbl._fc490c4ae1fe, "_McGBKY1tAUGzJFy") == v15(bxor4(bit32.bxor(n18, n15, v10), bit32.bxor(n13, attribute, v9), bxor5(n11, 3165073561, n14)))
end

if not flag9 and not identifyexecutor():match("^Synapse") then
	fn("J2_057")
	LPH_CRASH()
end

if not (v14._d75b8cd135fe6c4c3d591cff and v14._d75b8cd135fe6c4c3d591cff == true and v14._d75b8cd135fe6c4c3d591cff == true) then
	return 0
end

if not (v14._0561028e410c44cfef375d98 == true and true == v14._0561028e410c44cfef375d98 and false ~= v14._0561028e410c44cfef375d98 and fn2(v14._0561028e410c44cfef375d98, true, 146552) and not fn2(v14._0561028e410c44cfef375d98, false, 146552) and ({ [true] = true })[v14._0561028e410c44cfef375d98] and not ({ [false] = true })[v14._0561028e410c44cfef375d98]) then
	fn("Invalid key provided, check key validity or reset HWID! (" .. v14._d896e278fd4079a39a5526bd .. ")")
	return 0
end

local n573954519c2d90d6741859d7 = v14._573954519c2d90d6741859d7

if type(n573954519c2d90d6741859d7) ~= "number" or n573954519c2d90d6741859d7 % 1 ~= 0 or n573954519c2d90d6741859d7 < 0 or n573954519c2d90d6741859d7 >= 1022799 or n573954519c2d90d6741859d7 ~= (949173 + 83 * (n15 // 10000 + 1) % 1022799 + 3 * n14 % 1022799) % 1022799 then
	fn("J2_001")
	LPH_CRASH()
end

do
	local flag10

	if type(v14._128bfa4e19d09830b7fd6e48) ~= "number" or type(v14._2cd22ce728d545933008ce8e) ~= "number" or 4 * (v14._128bfa4e19d09830b7fd6e48 - 807 - 5 * attribute + -2 * v9) + 5 * (v14._2cd22ce728d545933008ce8e - 291 - 0 * v10 + 3 * n11) ~= 0 then
		flag10 = true
	elseif type(v14._5bc29149b34afec5c70930ac) ~= "number" or type(v14._2cd22ce728d545933008ce8e) ~= "number" then
		flag10 = true
	else
		flag10 = false

		if 3 * (v14._5bc29149b34afec5c70930ac - -700) + 6 * (v14._2cd22ce728d545933008ce8e - 291) ~= 3 * (3 * v10 + 1 * n11) + 6 * (0 * v10 + 3 * n11) then
			flag10 = true
		end
	end

	local flag11 = not flag10

	if flag11 then
		flag11 = type(v14._128bfa4e19d09830b7fd6e48) ~= "number" or type(v14._2fe4999d6a3394638d75c676) ~= "number" or 4 * (v14._128bfa4e19d09830b7fd6e48 - 807) + 3 * (v14._2fe4999d6a3394638d75c676 - -455) ~= 4 * (5 * attribute + -2 * v9) + 3 * (-2 * attribute + 3 * v9) or type(v14._6be4010871a2f4c2bf69ce37) ~= "number" or type(v14._2fe4999d6a3394638d75c676) ~= "number" or 5 * (v14._6be4010871a2f4c2bf69ce37 - 2809) + 4 * (v14._2fe4999d6a3394638d75c676 - -455) ~= 5 * (6 * n14 + -2 * attribute) + 4 * (-2 * attribute + 3 * v9)
	end

	if flag11 then
		flag10 = true
	end

	if not flag10 and (type(v14._2fe4999d6a3394638d75c676) ~= "number" or type(v14._2cd22ce728d545933008ce8e) ~= "number" or 6 * (v14._2fe4999d6a3394638d75c676 - -455) - 6 * (-2 * attribute + 3 * v9) ~= 5 * (0 * v10 + 3 * n11) - 5 * (v14._2cd22ce728d545933008ce8e - 291)) then
		flag10 = true
	end

	if flag10 then
		fn("J2_115")
		LPH_CRASH()
	end
end

if type(v14._2419ac5e6a1163d5d41cc103) ~= "number" or type(v14._573954519c2d90d6741859d7) ~= "number" or v14._2419ac5e6a1163d5d41cc103 % 1 ~= 0 or v14._2419ac5e6a1163d5d41cc103 < 0 or v14._2419ac5e6a1163d5d41cc103 >= 1159319 or (((31 * n14 % 1159319 % 1159319 + 81 * attribute % 1159319) % 1159319 + 123 * v14._573954519c2d90d6741859d7 % 1159319) % 1159319 + 342672) % 1159319 ~= v14._2419ac5e6a1163d5d41cc103 then
	fn("J2_204")
	LPH_CRASH()
end

local n529a3b9ef99c92840c972f9f, efa0d266b1763c58d317f760, ea64fde0b0ab59db80367e6a, n70e0793c51cb7a15d888601f, n423782e7a347c66f734f7707, n7ad92b5ba1edd28e5f1c072e, tbl5
local fbf1fe80cdce9b14352ce0a9 = v14._fbf1fe80cdce9b14352ce0a9
n529a3b9ef99c92840c972f9f = v14._529a3b9ef99c92840c972f9f or 0
efa0d266b1763c58d317f760 = v14._efa0d266b1763c58d317f760 or 0
ea64fde0b0ab59db80367e6a = v14._ea64fde0b0ab59db80367e6a or 0
n70e0793c51cb7a15d888601f = v14._70e0793c51cb7a15d888601f or 0
n423782e7a347c66f734f7707 = v14._423782e7a347c66f734f7707 or 0
n7ad92b5ba1edd28e5f1c072e = v14._7ad92b5ba1edd28e5f1c072e or 0
tbl5 = {}

if type(v14._8400a93eec51e296adfcc3ad) ~= "number" then
	fn("J2_097")
	LPH_CRASH()
end

if v14._8400a93eec51e296adfcc3ad % 1 ~= 0 or v14._8400a93eec51e296adfcc3ad < 0 or v14._8400a93eec51e296adfcc3ad >= 958511 or (v14._8400a93eec51e296adfcc3ad - (441536 + 125 * v9 % 958511 + 85 * (n15 // 10000 + 1) % 958511) % 958511) % 958511 ~= 0 or not fn2(v14._8400a93eec51e296adfcc3ad, (441536 + 125 * v9 % 958511 + 85 * (n15 // 10000 + 1) % 958511) % 958511, 146552) then
	fn("J2_097")
	LPH_CRASH()
end

if type(fbf1fe80cdce9b14352ce0a9) == "number" and fbf1fe80cdce9b14352ce0a9 > 0 and os.time() > fbf1fe80cdce9b14352ce0a9 + 300 then
	fn("J2_100")
	LPH_CRASH()
end

n2 += 37
tbl["\u{DFE}ဟഁໍణ௪൧"]:SetTeleportSetting("၉దୂછ\u{D53}ു", tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("၉దୂછ\u{D53}ു") .. "JIzCMZ")
local n19
n19 = 0
local n20
n20 = 3
local now
now = os.clock()

if frame.Size.X.Scale ~= v10 or frame.Size.X.Offset ~= n11 then
	fn("J2_SOF9")
	LPH_CRASH()
end

local n21
local n22 = (2097152 + (v14._573954519c2d90d6741859d7 - 83 * (n15 // 10000 + 1) % 1022799 - 3 * n14 % 1022799) % 1022799) % 4294967296
n21 = (3504150238 + bit32.bxor(n2 % 4294967296, 3495817888) + bit32.bxor(n22, 2933973557) + 8681288132) % 4294967296
local n23

do
	local n24 = n21 % 4294967296
	local v15 = table.pack(bit32.band(n24 + 4278833507, 4294967295))
	local v16 = table.pack(bit32.band(v15[1], 65535))
	local n25 = bit32.band(0 * v16[1] + bit32.lshift(bit32.band(0 * bit32.rshift(v15[1], 16) + 32768 * v16[1], 65535), 16), 4294967295) % 4294967296
	local v17 = bit32.bxor(1418030482, n24 + 4278833507)
	local v18 = table.pack(bit32.band(bit32.bnot(v17), 4294967295))
	local v19 = table.pack(bit32.band(v18[1], 65535))
	local n26 = bit32.band(47563 * v19[1] + bit32.lshift(bit32.band(47563 * bit32.rshift(v18[1], 16) + 27991 * v19[1], 65535), 16), 4294967295) % 4294967296
	local v20 = table.pack(bit32.band(bit32.bxor(1418030482, n24 + 4278833507), 4294967295))
	local v21 = table.pack(bit32.band(v20[1], 65535))
	n23 = (1834465739 + n25 + n26 + bit32.band(47564 * v21[1] + bit32.lshift(bit32.band(47564 * bit32.rshift(v20[1], 16) + 60759 * v21[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
end

do
	local n24 = n21 % 4294967296
	local v15 = table.pack(bit32.band(n24 + 194355403, 4294967295))
	local v16 = table.pack(bit32.band(v15[1], 65535))
	local n25 = bit32.band(0 * v16[1] + bit32.lshift(bit32.band(0 * bit32.rshift(v15[1], 16) + 32768 * v16[1], 65535), 16), 4294967295) % 4294967296
	local v17 = bit32.bxor(1628518643, n24 + 194355403)
	local v18 = table.pack(bit32.band(bit32.bnot(v17), 4294967295))
	local v19 = table.pack(bit32.band(v18[1], 65535))
	local n26 = (4294967295 + n25 + bit32.band(65535 * v19[1] + bit32.lshift(bit32.band(65535 * bit32.rshift(v18[1], 16) + 32767 * v19[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
	local n27 = n21 % 4294967296
	local v20 = table.pack(bit32.band(n27 + 535577993, 4294967295))
	local v21 = table.pack(bit32.band(v20[1], 65535))
	local n28 = 1316732768 + bit32.band(18804 * v21[1] + bit32.lshift(bit32.band(18804 * bit32.rshift(v20[1], 16) + 16407 * v21[1], 65535), 16), 4294967295) % 4294967296
	local v22 = table.pack(bit32.band(bit32.band(n27 + 535577993, 1996284344), 4294967295))
	local v23 = table.pack(bit32.band(v22[1], 65535))
	local n29 = bit32.band(27928 * v23[1] + bit32.lshift(bit32.band(27928 * bit32.rshift(v22[1], 16) + 32721 * v23[1], 65535), 16), 4294967295) % 4294967296
	local v24 = table.pack(bit32.band(bit32.bxor(1996284344, n27 + 535577993), 4294967295))
	local v25 = table.pack(bit32.band(v24[1], 65535))
	local n30 = (n28 + n29 + bit32.band(46733 * v25[1] + bit32.lshift(bit32.band(46733 * bit32.rshift(v24[1], 16) + 49128 * v25[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
	local n31 = n21 % 4294967296
	local v26 = table.pack(bit32.band(n31 + 3414474321, 4294967295))
	local v27 = table.pack(bit32.band(v26[1], 65535))
	local n32 = 553671296 + bit32.band(32928 * v27[1] + bit32.lshift(bit32.band(32928 * bit32.rshift(v26[1], 16) + 32796 * v27[1], 65535), 16), 4294967295) % 4294967296
	local v28 = table.pack(bit32.band(bit32.band(n31 + 3414474321, 553671296), 4294967295))
	local v29 = table.pack(bit32.band(v28[1], 65535))
	local n33 = bit32.band(65534 * v29[1] + bit32.lshift(bit32.band(65534 * bit32.rshift(v28[1], 16) + 65535 * v29[1], 65535), 16), 4294967295) % 4294967296
	local v30 = table.pack(bit32.band(bit32.bnot(n31 + 3414474321), 4294967295))
	local v31 = table.pack(bit32.band(v30[1], 65535))
	local v32 = tbl["\u{DFE}ဟഁໍణ௪൧"]

	if n2 - (1 - 2 * n23) * (1 + (n30 * 67108864 + (n32 + n33 + 2149351583 + bit32.band(32927 * v31[1] + bit32.lshift(bit32.band(32927 * bit32.rshift(v30[1], 16) + 32796 * v31[1], 65535), 16), 4294967295) % 4294967296) % 4294967296) / 4503599627370496) * 2 ^ (n26 - 1023) ~= #v32:GetTeleportSetting("၉దୂછ\u{D53}ു") then
		fn("J2_MS15")
		LPH_CRASH()
	end
end

if getfenv()[560] ~= attribute or not fn3(getfenv()[560], part:GetAttribute("_32940051"), 587626) then
	fn("J2_RVM")
	LPH_CRASH()
end

if getfenv()[66] ~= v9 or not fn3(getfenv()[66], v9, 587626) or v9 .. "" ~= readfile(tbl._c0e9c2949186) or not fn2(v9 .. "", readfile(tbl._c0e9c2949186), 146552) then
	fn("J2_131")
	LPH_CRASH()
end

do
	local b8d3adc0357b = tbl._b8d3adc0357b
	local flag10 = tbl._87491c24f33a:GetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.Small) ~= b8d3adc0357b
	local flag11

	if flag10 then
		flag11 = flag10
	else
		local b8d3adc0357b2 = tbl._b8d3adc0357b
		flag11 = not fn2(tbl._87491c24f33a:GetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.Small), b8d3adc0357b2, 146552)
	end

	if flag11 then
		fn("J2_072")
		LPH_CRASH()
	end
end

do
	local n237e9c21a85f = tbl._237e9c21a85f
	local flag10 = tbl._87491c24f33a:GetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.RightTrigger) ~= n237e9c21a85f
	local flag11

	if flag10 then
		flag11 = flag10
	else
		local n237e9c21a85f2 = tbl._237e9c21a85f
		flag11 = not fn2(tbl._87491c24f33a:GetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.RightTrigger), n237e9c21a85f2, 146552)
	end

	if flag11 then
		fn("J2_066")
		LPH_CRASH()
	end
end

tbl._87491c24f33a:SetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.Small, 0)
tbl._87491c24f33a:SetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.RightTrigger, 0)

if delfile then
	delfile(tbl._c0e9c2949186)
end

if getfenv()[366] ~= bit32.bxor(n11 % 4294967295, n14 % 4294967295) then
	fn("J2_070")
	LPH_CRASH()
end

do
	local v15 = getfenv()[88]
	local v16 = bit32.bxor(attribute % 4294967295, v9 % 4294967295)
	local v17 = fn5(v10 % 4294967295, n14 % 4294967295)
	local flag10 = v15 ~= fn5(v16, v17)

	if not flag10 then
		local v18 = getfenv()[88]
		local v19 = bit32.bxor(attribute % 4294967295, v9 % 4294967295)
		local v20 = fn5(v10 % 4294967295, n14 % 4294967295)
		flag10 = not fn3(v18, fn5(v19, v20), 587626)
	end

	if flag10 then
		fn("J2_045")
		LPH_CRASH()
	end
end

if not ((-2 * (v14._2fe4999d6a3394638d75c676 - -455) - 3 * (v14._128bfa4e19d09830b7fd6e48 - 807)) / -11 == attribute and (5 * (v14._2fe4999d6a3394638d75c676 - -455) - -2 * (v14._128bfa4e19d09830b7fd6e48 - 807)) / 11 == v9 and fn3((5 * (v14._2fe4999d6a3394638d75c676 - -455) - -2 * (v14._128bfa4e19d09830b7fd6e48 - 807)) / 11, v9, 587626) and fn3(((v14._128bfa4e19d09830b7fd6e48 - 807) * 3 - (v14._2fe4999d6a3394638d75c676 - -455) * -2) / 11, attribute, 587626) and ((v14._128bfa4e19d09830b7fd6e48 - 807) * 3 - (v14._2fe4999d6a3394638d75c676 - -455) * -2) / 11 == attribute and (3 * (v14._128bfa4e19d09830b7fd6e48 - 807) + 2 * (v14._2fe4999d6a3394638d75c676 - -455)) / 11 == attribute and (3 * (v14._128bfa4e19d09830b7fd6e48 - 807) + 2 * (v14._2fe4999d6a3394638d75c676 - -455)) / 11 == (3 * (v14._128bfa4e19d09830b7fd6e48 - 807) + 2 * (v14._2fe4999d6a3394638d75c676 - -455)) / 11 and ((v14._128bfa4e19d09830b7fd6e48 - 807) * 3 - (v14._2fe4999d6a3394638d75c676 - -455) * -2) / 11 == (-2 * (v14._2fe4999d6a3394638d75c676 - -455) - 3 * (v14._128bfa4e19d09830b7fd6e48 - 807)) / -11) then
	return 0
end

if fn5(3347678019, attribute % 4294967295) ~= bit32.bxor(3347678019, attribute % 4294967295) or bit32.bxor(attribute % 4294967295, 3101190954) ~= fn5(attribute % 4294967295, 3101190954) then
	return 0
end

local n24, n25, v15, n26

do
	local n27 = n19 + 1
	local v16 = bit32.bxor(0, 1)
	local n28 = n20 + 1
	if fn6(n27, 255) ~= 1 or n27 + 16 ~= 17 or n27 ~= 1 then
		return 0
	end

	if #tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("၉దୂછ\u{D53}ു") + 1897 ~= n2 then
		fn("J2_217")
		LPH_CRASH()
	end

	local n29 = now - os.clock()
	if not ((3 * (v14._5bc29149b34afec5c70930ac - -700) + -1 * (v14._2cd22ce728d545933008ce8e - 291)) / 9 == v10 and fn3((3 * (v14._5bc29149b34afec5c70930ac - -700) + -1 * (v14._2cd22ce728d545933008ce8e - 291)) / 9, v10, 587626) and (3 * (v14._2cd22ce728d545933008ce8e - 291) + 0 * (v14._5bc29149b34afec5c70930ac - -700)) / 9 == n11 and fn3((0 * (v14._5bc29149b34afec5c70930ac - -700) - 3 * (v14._2cd22ce728d545933008ce8e - 291)) / -9, n11, 587626)) then
		return 0
	end

	if not ((0 * (v14._5bc29149b34afec5c70930ac - -700) - 3 * (v14._2cd22ce728d545933008ce8e - 291)) / -9 == n11 and fn2((3 * (v14._2cd22ce728d545933008ce8e - 291) - 0 * (v14._5bc29149b34afec5c70930ac - -700)) / 9, n11, 146552)) then
		return 0
	end

	if bit32.bxor(3436397271, v9 % 4294967295) ~= fn5(3436397271, v9 % 4294967295) or fn5(v9 % 4294967295, bit32.bxor(attribute % 4294967295, 3101190954)) ~= bit32.bxor(v9 % 4294967295, bit32.bxor(attribute % 4294967295, 3101190954)) then
		return 0
	end
	local n30 = n27 + 1
	local v17 = fn5(v16, 1)
	local n31 = n28 * 2
	if not (fn3(n30, 2, 587626) and bit32.band(n30, 255) == 2 and n30 * 2 == 4 and n30 == 2) then
		return 0
	end
	local n32 = n29 + os.clock()
	if not (((v14._2cd22ce728d545933008ce8e - 291) * 3 - (v14._5bc29149b34afec5c70930ac - -700) * 0) / 9 == n11 and fn3((3 * (v14._2cd22ce728d545933008ce8e - 291) - 0 * (v14._5bc29149b34afec5c70930ac - -700)) / 9, n11, 587626)) then
		return 0
	end
	local flag10 = fn5(329787831, v10 % 4294967295) ~= bit32.bxor(329787831, v10 % 4294967295)

	if not flag10 then
		local bxor4 = bit32.bxor
		local v18 = bit32.bxor(attribute % 4294967295, 3101190954)
		local v19 = fn5(v9 % 4294967295, bit32.bxor(attribute % 4294967295, 3101190954))
		local v20 = fn5(v18, v19)
		local v21 = bxor4(v10 % 4294967295, v20)
		local bxor5 = bit32.bxor
		local v22 = bit32.bxor(attribute % 4294967295, 3101190954)
		local v23 = fn5(v9 % 4294967295, bit32.bxor(attribute % 4294967295, 3101190954))
		flag10 = v21 ~= fn5(v10 % 4294967295, bxor5(v22, v23))
	end

	if flag10 then
		return 0
	end
	local n33 = n30 + 5
	local v18 = bit32.bxor(v17, 5)
	local n34 = n31 - 1
	if n33 ~= 7 or fn3(n33, 7, 587626) == false or fn6(n33, 127) ~= 7 or n33 - 7 ~= 0 then
		return 0
	end
	local n35 = n32 - os.clock()
	if not ((v14._6be4010871a2f4c2bf69ce37 + 2 * (3 * (v14._128bfa4e19d09830b7fd6e48 - 807) - -2 * (v14._2fe4999d6a3394638d75c676 - -455)) / 11 - 2809) / 6 == n14 and fn3(n14, (v14._6be4010871a2f4c2bf69ce37 - 2809 - -2 * ((v14._128bfa4e19d09830b7fd6e48 - 807) * 3 - (v14._2fe4999d6a3394638d75c676 - -455) * -2) / 11) / 6, 587626)) then
		return 0
	end
	local teleportSetting = tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("ฦဴೊஔ\u{CD8}బ")

	while teleportSetting ~= n14 do
		task.wait(1)
		teleportSetting = tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("ฦဴೊஔ\u{CD8}బ")
	end

	if not fn3(teleportSetting, n14, 587626) or not fn3(n14, teleportSetting, 587626) then
		while teleportSetting == n14 do
			task.wait(1)
		end
	end

	local bxor4 = bit32.bxor
	local bxor5 = bit32.bxor
	if fn5(fn5(3347678019, attribute % 4294967295), n14 % 4294967295) ~= bxor4(bxor5(3347678019, part:GetAttribute("_32940051") % 4294967295), n14 % 4294967295) then
		return 0
	end
	local n36 = n33 + 3
	local v19 = fn5(v18, 3)
	local n37 = n34 + 4
	if fn6(n36, 255) ~= 10 or n36 ~= 10 or fn3(n36, 10, 587626) == false then
		return 0
	end

	if v12.DisplayOrder ~= n11 or not fn3(v12.DisplayOrder, n11, 587626) then
		fn("J2_083")
		LPH_CRASH()
	end

	n24 = n35 + os.clock()
	local n38 = (v14._eded5fb38a961c8696fb9c49 - 123) / 22
	if not (fn3(#getgenv().SCRIPT_KEY, n38, 587626) and (v14._eded5fb38a961c8696fb9c49 - 123) / 22 == #getgenv().SCRIPT_KEY) then
		return 0
	end

	if tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("൹៶\u{EF0}ಀឬဇ") ~= (attribute + v9 + v10 + n11 + n13 // 10000 + 1 + n15 // 10000 + 1 + n14 + #getgenv().SCRIPT_KEY) / 100000 * 1000 * 0.2 // 1 or not fn3(tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("൹៶\u{EF0}ಀឬဇ"), (part:GetAttribute("_32940051") + v9 + v10 + n11 + n13 // 10000 + 1 + n15 // 10000 + 1 + n14 + #getgenv().SCRIPT_KEY) / 100000 * 1000 * 0.2 // 1, 587626) or not fn3((n14 + n15 // 10000 + 1 + n11 + attribute + #getgenv().SCRIPT_KEY + v10 + v9 + n13 // 10000 + 1) / 100000 * 1000 * 0.2 // 1, tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("൹៶\u{EF0}ಀឬဇ"), 587626) then
		fn("J2_SOF")
		LPH_CRASH()
	end

	if bit32.bxor(bit32.bxor(3436397271, v9 % 4294967295), #getgenv().SCRIPT_KEY) ~= fn5(fn5(3436397271, v9 % 4294967295), #getgenv().SCRIPT_KEY) then
		return 0
	end
	n25 = n36 + 7
	v15 = bit32.bxor(v19, 7)
	n26 = n37 * 3 - 1
end

if not (v12.DisplayOrder == n11 or fn3(v12.DisplayOrder, n11, 587626)) then
	return 0
end

local n27 = 11 * v14._eeba807a93f56aa0c9f99f57 + 7128514

if configuration:GetAttribute("_77f10ff1ff7b") ~= n27 then
	fn("J2_129")
	LPH_CRASH()
end

local eeba807a93f56aa0c9f99f57 = v14._eeba807a93f56aa0c9f99f57

if ((3 * (v14._128bfa4e19d09830b7fd6e48 - 807) + 2 * (v14._2fe4999d6a3394638d75c676 - -455)) / 11 + ((v14._2fe4999d6a3394638d75c676 - -455) * 5 - (v14._128bfa4e19d09830b7fd6e48 - 807) * -2) / 11 + ((v14._5bc29149b34afec5c70930ac - -700) * 3 - (v14._2cd22ce728d545933008ce8e - 291) * 1) / 9 + ((v14._2cd22ce728d545933008ce8e - 291) * 3 - (v14._5bc29149b34afec5c70930ac - -700) * 0) / 9 + n13 // 10000 + 1 + n15 // 10000 + 1 + (v14._6be4010871a2f4c2bf69ce37 - -2 * (3 * (v14._128bfa4e19d09830b7fd6e48 - 807) + 2 * (v14._2fe4999d6a3394638d75c676 - -455)) / 11 - 2809) / 6 + #getgenv().SCRIPT_KEY) / 100000 * 1000 * 0.2 // 1 * 6 % 860097 ~= eeba807a93f56aa0c9f99f57 then
	return 0
end

do
	local thread = coroutine.create(function()
		return 17
	end)

	if tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("ฦဴೊஔ\u{CD8}బ") ~= n14 or not fn3(tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("ฦဴೊஔ\u{CD8}బ"), n14, 587626) or not fn3(n14, tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("ฦဴೊஔ\u{CD8}బ"), 587626) then
		fn("J2_180")
		LPH_CRASH()
	end

	local v16, v17 = coroutine.resume(thread)
	if not v16 or v17 ~= n25 then
		return
	end
end

if fn5(attribute % 4294967295, v9 % 4294967295, v10 % 4294967295, 3101190954) ~= bit32.bxor(attribute % 4294967295, v9 % 4294967295, v10 % 4294967295, 3101190954) then
	return
end

local n28

do
	local n29 = 0

	if not proxy or type(proxy) ~= "userdata" or rawequal(proxy, nil) then
		fn("J2_107")
		LPH_CRASH()
	end

	if not intValue or typeof(intValue) ~= "Instance" or intValue.ClassName ~= "IntValue" then
		fn("J2_D1")
		LPH_CRASH()
	end

	if not (v15 == fn5(fn5(fn5(fn5(1, 1), 5), 3), 7) and fn3(v15, 1, 587626) and v15 == 1) then
		return 0
	end
	local n30 = n29 + 1
	if not (fn3(n25, 17, 587626) and n25 == 17 and bit32.band(n25, 255) == 17 and n25 + 17 == 34 and n25 * 2 == 34 and n25 - 17 == 0) then
		return 0
	end
	local n31 = n30 + 1
	if not (17 == n25 and fn3(17, n25, 587626) and n25 % 4294967296 == 17 and fn6(n25, 31) == 17) then
		return 0
	end
	local n32 = n31 + 1
	local bxor4 = bit32.bxor
	if fn5(fn5(3347678019, attribute % 4294967295), n14 % 4294967295) ~= bxor4(bit32.bxor(3347678019, attribute % 4294967295), n14 % 4294967295) then
		return 0
	end
	local n33 = n32 + 1
	if not (bit32.bxor(bit32.bxor(3436397271, v9 % 4294967295), #getgenv().SCRIPT_KEY) == fn5(fn5(3436397271, v9 % 4294967295), #getgenv().SCRIPT_KEY) and fn3(bit32.bxor(bit32.bxor(3436397271, v9 % 4294967295), #getgenv().SCRIPT_KEY), bit32.bxor(bit32.bxor(3436397271, v9 % 4294967295), #getgenv().SCRIPT_KEY), 587626)) then
		return 0
	end
	local n34 = n33 + 1
	if fn5(329787831, v10 % 4294967295) ~= bit32.bxor(329787831, v10 % 4294967295) then
		return 0
	end
	local n35 = n24 - os.clock()
	local n36 = n34 + 1
	if not (n35 < 0 and n35 > -2 and n35 < 0 == true) then
		return 0
	end
	n28 = n36 + 1
end

if intValue.Name ~= (part:GetAttribute("_32940051") + v9 + v10 + n11 + n13 // 10000 + 1 + n15 // 10000 + 1 + n14 + #getgenv().SCRIPT_KEY) / 100000 * 1000 * 0.2 // 1 .. "" or not fn3(intValue.Name, (attribute + v9 + v10 + n11 + n13 // 10000 + 1 + n15 // 10000 + 1 + n14 + #getgenv().SCRIPT_KEY) / 100000 * 1000 * 0.2 // 1 .. "", 587626) then
	fn("J2_055")
	LPH_CRASH()
end

local flag10
flag10 = false

if not (fn5(n25, 17) == 0 and fn6((-1 - n25) % 4294967296, 255) == 238) then
	return 0
end

if not ({
	[-3] = false,
	[-7] = true,
	[-4] = false,
	[-8] = false,
	[-2] = false,
	[-5] = false,
	[-6] = false,
	[-1] = false,
	[0] = false,
})[-n28] then
	fn("J2_269")
	LPH_CRASH()
end

if not (({ [32] = true })[n26] or ({
	[7] = false,
	[22] = false,
	[33] = false,
	[6] = false,
	[14] = false,
	[15] = false,
	[16] = false,
	[3] = false,
	[0] = false,
	[12] = false,
	[24] = false,
	[9] = false,
	[4] = false,
	[48] = false,
	[31] = false,
	[8] = false,
	[11] = false,
})[n26]) then
	fn("J2_061")
	LPH_CRASH()
end

if not ({
	[109] = false,
	[130] = false,
	[106] = false,
	[116] = false,
	[139] = false,
	[131] = false,
	[123] = false,
	[102] = false,
	[137] = false,
	[138] = true,
	[99] = false,
})[n28 + n26 + 99] then
	fn("J2_018")
	LPH_CRASH()
end

if fn3(fn12({}, 681083), "", 587626) or fn3(fn12({}, 681083), " ", 587626) then
	fn("J2_MS16")
	LPH_CRASH()
end

if fn3(fn12({}, 681083), fn12({}, 681083), 587626) then
	fn("J2_035")
	LPH_CRASH()
end

if fn3(fn12({}, 681083), fn12({}, 681083), 587626) then
	fn("J2_159")
	LPH_CRASH()
end

local v16

local function fn14()
end

v16 = fn12(fn14, 681083)
local fn15

fn15 = function()
end

if fn3(v16, fn12(fn15, 681083), 587626) then
	fn("J2_CFE_D")
	LPH_CRASH()
end

if fn3(fn12(coroutine.create(function()
end), 681083), fn12(coroutine.create(function()
end), (1 - 2 * (2023620608 + 6566313984) % 4294967296) * (1 + ((5200039176 + 246803704 + 3163161472) % 4294967296 * 67108864 + (3139574300 + 3820681003 + 1629679289) % 4294967296) / 4503599627370496) * 2 ^ ((2506754600 + 634228460 + 1153985278) % 4294967296 - 1023)), 587626) then
	fn("J2_CFM_D")
	LPH_CRASH()
end

tbl["\u{DFE}ဟഁໍణ௪൧"]:SetTeleportSetting("൹៶\u{EF0}ಀឬဇ", 111)
local teleportSetting = tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("൹៶\u{EF0}ಀឬဇ")
local v17 = table.pack(65535)

if not fn3(teleportSetting, 111, (1 - 2 * (4437613464 + 8447288424) % 4294967296) * (1 + ((3870974364 + 1020629348 + 3706438144) % 4294967296 * 67108864 + (3998937004 + 296030292 + 2920403458 + bit32.band(53762 * v17[1] + bit32.lshift(bit32.band(3523292670 + 44561 * v17[1], 65535), 16), 4294967295) % 4294967296) % 4294967296) / 4503599627370496) * 2 ^ ((1515155392 + 1574913568 + 1204899378) % 4294967296 - 1023)) then
	fn("J2_RV4")
	LPH_CRASH()
end

if part:GetAttribute("_4bc933f2") ~= attribute % 999999 or not fn2(part:GetAttribute("_4bc933f2"), attribute % 999999, 146552) then
	fn("J2_160")
	LPH_CRASH()
end

if part:GetAttribute("_95193079") ~= v10 % 999999 or not fn3(part:GetAttribute("_95193079"), v10 % 999999, 587626) then
	fn("J2_MS07")
	LPH_CRASH()
end

if part:GetAttribute("_a01dd837") ~= n11 % 999999 or not fn3(part:GetAttribute("_a01dd837"), n11 % 999999, 587626) then
	fn("J2_084")
	LPH_CRASH()
end

if part:GetAttribute("_0ff4262c") ~= bit32.bxor(n13 % 999999, n15 % 999999) or not fn3(part:GetAttribute("_0ff4262c"), bit32.bxor(n13 % 999999, n15 % 999999), 587626) or fn3(part:GetAttribute("_0ff4262c"), bit32.bxor(n13 % 999999, n15 % 999999), 587626) == false then
	fn("J2_201")
	LPH_CRASH()
end

if sound.Name ~= "_f855bad1bfeb" .. n14 % 10000 or not fn3(sound.Name, "_f855bad1bfeb" .. n14 % 10000, 587626) then
	fn("J2_075")
	LPH_CRASH()
end

if math.abs(sound.TimePosition - attribute % 1000 / 10) > 0.1 or not fn3(sound.TimePosition * 10 // 1, attribute % 1000, 587626) then
	fn("J2_112")
	LPH_CRASH()
end

do
	local teleportData

	repeat
		task.wait(0)
		teleportData = teleportOptions:GetTeleportData()
	until teleportData ~= nil

	local flag11 = fn3(teleportData, nil, 587626)

	if not flag11 then
		local v18 = table.pack(65535)
		flag11 = not fn3(teleportData ~= nil, true, (1 - 2 * (1485442344 + 2809524952 + 2368157205 + bit32.band(13845 * v18[1] + bit32.lshift(bit32.band(907332075 + 36135 * v18[1], 65535), 16), 4294967295) % 4294967296) % 4294967296) * (1 + ((3119115266 + 3355404956 + 2123521634) % 4294967296 * 67108864 + (2093413164 + 2201554132 + 0) % 4294967296) / 4503599627370496) * 2 ^ ((2409468466 + 1209940912 + 675558960) % 4294967296 - 1023))
	end

	if flag11 then
		fn("J2_033")
		LPH_CRASH()
	end

	if (teleportData._49675f438ee9 ~= bit32.bxor(n13 % 999999, n14 % 999999) or not fn3(teleportData._49675f438ee9, bit32.bxor(n13 % 999999, n14 % 999999), 587626)) == true then
		fn("J2_210")
		LPH_CRASH()
	end

	if (teleportData._639c08c9934a ~= tostring(attribute % 999999) .. "_" .. tostring(v9 % 999999) or not fn3(teleportData._639c08c9934a, tostring(attribute % 999999) .. "_" .. tostring(v9 % 999999), 587626)) ~= false then
		fn("J2_012")
		LPH_CRASH()
	end

	if (teleportData._1f249a2dfdcd ~= tostring(n13 % 10000) .. tostring(n15 % 10000) or not fn3(teleportData._1f249a2dfdcd, tostring(n13 % 10000) .. tostring(n15 % 10000), 587626)) ~= false then
		fn("J2_143")
		LPH_CRASH()
	end

	if teleportData._fc64b4bb60eb ~= v10 % 999999 or teleportData._e69ff9e6ab27 ~= n11 % 999999 or not fn3(teleportData._fc64b4bb60eb, v10 % 999999, 587626) or not fn3(teleportData._e69ff9e6ab27, n11 % 999999, 587626) then
		fn("J2_MS10")
		LPH_CRASH()
	end

	if teleportData._ed8336914229 ~= bit32.bxor(bit32.bxor(attribute % 999999, v10 % 999999), n15 % 999999) or not fn3(teleportData._ed8336914229, bit32.bxor(bit32.bxor(attribute % 999999, v10 % 999999), n15 % 999999), 587626) or fn3(teleportData._ed8336914229, bit32.bxor(bit32.bxor(attribute % 999999, v10 % 999999), n15 % 999999), 587626) == false then
		fn("J2_126")
		LPH_CRASH()
	end

	local n18b7fa8f9c66 = teleportData._18b7fa8f9c66
	local flag12 = os.time() - n18b7fa8f9c66 > 60

	if not flag12 then
		local n18b7fa8f9c662 = teleportData._18b7fa8f9c66
		flag12 = not fn3(os.time() - n18b7fa8f9c662 > 60, false, 587626)
	end

	if flag12 then
		fn("J2_002")
		LPH_CRASH()
	end
end

if not fn3(debug.setmemorycategory("_mjQKAUms" .. tostring((v10 % 202988 * 39 + 1487) % 202988)), "_mjQKAUms" .. tostring((n14 % 202988 * 39 + 1487) % 202988), 587626) then
	fn("J2_147")
	LPH_CRASH()
end

local n29

do
	local n56bc9c77edef626882524851 = v14._56bc9c77edef626882524851
	local flag11 = type(n56bc9c77edef626882524851) == "string" and #n56bc9c77edef626882524851 == 32
	local n30 = -1

	if flag11 then
		n30 = 216613

		for i = 1, 32 do
			n30 = (n30 * 257 + n56bc9c77edef626882524851:byte(i)) % 1048573
		end
	end

	n29 = (4223811648 + bit32.bxor((2097152 + (v14._2419ac5e6a1163d5d41cc103 - 123 * v14._573954519c2d90d6741859d7 % 1159319 - 81 * attribute % 1159319 - 31 * n14 % 1159319) % 1159319) % 4294967296, 3495817888) + bit32.bxor(n2 % 4294967296, 2933973557) + bit32.bxor((4194304 + n30) % 4294967296, 2372129226) + 1175687653) % 4294967296
end

local n30
local n31 = n29 % 4294967296
local v18 = table.pack(bit32.band(bit32.band(n31 + 845521034, 2160300840), 4294967295))
local v19 = table.pack(bit32.band(v18[1], 65535))
n30 = (1572450960 + n31 + 845521034 + bit32.band(65534 * v19[1] + bit32.lshift(bit32.band(65534 * bit32.rshift(v18[1], 16) + 65535 * v19[1], 65535), 16), 4294967295) % 4294967296 + 4882817176) % 4294967296

do
	local n32 = n29 % 4294967296
	local v20 = table.pack(bit32.band(n32 + 3971530068, 4294967295))
	local v21 = table.pack(bit32.band(v20[1], 65535))
	local n33 = 2140446664 + bit32.band(647 * v21[1] + bit32.lshift(bit32.band(647 * bit32.rshift(v20[1], 16) + 26967 * v21[1], 65535), 16), 4294967295) % 4294967296
	local v22 = table.pack(bit32.band(bit32.band(n32 + 3971530068, 991341560), 4294967295))
	local v23 = table.pack(bit32.band(v22[1], 65535))
	local n34 = bit32.band(64888 * v23[1] + bit32.lshift(bit32.band(64888 * bit32.rshift(v22[1], 16) + 38568 * v23[1], 65535), 16), 4294967295) % 4294967296
	local v24 = table.pack(bit32.band(bit32.bor(n32 + 3971530068, 991341560), 4294967295))
	local v25 = table.pack(bit32.band(v24[1], 65535))
	local n35 = (n33 + n34 + bit32.band(64890 * v25[1] + bit32.lshift(bit32.band(64890 * bit32.rshift(v24[1], 16) + 38568 * v25[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
	local n36 = n29 % 4294967296
	local v26 = table.pack(bit32.band(n36 + 3645136781, 4294967295))
	local v27 = table.pack(bit32.band(v26[1], 65535))
	local n37 = 2945660868 + bit32.band(63820 * v27[1] + bit32.lshift(bit32.band(63820 * bit32.rshift(v26[1], 16) + 20323 * v27[1], 65535), 16), 4294967295) % 4294967296
	local v28 = table.pack(bit32.band(bit32.band(n36 + 3645136781, 614912555), 4294967295))
	local v29 = table.pack(bit32.band(v28[1], 65535))
	local n38 = bit32.band(3432 * v29[1] + bit32.lshift(bit32.band(3432 * bit32.rshift(v28[1], 16) + 24888 * v29[1], 65535), 16), 4294967295) % 4294967296
	local v30 = table.pack(bit32.band(bit32.bxor(614912555, n36 + 3645136781), 4294967295))
	local v31 = table.pack(bit32.band(v30[1], 65535))
	local n39 = (n37 + n38 + bit32.band(1717 * v31[1] + bit32.lshift(bit32.band(1717 * bit32.rshift(v30[1], 16) + 45212 * v31[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
	local n40 = n29 % 4294967296
	local v32 = table.pack(bit32.band(n40 + 1289241943, 4294967295))
	local v33 = table.pack(bit32.band(v32[1], 65535))
	local n41 = 1762527330 + bit32.band(33690 * v33[1] + bit32.lshift(bit32.band(33690 * bit32.rshift(v32[1], 16) + 20950 * v33[1], 65535), 16), 4294967295) % 4294967296
	local v34 = table.pack(bit32.band(bit32.band(n40 + 1289241943, 2604021749), 4294967295))
	local v35 = table.pack(bit32.band(v34[1], 65535))
	local n42 = bit32.band(31845 * v35[1] + bit32.lshift(bit32.band(31845 * bit32.rshift(v34[1], 16) + 44585 * v35[1], 65535), 16), 4294967295) % 4294967296
	local v36 = table.pack(bit32.band(bit32.bor(n40 + 1289241943, 2604021749), 4294967295))
	local v37 = table.pack(bit32.band(v36[1], 65535))

	if n2 ~= (1 - 2 * n30) * (1 + (n39 * 67108864 + (n41 + n42 + bit32.band(31847 * v37[1] + bit32.lshift(bit32.band(31847 * bit32.rshift(v36[1], 16) + 44585 * v37[1], 65535), 16), 4294967295) % 4294967296) % 4294967296) / 4503599627370496) * 2 ^ (n35 - 1023) then
		fn("J2_046")
		LPH_CRASH()
	end
end

if n2 - 1457 ~= #tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("၉దୂછ\u{D53}ു") then
	fn("J2_117")
	LPH_CRASH()
end

if tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("ฦဴೊஔ\u{CD8}బ") ~= n14 or not fn3(tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("ฦဴೊஔ\u{CD8}బ"), n14, 587626) or not fn3(n14, tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("ฦဴೊஔ\u{CD8}బ"), 587626) then
	fn("J2_CFM_S")
	LPH_CRASH()
end

if not ({
	[bit32.bxor(1301632, 309349, 12136, 301658)] = true,
	[0] = false,
	false,
	[12136] = false,
	[40676] = false,
	[18197] = false,
	[43094] = false,
})[fn5(n26 * 40676, n25 * 18197, v15 * 12136, n28 * 43094)] then
	fn("J2_222")
	LPH_CRASH()
end

local n32
local n33 = (2097152 + (v14._8400a93eec51e296adfcc3ad - 125 * v9 % 958511 - 85 * (n15 // 10000 + 1) % 958511) % 958511) % 4294967296
n32 = (383200062 + bit32.bxor(n2 % 4294967296, 3495817888) + bit32.bxor(n33, 2933973557) + 5359069712) % 4294967296
local n34

do
	local n35 = n32 % 4294967296
	local v20 = table.pack(bit32.band(n35 + 1981230211, 4294967295))
	local v21 = table.pack(bit32.band(v20[1], 65535))
	local n36 = bit32.band(0 * v21[1] + bit32.lshift(bit32.band(0 * bit32.rshift(v20[1], 16) + 32768 * v21[1], 65535), 16), 4294967295) % 4294967296
	local v22 = bit32.bxor(1266654631, n35 + 1981230211)
	local v23 = table.pack(bit32.band(bit32.bnot(v22), 4294967295))
	local v24 = table.pack(bit32.band(v23[1], 65535))
	n34 = (4294967295 + n36 + bit32.band(65535 * v24[1] + bit32.lshift(bit32.band(65535 * bit32.rshift(v23[1], 16) + 32767 * v24[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
end

do
	local n35 = n32 % 4294967296
	local v20 = table.pack(bit32.band(n35 + 36146252, 4294967295))
	local v21 = table.pack(bit32.band(v20[1], 65535))
	local n36 = 1022291722 + bit32.band(58985 * v21[1] + bit32.lshift(bit32.band(58985 * bit32.rshift(v20[1], 16) + 1355 * v21[1], 65535), 16), 4294967295) % 4294967296
	local v22 = table.pack(bit32.band(bit32.band(3616536954, n35 + 36146252), 4294967295))
	local v23 = table.pack(bit32.band(v22[1], 65535))
	local n37 = bit32.band(6550 * v23[1] + bit32.lshift(bit32.band(6550 * bit32.rshift(v22[1], 16) + 64180 * v23[1], 65535), 16), 4294967295) % 4294967296
	local v24 = table.pack(bit32.band(bit32.bor(3616536954, n35 + 36146252), 4294967295))
	local v25 = table.pack(bit32.band(v24[1], 65535))
	local n38 = (n36 + n37 + bit32.band(6552 * v25[1] + bit32.lshift(bit32.band(6552 * bit32.rshift(v24[1], 16) + 64180 * v25[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
	local n39 = n32 % 4294967296
	local v26 = table.pack(bit32.band(n39 + 1461809893, 4294967295))
	local v27 = table.pack(bit32.band(v26[1], 65535))
	local n40 = 3287554679 + bit32.band(10879 * v27[1] + bit32.lshift(bit32.band(10879 * bit32.rshift(v26[1], 16) + 42226 * v27[1], 65535), 16), 4294967295) % 4294967296
	local v28 = table.pack(bit32.band(bit32.band(799630345, n39 + 1461809893), 4294967295))
	local v29 = table.pack(bit32.band(v28[1], 65535))
	local n41 = bit32.band(43778 * v29[1] + bit32.lshift(bit32.band(43778 * bit32.rshift(v28[1], 16) + 46619 * v29[1], 65535), 16), 4294967295) % 4294967296
	local v30 = table.pack(bit32.band(bit32.bxor(799630345, n39 + 1461809893), 4294967295))
	local v31 = table.pack(bit32.band(v30[1], 65535))
	local n42 = (n40 + n41 + bit32.band(54658 * v31[1] + bit32.lshift(bit32.band(54658 * bit32.rshift(v30[1], 16) + 23309 * v31[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
	local n43 = n32 % 4294967296
	local v32 = table.pack(bit32.band(n43 + 1671183855, 4294967295))
	local v33 = table.pack(bit32.band(v32[1], 65535))
	local n44 = 3425261508 + bit32.band(19884 * v33[1] + bit32.lshift(bit32.band(19884 * bit32.rshift(v32[1], 16) + 1689 * v33[1], 65535), 16), 4294967295) % 4294967296
	local v34 = table.pack(bit32.band(bit32.band(956608275, n43 + 1671183855), 4294967295))
	local v35 = table.pack(bit32.band(v34[1], 65535))
	local n45 = bit32.band(45651 * v35[1] + bit32.lshift(bit32.band(45651 * bit32.rshift(v34[1], 16) + 63846 * v35[1], 65535), 16), 4294967295) % 4294967296
	local v36 = table.pack(bit32.band(bit32.bor(n43 + 1671183855, 956608275), 4294967295))
	local v37 = table.pack(bit32.band(v36[1], 65535))

	if n2 ~= (1 - 2 * n34) * (1 + (n42 * 67108864 + (n44 + n45 + bit32.band(45653 * v37[1] + bit32.lshift(bit32.band(45653 * bit32.rshift(v36[1], 16) + 63846 * v37[1], 65535), 16), 4294967295) % 4294967296) % 4294967296) / 4503599627370496) * 2 ^ (n38 - 1023) then
		fn("J2_172")
		LPH_CRASH()
	end
end

if fn3(1, 2, 587626, tbl2) ~= tbl3 then
	fn("J2_176")
	LPH_CRASH()
end

if fn2(1, 2, 146552, tbl2) ~= tbl3 then
	fn("J2_CFE_S")
	LPH_CRASH()
end

if fn3(0, 1, 587626) ~= false == true then
	fn("J2_176")
	LPH_CRASH()
end

if fn2(1, 1, 146552) ~= true then
	fn("J2_208")
	LPH_CRASH()
end

if fn3(1, 1, 587626) ~= true then
	fn("J2_015")
	LPH_CRASH()
end

if fn3(1, 1, 587626) ~= true ~= false then
	fn("J2_010")
	LPH_CRASH()
end

local v20 = table.pack(19199)

if fn3(0, 1, (1 - 2 * (7650061400 + 939873192 + 0) % 4294967296) * (1 + ((4294967295 + 2147483648 + bit32.band(65535 * v20[1] + bit32.lshift(bit32.band(4286775420 + 32767 * v20[1], 65535), 16), 4294967295) % 4294967296) % 4294967296 * 67108864 + (4625194150 + 281074150 + 3683666292) % 4294967296) / 4503599627370496) * 2 ^ ((5604488824 + 779308912 + 2206137898) % 4294967296 - 1023)) ~= false ~= false then
	fn("J2_MS09")
	LPH_CRASH()
end

if fn2(0, 1, 146552) ~= false == true then
	fn("J2_CFE_S")
	LPH_CRASH()
end

if n2 ~= 3761 then
	fn("J2_101")
	LPH_CRASH()
end

if #tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("၉దୂછ\u{D53}ു") ~= 2364 then
	fn("J2_MS06")
	LPH_CRASH()
end

flag2 = false

do
	local v21 = tostring
	local bxor4 = bit32.bxor

	if (tbl._a7d55cc2bb31:GetItem(tbl._fc490c4ae1fe, "_ievfoak4eA8fCDf") ~= v21(bxor4(bit32.bxor(n18, n15, v10), bit32.bxor(n13, attribute, v9), bit32.bxor(n11, 3165073561, n14))) or not tbl._a7d55cc2bb31:HasItem(tbl._fc490c4ae1fe)) and not identifyexecutor():match("^Synapse") then
		fn("J2_049")
		LPH_CRASH()
	end
end

tbl._a7d55cc2bb31:SetItem(tbl._fc490c4ae1fe, tostring(bit32.bxor(bit32.bxor(n15, n14, n18), bit32.bxor(n11, 3164619970, v9), bit32.bxor(attribute, n13, v10))))
local flag11 = tbl._a7d55cc2bb31:GetItem(tbl._fc490c4ae1fe, "_OJrI0dmKxOVgQ7K") == "_OJrI0dmKxOVgQ7K"

if not flag11 then
	local v21 = tostring
	local bxor4 = bit32.bxor
	flag11 = tbl._a7d55cc2bb31:GetItem(tbl._fc490c4ae1fe, "_OJrI0dmKxOVgQ7K") ~= v21(bxor4(bit32.bxor(n15, n14, n18), bit32.bxor(n11, 3164619970, v9), bit32.bxor(attribute, n13, v10)))
end

if flag11 and not identifyexecutor():match("^Synapse") then
	fn("J2_EQP2")
	LPH_CRASH()
end

if fn3(v14._e823cb6694e515836373f911, "_26bba1fcaef45fd028bc169d", 587626) then
	if restorefunction then
		pcall(restorefunction, request)
	end

	local value = 0
	debug.setmemorycategory("_e1b5717f9987_hcJN:" .. "gV2x" .. "-" .. tostring(90))
	local configuration2 = Instance.new("Configuration")
	configuration2:SetAttribute("_78563a17550e", false)
	configuration2:SetAttribute("_9769710e2fab", false)
	configuration2:SetAttribute("_f78a1944f0fd", 0)
	configuration2:SetAttribute("_084c65ef05c4", 0)
	local flag12 = false
	local configuration3 = Instance.new("Configuration")
	local boolValue = Instance.new("BoolValue", configuration3)
	boolValue.Name = "_c31e9c76a48d"
	boolValue.Value = false
	local boolValue2 = Instance.new("BoolValue", configuration3)
	boolValue2.Name = "_632b21483474"
	boolValue2.Value = false
	local intValue2 = Instance.new("IntValue", configuration3)
	intValue2.Name = "_4ff7cfe69fa8"
	intValue2.Value = 0
	local intValue3 = Instance.new("IntValue", configuration3)
	intValue3.Name = "_edd9d331123d"
	intValue3.Value = 0

	task.spawn(function()
		flag12 = true
		configuration2:SetAttribute("_78563a17550e", true)
		boolValue2.Value = true
		local n35 = ((-2 * (v14._2fe4999d6a3394638d75c676 - -455) - 3 * (v14._128bfa4e19d09830b7fd6e48 - 807)) / -11 + (5 * (v14._2fe4999d6a3394638d75c676 - -455) + 2 * (v14._128bfa4e19d09830b7fd6e48 - 807)) / 11 + (1 * (v14._2cd22ce728d545933008ce8e - 291) - 3 * (v14._5bc29149b34afec5c70930ac - -700)) / -9 + ((v14._2cd22ce728d545933008ce8e - 291) * 3 - (v14._5bc29149b34afec5c70930ac - -700) * 0) / 9 + n13 // 10000 + 1 + n15 // 10000 + 1 + (2809 + -2 * ((v14._128bfa4e19d09830b7fd6e48 - 807) * 3 - (v14._2fe4999d6a3394638d75c676 - -455) * -2) / 11 - v14._6be4010871a2f4c2bf69ce37) / -6 + #getgenv().SCRIPT_KEY) * 0.2 // 1

		if (type(n35) ~= "number" or not rawequal(n35, n35) or n35 * 0 ~= 0) == true then
			fn("J2_089")
			LPH_CRASH()
		end

		if (n35 + 0 ~= n35 or n35 // 1 ~= n35 or n35 - n35 ~= 0) == true then
			fn("J2_089")
			LPH_CRASH()
		end

		if not tostring(n35):match("^%-?%d+$") == true then
			fn("J2_100C")
			LPH_CRASH()
		end

		if not (not (n35 < 0) and not (n35 > 99999999)) then
			fn("J2_073")
			LPH_CRASH()
		end

		if n35 % 1 ~= 0 then
			fn("J2_073")
			LPH_CRASH()
		end

		local tbl6 = {
			{
				76,
				67,
				88,
				162,
				78,
				253,
				90,
				249,
				10,
				222,
				9,
				138,
				98,
				75,
				151,
				238,
				164,
				56,
				169,
				130,
				41,
				155,
				53,
				79,
				126,
				232,
				202,
				28,
				245,
				86,
				182,
				145,
				196,
				135,
				150,
				0,
				188,
				141,
				4,
				190,
				8,
				227,
				220,
				224,
				72,
				118,
				114,
				82,
				233,
				195,
				127,
				243,
				187,
				160,
				107,
				42,
				174,
				103,
				234,
				5,
				131,
				132,
				119,
				21,
			},
			{
				37,
				39,
				1,
				96,
				235,
				44,
				242,
				81,
				180,
				64,
				214,
				18,
				91,
				34,
				84,
				191,
				109,
				104,
				163,
				181,
				93,
				198,
				152,
				33,
				50,
				3,
				211,
				136,
				223,
				65,
				47,
				100,
				252,
				179,
				246,
				106,
				129,
				23,
				229,
				203,
				142,
				212,
				46,
				154,
				183,
				117,
				148,
				241,
				87,
				157,
				120,
				215,
				177,
				49,
				31,
				55,
				43,
				30,
				101,
				97,
				73,
				22,
				255,
				94,
			},
			{
				115,
				199,
				25,
				27,
				105,
				171,
				85,
				71,
				237,
				156,
				92,
				166,
				176,
				231,
				137,
				32,
				240,
				146,
				80,
				217,
				210,
				113,
				7,
				61,
				230,
				178,
				95,
				185,
				134,
				15,
				122,
				194,
				59,
				206,
				60,
				209,
				228,
				153,
				112,
				167,
				12,
				218,
				168,
				140,
				226,
				20,
				29,
				68,
				248,
				2,
				189,
				200,
				247,
				186,
				124,
				52,
				125,
				51,
				11,
				66,
				19,
				57,
				102,
				165,
			},
			{
				128,
				123,
				6,
				40,
				225,
				173,
				205,
				110,
				108,
				251,
				170,
				58,
				201,
				121,
				70,
				45,
				213,
				48,
				184,
				139,
				16,
				175,
				143,
				236,
				17,
				193,
				14,
				54,
				244,
				254,
				239,
				133,
				208,
				26,
				144,
				161,
				216,
				83,
				192,
				36,
				77,
				204,
				111,
				116,
				159,
				62,
				221,
				89,
				219,
				24,
				69,
				38,
				99,
				250,
				197,
				149,
				207,
				63,
				158,
				74,
				172,
				147,
				13,
				35,
			},
		}

		local tbl7 = {
			["4"] = 0,
			e = 1,
			b = 2,
			["9"] = 3,
			["0"] = 4,
			["8"] = 5,
			["1"] = 6,
			["3"] = 7,
			["2"] = 8,
			d = 9,
			["5"] = 10,
			a = 11,
			f = 12,
			["6"] = 13,
			c = 14,
			["7"] = 15,
		}

		local tbl8 = {}

		for i = 0, 15 do
			local v21 = table.create(16)

			for i2 = 0, 15 do
				local n36 = 0
				local n37 = 1
				local n38 = i
				local n39 = i2

				for i3 = 0, 3 do
					local n40 = n38 % 2
					local n41 = n39 % 2

					if n40 ~= n41 then
						n36 += n37
					end

					n38 = (n38 - n40) / 2
					n39 = (n39 - n41) / 2
					n37 *= 2
				end

				v21[i2] = n36
			end

			tbl8[i] = v21
		end

		local function fn16(arg, arg2)
			return tbl8[arg // 16][arg2 // 16] * 16 + tbl8[arg % 16][arg2 % 16]
		end

		debug.setmemorycategory("_e1b5717f9987_DQd2:" .. "gV2x" .. "-" .. tostring(90))
		local scriptKey = getgenv().SCRIPT_KEY
		local str5 = scriptKey .. "33753"
		local tbl9 = {}
		local v21 = bit32.bxor(3197936066, attribute % 4294967295)
		tbl9[tbl9] = v21
		local str6 = tostring({})
		local str7 = tostring({})

		if str6 == str7 or fn3(str6, str7, 587626) then
			fn("J2_157")
			LPH_CRASH()
		end

		local now2 = os.clock()
		local proxy2 = newproxy(false)
		local v22 = bit32.bxor(434654580, v10 % 4294967295)
		getfenv()[proxy2] = v22
		local now3 = os.time()
		local tbl10 = {}
		local tbl11 = {}
		local tbl12 = {}

		for i = 1, 17 do
			local tbl13 = {}
			local tbl14 = {}
			tbl10[tbl13] = tbl14
			tbl11[tbl14] = i
			tbl12[tbl13] = tbl14
		end

		local n36 = 0
		local n37 = 0
		local n38 = 0

		for k, v23 in next, tbl10, nil do
			local v24 = tbl11[v23]

			if tbl12[k] == v23 then
				n36 += 1
			end

			n37 += 1
			n38 = ((n38 + v24 * 11 + 57) * 123 + n37 * 27) % 2147483629
		end

		if n36 ~= 17 then
			fn("J2_198")
			LPH_CRASH()
		end

		local v23

		if not (#str5 > 64) then
			v23 = str5
		else
			v23 = fn9(str5)
		end

		if #v23 < 64 then
			v23 ..= string.rep("\0", 64 - #v23)
		end

		local v24 = table.create(64)
		local v25 = table.create(64)
		local n39 = 1

		while n39 <= 64 do
			local v26 = v23:byte(n39)
			v24[n39] = string.char(v6(v26, 54))
			v25[n39] = string.char(v6(v26, 92))
			n39 += 1
		end

		local str8 = table.concat(v24)
		local str9 = table.concat(v25)
		local v26 = fn9
		local e5a882c836645799bf5930c5 = v14._e5a882c836645799bf5930c5
		local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
		local placeId = game.PlaceId
		local jobId = game.JobId
		local gameId = game.GameId
		local v27 = game
		local v28 = fn9(str9 .. v26(str8 .. "{\"_105a7afebf310b19249d2857\":\"" .. e5a882c836645799bf5930c5 .. "\"" .. ",\"_1e04addf25cad06bf3b05166\":\"" .. RbxAnalyticsService:GetClientId() .. "\"" .. ",\"_5c5fcdd1e8fcdf2359b06c19\":\"" .. scriptKey .. "\"" .. ",\"_9d490baec56c9f03bd11b123\":\"" .. n35 .. "\"" .. ",\"_a1af7e782e2ed774f60ba4a8\":\"" .. placeId .. "\"" .. ",\"_ea5202b7b28dac4745b9cdb0\":\"" .. "211eb14d3e86a868397e69a8" .. "\"" .. ",\"_bdf892ac9b82c61107fc1cc6\":\"" .. jobId .. "\"" .. ",\"_4f34e7723dca45a2bdb88137\":\"" .. gameId .. "\"" .. ",\"_a0815411b3cae3b74de119d2\":\"" .. game:GetService("Players").LocalPlayer.Name .. "\"" .. ",\"_881841ed6a4e9ae24ce0bafd\":\"" .. v27:GetService("Players").LocalPlayer.UserId .. "\",\"_ee031420b476159aac69394b\":\"33753\"}"))
		local str10 = ""

		for i = 1, #v28 do
			str10 ..= string.format("%02x", string.byte(v28, i))
		end

		if not fn2(tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("౻যথஹ"), 3076276 - (v14._0561028e410c44cfef375d98 and 0 or 4048), 146552) then
			fn("J2_189")
			LPH_CRASH()
		end

		if not fn2(tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("ऒච৽౿প៨"), not v14._d96658a6f22fc0489eeb02b6 and 5063085 or 5065051, 146552) then
			fn("J2_192")
			LPH_CRASH()
		end

		local flag13 = not (configuration:GetAttribute("_773b131ca836") ~= 4187753 + (v14._d96658a6f22fc0489eeb02b6 and 11454 or 0))

		if flag13 then
			flag13 = fn2(4187753 + (v14._d96658a6f22fc0489eeb02b6 and 11454 or 0), configuration:GetAttribute("_773b131ca836"), 146552)
		end

		if not flag13 then
			fn("J2_152")
			LPH_CRASH()
		end

		if configuration:GetAttribute("_c84ca78cbc7c") ~= (not v14._d75b8cd135fe6c4c3d591cff and 288368 or 326226) == true then
			fn("J2_103")
			LPH_CRASH()
		end

		local flag14 = not (configuration:GetAttribute("_bf734645ce09") ~= 2236928 + (v14._0561028e410c44cfef375d98 and 17830 or 0))
		local v29

		if flag14 then
			v29 = fn2(2236928 + (v14._0561028e410c44cfef375d98 and 17830 or 0), configuration:GetAttribute("_bf734645ce09"), 146552)
		else
			v29 = flag14
		end

		if not v29 then
			fn("J2_MS23")
			LPH_CRASH()
		end

		if not fn2(tbl["\u{DFE}ဟഁໍణ௪൧"]:GetTeleportSetting("ትఊఆૠఢସඨ"), not v14._d75b8cd135fe6c4c3d591cff and 1144672 or 1155829, 146552) ~= false then
			fn("J2_047")
			LPH_CRASH()
		end

		if configuration:GetAttribute("_f3eb7e42e9e0") ~= (v14._d896e278fd4079a39a5526bd or "") ~= false then
			fn("J2_170")
			LPH_CRASH()
		end

		local n40 = v9 + 4345
		local n41 = v10 + 2927
		local n42 = n14 * 7 + 7189
		local configuration4 = Instance.new("Configuration")
		configuration4:SetAttribute("_be298d742212", n42)
		local v30 = game
		local str11 = ((((((((((((((((((((("{\"_0c40cd986ff235ebbf6d4773\":" .. n40 .. "") .. ",\"_5665433fe305956c17557c31\":") .. n42 .. "") .. ",\"_a1af7e782e2ed774f60ba4a8\":") .. v5(game.PlaceId .. "")) .. ",\"_a0815411b3cae3b74de119d2\":") .. v5(v30:GetService("Players").LocalPlayer.Name)) .. ",\"_ea5202b7b28dac4745b9cdb0\":") .. v5("211eb14d3e86a868397e69a8")) .. ",\"_ee031420b476159aac69394b\":") .. v5("33753")) .. ",\"_5c5fcdd1e8fcdf2359b06c19\":") .. v5(scriptKey)) .. ",\"_105a7afebf310b19249d2857\":") .. v5(v14._e5a882c836645799bf5930c5)) .. ",\"_4f34e7723dca45a2bdb88137\":") .. v5(game.GameId .. "")) .. ",\"_9d490baec56c9f03bd11b123\":") .. v5(n35 .. "")) .. ",\"_44cd4c49a43369008033755f\":") .. n41 .. "") .. ",\"_1e04addf25cad06bf3b05166\":"
		local RbxAnalyticsService2 = game:GetService("RbxAnalyticsService")
		local v31 = game
		local str12 = (((((((str11 .. v5(RbxAnalyticsService2:GetClientId())) .. ",\"_dbaa7fc7ce72216f2e7e375e\":") .. v5(str10)) .. ",\"_bdf892ac9b82c61107fc1cc6\":") .. v5(game.JobId .. "")) .. ",\"_881841ed6a4e9ae24ce0bafd\":") .. v5(v31:GetService("Players").LocalPlayer.UserId .. "")) .. "}"
		local tbl13 = { "4", "e", "b", "9", "0", "8", "1", "3", "2", "d", "5", "a", "f", "6", "c", "7" }
		local tbl14 = {}

		for i = 1, #str12 do
			local v32 = string.byte(str12, i)
			local v33 = tbl6[v32 // 64 + 1][v32 % 64 + 1]
			local n43 = i * 2
			tbl14[n43 - 1] = tbl13[v33 // 16 + 1]
			tbl14[n43] = tbl13[v33 % 16 + 1]
		end

		local ok, result = pcall(request, {
			Url = "https://heartbeat.jnkie.com/api/heartbeat/v4/init",
			Headers = { ["Content-Type"] = "text/plain" },
			Body = "v4.33753.603879f017410956e89f8433." .. table.concat(tbl14),
			Method = "POST",
		})

		local flag15 = ok and type(result) == "table" and type(result.Body) == "string" and result.StatusCode ~= 200 and #result.Body <= 4096
		local v32 = nil

		if flag15 then
			v32 = string.match(result.Body, "\"message\"%s*:%s*\"([^\"]*)\"")
			local flag16 = type(v32) == "string" and #v32 >= 10 and #v32 <= 240 and not string.find(v32, "%c") and not string.find(v32, "\\", 1, true)
			local v33 = nil

			if not flag16 then
				v32 = v33
			end
		end

		if not ok or type(result) ~= "table" or type(result.Body) ~= "string" or result.StatusCode ~= 200 or #result.Body == 0 or #result.Body % 2 ~= 0 or #result.Body > 262144 then
			fn("J2_102", v32 or "The protected session could not be initialized. Please restart and try again.")
			LPH_CRASH()
		end

		local function fn17(arg, arg2, arg3)
			if arg3 ~= 879517 or not rawequal(arg3, 879517) or type(arg3) ~= "number" then
				fn("J2_081")
				LPH_CRASH()
			end

			local v33 = fn9(arg2)
			local str13 = fn9(arg2 .. "cipher_nonce"):sub(1, 12)
			local str14 = ""

			for i = 1, #arg, 2 do
				local v34 = tbl7[arg:sub(i, i)]
				local v35 = tbl7[arg:sub(i + 1, i + 1)]

				if v34 ~= nil and v35 ~= nil then
					str14 ..= string.char(v34 * 16 + v35)
				end
			end

			if not (#str14 == #arg // 2) then
				return nil
			end
			local ok2, result2 = pcall(fn7, str14, v33, str13, 1)
			if not ok2 or type(result2) ~= "string" then
				return nil
			end
			local ok3, result3 = pcall(v4, result2)
			if not ok3 then
				return nil
			end
			return result3
		end

		local v33 = fn17(result.Body, str5, 879517)

		if not v33 == true then
			fn("J2_013")
			LPH_CRASH()
		end

		if not v33._9065dfeb54d9846d84f80814 == true then
			fn("J2_SOF7")
			LPH_CRASH()
		end

		if type(v33._32585cd4bda827f5d44b1114) ~= "string" == true then
			fn("J2_MS03")
			LPH_CRASH()
		end

		if #v33._32585cd4bda827f5d44b1114 < 8 then
			fn("J2_MS03")
			LPH_CRASH()
		end

		if (type(v33._fa780f7a9a6e812208034b38) ~= "string" or #v33._fa780f7a9a6e812208034b38 < 8) == true then
			fn("J2_068")
			LPH_CRASH()
		end

		if not (not (type(v33._af6896b33ddcc3c6a826b615) ~= "number") and not (v33._af6896b33ddcc3c6a826b615 < 5) and not (v33._af6896b33ddcc3c6a826b615 > 300)) then
			fn("J2_099")
			LPH_CRASH()
		end

		if not (not (type(v33._76707a078e5934e378941a18) ~= "table") and not (#v33._76707a078e5934e378941a18 ~= 3)) then
			fn("J2_213")
			LPH_CRASH()
		end

		for i = 1, 3 do
			if type(v33._76707a078e5934e378941a18[i]) ~= "table" == true then
				fn("J2_054")
				LPH_CRASH()
			end

			if #v33._76707a078e5934e378941a18[i] ~= 2 == true then
				fn("J2_054")
				LPH_CRASH()
			end

			if not (not (type(v33._76707a078e5934e378941a18[i][1]) ~= "number") and not (type(v33._76707a078e5934e378941a18[i][2]) ~= "number")) then
				fn("J2_062")
				LPH_CRASH()
			end
		end

		local n76707a078e5934e378941a18 = v33._76707a078e5934e378941a18
		v33._76707a078e5934e378941a18 = { { n76707a078e5934e378941a18[1][2], n76707a078e5934e378941a18[1][1] }, { n76707a078e5934e378941a18[2][1], n76707a078e5934e378941a18[2][2] }, { n76707a078e5934e378941a18[3][2], n76707a078e5934e378941a18[3][1] } }

		if v33._43da7581e57892047ccf9d25 ~= -700 + n40 * 1 + n42 * 3 ~= false then
			fn("J2_215")
			LPH_CRASH()
		end

		if not fn2(v33._fb08b42c20c115d0ac8bbe2f, n41 * 3 + n42 * -2 + -455, 146552) or v33._fb08b42c20c115d0ac8bbe2f ~= n41 * 3 + n42 * -2 + -455 then
			fn("J2_197")
			LPH_CRASH()
		end

		if not fn2(n42, configuration4:GetAttribute("_be298d742212"), 146552) then
			fn("J2_MS02")
			LPH_CRASH()
		end

		if v33._6b6c5aeeb4e92524f2856008 ~= 807 + n41 * -2 + 5 * n40 == true then
			fn("J2_125")
			LPH_CRASH()
		end

		if os.clock() - now2 > 45 == true then
			fn("J2_108")
			LPH_CRASH()
		end

		if tbl9[tbl9] ~= v21 then
			fn("J2_177")
			LPH_CRASH()
		end

		if getfenv()[proxy2] ~= v22 then
			fn("J2_056")
			LPH_CRASH()
		end

		local now4 = os.time()

		if now4 < now3 then
			fn("J2_EQP1")
			LPH_CRASH()
		end

		if now4 - now3 > 60 then
			fn("J2_109")
			LPH_CRASH()
		end

		local n32585cd4bda827f5d44b1114 = v33._32585cd4bda827f5d44b1114
		local fa780f7a9a6e812208034b38 = v33._fa780f7a9a6e812208034b38
		local n76707a078e5934e378941a182 = v33._76707a078e5934e378941a18

		local tbl15 = {
			-2 * n76707a078e5934e378941a182[1][2] + 807 + n76707a078e5934e378941a182[1][1] * 5,
			n76707a078e5934e378941a182[2][1] * 3 + n76707a078e5934e378941a182[2][2] * -2 + -455,
			3 * n76707a078e5934e378941a182[3][1] + -700 + n76707a078e5934e378941a182[3][2] * 1,
		}

		if type(v33._68d7fa6b94ebfa9e6df9c54a) == "number" then
			n529a3b9ef99c92840c972f9f = v33._68d7fa6b94ebfa9e6df9c54a
		end

		if type(v33._8b3a85cb1a09e41035376692) == "number" then
			efa0d266b1763c58d317f760 = v33._8b3a85cb1a09e41035376692
		end

		if type(v33._28c5df61a58f7651b8af6c53) == "number" then
			ea64fde0b0ab59db80367e6a = v33._28c5df61a58f7651b8af6c53
		end

		if type(v33._01376eab5bdd77dd97d7b38c) == "number" then
			n70e0793c51cb7a15d888601f = v33._01376eab5bdd77dd97d7b38c
		end

		if type(v33._8807a89fdd2c318f0efe1c66) == "number" then
			n423782e7a347c66f734f7707 = v33._8807a89fdd2c318f0efe1c66
		end

		if type(v33._a7c4659aff92adcc32cf794b) == "number" then
			n7ad92b5ba1edd28e5f1c072e = v33._a7c4659aff92adcc32cf794b
		end

		if type(v33._f318e99edf31e8aa35f17061) == "table" then
			tbl5 = v33._f318e99edf31e8aa35f17061
		end

		flag10 = true
		configuration2:SetAttribute("_9769710e2fab", true)
		boolValue.Value = true
		debug.setmemorycategory(("_e1b5717f9987_" .. (flag12 and "DQd2" or "hcJN") .. ":") .. (flag10 and "5PMI" or "gV2x") .. "-" .. tostring((value * 89 + 90) % 256))

		if configuration2:GetAttribute("_78563a17550e") ~= flag12 then
			fn("J2_038")
			LPH_CRASH()
		end

		if configuration2:GetAttribute("_9769710e2fab") ~= flag10 == true then
			fn("J2_RV1")
			LPH_CRASH()
		end

		if configuration2:GetAttribute("_f78a1944f0fd") ~= value then
			fn("J2_RV3")
			LPH_CRASH()
		end

		if boolValue2.Value ~= flag12 then
			fn("J2_RVP3")
			LPH_CRASH()
		end

		if boolValue.Value ~= flag10 then
			fn("J2_030")
			LPH_CRASH()
		end

		if intValue3.Value ~= value == true then
			fn("J2_191")
			LPH_CRASH()
		end

		if configuration2:GetAttribute("_084c65ef05c4") ~= 0 or not fn2(configuration2:GetAttribute("_084c65ef05c4"), 0, 146552) then
			fn("J2_SOF2")
			LPH_CRASH()
		end

		if intValue2.Value ~= 0 or not fn2(intValue2.Value, 0, 146552) then
			fn("J2_185")
			LPH_CRASH()
		end

		local str13 = ("_e1b5717f9987_" .. (flag12 and "DQd2" or "hcJN") .. ":") .. (flag10 and "5PMI" or "gV2x") .. "-" .. tostring((value * 89 + 90) % 256)

		if debug.getmemorycategory() ~= str13 then
			fn("J2_114")
			LPH_CRASH()
		end

		local now5 = os.clock()
		local n43 = 4294967296

		local function fn18(arg, arg2)
			if arg2 > 31 or arg2 < -31 then
				return 0
			end

			if arg2 < 0 then
				return arg * 2 ^ (-arg2) % n43
			end
			return arg % n43 // 2 ^ arg2
		end

		local function fn19(arg, arg2)
			if arg2 > 31 or arg2 < -31 then
				return 0
			end

			if arg2 < 0 then
				return fn18(arg, -arg2)
			end
			return arg * 2 ^ arg2 % n43
		end

		local function fn20(arg, arg2)
			local n44 = arg % n43
			local n45 = arg2 % 32
			return (fn19(n44, n45) + fn18(n44, 32 - n45)) % n43
		end

		local function fn21(arg, arg2)
			local n44 = arg % n43
			local n45 = arg2 % n43
			local n46 = 0
			local n47 = 1

			for i = 0, 31 do
				local n48 = n44 % 2
				local n49 = n45 % 2

				if n48 ~= n49 then
					n46 += n47
				end

				n44 = (n44 - n48) / 2
				n45 = (n45 - n49) / 2
				n47 *= 2
			end

			return n46
		end

		configuration2:SetAttribute("_084c65ef05c4", 0)
		intValue2.Value = 0
		local str14 = n32585cd4bda827f5d44b1114 .. scriptKey
		local flag16 = false
		local value2 = 0
		local tbl16 = nil
		local n44 = 0
		local n45 = 1

		while flag12 do
			if not flag16 then
				local now6 = os.clock()

				repeat
					heartbeat:Wait()
				until os.clock() - now6 >= 60
			end

			local now6 = os.clock()
			local n46 = now6 - now5

			if (n46 < 5 or n46 > 300) ~= false then
				fn("J2_MS13")
				LPH_CRASH()
			end

			if tostring({}) == tostring({}) ~= false then
				fn("J2_HP3")
				LPH_CRASH()
			end

			if getfenv()[proxy2] ~= v22 then
				fn("J2_156")
				LPH_CRASH()
			end

			if (not (tbl9[tbl9] ~= v21) and fn3(tbl9[tbl9], v21, 587626)) ~= true then
				fn("J2_HB_REQ")
				LPH_CRASH()
			end

			if n2 < 3649 == true then
				fn("J2_051")
				LPH_CRASH()
			end

			if configuration2:GetAttribute("_78563a17550e") ~= flag12 then
				fn("J2_095")
				LPH_CRASH()
			end

			if boolValue.Value ~= flag10 ~= false then
				fn("J2_SOF5")
				LPH_CRASH()
			end

			if not fn2(boolValue2.Value, flag12, 146552) or boolValue2.Value ~= flag12 then
				fn("J2_077")
				LPH_CRASH()
			end

			if not fn2(intValue2.Value, value2, 146552) or intValue2.Value ~= value2 then
				fn("J2_063")
				LPH_CRASH()
			end

			local str15 = ("_e1b5717f9987_" .. (flag12 and "DQd2" or "hcJN") .. ":") .. (flag10 and "5PMI" or "gV2x") .. "-" .. tostring((value * 89 + 90) % 256)

			if debug.getmemorycategory() ~= str15 == true then
				fn("J2_087")
				LPH_CRASH()
			end

			if configuration2:GetAttribute("_9769710e2fab") ~= flag10 then
				fn("J2_009")
				LPH_CRASH()
			end

			if configuration2:GetAttribute("_f78a1944f0fd") ~= value == true then
				fn("J2_111")
				LPH_CRASH()
			end

			if not (not (configuration2:GetAttribute("_084c65ef05c4") ~= value2) and fn2(configuration2:GetAttribute("_084c65ef05c4"), value2, 146552)) then
				fn("J2_058")
				LPH_CRASH()
			end

			if intValue3.Value ~= value then
				fn("J2_076")
				LPH_CRASH()
			end

			local now7 = os.time()

			if now7 < now3 ~= false then
				fn("J2_MS01")
				LPH_CRASH()
			end

			local n47 = 0
			local n48 = 0
			local n49 = 0

			for k, v34 in next, tbl10, nil do
				local v35 = tbl11[v34]

				if tbl12[k] == v34 then
					n47 += 1
				end

				n48 += 1
				n49 = ((n49 + v35 * 11 + 57) * 123 + n48 * 27) % 2147483629
			end

			if (n47 ~= 17 or n49 ~= n38) == true then
				fn("J2_MS18")
				LPH_CRASH()
			end

			local str16, n50, n51, n52

			if tbl16 then
				str16 = tbl16[1]
				n50 = tbl16[2]
				n51 = tbl16[3]
				n52 = tbl16[4]
				configuration4:SetAttribute("_be298d742212", n52)
			else
				local n53 = n35

				for i = 1, 38 do
					local n54

					if tostring({}) < tostring({}) then
						n54 = n53 + 1
					else
						n54 = n53 * 2
					end

					n53 = n54 % 10000
				end

				local str17 = n53 .. ""
				local n54 = 0

				for i = 1, #fa780f7a9a6e812208034b38 do
					n54 = (n54 * 31 + fa780f7a9a6e812208034b38:byte(i)) % 1000003
				end

				local n55 = tonumber(str17) or 0
				n50 = v9 + n54 + 4345
				n51 = v10 + n55 + 2927
				n52 = n14 * 7 + n54 + n55 + 7189
				configuration4:SetAttribute("_be298d742212", n52)

				local function fn22(arg, arg2, arg3)
					if not (arg3 ~= 811584 or not rawequal(arg3, 811584) or type(arg3) ~= "number") then
						local n56 = 1779033703
						local n57 = 3144134277

						for i = 1, #arg2 do
							local byte = arg2.byte
							n56 = bit32.bxor(bit32.lrotate(n56, 5), byte(arg2, i))
							n57 = fn21(fn20(n57, 7), n56)
						end

						for i = 1, #arg do
							local v34 = arg:byte(i)
							n56 = fn21(fn20(n56, 5), v34)
							local bxor4 = bit32.bxor
							n57 = bit32.bxor(bit32.lrotate(n57, 13), bxor4(n56, v34))
						end

						local v34 = bit32.bxor(n56, bit32.rshift(n56, 16))
						local v35 = fn21(n57, fn18(n57, 16))
						return string.format("%08x%08x", v34, v35)
					end

					fn("J2_064")

					while true do
					end
				end

				local v34 = fn22(fa780f7a9a6e812208034b38 .. str17, scriptKey, 811584)
				local str18 = ",\"_f57f69a62b317c4ec341bc25\":" .. value .. ""
				local str19 = (",\"_9b50843bf41c4a7dd626531e\":" .. n51 .. "") .. (",\"_5f0aabe69af27fdef95063d9\":" .. ("{\"_c8e87187b1f01117bc73f7a7\":" .. n28 + n44 .. "") .. (",\"_796dd7154ef9df217a587b1a\":" .. n25 + n44 * 3 .. "") .. (",\"_82cf49a6df4dfb78695fd176\":" .. n26 + n44 * 2 .. "") .. (",\"_751a0d33c619bb932dee54c8\":" .. n2 + n44 * 50 .. "") .. "}") .. (",\"_a7aa648242651e142010ba47\":" .. ((((("[" .. tbl15[1] .. "") .. ",") .. tbl15[3] .. "") .. ",") .. tbl15[2] .. "") .. "]") .. "}"
				local str20 = ("{\"_40c5b8928af922a98a2a327d\":" .. v5(str17)) .. (",\"_98e4dc5545e0813275fc1c24\":" .. n50 .. "") .. str18 .. (",\"_a28aea9db9ce5604055c502d\":" .. n52 .. "") .. (",\"_d5fcc335efc7f66ad150c683\":" .. v5(v34)) .. (",\"_f1cb936d6cff94693f27c33f\":" .. v5(n32585cd4bda827f5d44b1114)) .. str19

				local function fn23(arg, arg2, arg3)
					if arg2 ~= 582064 or not rawequal(arg2, 582064) or type(arg2) ~= "number" then
						fn("J2_106")

						while true do
						end
					else
						if not (arg3 ~= 511436 or not rawequal(arg3, 511436) or type(arg3) ~= "number") then
							local n56 = 305419896

							for i = 1, #str14 do
								local byte = str14.byte
								n56 = bit32.bxor(bit32.lrotate(n56, 5), byte(str14, i))
							end

							local n57 = #str14
							local tbl17 = { "4", "e", "b", "9", "0", "8", "1", "3", "2", "d", "5", "a", "f", "6", "c", "7" }
							local v35 = table.create(#arg * 2)

							for i = 1, #arg do
								local n58 = (arg:byte(i) + str14:byte((i - 1) % n57 + 1)) % 256
								local bxor4 = bit32.bxor
								n56 = bit32.bxor(bit32.lrotate(n56, 7), bxor4(n56, 2654435769))
								local v36 = fn16(n58, n56 % 256)
								local n59 = i * 2
								v35[n59 - 1] = tbl17[v36 // 16 + 1]
								v35[n59] = tbl17[v36 % 16 + 1]
							end

							return table.concat(v35)
						end

						fn("J2_175")

						while true do
						end
					end
				end

				local v35 = fn23(str20, 582064, 511436)
				local str21 = ("{\"_e1778b81443030825364715b\":" .. v5(n32585cd4bda827f5d44b1114)) .. (",\"_06775275df68884a574cf0df\":" .. v5(v35)) .. "}"
				local tbl17 = { "4", "e", "b", "9", "0", "8", "1", "3", "2", "d", "5", "a", "f", "6", "c", "7" }
				local tbl18 = {}

				for i = 1, #str21 do
					local v36 = string.byte(str21, i)
					local v37 = tbl6[v36 // 64 + 1][v36 % 64 + 1]
					local n56 = i * 2
					tbl18[n56 - 1] = tbl17[v37 // 16 + 1]
					tbl18[n56] = tbl17[v37 % 16 + 1]
				end

				str16 = ("v4." .. n32585cd4bda827f5d44b1114 .. ".603879f017410956e89f8433.") .. table.concat(tbl18)
				tbl16 = { str16, n50, n51, n52 }
			end

			if isfunctionhooked and isfunctionhooked(request) then
				fn("J2_CFL_D")
				LPH_CRASH()
			end

			if restorefunction then
				pcall(restorefunction, request)
			end

			local ok2, result2 = pcall(request, {
				Url = "https://heartbeat.jnkie.com/api/heartbeat/v4/beat",
				Headers = { ["Content-Type"] = "text/plain" },
				Body = str16,
				Method = "POST",
			})

			if not ok2 or type(result2) ~= "table" or type(result2.Body) ~= "string" or result2.StatusCode ~= 200 or #result2.Body == 0 or #result2.Body % 2 ~= 0 or #result2.Body > 262144 then
				if type(result2) == "table" and type(result2.Body) == "string" then
					local ok3, result3 = pcall(v4, result2.Body)

					if ok3 and type(result3) == "table" and result3.action == "kill" then
						local flag17 = type(result3.message) == "string" and #result3.message > 0 and #result3.message <= 300
						local str17 = "Your session has been terminated, please contact the script owner."

						if flag17 then
							str17 = result3.message
						end

						fn(str17)
						LPH_CRASH()
					end
				end

				value2 += 1
				configuration2:SetAttribute("_084c65ef05c4", value2)
				intValue2.Value = value2

				if configuration2:GetAttribute("_084c65ef05c4") ~= value2 or intValue2.Value ~= value2 or not fn2(configuration2:GetAttribute("_084c65ef05c4"), value2, 146552) or not fn2(intValue2.Value, value2, 146552) then
					fn("J2_153")
					LPH_CRASH()
				end

				local flag17 = value2 ~= 1 and value2 ~= 2
				local flag18

				if flag17 then
					flag18 = flag17
				else
					flag18 = not fn2(value2, 1, 146552) and not fn2(value2, 2, 146552)
				end

				if flag18 then
					fn("J2_187")
					LPH_CRASH()
				end

				local now8 = os.clock()

				repeat
					heartbeat:Wait()
				until os.clock() - now8 >= 10

				flag16 = true
				now5 = now6
				now3 = now7
				continue
			end

			local body = result2.Body
			local n53 = #body // 2
			local n54 = 305419896

			for i = 1, #str14 do
				local byte = str14.byte
				n54 = bit32.bxor(bit32.lrotate(n54, 5), byte(str14, i))
			end

			local n55 = #str14
			local v34 = table.create((n53 + 3) // 4)
			local flag17 = #body == 0 or #body % 2 ~= 0
			local n56 = 1
			local n57 = 0

			while n56 <= n53 do
				local v35 = nil
				local v36 = nil
				local v37 = nil
				local v38 = nil
				local n58 = 0

				for i = 1, 4 do
					if not (n53 < n56) then
						local n59 = tbl7[body:sub(n56 * 2 - 1, n56 * 2 - 1)] and tbl7[body:sub(n56 * 2, n56 * 2)] and tbl7[body:sub(n56 * 2 - 1, n56 * 2 - 1)] * 16 + tbl7[body:sub(n56 * 2, n56 * 2)] or nil

						if not n59 then
							flag17 = true
							break
						else
							local bxor4 = bit32.bxor
							n54 = bit32.bxor(bit32.lrotate(n54, 7), bxor4(n54, 2654435769))
							local n60 = (fn16(n59, n54 % 256) - str14:byte((n56 - 1) % n55 + 1) + 256) % 256

							if i == 1 then
								v35 = n60
							elseif i == 2 then
								v36 = n60
							elseif i ~= 3 then
								v38 = n60
							else
								v37 = n60
							end

							n56 += 1
							n58 = i
							continue
						end
					end

					break
				end

				if not flag17 then
					n57 += 1
					local v39 = string.char(v35, v36 or 0, v37 or 0, v38 or 0)
					v34[n57] = n58 == 4 and v39 or string.sub(v39, 1, n58)
					continue
				end

				break
			end

			local flag18 = false
			local result3 = nil

			if not flag17 then
				flag18, result3 = pcall(v4, table.concat(v34))
			end

			if not flag18 or type(result3) ~= "table" or not result3._05cb9a3a35fb2fd77a6814b2 then
				if flag18 and type(result3) == "table" and result3.action == "kill" then
					fn("J2_187")
					LPH_CRASH()
				end

				value2 += 1
				configuration2:SetAttribute("_084c65ef05c4", value2)
				intValue2.Value = value2

				if configuration2:GetAttribute("_084c65ef05c4") ~= value2 or intValue2.Value ~= value2 or not fn2(configuration2:GetAttribute("_084c65ef05c4"), value2, 146552) or not fn2(intValue2.Value, value2, 146552) then
					fn("J2_154")
					LPH_CRASH()
				end

				if value2 ~= 1 and value2 ~= 2 or not fn2(value2, 1, 146552) and not fn2(value2, 2, 146552) then
					fn("J2_085")
					LPH_CRASH()
				end

				local now8 = os.clock()

				repeat
					heartbeat:Wait()
				until os.clock() - now8 >= 10

				flag16 = true
				now5 = now6
				now3 = now7
				continue
			end

			if type(result3._447880e99f2d6aa98e0449d7) ~= "string" then
				fn("J2_MS24")
				LPH_CRASH()
			end

			if #result3._447880e99f2d6aa98e0449d7 < 8 then
				fn("J2_MS24")
				LPH_CRASH()
			end

			if type(result3._37f147ceb559fe9dc8fb8c3e) ~= "number" or result3._37f147ceb559fe9dc8fb8c3e < 0 then
				fn("J2_124")
				LPH_CRASH()
			end

			if type(result3._78639efc996b0d790378b58b) ~= "table" then
				fn("J2_212B")
				LPH_CRASH()
			end

			if #result3._78639efc996b0d790378b58b ~= 3 == true then
				fn("J2_212B")
				LPH_CRASH()
			end

			for i = 1, 3 do
				if (type(result3._78639efc996b0d790378b58b[i]) ~= "table" or #result3._78639efc996b0d790378b58b[i] ~= 2) == true then
					fn("J2_212C")
					LPH_CRASH()
				end
			end

			local n78639efc996b0d790378b58b = result3._78639efc996b0d790378b58b
			result3._78639efc996b0d790378b58b = { { n78639efc996b0d790378b58b[1][2], n78639efc996b0d790378b58b[1][1] }, { n78639efc996b0d790378b58b[2][1], n78639efc996b0d790378b58b[2][2] }, { n78639efc996b0d790378b58b[3][2], n78639efc996b0d790378b58b[3][1] } }

			if result3._37f147ceb559fe9dc8fb8c3e ~= n45 then
				fn("J2_270")
				LPH_CRASH()
			end

			n45 = result3._37f147ceb559fe9dc8fb8c3e + 1

			if result3._447880e99f2d6aa98e0449d7 == fa780f7a9a6e812208034b38 or fn3(result3._447880e99f2d6aa98e0449d7, fa780f7a9a6e812208034b38, 587626) then
				fn("J2_027")
				LPH_CRASH()
			end

			if not fn2(n52, configuration4:GetAttribute("_be298d742212"), 146552) ~= false then
				fn("J2_RVS")
				LPH_CRASH()
			end

			if result3._dcf2244e41f5234f738d6c5b ~= -2 * n52 + -455 + 3 * n51 ~= false then
				fn("J2_RVP2")
				LPH_CRASH()
			end

			if result3._22a0f18973ec4b4ca52284d5 ~= 807 + n51 * -2 + n50 * 5 == true then
				fn("J2_CFL_S")
				LPH_CRASH()
			end

			if not (not (result3._15acace74cdc7151da1b0d1f ~= n52 * 3 + -700 + n50 * 1) and fn2(result3._15acace74cdc7151da1b0d1f, n52 * 3 + -700 + n50 * 1, 146552)) then
				fn("J2_D2")
				LPH_CRASH()
			end

			if type(result3._39b1ab3250febeb80fb72d93) == "number" then
				n529a3b9ef99c92840c972f9f = result3._39b1ab3250febeb80fb72d93
			end

			if type(result3._a52bb3de5b59ec7bbc795f99) == "number" then
				efa0d266b1763c58d317f760 = result3._a52bb3de5b59ec7bbc795f99
			end

			if type(result3._844a3057fad947dce4e476e0) == "number" then
				ea64fde0b0ab59db80367e6a = result3._844a3057fad947dce4e476e0
			end

			if type(result3._d86333bc5de6f5adbc4c9049) == "number" then
				n70e0793c51cb7a15d888601f = result3._d86333bc5de6f5adbc4c9049
			end

			if type(result3._a92270670ea008feec76eeed) == "number" then
				n423782e7a347c66f734f7707 = result3._a92270670ea008feec76eeed
			end

			if type(result3._cd18a3840f51e6936c7d0d8c) == "number" then
				n7ad92b5ba1edd28e5f1c072e = result3._cd18a3840f51e6936c7d0d8c
			end

			if type(result3._82cd5d0cab33db220029c088) == "table" then
				tbl5 = result3._82cd5d0cab33db220029c088
			end

			configuration2:SetAttribute("_084c65ef05c4", 0)
			intValue2.Value = 0
			n44 = result3._37f147ceb559fe9dc8fb8c3e
			fa780f7a9a6e812208034b38 = result3._447880e99f2d6aa98e0449d7
			local n78639efc996b0d790378b58b2 = result3._78639efc996b0d790378b58b

			tbl15 = {
				807 + -2 * n78639efc996b0d790378b58b2[1][2] + n78639efc996b0d790378b58b2[1][1] * 5,
				n78639efc996b0d790378b58b2[2][2] * -2 + -455 + n78639efc996b0d790378b58b2[2][1] * 3,
				n78639efc996b0d790378b58b2[3][1] * 3 + n78639efc996b0d790378b58b2[3][2] * 1 + -700,
			}

			value += 1
			configuration2:SetAttribute("_f78a1944f0fd", value)
			intValue3.Value = value
			debug.setmemorycategory(("_e1b5717f9987_" .. (flag12 and "DQd2" or "hcJN") .. ":") .. (flag10 and "5PMI" or "gV2x") .. "-" .. tostring((value * 89 + 90) % 256))
			flag16 = false
			value2 = 0
			tbl16 = nil
			now5 = now6
			now3 = now7
		end
	end)

	if not flag12 or not fn3(flag12, true, 587626) then
		fn("J2_161")
		LPH_CRASH()
	end

	if configuration2:GetAttribute("_78563a17550e") ~= true then
		fn("J2_MS20")
		LPH_CRASH()
	end

	if boolValue2.Value ~= true then
		fn("J2_036")
		LPH_CRASH()
	end

	local v21 = debug.getmemorycategory()

	if type(v21) ~= "string" or v21:sub(1, 18) ~= "_e1b5717f9987_hcJN" then
		fn("J2_199")
		LPH_CRASH()
	end

	task.defer(function()
		local now2 = os.clock()

		repeat
			heartbeat:Wait()
		until os.clock() - now2 >= 45

		if not flag10 or not fn3(flag10, true, 587626) then
			fn("J2_094")
			LPH_CRASH()
		end

		if configuration2:GetAttribute("_9769710e2fab") ~= true then
			fn("J2_008")
			LPH_CRASH()
		end

		if boolValue.Value ~= true then
			fn("J2_MS05")
			LPH_CRASH()
		end

		local v22 = value
		local now3 = os.clock()
		local n35 = 0
		local n36 = 0

		while flag12 do
			local now4 = os.clock()

			repeat
				heartbeat:Wait()
			until os.clock() - now4 >= 130

			n35 += 1

			if configuration2:GetAttribute("_78563a17550e") ~= true or not fn2(configuration2:GetAttribute("_78563a17550e"), true, 146552) then
				fn("J2_MS21")
				LPH_CRASH()
			end

			if configuration2:GetAttribute("_9769710e2fab") ~= true or not flag10 or boolValue.Value ~= true then
				fn("J2_184")
				LPH_CRASH()
			end

			if not fn2(boolValue2.Value, true, 146552) or boolValue2.Value ~= true then
				fn("J2_029")
				LPH_CRASH()
			end

			local v23 = value
			local attribute2 = configuration2:GetAttribute("_f78a1944f0fd")
			local value2 = intValue3.Value

			if not (not (type(v23) ~= "number") and not (type(attribute2) ~= "number")) then
				fn("J2_225")
				LPH_CRASH()
			end

			if type(value2) ~= "number" == true then
				fn("J2_225")
				LPH_CRASH()
			end

			if v23 ~= attribute2 or v23 ~= value2 then
				fn("J2_155")
				LPH_CRASH()
			end

			if not fn2(v23, attribute2, 146552) or not fn2(v23, value2, 146552) then
				fn("J2_125")
				LPH_CRASH()
			end

			local attribute3 = configuration2:GetAttribute("_084c65ef05c4")
			local value3 = intValue2.Value

			if type(attribute3) ~= "number" then
				fn("J2_197")
				LPH_CRASH()
			end

			if attribute3 < 0 then
				fn("J2_197")
				LPH_CRASH()
			end

			if attribute3 > 2 == true then
				fn("J2_197")
				LPH_CRASH()
			end

			if attribute3 ~= value3 then
				fn("J2_215")
				LPH_CRASH()
			end

			local v24 = fn2
			local v25 = table.pack(65535)

			if not v24(attribute3, value3, (1 - 2 * (6330560976 + 2259373616 + 138719463 + bit32.band(45287 * v25[1] + bit32.lshift(bit32.band(2967883545 + 2116 * v25[1], 65535), 16), 4294967295) % 4294967296) % 4294967296) * (1 + ((4848431215 + 2449073386 + 5595323047) % 4294967296 * 67108864 + (6321768228 + 2835936683 + 3727196977) % 4294967296) / 4503599627370496) * 2 ^ ((3600909350 + 1437010442 + 3552015840) % 4294967296 - 1023)) then
				fn("J2_186")
				LPH_CRASH()
			end

			if os.clock() - now3 < n35 * 130 * 0.5 then
				fn("J2_RVP2")
				LPH_CRASH()
			end

			if v23 <= v22 and flag12 then
				n36 += 1

				if n36 > 1 or not fn2(n36, 1, 146552) then
					fn("Connection unstable, ensure your connection is stable.")
					LPH_CRASH()
				end

				v22 = v23
				continue
			end

			n36 = 0
			v22 = v23
		end
	end)
else
	tbl._a7d55cc2bb31:RemoveItem(tbl._fc490c4ae1fe)
end

if not (not UserSettings().GameSettings:GetTutorialState("\u{EE4}តឳඳ୭ുஷ") and not fn2(UserSettings().GameSettings:GetTutorialState("\u{EE4}តឳඳ୭ുஷ"), true, 146552)) then
	local cloneRef

	cloneRef = cloneref or function(arg)
		return arg
	end

	local Library
	Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/madafakir3169-ui/Argon-Hub-X/main/x.lua%202"))()

	do
		local ok, result = pcall(function()
			return loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/lucide-roblox-direct/refs/heads/main/source.lua"))()
		end)

		if ok and result then
			Library:SetIconModule(result)
		end
	end

	local UserInputService
	UserInputService = cloneRef(game:GetService("UserInputService"))
	local ContextActionService
	ContextActionService = cloneRef(game:GetService("ContextActionService"))
	cloneRef(game:GetService("HttpService"))
	local RunService
	RunService = cloneRef(game:GetService("RunService"))
	local replicatedStorage
	replicatedStorage = cloneRef(game:GetService("ReplicatedStorage"))
	local serverStatsItem
	serverStatsItem = cloneRef(game:GetService("Stats")):FindFirstChild("Network"):FindFirstChild("ServerStatsItem")
	local Debris
	Debris = cloneRef(game:GetService("Debris"))
	local localPlayer
	localPlayer = game.Players.LocalPlayer
	local Workspace
	Workspace = cloneRef(game:GetService("Workspace"))
	local parryPaused
	parryPaused = false
	local blockDisabled
	blockDisabled = false
	local antiPhantomActive
	antiPhantomActive = false
	local parryBlocked
	parryBlocked = false
	getgenv().Anti_Hellhook = true
	getgenv().antipulse = true
	local autoParried
	autoParried = false
	local lastSpamTime
	lastSpamTime = 0
	local triggerbotParried, lobbyTriggerbotParried, lobbyParried, parryAccuracy, lobbyParryAccuracy, recentParries, lastClashBall, lastBallSpeed, tornadoDelay, clashThreshold
	local triggerbotCooldown, lastSlashTime, connections, ballApi, isMobile, runtime, parryCurve, selectedCurve

	do
		local flag21 = false
		local n43 = 1
		local v28 = nil
		triggerbotParried = false
		lobbyTriggerbotParried = false
		lobbyParried = false
		parryAccuracy = 1.05
		lobbyParryAccuracy = 1.05
		recentParries = 0
		lastClashBall = nil
		lastBallSpeed = 0
		tornadoDelay = 0.2
		clashThreshold = 1
		triggerbotCooldown = 0.5
		lastSlashTime = tick()
		local n44 = 0
		local now3 = tick()
		local now4 = tick()
		connections = {}
		ballApi = {}
		isMobile = UserInputService.TouchEnabled and not UserInputService.MouseEnabled
		local v29 = nil
		runtime = Workspace.Runtime
		parryCurve = "Camera"
		selectedCurve = "Camera"
		local balls = Workspace:WaitForChild("Balls")
		local trainingBalls = Workspace:WaitForChild("TrainingBalls")
		getgenv().mname = "."
		getgenv().abilityrandom = "Legit"

		local tbl8 = {
			ready = false,
			keyTable = nil,
			transformFn = nil,
			netModule = nil,
			remoteId = nil,
			parryHash = nil,
			parryRemote = nil,
		}

		local v30 = nil
		local tbl9 = {}
		local tbl10 = {}
		local tbl11 = nil

		local function fn17()
			for _, v31 in getgc(true) do
				if type(v31) ~= "function" then
					continue
				end
				local ok, result = pcall(debug.info, v31, "s")
				if not ok or not result then
					continue
				end

				if not result:find("PRY", 1, true) then
					continue
				end
				local ok2, result2 = pcall(debug.getupvalues, v31)
				if not ok2 or type(result2) ~= "table" then
					continue
				end

				for _, v32 in pairs(result2) do
					if type(v32) ~= "function" then
						continue
					end
					local ok3, result3 = pcall(v32, "TEST", "TIME")
					if ok3 and type(result3) == "string" and #result3 > 0 then
						return v32
					end
				end
			end

			return nil
		end

		local function fn18(arg)
			if not v30 then
				return ""
			end
			local str7 = tostring(math.floor(Workspace:GetServerTimeNow() * 100))
			local ok, result = pcall(v30, arg, "TIME")
			if not ok or type(result) ~= "string" or #result == 0 then
				return ""
			end
			local v31 = table.create(#str7)

			for i = 1, #str7 do
				local byte = string.byte
				v31[i] = string.char(bit32.bxor((string.byte(str7, i) + i) % 256, byte(result, (i - 1) % #result + 1)))
			end

			return table.concat(v31)
		end

		local function fn19(arg)
			return #arg == 8 and type(arg[2]) == "string" and type(arg[3]) == "string" and type(arg[4]) == "number" and typeof(arg[5]) == "CFrame" and type(arg[6]) == "table" and type(arg[7]) == "table" and type(arg[8]) == "boolean"
		end

		local function fn20(arg)
			if tbl9[arg] then
				return
			end
			local v31 = getrawmetatable(arg)
			if not v31 then
				return
			end

			if tbl10[v31] then
				return
			end
			tbl10[v31] = true
			if not pcall(setreadonly, v31, false) then
				return
			end
			local index = v31.__index

			v31.__index = newcclosure(function(arg2, arg3)
				if arg3 == "FireServer" and arg2:IsA("RemoteEvent") or arg3 == "InvokeServer" and arg2:IsA("RemoteFunction") then
					return function(arg4, ...)
						local tbl12 = { ... }

						if fn19(tbl12) and not tbl9[arg2] then
							tbl9[arg2] = tbl12
							tbl11 = { remote = arg2, args = tbl12 }
						end

						local v32 = unpack
						return index(arg2, arg3)(arg4, v32(tbl12))
					end
				end

				return index(arg2, arg3)
			end)

			pcall(setreadonly, v31, true)
		end

		for _, descendant in pairs(replicatedStorage:GetDescendants()) do
			if descendant:IsA("RemoteEvent") or descendant:IsA("RemoteFunction") then
				pcall(fn20, descendant)
			end
		end

		replicatedStorage.DescendantAdded:Connect(function(descendant)
			if descendant:IsA("RemoteEvent") or descendant:IsA("RemoteFunction") then
				pcall(fn20, descendant)
			end
		end)

		task.spawn(function()
			while not v30 do
				task.wait(1)
				v30 = fn17()
			end

			while not tbl11 do
				task.wait(1)
			end

			if tbl11 then
				tbl8.ready = true
				getgenv().z1 = true

				Library:Notify({
					Title = "Argon Hub X\n",
					Description = "The Anti-Cheat Interception Was Completed Succes: 36iZE",
					Time = 8,
				})
			end
		end)

		tbl8.fire = function(arg, arg2, arg3)
			if not tbl8.ready or not tbl11 then
				return false
			end
			local args = tbl11.args
			local remote = tbl11.remote
			local v31 = fn18(args[2])
			if v31 == "" then
				return false
			end
			local tbl12 = {}
			local v32 = args[1]
			local v33 = args[2]
			arg2 = arg2 or {}
			local tbl13

			if arg3 then
				tbl13 = arg3
			else
				tbl13 = {}
				local x = UserInputService:GetMouseLocation().X
				local y = UserInputService:GetMouseLocation().Y
				tbl13[1] = x
				tbl13[2] = y
			end

			tbl12[1] = v32
			tbl12[2] = v33
			tbl12[3] = v31
			tbl12[4] = 0.5
			tbl12[5] = arg
			tbl12[6] = arg2
			tbl12[7] = tbl13
			tbl12[8] = false

			return (pcall(function()
				if remote:IsA("RemoteEvent") then
					remote:FireServer(unpack(tbl12))
				elseif remote:IsA("RemoteFunction") then
					remote:InvokeServer(unpack(tbl12))
				end
			end))
		end

		ballApi.Get_Balls = function()
			local tbl12 = {}

			for _, child in pairs(balls:GetChildren()) do
				if child:GetAttribute("realBall") then
					child.CanCollide = false
					table.insert(tbl12, child)
				end
			end

			return tbl12
		end

		ballApi.Get_Ball = function()
			for _, child in pairs(Workspace.Balls:GetChildren()) do
				if child:GetAttribute("realBall") then
					child.CanCollide = false
					return child
				end
			end
		end

		ballApi.Lobby_Balls = function()
			for _, child in pairs(trainingBalls:GetChildren()) do
				if child:GetAttribute("realBall") then
					return child
				end
			end
		end

		ballApi.Grab_Parry_Play = function(arg)
			arg:Play(arg:GetAttribute("PlayFadeTime") or 0, arg:GetAttribute("PlayWeight") or 1, arg:GetAttribute("PlaySpeed") or 1)
		end

		local tbl12 = {}

		local function fn21(arg)
			local swordAPI = replicatedStorage.Shared.SwordAPI
			if not arg or arg == "" then
				return swordAPI.Collection.Default:FindFirstChild("GrabParry")
			end

			if tbl12[arg] then
				return tbl12[arg]
			end

			local ok, result = pcall(function()
				return replicatedStorage.Shared.ReplicatedInstances.Swords.GetSword:Invoke(arg)
			end)

			if not ok or not result or type(result) ~= "table" or not result.AnimationType then
				tbl12[arg] = swordAPI.Collection.Default:FindFirstChild("GrabParry")
				return tbl12[arg]
			end

			for _, child in pairs(swordAPI.Collection:GetChildren()) do
				if child.Name == result.AnimationType then
					local grabParry = child:FindFirstChild("GrabParry") or child:FindFirstChild("Grab")
					if grabParry then
						tbl12[arg] = grabParry
						return grabParry
					end
				end
			end

			tbl12[arg] = swordAPI.Collection.Default:FindFirstChild("GrabParry")
			return tbl12[arg]
		end

		ballApi.Parry_Animation = function()
			local n45 = n43 - 0.8

			if os.clock() - lastSpamTime >= n45 or flag21 then
				lastSpamTime = os.clock()
				flag21 = false
				local character = localPlayer.Character
				if not character then
					return
				end
				local humanoid = character:FindFirstChildOfClass("Humanoid")
				if not humanoid then
					return
				end
				local swordAnimations

				if getgenv().skinChanger then
					swordAnimations = getgenv().swordAnimations ~= "" and getgenv().swordAnimations or getgenv().swordModel ~= "" and getgenv().swordModel or character:GetAttribute("CurrentlyEquippedSword")
				else
					swordAnimations = character:GetAttribute("CurrentlyEquippedSword")
				end

				local v31 = fn21(swordAnimations)
				if not v31 then
					return
				end

				for _, v32 in pairs(humanoid.Animator:GetPlayingAnimationTracks()) do
					if v32.Name == "GrabParry" or v32.Name == "Grab" then
						v32.TimePosition = 0
						ballApi.Grab_Parry_Stop(v32)
					elseif v32.Name == "SuccessParry" or v32.Name == "Success" then
						ballApi.Grab_Parry_Stop(v32)
					end
				end

				v28 = humanoid.Animator:LoadAnimation(v31)
				ballApi.Grab_Parry_Play(v28)
			end
		end

		ballApi.Grab_Parry_Stop = function(arg)
			arg:Stop(arg:GetAttribute("StopFadeTime") or 0.1)
		end

		ballApi.Closest_Player = function()
			local huge = math.huge
			local v31 = nil

			for _, child in pairs(Workspace.Alive:GetChildren()) do
				if child ~= localPlayer then
					if child.PrimaryPart then
						local v32 = localPlayer:DistanceFromCharacter(child.PrimaryPart.Position)

						if v32 < huge then
							huge = v32
							v31 = child
						end
					end
				end
			end

			v29 = v31
			return v31
		end

		ballApi.Parry_Data = function(arg)
			local currentCamera = Workspace.CurrentCamera
			local tbl13 = {}
			local tbl14 = {}
			local tbl15

			if not isMobile then
				local mouseLocation = UserInputService:GetMouseLocation()
				tbl15 = { mouseLocation.X, mouseLocation.Y }
			else
				tbl15 = { currentCamera.ViewportSize.X / 2, currentCamera.ViewportSize.Y / 2 }
			end

			for _, child in pairs(Workspace.Alive:GetChildren()) do
				if child ~= localPlayer.Character then
					local v31, v32 = currentCamera:WorldToScreenPoint(child.PrimaryPart.Position or false)

					if v32 and v31 then
						tbl14[child] = Vector2.new(v31.X, v31.Y)
					end

					tbl13[tostring(child)] = v31
				end
			end

			local humanoidRootPart = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
			local position = humanoidRootPart and humanoidRootPart.Position or currentCamera.CFrame.Position
			local mouseLocation = not isMobile and UserInputService:GetMouseLocation() or nil
			local huge = math.huge
			local primaryPart = nil

			for _, child in pairs(Workspace.Alive:GetChildren()) do
				if child ~= localPlayer.Character and child.PrimaryPart then
					local v31, v32 = currentCamera:WorldToScreenPoint(child.PrimaryPart.Position)

					if v32 then
						local magnitude

						if mouseLocation then
							magnitude = (Vector2.new(v31.X, v31.Y) - mouseLocation).Magnitude
						else
							local vector2 = Vector2.new(currentCamera.ViewportSize.X / 2, currentCamera.ViewportSize.Y / 2)
							magnitude = (Vector2.new(v31.X, v31.Y) - vector2).Magnitude
						end

						if magnitude < huge then
							primaryPart = child.PrimaryPart
							huge = magnitude
						end
					end
				end
			end

			primaryPart = primaryPart and primaryPart.Position or position + currentCamera.CFrame.LookVector * 100
			local cFrame

			if arg == "Camera" then
				cFrame = currentCamera.CFrame
			elseif arg == "Random" then
				local unit = (primaryPart - position).Unit
				local n45 = 0
				local vector

				while true do
					local random = math.random
					vector = Vector3.new(math.random(-4000, 4000), math.random(-4000, 4000), random(-4000, 4000))
					n45 += 1
					if not (unit:Dot((primaryPart + vector - position).Unit) < 0.95 or n45 > 10) then
						continue
					end
					break
				end

				cFrame = CFrame.new(position, primaryPart + vector)
			elseif arg == "Accelerated" then
				cFrame = CFrame.new(position, primaryPart + Vector3.new(0, 5, 0))
			elseif arg == "Backwards" then
				cFrame = CFrame.new(currentCamera.CFrame.Position, position + (position - primaryPart).Unit * 10000 + Vector3.new(0, 1000, 0))
			elseif arg == "Slow" then
				cFrame = CFrame.new(position, primaryPart + Vector3.new(0, -9e18, 0))
			elseif arg == "High" then
				cFrame = CFrame.new(position, primaryPart + Vector3.new(0, 9e18, 0))
			elseif arg == "Normal" then
				cFrame = CFrame.new(position, position + (humanoidRootPart and humanoidRootPart.CFrame.LookVector or currentCamera.CFrame.LookVector))
			elseif arg == "Speed" then
				cFrame = CFrame.new(currentCamera.CFrame.Position, currentCamera.CFrame.Position + currentCamera.CFrame.UpVector * 5)
			elseif arg == "Down" then
				cFrame = CFrame.new(currentCamera.CFrame.Position, currentCamera.CFrame.Position + currentCamera.CFrame.UpVector * -9e9)
			elseif arg == "Left" then
				cFrame = CFrame.new(currentCamera.CFrame.Position, currentCamera.CFrame.Position - currentCamera.CFrame.RightVector * 9e9)
			elseif arg == "Right" then
				cFrame = CFrame.new(currentCamera.CFrame.Position, currentCamera.CFrame.Position + currentCamera.CFrame.RightVector * 9e9)
			else
				cFrame = currentCamera.CFrame
			end

			return { cFrame, tbl13, tbl15 }
		end

		ballApi.Parry = function(arg)
			local character = localPlayer.Character
			local flag22 = true

			if not character then
				flag22 = false
			end

			if flag22 and character:GetAttribute("Stunned") then
				flag22 = false
			end

			if flag22 and character:GetAttribute("DoNotParry") then
				flag22 = false
			end

			local flag23 = localPlayer:GetAttribute("LobbyTraining") and (character and character.Parent == Workspace.Dead and true or false)

			if flag22 and character then
				local flag24 = character.Parent ~= Workspace.Alive

				if flag24 then
					flag24 = not (localPlayer:GetAttribute("LobbyParry") or flag23)
				end

				if flag24 then
					flag22 = false
				end
			end

			if localPlayer:GetAttribute("LobbyParry") and localPlayer:GetAttribute("InLobbyParryCooldown") then
				flag22 = false
			end

			if not flag22 then
				return false
			end
			local v31 = ballApi.Parry_Data(arg)

			if getgenv().z1 then
				if getgenv().AnimationFix then
					ballApi.Parry_Animation()
				end

				tbl8.fire(v31[1], v31[2], v31[3])
				if recentParries > 7 then
					return false
				end
				recentParries += 1

				task.delay(0.5, function()
					if recentParries > 0 then
						recentParries -= 1
					end
				end)

				return true
			end
		end

		ballApi.Linear_Interpolation = function(arg, arg2, arg3)
			return arg + (arg2 - arg) * arg3
		end

		ballApi.Is_Curved = function()
			local v31 = ballApi.Get_Ball()
			if not v31 then
				return false
			end
			local vectorVelocity = v31.zoomies.VectorVelocity
			local magnitude = vectorVelocity.Magnitude
			local n45 = localPlayer.Character.PrimaryPart.Position - v31.CFrame.Position
			local magnitude2 = n45.Magnitude
			local v32 = n45.Unit:Dot(vectorVelocity.Unit)
			local n46 = magnitude2 / magnitude - serverStatsItem["Data Ping"]:GetValue() / 1000
			local v33 = math.asin(v32)
			n44 = ballApi.Linear_Interpolation(n44, v33, 1)
			local n47 = 15 - math.min(magnitude2 / 1000, 15) + magnitude / 100

			if n44 < v33 then
				now4 = tick()
			end

			if magnitude2 < n47 then
				return false
			end

			if tick() - now4 < n46 then
				return true
			end

			if tick() - now3 < n46 then
				return true
			end
			return v32 < 0
		end
	end

	local visualsTab, worldTab

	do
		local function fn17()
			if not blockDisabled then
				if localPlayer.PlayerGui.Hotbar.Block.UIGradient.Offset.Y < 0.4 then
					replicatedStorage.Remotes.AbilityButtonPress:Fire()
					return true
				end
				return false
			end
		end

		local function fn18()
			if not blockDisabled then
				if localPlayer.PlayerGui.Hotbar.Ability.UIGradient.Offset.Y == 0.5 then
					if tonumber(localPlayer.PlayerGui.Hotbar.Ability.ready.counts.Text) > 0 then
						local n43

						if getgenv().abilityrandom == "Legit" then
							n43 = 80
						else
							n43 = nil

							if getgenv().abilityrandom == "Blatant" then
								n43 = 20
							end
						end

						if math.random(1, 100) <= n43 and getgenv().randomabb then
							return
						end
						autoParried = true
						replicatedStorage.Remotes.AbilityButtonPress:Fire()
						return true
					end
				end
			end

			return false
		end

		local v28 = Library:CreateWindow({
			Title = "Argon Hub X",
			Footer = "",
			Icon = 119371425382054,
			NotifySide = "Right",
			ShowCustomCursor = false,
			ToggleKeybind = Enum.KeyCode.LeftControl,
			Size = UDim2.fromOffset(700, 460),
			CornerRadius = 10,
		})

		local tbl8 = {
			HomeTab = v28:AddTab("Argon Hub X - Home", "house", "by AgentX77"),
			CombatTab = v28:AddTab("Blatant", "swords", "Configure the battles."),
			VisualsTab = v28:AddTab("Visuals", "eye", "Skin changer, ESP & cosmetics."),
			WorldTab = v28:AddTab("World", "globe", "Staff detection, speed, world tweaks."),
			Settings = v28:AddTab("Settings", "settings", "UI settings and configurations"),
		}

		visualsTab = tbl8.VisualsTab
		worldTab = tbl8.WorldTab
		local Home = tbl8.HomeTab:AddLeftGroupbox("Home")
		local Discord = tbl8.HomeTab:AddRightGroupbox("Discord")

		Home:AddLabel([[Includes advanced protection systems designed to help reduce detection risks.

The script continuously monitors potential threats and may automatically disconnect you if a dangerous situation is detected.

🔒 Security Features:
• Protection against common detections
• Continuous threat monitoring
• Frequent updates for improved stability

The script is constantly updated to patch detections by the anti-cheat.]], true)

		Discord:AddDropdown("setclipboard", {
			Text = "Clipboard",
			Values = { "setclipboard", "toclipboard" },
			Default = 1,
			Callback = function(clipboardx)
				getgenv().clipboardx = clipboardx
			end,
		})

		Discord:AddButton("Join Discord", function()
			if getgenv().clipboardx == "toclipboard" and toclipboard then
				toclipboard("https://discord.gg/argonhubx")
			elseif setclipboard then
				setclipboard("https://discord.gg/argonhubx")
			end

			pcall(function()
				Library:Notify({ Title = "Argon Hub X\n", Description = "Link copied to your clipboard.", Time = 2 })
			end)
		end)

		local v29 = tbl8.CombatTab:AddLeftGroupbox("Combat - Tiggerbot")
		local v30 = tbl8.CombatTab:AddRightGroupbox("Detections - Auto Slash")
		local v31 = tbl8.CombatTab:AddLeftGroupbox("Anti / Auto")
		local v32 = tbl8.CombatTab:AddRightGroupbox("Settings - Blatant")
		local v33 = tbl8.CombatTab:AddRightGroupbox("Lobby AP - Tiggerbot")

		v29:AddToggle("auto_parry", {
			Text = "Auto Parry",
			Default = false,
			Callback = function(arg)
				if arg then
					connections["Auto Parry"] = RunService.PreSimulation:Connect(function()
						local v34 = ballApi.Get_Ball()
						local v35 = ballApi.Get_Balls()

						for _, v36 in pairs(v35) do
							if not v36 then
								return
							end
							local attribute2 = v36:GetAttribute("target")

							if attribute2 ~= localPlayer.Name then
								autoParried = false
							end

							if autoParried then
								return
							end
							local attribute3 = v34:GetAttribute("target")
							local v37 = localPlayer:DistanceFromCharacter(v36.CFrame.Position)
							local magnitude = v36.zoomies.VectorVelocity.Magnitude
							local n43 = 2.4 + magnitude * 0.002
							local n44 = parryAccuracy

							if getgenv().RandomParryAccuracyEnabled then
								n44 = 0.7 + (math.random(100, 10000) / 100 - 1) * 0.0035353535353535351
							end

							local n45 = magnitude / n43 * n44

							if v36:FindFirstChild("AeroDynamicSlashVFX") then
								Debris:AddItem(v36.AeroDynamicSlashVFX, 0)
								lastSlashTime = tick()
							end

							if runtime:FindFirstChild("Tornado") then
								if tick() - lastSlashTime < runtime.Tornado:GetAttribute("TornadoTime") + (tornadoDelay or 0.2) then
									return
								end
							end

							if magnitude <= 0 or parryPaused or parryBlocked then
								return
							end

							if attribute3 == localPlayer.Name and ballApi.Is_Curved() then
								return
							end

							if attribute2 == localPlayer.Name and v37 <= n45 then
								if getgenv().AutoAbility and fn18() then
									return
								end

								if getgenv().AutoColdown and fn17() then
									return
								end
								ballApi.Parry(parryCurve)
								autoParried = true
							end

							local now3 = tick()

							while true do
								RunService.PreSimulation:Wait()
								if not (tick() - now3 >= 0.7 or not autoParried) then
									continue
								end
								break
							end

							autoParried = false
						end
					end)
				elseif connections["Auto Parry"] then
					connections["Auto Parry"]:Disconnect()
					connections["Auto Parry"] = nil
				end
			end,
		})

		local flag21 = not isMobile

		if flag21 then
			v29:AddLabel("Auto Parry"):AddKeyPicker("auto_parry_bind", {
				Default = "F",
				Callback = function()
					local autoParry = Options.auto_parry
					autoParry:SetValue(not autoParry.Value)
				end,
			})
		end

		v29:AddToggle("auto_clash", {
			Text = "Auto Clash",
			Default = false,
			Callback = function(arg)
				if arg then
					connections["Auto Spam"] = RunService.PreSimulation:Connect(function()
						local v34 = ballApi.Get_Ball()
						if not v34 then
							return
						end
						local magnitude = v34.zoomies.VectorVelocity.Magnitude
						local v35 = localPlayer:DistanceFromCharacter(v34.CFrame.Position)

						if v35 < 17 + magnitude / 250 * 7 - math.min(v35 / 2000) and recentParries > clashThreshold then
							ballApi.Parry(parryCurve)
						end
					end)
				elseif connections["Auto Spam"] then
					connections["Auto Spam"]:Disconnect()
					connections["Auto Spam"] = nil
				end
			end,
		})

		v29:AddDropdown("parry_mode", {
			Text = "Parry Type",
			Values = { "Remote (Best)" },
			Default = 1,
			Callback = function()
				getgenv().ArgonParryMode = "Remote"
			end,
		})

		v29:AddDropdown("curve_type", {
			Text = "Curve Type",
			Values = {
				"Camera",
				"Random",
				"Accelerated",
				"Backwards",
				"Slow",
				"High",
				"Normal",
				"Speed",
				"Down",
				"Left",
				"Right",
			},
			Default = 1,
			Callback = function(arg)
				parryCurve = arg
				selectedCurve = arg
			end,
		})

		v29:AddToggle("random_curve", {
			Text = "Random Curve",
			Default = false,
			Callback = function(arg)
				if arg then
					connections["Random Curve"] = RunService.PreSimulation:Connect(function()
						parryCurve = ({
							"Camera",
							"Random",
							"Accelerated",
							"Backwards",
							"Slow",
							"High",
							"Normal",
							"Speed",
							"Down",
							"Left",
							"Right",
						})[math.random(11)]
					end)
				else
					if connections["Random Curve"] then
						connections["Random Curve"]:Disconnect()
						connections["Random Curve"] = nil
					end

					parryCurve = selectedCurve
				end
			end,
		})

		getgenv().AnimationFix = getgenv().AnimationFix or false

		v29:AddToggle("animation_fix", {
			Text = "Animation Fix",
			Default = false,
			Tooltip = "Parry zamanı qılınc animasiyasını oynadır.",
			Callback = function(animationFix)
				getgenv().AnimationFix = animationFix
			end,
		})

		v29:AddDivider()

		v29:AddToggle("tigger_bot", {
			Text = "Tiggerbot - AP",
			Default = false,
			Callback = function(arg)
				if arg then
					connections.Triggerbot = RunService.PreSimulation:Connect(function()
						for _, v34 in pairs(ballApi.Get_Balls()) do
							if not v34 then
								return
							end
							local attribute2 = v34:GetAttribute("target")
							local magnitude = v34.zoomies.VectorVelocity.Magnitude

							if attribute2 ~= localPlayer.Name then
								triggerbotParried = false
							end

							if triggerbotParried then
								return
							end

							if parryPaused or parryBlocked then
								return
							end

							if attribute2 == localPlayer.Name and magnitude > 0 then
								ballApi.Parry(parryCurve)
								triggerbotParried = true
							end

							local now3 = tick()

							while true do
								RunService.PreSimulation:Wait()
								if not (tick() - now3 >= triggerbotCooldown or not triggerbotParried) then
									continue
								end
								break
							end

							triggerbotParried = false
						end
					end)
				elseif connections.Triggerbot then
					connections.Triggerbot:Disconnect()
					connections.Triggerbot = nil
				end
			end,
		})

		if flag21 then
			v29:AddLabel("Tiggerbot - AP"):AddKeyPicker("tiggerbot_ap_bind", {
				Default = "G",
				Callback = function()
					local tiggerBot = Options.tigger_bot
					tiggerBot:SetValue(not tiggerBot.Value)
				end,
			})
		end

		if isMobile then
			v29:AddToggle("tiggerbot_mobile_panel", {
				Text = "Tiggerbot Button",
				Default = false,
				Callback = function(arg)
					if arg then
						if game:GetService("CoreGui"):FindFirstChild("__tiggerbot_gui__") then
							game:GetService("CoreGui").__tiggerbot_gui__.Enabled = true
							return
						end
						local TweenService = game:GetService("TweenService")
						local screenGui = Instance.new("ScreenGui")
						screenGui.Name = "__tiggerbot_gui__"
						local frame2 = Instance.new("Frame")
						local uiCorner = Instance.new("UICorner")
						local textLabel = Instance.new("TextLabel")
						local textButton = Instance.new("TextButton")
						local uiCorner2 = Instance.new("UICorner")
						local frame3 = Instance.new("Frame")
						local uiCorner3 = Instance.new("UICorner")
						local uiStroke = Instance.new("UIStroke")
						screenGui.Parent = cloneRef(game:GetService("CoreGui"))
						screenGui.Enabled = true
						frame2.Parent = screenGui
						uiCorner.Parent = frame2
						textLabel.Parent = frame2
						textButton.Parent = frame2
						uiCorner2.Parent = textButton
						frame3.Parent = textButton
						uiCorner3.Parent = frame3
						uiStroke.Parent = frame2
						screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
						frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						frame2.Size = UDim2.new(0, 160, 0, 75)
						frame2.Position = UDim2.new(0.5, -80, 0.5, -37)
						frame2.Active = true
						uiCorner.CornerRadius = UDim.new(0, 15)
						uiStroke.Thickness = 2
						uiStroke.Color = Color3.fromRGB(40, 40, 40)
						textLabel.BackgroundTransparency = 1
						textLabel.Size = UDim2.new(1, 0, 0, 17)
						textLabel.Position = UDim2.new(0, 0, 0, 0)
						textLabel.Text = "Tiggerbot"
						textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
						textLabel.Font = Enum.Font.GothamBold
						textLabel.TextScaled = true
						textButton.Size = UDim2.new(0.9, 0, 0, 32)
						textButton.Position = UDim2.new(0.05, 0, 0.35, 0)
						textButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
						textButton.Text = "Toggle Tiggerbot"
						textButton.TextColor3 = Color3.fromRGB(255, 255, 255)
						textButton.Font = Enum.Font.Gotham
						textButton.TextSize = 13
						textButton.AutoButtonColor = false
						uiCorner2.CornerRadius = UDim.new(0, 10)
						frame3.Size = UDim2.new(0, 10, 0, 10)
						frame3.Position = UDim2.new(0, 9, 0.5, -6)
						frame3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
						frame3.ZIndex = 2
						uiCorner3.CornerRadius = UDim.new(1, 0)
						local flag22 = false

						textButton.MouseButton1Click:Connect(function()
							flag22 = not flag22

							if flag22 then
								TweenService:Create(frame3, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(0, 255, 0) }):Play()

								connections.TriggerbotMobile = RunService.PreSimulation:Connect(function()
									for _, v34 in pairs(ballApi.Get_Balls()) do
										if not v34 then
											return
										end
										local attribute2 = v34:GetAttribute("target")
										local magnitude = v34.zoomies.VectorVelocity.Magnitude

										if attribute2 ~= localPlayer.Name then
											triggerbotParried = false
										end

										if triggerbotParried then
											return
										end

										if parryPaused or parryBlocked then
											return
										end

										if attribute2 == localPlayer.Name and magnitude > 0 then
											ballApi.Parry(parryCurve)
											triggerbotParried = true
										end

										local now3 = tick()

										while true do
											RunService.PreSimulation:Wait()
											if not (tick() - now3 >= triggerbotCooldown or not triggerbotParried) then
												continue
											end
											break
										end

										triggerbotParried = false
									end
								end)
							else
								TweenService:Create(frame3, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(255, 0, 0) }):Play()

								if connections.TriggerbotMobile then
									connections.TriggerbotMobile:Disconnect()
									connections.TriggerbotMobile = nil
								end
							end
						end)

						local flag23 = nil
						local v34 = nil
						local position = nil
						local position2 = nil

						local function fn19(arg2)
							local n43 = arg2.Position - position
							local udim2 = UDim2.new(position2.X.Scale, position2.X.Offset + n43.X, position2.Y.Scale, position2.Y.Offset + n43.Y)
							TweenService:Create(frame2, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = udim2 }):Play()
						end

						frame2.InputBegan:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
								flag23 = true
								position = input.Position
								position2 = frame2.Position

								input.Changed:Connect(function()
									if input.UserInputState == Enum.UserInputState.End then
										flag23 = false
									end
								end)
							end
						end)

						frame2.InputChanged:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
								v34 = input
							end
						end)

						UserInputService.InputChanged:Connect(function(input)
							if input == v34 and flag23 then
								fn19(input)
							end
						end)
					elseif cloneRef(game:GetService("CoreGui")):FindFirstChild("__tiggerbot_gui__") then
						cloneRef(game:GetService("CoreGui")).__tiggerbot_gui__.Enabled = false

						if connections.TriggerbotMobile then
							connections.TriggerbotMobile:Disconnect()
							connections.TriggerbotMobile = nil
						end
					end
				end,
			})
		end

		if isMobile then
			v29:AddToggle("Manual Spam", {
				Text = "Manual Spam",
				Default = false,
				Callback = function(arg)
					if arg then
						if game:GetService("CoreGui"):FindFirstChild(getgenv().mname) then
							game:GetService("CoreGui")[getgenv().mname].Enabled = true
							return
						end
						local TweenService = game:GetService("TweenService")
						local screenGui = Instance.new("ScreenGui")
						screenGui.Name = getgenv().mname
						local frame2 = Instance.new("Frame")
						local uiCorner = Instance.new("UICorner")
						local textLabel = Instance.new("TextLabel")
						local textButton = Instance.new("TextButton")
						local uiCorner2 = Instance.new("UICorner")
						local frame3 = Instance.new("Frame")
						local uiCorner3 = Instance.new("UICorner")
						local uiStroke = Instance.new("UIStroke")
						screenGui.Parent = cloneRef(game:GetService("CoreGui"))
						screenGui.Enabled = true
						frame2.Parent = screenGui
						uiCorner.Parent = frame2
						textLabel.Parent = frame2
						textButton.Parent = frame2
						uiCorner2.Parent = textButton
						frame3.Parent = textButton
						uiCorner3.Parent = frame3
						uiStroke.Parent = frame2
						screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
						frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						frame2.Size = UDim2.new(0, 160, 0, 75)
						frame2.Position = UDim2.new(0.5, -80, 0.5, -37)
						frame2.Active = true
						uiCorner.CornerRadius = UDim.new(0, 15)
						uiStroke.Thickness = 2
						uiStroke.Color = Color3.fromRGB(40, 40, 40)
						textLabel.BackgroundTransparency = 1
						textLabel.Size = UDim2.new(1, 0, 0, 17)
						textLabel.Position = UDim2.new(0, 0, 0, 0)
						textLabel.Text = "Argon Hub X"
						textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
						textLabel.Font = Enum.Font.GothamBold
						textLabel.TextScaled = true
						textButton.Size = UDim2.new(0.9, 0, 0, 32)
						textButton.Position = UDim2.new(0.05, 0, 0.35, 0)
						textButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
						textButton.Text = "Toggle Spam"
						textButton.TextColor3 = Color3.fromRGB(255, 255, 255)
						textButton.Font = Enum.Font.Gotham
						textButton.TextSize = 13
						textButton.AutoButtonColor = false
						uiCorner2.CornerRadius = UDim.new(0, 10)
						frame3.Size = UDim2.new(0, 10, 0, 10)
						frame3.Position = UDim2.new(0, 9, 0.5, -6)
						frame3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
						frame3.ZIndex = 2
						uiCorner3.CornerRadius = UDim.new(1, 0)

						textButton.MouseEnter:Connect(function()
							TweenService:Create(textButton, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(20, 20, 20) }):Play()
						end)

						textButton.MouseLeave:Connect(function()
							local color = arg and Color3.fromRGB(20, 20, 20) or Color3.fromRGB(20, 20, 20)
							TweenService:Create(textButton, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = color }):Play()
						end)

						textButton.MouseButton1Click:Connect(function()
							arg = not arg

							if arg then
								TweenService:Create(frame3, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(0, 255, 0) }):Play()
								TweenService:Create(textButton, TweenInfo.new(0.3), { BackgroundColor3 = Color3.fromRGB(20, 20, 20) }):Play()

								connections.manualspam = RunService.PreSimulation:Connect(function()
									ballApi.Parry(parryCurve)
								end)
							else
								TweenService:Create(frame3, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(255, 0, 0) }):Play()
								TweenService:Create(textButton, TweenInfo.new(0.3), { BackgroundColor3 = Color3.fromRGB(20, 20, 20) }):Play()

								if connections.manualspam then
									connections.manualspam:Disconnect()
									connections.manualspam = nil
								end
							end
						end)

						local flag22 = nil
						local v34 = nil
						local position = nil
						local position2 = nil

						update = function(arg2)
							local n43 = arg2.Position - position
							local udim2 = UDim2.new(position2.X.Scale, position2.X.Offset + n43.X, position2.Y.Scale, position2.Y.Offset + n43.Y)
							TweenService:Create(frame2, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = udim2 }):Play()
						end

						frame2.InputBegan:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
								flag22 = true
								position = input.Position
								position2 = frame2.Position

								input.Changed:Connect(function()
									if input.UserInputState == Enum.UserInputState.End then
										flag22 = false
									end
								end)
							end
						end)

						frame2.InputChanged:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
								v34 = input
							end
						end)

						UserInputService.InputChanged:Connect(function(input)
							if input == v34 and flag22 then
								update(input)
							end
						end)

						downspam = function()
							arg = false
							frame3.BackgroundColor3 = Color3.fromRGB(255, 0)
						end
					elseif cloneRef(game:GetService("CoreGui")):FindFirstChild(getgenv().mname) then
						cloneRef(game:GetService("CoreGui"))[getgenv().mname].Enabled = false
						downspam()
					end
				end,
			})
		else
			v29:AddLabel("Manual Spam"):AddKeyPicker("manual_spam_bind", {
				Default = "E",
				Callback = function()
					if connections.manualspam then
						connections.manualspam:Disconnect()
						connections.manualspam = nil
						return
					end

					connections.manualspam = RunService.PreSimulation:Connect(function()
						ballApi.Parry(parryCurve)
					end)
				end,
			})
		end

		v29:AddToggle("instant_parry", {
			Text = "Legit Parry - AP",
			Default = false,
			Callback = function(arg)
				if arg then
					connections.leggb = RunService.Heartbeat:Connect(function()
						for _, v34 in pairs(ballApi.Get_Balls()) do
							local v35 = Workspace.Alive:FindFirstChild(localPlayer.Name)
							local n43 = #Workspace.Alive:GetChildren()
							local name = localPlayer.Name

							if (v34:GetAttribute("target") == name or n43 == 1 and v35) and v34 ~= lastClashBall and lastClashBall ~= nil then
								local v36 = lastBallSpeed

								if (getgenv().instantparry or 250) <= v36 then
									ballApi.Parry(parryCurve)
								end
							end

							lastClashBall = v34
							lastBallSpeed = v34.zoomies.VectorVelocity.Magnitude
						end
					end)
				elseif connections.leggb then
					connections.leggb:Disconnect()
					connections.leggb = nil
				end
			end,
		})

		v29:AddDivider()

		v29:AddToggle("auto_ability", {
			Text = "Auto Ability",
			Default = false,
			Callback = function(autoAbility)
				getgenv().AutoAbility = autoAbility
			end,
		})

		v29:AddDivider()

		v29:AddToggle("random-use-ability", {
			Text = "Random Ability",
			Default = false,
			Callback = function(randomabb)
				getgenv().randomabb = randomabb
			end,
		})

		v29:AddDropdown("legit-blatant", {
			Text = "Legit / Blatant",
			Values = { "Legit", "Blatant" },
			Default = 1,
			Callback = function(abilityrandom)
				getgenv().abilityrandom = abilityrandom
			end,
		})

		v30:AddToggle("infinity", {
			Text = "Infinity Detection",
			Default = false,
			Callback = function(infinityDetection)
				getgenv().InfinityDetection = infinityDetection
			end,
		})

		v30:AddToggle("deathtslash", {
			Text = "Death Slash Detection",
			Default = false,
			Callback = function(deathSlashDetection)
				getgenv().DeathSlashDetection = deathSlashDetection
			end,
		})

		v30:AddToggle("timehole", {
			Text = "Time Hole Detection",
			Default = false,
			Callback = function(timeHoleDetection)
				getgenv().TimeHoleDetection = timeHoleDetection
			end,
		})

		v30:AddToggle("forcefield", {
			Text = "Forcefield Detection",
			Default = false,
			Callback = function(forcefieldDetection)
				getgenv().ForcefieldDetection = forcefieldDetection
			end,
		})

		v30:AddToggle("singularity", {
			Text = "Singularity Detection",
			Default = false,
			Callback = function(singularityCape2)
				getgenv().SingularityCape2 = singularityCape2
			end,
		})

		v30:AddDivider()

		v30:AddToggle("slashfury", {
			Text = "Slash of Fury Detection",
			Tooltip = "Generate automatic slashes for you.",
			Default = false,
			Callback = function(slashOfFuryDetection)
				getgenv().SlashOfFuryDetection = slashOfFuryDetection
			end,
		})

		v30:AddDivider()
		local connection = nil

		local function fn19()
			if not getgenv().AbilityExploit or not getgenv().ThunderDashNoCooldown then
				return
			end
			local shared = replicatedStorage:FindFirstChild("Shared")
			shared = shared and shared:FindFirstChild("Abilities")
			shared = shared and shared:FindFirstChild("Thunder Dash")
			if not shared then
				return
			end
			local ok, result = pcall(require, shared)

			if ok and result then
				pcall(function()
					result.cooldown = 0
					result.cooldownReductionPerUpgrade = 0
				end)
			end
		end

		local function fn20()
			if connection then
				return
			end

			connection = RunService.Heartbeat:Connect(function()
				if getgenv().AbilityExploit and getgenv().ThunderDashNoCooldown then
					fn19()
				end
			end)
		end

		local function fn21()
			if connection then
				connection:Disconnect()
				connection = nil
			end
		end

		v30:AddToggle("thunder_dash_detect", {
			Text = "Thunder Dash Detection",
			Default = false,
			Callback = function(abilityExploit)
				getgenv().AbilityExploit = abilityExploit
				getgenv().ThunderDashNoCooldown = abilityExploit

				if abilityExploit then
					fn19()
					fn20()
				else
					fn21()
				end
			end,
		})

		v31:AddToggle("antipulsepp", {
			Text = "Anti Pulse Protection",
			Default = true,
			Callback = function(antipulse)
				getgenv().antipulse = antipulse
			end,
		})

		v31:AddToggle("phatom", {
			Text = "Anti Phatom Attack",
			Default = false,
			Callback = function(arg)
				if arg then
					connections["Anti Phantom Attack"] = RunService.Heartbeat:Connect(function()
						for _, v34 in pairs(ballApi.Get_Balls()) do
							local attribute2 = v34:GetAttribute("target")

							if antiPhantomActive and attribute2 == localPlayer.Name then
								ContextActionService:BindAction("BlockMovement", function()
									return Enum.ContextActionResult.Sink
								end, false, unpack(Enum.PlayerActions:GetEnumItems()))

								localPlayer.Character.Humanoid.WalkSpeed = 37.5
								localPlayer.Character.Humanoid:MoveTo(v34.Position)

								v34:GetAttributeChangedSignal("target"):Once(function()
									ContextActionService:UnbindAction("BlockMovement")
									localPlayer.Character.Humanoid.WalkSpeed = 36
									localPlayer.Character.Humanoid:MoveTo(localPlayer.Character.HumanoidRootPart.Position)
									antiPhantomActive = false
								end)
							end
						end
					end)
				elseif connections["Anti Phantom Attack"] then
					connections["Anti Phantom Attack"]:Disconnect()
					connections["Anti Phantom Attack"] = nil
				end
			end,
		})

		v31:AddToggle("hellhok", {
			Text = "Anti Hellhok Attack",
			Default = true,
			Callback = function(antiHellhook)
				getgenv().Anti_Hellhook = antiHellhook
			end,
		})

		v31:AddDivider()

		v31:AddToggle("cooldownpt", {
			Text = "Cooldown Protection",
			Default = false,
			Callback = function(autoColdown)
				getgenv().AutoColdown = autoColdown
			end,
		})

		v32:AddSlider("parry_normal_cy", {
			Text = "Parry Accuracy",
			Default = 100,
			Min = 1,
			Max = 100,
			Rounding = 1,
			Callback = function(arg)
				parryAccuracy = 0.7 + (arg - 1) * 0.0035353535353535351
			end,
		})

		v32:AddToggle("randomnormal", {
			Text = "Random Accuracy",
			Default = false,
			Callback = function(randomParryAccuracyEnabled)
				getgenv().RandomParryAccuracyEnabled = randomParryAccuracyEnabled
			end,
		})

		v32:AddSlider("tigger_delay", {
			Text = "Tigger Speed",
			Default = 0.7,
			Min = 0.5,
			Max = 1,
			Rounding = 1,
			Callback = function(arg)
				triggerbotCooldown = arg
			end,
		})

		v32:AddSlider("instant_speed", {
			Text = "Legit Parry",
			Default = 250,
			Min = 1,
			Max = 350,
			Rounding = 1,
			Callback = function(instantparry)
				getgenv().instantparry = instantparry
			end,
		})

		v32:AddSlider("tornados_lash", {
			Text = "Tornado Slash",
			Default = 0.2,
			Min = 0,
			Max = 0.5,
			Rounding = 1,
			Callback = function(arg)
				tornadoDelay = arg
			end,
		})

		v32:AddDivider()
		v32:AddLabel("Threshold Spams: The Power Of Spam.")

		v32:AddSlider("thereshold_spam", {
			Text = "Threshold Spam",
			Default = 1,
			Min = 1,
			Max = 3,
			Rounding = 1,
			Callback = function(arg)
				clashThreshold = arg
			end,
		})

		v32:AddSlider("slash_delay", {
			Text = "Slash Fury Delay",
			Default = 0.1,
			Min = 0,
			Max = 0.5,
			Rounding = 1,
			Callback = function(slashOfFuryDelay)
				getgenv().SlashOfFuryDelay = slashOfFuryDelay
			end,
		})

		v33:AddToggle("lobby_ap", {
			Text = "Auto Parry",
			Default = false,
			Callback = function(arg)
				if arg then
					connections["Lobby AP"] = RunService.PreSimulation:Connect(function()
						local v34 = ballApi.Lobby_Balls()
						if not v34 then
							return
						end

						v34.AttributeChanged:Once(function()
							lobbyParried = false
						end)

						local magnitude = v34.zoomies.VectorVelocity.Magnitude
						if lobbyParried then
							return
						end
						local attribute2 = v34:GetAttribute("target")
						local v35 = localPlayer:DistanceFromCharacter(v34.CFrame.Position)
						local n43 = math.random(500, 1200) / 100
						local n44 = lobbyParryAccuracy

						if getgenv().RandomParryAccuracyEnabled_Lobby then
							n44 = 0.7 + (math.random(100, 10000) / 100 - 1) * 0.0035353535353535351
						end

						local n45 = n43 + math.max(magnitude / 3.7 * n44)

						if attribute2 == localPlayer.Name and v35 <= n45 and magnitude > 0 then
							ballApi.Parry(parryCurve)
							lobbyParried = true
						end
					end)
				elseif connections["Lobby AP"] then
					connections["Lobby AP"]:Disconnect()
					connections["Lobby AP"] = nil
				end
			end,
		})

		v33:AddToggle("spam_lobby", {
			Text = "Auto Clash",
			Default = false,
			Callback = function(arg)
				if arg then
					connections["Lobby APP"] = RunService.PreSimulation:Connect(function()
						local v34 = ballApi.Lobby_Balls()
						if not v34 then
							return
						end
						local magnitude = v34.zoomies.VectorVelocity.Magnitude

						if (getgenv().speedforspam or 500) <= magnitude then
							ballApi.Parry(parryCurve)
						end
					end)
				elseif connections["Lobby APP"] then
					connections["Lobby APP"]:Disconnect()
					connections["Lobby APP"] = nil
				end
			end,
		})

		v33:AddDivider()

		v33:AddToggle("tiggerbot_lobby", {
			Text = "Tigerbot - Lobby",
			Default = false,
			Callback = function(arg)
				if arg then
					connections.TriggerbotAP = RunService.PreSimulation:Connect(function()
						local v34 = ballApi.Lobby_Balls()
						if not v34 then
							return
						end

						v34.AttributeChanged:Once(function()
							lobbyTriggerbotParried = false
						end)

						local attribute2 = v34:GetAttribute("target")
						local magnitude = v34.zoomies.VectorVelocity.Magnitude
						if lobbyTriggerbotParried then
							return
						end

						if attribute2 == localPlayer.Name and magnitude > 0 then
							ballApi.Parry(parryCurve)
							lobbyTriggerbotParried = true
						end
					end)
				elseif connections.TriggerbotAP then
					connections.TriggerbotAP:Disconnect()
					connections.TriggerbotAP = nil
				end
			end,
		})

		v33:AddToggle("random_ac_lobby", {
			Text = "Random Accuracy",
			Default = false,
			Callback = function(randomParryAccuracyEnabledLobby)
				getgenv().RandomParryAccuracyEnabled_Lobby = randomParryAccuracyEnabledLobby
			end,
		})

		v33:AddDivider()

		v33:AddSlider("speed_spam", {
			Text = "Speed for Spam",
			Default = 500,
			Min = 500,
			Max = 1000,
			Rounding = 1,
			Callback = function(speedforspam)
				getgenv().speedforspam = speedforspam
			end,
		})

		v33:AddSlider("lobby_accuracy", {
			Text = "Parry Accuracy",
			Default = 100,
			Min = 1,
			Max = 100,
			Rounding = 1,
			Callback = function(arg)
				lobbyParryAccuracy = 0.7 + (arg - 1) * 0.0035353535353535351
			end,
		})
	end

	do
		local Players = game:GetService("Players")
		getgenv().AbilityESP = false
		local tbl8 = {}

		local function fn17(arg)
			task.spawn(function()
				local character = arg.Character

				while not character or not character.Parent do
					task.wait()
					character = arg.Character
				end

				local head = character:WaitForChild("Head", 10)
				if not head then
					return
				end
				local billboardGui = Instance.new("BillboardGui")
				billboardGui.Name = "AbilityESP_Gui"
				billboardGui.Adornee = head
				billboardGui.Size = UDim2.new(0, 220, 0, 60)
				billboardGui.StudsOffset = Vector3.new(0, 3.5, 0)
				billboardGui.AlwaysOnTop = true
				billboardGui.Parent = head
				local textLabel = Instance.new("TextLabel")
				textLabel.Size = UDim2.new(1, 0, 1, 0)
				textLabel.TextColor3 = Color3.fromRGB(220, 50, 50)
				textLabel.TextSize = 16
				textLabel.TextStrokeTransparency = 0
				textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
				textLabel.Font = Enum.Font.GothamBold
				textLabel.BackgroundTransparency = 1
				textLabel.Parent = billboardGui
				textLabel.Visible = false
				tbl8[arg] = textLabel
				local humanoid = character:FindFirstChild("Humanoid")

				if humanoid then
					humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
				end

				local connection = nil

				connection = RunService.Heartbeat:Connect(function()
					if not (character and character.Parent) then
						connection:Disconnect()

						pcall(function()
							billboardGui:Destroy()
						end)

						tbl8[arg] = nil
						return
					end

					textLabel.Visible = getgenv().AbilityESP

					if getgenv().AbilityESP then
						local attribute2 = arg:GetAttribute("EquippedAbility")
						textLabel.Text = attribute2 and arg.DisplayName .. " [" .. attribute2 .. "]" or arg.DisplayName
					end
				end)
			end)
		end

		for _, player in pairs(Players:GetPlayers()) do
			if player ~= localPlayer then
				player.CharacterAdded:Connect(function()
					fn17(player)
				end)

				if player.Character then
					fn17(player)
				end
			end
		end

		Players.PlayerAdded:Connect(function(player)
			player.CharacterAdded:Connect(function()
				fn17(player)
			end)
		end)

		local v28 = visualsTab:AddLeftGroupbox("Skin Changer")
		local v29 = visualsTab:AddRightGroupbox("Cosmetics & ESP")
		local v30 = visualsTab:AddLeftGroupbox("Avatar Changer")
		local v31 = cloneRef(game:GetService("Players"))
		local localPlayer2 = v31.LocalPlayer

		local function fn18()
			if _G.OriginalAppearance then
				return
			end
			local character = localPlayer2.Character
			if not character then
				return
			end

			_G.OriginalAppearance = {
				Face = nil,
				Shirt = nil,
				Pants = nil,
				BodyColors = nil,
				HeadMesh = nil,
				Accessories = {},
				CharacterMeshes = {},
			}

			local head = character:FindFirstChild("Head")

			if head then
				local decal = head:FindFirstChildOfClass("Decal")

				if decal then
					_G.OriginalAppearance.Face = decal.Texture
				end

				local specialMesh = head:FindFirstChildOfClass("SpecialMesh")

				if specialMesh then
					_G.OriginalAppearance.HeadMesh = specialMesh:Clone()
				end
			end

			local shirt = character:FindFirstChildOfClass("Shirt")

			if shirt then
				_G.OriginalAppearance.Shirt = shirt.ShirtTemplate
			end

			local pants = character:FindFirstChildOfClass("Pants")

			if pants then
				_G.OriginalAppearance.Pants = pants.PantsTemplate
			end

			local bodyColors = character:FindFirstChildOfClass("BodyColors")

			if bodyColors then
				_G.OriginalAppearance.BodyColors = {
					HeadColor3 = bodyColors.HeadColor3,
					LeftArmColor3 = bodyColors.LeftArmColor3,
					RightArmColor3 = bodyColors.RightArmColor3,
					LeftLegColor3 = bodyColors.LeftLegColor3,
					RightLegColor3 = bodyColors.RightLegColor3,
					TorsoColor3 = bodyColors.TorsoColor3,
				}
			end

			for _, child in ipairs(character:GetChildren()) do
				if child:IsA("Accessory") or child:IsA("Accoutrement") then
					table.insert(_G.OriginalAppearance.Accessories, child:Clone())
				elseif child:IsA("CharacterMesh") then
					table.insert(_G.OriginalAppearance.CharacterMeshes, child:Clone())
				end
			end
		end

		local function fn19()
			local character = localPlayer2.Character
			if not character or not _G.OriginalAppearance then
				return
			end

			pcall(function()
				for _, child in ipairs(character:GetChildren()) do
					if child:IsA("Accessory") or child:IsA("Accoutrement") or child:IsA("Shirt") or child:IsA("Pants") or child:IsA("BodyColors") or child:IsA("CharacterMesh") or child:IsA("ShirtGraphic") then
						child:Destroy()
					end
				end

				local head = character:FindFirstChild("Head")

				if head then
					local decal = head:FindFirstChildOfClass("Decal")

					if decal then
						decal:Destroy()
					end

					if _G.OriginalAppearance.Face then
						local decal2 = Instance.new("Decal")
						decal2.Name = "face"
						decal2.Texture = _G.OriginalAppearance.Face
						decal2.Parent = head
					end

					local specialMesh = head:FindFirstChildOfClass("SpecialMesh")

					if specialMesh then
						specialMesh:Destroy()
					end

					if _G.OriginalAppearance.HeadMesh then
						_G.OriginalAppearance.HeadMesh:Clone().Parent = head
					end
				end

				if _G.OriginalAppearance.Shirt then
					local shirt = Instance.new("Shirt")
					shirt.Name = "Shirt"
					shirt.ShirtTemplate = _G.OriginalAppearance.Shirt
					shirt.Parent = character
				end

				if _G.OriginalAppearance.Pants then
					local pants = Instance.new("Pants")
					pants.Name = "Pants"
					pants.PantsTemplate = _G.OriginalAppearance.Pants
					pants.Parent = character
				end

				if _G.OriginalAppearance.BodyColors then
					local bodyColors = Instance.new("BodyColors")
					bodyColors.HeadColor3 = _G.OriginalAppearance.BodyColors.HeadColor3
					bodyColors.LeftArmColor3 = _G.OriginalAppearance.BodyColors.LeftArmColor3
					bodyColors.RightArmColor3 = _G.OriginalAppearance.BodyColors.RightArmColor3
					bodyColors.LeftLegColor3 = _G.OriginalAppearance.BodyColors.LeftLegColor3
					bodyColors.RightLegColor3 = _G.OriginalAppearance.BodyColors.RightLegColor3
					bodyColors.TorsoColor3 = _G.OriginalAppearance.BodyColors.TorsoColor3
					bodyColors.Parent = character
				end

				for _, characterMeshe in ipairs(_G.OriginalAppearance.CharacterMeshes) do
					characterMeshe:Clone().Parent = character
				end

				for _, accessory in ipairs(_G.OriginalAppearance.Accessories) do
					accessory:Clone().Parent = character
				end
			end)
		end

		local function fn20(parent, arg)
			local handle = arg:FindFirstChild("Handle")
			if not handle or not handle:IsA("BasePart") then
				return
			end
			local attachment = handle:FindFirstChildOfClass("Attachment")
			local v32 = nil

			if attachment then
				v32 = nil

				for _, child in ipairs(parent:GetChildren()) do
					if child:IsA("BasePart") then
						v32 = child:FindFirstChild(attachment.Name)
						if not v32 then
							continue
						end
					else
						continue
					end

					break
				end
			end

			local tbl9 = {
				HatAttachment = { Part = "Head", CFrame = CFrame.new(0, 0.6, 0) },
				HairAttachment = { Part = "Head", CFrame = CFrame.new(0, 0.6, 0) },
				FaceFrontAttachment = { Part = "Head", CFrame = CFrame.new(0, 0, -0.6) },
				FaceCenterAttachment = { Part = "Head", CFrame = CFrame.new(0, 0, -0.6) },
				NeckAttachment = { Part = "Torso", CFrame = CFrame.new(0, 1, 0) },
				BackAttachment = { Part = "Torso", CFrame = CFrame.new(0, 0, 0.6) },
				BodyBackAttachment = { Part = "Torso", CFrame = CFrame.new(0, 0, 0.6) },
				WaistAttachment = { Part = "Torso", CFrame = CFrame.new(0, -1, 0) },
				BodyWaistAttachment = { Part = "Torso", CFrame = CFrame.new(0, -1, 0) },
				LeftCollarAttachment = { Part = "Torso", CFrame = CFrame.new(-0.6, 1, 0) },
				RightCollarAttachment = { Part = "Torso", CFrame = CFrame.new(0.6, 1, 0) },
				LeftShoulderAttachment = { Part = "Torso", CFrame = CFrame.new(-1, 1, 0) },
				RightShoulderAttachment = { Part = "Torso", CFrame = CFrame.new(1, 1, 0) },
			}

			if v32 then
				arg.Parent = parent
				handle.CanCollide = false
				handle.Anchored = false
				local parent2 = v32.Parent

				if v32:IsA("Attachment") and attachment then
					handle.CFrame = parent2.CFrame * v32.CFrame * attachment.CFrame:Inverse()
				else
					handle.CFrame = parent2.CFrame * CFrame.new(0, 0, 0)
				end

				local weld = Instance.new("Weld")
				weld.Name = "AccessoryWeld"
				weld.Part0 = handle
				weld.Part1 = parent2
				weld.C0 = attachment and attachment.CFrame or CFrame.new(0, 0.6, 0)
				weld.C1 = v32:IsA("Attachment") and v32.CFrame or CFrame.new()
				weld.Parent = handle
			else
				local cframe = CFrame.new(0, 0.6, 0)
				local str7 = "Head"

				if attachment then
					local v33 = tbl9[attachment.Name]

					if v33 then
						str7 = v33.Part
						cframe = v33.CFrame
					end
				end

				local v33 = parent:FindFirstChild(str7)

				if v33 then
					arg.Parent = parent
					handle.CanCollide = false
					handle.Anchored = false

					if attachment then
						handle.CFrame = v33.CFrame * cframe * attachment.CFrame:Inverse()
					else
						handle.CFrame = v33.CFrame * cframe
					end

					local weld = Instance.new("Weld")
					weld.Name = "AccessoryWeld"
					weld.Part0 = handle
					weld.Part1 = v33
					weld.C0 = attachment and attachment.CFrame or cframe
					weld.C1 = cframe
					weld.Parent = handle
				else
					arg.Parent = parent
				end
			end
		end

		local function fn21(arg)
			local character = localPlayer2.Character
			if not character then
				return
			end

			local ok, result = pcall(function()
				return v31:CreateHumanoidModelFromUserId(arg)
			end)

			if not ok or not result then
				return
			end

			pcall(function()
				for _, child in ipairs(character:GetChildren()) do
					if child:IsA("Accessory") or child:IsA("Accoutrement") or child:IsA("Shirt") or child:IsA("Pants") or child:IsA("BodyColors") or child:IsA("CharacterMesh") or child:IsA("ShirtGraphic") then
						child:Destroy()
					end
				end

				local head = character:FindFirstChild("Head")
				local head2 = result:FindFirstChild("Head")

				if head and head2 then
					local decal = head:FindFirstChildOfClass("Decal")

					if decal then
						decal:Destroy()
					end

					local decal2 = head2:FindFirstChildOfClass("Decal")

					if decal2 then
						decal2:Clone().Parent = head
					end

					local specialMesh = head:FindFirstChildOfClass("SpecialMesh")
					local specialMesh2 = head2:FindFirstChildOfClass("SpecialMesh")

					if specialMesh2 then
						if specialMesh then
							specialMesh:Destroy()
						end

						specialMesh2:Clone().Parent = head
					elseif specialMesh then
						specialMesh:Destroy()
					end

					head.Size = head2.Size
					head.Color = head2.Color
				end

				for _, child in ipairs(result:GetChildren()) do
					if child:IsA("Shirt") or child:IsA("Pants") or child:IsA("BodyColors") or child:IsA("ShirtGraphic") or child:IsA("CharacterMesh") then
						child:Clone().Parent = character
					elseif child:IsA("Accessory") or child:IsA("Accoutrement") then
						pcall(function()
							fn20(character, child:Clone())
						end)
					end
				end

				result:Destroy()
			end)
		end

		local str7 = ""
		local flag21 = false

		local function fn22(arg)
			if arg == nil or arg == "" then
				return nil
			end
			local num = tonumber(arg)
			if num then
				return num
			end

			local ok, result = pcall(function()
				return v31:GetUserIdFromNameAsync(arg)
			end)

			if ok and result then
				return result
			end
			return nil
		end

		v30:AddToggle("avatar_changer_on", {
			Text = "Avatar Changer",
			Default = false,
			Callback = function(arg)
				flag21 = arg

				if arg then
					fn18()
					local v32 = fn22(str7)

					if v32 then
						fn21(v32)
					end
				else
					fn19()
				end
			end,
		})

		v30:AddInput("avatar_changer_input", {
			Text = "Username or UserID",
			Default = "",
			Placeholder = "Username or ID...",
			Callback = function(arg)
				str7 = arg

				if flag21 and arg ~= "" then
					local v32 = fn22(arg)

					if v32 then
						fn21(v32)
					end
				end
			end,
		})

		task.spawn(function()
			if localPlayer2 then
				localPlayer2.CharacterAdded:Connect(function()
					pcall(function()
						localPlayer2.CharacterAppearanceLoaded:Wait()
					end)

					task.wait(0.5)

					if flag21 then
						local v32 = fn22(str7)

						if v32 then
							fn21(v32)
						end
					end
				end)
			end
		end)

		getgenv().skinChanger = getgenv().skinChanger or false
		getgenv().swordModel = getgenv().swordModel or ""
		getgenv().swordAnimations = getgenv().swordAnimations or ""
		getgenv().swordFX = getgenv().swordFX or ""
		getgenv().slashName = getgenv().slashName or "SlashEffect"

		task.spawn(function()
			local ReplicatedStorage = game:GetService("ReplicatedStorage")
			local swords = ReplicatedStorage:WaitForChild("Shared", 9e9):WaitForChild("ReplicatedInstances", 9e9):WaitForChild("Swords", 9e9)
			local module = require(swords)
			local v32 = nil

			task.spawn(function()
				while task.wait(0.25) and not v32 do
					local ok, result = pcall(getconnections, ReplicatedStorage.Remotes.FireSwordInfo.OnClientEvent)

					if ok and result then
						for _, v33 in ipairs(result) do
							if v33.Function and islclosure and islclosure(v33.Function) then
								local ok2, result2 = pcall(getupvalues, v33.Function)
								if ok2 and #result2 == 1 and type(result2[1]) == "table" then
									v32 = result2[1]
									break
								end
							end
						end
					end
				end
			end)

			local function fn23(arg)
				local ok, result = pcall(function()
					return module:GetSword(arg)
				end)

				return ok and result and result.SlashName or "SlashEffect"
			end

			local function fn24()
				local swordFX = getgenv().swordFX ~= "" and getgenv().swordFX or getgenv().swordModel
				getgenv().slashName = swordFX ~= "" and fn23(swordFX) or "SlashEffect"
			end

			local function fn25()
				if not getgenv().skinChanger then
					return
				end

				if not localPlayer.Character then
					return
				end

				pcall(function()
					local value = rawget(module, "EquipSwordTo")

					if type(value) == "function" then
						local v33 = getupvalues(value)

						for i = 1, #v33 do
							if type(v33[i]) == "boolean" then
								setupvalue(value, i, false)
								break
							end
						end
					end
				end)

				pcall(function()
					module:EquipSwordTo(localPlayer.Character, getgenv().swordModel)
				end)

				task.spawn(function()
					local n43 = 0

					while not v32 and n43 < 20 do
						task.wait(0.5)
						n43 += 1
					end

					if not v32 then
						return
					end

					pcall(function()
						if v32.SetSword then
							v32:SetSword(getgenv().swordAnimations ~= "" and getgenv().swordAnimations or getgenv().swordModel)
						end
					end)

					pcall(function()
						local swordFX = getgenv().swordFX ~= "" and getgenv().swordFX or getgenv().swordModel

						if ReplicatedStorage.Remotes:FindFirstChild("FireSwordInfo") then
							ReplicatedStorage.Remotes.FireSwordInfo:FireServer(swordFX)
						end

						if v32.currentSword ~= nil then
							pcall(function()
								v32.currentSword = swordFX
							end)
						end

						if v32.SwordFX ~= nil then
							pcall(function()
								v32.SwordFX = swordFX
							end)
						end
					end)
				end)
			end

			local tbl9 = {}

			task.spawn(function()
				local tbl10 = { "ParrySuccessAll", "ParryAttempt", "ParrySuccess", "PlaySound", "PlayVisuals" }

				while task.wait(1) do
					for _, v33 in ipairs(tbl10) do
						local v34 = ReplicatedStorage.Remotes:FindFirstChild(v33)

						if v34 and v34:IsA("RemoteEvent") then
							local ok, result = pcall(getconnections, v34.OnClientEvent)

							if ok and type(result) == "table" then
								for _, v35 in ipairs(result) do
									local function_ = v35.Function

									if function_ and not tbl9[function_] then
										tbl9[function_] = true
										v35:Disable()

										local function fn26(...)
											local tbl11 = { ... }
											local flag22 = false

											for _, v36 in ipairs(tbl11) do
												local name = localPlayer.Name
												if tostring(v36) == name or typeof(v36) == "Instance" and (v36 == localPlayer.Character or v36 == localPlayer) then
													flag22 = true
													break
												end
											end

											if flag22 and getgenv().skinChanger then
												fn24()
												local swordFX = getgenv().swordFX ~= "" and getgenv().swordFX or getgenv().swordModel
												local v36, v37, v38 = ipairs(tbl11)
												local flag23 = false
												local flag24 = false

												for k, v39 in v36, v37, v38 do
													if type(v39) == "string" then
														if swordFX ~= "" and not flag23 and (v39:match("Slash") or v39 == "Default" or v39:match("Effect")) then
															tbl11[k] = getgenv().slashName
															flag23 = true
														elseif swordFX ~= "" and not flag24 then
															local flag25 = false

															pcall(function()
																if ReplicatedStorage.Shared.ReplicatedInstances.Swords:FindFirstChild(v39) then
																	flag25 = true
																end
															end)

															if not flag25 then
																if v39 == localPlayer:GetAttribute("CurrentlyEquippedSword") then
																	tbl11[k] = swordFX
																	flag24 = true
																end
															end
														end
													end
												end

												if swordFX ~= "" and not flag23 and type(tbl11[1]) == "string" then
													tbl11[1] = getgenv().slashName
												end

												if swordFX ~= "" and not flag24 and type(tbl11[3]) == "string" then
													tbl11[3] = swordFX
												end
											end

											if setthreadidentity then
												pcall(setthreadidentity, 2)
											end

											pcall(function_, unpack(tbl11))
										end

										tbl9[fn26] = true
										v34.OnClientEvent:Connect(fn26)
									end
								end
							end
						end
					end
				end
			end)

			getgenv().updateSword = function()
				fn24()
				fn25()
			end

			task.spawn(function()
				while task.wait(1) do
					if getgenv().skinChanger and getgenv().swordModel ~= "" then
						local character = localPlayer.Character

						if character then
							if localPlayer:GetAttribute("CurrentlyEquippedSword") ~= getgenv().swordModel then
								fn25()
							end

							if not character:FindFirstChild(getgenv().swordModel) then
								fn25()
							end

							for _, child in pairs(character:GetChildren()) do
								if child:IsA("Model") and child.Name ~= getgenv().swordModel then
									child:Destroy()
								end

								task.wait()
							end
						end
					end
				end
			end)

			localPlayer.CharacterAdded:Connect(function()
				if getgenv().skinChanger then
					getgenv().skinChanger = false

					if getgenv().setSkinChangerToggleUI then
						getgenv().setSkinChangerToggleUI(false)
					end

					task.wait(2)
					getgenv().skinChanger = true

					if getgenv().setSkinChangerToggleUI then
						getgenv().setSkinChangerToggleUI(true)
					end

					task.wait(0.5)

					pcall(function()
						getgenv().updateSword()
					end)
				end
			end)
		end)

		local skinChangerOn = v28:AddToggle("skin_changer_on", {
			Text = "Skin Changer",
			Default = false,
			Callback = function(skinChanger)
				getgenv().skinChanger = skinChanger

				if skinChanger and getgenv().swordModel ~= "" then
					pcall(function()
						getgenv().updateSword()
					end)
				end
			end,
		})

		getgenv().setSkinChangerToggleUI = function(arg)
			if skinChangerOn and skinChangerOn.SetValue then
				pcall(function()
					skinChangerOn:SetValue(arg)
				end)
			end
		end

		v28:AddInput("skin_sword_name", {
			Text = "Sword Name",
			Placeholder = "e.g. ShiningStar...",
			Default = "",
			Callback = function(swordModel)
				getgenv().swordModel = swordModel
				getgenv().swordAnimations = swordModel
				getgenv().swordFX = swordModel

				if getgenv().skinChanger and swordModel ~= "" then
					pcall(function()
						getgenv().updateSword()
					end)
				end
			end,
		})

		getgenv().playerCosmeticsEnabled = getgenv().playerCosmeticsEnabled or false
		local flag22 = false
		local thread = nil
		local connection = nil

		local function fn23(arg)
			local rightLeg

			if arg then
				rightLeg = arg:FindFirstChild("RightLeg") or arg:FindFirstChild("Right Leg")
			else
				rightLeg = arg
			end

			if not rightLeg then
				return
			end

			for _, child in pairs(rightLeg:GetChildren()) do
				if child:IsA("SpecialMesh") then
					child:Destroy()
				end
			end

			local specialMesh = Instance.new("SpecialMesh")
			specialMesh.MeshId = "rbxassetid://101851696"
			specialMesh.TextureId = "rbxassetid://115727863"
			specialMesh.Scale = Vector3.one
			specialMesh.Parent = rightLeg
		end

		getgenv().updatePlayerCosmetics = function()
			if not getgenv().playerCosmeticsEnabled then
				flag22 = false

				if connection then
					connection:Disconnect()
					connection = nil
				end

				if thread then
					task.cancel(thread)
					thread = nil
				end

				local character = localPlayer.Character

				if character then
					local head = character:FindFirstChild("Head")

					if head then
						head.Transparency = 0

						if not head:FindFirstChildOfClass("Decal") then
							local decal = Instance.new("Decal", head)
							decal.Name = "face"
							decal.Face = Enum.NormalId.Front
						end
					end
				end

				return
			end

			flag22 = true

			if localPlayer.Character then
				fn23(localPlayer.Character)
			end

			connection = localPlayer.CharacterAdded:Connect(function(character)
				character:WaitForChild("RightLeg", 3)
				fn23(character)
			end)

			thread = task.spawn(function()
				while flag22 do
					local character = localPlayer.Character

					if character then
						local head = character:FindFirstChild("Head")

						if head then
							head.Transparency = 1
							local decal = head:FindFirstChildOfClass("Decal")

							if decal then
								decal:Destroy()
							end
						end
					end

					task.wait(0.1)
				end
			end)
		end

		v29:AddToggle("cosmetics_on", {
			Text = "Headless + Korblox",
			Default = false,
			Callback = function(playerCosmeticsEnabled)
				getgenv().playerCosmeticsEnabled = playerCosmeticsEnabled

				if getgenv().updatePlayerCosmetics then
					pcall(getgenv().updatePlayerCosmetics)
				end
			end,
		})

		v29:AddToggle("ability_esp", {
			Text = "Ability ESP",
			Default = false,
			Callback = function(abilityESP)
				getgenv().AbilityESP = abilityESP

				for _, v32 in pairs(tbl8) do
					if v32 then
						v32.Visible = abilityESP
					end
				end
			end,
		})
	end

	do
		local v28 = worldTab:AddLeftGroupbox("Staff Detection")
		local v29 = worldTab:AddRightGroupbox("Speed & Jump")
		local v30 = worldTab:AddLeftGroupbox("Anti View Ability")
		getgenv().notify = true
		getgenv().autokick = false
		getgenv().closethegame = false
		getgenv().serverhop = false

		v28:AddToggle("staff_detect_on", {
			Text = "Staff Detection",
			Default = true,
			Callback = function(arg)
				if arg then
					task.spawn(function()
						local function fn17(player)
							local ok, result = pcall(function()
								return tostring(player:GetRoleInGroup(12836673)):lower()
							end)

							if not ok then
								return
							end

							if result ~= "guest" and result ~= "member" and result ~= "" then
								if getgenv().autokick then
									localPlayer:Kick("Staff Detected: " .. player.DisplayName)
								elseif getgenv().closethegame then
									game:Shutdown()
								elseif getgenv().serverhop then
									pcall(function()
										loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/main/Privating/q.lua"))()
									end)
								elseif getgenv().notify then
									Library:Notify({ Title = "Argon Hub X", Description = "Staff Detected: " .. player.DisplayName, Time = 15 })
								end
							end
						end

						connections.staff_detect = game.Players.PlayerAdded:Connect(fn17)

						for _, player in ipairs(game.Players:GetPlayers()) do
							fn17(player)
						end
					end)
				elseif connections.staff_detect then
					connections.staff_detect:Disconnect()
					connections.staff_detect = nil
				end
			end,
		})

		v28:AddDivider()

		v28:AddDropdown("staff_action", {
			Text = "Staff Action",
			Values = { "Notification", "Auto Kick", "Close Game", "Serverhop" },
			Default = 1,
			Callback = function(arg)
				getgenv().autokick = arg == "Auto Kick"
				getgenv().closethegame = arg == "Close Game"
				getgenv().serverhop = arg == "Serverhop"
				getgenv().notify = arg == "Notification"
			end,
		})

		local v31 = worldTab:AddLeftGroupbox("Device Spoofer")
		local localPlayer2 = cloneRef(game:GetService("Players")).LocalPlayer
		local v32 = cloneRef(game:GetService("ReplicatedStorage"))
		getgenv().VisualDeviceSpooferEnabled = getgenv().VisualDeviceSpooferEnabled or false
		getgenv().VisualSpoofDevice = getgenv().VisualSpoofDevice or "PC"
		local Utils = nil
		local DeviceListener = nil
		local device = nil

		pcall(function()
			Utils = require(v32.Common.Utils)
		end)

		pcall(function()
			DeviceListener = require(v32.ClientGameModules.DeviceListener)

			if type(DeviceListener) == "table" then
				device = DeviceListener.Device
			end
		end)

		local function fn17(arg)
			if Utils and Utils.Icons and Utils.Icons.GetIcon then
				local ok, result = pcall(function()
					local icons = Utils.Icons
					local getIcon = icons.GetIcon
					local v33 = arg
					local str7

					if arg then
						str7 = v33
					else
						str7 = "DEFAULT_MISSING"
					end

					return getIcon(icons, str7)
				end)

				if ok and result then
					return result
				end
			end

			return nil
		end

		local function fn18()
			if not getgenv().VisualDeviceSpooferEnabled then
				return
			end
			local visualSpoofDevice = getgenv().VisualSpoofDevice or "PC"

			if type(DeviceListener) == "table" then
				pcall(function()
					DeviceListener.Device = visualSpoofDevice
				end)
			end

			local v33 = visualGetProfileGui()
			if not v33 then
				return
			end
			local v34 = fn17(visualSpoofDevice)
			if not v34 then
				return
			end

			pcall(function()
				local details = v33.PlayerProfile and v33.PlayerProfile:FindFirstChild("Details")
				details = details and details:FindFirstChild("Device")

				if details and (details:IsA("ImageLabel") or details:IsA("ImageButton")) then
					details.Image = v34
					details.Visible = true
				end
			end)

			pcall(function()
				local icons = v33.PlayerCard and v33.PlayerCard:FindFirstChild("Icons")
				icons = icons and icons:FindFirstChild("Device")

				if icons and (icons:IsA("ImageLabel") or icons:IsA("ImageButton")) then
					icons.Image = v34
					icons.Visible = true
				end
			end)
		end

		v31:AddToggle("device_spoofer_on", {
			Text = "Device Spoofer",
			Default = false,
			Callback = function(visualDeviceSpooferEnabled)
				getgenv().VisualDeviceSpooferEnabled = visualDeviceSpooferEnabled

				if visualDeviceSpooferEnabled then
					fn18()
				elseif type(DeviceListener) == "table" and device then
					pcall(function()
						DeviceListener.Device = device
					end)
				end
			end,
		})

		v31:AddDropdown("spoof_device_type", {
			Text = "Device",
			Values = { "PC", "Phone", "Tablet", "Console" },
			Default = 1,
			Callback = function(visualSpoofDevice)
				getgenv().VisualSpoofDevice = visualSpoofDevice

				if getgenv().VisualDeviceSpooferEnabled then
					fn18()
				end
			end,
		})

		task.spawn(function()
			while task.wait(0.12) do
				if getgenv().VisualDeviceSpooferEnabled then
					pcall(fn18)
				end
			end
		end)

		getgenv().speed_jump1 = getgenv().speed_jump1 or 36
		getgenv().speed_jump2 = getgenv().speed_jump2 or 50

		v29:AddToggle("speed_jump_on", {
			Text = "Speed & Jump",
			Default = false,
			Callback = function(arg)
				if arg then
					connections.speed_jump = RunService.Heartbeat:Connect(function()
						pcall(nil --[[ constant not decoded ]])
					end)
				elseif connections.speed_jump then
					connections.speed_jump:Disconnect()
					connections.speed_jump = nil
				end
			end,
		})

		v29:AddSlider("walk_speed_val", {
			Text = "Walk Speed",
			Default = 36,
			Min = 36,
			Max = 400,
			Rounding = 0,
			Callback = function(speedJump1)
				getgenv().speed_jump1 = speedJump1
			end,
		})

		v29:AddSlider("jump_power_val", {
			Text = "Jump Power",
			Default = 50,
			Min = 50,
			Max = 450,
			Rounding = 0,
			Callback = function(speedJump2)
				getgenv().speed_jump2 = speedJump2
			end,
		})
	end

	local v28 = worldTab:AddRightGroupbox("No Render")

	v28:AddToggle("no_effects_game", {
		Text = "No Effects Game",
		Default = false,
		Callback = function(arg)
			if arg then
				local v29, v30, v31 = pairs(game:GetDescendants())
				local v32 = table.pack(H_1())

				if v32[1] then
					error("devirt: needs a constant that is not decoded yet (at 245:38)")
				end
			end
		end,
	})

	v28:AddToggle(nil --[[ constant not decoded ]], {
		Text = "No Explosion VFX",
		Default = false,
		Callback = function(arg)
			if arg then
				connections[nil --[[ constant not decoded ]]] = Workspace.Runtime[nil --[[ constant not decoded ]]]:Connect(nil --[[ constant not decoded ]])
				error("devirt: needs a constant that is not decoded yet (at 129:35)")
			end

			if connections[nil --[[ constant not decoded ]]] then
				connections[nil --[[ constant not decoded ]]]:Disconnect()
				connections[nil --[[ constant not decoded ]]] = nil
			end

			error("devirt: needs a constant that is not decoded yet (at 245:6)")
		end,
	})

	error("devirt: needs a constant that is not decoded yet (at 129:1218)")
end

fn("J2_194")

while true do
end
