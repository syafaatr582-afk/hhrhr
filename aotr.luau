
-- Luraph runtime function (from the VM object, not part of the script: not lifted).
-- LPH_ENCFUNC decrypts a function this way: (key, encrypted buffer, ...) -> function.
local function luraph_runtime1(...)
	error("Luraph runtime function, not devirtualized")
end

local v = table.pack(...)

if not ce_like_loadstring_fn then
	if not l_fastload_enabled or not is_from_loader then
		game:GetService("Players").LocalPlayer:Kick("[Luarmor]: Use the loadstring, do not run this directly")
		wait(5)

		while true do
		end
	end
end

local str = "?"
loadstring = ce_like_loadstring_fn or loadstring
local flag = false

pcall(function()
	flag = true
	local UserGameSettings = UserSettings():GetService("UserGameSettings")

	if not UserGameSettings:GetTutorialState("nil  nil  ") then
		str = ""
		local n = ({ wait() })[1] * 1000000

		local function fn(arg)
			local n2 = 1103515245
			local n3 = 12345
			local n4 = 99999999
			local n5 = arg % 2147483648
			local n6 = 1

			return function(arg2, arg3)
				local v2 = n4
				local n7 = n2 * n5 + n3
				local n8 = n7 % v2 + n6
				n6 += 1
				n5 = n8
				n3 = n7 % 4858 * v2 % 5782
				return arg2 + n8 % arg3 - arg2 + 1
			end
		end

		local v2 = fn(n - n % 1)
		UserGameSettings:SetTutorialState("nil  nil  ", true)
		local n2 = 0

		for i = 1, 16 do
			local n3 = 0
			local n4 = 1

			for i2 = 1, 5 do
				local flag2 = v2(10, 20) > 15
				UserGameSettings:SetTutorialState("nil  nil  " .. n2, flag2)
				n3 += (flag2 and 1 or 0) * n4
				n4 *= 2
				n2 += 1
			end

			str ..= ("qwertyuiopasdfghjklzxcvbnm098765"):sub(n3 + 1, n3 + 1)
		end
	else
		str = ""
		local n = 0

		for i = 1, 16 do
			local n2 = 0
			local n3 = 1

			for i2 = 1, 5 do
				n2 += (UserGameSettings:GetTutorialState("nil  nil  " .. n) and 1 or 0) * n3
				n3 *= 2
				n += 1
			end

			str ..= ("qwertyuiopasdfghjklzxcvbnm098765"):sub(n2 + 1, n2 + 1)
		end
	end
end)

while not flag do
end

local now = os.clock()

if devsignature_sig then
	print([[        Luarmor - Lua whitelist service
        This is a signature - If you are seeing this, you know what not to do :3
        Have a good day!
        https://luarmor.net/
    ]])
end

local flag2 = nil
local flag3 = nil
local v2 = ({ table.unpack(v, 1, v.n) })[3]

if v2 and v2[1] then
end

local floor = math.floor
local random = math.random
local remove = table.remove
local char = string.char
local n = 0
local n2 = 2
local tbl = {}
local tbl2 = {}

for i = 1, 256 do
	tbl2[i] = i
end

repeat
	local v3 = random(1, #tbl2)
	local v4 = remove(tbl2, v3)
	tbl[v4] = char(v4 - 1)
until #tbl2 == 0

local tbl3 = {}

local function fn()
	if #tbl3 == 0 then
		n = (n * 149 + 4033097371307) % 35184372088832

		repeat
			n2 = n2 * 37 % 257
		until n2 ~= 1

		local n3 = n2 % 32
		local n4 = floor(n / 2 ^ (13 - (n2 - n3) / 32)) % 4294967296 / 2 ^ n3
		local n5 = floor(n4 % 1 * 4294967296) + floor(n4)
		local n6 = n5 % 65536
		local n7 = (n5 - n6) / 65536
		local n8 = n6 % 256
		local n9 = n7 % 256
		tbl3 = { n8, (n6 - n8) / 256, n9, (n7 - n9) / 256 }
	end

	return table.remove(tbl3)
end

local tbl4 = {}
local v3 = tbl4

local function fn2(arg, arg2)
	local v4 = tbl4

	if not v4[arg2] then
		tbl3 = {}
		local v5 = tbl
		n = arg2 % 35184372088832
		n2 = arg2 % 255 + 2
		v4[arg2] = ""
		local n3 = 77

		for i = 1, #arg do
			n3 = (string.byte(arg, i) + fn() + n3) % 256
			v4[arg2] = v4[arg2] .. v5[n3 + 1]
		end
	end

	return arg2
end

local v4 = LUARMOR_SkipAntidebugDevMode
local v5 = LUARMOR_AllowKeyCheckSkip
local flag4 = ff97f23b97f93792992999 and ff97f23b97f93792992999() == v3[fn2("\172", 31126577901884)] or false
local v6 = v3[fn2("6\143K\188=\r\226\146\248&\176;\3\231Æ\133\143\248\204_\184\222\229\157\254\25", 2340828612740)]
local v7 = USE_NON_SSL_NODE
local v8 = l_fastload_enabled
local n3 = os[v3[fn2("(\204\6\168", 4882453074371)]](os[v3[fn2("UC\178}", 12971197083440)]](v3[fn2("\139L", 33012126087192)])) - os[v3[fn2("vܢ\204", 5436520764359)]](os[v3[fn2("f\150\187#", 4318721413046)]](v3[fn2("\209\6D", 24300592814183)]))
local n4

if n3 < 0 then
	n4 = (86400 + -(-n3 % 86400)) % 86400
else
	n4 = n3 % 86400
end

local n5 = n4 / 3600

if n5 >= 21 or n5 < 5 then
	local tbl5 = {}
	local v9 = v3[fn2("\226XO\140q\210K\180:%\205B\254\182.y\229\163\245\219v$\209Y\171\6f", 3448963992716)]
	local v10 = v3[fn2("N\235X\233G\12\243\241ˣ@s\250\190\137\214\t\2267j\174\247\195\241\237\1\160", 16047561292385)]
	tbl5[1] = v9
	tbl5[2] = v10
	v6 = tbl5[math[v3[fn2("\195K\\\173\155:", 14086848885567)]](1, 2)]
elseif n5 >= 5 and n5 < 15 then
	local tbl5 = {}
	local v9 = v3[fn2("\136M\165r\0017j\254\186\147Ds\224x\241\151\231]k\137\28\184\17f,\138\149", 25839311805952)]
	local v10 = v3[fn2("\211:<?S\222\17[!\164Yl\240F\230\"\193\251\128\220a\29\252\133\u{87}\163", 2297877629020)]
	local v11 = v3[fn2("s\146p: \167\177_\228\255\136kW\246\245\253e\146M\245\19T\169IP\21\187", 2572763924828)]
	local v12 = v3[fn2("'\26L\252\146.\25c\151\208\248ϕ\154\r\229I\243\26\149\181\139k`+\16\2", 19333311546965)]
	local v13 = v3[fn2("$\1C\213\234\205?\169\200\"\188@\0\188\128\27C\244\12\203l\224\3p\245\187\233", 21697763200751)]
	local v14 = v3[fn2("\30\197\216\\\25\163\155i\1304i\2af\14\181\15\174MD\174\131\206\208Zã", 15465575462979)]
	local v15 = v3[fn2("\5ڝ_\154\171yf\184\193\138\26T\188\11\16#K\128\144:\7\197m\210\14\252", 30187025133009)]
	local v16 = v3[fn2("\182\186\142\199\t\163\189V 8\195g\230w\148\228\193v\199\\\186\212\246\174\130H\254", 19714501527480)]
	local v17 = v3[fn2("\248~\133\207\196r\178\244G\251 /\n\30\169\154%m\187W\141{\235\246\179\243\240", 7900833455294)]
	local v18 = v3[fn2("*\211\203v\129\12j\218\209A\222\15\186[S\135\165w\1725[tI\n \212\199", 17090196422188)]
	local v19 = v3[fn2("y\193\242QA\127\235\22\"\3\134\159.\0\5\224\130\236\239\27\254.\224\194ż\188", 25925213773392)]
	tbl5[1] = v9
	tbl5[2] = v10
	tbl5[3] = v11
	tbl5[4] = v12
	tbl5[5] = v13
	tbl5[6] = v14
	tbl5[7] = v15
	tbl5[8] = v16
	tbl5[9] = v17
	tbl5[10] = v18
	tbl5[11] = v19
	v6 = tbl5[math[v3[fn2("xԳ\192\182-", 34852575739594)]](1, 11)]
elseif n5 >= 15 and n5 < 21 then
	local tbl5 = {}
	local v9 = v3[fn2("\240\230R\240>\184pcy\16\164\25JH\231\14\235b\3\8\138b\1\249\194\4\255", 13222460338202)]
	local v10 = v3[fn2("\132\141w\195|l\143>'\247n\175\248+\249\226\144<C!*\177\160\233\21\2I", 27390916092837)]
	local v11 = v3[fn2("\rl\1903\128\248l\136-%\192js\153c\179\238b\157\207\209#\200;\238Nt", 14158791783298)]
	tbl5[1] = v9
	tbl5[2] = v10
	tbl5[3] = v11
	v6 = tbl5[math[v3[fn2("\237\238q\243\0025", 446690230688)]](1, 2)]
else
	game:GetService(v3[fn2("\11\19\5\4\2527\137", 10601376556689)])[v3[fn2("6\164p?\177pjs'\184]", 30941888671888)]]:Kick(v3[fn2("XЀ\129\142\231\6\145\130ښz\231[\253\250\28A\140`;m\\\243C\167d_\8뵟\11\24\4̩\172S\rH\235-E\0079\1519lH\149-C3\130)\225\20\162{1\228ܞ", 31900769383437)])
end

pcall(function()
	if game:GetService(v3[fn2("Y4\161\128j\n\206\18\4\2551z\235۾\220\26C\148", 26759536632153)]):GetCountryRegionForPlayerAsync(game:GetService(v3[fn2("A\209q\131\160\177\219", 8137063865754)])[v3[fn2("\255\189\244ˢ\218K\216I\131\254", 24768758536731)]]) == v3[fn2(";%", 6519959328696)] then
		local tbl5 = {}
		local v9 = v3[fn2("l\205hnf\2268}\206\25\1781{\11\1981/\224\8\179\240\27-\r\205#\151", 30974101909678)]
		local v10 = v3[fn2("\n\230\168\228\154T\28\183\22\226r\177\0\0042f+\129\184ʟ\193ͤ\166\128i", 12874557370070)]
		local v11 = v3[fn2("\31\140C\234\224\0128'uqF\230\160\26)\210ߣ\139\172\132w\172\181\245\250\246", 25825352736243)]
		local v12 = v3[fn2("Q\t\222t?\167\240\222K|Jn\228\232[\172OO\133\25\130Ϋ\203\24\190&", 1597776594384)]
		local v13 = v3[fn2("w׆z\184Rػ\135\17w\149\1628\245<t\183\218\"9\180&\154\173oS", 24407970273483)]
		tbl5[1] = v9
		tbl5[2] = v10
		tbl5[3] = v11
		tbl5[4] = v12
		tbl5[5] = v13
		v6 = tbl5[math[v3[fn2("\182\163/Pv\178", 434878710165)]](1, 5)]
	end
end)

local tbl5 = { [v3[fn2("$GBp\229(\220", 25758778711477)]] = v3[fn2("\233\191\12", 22757578724042)] }
tbl5[v3[fn2("\168)[\4", 30887126167645)]] = flag4 and LT_R_RRT_H or v3[fn2("\145\199\235ښ\255A\27", 5940121048476)] .. v6
tbl5[v3[fn2("-\187\163M\25\167\217@", 4026654723750)]] = "5486a610ea052cb1c76e0c07b6acfaab"
tbl5[v3[fn2("|\153\251\252\129+\213c\238\189\31]\198", 318911054121)]] = "0000"
tbl5[v3[fn2("\255u\7\188", 2453574945005)]] = "Zenthra AORT"

if v7 then
	tbl5[v3[fn2("P+\173\t", 11860914154278)]] = v3[fn2("\190\203\210Z\214\212\25ې\173pԼ\146\25\18\18\16\133\139\193獓ݓ\217", 22440815219107)]
	v6 = v3[fn2("_\12\235cw\2309\u{84}\23,d\224NS\22X\5\19p", 20241724852643)]
end

local flag5 = type(({ table.unpack(v, 1, v.n) })[1]) ~= v3[fn2("\242\19\150\29>", 10561646896748)]
local flag6 = false
local fn3 = nil
local n6 = nil
local tbl6 = nil
local tbl7 = nil
local flag7 = nil
local v9 = nil
local tbl8 = nil
local v10 = print
local v11 = next
local v12 = string[v3[fn2("2\2521\5", 29730670930984)]]
local v13 = identifyexecutor
local v14 = game
local v15 = pcall
local v16 = string[v3[fn2("\159\240\254\230\24\28", 19614640490331)]]
local v17 = debug[v3[fn2(";+\25\153&\188\15\128\26", 12781138980479)]]
local v18 = tonumber
local v19 = setmetatable
local v20 = rawget
local v21 = wait
local v22 = debug[v3[fn2("P\221{\181\235n\227", 23381441762575)]]
local v23 = loadstring
local v24 = os[v3[fn2("X\184mZ", 16176414243545)]]
local v25 = string[v3[fn2("U\235\251\154", 32087606162619)]]
local v26 = string[v3[fn2("\175\1522", 25909107154497)]]
local v27 = spawn
local v28 = game:GetService(v3[fn2("`B\166#\255jI\172]^", 4772928065885)])[v3[fn2("\160\129EكZ\5\18\24", 20189109897586)]]
local v29 = os[v3[fn2(">^S\159\159", 3206290934698)]]
local v30 = rconsoleprint
local v31 = math[v3[fn2("\165A7e", 11417445247369)]]
local v32 = tostring
local v33 = pairs
local v34 = string[v3[fn2("\3\155\250\194", 32580468700806)]]
local v35 = getgenv
local flag8 = false

local function fn4(arg, arg2)
	v23(v3[fn2("i\154\24+|X6!\178ڻ\204ηA\11\7\248<\206\28\245\222c\174\5\23\227\240?Iz\250a4S.\240\147t\199\0065\4\145\11\239\203\2.\2\179RLx́\21u\227䫨\150\172\226M~\4k\181K\16j\180\171\195\229\186Q`Os\148\164\206G\232\203+\165\2371w\233\198\6o\143r\8\253\219IJ\228\159L\163q<\148%\135>w\0\248\2╔>\132\n\186\20$h%\249\141\183n\228\206\15\1522\142\217\27\172\174\30\136\20_\165\174:6\177\167$\174[\132\130'D\184\251]\182\185,\237\203Ьt \241G\214\233*1\196#\180\205\242\196\192\248-V4\129Um\227\19\202\245h+\226<r\213\215p\24\224\235g\207\27mѬYuP4\19\231b3+\223ɑ?ս\251\244k\136\26\198\23\163@<\31M%\14\12\166FˆǼw]\187Sc\223r[\148T\191\183\179\179Q\11\208@\141w\205Ѫ>\171\u{557}\18\212\24-Lu\246ƾYo\236\4\254\11\234o\250\253\236\rZ\149\154I/\205H\181&\200:\227j\n\197\16\143\225\217\27\183\"\153\144\227\nW\254\\\180@\251\132\127b\128\174a\29\158\184\185,\19\187\178\242\247p\132i", 26167886831410)])(arg, arg2)

	while v21() do
	end
end

local tbl9 = {}
local flag9 = false
local v36 = string[v3[fn2("\189[J\156\131h", 30415739121318)]]
local v37 = string[v3[fn2("\1510\206", 13348091965583)]]
local v38 = table[v3[fn2("k\188*TG\222", 11500125891030)]]
local v39 = type
local v40 = v33
local v41 = v21
local v42 = coroutine[v3[fn2("\177߽\215", 9666118886186)]]

local fn5 = syn and syn[v3[fn2("Z\185\149\247\174\30\161\141\220", 26705847902503)]] and syn[v3[fn2("\137ҫ\217\r2\137v\146", 25551540215028)]][v3[fn2("fӟ\144\186|\152", 30015221198129)]] or WebSocket and WebSocket[v3[fn2("\202Be\155Q\245>", 758084862658)]] or WebsocketClient and function(arg)
	local v43 = WebsocketClient[v3[fn2("\188m\224", 16394390485924)]](arg)
	v43:Connect()
	return v43
end

local fn6 = nil

fn6 = function(arg)
	local tbl10 = {}

	for k, v43 in v40(arg) do
		local n7 = #tbl10 + 1
		local v44 = v3[fn2("'\200\247\146 \170_\227", 34886936526570)]
		local v45 = v3
		local flag10 = v39(v43) == v45[fn2("\20/x-\133", 7497094208326)] and fn6(v43)

		if not flag10 then
			local v46 = v3
			flag10 = v3[fn2("=", 18649317131224)] .. v43 .. v46[fn2("Z", 173951484066)]
		end

		tbl10[n7] = v36(v44, k, flag10)
	end

	return v3[fn2("i", 24314551883892)] .. v37(v38(tbl10), 0, -2) .. v3[fn2("\194", 22373167419748)]
end

local function fn7(arg)
	local function fn8(arg2)
		if arg2 == v3[fn2(",\196P\\", 10051603965073)] then
			if flag8 then
				local v43 = v3
				v30(v3[fn2("\188", 31749367165824)] .. os[v3[fn2("\0302\18I\236", 28036254623230)]]() .. v43[fn2("]F\213\251\200_\178F\20\156:\132P\20@C\245\5rT\147\137\228\134\r\254\141{\211", 1801793767054)])
			end

			arg[v3[fn2(",\186lJ\254\246p\224", 16202184833777)]] = tick()
			return
		end

		local v43 = v3
		local v44 = string[v3[fn2("\159\11\208\29\209", 9071247761664)]](arg2, v43[fn2("\188\201\31<\247\150\244\169-\6\18", 23326679258332)])

		if flag8 then
			local v45 = v3
			v30(v3[fn2("\7", 33022863833122)] .. os[v3[fn2("\127>\184\15\133", 17304951340788)]]() .. v3[fn2("\1651f.\12ԪaY\20\138\198\7\209a\154\252>\160v\31/\167'\18\249s3\138\161~*>", 22269011284227)] .. arg2 .. v45[fn2(" ", 17028991270387)])
		end

		if v44 then
			local v45 = arg[v3[fn2("Ƣn!\210\2\204y", 20264274119096)]][v44 + 0]
			local v46 = v3
			v45:Fire(arg2:gsub(v3[fn2("2\186\6u\237\151?\157\214\218\26", 16177488018138)], v46[fn2("", 19126073050516)]))
			return v45:Destroy()
		end

		return arg[v3[fn2("\222Jͮlw\170\t\1\159\242Xx\250i", 33181782472886)]]:Fire(arg2)
	end

	local fn9 = nil

	fn9 = function()
		if flag8 then
			local v43 = v3
			v30(v3[fn2("\20", 25372219857997)] .. os[v3[fn2("\31\244\136j\213", 5980924483010)]]() .. v43[fn2("\245\140.:\174\129O1!\183\\", 29455784635176)])
		end

		arg[v3[fn2("\154p\255\171h\15\253<\144\234\187\20\22\154\6", 7238314531413)]] = false

		if arg[v3[fn2("\150\184\188@_\170\153\19\224ڥ5", 8969239175329)]] or flag9 then
			if flag8 then
				v30(v3[fn2("\215̡\147q1\177\167\170\11O\146&\250\134\170g|", 12225997515898)])
			end

			return
		end

		local n7 = 0
		local v43

		while true do
			if flag8 then
				local v44 = v3
				v30(v3[fn2("\8", 25877967691300)] .. os[v3[fn2("\242\131\241\176\153", 32213237790000)]]() .. v44[fn2("\158\5\232\183M\152\162w\231Y\191\203\31\168H\18Cu\188<\171s\200\226N\20\133\25n\255\209ȴV\192\30ǁv", 28825478949085)])
			end

			local v44 = v24()
			local flag10 = false
			local v45 = nil
			v43 = nil

			v27(function()
				local v46, v47 = v15(fn5, arg[v3[fn2("\23\20\24", 29848786136214)]])
				v45 = v46
				v43 = v47
				flag10 = true
			end)

			while not flag10 and v24() < v44 + 8 do
				v41()
			end

			if flag8 then
				local v46 = v3
				v30(v3[fn2("\128", 29034864994720)] .. os[v3[fn2("\175\nP\245\156", 12251768106130)]]() .. v3[fn2("z\24ث\148\2523\254\223\1\222Q\227{\241\197\249\\\11_h\181", 34490713701753)] .. v32(flag10) .. v3[fn2("\127\132\31\28g\n", 10375883892159)] .. v32(v45) .. v46[fn2("\12", 27328637166443)])
			end

			if not flag10 then
				flag6 = false
				n7 = 10

				if flag8 then
					warn(v3[fn2("\226\255\210W,\15\226\250ESIn\195\237\222O\184\158,R\173\222\226\25\17\167\176R\229\224\251", 13362051035292)])
				end
			end

			if not v45 then
				n7 += 1

				if n7 > 5 then
					flag6 = false
				end

				v41(n7 < 4 and 10 or 120)
				continue
			end

			break
		end

		if flag8 then
			local v44 = v3
			v30(v3[fn2("\194", 33361102829917)] .. os[v3[fn2("nG\178p\189", 1458185897294)]]() .. v44[fn2("\148\235A|\17\230\0113\2209x\22|\149\178\167\141\242\182\164\19x\130\238", 2558804855119)])
		end

		arg[v3[fn2("\204*c\136֯\156\235c\228#\163\143\18\204", 14980229346943)]] = true
		arg[v3[fn2("\196\28p0\225\186\219]\246", 13544592716102)]] = v43
		flag6 = arg
		local v44 = v3

		v43:Send(fn6({
			[v3[fn2("\144\157\26\202J\143", 30815183269914)]] = v44[fn2("\158\177\19U", 18578448008086)],
			[v3[fn2("\222U\224\t", 256632127727)]] = {},
		}))

		v15(function()
			v43[v3[fn2("k(\166.\2433M", 11661192079980)]]:Connect(fn9)
			v43[v3[fn2("\15\210\249~|\227\202\248q", 12796171824781)]]:Connect(fn8)
		end)

		v15(function()
			v43[v3[fn2(" URU\22\156\133D\244\18\140\156u\238\15*", 31006315147468)]]:Connect(fn9)
			v43[v3[fn2("v\150P\222B\136';\166\162\1439", 3526275763412)]]:Connect(fn8)
		end)
	end

	v15(function()
		local v43 = v3
		arg[v3[fn2("\0Q8\178\17K1\246R", 27593859490914)]][v43[fn2("Q\211s\145*Q?", 8519327620862)]]:Connect(fn9)
		local v44 = v3
		arg[v3[fn2("\197,r \183r\1669N", 8460270018247)]][v44[fn2("Ó@Qd\143\153|\223", 32507452028482)]]:Connect(fn8)
	end)

	v15(function()
		local v43 = v3
		arg[v3[fn2("\29i\"\207\r\254\208\235\162", 33601628338749)]][v43[fn2("\127\0\163\179\239\249y\205g\245RE", 27001135915578)]]:Connect(fn8)
		local v44 = v3
		arg[v3[fn2("Z_\28\178_Aͣ8", 23336343229669)]][v44[fn2("h\177\227\15\189\1384\185\128\r\248H7\209\205\244", 11453953583531)]]:Connect(fn9)
	end)

	arg[v3[fn2("U0\18973y\172\177", 26105607905016)]] = tick()

	while v41(10) do
		if flag8 then
			local v43 = v3
			v30(v3[fn2("\145", 14951237432932)] .. os[v3[fn2("\2286\234N\229", 22975554966421)]]() .. v43[fn2("ח\31]\186]\218A}\226[{\251\17t\146էړg\20\toć:\170", 14658096969043)])
		end

		if arg[v3[fn2("\200tK\173\215\207e8\175\212\11Or\171\158", 15693215676695)]] then
			local v43 = v3

			arg[v3[fn2("t\168\177Eņ\218\30\232", 31886810313728)]]:Send(fn6({
				[v3[fn2("+\30H\139\251Z", 29989450607897)]] = v43[fn2("\234\23\201\8", 21721386241797)],
				[v3[fn2("\227o\137\144", 9220502430091)]] = {},
			}))

			if tick() - arg[v3[fn2("\161\183W҉G\174\t", 26743430013258)]] > 20 then
				if flag8 then
					local v44 = v3
					v30(v3[fn2("=", 25162833812362)] .. os[v3[fn2("\2501\245\132\"", 26944225862149)]]() .. v44[fn2("\240\161\251\171\150\228~\247ֶ\166T\188\2\n\31\4\nlA!\3P\242", 20296487356886)])
					warn(v3[fn2("\222\6\189\254ChVJX'\161Kl\129", 21935067385804)])
				end

				arg[v3[fn2("\156\156&\216d,<\149*", 15423698253852)]]:Close()
			end
		end
	end
end

tbl9.new = function(arg, arg2)
	local tbl10 = {}
	v19(tbl10, arg)
	arg[v3[fn2("\227t\243=\230\148\11", 15742609307973)]] = arg
	local v43 = v24()
	local flag10 = false
	local v44 = nil
	local v45 = nil

	v27(function()
		local v46, v47 = v15(fn5, arg2)
		v44 = v46
		v45 = v47
		flag10 = true
	end)

	while not flag10 and v24() < v43 + 8 do
		v41()
	end

	if not flag10 then
		flag6 = false
		error(v3[fn2("\184y\139\177~s\r\17\174\255$3ٲv\2472N_\151S\1428", 21285433757039)])
	end

	assert(v44, v45)
	arg[v3[fn2("\232\nl\8\221\198\244\158\162", 15444099971119)]] = v45
	arg[v3[fn2("\212\216b", 32886494459811)]] = arg2
	local v46 = v3
	arg[v3[fn2("\154\254+\5n)\173\161d\163\227\187\2262\186", 7107314031067)]] = Instance[v3[fn2("f̜", 13855987348072)]](v46[fn2("\12\2423\140\203\204q\2223\23\184\t\169", 19879862814802)])
	local v47 = v3
	arg[v3[fn2("\246M\198tb߸\2464", 4490525347926)]] = arg[v3[fn2(">RVz5\150\2A\180;\184ķ\181\202", 26856176345523)]][v47[fn2(">4z\139p", 25648179928398)]]
	arg[v3[fn2("sfê\t\245<\19", 6486672316313)]] = {}
	arg[v3[fn2("U\245\146]\170\143@8N@#\176\212\228\178", 12321563454675)]] = true
	v42(fn7)(arg)

	repeat
		v28:Wait()
	until arg[v3[fn2("\174\181j@\3-\232\22", 34774190194305)]]

	return tbl10
end

tbl9.request = function(arg, arg2)
	if flag8 then
		local v43 = v3
		v30(v3[fn2("v", 34172876422225)] .. os[v3[fn2("\1532\200F\140", 32307729954184)]]() .. v3[fn2("O\221\216+\241\133\255\226;\180\16\22\27\253\203\u{58C}\246l\7\148o\130TO\4\nO\140\200\0u?\140u\183\132J\245hS\144\30<\219\3", 4505558192228)] .. v32(arg[v3[fn2("\239調\168\155^Q\134(\151\189m\150\196", 22259347312890)]]) .. v43[fn2("\200", 12545982344612)])
	end

	local n7 = 0

	while not arg[v3[fn2("\214\240x\235\156NC\182\231{\193cx\215d", 1803941316240)]] do
		n7 += 1
		v41(0.1)
		if not (n7 > 40) then
			continue
		end

		if flag8 then
			warn(v3[fn2("\1950\131r\170\212EȪ\218Bil", 4536697655425)])
		end

		flag6 = false
		return v3[fn2("", 22063920336964)]
	end

	if flag8 then
		local v43 = v3
		v30(v3[fn2("Y", 27805393085735)] .. os[v3[fn2("\207\199us@", 9663971337000)]]() .. v43[fn2("bp\228\206D\24\1659\145\143\129bc\145\235\171\\\3\127[\2340x\247[\199GvH\160Q\147?\225̣w\tC", 19677993191318)])
	end

	local v43 = math[v3[fn2("\158\226\202\\\232\159", 458501751211)]](1, 99999999)
	local v44 = v3
	local v45 = Instance[v3[fn2("J\3\167", 23438351816004)]](v44[fn2("\203%q\241\205e\171\179\26\144\200.v", 12404244098336)])

	if flag8 then
		local v46 = v3
		v30(v3[fn2("o", 27769958524166)] .. os[v3[fn2(">\238W\231\186", 6757263513749)]]() .. v46[fn2("\221O\190w\196!\176\224\7\187#ʮgm\217c", 26137821142806)])
	end

	arg[v3[fn2("\227\197\200eba\232\t", 21769706098482)]][v43] = v45
	local v46 = v3

	arg[v3[fn2("\178\18Q\147\250:[\134\176", 17162139319919)]]:Send(fn6({
		[v3[fn2("~\148\234\238Ɗ", 22738250781368)]] = v46[fn2("\142YQϺ\16\149", 21390663667153)],
		[v3[fn2("s\182\11\31", 24974923258587)]] = arg2,
		[v3[fn2("\183\1", 1700858955312)]] = v43,
	}))

	if flag8 then
		local v47 = v3
		v30(v3[fn2("\215", 27636810474634)] .. os[v3[fn2("-O0\128\243", 26764905505118)]]() .. v47[fn2("\229\171\27\129\190\143\178\29\245<<\251}yL", 15506378897513)])
	end

	local flag10 = false

	v27(function()
		v41(30)

		if not flag10 then
			if flag8 then
				local v47 = v3
				v30(v3[fn2("\178", 20659423169320)] .. os[v3[fn2("͗q;\138", 2741346535929)]]() .. v47[fn2("\195wkZ\144wȺ\168\1644\255\201\252U=\131\243\6\174KR!\250\179?ä\203\200\249\131\225<=c\8\216H\2452C\236\245\5\156", 29761810394181)])
			end

			local v47 = arg[v3[fn2("į\140R\1966\251\147", 8061899644244)]][v43]
			v47:Fire(v3[fn2("", 10378031441345)])

			if flag8 then
				local v48 = v3
				v30(v3[fn2("\19", 4223155474269)] .. os[v3[fn2("\138J\234w\251", 2422435481808)]]() .. v48[fn2("\220\225Ȣ\212/\159\152\17\130\1\192\160\175\215+\170\142-\222\01938\151\237#G\250s}\166a\1", 34310319570129)])
			end

			return v47:Destroy()
		end
	end)

	local v47 = v45[v3[fn2("6y\14\152\246", 14892179830317)]]
	flag10 = true
	return (v47:Wait())
end

tbl9.close = function(arg)
	arg[v3[fn2("\241\199\234^{\15\210n\242Θ\147", 28222017627819)]] = true
	arg[v3[fn2("\248Ot\178\26\"\163W\188", 11388453333358)]]:Close()
end

local v43 = script_key or v3[fn2("O8\150\147", 28215574980261)]
local n7 = 0
local flag10 = false

v27(function()
	flag10 = true

	while not flag7 do
		n7 += 1
		v28:Wait()
	end
end)

while not flag10 do
	v28:Wait()
end

local function fn8()
	local v44 = n7

	while n7 == v44 do
		v28:Wait()
	end
end

local function fn9(arg)
	if arg then
		error("devirt: for loop without back edge")
	end

	while v21() do
	end
end

local function fn10(arg)
	for i = 1, 2 do
		local n8 = arg % 9915 + 4
		local n9 = nil
		local n10 = nil

		for i2 = 1, 3 do
			n9 = arg % 4155 + 3

			if i2 % 2 == 1 then
				n9 += 522
			end

			n10 = arg % 9996 + 1

			if n10 % 2 ~= 1 then
				n10 *= 3
			end
		end

		local n11 = arg % 9999995 + 1 + 13388
		local n12 = arg % 1000
		local n13 = fn3((arg - n12) / 1000) % 1000
		local n14 = arg % (n8 * n9 + 9999) + 13388
		arg = (n12 * n13 + n11 + arg % (419824125 - n11 + n12) + (n14 + n12 * n9 + n13) % 999999 * (n11 + n14 % n10)) % 99999999999
	end

	return arg
end

local n8 = 1
local v44 = syn and syn[v3[fn2("D\180\156f\239S\239", 24172813637616)]] or request or http_request

if v13 and ({ v13() })[1] == v3[fn2("\25\247}t\225\1\187", 7949153311979)] then
	n8 = 9
elseif v13 and ({ v13() })[1] == v3[fn2("\144\144T\182[\138\11\21\232z", 2290361206869)] then
	if ({ v13() })[2] == v3[fn2("@I\129", 19850870900791)] then
		n8 = 5
	else
		n8 = 2
	end
elseif FLUXUS_LOADED or EVON_LOADED or WRD_LOADED or COMET_LOADED or OZONE_LOADED or TRIGON_LOADED then
	n8 = 4
elseif KRNL_LOADED then
	n8 = 3
elseif Electron_Loaded then
	n8 = 6
elseif v13 and ({ v13() })[1] == v3[fn2("\171\192\220JXȜ", 12815499767455)] then
	n8 = 7
elseif v13 and ({ v13() })[1] == v3[fn2("\169\192C<\132\166", 18670792623084)] then
	n8 = 11
elseif v13 and ({ v13() })[1] == v3[fn2("\229\232Z}%\134\210K`", 16058299038315)] then
	n8 = 11
elseif v13 and ({ v13() })[1] == v3[fn2("v\191", 18668645073898)] then
	n8 = 11
elseif v13 and ({ v13() })[1] == v3[fn2("\138\203G|", 30760420765671)] then
	n8 = 11
elseif v13 and ({ v13() })[1] == v3[fn2("y\142\4\231\253", 9953890477110)] then
	n8 = 11
elseif v13 and ({ v13() })[1] == v3[fn2("h\16\196\"\236", 28973659842919)] then
	n8 = 15
end

if v13() == v3[fn2("\236<\200I", 5129421230761)] then
	n8 = 11
end

local function fn11(arg, arg2)
	tbl7 = {}
	tbl6 = {}

	for i = 0, arg do
		local v45 = v12(i)
		tbl6[i] = v45
		tbl6[v45] = i
	end

	for i = 1, #arg2 do
		local v45 = arg2[i]
		tbl7[i - 1] = v45
		tbl7[v45] = i - 1
	end
end

local tbl10 = {}
local v45 = v3[fn2("?", 4071753256656)]
local v46 = v3[fn2("\170", 20685193759552)]
local v47 = v3[fn2("\235", 33316004297011)]
local v48 = v3[fn2(" ", 9831480173508)]
local v49 = v3[fn2(".", 12166939913283)]
local v50 = v3[fn2("\188", 20310446426595)]
local v51 = v3[fn2("\30", 7856808696981)]
local v52 = v3[fn2("J", 30505936187130)]
local v53 = v3[fn2("\22", 31005241372875)]
local v54 = v3[fn2("y", 15134852888335)]
local v55 = v3[fn2("p", 7987809197327)]
local v56 = v3[fn2("\227", 12325858553047)]
local v57 = v3[fn2("M", 14182414824344)]
local v58 = v3[fn2(")", 20544529287869)]
local v59 = v3[fn2("F", 24744061721092)]
local v60 = v3[fn2("\174", 28931782633792)]
tbl10[1] = v45
tbl10[2] = v46
tbl10[3] = v47
tbl10[4] = v48
tbl10[5] = v49
tbl10[6] = v50
tbl10[7] = v51
tbl10[8] = v52
tbl10[9] = v53
tbl10[10] = v54
tbl10[11] = v55
tbl10[12] = v56
tbl10[13] = v57
tbl10[14] = v58
tbl10[15] = v59
tbl10[16] = v60
fn11(255, tbl10)

fn3 = function(arg)
	return arg - arg % 1
end

local function fn12(arg)
	local n9 = 1103515245
	local n10 = 12345
	local n11 = 99999999
	local n12 = arg % 2147483648
	local n13 = 1

	return function(arg2, arg3)
		local v61 = n11
		local n14 = n9 * n12 + n10
		local n15 = n14 % v61 + n13
		n13 += 1
		n12 = n15
		n10 = n14 % 4859 * v61 % 5781
		return arg2 + n15 % arg3 - arg2 + 1
	end
end

local function fn13(arg)
	for i = 1, 2 do
		local n9 = arg % 9915 + 4
		local n10 = nil
		local n11 = nil

		for i2 = 1, 3 do
			n10 = arg % 4155 + 3

			if i2 % 2 == 1 then
				n10 += 522
			end

			n11 = arg % 9996 + 1

			if n11 % 2 ~= 1 then
				n11 *= 3
			end
		end

		local n12 = arg % 9999995 + 1 + 13388
		local n13 = arg % 1000
		local n14 = fn3((arg - n13) / 1000) % 1000
		local n15 = arg % (n9 * n10 + 9999) + 13388
		arg = (n13 * n14 + n12 + arg % (419824125 - n12 + n13) + (n15 + n13 * n10 + n14) % 999999 * (n12 + n15 % n11)) % 99999999999
	end

	return arg
end

local function fn14()
end

local function fn15(arg)
	local tbl11 = {}
	local tbl12 = {}
	local tbl13 = {}

	for i = 1, 13 do
		local tbl14 = {}
		local tbl15 = {}
		tbl11[tbl14] = tbl15
		tbl12[tbl15] = i
		tbl13[tbl14] = tbl15
	end

	if arg then
		tbl11 = arg[1]
		tbl12 = arg[2]
		tbl13 = arg[3]
	end

	local n9 = 0
	local n10 = 0
	local n11 = 0

	for k, v61 in v11, tbl11, nil do
		local v62 = tbl12[v61]

		if tbl13[k] == v61 then
			n9 += 1
		end

		n10 += 1
		n11 = n10 % 2 == 0 and n11 * v62 or n11 + v62 + n10
	end

	if n9 ~= 13 then
		n6 = -1
	end

	tbl8 = { tbl11, tbl12, tbl13 }
	n6 = n11
	return false
end

local function fn16(arg)
	for i = 1, 2 do
		local n9 = arg % 9915 + 4
		local n10 = nil
		local n11 = nil

		for i2 = 1, 3 do
			n10 = arg % 4155 + 3

			if i2 % 2 == 1 then
				n10 += 522
			end

			n11 = arg % 9996 + 1

			if n11 % 2 ~= 1 then
				n11 *= 3
			end
		end

		local n12 = arg % 9999995 + 1 + 13388
		local n13 = arg % 1000
		local n14 = fn3((arg - n13) / 1000) % 1000
		local n15 = arg % (n9 * n10 + 9999) + 13388
		arg = (n13 * n14 + n12 + arg % (419824125 - n12 + n13) + (n15 + n13 * n10 + n14) % 999999 * (n12 + n15 % n11)) % 99999999999
	end

	return arg
end

local function fn17(arg)
	for i = 1, 2 do
		local n9 = arg % 9915 + 4
		local n10 = nil
		local n11 = nil

		for i2 = 1, 3 do
			n10 = arg % 4155 + 3

			if i2 % 2 == 1 then
				n10 += 522
			end

			n11 = arg % 9996 + 1

			if n11 % 2 ~= 1 then
				n11 *= 3
			end
		end

		local n12 = arg % 9999995 + 1 + 13388
		local n13 = arg % 1000
		local n14 = fn3((arg - n13) / 1000) % 1000
		local n15 = arg % (n9 * n10 + 9999) + 13388
		arg = (n13 * n14 + n12 + arg % (419824125 - n12 + n13) + (n15 + n13 * n10 + n14) % 999999 * (n12 + n15 % n11)) % 99999999999
	end

	return arg
end

local function fn18(arg)
	local n9 = 1103515245
	local n10 = 12345
	local n11 = 99999999
	local n12 = arg % 2147483648
	local n13 = 1

	return function(arg2, arg3)
		local v61 = n11
		local n14 = n9 * n12 + n10
		local n15 = n14 % v61 + n13
		n13 += 1
		n12 = n15
		n10 = n14 % 4859 * v61 % 5781
		return arg2 + n15 % arg3 - arg2 + 1
	end
end

local n9 = 68
fn14(67, v3[fn2("\132", 3840891719161)], v3[fn2("\148\243v\159\160\235\254v\22\198&3\183[\220h\254qŎJ\25\208K\154\157\246]", 12721007603271)])
n6 = -1
fn15()

while n6 == -1 do
end

local v61 = fn18(n7 + n6)

if n8 == 9 or n8 == 15 then
	local n10 = 0

	v15(function()
		local function fn19(arg)
			v32(arg[1])
		end

		fn19(v19({}, { [v3[fn2("\216K\237\155\22XS", 643190981207)]] = function()
			local fn20 = nil

			fn20 = function()
				n10 += 1
				return fn20()
			end

			fn20()
		end }))
	end)

	local n11 = 0

	v15(function()
		v44(v19({}, { [v3[fn2("\192\ra\139\231\195\12", 32549329237609)]] = function()
			local fn19

			fn19 = function()
				n11 += 1
				return fn19()
			end

			fn19()
		end }))
	end)

	if n11 + n10 < 20000 then
		n9 = 19
	elseif n11 - n10 ~= 0 then
		n9 = 189
	end
end

local function fn19(arg, arg2, arg3)
	local v62 = v3
	local tbl11 = { [v3[fn2("\242~\242\192\31\156", 25253030878174)]] = v62[fn2("rs\254", 30562846240559)] }

	if arg2 then
		tbl11 = v19(tbl11, { [v3[fn2("\216\21m\142\201m\185", 4427172646939)]] = function(arg4, arg5)
			if arg5 == v3[fn2("6c\17", 29393505708782)] then
				local v63 = v3
				local v64 = v16(v17(), v63[fn2("\1639\5\144\26ǈu&/\184", 32746903762721)])
				local v65 = v64()
				local v66 = v64()
				local n10 = 1

				v15(function()
					n10 = v18(v66) - v18(v65)
				end)

				if (n8 == 9 or n8 == 15) and (n10 ~= 0 or v65 ~= v66) then
					n9 = 121

					while arg3 do
					end
				end

				return arg
			end

			return v20(tbl11, arg5)
		end })
	else
		tbl11[v3[fn2("\226\245\174", 16547940252723)]] = arg
	end

	local v63 = v44(tbl11)

	if v63[v3[fn2("\133\\*\136\211ɹ\206\215j", 13445805453546)]] == 0 then
		if flag8 then
			warn(v3[fn2("j-F\128\162\139WIʯ\\хE\181p6\159O\23).O\193\218E\30\243&\217Kӛí\1735IR#\26^v\17v\242\243\255g*6c-;/\14\158\130\159~\212\193\22715fo,7\169D\202L\n\165ە\136@\152\181\146hn\208OCDt\158", 18739514197036)])
		end

		local v64 = v3
		writefile(v3[fn2("\207\249D\240\136>\28\137\129dÐ\214\30\184\231\139\226\150\24\179", 17214754274976)], v64[fn2("\216xc\22ѧ\29\211\253\25&\168\165\162\239_rגm*\250\8\190C\229\197ڊ\1792y\193\3|\21\198)$\183\28\14\127\167}\137 H\206\220J\198tݪ\165/\129\29`$'\176\252{v\185j\163M\160\tCEi\4\196z\255]\n\16zx\167\254\\W\168\181", 24541118323015)])
	end

	return v63[v3[fn2("2\224o\143", 15183172745020)]], v63[v3[fn2("\235\144\243\23326\138", 30737871499218)]]
end

fn8()

local function fn20(arg)
	if v35()[8753563] == 22044 and n8 ~= 11 then
		if flag8 then
			warn(v3[fn2("MI\186Vb\245\221\195>\219۔\228\197\2258:\228<d\249\232\25\157|\139\228q\18寋k\17\11\202\232\154l|\190\2325\144\15\240-\210\234\162\6\158\183\227\237j\165\205W\1\145\189Q\241\233\238&\23\156/\205L꜊\255\134)\132!\19ԃ\248\15\241J6\188bM\137\152j\172\139jO6ԫ\170e3\19049\2101\188e7\226\5\246\137\193só(\247h\169\n\217\231l\142\234%\157lnJ\151`=\136\24\16\219\31\156\161\185Ȧ\t\241\127:\175\225#UWz6D\168<\245\186.ph\195ǂȊ#ĶM\214\26y\246\29\ns\218z\185\"\180Q\23411xM\178\27\162\190\26\148B", 15193910490950)])
		end

		v27(function()
			v21(5)
			v35()[8753563] = nil
		end)

		fn9()
	end

	v35()[8753563] = 22044
	local flag11 = false
	local tbl11 = { v22, v19, v32 }

	tbl11[-1] = n8 == 3 and function()
	end or v44

	local v62 = v26
	local v63 = v25
	local v64 = v24
	local v65 = v23
	local v66 = v15
	tbl11[4] = v12
	tbl11[5] = v62
	tbl11[6] = v63
	tbl11[7] = v64
	tbl11[8] = v65
	tbl11[9] = v66

	local function fn21()
		flag11 = true
		return v3[fn2("9", 805330944750)]:rep(16777215)
	end

	local v67 = v19({}, { [v3[fn2("\2\164\245C\127\213\\\162\31N", 24089059219362)]] = function()
		flag11 = true
		return v3[fn2("\n", 12700605886004)]:rep(16777215)
	end })

	for k, v68 in v11, tbl11, nil do
		if k ~= -1 then
			local flag12 = n8 ~= 11

			if flag12 then
				local v69 = v3
				flag12 = v22(v68)[v69[fn2("\183\167\19\142", 33365397928289)]] == v3[fn2("\11h\3", 1198332445788)]
			end

			if flag12 then
				flag11 = true
			end
		end

		if v68 ~= v10 and v68 ~= v32 then
			local v69 = v10
			local v70 = v32
			local v71 = error
			local env = getfenv()
			env[v3[fn2("*\253\137\5\172\129[\220", 22630873322068)]] = fn21
			env[v3[fn2("d0\166\143,", 17147106475617)]] = fn21
			env[v3[fn2("\194\218Gp<", 22071436759115)]] = fn21

			if k == -1 then
				if n8 ~= 5 then
					v15(v68, v3[fn2("", 22141232107660)])
				end
			else
				v15(v68, v67)
			end

			env[v3[fn2("\236\169g\\\154\181>2", 19030507111739)]] = v70
			env[v3[fn2("OH\r\168\171", 146033344648)]] = v69
			env[v3[fn2("n9\171U\136", 23510294713735)]] = v71
		end
	end

	if flag11 and n8 ~= 11 then
		n9 = 85

		if arg then
			fn9(true)
		end
	end

	v35()[8753563] = nil
end

local v62 = n7
local v63 = nil
local flag11 = nil

while true do
	local v64 = v15(function()
		local v64 = fn19
		local v65 = v3
		v63 = v64(tbl5[v3[fn2("vx\194#", 12421424491824)]] .. v65[fn2("[O\242\0037\14\186", 5635169064064)], n8 == 9 or n8 == 15)
		local data = v14:GetService(v3[fn2("\14\162\t\231\29\182*\207)\183p", 24734397749755)]):JSONDecode(v63)

		if not data[v3[fn2(",b@\180%\197", 21709574721274)]] then
			warn(data[v3[fn2("#\144\1440\177J_", 15555772528791)]])
			fn9()
		end

		if not data[v3[fn2("'G\8\177li2\202", 6353524266781)]][tbl5[v3[fn2("\\\1927b`\19\180", 2717723494883)]]] then
			warn(v3[fn2("\170\225Ӥ\6t=\31\209\\\128W\254\215\219\217\208\249\214K,\170JOUZ\243o\144F\180\1443|\169+E\162\5\197\239\173\243y\2088$\250\24/7\4q)", 10233071871290)])
			fn9()
		end

		tbl5[v3[fn2("M<\173\140", 25338932845614)]] = flag4 and LT_R_RRT_H or v7 and v3[fn2("U՜\142s`Q\20;\18\198p\167-\154\139]\156\225\206\u{F45E}\2072:\0", 13360977260699)] or v3[fn2("\194\219Κ\2251\176\229", 20587480271589)] .. v6
		local v66 = tbl5
		local v67 = v3
		v9 = data[v3[fn2("\147\208\226r\29\14\12\29", 29417128749828)]][v66[v67[fn2("\234]\254\157\27yP", 25466712022181)]]]
	end)

	fn8()

	if not v64 then
		if flag11 then
			break
		end
		fn14(69, v3[fn2("\132", 5187405058783)], v3[fn2("z\144\199zz\217\30\184 .t\4\248Hc\184\169BB\254G\191\5\223\237t\220i", 2506189900062)])
		v6 = v3[fn2("\185\153\142\14\4\0Q\15~a\234\8\243\250\128\"\185\152v\229Y\160\205Mĸ~", 25562277960958)]
		tbl5[v3[fn2("ѝ\175\188", 12563162738100)]] = flag4 and LT_R_RRT_H or v3[fn2("\137q\219σ\146\245\230B)\11%\rè~\188\254\151Q\214En1?\194h\197p\202>\191\128\188\166", 19243114481153)]
		flag11 = true
	end

	if not v64 then
		continue
	end

	local function fn21(arg)
		local n10 = 1103515245
		local n11 = 12345
		local n12 = 99999999
		local n13 = arg % 2147483648
		local n14 = 1

		return function(arg2, arg3)
			local v65 = n12
			local n15 = n10 * n13 + n11
			local n16 = n15 % v65 + n14
			n14 += 1
			n13 = n16
			n11 = n15 % 4859 * v65 % 5781
			return arg2 + n16 % arg3 - arg2 + 1
		end
	end

	local flag12 = false

	v27(function()
		if not v15(function()
			local v65 = tbl9
			local new = v65.new
			local str2 = flag4 and LT_R_RRT_W

			if not str2 then
				str2 = v7

				if v7 then
					local v66 = v6
					local v67 = v3
					str2 = v3[fn2("\183b\225(\6", 22124051714172)] .. v66 .. v67[fn2("0Mz'W!\18\31\179uwA\241", 2211975661580)]
				end
			end

			if not str2 then
				local v66 = v6
				local v67 = v3
				str2 = v3[fn2("\146?\180M\218\\", 11448584710566)] .. v66 .. v67[fn2("S\1344\0225\167y%\153\151\160p\17F", 6916182153513)]
			end

			flag6 = new(v65, str2)
		end) then
			local v65 = v3
			fn14(75, v3[fn2("$", 1674014590487)], v65[fn2("\3ER\150\169\174/D\168\171\182\25\\\129i\223kg\5\21\233\248\2127\249՞\184\27\144\31\179\180xO\159\127݀*\28\194TT\189\145\233z\n", 9788529189788)])
			flag6 = false
		end

		flag12 = true
	end)

	local n10 = n7 % 8585 * v62 % 9910
	fn20()

	if flag5 then
		n9 = 146
	end

	fn14(85, v3[fn2("\164", 31753662264196)], v3[fn2("e\249\24\25\161 \251\8\2081\171\141\127Q:\247V\12\157\2432\28\237a\225", 6450163980151)])
	local v65 = fn21(n10 + v61(2, 4096))
	local v66 = v61(1111, 32768)
	local n11 = 12000 + ((1398563873 * ((1398563873 * (1361 + n10 + n6 % 1000 + n6) % 1610612736 + 22491) % 95716599 + 1) + 22491) % 95716599 + 1) % 120000 - 12000 + 1
	local tbl11 = { n11 + v65(100000, 1000000), v66, n11 + v61(3333, 15625) + n7, (v65(10000, 1000000)) }
	n6 = -1
	fn15()
	local flag13 = false

	if n6 == -1 then
		n6 = 100
		flag13 = true
	end

	local n12 = 0
	local n13 = 0
	local n14 = 0
	local n15 = 1
	local tbl12 = { [0] = 0 }

	local function fn22(arg, arg2, arg3)
		arg2 = arg2 and arg or tbl6[arg]

		if not arg3 then
			arg2 = (arg2 + 4096 - tbl12[n12]) % 256
			n14 += arg2
			n12 = (n12 + 1) % n15
		end

		local n16 = arg2 % 16
		return tbl7[(arg2 - n16) / 16] .. tbl7[n16]
	end

	local function fn23(arg)
		local n16 = 0

		for i = 1, #arg do
			n16 += v25(arg, i)
		end

		return n16
	end

	local function fn24(arg, arg2)
		local v67 = tbl7
		local v68 = tbl12[n13]
		local n16 = (tbl7[v26(arg, 1, 1)] * 16 + v67[v26(arg, 2, 2)] + v68) % 256
		n13 = (n13 + 1) % n15
		if arg2 then
			return n16
		end
		return tbl6[n16]
	end

	local function fn25(arg)
		local tbl13 = {}
		n13 = 0
		local n16 = 1

		while true do
			local v67 = fn24(v26(arg, n16, n16 + 1), true)
			n16 += 2
			local v68 = v3[fn2("", 13613314290054)]

			for i = 1, v67 do
				v68 ..= fn24(v26(arg, n16, n16 + 1))
				n16 += 2
			end

			tbl13[#tbl13 + 1] = v68
			if not (n16 > #arg) then
				continue
			end
			break
		end

		return tbl13
	end

	local function fn26(arg, arg2)
		local v67 = fn22(#arg, true, arg2)

		for i = 1, #arg do
			v67 ..= fn22(v26(arg, i, i), false, arg2)
		end

		return v67
	end

	local function fn27(arg, arg2, arg3)
		if arg == 1 then
			tbl12 = arg2
			n15 = arg3
		elseif arg == 2 then
			n12 = 0
			n14 = 0
		elseif arg == 3 then
			return n14
		end
	end

	local v67 = fn18(v61(2, 32768 + v24() % 2000) + n6 % 4096)
	local v68 = fn12(v65(1, 32768) + n7 + v24() % 1000)
	local v69 = v67(111111, 999999)
	local tbl13 = {}

	for i = 1, v69 % 30 + 1 do
		local fn28

		if i == 2 then
			fn28 = v32
		elseif i == 8 then
			fn28 = v10
		elseif i == 17 then
			fn28 = v26
		else
			fn28 = function()
			end
		end

		tbl13[i] = fn28
	end

	local n16 = v68(111111, 999999) + 4420
	local n17 = v67(1, 1234) * v68(2, 1235) + n6 % 80000
	local n18 = 10000 + ((1445613873 * ((1445613873 * (n11 + n6) % 1627389952 + 23515) % 94716599 + 1) + 23515) % 94716599 + 1) % 100000 - 10000 + 1
	local tbl14 = { n18 + v67(100000, 1000000), n18 + v68(100000, 1000000), (v67(100000, 1000000)) }
	v4 = v4 or v5

	if v4 then
		n9 = 218
	end

	if flag13 then
		n9 = 250
	end

	local v70 = tbl14[1]
	local n19 = 15606 + tbl11[4]
	local str2 = (((fn26(v3[fn2("", 26309625077686)] .. n16) .. fn26(v3[fn2("", 16740145904870)] .. fn16(16589 + v69) .. fn13(n9 + n17) .. fn10(n16 - 4420))) .. fn26(n17 .. v3[fn2("", 17472460177296)]) .. fn26(v3[fn2("", 27987934766545)] .. v69)) .. fn26(tbl11[3] + 1737 .. v3[fn2("", 13603650318717)])) .. fn26(v3[fn2("", 32880051812253)] .. v70) .. fn26(v3[fn2("", 16629547121791)] .. n19)
	local n20 = tbl11[2] + 4420
	local str3 = str2 .. fn26(tbl14[3] .. v3[fn2("", 13202058620935)]) .. fn26(v3[fn2("", 15144516859672)] .. n20)
	local n21 = 16589 + tbl11[1]
	local str4 = (str3 .. fn26(tbl14[2] .. v3[fn2("", 18783538955349)]) .. fn26(v3[fn2("", 8523622719234)] .. n21)) .. fn26(str or v3[fn2("\15", 2953953905343)])
	local str5 = fn26(fn17(fn27(3) + 18274) .. v3[fn2("", 3140790684525)], true) .. str4
	local tbl15 = {}
	local v71 = v68(111111, 999999)
	local v72 = n6
	getfenv()[tbl15] = v71
	local v73, v74 = fn19(tbl5[v3[fn2("\209\30p\238", 17011810876899)]] .. v3[fn2("V", 25199342148524)] .. v9 .. v3[fn2("\221\209\n=o\17", 1184373376079)] .. tbl5[v3[fn2("p<\196O\205\0158s", 21268253363551)]] .. v3[fn2("c>\6\3F\162+y", 3976187317879)] .. str5 .. v3[fn2("\167Q\174", 1858703820483)] .. tbl5[v3[fn2("\15s )\130R\2366K\160\146G\162", 33488882006484)]] .. v3[fn2("\142\229\173", 8988567118003)] .. v43, n8 == 9 or n8 == 15)
	n6 = -1
	fn15(tbl8)

	while n6 == -1 do
	end

	while tbl11[2] ~= v66 do
	end

	local n22 = 0

	for k, v75 in v33(tbl13) do
		if k == 2 and v75 ~= v32 then
			n9 = 147
		end

		if k == 8 and v75 ~= v10 then
			n9 = 147
		end

		if k == 17 and v75 ~= v26 then
			n9 = 147
		end

		n22 = k
	end

	if n22 ~= v69 % 30 + 1 then
		n9 = 147
	end

	local flag14 = false

	if n9 == 147 then
		flag14 = true
	end

	if n6 ~= v72 then
		n9 = 100
		flag14 = true
	end

	if v73 == v3[fn2("\196\205X", 28147927180902)] then
		while true do
		end
	else
		local fn28, n23, v75, n24, n25, v76, tbl16, n26, n27, n28

		do
			if v34(v73, v3[fn2("\166\222ʞ\1593\166ye\241v\251\148W\162\200<\128\148(ݯ\180\233/p\147\233F襣\136\185\170\1\172\250\235\173k", 1377652802819)]) then
				if v8 then
					v8(v3[fn2("Ҕ~E\164", 19446057879230)])
					return
				end
			end

			if v26(v73, 1, 1) == v3[fn2("\138", 5914350458244)] then
				local v77 = v3[fn2("l\24\178\25+\175\tY\29B갖X\23", 28383083816769)]
				local v78

				if string[v3[fn2("\220eg'", 2761748253196)]](v73, v3[fn2("\23GB\147\212y\236\24\167&\219\243@y;\217", 9639274521361)]) then
					v77 = v3[fn2("LY\1333\11w\134\174FP\194 \4\177,y7\5y", 15260484515716)]
					v78 = v26(v73, 2, #v73 - 17)
				else
					v78 = v26(v73, 2, #v73)
				end

				fn14(100, v3[fn2("\244\159\237\201L\217X\239\180\245$\181G?", 30952626417818)], v3[fn2("N=1MT {!\211Z\191R\207'\140\200\253|3\169\178\183\150U\25c", 27278169760572)], Color3[v3[fn2("\189o`", 30263263129112)]](1, 0, 0), v3[fn2("4\226\14\232\14", 13170919157738)])
				fn4(v77, v78)
				fn9()
			end

			if v74 then
				if not v74[v3[fn2("\2\209\252\2074\186vTX\135", 27265284465456)]] then
					local v77 = v74[v3[fn2("\212/tO\130\27\16ĩ\177", 17419845222239)]]
				end
			end

			local n29 = tbl11[4] % 256
			local tbl17 = { [0] = tbl11[1] % 256, tbl11[2] % 256, tbl11[3] % 256, n29 }
			fn8()

			fn28 = function(arg)
				local n30 = 1103515245
				local n31 = 12345
				local n32 = 99999999
				local n33 = arg % 2147483648
				local n34 = 1

				return function(arg2, arg3)
					local v77 = n32
					local n35 = n30 * n33 + n31
					local n36 = n35 % v77 + n34
					n34 += 1
					n33 = n36
					n31 = n35 % 4859 * v77 % 5781
					return arg2 + n36 % arg3 - arg2 + 1
				end
			end

			if getfenv()[tbl15] ~= v71 then
				n9 = 100
				flag14 = true
			end

			n23 = 1

			for i = 1, 30 do
				local v77 = v32({})
				local n30

				if v32({}) < v77 then
					n30 = n23 + 1
				else
					n30 = n23 * 2
				end

				n23 = n30 % 10000
			end

			fn27(1, tbl17, 4)
			v75 = fn25(v73)
			n24 = v75[1] - n16
			n25 = v75[4] - v69

			while n29 ~= tbl17[3] do
			end

			fn20()
			v76 = tbl17[3]

			tbl16 = {
				[0] = tbl17[0],
				[2] = tbl17[1],
				[4] = tbl17[2],
				[6] = v76,
				v75[9],
				[3] = v75[7],
				[5] = v75[2],
				[7] = v75[6],
			}

			fn27(1, tbl16, 8)
			n26 = v75[8] - tbl14[1]
			n27 = v75[3] - tbl14[2]
			n28 = v75[5] - tbl14[3]
			local str6 = v3[fn2("", 28654748788798)] .. fn17(tbl14[3] + 12982) .. fn16(tbl14[1] + 31) .. fn13(tbl14[2] + 10600)

			if v75[11] == str6 and ({ [str6] = true })[v75[11]] then
				flag2 = true
			else
				local str7 = v3[fn2("", 6334196324107)] .. fn10(tbl14[3] + 12982) .. fn13(tbl14[1] + 69) .. fn16(tbl14[2] + 10600)

				if v75[11] == str7 and ({ [str7] = true })[v75[11]] then
					flag2 = true
				end
			end
		end

		if flag2 then
			local flag15 = v18(v75[14] and v75[14] or v3[fn2("\230v", 11362682743126)]) == -1
			v18(v75[15] and v75[15] or v3[fn2("\8", 1527981245839)])
		end

		n6 = -1
		fn15()

		if n6 == -1 then
			n9 = 250
			n6 = 100
		end

		local n29 = n7 + v67(111111, 999999) + v68(1234, 5678) + n6 % 99915 + n23
		tbl14[4] = n7 + n6 % 9951
		v67(100000, 1000000 + n6 % 1000)
		tbl14[5] = n6 % 8005 + n23 + v68(100000, 1000000 + n6 % 5000)
		tbl14[6] = v67(100000, 1000000)
		fn27(2)
		local v77 = v75[10]
		local v78 = tbl14[6]
		local str6 = fn26(v3[fn2("", 11551667071494)] .. fn13(v75[13] + 16746) .. fn17(n29 + n9) .. fn16(v75[10] + v69)) .. fn26(tbl14[5] .. v3[fn2("", 33512505047530)]) .. fn26(v3[fn2("", 24280191096916)] .. n29) .. fn26(v3[fn2("", 281328943366)] .. v78) .. fn26(tbl14[4] .. v3[fn2("", 30946183770260)])
		local str7 = fn26(fn13(fn27(3) + 18274) .. v3[fn2("", 1284234413228)], true) .. str6
		local v79 = v75[12]
		local response = v14:HttpGet(tbl5[v3[fn2("\204=\165,", 285624041738)]] .. v3[fn2("\215", 34962100748080)] .. v9 .. v3[fn2("\180T}\144E`\233N0\18\159\197", 5342028600175)] .. v79 .. v3[fn2("l4\190", 13551035363660)] .. str7)

		while v76 ~= tbl16[6] do
		end

		if response == v3[fn2("-\n+", 31841711780822)] then
			while true do
			end
		else
			if v26(response, 1, 1) == v3[fn2("\231", 5502021014532)] then
				v14:GetService(v3[fn2("<\165\18]\1795\142", 2067016091525)])[v3[fn2("\135\2218q\250\240\249wOź", 21595754614416)]]:Kick(response)
				fn9()
			end

			do
				local v80 = fn25(response)
				local n30 = 1
				local v81 = fn28(1 + v67(100, 1000 + n23) + v68(500, 5000 + n23) + n7 % 10000)
				local flag15 = false
				local n31 = 0
				local flag16 = false
				local flag17 = false
				local v82 = nil

				for i = 1, 3 do
					local v83 = v80[3]
					local str8 = fn13(tbl14[5] + 4420) .. fn13(tbl14[4] + fn23(flag16 and v3[fn2("\177", 34008588909496)] or v14[v3[fn2("\5fw\137\244", 33146347911317)]])) .. fn13(tbl14[6] + tbl14[2])

					if v83 == str8 and ({ [str8] = true })[v83] then
						flag3 = true

						if not (v80[8] and v80[8] ~= v3[fn2("C", 5343102374768)] and v80[8]) then
							local v84 = v3[fn2("x\138\221<\173~N", 31676350493500)]
						end

						if not (v80[9] and v80[9]) then
							local v84 = v3[fn2("\190;h\148\252\0\245", 23283728274612)]
						end

						v82 = v80[6]

						do
							local n32 = v80[1] - tbl14[4]
							local n33 = v80[7] - tbl14[5]
							local n34 = v80[5] - tbl14[6]
							local v84 = n26
							local v85 = n27
							local v86 = n28

							n26 = function(arg)
								if not (flag15 or n31 < v29() - 8) then
									n30 = (n30 + arg % 66) % 6644
									return v84 * arg % n32 + arg * 3
								end

								while true do
								end
							end

							n27 = function(arg)
								if not (flag15 or n31 < v29() - 8) then
									n30 = (n30 + arg % 50) % 5891
									return v85 * arg % 10000 + arg * n33 % 4
								end

								while true do
								end
							end

							n28 = function(arg)
								if not (flag15 or n31 < v29() - 8) then
									n30 = (n30 + arg % 35) % 6711
									return (arg + n34) % 100 * arg % (v86 % 100 + 1)
								end

								while true do
								end
							end
						end

						flag17 = true
						break
					elseif i == 3 then
						flag17 = false
						v82 = nil
					else
						flag16 = true
						flag17 = false
						v82 = nil
					end
				end

				if not flag17 then
					while true do
					end
				else
					if not flag14 then
						local v83, tbl17, tbl18, palette, v84, v85

						do
							do
								do
									while not flag12 do
										v28:Wait()
									end

									flag7 = true

									do
										local flag18 = false
										local flag19 = false
										local n32 = 0
										local n33 = 0
										local n34 = 0
										local flag20 = false
										local n35 = 0
										local n36 = 0
										local v86 = v75[12]

										v27(function()
											flag19 = true

											while not flag9 do
												local n37 = v81(1000, n30 + 10000) + n30
												local n38 = v81(1000, n30 + 10000) + n30
												n35 = n37
												n36 = n38
												fn27(2)
												local v87 = fn26
												local str8 = fn26(n36 .. v3[fn2("", 15363566876644)]) .. v87(fn17(n36 + v77) .. v3[fn2("", 6862493423863)] .. fn16(n35 + n16)) .. fn26(n35 .. v3[fn2("", 13612240515461)])
												local v88 = v3[fn2("", 26792823644536)]
												local v89 = v9
												local v90 = v3
												local str9 = tbl5[v3[fn2("\251k\3\137", 8239072452089)]] .. v3[fn2("\243", 6554320115672)] .. v89 .. v3[fn2("\1716y\6\132\215\1\133#\18\21'\12\146H\155\195\17", 8461343792840)] .. str8 .. v90[fn2("\224\212\238", 27556277380159)] .. v86

												v15(function()
													if flag8 then
														local v91 = v3
														v30(v3[fn2("@", 8025391308082)] .. v29() .. v3[fn2("\198\5\158\149\150H\31\14\31\12\163}g\158\31H\4\5\208[", 21377778372037)] .. v32(flag6) .. v91[fn2("\229\215", 957806936956)])
													end

													if flag6 == false then
														v88 = fn19(str9)
													else
														v88 = flag6:request({ [v3[fn2("E\143\147", 17306025115381)]] = str9 })
													end

													if flag8 then
														local v91 = v3
														v30(v3[fn2("\136", 8205785439706)] .. v29() .. v91[fn2("\20N\188+\204\18\227\131`OM\249P=\163n\206\2432", 6507074033580)])
													end

													if v88 and #v88 > 3 then
														if v88 == v3[fn2(",.[\"@+o>\223", 19626452010854)] then
															flag15 = true
															flag2 = false
															flag3 = false
															n25 = 1
															n24 = 2
															local v91 = v3
															v14:GetService(v3[fn2("K\26\21\0193\18\164", 34803182108316)])[v91[fn2("\210\201\222Q\159{D\181\180\253d", 29684498623485)]]:Kick(v3[fn2("\3\174d\163\173\15\196\248\n\148\211g\189\226M\252,\146?T\145^m\161\29J\31mM\158n\1\176D\232\133\t\2291r*\138W\145\0190\29\152I\176\177\147X^3\153O۴", 33049708197947)])
															fn9()
														end

														if v88 == v3[fn2("Ɖ\162J", 30249304059403)] then
															flag15 = true
															flag2 = false
															flag3 = false
															n25 = 1
															n24 = 2
															local v91 = v3
															writefile(v3[fn2("\231\151|(\168\248]\170\254\215\233V\231k\136M\172\129\168", 14824532030958)], v91[fn2("s25z\154\234a\131\145", 15250820544379)])

															while true do
															end
														else
															v88 = fn25(v88)[1]

															if v88 == fn13(n35 * n36 % 100000 + n29 + 16589) .. v3[fn2("", 28489387501476)] then
																n33 += 1
																flag20 = true
																flag18 = true
															elseif v88 == fn10(n35 * n36 % 100000 + n29 + 16589 + 4919) .. v3[fn2("", 15233640150891)] then
																flag20 = true
																flag18 = true
																flag9 = true

																v15(function()
																	flag6:close()
																end)
															else
																flag15 = true
																flag2 = false
																flag3 = false
																n25 = 1
																n24 = 2
																local v91 = v3
																v14:GetService(v3[fn2("\197>x\169\18fL", 29485850323780)])[v91[fn2("\172\15\203V*\147lM\179R\26", 24838553885276)]]:Kick(v3[fn2("\174\191bRRQ*\193ع'\25\154\n\158j\6\129\242\184\187\21\21D\245\225tL\179\160(", 22159486275741)] .. n33)
															end
														end
													end
												end)

												v21(20)
											end
										end)

										while not flag19 do
											v28:Wait()
										end

										flag19 = false

										v27(function()
											flag19 = true
											local n37 = 200

											while true do
												n37 += 1

												if not flag9 and n37 >= 250 then
													if flag20 then
														n32 += 1

														if n32 > 4 then
															n32 = 0

															if n34 < 10 then
																n34 += 1
															end
														end
													else
														n34 -= 1

														if n34 <= 0 then
															flag15 = true
															flag2 = false
															flag3 = false
															n25 = 1
															n24 = 2
															local v87 = n33
															writefile(v3[fn2("\rq\227Ŗ\196C\12d5\169P\130\23\225R%\162/\160\157", 15647043369196)], v3[fn2("\226\254\178K\216\255Z+Z", 8167129554358)] .. v87 .. v3[fn2("\250\193X\28", 24571184011619)] .. v32(flag6))
														end
													end

													flag20 = false
													n37 = 0
												end

												n31 = v29()
												v21(0.18)
												if n31 ~= v29() then
													continue
												end
												flag15 = true
												flag2 = false
												flag3 = false
												n25 = 1
												n24 = 2
												local v87 = n33
												writefile(v3[fn2("\221aK\192\216\12q\174n\167\"\232\6\199\17:\166y\t=)", 26022927261355)], v3[fn2("\206\224\168?\226v\231\19\29", 709765005973)] .. v87 .. v3[fn2("\169d\175m", 10312531191172)] .. v32(flag6))
											end
										end)

										fn14(95, v3[fn2("\132", 22787644412646)], v3[fn2("\"\140\144$Il~ٳz\219Z\206:\t", 447764005281)])

										while not flag19 or not flag18 do
											v21()
										end
									end
								end

								do
									fn14(100, v3[fn2("^\156\160\174\193/5\1494\0U\206\225\165}", 10029054698620)], v3[fn2("[Q7ð=\11x\218~\1302}\200\234/m\228.\159", 31806277219253)] .. v29() - now .. v3[fn2("\252", 21953321553885)], Color3[v3[fn2("wܽ", 20447889574499)]](0, 1, 0), v3[fn2("\211\225ף", 11135042529410)])
									v83 = nil

									do
										local tbl19 = {
											[8] = 133,
											[13] = 12,
											[16] = 226,
											[14] = 142,
											[18] = 40,
											[9] = 200,
											[17] = 184,
											[15] = 2,
											185,
											[12] = 92,
											[19] = 42,
											[4] = 112,
											[10] = 28,
											[6] = 26,
											[5] = 65,
											172,
											[7] = 209,
											[11] = 207,
											63,
										}

										luraph_runtime1(v82, buffer.fromstring("X\176}\21],~>/\143'\159\1862\227:\152\r\180\164\238Ҝں\157\16h=J\230\217\"E\245>\249\181O\4\255vN\194:\220\1\130\26\161\1\162\177[\233\149\240\2326\165q\165\0076E\200R\5}u\134\194\24133C&]L\16\250\138\134^k\238ۓ(d\242\170\251A\26\")\245\196o\236\14=U#\182\t\192\152*i\200^>\245A\230,ӵ\227\\=\255\127\11\214 \193\176l\228\149k\1U\195\27\5\3Y\138\221;3I\207\250\253\na\217n.\253\20P_CU\232h\1569d\t\153\190\234\174|!y\136\22,$jτ\158 QX\\\195\200\236T\172\195\15A!\12741\129\187\167\190\229o\230\217o\164\29\168\159\230\200\23{\18%\165\1556[\188e\194\233:\247\197\194劓{\154\r\180\147\147W\138\171e'\15\179\212Xo\216UO\169\203\233\187HD*r\228\n\t\236Se; W`\127\184\138?\232\t\145\253\136\238G3/\169\148\171\138\232\178}\160Q\131\200\17M%\25-\149 3]\2191\202\18\185\148\5\143\t\215ohG\198\210\15Qg\165$\238\143,K\129E@\28\253k\242֪؇\t\255\160[ \180\15\253\206\24\200\194\253h\207h*\182\206\245\172\231dKp\164\25\3r\219T\149\191W\224F-.\31\24\181\194\194\u{E52A}\12\148\154\1800\131\192n!\236\152Nx.T ['\183e\156+\159\r\2034*)J;\152q\238~H)pL;\134a\0g\221\22Z\241&\162ad\241X\136;e\1422\u{8B}(_\243j\179\140\208Pk!\25\220{]1\171\184\189\218F\27\210N\161\245F\145\200\231Q\164_ñ\23D\161\132\129\0218\215\240T,\221ҡ\159\t\31C\190g\186\235\239\216,\145C\189\188\2362\212Ė\1620h\247\28\\\11%\233\189\15\n=\149\198-^iB1\12\14\0\136\239\133\250ҥ~\198A\171\160\193\152\3'\24\193\224\\b\5\156P3\178\nw9\238\5\31\212JcB>\174\21>\157\137\\M\242\11\153g:+\254܈\216\242_Aq\165\r\176!m\168Á\2459OQ\184/\1805\128x=\31#I7\8\t`\237v\192\171\2?Ctuμ\222@\231\153l\14wM5\25\25\128\166\180\145\127oV\192y\154\183\5\217\225?R\3\163\205U\241\178\236V\240ϟE\173yD\220\4\224R\131T\188Q\187\18GC\244\130\247\177[\253l\226k\212A\163\146Hq\159wݿ\216\203\224'\1\133\229\190\22\186\239F\183\21\2538ڔ\0\197\0\166\15\224\20СB\252\136\186\163'S\134\8\127F\215͵\165\238\n\199-\254\162b$\29a6\195B\176g8,\244\r6\5jz-7\190\201\239z\174\29\204/\12\180_\216\26;m\171\134\28\132\149mK\239hG\186~\r]q6m\193\128\248\238\131\193;\160\185\170\225\219R6\26\167\173\142I\222\210m\2100\198Û\160\7\208h\147F\130\237\\d\214^\134WSӗ\21\211\203\15\240\231@ݏ\213\252\143F0Y\137\14?Ϛ\\\128\27¾\183C(\218\243[\152:`@G7\229\206Xi\3\218y{\253\241G\30\235\2330\210\226\216\237\159\22\254\176NH\234\189\24\240(mW}N\253xC\145\234FDd\211\n\209\1\186\225Q\209U\238\1366\184\163\164\143V\190\195\221q\26\1557\5\14猙k\211\\\31kq\218\2\229\216\240̄\222\2\208\24\28\t|\192$ʬ<y\249\8\159\229D\153eϖ\27C\243۲\241\230\170k\217\218\249\148\248]i\245\209*\254%/\188\160\243?\193\163}c\142\252\228n\165\254m\232)\169\22Q&\21\131\185\128x$\180\r\201X[c\176Y\130q\249_g\11\142\175\31\189\189X<\234]\156\221@\t\137\22\185\217\197\11~\1310G\17\184\0Z\20\128&\nl\0\194,\252\228\25\255B\4\244\128C\196`Ʀ\162L\241\\\199G\215\27Ht\170\22\236.\249b\130\241Vy\2022i\207Җs7\170\u{73F24}\184\2121\29\145.\158\159\153\27\239J\1445\245M\222\31\220\246(m\166\21\n&h\228\175)^\158Ô\241\166\144\230-\148\156\212Mfd`\240z\31\8\192\170c\17l\11^\16\141C\175\t\248搀\174\227ٮ\12ue\149b<ZM\187\224\234|\162(Yb\26h0xP\194\30`\182\19\195\11ȏ\16\225SQ-\149\243\233ˑ\247\133H4\191n\248\"\170r\4\2339Vy\134\205\195+\217\253\223M\210\n\133U\170\t\0\1987\28\241\250\162\240\208\231\242\172mfXx\161\228\251\149f\241\2189\165R\140\216\u{7BB}\152lD\0,\164So\1\154D\2540\222)\167\176(\141!\135\11\220\22\190\18\\\133\197I\3&h\170\146s\218I\170\226,?\136\236}\149\235\155\12\180\240\219\203\243\179\24h-\17wR\24\171 \233\230\210\4I\238\242\245\215\214\223\205\30\173\12\188S\n'<e\232p00I\5\1799\20\1=\131\150\169D5\8\248\1551\\\249\16j\161a\159H\172\1628\203\230\1968m\211}'!٠A\229>\201\12k]\203/\218?\11i\25\242\153\8;\5\135\245\155r{\229\236\3\132^\246U\215Q5R\151\140\3߱@bQe\222\216Օof\161\173\202ꄰc\253\158\2354\177J\170z\241\158=\128\0٪\2255\24\175X\12\226\24c\23\138K\30m\166\243ԯ\23\251<\127\193\180^I\131*\12\154\248\30\218\254y}\183\136\188\148#5\249^*\t0\172ui\249<ڍB\131\137\188\8\248\145or\160\162bBC\2369V\190\204h\2382@\204\203H\25b\147\148\138s \201e\202#\240\142\162\146;\225\252\184\2\181\231qrȅҤ`\29i\156\202wY\0\188wt\165H\161Y\149\165I\252H\129^\239\27\1688\174}JE)\27\141\230\155\250\127]`\169l\131\253\23\1971w\29\19\176\208\251\1376\215\217Q\132\18!\0150\19>!s\206u\202\243\192\241\153\184\201K\188\160}@ܨHW\206:|ݬ1\167e\196\237\181\n(\0S~\6'/T9\246S\192\250\230\152\22A\26\165wR\183Sn\241+\177K\251Ķ{\132x\225\242\231Y\233X\230\riX8\178\152c\12\216}\182pY-/\140k1\151\208&\159\164\205Z\187\2396#\8\223\226ӆ?L\200ٟ\219\243H8\174\24\160z\7\252A:\25.XT\178T\195m.D\30\147E\179\4\\\163\185ʲ\137\24\176\213̈\214\tM5Z\0249\236\17${\223W\132\139^\154>\30\203\198\230q\147\140\193\16\255\3\164\206\20\144\153\128\24Z\172v*f\210叓\154eTU\183\29\156\1297\168\240\rF\228|\173\153\17\26=\205;\195W\23\131c\242\151M\\\220ْ\198\240\148\136mɾf\165:V-\22\139\206Z~0k\149\237\171\4\162Bs\160\203⡌\19P\223\30hV\2\130.\173P\166\218\22\0\159\252\244^\22\188\163l\184\218\8Lq\164\205R\129r\230Y\152\235ج\163t*\0153\22\164\24CÔ\216\206\192\26R\28\131\241\rʤ\15Uv\19\176\204ֶ\187T\244\151mP\232,`6\195r˕\250\178\19\231w\205p\23\234\242Tkz=\15H\179Х\139x\n!J\138\193H\187\244\2404\190\239T\165\159'3\237k(U\195M\240\21\25jc1\4\145\248A\213\23ed\135RG\165\155\185\8\252_\175@/\5\166\199qf\239]DQ\26\225\12;\0158\164\153\199L\250\244\1\225\238-\2309\30\250l]f\162>\198C\155\153\7\214\203\226N\176\186\2s\27\144\1430\186^\20;H@\237\206.ׂ\11\134\5\253\18\n\160\163\225\189I\14\157\246\197\25\253\226\29,\157ub7&\127q\29r\139Y \8\188\2240\152\26\228\233w`\227w\218l;\137\201\244\0I\187\182\168\5\12\196\1984\249\n\241\201\237ү\2\173sPYyM1\242hGs\147\241'@\166\169s\5&\198\237\241=\171\157o\15Uc\207ለY\189\175\1553\182F\170,\175M,Ϡ\136k\215\193\181\250?\2\2544\246S\246Dj\17!\154\182\168\240\232\167Ӵ\250\170\175\31\183J\25\6f\137v'1\138L\3ov|8\173\150;\178)i[{Yp@\25\152g\175\\\159~\223샱p\225n\223\2261v{\199\3\142\131\193\131F\193a納P\216\236A\11\248F\162w\133\251\166\140v\251\17VI;y\237\196 \27ım\2\1443\249\129x\11\181\23%.\11ŀpJ2mQ\209k\156}\191շ\243!fB\186\139\22I\168)7\245sz\160\132\190s\23\168\154\30\170-\128\212\18x\0\155'\249'\17\153\163Lw\195\20\213\24Fx0\211\20\243N\233$\25\133\193s\198js\23^\154\147\160Q\153\29Tlg\1916\230\252AS\199\207\245\231oZ\148-\251\1737\135SLd;\222\218\237\236\31\207\227\204V\165ѱ\233\249\220qy\132\15#Gq\231\r\149q4\130P\t\199j\219>\8j\26\187c\231\190o\194Ha\29\161C.z봨\159\235\162,0\u{E4F1}\139\14\202\228\3\179\230\130q\242G\250@%K\162\248\163ֈ1 \191\173\20s\19L\27e~\187\232[$\189{\\\\\25\129\239C\141\184\239\247'\209%\0146}k{\131QД\3\154\12\158\4:\153\2241o\239\23\24\7\18 \235Ð;\29\190\184\156۵J\187\172tS\u{89}%\216\25e:\178ȿ\145i\237A\171\135\219\227u\149\231\169q\189\161KZ\24\154\226\152\231\253\14\133\190\23\232Z\175\174\30\136j\172\175Q\139o?\157d\6\243f\12yۇ\216\17\4\19\162\19\6x̰\"\144\142\224P0\239\197?`1E/\25al\255I\229\14\251i;\166\191\193\215\4bY\248k\222\19\183\136\179\21\18w\249\1747\139\177\0149Q_>\243E\216rl\172h%\246(\127\2552\161\22p\30~Y\194^hkJ\177\8;\180_\5\22M\18\179\167љ\5\12\222\n\153\218`6+\1420O'\189(\212\203G\178\187\165輿\165\252\193;\224\15\155\2Ӣ2\17=\23/꒨LU&Z\17A\2485\151\179/3\182Lu\3\135w\168D5\28\180V\175\174H\"\136\205Ԧ1\170 \187\252\127\243z\168b\18;\177Z\182κB\129͠\249\202ĥ\1\\\224\"[\17zsF\195ڻ\130m=\191Q\136\199~\160\3\128\157J\146\17\203j\1297 \rt\2082\194R>\225\2239\8O\218V\u{E85B}\2065\138\226Sm)p\29եt\148\173.\233\131\4\2072\157 \130\136Vq\175R\190֍\235\177\197\232\1ad\17\183\200s\202\219\2\27D\208\25P\229\154\224\30\193\199\214Ib<c/\254\8Y]\173Y\154Т'R\214CB;\212\233\185\218{\137\202E\225q\175f\21\15a\20\145+V\196\233\18\229\218\217٪$\172\149\159\167\251ڔ\1\218f\r\173\2201\27\232\194H+i?䁴\191G~\143\219\242\191*t\t\180\149^\243\tJ\192\235\250\r-\4\187\147ܝ\127s\12%]a\247\219bl:`H\r\t\17\246\159\247Z\0;4\222\214l2\171 \129\202\\\2273l\233\199\224n\132\173\253\212\237#Q\25S\136\239P\210Օ\192\1557\254\171Dh\251H\255`!b\252\255F\\k\163\233ð\217\196\23hg\129Pu\131\155X\239!mi\193\170\231kC){N\149\2137\232\151\229\225\199Q\175S5\198Xm\130|/(X\212\29\144\204\12q嵥\232\221\212S\227\242\226\133\6I\8\0\152#\14\157\138\30\28X\246\240\190\221N\249`G\143\188\198N4\4$\251\1Ő \149\218>\156\178f\241\16ZU\22G\t-\rY\231\n`\22\23M\216\213\213V~V\217\249\161\8\27\231_\242\193\128\127H\184\191 \176\199t\203\252\174.'\2102eć\14;\253\\\188\134\133\0070\165[\27\7v\150\4\127ig\162^\18,L\229\1771ߒWf]\160M{\218\3\141BO'\200V\212GPa\213#l@\173t\192\152j]\129;\134\4v.\219v*\139M&\216x{\20\15$\171\3\169\1855\135\195K\201o\\%Zw\27D\225S\229*\133ϭ\192aY\248\242fr\25\185'\4\169e\177\128C\31\139\236$c\204ۉ\183?\16.-J0\193|\173hld\159F\222VH\215`\169]\150?\2\27Wf\174\18\25\r^\164\231\153^\179pE\154#7x\187{\163\161\6\167\253\27\3}nU\190x\252Dj\199\212|\1528\169\198\22\140\24E\155\208\222\27\170Ű6\19\192\4k\162ŹX\u{EE32}A\14\238C]\197!Zz`\0!\241\243\235x\143E\31-$=\219\211\206\19\24\\\192\2010Z\206?\2Ė\0226\153y:\147\252|\161O\225&)\186wQנ\161ʷ\219J~\21-E\196\250\175 ·\168\23\r\173\159\167\128\2534&W\181p \205hߢp\18\150nS\147\186\167\229\138zK\142\168\252\11\174\15\14\186\255\188\159\139!\1278\27\2\128[\1744R;s\180\12\150\169X\212,\245UU8\134?$-͊e\235\162\16U\12X\217\11\215\235$+\0297\212VBWH/ya\202E)\228ӓMH\178EѭA \241\7!μT\17xz\230\0027\4\130D\185\135\1312kFy\164\149i\200\231o\219`\188յ\246\175\140\202q\158\5\172\178`.ݓ\20@\205\248\214\235\169ǽ\160\24\2\6O<\152hv\241\161\239\153nޅ\20Q\16\8I\166\143\164\28\195=\171T\162\200-\27\28\23Jp`\159ĥ\156u\132\30>\199<\27\241\207\242\8\21\147I\191]\160me\207w\178D\14'ȵ;\22\238z\135\15\148&\28\4ޓM\128\157;a\135O\198E&\234O\255\1565O1\232\241\19|\171'\135!\198=\3\151\6<\229ǖ\16\201T2\237\157\244\206\3\29\146L\197;|c\202м\6+\160\252\189G\200\203T\nR\245'㱭IW)\133\2\166\8\28\250\250^!\142\139>\8\242\228\140\203Iys\170m\172\2174\246\127S{\8G\227\141<\193\0k炅{\189\25\127&W\141\7\197\197%%\5\2106J {\154\151\238d\239o\2M\11\236\8?\7\243QT\159b\253\255\228U}\173\236\192\252\196\2\185\6\193eLZ\228nh\209P\179k\180\167\213>\3\159\220K\225\26;6]p\147\3\142ͥD3\218\252\236^\187\0q\239\161\208\192\135\237\169n\143,\199\210\"%+\132\152M\198{~\127K6AG\134\5\221U\2493\176\149F2\132\23h\142\0#L\254\162\196/\224\129\168Q%]\179\142Pm\2103\174\194(\165\134\141\169x\225\191+6k\133\146W@m\148\129\206\23h2\20\254\252U\252\31\132\28\239\162\28\218>_x\131KM\21\241\254w\2426\255I\181\188\249\152Ub\1668\12z\6/pxSfz$\132^\246U8\209\249T\233\223\22\157\165\159\"\135\162ҳ3\169p\137\213y\188\253\16\169\158\138®\161)\233\5\150h8\220\211;\208X\178\22\161\137\239\140?\21\205t\18\18\173^\234Q:\187p\136\184{\8\230榁\233sxߐ\16h 7#ʑ8\143\228J9|nN"), tbl19, 620)()
									end
								end

								tbl17 = {
									Version = "1.0.0",
									Flags = {},
									Options = {},
									Windows = {},
									NotifyPositions = { "Right Bottom", "Right Top", v83[165], "Left Top" },
									SheetApiUrl = "http://prem-eu4.bot-hosting.net:21456",
									MediaFolder = "Zenthra/backgrounds",
								}

								tbl18 = {}

								do
									local env = {
										Clone = cloneref or function(arg)
											return arg
										end,
									}

									local flag18 = typeof(writefile) == "function" and typeof(readfile) == "function"

									if flag18 then
										local v86 = v83[33]
										flag18 = typeof(isfile) == v86
									end

									if flag18 then
										local v86 = v83[33]
										flag18 = typeof(isfolder) == v86
									end

									env.Filesystem = flag18 and typeof(makefolder) == "function"
									env.Mobile = false
									tbl18.Env = env
								end
							end

							do
								local components

								do
									do
										tbl18.Services = {}

										tbl18.State = {
											Saved = {},
											Connections = {},
											ThemeBindings = {},
											FontCache = {},
										}

										tbl18.Icons = { Data = {} }
										tbl18.Theme = { Palette = {}, Defaults = nil }

										tbl18.Layout = {
											FontFamily = "rbxasset://fonts/families/GothamSSm.json",
											Weight = Enum.FontWeight,
											Ease = Enum.EasingStyle.Quint,
											EaseIn = Enum.EasingDirection.In,
										}

										tbl18.Config = {
											Folder = nil,
											Name = nil,
											Enabled = v83[142],
											_queued = false,
										}

										tbl18.Notify = {
											Width = 292,
											Gap = 8,
											Edge = 18,
											Position = "Right Bottom",
											Active = {},
											Profiles = {},
											Kinds = {
												info = { key = "Accent", glyph = "info" },
												success = { key = "Success", glyph = "check" },
												error = { key = v83[78], glyph = v83[137] },
												warning = { key = "Warning", glyph = v83[137] },
											},
										}

										tbl18.Binds = { List = {}, Listeners = {}, Binding = v83[142] }
										tbl18.Util = {}
										tbl18.Components = {}
										tbl18.Module = {}
										tbl18.Tab = {}
										tbl18.Page = {}
										tbl18.Window = { BlockDrag = false }
										tbl18.Services.UserInput = tbl18.Env.Clone(game:GetService("UserInputService"))
										tbl18.Services.Gui = tbl18.Env.Clone(game:GetService("GuiService"))
										tbl18.Services.Tween = tbl18.Env.Clone(game:GetService(v83[122]))
										tbl18.Services.Http = tbl18.Env.Clone(game:GetService(v83[163]))
										tbl18.Services.Run = tbl18.Env.Clone(game:GetService(v83[123]))
										tbl18.Services.Players = tbl18.Env.Clone(game:GetService("Players"))
										tbl18.Services.CoreGui = tbl18.Env.Clone(game:GetService(v83[41]))
										tbl18.Services.LocalPlayer = tbl18.Services.Players.LocalPlayer
										tbl18.Env.Mobile = tbl18.Services.UserInput.TouchEnabled and not tbl18.Services.UserInput.KeyboardEnabled
										tbl17.IsMobile = tbl18.Env.Mobile

										tbl18.Theme.Palette = {
											Accent = Color3.fromRGB(v83[171], 246, 249),
											AccentSoft = Color3.fromRGB(198, v83[26], 206),
											AccentDim = Color3.fromRGB(104, 104, 112),
											Background = Color3.fromRGB(8, 8, 10),
											Surface = Color3.fromRGB(16, v83[124], 19),
											SurfaceAlt = Color3.fromRGB(25, 25, v83[133]),
											Border = Color3.fromRGB(40, 40, 46),
											BorderSoft = Color3.fromRGB(28, 28, 33),
											Text = Color3.fromRGB(246, v83[171], 249),
											SubText = Color3.fromRGB(136, 136, 144),
											Muted = Color3.fromRGB(v83[113], 92, v83[183]),
											Danger = Color3.fromRGB(232, 94, 94),
											Success = Color3.fromRGB(214, 214, 219),
											Warning = Color3.fromRGB(226, 200, v83[9]),
										}

										tbl18.Theme.Defaults = table.clone(tbl18.Theme.Palette)
										tbl17.Theme = tbl18.Theme.Palette
										tbl17.Binds = tbl18.Binds.List
										tbl18.Layout.Row = tbl18.Env.Mobile and 30 or 24
										tbl18.Layout.OptionH = tbl18.Env.Mobile and v83[170] or v83[179]
										tbl18.Layout.FieldH = tbl18.Env.Mobile and 34 or 30
										tbl18.Layout.TabH = tbl18.Env.Mobile and v83[19] or v83[17]
										tbl18.Layout.TabPad = 8
										tbl18.Layout.TabGap = v83[112]
										tbl18.Layout.TabIndicatorSlide = v83[95]
										tbl18.Layout.Width = 680
										tbl18.Layout.Height = 468
										tbl18.Layout.TopbarH = 46
										tbl18.Layout.SidebarW = 172
										tbl18.Layout.ChipH = 16

										tbl18.Notify.Profiles = {
											["Right Bottom"] = {
												ax = v83[15],
												ay = 1,
												xs = 1,
												ys = 1,
												shown = -tbl18.Notify.Edge,
												hidden = tbl18.Notify.Width + tbl18.Notify.Edge,
												sign = -v83[15],
											},
											["Right Top"] = {
												ax = 1,
												ay = 0,
												xs = 1,
												ys = v83[87],
												shown = -tbl18.Notify.Edge,
												hidden = tbl18.Notify.Width + tbl18.Notify.Edge,
												sign = v83[15],
											},
											["Left Bottom"] = {
												ax = 0,
												ay = v83[15],
												xs = 0,
												ys = 1,
												shown = tbl18.Notify.Edge,
												hidden = -(tbl18.Notify.Width + tbl18.Notify.Edge),
												sign = -1,
											},
											["Left Top"] = {
												ax = v83[87],
												ay = v83[87],
												xs = 0,
												ys = 0,
												shown = tbl18.Notify.Edge,
												hidden = -(tbl18.Notify.Width + tbl18.Notify.Edge),
												sign = 1,
											},
										}

										palette = tbl18.Theme.Palette
										components = tbl18.Components

										tbl18.Env.SafeParent = function()
											local localPlayer = tbl18.Services.LocalPlayer
											local playerGui

											if localPlayer then
												playerGui = localPlayer:FindFirstChild(v83[131]) or localPlayer:WaitForChild("PlayerGui", v83[112])
											else
												playerGui = localPlayer
											end

											if typeof(gethui) == "function" then
												local ok, result = pcall(gethui)

												if ok then
													local v86 = v83[56]
													ok = typeof(result) == v86
												end

												if ok then
													local flag18 = result == playerGui

													if not flag18 and playerGui then
														local ok2

														ok2, flag18 = pcall(function()
															return result:IsDescendantOf(playerGui)
														end)

														flag18 = ok2 and flag18
													end

													if not flag18 then
														if pcall(function()
															result:GetChildren()
														end) then
															return result
														end
													end
												end
											end

											if pcall(function()
												return tbl18.Services.CoreGui.Name
											end) then
												return tbl18.Services.CoreGui
											end
											return playerGui or tbl18.Services.CoreGui
										end

										tbl18.Env.PlayerGuiParent = function()
											local localPlayer = tbl18.Services.LocalPlayer
											if not localPlayer then
												return nil
											end
											return localPlayer:FindFirstChild("PlayerGui")
										end

										tbl18.Env.GuiParent = function()
											local ok, result = pcall(function()
												return tbl18.Services.CoreGui
											end)

											if ok and typeof(result) == "Instance" then
												return result
											end
											return tbl18.Env.PlayerGuiParent()
										end

										tbl18.Env.GuiDisplayOrder = 2147483646
										tbl18.Env.NotifyDisplayOrder = 2147483647

										tbl18.Env.PromoteGui = function(arg, displayOrder)
											local v86 = v83[56]
											if typeof(arg) ~= v86 then
												return
											end

											local ok, result = pcall(function()
												return arg:IsA("ScreenGui")
											end)

											if not ok or not result then
												return
											end
											displayOrder = displayOrder or tbl18.Env.GuiDisplayOrder

											pcall(function()
												if arg.IgnoreGuiInset ~= true then
													arg.IgnoreGuiInset = true
												end

												if arg.ResetOnSpawn ~= v83[142] then
													arg.ResetOnSpawn = false
												end

												if arg.AutoLocalize ~= false then
													arg.AutoLocalize = false
												end

												if arg.DisplayOrder ~= displayOrder then
													arg.DisplayOrder = displayOrder
												end

												if arg.Enabled ~= true then
													arg.Enabled = true
												end
											end)

											pcall(function()
												arg.ClipToDeviceSafeArea = v83[142]
											end)

											pcall(function()
												arg.SafeAreaCompatibility = Enum.SafeAreaCompatibility.None
											end)

											pcall(function()
												arg.ScreenInsets = Enum.ScreenInsets.None
											end)

											pcall(function()
												arg.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
											end)

											local v87 = tbl18.Env.GuiParent()
											local v88 = tbl18.Env.PlayerGuiParent()

											if v87 and arg.Parent ~= v87 then
												if not pcall(function()
													arg.Parent = v87
												end) or arg.Parent ~= v87 then
													if v88 and arg.Parent ~= v88 then
														pcall(function()
															arg.Parent = v88
														end)
													end
												end
											end
										end

										tbl18.Env.RandomName = function()
											local tbl19 = {}

											for i = 1, math.random(9, 15) do
												local n32 = math.random(1, v83[55])
												tbl19[i] = ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"):sub(n32, n32)
											end

											return table.concat(tbl19)
										end

										tbl18.Env.Registry = function()
											local zenthraGuis = getgenv and getgenv().__ZenthraGuis

											if type(zenthraGuis) ~= "table" then
												zenthraGuis = {}

												if getgenv then
													getgenv().__ZenthraGuis = zenthraGuis
												end
											end

											return zenthraGuis
										end

										tbl18.Env.Adopt = function(arg)
											local value = rawget(getgenv(), "protectgui")
											local v86 = v83[33]

											if typeof(value) ~= v86 then
												local value2 = rawget(getgenv(), "syn")
												value = type(value2) == "table" and value2.protect_gui or nil
											end

											if typeof(value) == "function" then
												pcall(value, arg)
											end

											table.insert(tbl18.Env.Registry(), arg)
											return arg
										end

										do
											local tbl19 = {
												v83[156],
												v83[155],
												v83[158],
												"overlay",
												"espgui",
											}

											local obj = setmetatable({}, { __mode = v83[72] })

											local function fn29(arg, parent)
												if not arg then
													return false
												end
												local flag18 = false

												pcall(function()
													local value = rawget(getgenv(), "protectgui")

													if typeof(value) ~= "function" then
														local value2 = rawget(getgenv(), "syn")
														local v86 = v83[20]
														value = type(value2) == v86 and value2.protect_gui or nil
													end

													if typeof(value) == "function" then
														pcall(value, arg)
													end
												end)

												pcall(function()
													local str8 = arg.Name:lower()

													for _, v86 in ipairs(tbl19) do
														if str8:find(v86, 1, true) then
															arg.Name = tbl18.Env.RandomName()
															flag18 = true
															break
														end
													end
												end)

												pcall(function()
													if arg:IsA("ScreenGui") and arg.ResetOnSpawn then
														arg.ResetOnSpawn = false
														flag18 = true
													end
												end)

												pcall(function()
													if parent and arg.Parent ~= parent then
														arg.Parent = parent
														flag18 = v83[189]
													end
												end)

												return flag18
											end

											local function fn30()
												local v86 = tbl18.Env.SafeParent()
												if v86 == (tbl18.Services.LocalPlayer and tbl18.Services.LocalPlayer:FindFirstChild("PlayerGui")) then
													return nil
												end
												return v86
											end

											tbl18.Env.HideDrawingHost = function()
												if typeof(Drawing) ~= "table" then
													return false
												end
												local v86 = fn30()
												local n32 = 0

												for k in pairs(obj) do
													if k.Parent and fn29(k, v86) then
														n32 += 1
													end
												end

												local tbl20 = {}
												local localPlayer = tbl18.Services.LocalPlayer and tbl18.Services.LocalPlayer:FindFirstChild(v83[131])

												if localPlayer then
													tbl20[#tbl20 + v83[15]] = localPlayer
												end

												pcall(function()
													tbl20[#tbl20 + v83[15]] = tbl18.Services.CoreGui
												end)

												if #tbl20 == 0 then
													return n32 > 0
												end
												local tbl21 = {}

												for _, v87 in ipairs(tbl18.Env.Registry()) do
													tbl21[v87] = true
												end

												for _, v87 in ipairs(tbl20) do
													for _, child in ipairs(v87:GetChildren()) do
														if child:IsA(v83[34]) and not tbl21[child] and not obj[child] then
															local str8 = child.Name:lower()

															for _, v88 in ipairs(tbl19) do
																if str8:find(v88, v83[15], true) then
																	obj[child] = v83[189]

																	if fn29(child, v86) then
																		n32 += 1
																	end

																	break
																end
															end
														end
													end
												end

												local tbl22 = {}

												for _, v87 in ipairs(tbl20) do
													for _, child in ipairs(v87:GetChildren()) do
														tbl22[child] = v83[189]
													end
												end

												local v87 = nil

												pcall(function()
													v87 = Drawing.new(v83[67])
												end)

												for _, v88 in ipairs(tbl20) do
													for _, child in ipairs(v88:GetChildren()) do
														if not tbl22[child] and child:IsA("LayerCollector") and not tbl21[child] then
															obj[child] = true

															if fn29(child, v86) then
																n32 += 1
															end
														end
													end
												end

												if v87 then
													pcall(function()
														v87:Remove()
													end)
												end

												return n32 > 0
											end
										end
									end

									do
										local n32 = 0

										tbl18.Env.GuardDrawing = function(arg)
											local now2 = os.clock()
											if not arg and now2 - n32 < v83[89] then
												return
											end
											n32 = now2
											pcall(tbl18.Env.HideDrawingHost)
										end
									end
								end

								do
									do
										local data = tbl18.Icons.Data

										local function fn29(arg)
											if type(arg) ~= "string" or #arg < v83[141] then
												return nil
											end

											local ok, result = pcall(function()
												return loadstring(arg)()
											end)

											return ok and type(result) == "table" and next(result) ~= nil and result or nil
										end

										if tbl18.Env.Filesystem and isfile("Zenthra/icons.lua") then
											local ok, result = pcall(readfile, "Zenthra/icons.lua")
											ok = ok and fn29(result)

											if ok then
												tbl18.Icons.Data = ok
											end
										end

										if next(tbl18.Icons.Data) == nil then
											tbl18.Icons.Data = data
										end
									end

									tbl17.Icons = tbl18.Icons.Data

									tbl18.Icons.Resolve = function(arg)
										if type(arg) ~= "string" or arg == "" then
											return ""
										end

										if arg:match("^rbxassetid://") or arg:match("^rbxasset://") then
											return arg
										end

										if arg:match("^%d+$") then
											return "rbxassetid://" .. arg
										end
										return tbl18.Icons.Data[arg] or ""
									end

									tbl18.Theme.Bind = function(arg, arg2, arg3)
										table.insert(tbl18.State.ThemeBindings, { instance = arg, property = arg2, key = arg3 })
										arg[arg2] = palette[arg3]
										return arg
									end

									tbl18.Theme.BindDynamic = function(arg, arg2, arg3)
										table.insert(tbl18.State.ThemeBindings, { instance = arg, property = arg2, resolve = arg3 })
										if not (n24 <= 7265) then
											arg[arg2] = arg3()
											return arg
										end

										while true do
										end
									end

									tbl18.Util.Font = function(arg)
										local medium = arg or tbl18.Layout.Weight.Medium
										local font = tbl18.State.FontCache[medium]

										if not font then
											font = Font.new(tbl18.Layout.FontFamily, medium)
											tbl18.State.FontCache[medium] = font
										end

										return font
									end

									tbl18.Util.Connect = function(arg, arg2)
										local connection = arg:Connect(arg2)
										table.insert(tbl18.State.Connections, connection)
										return connection
									end

									tbl18.Util.HookRegistry = function()
										local zenthraHooks = getgenv and getgenv().__ZenthraHooks

										if type(zenthraHooks) ~= "table" then
											zenthraHooks = {}

											if getgenv then
												getgenv().__ZenthraHooks = zenthraHooks
											end
										end

										return zenthraHooks
									end

									tbl18.Util.HookMethod = function(arg, arg2, arg3)
										if type(arg) ~= "table" or type(arg3) ~= "function" then
											return nil
										end
										local v86 = tbl18.Util.HookRegistry()
										local v87 = nil

										for _, v88 in ipairs(v86) do
											if v88.target == arg and v88.key == arg2 then
												v87 = v88
												break
											else
												v87 = nil
											end
										end

										if v87 then
											if v87.undo then
												pcall(v87.undo)
												v87.undo = nil
											end

											if type(v87.original) == "function" then
												arg[arg2] = v87.original
											end
										end

										local v88 = arg[arg2]
										if type(v88) ~= "function" then
											return nil
										end
										local v89 = v88

										local function fn29(...)
											return v89(...)
										end

										local v90 = arg3(fn29)
										if type(v90) ~= "function" then
											return nil
										end

										local function fn30(...)
											return v90(...)
										end

										local tbl19 = v87 or { target = arg, key = arg2 }
										tbl19.original = v88
										tbl19.undo = nil

										if typeof(hookfunction) == "function" then
											local ok, result = pcall(hookfunction, v88, fn30)

											if ok and type(result) == "function" then
												v89 = result

												tbl19.undo = function()
													pcall(hookfunction, v88, result)
												end

												if not v87 then
													v86[#v86 + 1] = tbl19
												end

												return fn29
											end
										end

										arg[arg2] = fn30

										tbl19.undo = function()
											arg[arg2] = v88
										end

										if not v87 then
											v86[#v86 + v83[15]] = tbl19
										end

										return fn29
									end

									tbl18.Util.New = function(arg, arg2, arg3)
										local instance = Instance.new(arg)
										local parent = nil

										if arg2 then
											parent = arg2.Parent
											arg2.Parent = nil

											for k, v86 in pairs(arg2) do
												instance[k] = v86
											end
										end

										if arg3 then
											for _, v86 in ipairs(arg3) do
												v86.Parent = instance
											end
										end

										instance.Parent = parent
										return instance
									end

									tbl18.Util.Tween = function(arg, arg2, arg3, arg4, arg5)
										local tween = tbl18.Services.Tween:Create(arg, TweenInfo.new(arg3 or 0.22, arg4 or tbl18.Layout.Ease, arg5 or Enum.EasingDirection.Out), arg2)
										tween:Play()
										return tween
									end

									tbl18.Layout.EaseIn = Enum.EasingDirection.In

									tbl18.Util.Corner = function(arg)
										local new = tbl18.Util.New
										local tbl19 = {}
										local v86 = v83[191]
										local cornerRadius = typeof(arg) == v86 and arg

										if not cornerRadius then
											cornerRadius = UDim.new(0, arg or v83[180])
										end

										tbl19.CornerRadius = cornerRadius
										return new("UICorner", tbl19)
									end

									tbl18.Util.Stroke = function(arg, arg2, arg3)
										local UIStroke = tbl18.Util.New("UIStroke", {
											Thickness = arg2 or v83[15],
											Transparency = arg3 or 0,
											ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
										})

										tbl18.Theme.Bind(UIStroke, "Color", arg or "Border")
										return UIStroke
									end

									tbl18.Util.Gradient = function(arg, arg2, arg3)
										local UIGradient = tbl18.Util.New("UIGradient", { Transparency = arg2 or NumberSequence.new(0), Rotation = arg3 or v83[87] })

										if arg then
											tbl18.Theme.BindDynamic(UIGradient, "Color", arg)
										end

										return UIGradient
									end

									tbl18.Util.Fade = function(...)
										local v86 = table.pack(...)
										local tbl19 = {}

										for i, v87 in ipairs({ ... }) do
											tbl19[i] = NumberSequenceKeypoint.new((i - 1) / (select("#", table.unpack(v86, 1, v86.n)) - 1), v87)
										end

										return NumberSequence.new(tbl19)
									end

									tbl18.Util.Padding = function(arg, arg2, arg3, arg4)
										return tbl18.Util.New(v83[98], {
											PaddingTop = UDim.new(0, arg or 0),
											PaddingBottom = UDim.new(0, arg2 or arg or v83[87]),
											PaddingLeft = UDim.new(0, arg3 or v83[87]),
											PaddingRight = UDim.new(0, arg4 or arg3 or v83[87]),
										})
									end

									tbl18.Util.List = function(arg, arg2)
										return tbl18.Util.New(v83[172], {
											Padding = UDim.new(v83[87], arg or v83[87]),
											SortOrder = Enum.SortOrder.LayoutOrder,
											HorizontalAlignment = arg2 or Enum.HorizontalAlignment.Left,
										})
									end

									tbl18.Util.FlexRow = function(arg)
										return tbl18.Util.New("UIListLayout", {
											Padding = UDim.new(0, arg or 6),
											FillDirection = Enum.FillDirection.Horizontal,
											VerticalAlignment = Enum.VerticalAlignment.Center,
											SortOrder = Enum.SortOrder.LayoutOrder,
										})
									end

									tbl18.Util.Grow = function()
										return tbl18.Util.New("UIFlexItem", { FlexMode = Enum.UIFlexMode.Fill })
									end

									tbl18.Util.Label = function(arg, arg2)
										local weight = arg.Weight
										local colorKey = arg.ColorKey
										arg.Weight = nil
										arg.ColorKey = nil

										if arg.BackgroundTransparency == nil then
											arg.BackgroundTransparency = 1
										end

										arg.FontFace = tbl18.Util.Font(weight or tbl18.Layout.Weight.Medium)
										arg.TextSize = arg.TextSize or 12
										arg.TextXAlignment = arg.TextXAlignment or Enum.TextXAlignment.Left
										arg.AutoLocalize = false
										local TextLabel = tbl18.Util.New("TextLabel", arg, arg2)
										tbl18.Theme.Bind(TextLabel, "TextColor3", colorKey or "Text")
										return TextLabel
									end

									tbl18.Util.Image = function(arg, arg2)
										local colorKey = arg.ColorKey
										arg.ColorKey = nil
										arg.Image = tbl18.Icons.Resolve(arg.Image)

										if arg.BackgroundTransparency == nil then
											arg.BackgroundTransparency = 1
										end

										arg.ScaleType = arg.ScaleType or Enum.ScaleType.Fit
										local ImageLabel = tbl18.Util.New("ImageLabel", arg, arg2)

										if colorKey then
											tbl18.Theme.Bind(ImageLabel, "ImageColor3", colorKey)
										end

										return ImageLabel
									end

									tbl18.Util.Hover = function(arg, arg2, arg3)
										tbl18.Util.Connect(arg.MouseEnter, arg2)
										tbl18.Util.Connect(arg.MouseLeave, arg3)
									end

									tbl18.Util.Press = function(arg, arg2)
										tbl18.Util.Connect(arg.MouseButton1Down, function()
											tbl18.Util.Tween(arg2, { Scale = v83[157] }, 0.09)
										end)

										tbl18.Util.Connect(arg.MouseButton1Up, function()
											tbl18.Util.Tween(arg2, { Scale = 1 }, 0.28, Enum.EasingStyle.Back)
										end)

										tbl18.Util.Connect(arg.MouseLeave, function()
											tbl18.Util.Tween(arg2, { Scale = 1 }, 0.2)
										end)
									end

									tbl18.Util.Round = function(arg, arg2)
										local n32 = v83[22] ^ (arg2 or 0)
										return math.floor(arg * n32 + 0.5) / n32
									end

									tbl18.Util.KeyName = function(arg)
										if typeof(arg) == "EnumItem" then
											return (tostring(arg):gsub("Enum.KeyCode.", ""):gsub(v83[40], ""))
										end
										return "None"
									end

									tbl18.Util.ToKeyCode = function(arg)
										if typeof(arg) == "EnumItem" then
											return arg
										end

										if type(arg) ~= "string" then
											return nil
										end

										local ok, result = pcall(function()
											return Enum.KeyCode[arg]
										end)

										return ok and result or nil
									end

									tbl18.Theme.Set = function(arg)
										local v86 = pairs
										arg = arg or {}

										for k, v87 in v86(arg) do
											if palette[k] ~= nil and typeof(v87) == "Color3" then
												palette[k] = v87
											end
										end

										for i = #tbl18.State.ThemeBindings, 1, -1 do
											local v87 = tbl18.State.ThemeBindings[i]

											if not pcall(function()
												v87.instance[v87.property] = v87.resolve and v87.resolve() or palette[v87.key]
											end) then
												table.remove(tbl18.State.ThemeBindings, i)
											end
										end
									end

									tbl18.Theme.SetAccent = function(arg)
										tbl18.Theme.Set({ Accent = arg, AccentSoft = arg:Lerp(Color3.new(v83[15], 1, v83[15]), 0.28) })
									end

									tbl18.Theme.Reset = function()
										tbl18.Theme.Set(tbl18.Theme.Defaults)
									end

									tbl18.Config.EncodeValue = function(arg)
										if typeof(arg) == "Color3" then
											return {
												__t = "Color3",
												r = math.floor(arg.R * 255 + 0.5),
												g = math.floor(arg.G * 255 + 0.5),
												b = math.floor(arg.B * 255 + 0.5),
											}
										end

										local v86 = v83[110]
										if typeof(arg) == v86 then
											return { __t = "Enum", v = tostring(arg) }
										end
										return arg
									end

									tbl18.Config.DecodeValue = function(arg)
										if type(arg) == "table" and arg.__t == v83[82] then
											return Color3.fromRGB(arg.r, arg.g, arg.b)
										end

										if type(arg) == "table" and arg.__t == v83[121] then
											local match, v86 = arg.v:match("^Enum%.(%w+)%.(%w+)$")

											if match and Enum[match] then
												local ok, result = pcall(function()
													return Enum[match][v86]
												end)

												if ok then
													return result
												end
											end

											return nil
										end

										return arg
									end

									tbl18.Config.Path = function()
										return tbl18.Config.Folder .. "/" .. tbl18.Config.Name .. ".json"
									end

									tbl18.Config.Setup = function(folder, name)
										if not tbl18.Env.Filesystem then
											return
										end
										tbl18.Config.Folder = folder or v83[14]
										tbl18.Config.Name = name or v83[39]
										tbl18.Config.Enabled = v83[189]

										if not isfolder(tbl18.Config.Folder) then
											pcall(makefolder, tbl18.Config.Folder)
										end

										tbl17.MediaFolder = tbl18.Config.Folder .. "/backgrounds"

										pcall(function()
											if not isfolder(tbl17.MediaFolder) then
												makefolder(tbl17.MediaFolder)
											end
										end)
									end

									tbl18.Config.Save = function()
										if not tbl18.Config.Enabled then
											return
										end
										local tbl19 = {}

										for k, flag18 in pairs(tbl17.Flags) do
											tbl19[k] = tbl18.Config.EncodeValue(flag18)
										end

										pcall(function()
											local http = tbl18.Services.Http
											local jsonEncode = http.JSONEncode
											writefile(tbl18.Config.Path(), jsonEncode(http, tbl19))
										end)
									end

									tbl18.Config.Queue = function()
										if not tbl18.Config.Enabled or tbl18.Config._queued then
											return
										end
										tbl18.Config._queued = true

										task.delay(0.4, function()
											tbl18.Config._queued = false
											tbl18.Config.Save()
										end)
									end

									tbl18.Config.Load = function()
										if not tbl18.Config.Enabled or not isfile(tbl18.Config.Path()) then
											return {}
										end

										local ok, result = pcall(function()
											return tbl18.Services.Http:JSONDecode(readfile(tbl18.Config.Path()))
										end)

										if not ok or type(result) ~= "table" then
											return {}
										end
										local tbl19 = {}

										for k, v86 in pairs(result) do
											tbl19[k] = tbl18.Config.DecodeValue(v86)
										end

										return tbl19
									end

									tbl18.Config.SetFlag = function(arg, arg2)
										if not arg then
											return
										end
										tbl17.Flags[arg] = arg2
										tbl18.Config.Queue()
									end

									do
										local zenthraTeardown = getgenv and getgenv().__ZenthraTeardown

										if type(zenthraTeardown) == "function" then
											pcall(zenthraTeardown)
										end
									end
								end

								do
									do
										for _, v86 in ipairs(tbl18.Env.Registry()) do
											pcall(function()
												local v87 = v83[56]

												if typeof(v86) == v87 then
													v86:Destroy()
												end
											end)
										end

										table.clear(tbl18.Env.Registry())

										if getgenv then
											getgenv().__ZenthraTeardown = function()
												for _, connection in ipairs(tbl18.State.Connections) do
													pcall(function()
														connection:Disconnect()
													end)
												end

												table.clear(tbl18.State.Connections)

												for _, v86 in ipairs(tbl18.Env.Registry()) do
													pcall(function()
														local v87 = v83[56]

														if typeof(v86) == v87 then
															v86:Destroy()
														end
													end)
												end

												table.clear(tbl18.Env.Registry())
											end
										end

										v84 = tbl18.Env.Adopt(tbl18.Util.New("ScreenGui", {
											Name = tbl18.Env.RandomName(),
											ResetOnSpawn = false,
											IgnoreGuiInset = true,
											AutoLocalize = v83[142],
											DisplayOrder = tbl18.Env.NotifyDisplayOrder,
											ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
											Parent = tbl18.Env.PlayerGuiParent(),
										}))

										tbl18.Env.NotifyGui = v84
										tbl18.Env.PromoteGui(v84, tbl18.Env.NotifyDisplayOrder)

										do
											local Frame = tbl18.Util.New("Frame", {
												Name = v83[195],
												AnchorPoint = Vector2.new(0.5, 0.5),
												Position = UDim2.fromScale(0.5, 0.5),
												Size = UDim2.fromScale(1, 1),
												BackgroundTransparency = 1,
												Parent = v84,
											})

											v85 = tbl18.Util.New(v83[104], { Scale = 1, Parent = Frame })

											tbl18.Notify.Profile = function()
												return tbl18.Notify.Profiles[tbl18.Notify.Position] or tbl18.Notify.Profiles["Right Bottom"]
											end

											tbl18.Notify.BaseOffset = function(arg)
												if arg.sign > v83[87] then
													return tbl18.Notify.Edge + tbl18.Services.Gui:GetGuiInset().Y
												end
												return tbl18.Notify.Edge
											end

											tbl18.Notify.Restack = function(arg)
												local v86 = tbl18.Notify.Profile()
												local v87 = tbl18.Notify.BaseOffset(v86)

												for _, v88 in ipairs(tbl18.Notify.Active) do
													local card = v88.Card

													if not v88.Dismissing and card.Parent then
														card.AnchorPoint = Vector2.new(v86.ax, v86.ay)
														local udim2 = UDim2.new(v86.xs, v86.shown, v86.ys, v86.sign * v87)

														if arg == false then
															card.Position = udim2
														else
															tbl18.Util.Tween(card, { Position = udim2 }, 0.34)
														end

														v87 += v88.Height + tbl18.Notify.Gap
													end
												end
											end

											tbl18.Notify.SetPosition = function(position)
												if not tbl18.Notify.Profiles[position] then
													return v83[142]
												end
												tbl18.Notify.Position = position
												tbl18.Notify.Restack(true)
												return true
											end

											tbl18.Notify.GetPosition = function()
												return tbl18.Notify.Position
											end

											tbl18.Notify.Push = function(arg, arg2)
												local tbl19

												if type(arg) == "string" then
													tbl19 = { Title = arg, Text = arg2 }
												else
													tbl19 = arg
												end

												tbl19 = tbl19 or {}
												local info = tbl18.Notify.Kinds[tostring(tbl19.Type or v83[198]):lower()] or tbl18.Notify.Kinds.info
												local duration = tbl19.Duration or 4
												local v86 = tbl18.Notify.Profile()
												local title = tbl19.Title or tbl19.Header or v83[63]
												local text = tbl19.Text or tbl19.Content or tbl19.Description or tbl19.Message

												if text ~= nil then
													text = tostring(text)

													if text == "" then
														text = nil
													end
												end

												local new = tbl18.Util.New

												local tbl20 = {
													Name = v83[63],
													AnchorPoint = Vector2.new(v86.ax, v86.ay),
													Size = UDim2.fromOffset(tbl18.Notify.Width, 0),
													AutomaticSize = Enum.AutomaticSize.Y,
													GroupTransparency = 1,
													BackgroundTransparency = 0.02,
													BorderSizePixel = 0,
													Parent = Frame,
												}

												local tbl21 = {}
												local v87 = tbl18.Util.Corner(10)
												local Border = tbl18.Util.Stroke("Border", 1, v83[196])
												local padding = tbl18.Util.Padding
												tbl21[1] = v87
												tbl21[2] = Border

												do
													local values = table.pack(padding(12, 12, 12, 12))
													table.move(values, 1, values.n, 3, tbl21)
												end

												local CanvasGroup = new("CanvasGroup", tbl20, tbl21)
												tbl18.Theme.Bind(CanvasGroup, v83[73], "Surface")

												local Frame2 = tbl18.Util.New("Frame", {
													Size = UDim2.fromOffset(26, 26),
													BackgroundTransparency = 0.86,
													BorderSizePixel = 0,
													Parent = CanvasGroup,
												}, { tbl18.Util.Corner(v83[180]) })

												tbl18.Theme.Bind(Frame2, "BackgroundColor3", info.key)

												tbl18.Util.Image({
													Image = tbl19.Icon or info.glyph,
													Size = UDim2.fromOffset(14, 14),
													Position = UDim2.fromScale(0.5, 0.5),
													AnchorPoint = Vector2.new(v83[108], 0.5),
													ColorKey = info.key,
													Parent = Frame2,
												})

												local Frame3 = tbl18.Util.New("Frame", {
													Position = UDim2.fromOffset(36, v83[87]),
													Size = UDim2.new(1, -36, 0, 0),
													AutomaticSize = Enum.AutomaticSize.Y,
													BackgroundTransparency = 1,
													Parent = CanvasGroup,
												}, { tbl18.Util.List(3) })

												tbl18.Util.Label({
													Text = tostring(title),
													TextSize = 13,
													Weight = tbl18.Layout.Weight.Bold,
													Size = UDim2.new(1, 0, 0, 15),
													Parent = Frame3,
												})

												if text then
													tbl18.Util.Label({
														Text = text,
														TextSize = 12,
														ColorKey = "SubText",
														TextWrapped = true,
														RichText = tbl19.RichText == true,
														AutomaticSize = Enum.AutomaticSize.Y,
														Size = UDim2.new(1, 0, v83[87], v83[87]),
														Parent = Frame3,
													})
												end

												local Frame4 = tbl18.Util.New("Frame", {
													Size = UDim2.new(v83[15], 0, v83[87], 11),
													BackgroundTransparency = 1,
													LayoutOrder = 9,
													Parent = Frame3,
												})

												local Frame5 = tbl18.Util.New("Frame", {
													AnchorPoint = Vector2.new(v83[87], 1),
													Position = UDim2.new(0, v83[87], 1, 0),
													Size = UDim2.new(1, 0, 0, 3),
													BackgroundTransparency = 0.86,
													BorderSizePixel = 0,
													Parent = Frame4,
												}, { tbl18.Util.Corner(v83[112]) })

												tbl18.Theme.Bind(Frame5, v83[73], v83[175])
												local Frame6 = tbl18.Util.New("Frame", { Size = UDim2.new(1, 0, 1, 0), BorderSizePixel = 0, Parent = Frame5 }, { tbl18.Util.Corner(v83[112]) })
												tbl18.Theme.Bind(Frame6, "BackgroundColor3", info.key)
												local tbl22 = { Card = CanvasGroup, Height = 64, Dismissing = v83[142] }
												table.insert(tbl18.Notify.Active, 1, tbl22)

												local function fn29()
													return CanvasGroup.AbsoluteSize.Y / math.max(v85.Scale, 0.01)
												end

												tbl22.Resize = CanvasGroup:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
													local v88 = fn29()
													local flag18 = v88 > v83[15]

													if flag18 then
														local v89 = v83[108]
														flag18 = math.abs(v88 - tbl22.Height) > v89
													end

													if flag18 then
														tbl22.Height = v88

														if not tbl22.Dismissing then
															tbl18.Notify.Restack(true)
														end
													end
												end)

												CanvasGroup.Position = UDim2.new(v86.xs, v86.hidden, v86.ys, v86.sign * tbl18.Notify.BaseOffset(v86))

												task.defer(function()
													if not CanvasGroup.Parent then
														return
													end
													local v88 = v83[15]
													tbl22.Height = math.max(fn29(), v88)
													tbl18.Notify.Restack(true)
													tbl18.Util.Tween(CanvasGroup, { GroupTransparency = 0 }, 0.3)
													tbl18.Util.Tween(Frame6, { Size = UDim2.new(v83[87], 0, 1, 0) }, duration, Enum.EasingStyle.Linear)
												end)

												local function dismiss()
													if tbl22.Dismissing or not CanvasGroup.Parent then
														return
													end
													tbl22.Dismissing = true

													if tbl22.Resize then
														tbl22.Resize:Disconnect()
														tbl22.Resize = nil
													end

													for i, v88 in ipairs(tbl18.Notify.Active) do
														if v88 == tbl22 then
															table.remove(tbl18.Notify.Active, i)
															break
														end
													end

													tbl18.Notify.Restack(true)
													local v88 = tbl18.Notify.Profile()
													tbl18.Util.Tween(CanvasGroup, { Position = UDim2.new(v88.xs, v88.hidden, CanvasGroup.Position.Y.Scale, CanvasGroup.Position.Y.Offset) }, 0.28, tbl18.Layout.Ease, tbl18.Layout.EaseIn)
													tbl18.Util.Tween(CanvasGroup, { GroupTransparency = 1 }, 0.24, Enum.EasingStyle.Quad, tbl18.Layout.EaseIn)

													task.delay(0.3, function()
														CanvasGroup:Destroy()
													end)
												end

												tbl22.Dismiss = dismiss
												task.delay(duration, dismiss)
												return tbl22
											end
										end
									end

									do
										local tbl19 = {}

										tbl18.Binds.Changed = function()
											for _, v86 in ipairs(tbl19) do
												pcall(v86)
											end
										end

										tbl18.Binds.OnChanged = function(arg)
											table.insert(tbl19, arg)
										end
									end
								end

								tbl18.Binds.AttachKeybind = function(arg)
									if tbl18.Env.Mobile or not arg.Flag then
										return nil
									end
									local str8 = arg.Flag .. "__key"
									local keyCode = tbl18.Util.ToKeyCode(tbl18.State.Saved[str8])
									local new = tbl18.Util.New

									local tbl19 = {
										Name = "Keybind",
										Text = "",
										AutoButtonColor = v83[142],
										AnchorPoint = arg.LayoutOrder and Vector2.new(0, 0) or arg.AnchorPoint or Vector2.new(v83[15], v83[108]),
										Position = arg.Position or UDim2.new(),
										LayoutOrder = arg.LayoutOrder or 0,
										Size = UDim2.fromOffset(0, tbl18.Layout.ChipH),
										AutomaticSize = Enum.AutomaticSize.X,
										BackgroundTransparency = 0.4,
										BorderSizePixel = 0,
										Parent = arg.Parent,
									}

									local tbl20 = {}
									local v86 = tbl18.Util.Corner(v83[45])
									local v87 = tbl18.Util.Padding(0, 0, 6, 6)
									local new2 = tbl18.Util.New
									local tbl21 = { MaxSize = Vector2.new(arg.MaxWidth or v83[97], tbl18.Layout.ChipH) }
									local v88 = table.pack(new2("UISizeConstraint", tbl21))
									tbl20[1] = v86
									tbl20[2] = v87

									do
										local values = table.pack(table.unpack(v88, 1, v88.n))
										table.move(values, 1, values.n, 3, tbl20)
									end

									local TextButton = new("TextButton", tbl19, tbl20)
									TextButton.ClipsDescendants = true
									tbl18.Theme.Bind(TextButton, "BackgroundColor3", "SurfaceAlt")
									local v89 = tbl18.Util.Stroke(v83[58], 1, 0.25)
									v89.Parent = TextButton

									local v90 = tbl18.Util.Label({
										Text = "-",
										TextSize = 10,
										Weight = tbl18.Layout.Weight.SemiBold,
										ColorKey = v83[175],
										TextXAlignment = Enum.TextXAlignment.Center,
										AutomaticSize = Enum.AutomaticSize.X,
										Size = UDim2.fromOffset(0, tbl18.Layout.ChipH),
										Parent = TextButton,
									})

									local tbl22 = { Flag = arg.Flag, Label = arg.Label or "Bind", Key = keyCode }
									table.insert(tbl17.Binds, tbl22)
									local flag18 = v83[142]

									local function fn29()
										v90.Text = flag18 and "?" or keyCode and tbl18.Util.KeyName(keyCode) or "-"
										v90.TextColor3 = (flag18 or keyCode) and palette.Text or palette.Muted
										tbl18.Util.Tween(v89, { Color = flag18 and palette.Accent or palette.Border, Transparency = flag18 and 0.3 or 0.25 }, 0.18)
										tbl22.Key = keyCode
										tbl18.Binds.Changed()
									end

									fn29()

									local function fn30()
										if tbl18.Binds.Binding then
											return
										end
										tbl18.Binds.Binding = v83[189]
										flag18 = v83[189]
										fn29()
										local connect = nil

										local function fn31(arg2)
											if arg2.UserInputType ~= Enum.UserInputType.Keyboard then
												return
											end

											if arg2.KeyCode == Enum.KeyCode.Unknown then
												return
											end
											connect:Disconnect()
											flag18 = false
											keyCode = not (arg2.KeyCode == Enum.KeyCode.Backspace or arg2.KeyCode == Enum.KeyCode.Escape) and arg2.KeyCode or nil
											tbl18.Config.SetFlag(str8, keyCode)
											fn29()

											task.defer(function()
												tbl18.Binds.Binding = v83[142]
											end)
										end

										connect = tbl18.Util.Connect
										connect = connect(tbl18.Services.UserInput.InputBegan, fn31)
									end

									tbl18.Util.Connect(TextButton.InputBegan, function(arg2)
										if arg2.UserInputType == Enum.UserInputType.MouseButton1 or arg2.UserInputType == Enum.UserInputType.MouseButton2 then
											fn30()
										end
									end)

									if arg.Host then
										tbl18.Util.Connect(arg.Host.InputBegan, function(arg2)
											if arg2.UserInputType == Enum.UserInputType.MouseButton2 then
												fn30()
											end
										end)
									end

									tbl18.Util.Connect(tbl18.Services.UserInput.InputBegan, function(arg2, arg3)
										if arg3 or tbl18.Binds.Binding or not keyCode then
											return
										end

										if arg2.KeyCode == keyCode and arg.OnPress then
											task.spawn(arg.OnPress)
										end
									end)

									tbl18.Util.Hover(TextButton, function()
										tbl18.Util.Tween(TextButton, { BackgroundTransparency = 0.1 }, v83[129])
									end, function()
										tbl18.Util.Tween(TextButton, { BackgroundTransparency = 0.4 }, 0.2)
									end)

									return {
										Chip = TextButton,
										Get = function()
											return keyCode
										end,
									}
								end

								tbl18.Binds.AttachBell = function(arg)
									local str8 = arg.Flag .. "__notify"
									local flag18 = tbl18.State.Saved[str8] == v83[189]
									local size = arg.Size or 13

									local v86 = tbl18.Util.New(v83[65], {
										Name = v83[114],
										Image = tbl18.Icons.Resolve("bell"),
										ScaleType = Enum.ScaleType.Fit,
										AnchorPoint = arg.LayoutOrder and Vector2.new(0, 0) or arg.AnchorPoint or Vector2.new(v83[15], 0.5),
										Position = arg.Position or UDim2.new(),
										LayoutOrder = arg.LayoutOrder or 0,
										Size = UDim2.fromOffset(size, size),
										BackgroundTransparency = 1,
										BorderSizePixel = v83[87],
										Parent = arg.Parent,
									})

									tbl18.Theme.BindDynamic(v86, "ImageColor3", function()
										return flag18 and palette.Accent or palette.SubText
									end)

									v86.ImageTransparency = flag18 and 0.05 or 0.5

									tbl18.Util.Connect(v86.MouseButton1Click, function()
										flag18 = not flag18
										tbl18.Config.SetFlag(str8, flag18)
										tbl18.Util.Tween(v86, { ImageColor3 = flag18 and palette.Accent or palette.SubText, ImageTransparency = flag18 and 0.05 or 0.5 }, 0.26)
									end)

									return {
										Bell = v86,
										IsOn = function()
											return flag18
										end,
										Announce = function(arg2, arg3)
											if not flag18 then
												return
											end
											local v87 = v83[105]
											local flag19 = type(arg3) == v87

											tbl17:Notify({
												Title = arg2,
												Text = flag19 and (arg3 and "Enabled" or "Disabled") or tostring(arg3),
												Type = flag19 and arg3 and "success" or "info",
												Duration = 2.5,
											})
										end,
									}
								end

								tbl18.Components.OptionRoot = function(arg, arg2, arg3)
									return tbl18.Util.New("Frame", {
										Name = "Option",
										Size = UDim2.new(1, 0, 0, arg2),
										BackgroundTransparency = 1,
										LayoutOrder = arg3,
										Parent = arg,
									})
								end

								tbl18.Components.Toggle = function(arg, arg2, arg3)
									local flag18 = arg2.Default == true

									if tbl18.State.Saved[arg2.Flag] ~= nil then
										flag18 = tbl18.State.Saved[arg2.Flag] == true
									end

									local v86 = tbl18.Components.OptionRoot(arg, tbl18.Layout.Row, arg3)

									local TextButton = tbl18.Util.New("TextButton", {
										Text = "",
										AutoButtonColor = false,
										BackgroundTransparency = 1,
										Size = UDim2.fromScale(1, 1),
										Parent = v86,
									}, { tbl18.Util.FlexRow(7) })

									local v87 = tbl18.Util.Label({
										Text = arg2.Title or "Toggle",
										TextSize = v83[69],
										ColorKey = v83[70],
										TextTruncate = Enum.TextTruncate.AtEnd,
										Size = UDim2.new(v83[87], 0, 1, 0),
										LayoutOrder = 1,
										Parent = TextButton,
									}, { tbl18.Util.Grow() })

									local tbl19 = { Type = "Toggle", Value = flag18, Root = v86 }

									if arg2.Keybind ~= false and arg2.Flag then
										tbl18.Binds.AttachKeybind({
											Parent = TextButton,
											Host = TextButton,
											LayoutOrder = v83[112],
											Flag = arg2.Flag,
											Label = arg2.Title or v83[3],
											MaxWidth = 54,
											OnPress = function()
												tbl19:Set(not tbl19.Value)
											end,
										})
									end

									local v88 = nil

									if arg2.Notify and arg2.Flag then
										v88 = tbl18.Binds.AttachBell({ Parent = TextButton, LayoutOrder = 3, Flag = arg2.Flag })
									end

									local stroke = tbl18.Util.Stroke

									local v89 = tbl18.Util.New(v83[37], {
										Size = UDim2.fromOffset(30, 16),
										BackgroundTransparency = 0.5,
										BorderSizePixel = 0,
										LayoutOrder = 4,
										Parent = TextButton,
									}, { tbl18.Util.Corner(UDim.new(1, 0)), stroke("Border", 1, 0.2) })

									tbl18.Theme.Bind(v89, "BackgroundColor3", "SurfaceAlt")

									local Frame = tbl18.Util.New("Frame", {
										AnchorPoint = Vector2.new(0, 0.5),
										Position = UDim2.new(0, v83[89], 0.5, 0),
										Size = UDim2.fromOffset(10, 10),
										BorderSizePixel = v83[87],
										Parent = v89,
									}, { tbl18.Util.Corner(UDim.new(1, 0)) })

									tbl18.Theme.Bind(Frame, "BackgroundColor3", "Muted")

									tbl19.Set = function(arg4, arg5, arg6)
										local value = arg5 == true
										arg4.Value = value
										tbl18.Config.SetFlag(arg2.Flag, value)

										tbl18.Util.Tween(v89, {
											BackgroundColor3 = value and palette.Accent or palette.SurfaceAlt,
											BackgroundTransparency = value and v83[107] or 0.5,
										}, v83[111])

										tbl18.Util.Tween(Frame, {
											Position = value and UDim2.new(1, -13, 0.5, 0) or UDim2.new(0, 3, v83[108], 0),
											BackgroundColor3 = value and palette.Background or palette.Muted,
										}, 0.3)

										tbl18.Util.Tween(v87, { TextColor3 = value and palette.Text or palette.SubText }, 0.24)

										if not arg6 then
											if arg2.Callback then
												task.spawn(arg2.Callback, value)
											end

											if v88 then
												v88.Announce(arg2.Title or "Toggle", value)
											end
										end
									end

									tbl19.Get = function(arg4)
										return arg4.Value
									end

									tbl18.Util.Connect(TextButton.MouseButton1Click, function()
										tbl19:Set(not tbl19.Value)
									end)

									tbl18.Util.Hover(TextButton, function()
										if not tbl19.Value then
											tbl18.Util.Tween(v87, { TextColor3 = palette.Text }, 0.16)
										end
									end, function()
										if not tbl19.Value then
											tbl18.Util.Tween(v87, { TextColor3 = palette.SubText }, 0.2)
										end
									end)

									tbl19:Set(flag18, true)

									if flag18 and arg2.Callback then
										task.spawn(arg2.Callback, flag18)
									end

									return tbl19
								end

								tbl18.Components.Slider = function(arg, arg2, arg3)
									local min = arg2.Min or v83[87]
									local max = arg2.Max or 100
									local decimals = arg2.Decimals or v83[87]
									local suffix = arg2.Suffix or ""
									local default = arg2.Default or min
									local v86 = v83[194]

									if type(tbl18.State.Saved[arg2.Flag]) == v86 then
										default = tbl18.State.Saved[arg2.Flag]
									end

									local n32 = math.clamp(tbl18.Util.Round(default, decimals), min, max)
									local v87 = tbl18.Components.OptionRoot(arg, tbl18.Env.Mobile and 38 or 32, arg3)

									local v88 = tbl18.Util.Label({
										Text = arg2.Title or "Slider",
										TextSize = v83[69],
										ColorKey = "SubText",
										Size = UDim2.new(1, -60, 0, 14),
										Parent = v87,
									})

									local v89 = tbl18.Util.Label({
										Text = tostring(n32) .. suffix,
										TextSize = 11,
										ColorKey = "Text",
										TextXAlignment = Enum.TextXAlignment.Right,
										AnchorPoint = Vector2.new(v83[15], 0),
										Position = UDim2.new(v83[15], 0, 0, 0),
										Size = UDim2.fromOffset(60, 14),
										Parent = v87,
									})

									local stroke = tbl18.Util.Stroke
									local v90 = v83[196]

									local Frame = tbl18.Util.New("Frame", {
										AnchorPoint = Vector2.new(0, 1),
										Position = UDim2.new(0, 0, 1, -2),
										Size = UDim2.new(1, v83[87], v83[87], 5),
										BackgroundTransparency = 0.35,
										BorderSizePixel = 0,
										Parent = v87,
									}, { tbl18.Util.Corner(UDim.new(1, v83[87])), stroke("BorderSoft", 1, v90) })

									tbl18.Theme.Bind(Frame, v83[73], v83[115])
									local gradient = tbl18.Util.Gradient

									local Frame2 = tbl18.Util.New("Frame", { Size = UDim2.fromScale(0, v83[15]), BorderSizePixel = 0, Parent = Frame }, {
										tbl18.Util.Corner(UDim.new(1, 0)),
										gradient(function()
											local colorSequence = ColorSequence.new
											local tbl19 = {}
											local v91 = ColorSequenceKeypoint.new(0, palette.AccentDim)
											local v92 = ColorSequenceKeypoint.new(v83[31], palette.AccentSoft)
											local new = ColorSequenceKeypoint.new
											local accent = palette.Accent
											tbl19[1] = v91
											tbl19[2] = v92

											do
												local values = table.pack(new(1, accent))
												table.move(values, 1, values.n, 3, tbl19)
											end

											return colorSequence(tbl19)
										end),
									})

									tbl18.Theme.Bind(Frame2, "BackgroundColor3", v83[42])

									local Frame3 = tbl18.Util.New("Frame", {
										AnchorPoint = Vector2.new(0.5, 0.5),
										Position = UDim2.new(1, 0, 0.5, 0),
										Size = UDim2.fromOffset(v83[140], 9),
										BorderSizePixel = 0,
										ZIndex = 2,
										Parent = Frame2,
									}, { tbl18.Util.Corner(UDim.new(1, 0)) })

									tbl18.Theme.Bind(Frame3, v83[73], "AccentSoft")

									local TextButton = tbl18.Util.New("TextButton", {
										Text = "",
										AutoButtonColor = false,
										BackgroundTransparency = 1,
										AnchorPoint = Vector2.new(0, 1),
										Position = UDim2.new(0, 0, v83[15], 0),
										Size = UDim2.new(v83[15], v83[87], 0, tbl18.Env.Mobile and v83[81] or 16),
										Parent = v87,
									})

									local tbl19 = {
										Type = "Slider",
										Value = n32,
										Root = v87,
										Set = function(arg4, arg5, arg6, arg7)
											local value = math.clamp(tbl18.Util.Round(tonumber(arg5) or min, decimals), min, max)
											arg4.Value = value
											tbl18.Config.SetFlag(arg2.Flag, value)
											local n33 = max > min and (value - min) / (max - min) or 0
											v89.Text = tostring(value) .. suffix

											if arg7 then
												Frame2.Size = UDim2.fromScale(n33, 1)
											else
												tbl18.Util.Tween(Frame2, { Size = UDim2.fromScale(n33, 1) }, 0.16)
											end

											if not arg6 and arg2.Callback then
												task.spawn(arg2.Callback, value)
											end
										end,
										Get = function(arg4)
											return arg4.Value
										end,
									}

									local flag18 = v83[142]

									local function fn29(arg4)
										local x = Frame.AbsoluteSize.X
										if x < 1 then
											return
										end
										tbl19:Set(min + (max - min) * math.clamp((arg4.X - Frame.AbsolutePosition.X) / x, v83[87], 1), false, true)
									end

									tbl18.Util.Connect(TextButton.InputBegan, function(arg4)
										if arg4.UserInputType ~= Enum.UserInputType.MouseButton1 and arg4.UserInputType ~= Enum.UserInputType.Touch then
											return
										end
										flag18 = true
										tbl18.Window.BlockDrag = true
										tbl18.Util.Tween(Frame3, { Size = UDim2.fromOffset(v83[69], 12) }, v83[91])
										fn29(arg4.Position)
									end)

									tbl18.Util.Connect(tbl18.Services.UserInput.InputChanged, function(arg4)
										if not flag18 then
											return
										end

										if arg4.UserInputType == Enum.UserInputType.MouseMovement or arg4.UserInputType == Enum.UserInputType.Touch then
											fn29(arg4.Position)
										end
									end)

									tbl18.Util.Connect(tbl18.Services.UserInput.InputEnded, function(arg4)
										if not flag18 then
											return
										end

										if arg4.UserInputType ~= Enum.UserInputType.MouseButton1 and arg4.UserInputType ~= Enum.UserInputType.Touch then
											return
										end
										flag18 = v83[142]
										tbl18.Window.BlockDrag = v83[142]
										tbl18.Util.Tween(Frame3, { Size = UDim2.fromOffset(v83[140], 9) }, v83[111])
										tbl18.Config.Queue()
									end)

									tbl18.Util.Hover(TextButton, function()
										tbl18.Util.Tween(v88, { TextColor3 = palette.Text }, 0.16)
									end, function()
										if not flag18 then
											tbl18.Util.Tween(v88, { TextColor3 = palette.SubText }, 0.2)
										end
									end)

									tbl19:Set(n32, v83[189], true)

									if arg2.Callback then
										task.spawn(arg2.Callback, n32)
									end

									return tbl19
								end

								tbl18.Components.Dropdown = function(arg, arg2, arg3)
									local flag18 = arg2.Multi == v83[189]
									local options = arg2.Options or {}
									local maxVisible = arg2.MaxVisible or v83[102]
									local tbl19 = flag18 and {} or nil

									if flag18 then
										local v86 = ipairs
										local default = arg2.Default or {}

										for _, v87 in v86(default) do
											tbl19[v87] = true
										end
									else
										tbl19 = arg2.Default
									end

									if tbl18.State.Saved[arg2.Flag] ~= nil then
										tbl19 = tbl18.State.Saved[arg2.Flag]
									end

									local Frame = tbl18.Util.New("Frame", {
										Name = "Option",
										Size = UDim2.new(1, v83[87], 0, 0),
										AutomaticSize = Enum.AutomaticSize.Y,
										BackgroundTransparency = 1,
										LayoutOrder = arg3,
										Parent = arg,
									}, { tbl18.Util.List(v83[45]) })

									local v86 = tbl18.Util.New(v83[37], { Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = 1, Parent = Frame }, { tbl18.Util.FlexRow(6) })

									tbl18.Util.Label({
										Text = arg2.Title or "Dropdown",
										TextSize = v83[69],
										ColorKey = v83[70],
										TextTruncate = Enum.TextTruncate.AtEnd,
										Size = UDim2.new(0, v83[87], 1, v83[87]),
										LayoutOrder = 1,
										Parent = v86,
									}, { tbl18.Util.Grow() })

									local v87 = nil

									if arg2.Notify and arg2.Flag then
										v87 = tbl18.Binds.AttachBell({ Parent = v86, LayoutOrder = 2, Flag = arg2.Flag })
									end

									local new = tbl18.Util.New

									local tbl20 = {
										Text = "",
										AutoButtonColor = false,
										Size = UDim2.new(v83[15], 0, v83[87], tbl18.Layout.FieldH),
										BackgroundTransparency = 0.35,
										BorderSizePixel = 0,
										Parent = Frame,
									}

									local tbl21 = {}
									local v88 = tbl18.Util.Corner(v83[36])
									local Border = tbl18.Util.Stroke("Border", 1, 0.25)
									tbl21[1] = v88
									tbl21[2] = Border

									do
										local values = table.pack(tbl18.Util.Padding(v83[87], 0, 10, 10))
										table.move(values, 1, values.n, 3, tbl21)
									end

									local TextButton = new("TextButton", tbl20, tbl21)
									tbl18.Theme.Bind(TextButton, "BackgroundColor3", "SurfaceAlt")
									local uiStroke = TextButton:FindFirstChildOfClass("UIStroke")

									local v89 = tbl18.Util.Label({
										Text = v83[99],
										TextSize = v83[69],
										ColorKey = "Text",
										TextTruncate = Enum.TextTruncate.AtEnd,
										Size = UDim2.new(1, -v83[88], 1, 0),
										Parent = TextButton,
									})

									local v90 = tbl18.Util.Image({
										Image = "chevronDown",
										Size = UDim2.fromOffset(12, 12),
										AnchorPoint = Vector2.new(1, 0.5),
										Position = UDim2.new(v83[15], 0, v83[108], v83[87]),
										ColorKey = "Muted",
										Parent = TextButton,
									})

									local Frame2 = tbl18.Util.New("Frame", {
										Size = UDim2.new(1, 0, 0, 0),
										BackgroundTransparency = 1,
										ClipsDescendants = v83[189],
										Parent = Frame,
									})

									local new2 = tbl18.Util.New
									local v91 = v83[149]

									local tbl22 = {
										Size = UDim2.fromScale(v83[15], 1),
										BackgroundTransparency = 0.35,
										BorderSizePixel = 0,
										ScrollBarThickness = 2,
										ScrollBarImageTransparency = 0.4,
										AutomaticCanvasSize = Enum.AutomaticSize.Y,
										CanvasSize = UDim2.new(),
										ScrollingDirection = Enum.ScrollingDirection.Y,
										Parent = Frame2,
									}

									local tbl23 = {}
									local v92 = tbl18.Util.Corner(v83[36])
									local Border2 = tbl18.Util.Stroke("Border", 1, 0.25)
									local v93 = tbl18.Util.Padding(4, 4, 4, 4)
									local list = tbl18.Util.List
									tbl23[1] = v92
									tbl23[2] = Border2
									tbl23[3] = v93

									do
										local values = table.pack(list(2))
										table.move(values, 1, values.n, 4, tbl23)
									end

									local v94 = new2(v91, tbl22, tbl23)
									tbl18.Theme.Bind(v94, "BackgroundColor3", "SurfaceAlt")
									tbl18.Theme.Bind(v94, "ScrollBarImageColor3", "Muted")
									local tbl24 = {}
									local flag19 = false
									local tbl25 = { Type = v83[50], Value = tbl19, Options = options, Root = Frame }

									local function fn29(arg4)
										if flag18 then
											return tbl25.Value[arg4] == true
										end
										return tbl25.Value == arg4
									end

									local function fn30()
										if flag18 then
											local tbl26 = {}

											for _, option in ipairs(tbl25.Options) do
												if tbl25.Value[option] then
													table.insert(tbl26, option)
												end
											end

											v89.Text = #tbl26 > 0 and table.concat(tbl26, ", ") or "None"
											v89.TextColor3 = #tbl26 > v83[87] and palette.Text or palette.Muted
										else
											v89.Text = tbl25.Value and tostring(tbl25.Value) or "None"
											v89.TextColor3 = tbl25.Value and palette.Text or palette.Muted
										end

										for k, v95 in pairs(tbl24) do
											local v96 = fn29(k)
											tbl18.Util.Tween(v95.text, { TextColor3 = v96 and palette.Text or palette.SubText }, v83[129])
											tbl18.Util.Tween(v95.frame, { BackgroundTransparency = v96 and 0.86 or 1 }, v83[129])
											tbl18.Util.Tween(v95.tick, { ImageTransparency = v96 and 0 or 1 }, 0.16)
										end
									end

									local function fn31()
										local n32 = math.min(#tbl25.Options, maxVisible)
										if n32 == 0 then
											return v83[170]
										end
										return n32 * tbl18.Layout.OptionH + (n32 - 1) * 2 + 8
									end

									local function fn32(arg4)
										flag19 = arg4
										tbl18.Util.Tween(Frame2, { Size = UDim2.new(1, v83[87], 0, flag19 and fn31() or 0) }, 0.28)
										tbl18.Util.Tween(v90, { Rotation = flag19 and v83[13] or 0 }, v83[103])
										tbl18.Util.Tween(uiStroke, { Color = flag19 and palette.Accent or palette.Border, Transparency = flag19 and 0.4 or 0.25 }, 0.22)
									end

									local function fn33(arg4)
										if flag18 then
											local v95 = table.clone(tbl25.Value)
											v95[arg4] = not v95[arg4] or nil
											tbl25:Set(v95)
										else
											tbl25:Set(arg4)
											fn32(false)
										end
									end

									tbl25.Set = function(arg4, value, arg5)
										if flag18 then
											local value2 = {}

											if type(value) == "table" then
												if #value > 0 then
													for _, v95 in ipairs(value) do
														value2[v95] = true
													end
												else
													for k, v95 in pairs(value) do
														if v95 then
															value2[k] = v83[189]
														end
													end
												end
											end

											arg4.Value = value2
										else
											arg4.Value = value
										end

										tbl18.Config.SetFlag(arg2.Flag, arg4.Value)
										fn30()

										if not arg5 then
											if arg2.Callback then
												task.spawn(arg2.Callback, arg4.Value)
											end

											if v87 then
												v87.Announce(arg2.Title or v83[50], v89.Text)
											end
										end
									end

									tbl25.Get = function(arg4)
										return arg4.Value
									end

									tbl25.SetOptions = function(arg4, options2)
										arg4.Options = options2 or {}

										for _, v95 in pairs(tbl24) do
											v95.frame:Destroy()
										end

										tbl24 = {}

										for i, option in ipairs(arg4.Options) do
											local new3 = tbl18.Util.New

											local tbl26 = {
												Text = "",
												AutoButtonColor = false,
												Size = UDim2.new(v83[15], 0, 0, tbl18.Layout.OptionH),
												BackgroundTransparency = v83[15],
												BorderSizePixel = v83[87],
												LayoutOrder = i,
												Parent = v94,
											}

											local tbl27 = {}
											local v95 = tbl18.Util.Corner(5)
											local flexRow = tbl18.Util.FlexRow
											local v96 = tbl18.Util.Padding(0, 0, 8, 8)
											tbl27[1] = v95
											tbl27[2] = v96

											do
												local values = table.pack(flexRow(6))
												table.move(values, 1, values.n, 3, tbl27)
											end

											local TextButton2 = new3("TextButton", tbl26, tbl27)
											tbl18.Theme.Bind(TextButton2, "BackgroundColor3", "Accent")

											local v97 = tbl18.Util.Label({
												Text = tostring(option),
												TextSize = 11.5,
												ColorKey = "SubText",
												TextTruncate = Enum.TextTruncate.AtEnd,
												Size = UDim2.new(0, 0, v83[15], 0),
												LayoutOrder = 1,
												Parent = TextButton2,
											}, { tbl18.Util.Grow() })

											if arg2.Keybind and arg2.Flag then
												tbl18.Binds.AttachKeybind({
													Parent = TextButton2,
													Host = TextButton2,
													LayoutOrder = 2,
													Flag = arg2.Flag .. v83[66] .. tostring(option),
													Label = (arg2.Title or "Dropdown") .. ": " .. tostring(option),
													MaxWidth = 50,
													OnPress = function()
														fn33(option)
													end,
												})
											end

											tbl24[option] = {
												frame = TextButton2,
												text = v97,
												tick = tbl18.Util.Image({
													Image = v83[169],
													Size = UDim2.fromOffset(v83[38], 11),
													ImageTransparency = 1,
													ColorKey = "Accent",
													LayoutOrder = v83[89],
													Parent = TextButton2,
												}),
											}

											tbl18.Util.Connect(TextButton2.MouseButton1Click, function()
												fn33(option)
											end)

											tbl18.Util.Hover(TextButton2, function()
												if not fn29(option) then
													tbl18.Util.Tween(TextButton2, { BackgroundTransparency = 0.93 }, v83[64])
												end
											end, function()
												if not fn29(option) then
													tbl18.Util.Tween(TextButton2, { BackgroundTransparency = 1 }, 0.18)
												end
											end)
										end

										if flag18 then
											local value = {}
											local v95 = pairs
											local tbl26 = arg4.Value or {}

											for k, v96 in v95(tbl26) do
												v96 = v96 and tbl24[k]

												if v96 then
													value[k] = v83[189]
												end
											end

											arg4.Value = value
										elseif arg4.Value ~= nil and not tbl24[arg4.Value] then
											arg4.Value = nil
										end

										fn30()

										if flag19 then
											fn32(true)
										end
									end

									tbl18.Util.Connect(TextButton.MouseButton1Click, function()
										fn32(not flag19)
									end)

									tbl18.Util.Hover(TextButton, function()
										if not flag19 then
											tbl18.Util.Tween(uiStroke, { Transparency = 0.05 }, 0.16)
										end
									end, function()
										if not flag19 then
											tbl18.Util.Tween(uiStroke, { Transparency = 0.25 }, 0.2)
										end
									end)

									tbl25:SetOptions(options)
									tbl25:Set(tbl25.Value, v83[189])

									if arg2.Callback then
										task.spawn(arg2.Callback, tbl25.Value)
									end

									return tbl25
								end

								tbl18.Components.Keybind = function(arg, arg2, arg3)
									local default = arg2.Default

									if tbl18.State.Saved[arg2.Flag] ~= nil then
										default = tbl18.State.Saved[arg2.Flag]
									end

									local v86 = tbl18.Util.ToKeyCode(default)
									local v87 = tbl18.Components.OptionRoot(arg, tbl18.Layout.Row, arg3)

									tbl18.Util.Label({
										Text = arg2.Title or "Keybind",
										TextSize = 12,
										ColorKey = "SubText",
										Size = UDim2.new(v83[15], -70, 1, v83[87]),
										Parent = v87,
									})

									local stroke = tbl18.Util.Stroke

									local v88 = tbl18.Util.New(v83[29], {
										Text = "",
										AutoButtonColor = false,
										AnchorPoint = Vector2.new(1, 0.5),
										Position = UDim2.new(1, v83[87], 0.5, 0),
										Size = UDim2.fromOffset(v83[182], 20),
										BackgroundTransparency = 0.4,
										BorderSizePixel = 0,
										Parent = v87,
									}, { tbl18.Util.Corner(6), stroke("Border", 1, 0.25) })

									tbl18.Theme.Bind(v88, v83[73], "SurfaceAlt")

									local v89 = tbl18.Util.Label({
										Text = tbl18.Util.KeyName(v86),
										TextSize = 11,
										ColorKey = v86 and "Text" or "Muted",
										TextXAlignment = Enum.TextXAlignment.Center,
										Size = UDim2.fromScale(1, 1),
										Parent = v88,
									})

									local flag18 = false
									local tbl19 = { Type = "Keybind", Value = v86, Root = v87 }
									local tbl20 = { Flag = arg2.Flag, Label = arg2.Title or v83[160], Key = v86 }
									table.insert(tbl17.Binds, tbl20)

									tbl19.Set = function(arg4, value, arg5)
										arg4.Value = value
										v89.Text = tbl18.Util.KeyName(value)
										v89.TextColor3 = value and palette.Text or palette.Muted
										tbl18.Config.SetFlag(arg2.Flag, value)
										tbl20.Key = value
										tbl18.Binds.Changed()

										if not arg5 and arg2.Changed then
											task.spawn(arg2.Changed, value)
										end
									end

									tbl19.Get = function(arg4)
										return arg4.Value
									end

									tbl18.Util.Connect(v88.MouseButton1Click, function()
										if flag18 then
											return
										end
										flag18 = true
										tbl18.Binds.Binding = true
										v89.Text = "..."
										v89.TextColor3 = palette.Accent
									end)

									tbl18.Util.Connect(tbl18.Services.UserInput.InputBegan, function(arg4, arg5)
										if flag18 then
											if arg4.UserInputType == Enum.UserInputType.Keyboard then
												flag18 = v83[142]
												tbl18.Binds.Binding = v83[142]

												if arg4.KeyCode == Enum.KeyCode.Escape or arg4.KeyCode == Enum.KeyCode.Backspace then
													tbl19:Set(nil)
												else
													tbl19:Set(arg4.KeyCode)
												end
											end

											return
										end

										if arg5 or not tbl19.Value then
											return
										end

										if arg4.KeyCode == tbl19.Value and arg2.Callback then
											task.spawn(arg2.Callback)
										end
									end)

									tbl18.Util.Hover(v88, function()
										if not flag18 then
											tbl18.Util.Tween(v88, { BackgroundTransparency = 0.15 }, 0.16)
										end
									end, function()
										tbl18.Util.Tween(v88, { BackgroundTransparency = v83[106] }, 0.2)
									end)

									tbl19:Set(v86, true)
									return tbl19
								end

								tbl18.Components.Input = function(arg, arg2, arg3)
									local default = arg2.Default or ""
									local v86 = v83[32]

									if type(tbl18.State.Saved[arg2.Flag]) == v86 then
										default = tbl18.State.Saved[arg2.Flag]
									end

									local Frame = tbl18.Util.New("Frame", {
										Name = "Option",
										Size = UDim2.new(v83[15], 0, v83[87], 0),
										AutomaticSize = Enum.AutomaticSize.Y,
										BackgroundTransparency = 1,
										LayoutOrder = arg3,
										Parent = arg,
									}, { tbl18.Util.List(v83[45]) })

									if arg2.Title then
										tbl18.Util.Label({
											Text = arg2.Title,
											TextSize = 12,
											ColorKey = "SubText",
											Size = UDim2.new(1, v83[87], v83[87], v83[166]),
											Parent = Frame,
										})
									end

									local new = tbl18.Util.New

									local tbl19 = {
										Size = UDim2.new(1, 0, 0, tbl18.Layout.FieldH - v83[112]),
										BackgroundTransparency = 0.35,
										BorderSizePixel = v83[87],
										ClipsDescendants = true,
										Parent = Frame,
									}

									local tbl20 = {}
									local v87 = tbl18.Util.Corner(7)
									local padding = tbl18.Util.Padding
									local v88 = v83[87]
									local v89 = v83[22]
									local Border = tbl18.Util.Stroke("Border", 1, 0.25)
									tbl20[1] = v87
									tbl20[2] = Border

									do
										local values = table.pack(padding(0, v88, v89, 10))
										table.move(values, 1, values.n, 3, tbl20)
									end

									local Frame2 = new("Frame", tbl19, tbl20)
									tbl18.Theme.Bind(Frame2, "BackgroundColor3", v83[115])
									local uiStroke = Frame2:FindFirstChildOfClass("UIStroke")

									local TextBox = tbl18.Util.New("TextBox", {
										Text = default,
										PlaceholderText = arg2.Placeholder or "",
										ClearTextOnFocus = v83[142],
										BackgroundTransparency = 1,
										ClipsDescendants = v83[189],
										TextWrapped = false,
										TextTruncate = Enum.TextTruncate.AtEnd,
										FontFace = tbl18.Util.Font(tbl18.Layout.Weight.Medium),
										TextSize = v83[69],
										TextXAlignment = Enum.TextXAlignment.Left,
										Size = UDim2.new(v83[15], v83[87], 1, 0),
										Parent = Frame2,
									})

									tbl18.Theme.Bind(TextBox, "TextColor3", "Text")
									tbl18.Theme.Bind(TextBox, "PlaceholderColor3", "Muted")

									local tbl21 = {
										Type = v83[76],
										Value = default,
										Root = Frame,
										Set = function(arg4, arg5, arg6)
											arg4.Value = tostring(arg5 or "")
											TextBox.Text = arg4.Value
											tbl18.Config.SetFlag(arg2.Flag, arg4.Value)

											if not arg6 and arg2.Callback then
												task.spawn(arg2.Callback, arg4.Value)
											end
										end,
										Get = function(arg4)
											return arg4.Value
										end,
									}

									tbl18.Util.Connect(TextBox.Focused, function()
										tbl18.Util.Tween(uiStroke, { Color = palette.Accent, Transparency = v83[59] }, v83[91])
									end)

									tbl18.Util.Connect(TextBox.FocusLost, function(arg4)
										tbl18.Util.Tween(uiStroke, { Color = palette.Border, Transparency = 0.25 }, v83[51])

										if arg2.ClearOnEnter and arg4 then
											local text = TextBox.Text
											tbl21:Set("", true)

											if arg2.Callback then
												task.spawn(arg2.Callback, text)
											end
										else
											tbl21:Set(TextBox.Text)
										end
									end)

									tbl21:Set(default, true)
									return tbl21
								end

								tbl18.Components.Button = function(arg, arg2, arg3)
									local v86 = tbl18.Components.OptionRoot(arg, tbl18.Layout.FieldH, arg3)
									local new = tbl18.Util.New
									local v87 = v83[29]

									local tbl19 = {
										Text = "",
										AutoButtonColor = false,
										Size = UDim2.fromScale(1, 1),
										BackgroundTransparency = 0.35,
										BorderSizePixel = 0,
										Parent = v86,
									}

									local tbl20 = {}
									local v88 = tbl18.Util.Corner(v83[36])
									local Border = tbl18.Util.Stroke("Border", v83[15], 0.25)
									local new2 = tbl18.Util.New
									local v89 = v83[104]
									tbl20[1] = v88
									tbl20[2] = Border

									do
										local values = table.pack(new2(v89, { Scale = 1 }))
										table.move(values, 1, values.n, 3, tbl20)
									end

									local v90 = new(v87, tbl19, tbl20)
									tbl18.Theme.Bind(v90, v83[73], "SurfaceAlt")

									local v91 = tbl18.Util.Label({
										Text = arg2.Title or "Button",
										TextSize = 12,
										Weight = tbl18.Layout.Weight.SemiBold,
										ColorKey = "SubText",
										TextXAlignment = Enum.TextXAlignment.Center,
										Size = UDim2.fromScale(1, 1),
										Parent = v90,
									})

									tbl18.Util.Hover(v90, function()
										tbl18.Util.Tween(v90, { BackgroundTransparency = 0.1 }, 0.16)
										tbl18.Util.Tween(v91, { TextColor3 = palette.Text }, 0.16)
									end, function()
										tbl18.Util.Tween(v90, { BackgroundTransparency = 0.35 }, v83[51])
										tbl18.Util.Tween(v91, { TextColor3 = palette.SubText }, 0.2)
									end)

									tbl18.Util.Press(v90, v90:FindFirstChildOfClass("UIScale"))

									tbl18.Util.Connect(v90.MouseButton1Click, function()
										if arg2.Callback then
											task.spawn(arg2.Callback)
										end
									end)

									return {
										Type = "Button",
										Root = v86,
										SetTitle = function(arg4, text)
											v91.Text = text
										end,
									}
								end

								tbl18.Components.Colorpicker = function(arg, arg2, arg3)
									local default = arg2.Default or Color3.fromRGB(255, v83[77], 255)
									local v86 = v83[82]

									if typeof(tbl18.State.Saved[arg2.Flag]) == v86 then
										default = tbl18.State.Saved[arg2.Flag]
									end

									local n32, n33, n34 = default:ToHSV()

									local Frame = tbl18.Util.New("Frame", {
										Name = "Option",
										Size = UDim2.new(v83[15], 0, v83[87], v83[87]),
										AutomaticSize = Enum.AutomaticSize.Y,
										BackgroundTransparency = 1,
										LayoutOrder = arg3,
										Parent = arg,
									}, { tbl18.Util.List(6) })

									local v87 = tbl18.Util.New(v83[29], {
										Text = "",
										AutoButtonColor = v83[142],
										Size = UDim2.new(v83[15], 0, v83[87], tbl18.Layout.Row),
										BackgroundTransparency = 1,
										Parent = Frame,
									})

									local v88 = tbl18.Util.Label({
										Text = arg2.Title or v83[176],
										TextSize = 12,
										ColorKey = "SubText",
										Size = UDim2.new(1, -v83[141], 1, 0),
										Parent = v87,
									})

									local stroke = tbl18.Util.Stroke
									local v89 = v83[58]
									local v90 = v83[144]

									local Frame2 = tbl18.Util.New("Frame", {
										AnchorPoint = Vector2.new(1, v83[108]),
										Position = UDim2.new(1, 0, 0.5, 0),
										Size = UDim2.fromOffset(34, 18),
										BackgroundColor3 = default,
										BorderSizePixel = 0,
										Parent = v87,
									}, { tbl18.Util.Corner(6), stroke(v89, 1, v90) })

									local Frame3 = tbl18.Util.New("Frame", {
										Size = UDim2.new(1, v83[87], v83[87], 0),
										BackgroundTransparency = 1,
										ClipsDescendants = true,
										Parent = Frame,
									})

									local new = tbl18.Util.New

									local tbl19 = {
										Size = UDim2.new(v83[15], v83[87], v83[87], v83[136]),
										BackgroundTransparency = v83[59],
										BorderSizePixel = 0,
										Parent = Frame3,
									}

									local tbl20 = {}
									local v91 = tbl18.Util.Corner(8)
									local Border = tbl18.Util.Stroke("Border", 1, 0.25)
									local v92 = tbl18.Util.Padding(v83[180], 8, 8, 8)
									tbl20[1] = v91
									tbl20[2] = Border
									tbl20[3] = v92

									do
										local values = table.pack(tbl18.Util.List(7))
										table.move(values, 1, values.n, 4, tbl20)
									end

									local Frame4 = new("Frame", tbl19, tbl20)
									tbl18.Theme.Bind(Frame4, "BackgroundColor3", "SurfaceAlt")
									local new2 = tbl18.Util.New

									local tbl21 = {
										Size = UDim2.new(v83[15], 0, 0, 78),
										BackgroundColor3 = Color3.fromHSV(n32, 1, 1),
										BorderSizePixel = 0,
										Parent = Frame4,
									}

									local tbl22 = {}
									local v93 = tbl18.Util.Corner(6)
									local new3 = tbl18.Util.New
									local v94 = v83[37]

									local tbl23 = {
										Size = UDim2.fromScale(v83[15], v83[15]),
										BackgroundColor3 = Color3.new(1, v83[15], 1),
										BorderSizePixel = v83[87],
									}

									local tbl24 = {}
									local v95 = tbl18.Util.Corner(v83[102])
									local new4 = tbl18.Util.New
									local tbl25 = { Color = ColorSequence.new(Color3.new(1, 1, 1)), Transparency = NumberSequence.new(v83[87], 1) }
									tbl24[1] = v95

									do
										local values = table.pack(new4("UIGradient", tbl25))
										table.move(values, 1, values.n, 2, tbl24)
									end

									local v96 = new3(v94, tbl23, tbl24)
									local new5 = tbl18.Util.New

									local tbl26 = {
										Size = UDim2.fromScale(1, v83[15]),
										BackgroundColor3 = Color3.new(0, 0, 0),
										BorderSizePixel = v83[87],
										ZIndex = 2,
									}

									local tbl27 = {}
									local v97 = tbl18.Util.Corner(v83[102])
									local new6 = tbl18.Util.New
									local tbl28 = { Rotation = 90, Transparency = NumberSequence.new(1, 0) }
									tbl27[1] = v97

									do
										local values = table.pack(new6("UIGradient", tbl28))
										table.move(values, 1, values.n, 2, tbl27)
									end

									tbl22[1] = v93
									tbl22[2] = v96

									do
										local values = table.pack(new5("Frame", tbl26, tbl27))
										table.move(values, 1, values.n, 3, tbl22)
									end

									local Frame5 = new2("Frame", tbl21, tbl22)
									local new7 = tbl18.Util.New

									local tbl29 = {
										AnchorPoint = Vector2.new(v83[108], 0.5),
										Size = UDim2.fromOffset(v83[140], v83[140]),
										BackgroundTransparency = 1,
										ZIndex = 4,
										Parent = Frame5,
									}

									local tbl30 = {}
									local v98 = tbl18.Util.Corner(UDim.new(1, 0))
									local new8 = tbl18.Util.New
									local tbl31 = { Color = Color3.new(v83[15], v83[15], 1), Thickness = 2 }
									tbl30[1] = v98

									do
										local values = table.pack(new8("UIStroke", tbl31))
										table.move(values, 1, values.n, 2, tbl30)
									end

									local Frame6 = new7("Frame", tbl29, tbl30)
									local new9 = tbl18.Util.New
									local tbl32 = { Size = UDim2.new(v83[15], 0, 0, 10), BorderSizePixel = 0, Parent = Frame4 }
									local tbl33 = {}
									local v99 = tbl18.Util.Corner(UDim.new(1, 0))
									local new10 = tbl18.Util.New
									local v100 = v83[192]
									local tbl34 = {}
									local colorSequence = ColorSequence.new
									local tbl35 = {}
									local v101 = ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, v83[87]))
									local v102 = ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, v83[77], 0))
									local v103 = ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, v83[87]))
									local v104 = ColorSequenceKeypoint.new(v83[108], Color3.fromRGB(v83[87], 255, 255))
									local v105 = ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 0, 255))
									local v106 = ColorSequenceKeypoint.new(v83[146], Color3.fromRGB(v83[77], 0, 255))
									local new11 = ColorSequenceKeypoint.new
									local color = Color3.fromRGB
									local v107 = v83[87]
									tbl35[1] = v101
									tbl35[2] = v102
									tbl35[3] = v103
									tbl35[4] = v104
									tbl35[5] = v105
									tbl35[6] = v106

									do
										local values = table.pack(new11(1, color(255, v107, 0)))
										table.move(values, 1, values.n, 7, tbl35)
									end

									tbl34.Color = colorSequence(tbl35)
									tbl33[1] = v99

									do
										local values = table.pack(new10(v100, tbl34))
										table.move(values, 1, values.n, 2, tbl33)
									end

									local Frame7 = new9("Frame", tbl32, tbl33)

									local Frame8 = tbl18.Util.New("Frame", {
										AnchorPoint = Vector2.new(0.5, 0.5),
										Position = UDim2.new(n32, 0, v83[108], 0),
										Size = UDim2.fromOffset(6, 14),
										BackgroundColor3 = Color3.new(1, 1, v83[15]),
										BorderSizePixel = v83[87],
										ZIndex = 2,
										Parent = Frame7,
									}, { tbl18.Util.Corner(3) })

									local stroke2 = tbl18.Util.Stroke

									local TextBox = tbl18.Util.New("TextBox", {
										Text = "#FFFFFF",
										ClearTextOnFocus = v83[142],
										BackgroundTransparency = 0.5,
										FontFace = tbl18.Util.Font(tbl18.Layout.Weight.Medium),
										TextSize = 11,
										TextXAlignment = Enum.TextXAlignment.Center,
										Size = UDim2.new(1, 0, 0, v83[181]),
										BorderSizePixel = v83[87],
										Parent = Frame4,
									}, { tbl18.Util.Corner(6), stroke2("BorderSoft", 1, 0.3) })

									tbl18.Theme.Bind(TextBox, v83[73], "Surface")
									tbl18.Theme.Bind(TextBox, "TextColor3", v83[70])

									local TextButton = tbl18.Util.New("TextButton", {
										Text = "",
										AutoButtonColor = false,
										Size = UDim2.new(1, 0, v83[87], 20),
										BackgroundTransparency = 1,
										Parent = Frame4,
									})

									local v108 = tbl18.Util.Label({
										Text = "Rainbow",
										TextSize = v83[38],
										ColorKey = "SubText",
										Size = UDim2.new(1, -34, v83[15], 0),
										Parent = TextButton,
									})

									local stroke3 = tbl18.Util.Stroke
									local v109 = v83[58]
									local v110 = v83[15]

									local v111 = tbl18.Util.New(v83[37], {
										AnchorPoint = Vector2.new(1, v83[108]),
										Position = UDim2.new(v83[15], 0, 0.5, 0),
										Size = UDim2.fromOffset(28, 15),
										BackgroundTransparency = v83[108],
										BorderSizePixel = 0,
										Parent = TextButton,
									}, { tbl18.Util.Corner(UDim.new(1, 0)), stroke3(v109, v110, 0.2) })

									tbl18.Theme.Bind(v111, "BackgroundColor3", v83[92])

									local Frame9 = tbl18.Util.New("Frame", {
										AnchorPoint = Vector2.new(0, 0.5),
										Position = UDim2.new(v83[87], 3, v83[108], v83[87]),
										Size = UDim2.fromOffset(9, 9),
										BorderSizePixel = 0,
										Parent = v111,
									}, { tbl18.Util.Corner(UDim.new(v83[15], v83[87])) })

									tbl18.Theme.Bind(Frame9, "BackgroundColor3", "Muted")
									local v112 = v83[142]
									local flag18 = false
									local v113 = nil
									local tbl36 = { Type = "Colorpicker", Value = default, Root = Frame }

									local function fn29(arg4, arg5)
										local color2 = Color3.fromHSV(n32, n33, n34)
										tbl36.Value = color2
										Frame2.BackgroundColor3 = color2
										Frame5.BackgroundColor3 = Color3.fromHSV(n32, v83[15], v83[15])
										Frame6.Position = UDim2.fromScale(n33, 1 - n34)
										Frame8.Position = UDim2.new(n32, v83[87], v83[108], v83[87])
										local floor2 = math.floor
										local n35 = color2.B * 255 + 0.5
										TextBox.Text = string.format("#%02X%02X%02X", math.floor(color2.R * 255 + 0.5), math.floor(color2.G * 255 + 0.5), floor2(n35))

										if arg2.Flag then
											tbl17.Flags[arg2.Flag] = color2

											if not arg5 then
												tbl18.Config.Queue()
											end
										end

										if not arg4 and arg2.Callback then
											task.spawn(arg2.Callback, color2)
										end
									end

									tbl36.SetRainbow = function(arg4, arg5)
										local flag19 = arg5 == true
										if flag19 == flag18 then
											return
										end
										flag18 = flag19
										tbl18.Config.SetFlag((arg2.Flag or "") .. "__rainbow", flag19)

										tbl18.Util.Tween(v111, {
											BackgroundColor3 = flag19 and palette.Accent or palette.Surface,
											BackgroundTransparency = flag19 and 0.06 or v83[108],
										}, 0.24)

										tbl18.Util.Tween(Frame9, {
											Position = flag19 and UDim2.new(1, -v83[69], 0.5, 0) or UDim2.new(0, 3, 0.5, 0),
											BackgroundColor3 = flag19 and palette.Background or palette.Muted,
										}, v83[196])

										tbl18.Util.Tween(v108, { TextColor3 = flag19 and palette.Text or palette.SubText }, 0.24)

										if v113 then
											v113:Disconnect()
											v113 = nil
										end

										if flag19 then
											n33 = 1
											n34 = 1

											v113 = tbl18.Util.Connect(tbl18.Services.Run.RenderStepped, function(arg6)
												n32 = (n32 + arg6 * (arg2.RainbowSpeed or 0.15)) % v83[15]
												fn29(false, true)
											end)
										else
											tbl18.Config.Queue()
										end
									end

									tbl36.Set = function(arg4, arg5, arg6)
										if typeof(arg5) ~= "Color3" then
											return
										end
										arg4:SetRainbow(false)
										local v114, v115, v116 = arg5:ToHSV()
										n32 = v114
										n33 = v115
										n34 = v116
										fn29(arg6)
									end

									tbl36.Get = function(arg4)
										return arg4.Value
									end

									tbl18.Util.Connect(TextButton.MouseButton1Click, function()
										tbl36:SetRainbow(not flag18)
									end)

									local function fn30(arg4)
										v112 = arg4
										tbl18.Util.Tween(Frame3, { Size = UDim2.new(1, v83[87], 0, v112 and 167 or v83[87]) }, 0.3)
									end

									tbl18.Util.Connect(v87.MouseButton1Click, function()
										fn30(not v112)
									end)

									tbl18.Util.Hover(v87, function()
										tbl18.Util.Tween(v88, { TextColor3 = palette.Text }, 0.16)
									end, function()
										tbl18.Util.Tween(v88, { TextColor3 = palette.SubText }, 0.2)
									end)

									local function fn31(arg4, arg5)
										local flag19 = false

										tbl18.Util.Connect(arg4.InputBegan, function(arg6)
											if arg6.UserInputType ~= Enum.UserInputType.MouseButton1 and arg6.UserInputType ~= Enum.UserInputType.Touch then
												return
											end
											flag19 = true
											tbl18.Window.BlockDrag = true
											arg5(arg6.Position)
										end)

										tbl18.Util.Connect(tbl18.Services.UserInput.InputChanged, function(arg6)
											if not flag19 then
												return
											end

											if arg6.UserInputType == Enum.UserInputType.MouseMovement or arg6.UserInputType == Enum.UserInputType.Touch then
												arg5(arg6.Position)
											end
										end)

										tbl18.Util.Connect(tbl18.Services.UserInput.InputEnded, function(arg6)
											if not flag19 then
												return
											end

											if arg6.UserInputType ~= Enum.UserInputType.MouseButton1 and arg6.UserInputType ~= Enum.UserInputType.Touch then
												return
											end
											flag19 = v83[142]
											tbl18.Window.BlockDrag = false
											tbl18.Config.Queue()
										end)
									end

									fn31(Frame5, function(arg4)
										tbl36:SetRainbow(false)
										local absoluteSize = Frame5.AbsoluteSize
										local absolutePosition = Frame5.AbsolutePosition
										n33 = math.clamp((arg4.X - absolutePosition.X) / math.max(absoluteSize.X, 1), 0, 1)
										local v114 = v83[87]
										n34 = 1 - math.clamp((arg4.Y - absolutePosition.Y) / math.max(absoluteSize.Y, v83[15]), v114, 1)
										fn29()
									end)

									fn31(Frame7, function(arg4)
										tbl36:SetRainbow(false)
										n32 = math.clamp((arg4.X - Frame7.AbsolutePosition.X) / math.max(Frame7.AbsoluteSize.X, 1), 0, v83[15])
										fn29()
									end)

									tbl18.Util.Connect(TextBox.FocusLost, function()
										local str8 = TextBox.Text:gsub("#", "")

										if #str8 == v83[102] and tonumber(str8, v83[124]) then
											tbl36:Set(Color3.fromHex(str8))
										else
											fn29(v83[189])
										end
									end)

									fn29(true)
									local rainbow = arg2.Rainbow

									if not rainbow then
										rainbow = tbl18.State.Saved[(arg2.Flag or "") .. "__rainbow"] == true
									end

									if rainbow then
										tbl36:SetRainbow(true)
									end

									if arg2.Callback then
										task.spawn(arg2.Callback, tbl36.Value)
									end

									return tbl36
								end

								tbl18.Components.Paragraph = function(arg, arg2, arg3)
									local Frame = tbl18.Util.New("Frame", {
										Name = "Option",
										Size = UDim2.new(1, 0, v83[87], 0),
										AutomaticSize = Enum.AutomaticSize.Y,
										BackgroundTransparency = 1,
										LayoutOrder = arg3,
										Parent = arg,
									}, { tbl18.Util.List(3) })

									local v86 = nil

									if arg2.Title then
										v86 = tbl18.Util.Label({
											Text = arg2.Title,
											TextSize = v83[69],
											Weight = tbl18.Layout.Weight.SemiBold,
											Size = UDim2.new(1, 0, v83[87], 14),
											Parent = Frame,
										})
									end

									local v87 = tbl18.Util.Label({
										Text = arg2.Text or "",
										TextSize = v83[116],
										ColorKey = "SubText",
										TextWrapped = true,
										AutomaticSize = Enum.AutomaticSize.Y,
										Size = UDim2.new(1, 0, v83[87], v83[87]),
										Parent = Frame,
									})

									return {
										Type = "Paragraph",
										Root = Frame,
										Set = function(arg4, text)
											v87.Text = text
										end,
										SetTitle = function(arg4, text)
											if v86 then
												v86.Text = text
											end
										end,
									}
								end

								tbl18.Components.Divider = function(arg, arg2, arg3)
									local v86 = tbl18.Components.OptionRoot(arg, 9, arg3)

									tbl18.Theme.Bind(tbl18.Util.New("Frame", {
										AnchorPoint = Vector2.new(v83[87], v83[108]),
										Position = UDim2.new(v83[87], v83[87], v83[108], v83[87]),
										Size = UDim2.new(1, v83[87], 0, 1),
										BackgroundTransparency = 0.4,
										BorderSizePixel = 0,
										Parent = v86,
									}), "BackgroundColor3", "Border")

									return { Type = v83[68], Root = v86 }
								end

								do
									local index = {}
									index.__index = index
									local n32 = tbl18.Env.Mobile and 36 or 30

									tbl18.Module.Create = function(tab, config)
										local obj = setmetatable({}, index)
										obj.Tab = tab
										obj.Config = config
										obj.Title = config.Title or "Module"
										obj.Flag = config.Flag
										obj.Toggleable = config.Toggleable ~= false and config.Flag ~= nil
										obj.Enabled = false
										obj.Expanded = v83[142]
										obj.Order = v83[87]
										obj.Keyword = (obj.Title .. " " .. (config.Description or "")):lower()
										local flag18 = config.Description ~= nil and config.Description ~= ""
										local flag19 = obj.Toggleable and config.Keybind ~= false and obj.Flag ~= nil and not tbl18.Env.Mobile
										local flag20 = obj.Toggleable and config.Notify == true and obj.Flag ~= nil
										local n33 = flag19 and 46 + n32 or 46
										local n34 = flag19 and 46 + n32 / 2 or v83[44]
										local flag21 = obj.Toggleable and not flag19
										local n35 = 26

										if flag21 then
											n35 = v83[17] + (flag20 and v83[44] or 0) + 25
										end

										obj.Side = (config.Side or "Left"):lower()
										obj.Column = obj.Side == v83[93] and tab.Right or tab.Left
										obj.LayoutOrder = #obj.Column:GetChildren()
										local n36 = 0.15 + 0.85 * math.clamp(tonumber(tbl17.Flags and tbl17.Flags.gui_module_transparency) or tab.Window and tonumber(tab.Window.ModuleTransparency) or 0, v83[87], 1)
										local new = tbl18.Util.New
										local v86 = v83[37]

										local tbl19 = {
											Name = "Module",
											Size = UDim2.new(1, 0, 0, 0),
											AutomaticSize = Enum.AutomaticSize.Y,
											BackgroundTransparency = n36,
											BorderSizePixel = 0,
											ClipsDescendants = true,
											LayoutOrder = obj.LayoutOrder,
											Parent = obj.Column,
										}

										local tbl20 = {}
										local v87 = tbl18.Util.Corner(v83[22])
										local list = tbl18.Util.List
										local Border = tbl18.Util.Stroke("Border", 1, 0.3)
										tbl20[1] = v87
										tbl20[2] = Border

										do
											local values = table.pack(list(0))
											table.move(values, 1, values.n, 3, tbl20)
										end

										local v88 = new(v86, tbl19, tbl20)
										tbl18.Theme.Bind(v88, "BackgroundColor3", "Surface")
										obj.Frame = v88
										obj.Stroke = v88:FindFirstChildOfClass("UIStroke")

										local TextButton = tbl18.Util.New("TextButton", {
											Name = "Header",
											Text = "",
											AutoButtonColor = false,
											Size = UDim2.new(1, v83[87], 0, n33),
											BackgroundTransparency = 1,
											Parent = v88,
										})

										obj.Header = TextButton

										local v89 = tbl18.Util.Label({
											Text = obj.Title,
											TextSize = 13,
											Weight = tbl18.Layout.Weight.SemiBold,
											TextTruncate = Enum.TextTruncate.AtEnd,
											Position = UDim2.new(0, 13, v83[87], flag18 and 10 or 0),
											Size = UDim2.new(1, -n35, v83[87], flag18 and 15 or 46),
											Parent = TextButton,
										})

										if flag18 then
											tbl18.Util.Label({
												Text = config.Description,
												TextSize = 11,
												ColorKey = v83[175],
												TextTruncate = Enum.TextTruncate.AtEnd,
												Position = UDim2.new(0, 13, 0, v83[81]),
												Size = UDim2.new(v83[15], -n35, v83[87], v83[184]),
												Parent = TextButton,
											})
										end

										local Frame = tbl18.Util.New("Frame", {
											Name = v83[132],
											Size = UDim2.new(v83[15], 0, 0, 0),
											BackgroundTransparency = 1,
											ClipsDescendants = true,
											LayoutOrder = 2,
											Parent = v88,
										})

										obj.Body = Frame

										local v90 = tbl18.Util.New(v83[37], {
											Size = UDim2.new(1, 0, 0, 0),
											AutomaticSize = Enum.AutomaticSize.Y,
											BackgroundTransparency = v83[15],
											Parent = Frame,
										}, { tbl18.Util.Padding(10, 13, 13, 13), tbl18.Util.List(9) })

										obj.Content = v90
										local uiListLayout = v90:FindFirstChildOfClass("UIListLayout")

										tbl18.Theme.Bind(tbl18.Util.New("Frame", {
											Size = UDim2.new(1, -26, 0, 1),
											Position = UDim2.new(0, 13, 0, 0),
											BackgroundTransparency = 0.5,
											BorderSizePixel = v83[87],
											Parent = Frame,
										}), "BackgroundColor3", "Border")

										local function fn29()
											local scale = tab.Window.Scale.Scale
											local rootScale = tab.Window.RootScale

											if rootScale then
												scale *= rootScale.Scale
											end

											return uiListLayout.AbsoluteContentSize.Y / math.max(scale, 0.01) + 23
										end

										obj.Resize = function(arg, arg2)
											if not obj.Expanded then
												return
											end
											local v91 = fn29()

											if arg2 == false then
												Frame.Size = UDim2.new(1, 0, 0, v91)
											else
												tbl18.Util.Tween(Frame, { Size = UDim2.new(1, 0, v83[87], v91) }, 0.3)
											end
										end

										tbl18.Util.Connect(uiListLayout:GetPropertyChangedSignal(v83[197]), function()
											obj:Resize(v83[189])
										end)

										obj.SetExpanded = function(arg, expanded, arg2)
											if #v90:GetChildren() <= 2 then
												expanded = false
											end

											obj.Expanded = expanded
											expanded = expanded and fn29() or 0

											if arg2 == false then
												Frame.Size = UDim2.new(v83[15], 0, 0, expanded)
											else
												tbl18.Util.Tween(Frame, { Size = UDim2.new(1, 0, 0, expanded) }, 0.34)
											end
										end

										local v91 = nil
										local Frame2 = nil
										local v92 = nil

										if obj.Toggleable then
											if flag19 then
												tbl18.Theme.Bind(tbl18.Util.New("Frame", {
													Position = UDim2.new(0, 13, 0, 46),
													Size = UDim2.new(1, -26, v83[87], 1),
													BackgroundTransparency = 0.6,
													BorderSizePixel = 0,
													Parent = TextButton,
												}), "BackgroundColor3", "Border")
											end

											local v93 = tbl18.Util.New(v83[37], {
												AnchorPoint = Vector2.new(1, 0.5),
												Position = UDim2.new(1, -13, 0, n34),
												Size = UDim2.fromOffset(v83[87], 20),
												AutomaticSize = Enum.AutomaticSize.X,
												BackgroundTransparency = 1,
												Parent = TextButton,
											}, { tbl18.Util.FlexRow(9) })

											if flag20 then
												v92 = tbl18.Binds.AttachBell({ Parent = v93, LayoutOrder = 1, Flag = obj.Flag, Size = v83[166] })
											end

											local new2 = tbl18.Util.New
											local v94 = v83[37]

											local tbl21 = {
												Size = UDim2.fromOffset(v83[17], 18),
												BackgroundTransparency = 0.45,
												BorderSizePixel = 0,
												LayoutOrder = 2,
												Parent = v93,
											}

											local stroke = tbl18.Util.Stroke
											local v95 = v83[58]
											local v96 = v83[51]
											v91 = new2(v94, tbl21, { tbl18.Util.Corner(UDim.new(1, v83[87])), stroke(v95, 1, v96) })
											tbl18.Theme.Bind(v91, "BackgroundColor3", "SurfaceAlt")

											Frame2 = tbl18.Util.New("Frame", {
												AnchorPoint = Vector2.new(0, 0.5),
												Position = UDim2.new(0, v83[89], 0.5, 0),
												Size = UDim2.fromOffset(12, 12),
												BorderSizePixel = 0,
												Parent = v91,
											}, { tbl18.Util.Corner(UDim.new(1, v83[87])) })

											tbl18.Theme.Bind(Frame2, "BackgroundColor3", "Muted")

											tbl18.Util.Connect(tbl18.Util.New("TextButton", {
												Text = "",
												AutoButtonColor = false,
												BackgroundTransparency = v83[15],
												AnchorPoint = Vector2.new(0.5, 0.5),
												Position = UDim2.fromScale(0.5, 0.5),
												Size = UDim2.new(1, tbl18.Env.Mobile and v83[179] or 12, v83[15], tbl18.Env.Mobile and 18 or v83[180]),
												Parent = v91,
											}).MouseButton1Click, function()
												obj:SetEnabled(not obj.Enabled)
											end)
										end

										obj.SetEnabled = function(arg, arg2, arg3, arg4)
											local enabled = arg2 == true
											obj.Enabled = enabled
											tbl18.Config.SetFlag(obj.Flag, enabled)

											if v91 then
												tbl18.Util.Tween(v91, {
													BackgroundColor3 = enabled and palette.Accent or palette.SurfaceAlt,
													BackgroundTransparency = enabled and 0.05 or v83[161],
												}, 0.26)

												tbl18.Util.Tween(Frame2, {
													Position = enabled and UDim2.new(1, -15, 0.5, 0) or UDim2.new(0, v83[89], v83[108], 0),
													BackgroundColor3 = enabled and palette.Background or palette.Muted,
												}, 0.32)
											end

											tbl18.Util.Tween(obj.Stroke, { Color = enabled and palette.Accent or palette.Border, Transparency = enabled and v83[31] or v83[196] }, 0.3)
											tbl18.Util.Tween(v89, { TextColor3 = (enabled or not obj.Toggleable) and palette.Text or palette.SubText }, 0.26)

											if obj.Toggleable then
												obj:SetExpanded(true, not arg4)
											end

											if not arg3 then
												if config.Callback then
													task.spawn(config.Callback, enabled)
												end

												if v92 then
													v92.Announce(obj.Title, enabled)
												end
											end
										end

										obj.Get = function()
											return obj.Enabled
										end

										if flag19 then
											tbl18.Binds.AttachKeybind({
												Parent = TextButton,
												Host = TextButton,
												AnchorPoint = Vector2.new(0, 0.5),
												Position = UDim2.new(0, v83[184], v83[87], n34),
												Flag = obj.Flag,
												Label = obj.Title,
												MaxWidth = 84,
												OnPress = function()
													obj:SetEnabled(not obj.Enabled)
												end,
											})
										end

										tbl18.Util.Connect(TextButton.MouseButton1Click, function()
											if not obj.Toggleable then
												return
											end
											obj:SetEnabled(not obj.Enabled)
										end)

										tbl18.Util.Hover(TextButton, function()
											if not obj.Enabled then
												tbl18.Util.Tween(obj.Stroke, { Color = palette.Muted, Transparency = 0.55 }, v83[91])
											end

											tbl18.Util.Tween(v89, { TextColor3 = palette.Text }, 0.18)
										end, function()
											if not obj.Enabled then
												tbl18.Util.Tween(obj.Stroke, { Color = palette.Border, Transparency = 0.3 }, 0.22)

												if obj.Toggleable then
													tbl18.Util.Tween(v89, { TextColor3 = palette.SubText }, 0.22)
												end
											end
										end)

										obj:SetEnabled(tbl18.State.Saved[obj.Flag] == true, true, true)

										if obj.Enabled and config.Callback then
											task.spawn(config.Callback, true)
										end

										table.insert(tab.Modules, obj)
										return obj
									end

									for k, component in pairs(components) do
										index[k] = function(arg, arg2)
											local tbl19 = arg2 or {}
											arg.Order = arg.Order + v83[15]
											local v86 = component(arg.Content, tbl19, arg.Order)

											if tbl19.Flag then
												tbl17.Options[tbl19.Flag] = v86
											end

											arg.Keyword = arg.Keyword .. " " .. (tbl19.Title or ""):lower()

											if not arg.Expanded then
												arg:SetExpanded(true, v83[142])
											end

											return v86
										end
									end

									index.Label = function(arg, arg2)
										return arg:Paragraph({ Text = type(arg2) == "table" and arg2.Text or arg2 })
									end
								end
							end
						end

						local fn29, fn30, media

						do
							local fn31, fn32, fn33, fn34, fn35, fn36

							do
								local fn37

								do
									tbl18.Page.Create = function(arg)
										local CanvasGroup = tbl18.Util.New("CanvasGroup", {
											Name = "Page",
											Size = UDim2.fromScale(1, 1),
											BackgroundTransparency = v83[15],
											GroupTransparency = 1,
											Visible = false,
											Parent = arg,
										})

										local v86 = tbl18.Util.New(v83[149], {
											Size = UDim2.fromScale(1, 1),
											BackgroundTransparency = v83[15],
											BorderSizePixel = 0,
											ScrollBarThickness = 3,
											ScrollBarImageTransparency = 0.45,
											AutomaticCanvasSize = Enum.AutomaticSize.Y,
											CanvasSize = UDim2.new(),
											ScrollingDirection = Enum.ScrollingDirection.Y,
											TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png",
											BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png",
											Parent = CanvasGroup,
										})

										tbl18.Theme.Bind(v86, "ScrollBarImageColor3", v83[175])
										local new = tbl18.Util.New
										local v87 = v83[37]

										local tbl19 = {
											Size = UDim2.new(v83[15], 0, 0, 0),
											AutomaticSize = Enum.AutomaticSize.Y,
											BackgroundTransparency = v83[15],
											Parent = v86,
										}

										local tbl20 = {}
										local v88 = tbl18.Util.Padding(14, 16, 15, 10)
										local new2 = tbl18.Util.New

										local tbl21 = {
											Padding = UDim.new(v83[87], 12),
											FillDirection = Enum.FillDirection.Horizontal,
											SortOrder = Enum.SortOrder.LayoutOrder,
										}

										tbl20[1] = v88

										do
											local values = table.pack(new2("UIListLayout", tbl21))
											table.move(values, 1, values.n, 2, tbl20)
										end

										local v89 = new(v87, tbl19, tbl20)

										local function fn38(arg2)
											return tbl18.Util.New("Frame", {
												Name = "Column",
												Size = UDim2.new(v83[108], -6, 0, v83[87]),
												AutomaticSize = Enum.AutomaticSize.Y,
												BackgroundTransparency = v83[15],
												LayoutOrder = arg2,
												Parent = v89,
											}, { tbl18.Util.List(10) })
										end

										return CanvasGroup, v86, fn38(1), fn38(2)
									end

									tbl18.Tab.IndicatorPosition = function(arg, arg2)
										local tbl19 = {}

										for _, tab in ipairs(arg.Tabs) do
											table.insert(tbl19, tab)
										end

										table.sort(tbl19, function(arg3, arg4)
											return arg3.Button.LayoutOrder < arg4.Button.LayoutOrder
										end)

										local tabPad = tbl18.Layout.TabPad

										for _, v86 in ipairs(tbl19) do
											if v86 == arg2 then
												return UDim2.fromOffset(tbl18.Layout.TabPad, tabPad)
											end
											tabPad += tbl18.Layout.TabH + tbl18.Layout.TabGap
										end

										return UDim2.fromOffset(tbl18.Layout.TabPad, tbl18.Layout.TabPad)
									end

									tbl18.Tab.SlideIndicator = function(arg, arg2, arg3)
										local indicator = arg.Indicator
										if not indicator or not arg2 then
											return
										end
										local v86 = tbl18.Tab.IndicatorPosition(arg, arg2)
										indicator.Visible = true
										indicator.Size = UDim2.new(1, -(tbl18.Layout.TabPad * 2), v83[87], tbl18.Layout.TabH)

										if arg.TabIndicatorTween then
											arg.TabIndicatorTween:Cancel()
											arg.TabIndicatorTween = nil
										end

										if not arg3 then
											indicator.Position = v86
											return
										end
										arg.TabIndicatorTween = tbl18.Util.Tween(indicator, { Position = v86 }, tbl18.Layout.TabIndicatorSlide)
									end

									tbl18.Tab.Create = function(arg, arg2)
										local activeTab = {
											Window = arg,
											Title = arg2.Title or v83[80],
											Modules = {},
											Index = #arg.Tabs + 1,
											Internal = arg2.Internal == true,
										}

										local TextButton = tbl18.Util.New("TextButton", {
											Name = v83[80],
											Text = "",
											AutoButtonColor = false,
											Size = UDim2.new(1, 0, 0, tbl18.Layout.TabH),
											BackgroundTransparency = 1,
											ZIndex = 2,
											LayoutOrder = activeTab.Internal and v83[167] or activeTab.Index,
											Parent = arg.TabHolder,
										})

										activeTab.Button = TextButton
										local padding = tbl18.Util.Padding
										local Frame = tbl18.Util.New("Frame", { Size = UDim2.fromScale(1, v83[15]), BackgroundTransparency = v83[15], Parent = TextButton }, { tbl18.Util.FlexRow(9), padding(0, 0, 12, 12) })
										local v86 = nil

										if arg2.Icon then
											v86 = tbl18.Util.Image({
												Image = arg2.Icon,
												Size = UDim2.fromOffset(v83[130], 15),
												ImageTransparency = 0.35,
												ColorKey = "SubText",
												LayoutOrder = 1,
												Parent = Frame,
											})
										end

										local v87 = tbl18.Util.Label({
											Text = activeTab.Title,
											TextSize = 12.5,
											Weight = tbl18.Layout.Weight.Medium,
											ColorKey = "SubText",
											AutomaticSize = Enum.AutomaticSize.X,
											Size = UDim2.new(0, v83[87], 1, 0),
											LayoutOrder = 2,
											Parent = Frame,
										})

										local v88, v89, v90, v91 = tbl18.Page.Create(arg.Content)
										activeTab.Page = v88
										activeTab.Scroller = v89
										activeTab.Left = v90
										activeTab.Right = v91

										activeTab.Select = function(arg3, arg4)
											if arg.SearchBox and arg.SearchBox.Text ~= "" then
												arg.SearchBox.Text = ""
											end

											if arg.ActiveTab == activeTab then
												return
											end
											local activeTab2 = arg.ActiveTab
											arg.ActiveTab = activeTab
											local flag18 = arg4 ~= v83[189]

											if activeTab2 then
												tbl18.Util.Tween(activeTab2.Page, { GroupTransparency = 1 }, flag18 and 0.16 or 0)

												task.delay(flag18 and 0.16 or 0, function()
													if arg.ActiveTab ~= activeTab2 then
														activeTab2.Page.Visible = false
													end
												end)

												tbl18.Util.Tween(activeTab2.Text, { TextColor3 = palette.SubText }, flag18 and 0.2 or 0)

												if activeTab2.Glyph then
													tbl18.Util.Tween(activeTab2.Glyph, { ImageColor3 = palette.SubText, ImageTransparency = 0.35 }, flag18 and 0.2 or v83[87])
												end
											end

											v88.Visible = true

											if flag18 then
												v88.GroupTransparency = 1
												v88.Position = UDim2.fromOffset(v83[87], 8)
												tbl18.Util.Tween(v88, { GroupTransparency = v83[87], Position = UDim2.fromOffset(0, 0) }, v83[196])
												tbl18.Util.Tween(v87, { TextColor3 = palette.Text }, 0.22)

												if v86 then
													tbl18.Util.Tween(v86, { ImageColor3 = palette.Accent, ImageTransparency = v83[87] }, 0.22)
												end
											else
												v88.GroupTransparency = 0
												v88.Position = UDim2.fromOffset(0, v83[87])
												v87.TextColor3 = palette.Text

												if v86 then
													v86.ImageColor3 = palette.Accent
													v86.ImageTransparency = 0
												end
											end

											activeTab:SyncIndicator(flag18 and activeTab2 ~= nil)
										end

										activeTab.SyncIndicator = function(arg3, arg4)
											if arg.ActiveTab ~= activeTab then
												return
											end
											tbl18.Tab.SlideIndicator(arg, activeTab, arg4 == true)
										end

										activeTab.Module = function(arg3, arg4)
											return tbl18.Module.Create(activeTab, arg4 or {})
										end

										activeTab.Text = v87
										activeTab.Glyph = v86

										tbl18.Util.Connect(TextButton.MouseButton1Click, function()
											activeTab:Select()
										end)

										tbl18.Util.Hover(TextButton, function()
											if arg.ActiveTab ~= activeTab then
												tbl18.Util.Tween(v87, { TextColor3 = palette.Text }, v83[129])

												if v86 then
													tbl18.Util.Tween(v86, { ImageTransparency = 0.1 }, 0.16)
												end
											end
										end, function()
											if arg.ActiveTab ~= activeTab then
												tbl18.Util.Tween(v87, { TextColor3 = palette.SubText }, 0.2)

												if v86 then
													tbl18.Util.Tween(v86, { ImageTransparency = 0.35 }, 0.2)
												end
											end
										end)

										table.insert(arg.Tabs, activeTab)
										if not flag3 then
											return
										end

										if not activeTab.Internal and (arg.ActiveTab == nil or arg.ActiveTab.Internal) then
											activeTab:Select(true)
										end

										task.defer(function()
											if arg.ActiveTab == activeTab then
												activeTab:SyncIndicator(v83[142])
											end
										end)

										return activeTab
									end

									fn29 = function()
										return tostring(tbl17.MediaFolder or "Zenthra/backgrounds")
									end

									fn31 = function()
										return tbl18.Env.Filesystem and typeof(listfiles) == "function"
									end

									fn32 = function()
										if not tbl18.Env.Filesystem then
											return false
										end
										local v86 = fn29()
										local match = v86:match("^([^/\\]+)")

										pcall(function()
											if match and not isfolder(match) then
												makefolder(match)
											end

											if not isfolder(v86) then
												makefolder(v86)
											end
										end)

										return isfolder(v86)
									end

									fn37 = function(arg)
										if type(arg) ~= "string" then
											return ""
										end

										return (arg:gsub("[^%w%-_%.~]", function(arg2)
											return string.format("%%%02X", string.byte(arg2))
										end))
									end

									do
										local function fn38()
											if typeof(request) == "function" then
												return request
											end
											local v86 = v83[33]
											if typeof(http_request) == v86 then
												return http_request
											end

											if syn and typeof(syn.request) == "function" then
												return syn.request
											end
											return nil
										end

										local function fn39(arg)
											if typeof(getcustomasset) == "function" then
												return getcustomasset(arg)
											end

											if typeof(getsynasset) == "function" then
												return getsynasset(arg)
											end
											return nil
										end

										local tbl19 = nil

										local function fn40(arg)
											if type(arg) ~= "string" then
												return nil
											end

											if crypt and typeof(crypt.base64decode) == "function" then
												return crypt.base64decode(arg)
											end

											if crypt and crypt.base64 and typeof(crypt.base64.decode) == "function" then
												if not flag2 then
													return
												end
												return crypt.base64.decode(arg)
											end

											if not tbl19 then
												tbl19 = {}

												for i = v83[15], 64 do
													tbl19[string.byte("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", i)] = i - 1
												end
											end

											local str8 = arg:gsub("[^%w%+/=]", "")
											local tbl20 = {}
											local n32 = 1
											local n33 = 0

											while n32 <= #str8 do
												local v86 = tbl19[string.byte(str8, n32)]
												local v87 = tbl19[string.byte(str8, n32 + v83[15])]

												if not (not v86 or not v87) then
													local v88 = string.byte(str8, n32 + 2) and tbl19[string.byte(str8, n32 + 2)]
													local v89 = string.byte(str8, n32 + 3) and tbl19[string.byte(str8, n32 + 3)]
													n33 += 1
													tbl20[n33] = string.char(v86 * 4 + math.floor(v87 / 16))

													if v88 then
														n33 += 1
														tbl20[n33] = string.char(v87 % 16 * 16 + math.floor(v88 / 4))

														if v89 then
															n33 += 1
															tbl20[n33] = string.char(v88 % 4 * 64 + v89)
														end
													end

													n32 += v83[43]
													continue
												end

												break
											end

											return table.concat(tbl20)
										end

										fn33 = function(arg)
											local v86 = v83[32]
											if type(arg) ~= v86 then
												return nil
											end

											if crypt and typeof(crypt.base64encode) == "function" then
												return crypt.base64encode(arg)
											end
											local base64 = crypt and crypt.base64

											if base64 then
												local v87 = v83[33]
												base64 = typeof(crypt.base64.encode) == v87
											end

											if base64 then
												return crypt.base64.encode(arg)
											end
											local tbl20 = {}

											for i = 1, #arg, 3 do
												local v87, str8, v88 = string.byte(arg, i, i + v83[112])
												local n32 = v87 * v83[24] + (str8 or 0) * 256 + (v88 or 0)
												local n33 = #tbl20
												local n34 = n33 + v83[15]
												local v89 = v83[182]
												tbl20[n34] = ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"):sub(math.floor(n32 / v83[48]) % v89 + v83[15], math.floor(n32 / 262144) % 64 + 1)
												local n35 = n33 + v83[112]
												local v90 = v83[182]
												tbl20[n35] = ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"):sub(math.floor(n32 / 4096) % 64 + 1, math.floor(n32 / 4096) % v90 + 1)
												local n36 = n33 + v83[89]

												if str8 then
													local v91 = v83[15]
													str8 = ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"):sub(math.floor(n32 / 64) % 64 + v91, math.floor(n32 / 64) % 64 + 1)
												end

												tbl20[n36] = str8 or "="
												tbl20[n33 + 4] = v88 and ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"):sub(n32 % 64 + 1, n32 % 64 + v83[15]) or "="
											end

											return table.concat(tbl20)
										end

										fn30 = function(arg)
											local str8 = fn29() .. "/" .. arg
											local ok, result = pcall(readfile, str8)
											if not ok or type(result) ~= "string" or #result == 0 then
												return fn39(str8)
											end
											local n32 = #result % 16777213

											for i = 1, #result, math.max(1, math.floor(#result / 64)) do
												n32 = (n32 * 31 + result:byte(i)) % 16777213
											end

											local str9 = fn29() .. "/.cache"
											local str10 = str9 .. "/" .. string.format("%x", n32) .. "." .. (arg:match("%.(%w+)$") or "png")

											return fn39(pcall(function()
												if not isfolder(str9) then
													makefolder(str9)
												end

												if not isfile(str10) then
													writefile(str10, result)
												end
											end) and str10 or str8)
										end

										media = {
											Seq = 0,
											Active = false,
											Opacity = 0.5,
											ApiBase = function()
												local str8 = tostring(getgenv and getgenv().ZENTHRA_SHEET_API or tbl17.SheetApiUrl or ""):gsub("^%s+", ""):gsub("%s+$", ""):gsub("/+$", "")
												if not str8:match("^https?://") then
													return nil
												end
												return str8
											end,
										}

										fn34 = function(arg)
											local ok, result = pcall(function()
												return tbl18.Services.Http:JSONDecode(arg)
											end)

											if not ok or type(result) ~= "table" then
												return nil, "Bad API response"
											end

											if not result.ok then
												return nil, tostring(result.error or "API error")
											end
											local flag18 = not result.multi

											if not flag18 then
												local v86 = v83[20]
												flag18 = type(result.images) ~= v86
											end

											if flag18 or #result.images == 0 then
												return nil, "API returned no pages"
											end
											local tbl20 = {}

											for i, image in ipairs(result.images) do
												local v86 = fn40(image)
												if type(v86) ~= "string" or #v86 == 0 then
													return nil, "Could not decode page " .. i
												end
												tbl20[i] = v86
											end

											return tbl20, {
												cols = result.cols,
												cellW = result.cellW,
												cellH = result.cellH,
												count = result.count,
												counts = result.counts,
												delayMs = result.delayMs or 100,
												ext = (result.ext == v83[139] or result.ext == "png") and result.ext or v83[139],
											}
										end

										fn35 = function(arg, arg2, arg3, arg4)
											local v86 = fn38()

											if v86 then
												local ok, result = pcall(v86, { Url = arg, Method = arg2 or v83[11], Headers = arg3, Body = arg4 })

												if ok then
													local v87 = v83[20]
													ok = type(result) == v87
												end

												if ok and type(result.Body) == "string" and #result.Body > 0 then
													return result.Body, result.StatusCode or result.Status
												end
											end

											if (arg2 or v83[11]) == "GET" and not arg4 then
												local ok, result = pcall(function()
													return game:HttpGet(arg, true)
												end)

												if ok and type(result) == "string" and result ~= "" then
													return result, 200
												end
											end

											return nil, nil
										end
									end
								end

								fn36 = function(arg)
									local get, v86 = fn35(arg, "GET", {
										["User-Agent"] = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36",
										Accept = "image/avif,image/webp,image/apng,image/*,video/*,*/*;q=0.8",
										Referer = (arg:match("^(https?://[^/]+)") or "") .. "/",
									})

									if type(get) ~= "string" or #get < 32 then
										return nil
									end

									if v86 and v86 ~= v83[126] then
										return nil
									end
									local str8 = get:sub(1, 200):lower()
									if str8:find("<!doctype", v83[15], true) or str8:find("<html", 1, true) or str8:find("just a moment", v83[15], true) then
										return nil
									end
									return get
								end

								do
									local function fn38(arg)
										local str8 = tostring(arg or ""):lower()
										return str8:find("cloudflare", 1, true) or str8:find("403", 1, true) or str8:find("bot", 1, true) or str8:find("could not read", v83[15], v83[189]) or str8:find("challenge", v83[15], true) or str8:find("avif", v83[15], true)
									end

									media.Fetch = function(arg)
										local v86 = media.ApiBase()
										if not v86 then
											return nil, "API URL must start with http"
										end

										if type(arg) ~= "string" or arg == "" then
											return nil, v83[23]
										end
										local value = select(1, fn35(v86 .. "/sheet?url=" .. fn37(arg) .. "&multi=1&quality=original&fmt=jpg&format=json", "GET"))
										local str8 = "Request failed, is the API up?"

										if value then
											local v87
											v87, str8 = fn34(value)
											if v87 then
												return v87, str8
											end

											if not fn38(str8) then
												return nil, str8
											end
										end

										local v87 = fn36(arg)
										if not v87 then
											return nil, str8
										end
										local v88 = fn33(v87)
										if type(v88) ~= "string" or v88 == "" then
											return nil, "Could not encode media for upload"
										end
										local json = tbl18.Services.Http:JSONEncode({ data = v88, name = arg:match("([^/\\?]+)%.[%w]+$") or arg:match("([^/\\?]+)$") or v83[35] })
										local value2 = select(1, fn35(v86 .. "/sheet?" .. ("&multi=1&quality=original&fmt=jpg&format=json"):sub(2), "POST", { ["Content-Type"] = "application/json" }, json))
										if value2 then
											return fn34(value2)
										end

										if not (n24 < 7255) then
											return nil, "Upload to API failed - is the API up and recent?"
										end

										while true do
										end
									end
								end
							end

							do
								local function fn37(arg)
									local v86 = v83[32]
									if type(arg) ~= v86 or #arg < 12 then
										return nil
									end

									if arg:sub(1, v83[180]) == "\137PNG\r\n\26\n" then
										return "png"
									end
									local v87 = v83[77]
									if arg:byte(1) == v87 and arg:byte(2) == 216 then
										return "jpg"
									end

									if arg:sub(1, 4) == "GIF8" then
										return v83[162]
									end
									local flag18 = arg:sub(1, 4) == "RIFF"

									if flag18 then
										local v88 = v83[62]
										flag18 = arg:sub(9, v83[69]) == v88
									end

									if flag18 then
										return v83[21]
									end
									local v88 = v83[190]
									if arg:sub(v83[15], v83[112]) == v88 then
										return v83[2]
									end

									if arg:sub(5, 8) == "ftyp" then
										local str8 = arg:sub(v83[140], 12):lower()
										if str8:find("avif", v83[15], true) or str8:find("avis", v83[15], true) then
											return "avif"
										end

										if str8:find("heic", 1, v83[189]) or str8:find("heif", 1, true) or str8:find(v83[193], 1, true) then
											return v83[178]
										end

										if str8:find("mp4", 1, true) or str8:find("isom", v83[15], true) or str8:find(v83[173], v83[15], true) then
											return "mp4"
										end
									end

									if arg:byte(1) == 26 and arg:byte(2) == 69 then
										return "webm"
									end
									return nil
								end

								local tbl19 = {
									png = true,
									jpg = true,
									jpeg = v83[189],
									webp = true,
									bmp = true,
								}

								local function fn38(arg)
									for _, v86 in ipairs({ "png", "jpg", v83[25], "webp", "bmp", v83[162], "mp4", v83[143], "mov", v83[52] }) do
										pcall(delfile, fn29() .. "/" .. arg .. "." .. v86)
										pcall(delfile, fn29() .. "/" .. arg .. "." .. v86 .. ".json")
										local n32 = 2

										while true do
											local flag18 = typeof(isfile) == "function"

											if flag18 then
												local str8 = "/" .. arg .. v83[83] .. n32 .. "." .. v86
												flag18 = isfile(fn29() .. str8)
											end

											if flag18 then
												pcall(delfile, fn29() .. "/" .. arg .. ".p" .. n32 .. "." .. v86)
												n32 += 1
												continue
											end

											break
										end
									end
								end

								local function fn39(arg, arg2, arg3)
									local str8 = tostring(arg3 or ""):gsub("[%\\/:%*%?\"<>|]", ""):gsub("^%s+", ""):gsub("%s+$", ""):gsub("%.%w+$", "")

									if str8 == "" then
										str8 = "media_" .. tostring(os.time())
									end

									local str9 = str8 .. "." .. arg2

									if not pcall(function()
										fn32()
										fn38(str8)
										local str10 = "/" .. str9
										writefile(fn29() .. str10, arg)
									end) then
										return false, v83[185]
									end

									return true, str9
								end

								local function fn40(arg, arg2)
									local v86 = media.ApiBase()
									if not v86 then
										return nil, v83[148]
									end
									local v87 = fn33(arg)
									if type(v87) ~= "string" or v87 == "" then
										return nil, v83[138]
									end
									local json = tbl18.Services.Http:JSONEncode({ data = v87, name = arg2 })
									local value = select(1, fn35(v86 .. "/sheet?multi=1&quality=original&fmt=png&format=json", "POST", { ["Content-Type"] = "application/json" }, json))
									if not value then
										return nil, "Upload to API failed - is the API up and recent?"
									end
									local v88, v89 = fn34(value)
									if not v88 then
										return nil, v89
									end
									return v88, v89
								end

								media.Save = function(arg, arg2)
									if not fn31() then
										return false, v83[7]
									end
									local v86 = fn36(arg)
									local v87 = v86 and fn37(v86)
									if v86 and v87 and tbl19[v87] then
										return fn39(v86, v87 == "jpeg" and "jpg" or v87, arg2)
									end

									if v86 and (v87 == "avif" or v87 == "heic") then
										local v88, v89 = fn40(v86, v83[94] .. v87)
										if not v88 then
											return false, v89
										end
										local str8 = tostring(arg2 or ""):gsub("[%\\/:%*%?\"<>|]", ""):gsub("^%s+", ""):gsub("%s+$", ""):gsub("%.%w+$", "")

										if str8 == "" then
											str8 = "media_" .. tostring(os.time())
										end

										local str9 = str8 .. "." .. ((v89.ext == v83[117] or v89.ext == "jpg") and v89.ext or v83[117])

										if not pcall(function()
											fn32()
											fn38(str8)
											local str10 = "/" .. str9
											writefile(fn29() .. str10, v88[1])
										end) then
											return v83[142], "Could not write the files"
										end

										return v83[189], str9
									end

									local v88, v89 = media.Fetch(arg)
									if not v88 then
										return false, v89
									end
									local str8 = tostring(arg2 or ""):gsub("[%\\/:%*%?\"<>|]", ""):gsub("^%s+", ""):gsub("%s+$", ""):gsub("%.%w+$", "")

									if str8 == "" then
										str8 = "media_" .. tostring(os.time())
									end

									local flag18 = #v88 == 1

									if flag18 then
										flag18 = (v89.count or 1) <= 1
									end

									if flag18 then
										local str9 = str8 .. v83[128] .. ((v89.ext == "png" or v89.ext == "jpg") and v89.ext or v83[139])

										if not pcall(function()
											fn32()
											fn38(str8)
											local str10 = "/" .. str9
											writefile(fn29() .. str10, v88[1])
										end) then
											return v83[142], v83[185]
										end

										return v83[189], str9
									end

									local tbl20 = { str8 .. "." .. v89.ext }

									for i = 2, #v88 do
										tbl20[i] = str8 .. ".p" .. i .. "." .. v89.ext
									end

									if not pcall(function()
										fn32()
										fn38(str8)

										for i, v90 in ipairs(v88) do
											local str9 = "/" .. tbl20[i]
											writefile(fn29() .. str9, v90)
										end

										local str9 = "/" .. tbl20[1] .. ".json"

										writefile(fn29() .. str9, tbl18.Services.Http:JSONEncode({
											cols = v89.cols,
											cellW = v89.cellW,
											cellH = v89.cellH,
											count = v89.count,
											counts = v89.counts,
											delayMs = v89.delayMs,
											pages = tbl20,
											ext = v89.ext,
										}))
									end) then
										return v83[142], "Could not write the files"
									end

									return true, tbl20[1]
								end
							end

							media.List = function()
								local tbl19 = { v83[99] }
								if not fn31() or not isfolder(fn29()) then
									return tbl19
								end
								local ok, result = pcall(listfiles, fn29())
								local flag18 = not ok

								if not flag18 then
									local v86 = v83[20]
									flag18 = type(result) ~= v86
								end

								if flag18 then
									return tbl19
								end

								for _, v86 in ipairs(result) do
									local match = v86:match("([^/\\]+)$")

									if match and not match:lower():match("%.p%d+%.%w+$") and not match:lower():match("%.json$") and match ~= ".cache" then
										local match2 = match:match("%.(%w+)$")

										if match2 then
											local v87 = string.lower(match2)

											if v87 == "png" or v87 == v83[139] or v87 == "jpeg" or v87 == "webp" or v87 == "bmp" or v87 == "gif" or v87 == "mp4" or v87 == "webm" or v87 == "mov" then
												table.insert(tbl19, match)
											end
										end
									end
								end

								return tbl19
							end
						end

						local genv

						do
							do
								media.Delete = function(arg)
									local v86 = v83[32]
									if type(arg) ~= v86 or arg == "" or arg == "None" then
										return false, v83[8]
									end
									local v87 = v83[33]
									if typeof(delfile) ~= v87 then
										return false, "Executor does not support delfile"
									end

									if not (arg:find("rbxassetid://") or arg:find("http")) then
										local str8 = fn29() .. "/" .. arg

										local ok, result = pcall(function()
											if typeof(isfile) == "function" and not isfile(str8) then
												error("File not found")
											end

											delfile(str8)
											pcall(delfile, str8 .. ".json")
											local str9 = str8:gsub("%.png$", ""):gsub("%.jpe?g$", ""):gsub("%.webm$", ""):gsub("%.mp4$", ""):gsub("%.gif$", "")

											if str9 ~= str8 then
												for _, v88 in ipairs({ "png", "jpg", "jpeg" }) do
													local v89 = v83[112]

													while typeof(isfile) == "function" and isfile(str9 .. ".p" .. v89 .. "." .. v88) do
														pcall(delfile, str9 .. v83[83] .. v89 .. v83[128] .. v88)
														v89 += v83[15]
													end
												end
											end
										end)

										if not ok then
											return false, tostring(result)
										end
										return true, arg
									end

									if not (n24 > 7303) then
										return false, "Cannot delete remote/asset backgrounds"
									end

									while true do
									end
								end

								do
									local function fn31(arg)
										local v86 = arg or tbl17.Windows[1]
										if not v86 then
											return nil
										end
										return v86.BgCanvas, v86.Wallpaper, v86.BgVideo
									end

									media.Stop = function(arg)
										media.Seq = media.Seq + v83[15]
										media.Active = false
										local v86, v87, v88 = fn31(arg)

										if v88 then
											pcall(function()
												if n28(398) >= 2078 then
													v88:Pause()

													if v83[90] > n25 then
														while v83[189] do
														end
													end

													return
												end

												while true do
												end
											end)

											v88.Visible = false

											pcall(function()
												v88.Video = ""
											end)
										end

										if v87 then
											v87.Image = ""
											v87.ImageTransparency = 1
											v87.ImageRectOffset = Vector2.zero
											v87.ImageRectSize = Vector2.zero
											local preload = v87:FindFirstChild("Preload")

											if preload then
												preload:Destroy()
											end
										end

										if v86 then
											v86.Visible = false
										end
									end

									media.SetOpacity = function(arg, arg2)
										media.Opacity = math.clamp(tonumber(arg) or 0.5, 0, v83[15])
										local v86, v87, v88 = fn31(arg2)
										if not v86 then
											return
										end

										if v87 and v87.Image ~= "" then
											v87.ImageTransparency = 1 - media.Opacity
										end

										v86.GroupTransparency = v88 and v88.Visible and v83[15] - media.Opacity or 0

										if media.Active then
											v86.Visible = media.Opacity > 0.004
										end
									end

									media.ShowStatic = function(image, arg)
										media.Stop(arg)
										local v86, v87 = fn31(arg)
										if not v86 or not v87 or type(image) ~= "string" or image == "" then
											return
										end
										v86.Visible = true
										v87.Visible = true
										v87.ImageRectOffset = Vector2.zero
										v87.ImageRectSize = Vector2.zero
										v87.Image = image
										v87.ScaleType = Enum.ScaleType.Stretch
										media.Active = true
										media.SetOpacity(media.Opacity, arg)
									end

									media.PlayPages = function(arg, arg2, arg3)
										media.Stop(arg3)
										media.Seq = media.Seq + 1
										local seq = media.Seq
										local v86, v87 = fn31(arg3)
										local flag18 = not v86 or not v87 or not arg2

										if not flag18 then
											flag18 = (arg2.count or 0) < 1
										end

										if flag18 then
											return
										end
										local cellW = arg2.cellW
										local cellH = arg2.cellH
										local cols = arg2.cols
										local v88 = table.create(arg2.count)
										local v89 = v83[87]

										for i, v90 in ipairs(arg) do
											local counts = arg2.counts and arg2.counts[i] or arg2.count

											for i2 = v83[87], counts - 1 do
												v89 += v83[15]
												local tbl19 = {}
												local n32 = math.floor(i2 / cols) * cellH
												tbl19[1] = v90
												tbl19[2] = i2 % cols * cellW
												tbl19[3] = n32
												v88[v89] = tbl19
												if not (arg2.count <= v89) then
													continue
												end
												break
											end

											if not (arg2.count <= v89) then
												continue
											end
											break
										end

										if v89 == 0 then
											return
										end
										local folder = Instance.new("Folder")
										folder.Name = v83[177]
										folder.Parent = v87
										local tbl19 = {}

										for _, v90 in ipairs(arg) do
											local imageLabel = Instance.new("ImageLabel")
											imageLabel.Size = UDim2.fromOffset(1, 1)
											imageLabel.BackgroundTransparency = 1
											imageLabel.ImageTransparency = 0.996
											imageLabel.Image = v90
											imageLabel.Parent = folder
											tbl19[v90] = imageLabel
										end

										v86.Visible = true
										v87.Visible = true
										v87.Image = v88[1][v83[15]]
										v87.ImageRectSize = Vector2.new(cellW, cellH)
										v87.ImageRectOffset = Vector2.new(v88[1][v83[112]], v88[1][v83[89]])
										v87.ScaleType = Enum.ScaleType.Stretch
										media.Active = v83[189]
										media.SetOpacity(media.Opacity, arg3)

										if v89 ~= 1 then
											local n32 = math.max(0.016666666666666666, (tonumber(arg2.delayMs) or 100) / 1000)

											task.spawn(function()
												local v90 = v83[112]
												local n33 = os.clock() + v90

												while true do
													if seq == media.Seq and v87.Parent and os.clock() < n33 then
														local flag19 = v83[189]

														for _, v91 in pairs(tbl19) do
															if not v91.IsLoaded then
																flag19 = false
																break
															end
														end

														if not flag19 then
															task.wait(0.05)
															continue
														end
													end

													break
												end

												if seq ~= media.Seq then
													return
												end

												if not (7265 >= n24) then
													local n34 = os.clock() + 3
													local v91 = v88[v83[15]][1]
													local n35 = 1

													while true do
														if seq == media.Seq and v87.Parent then
															task.wait(n32)

															if seq == media.Seq then
																local n36 = n35 % v89 + 1
																local v92 = v88[n36]
																local v93 = tbl19[v92[1]]

																if not (v92[1] ~= v91 and v93 and not v93.IsLoaded and os.clock() < n34) then
																	if v92[1] ~= v91 then
																		v91 = v92[1]
																		v87.Image = v91
																	end

																	v87.ImageRectOffset = Vector2.new(v92[2], v92[3])
																	n35 = n36
																end

																continue
															end
														end

														break
													end

													return
												end

												while true do
												end
											end)

											return
										end

										if n27(406) > 10136 then
											return
										end

										while true do
										end
									end
								end
							end

							do
								media.Apply = function(arg, arg2)
									media.Seq = media.Seq + v83[15]
									local v86 = v83[20]

									if type(arg) == v86 then
										arg = arg[v83[15]]
									end

									if type(arg) ~= "string" or arg == "" or arg == "None" then
										media.Stop(arg2)
										return
									end

									if arg:find("rbxassetid://") then
										media.ShowStatic(arg, arg2)
										return
									end
									local str8 = "/" .. arg .. v83[96]
									local str9 = fn29() .. str8

									if typeof(isfile) == "function" and isfile(str9) then
										local ok, result = pcall(function()
											return tbl18.Services.Http:JSONDecode(readfile(str9))
										end)

										if ok and type(result) == "table" and result.count and type(result.pages) == "table" then
											local tbl19 = {}

											for i, page in ipairs(result.pages) do
												local v87 = fn30(page)
												if not v87 or v87 == "" then
													media.Stop(arg2)
													return
												end
												tbl19[i] = v87
											end

											media.PlayPages(tbl19, result, arg2)
											return
										end
									end

									local v87 = fn30(arg)
									if not v87 or v87 == "" then
										media.Stop(arg2)
										return
									end
									media.ShowStatic(v87, arg2)
								end

								tbl17.Media = media
								tbl18.Media = media

								tbl18.Window.BindGameCursor = function(arg)
									if typeof(arg) ~= "Instance" then
										return
									end

									local Frame = tbl18.Util.New("Frame", {
										Name = "GameCursor",
										BackgroundTransparency = 1,
										BorderSizePixel = 0,
										Size = UDim2.fromScale(1, 1),
										Active = false,
										ZIndex = 100000,
										Parent = arg,
									})

									local cursor = nil
									local clone = nil

									local function fn31()
										if cursor and cursor.Parent then
											return cursor
										end
										local localPlayer = tbl18.Services.LocalPlayer
										localPlayer = localPlayer and localPlayer:FindFirstChild(v83[131])
										local interface = localPlayer and localPlayer:FindFirstChild("Interface")
										cursor = interface and interface:FindFirstChild("Cursor")

										if not cursor and localPlayer then
											cursor = localPlayer:FindFirstChild(v83[159], true)
										end

										if cursor and (not clone or not clone.Parent) then
											if clone then
												pcall(function()
													local v86 = v83[125]
													if n26(2386) > v86 then
														clone:Destroy()
														return
													end

													while true do
													end
												end)
											end

											clone = cursor:Clone()
											clone.Name = "Cursor"
											clone.ZIndex = 100001
											clone.Active = false
											clone.Parent = Frame
										end

										return cursor
									end

									local fn32 = nil

									fn32 = function(arg2, arg3, arg4)
										if typeof(arg2) ~= "Instance" or typeof(arg3) ~= "Instance" then
											return
										end

										if arg2:IsA("GuiObject") and arg3:IsA("GuiObject") then
											arg3.Visible = arg2.Visible
											arg3.AnchorPoint = arg2.AnchorPoint
											arg3.Rotation = arg2.Rotation

											if arg4 then
												local absolutePosition = arg2.AbsolutePosition
												local absoluteSize = arg2.AbsoluteSize
												local anchorPoint = arg2.AnchorPoint
												local parent = arg3.Parent
												local absolutePosition2 = parent and parent:IsA("GuiObject") and parent.AbsolutePosition or Vector2.zero
												arg3.Size = UDim2.fromOffset(absoluteSize.X, absoluteSize.Y)
												arg3.Position = UDim2.fromOffset(absolutePosition.X + absoluteSize.X * anchorPoint.X - absolutePosition2.X, absolutePosition.Y + absoluteSize.Y * anchorPoint.Y - absolutePosition2.Y)
											else
												arg3.Size = arg2.Size
												arg3.Position = arg2.Position
											end
										end

										if arg2:IsA("ImageLabel") and arg3:IsA("ImageLabel") then
											arg3.Image = arg2.Image
											arg3.ImageColor3 = arg2.ImageColor3
											arg3.ImageTransparency = arg2.ImageTransparency
											arg3.ImageRectOffset = arg2.ImageRectOffset
											arg3.ImageRectSize = arg2.ImageRectSize
											arg3.ScaleType = arg2.ScaleType
										end

										if arg2:IsA("TextLabel") and arg3:IsA("TextLabel") then
											arg3.Text = arg2.Text
											arg3.TextColor3 = arg2.TextColor3
											arg3.TextTransparency = arg2.TextTransparency
											arg3.TextStrokeTransparency = arg2.TextStrokeTransparency
											arg3.TextSize = arg2.TextSize
										end

										for _, child in ipairs(arg2:GetChildren()) do
											local v86 = arg3:FindFirstChild(child.Name)

											if v86 then
												fn32(child, v86, false)
											end
										end
									end

									tbl18.Util.Connect(tbl18.Services.Run.RenderStepped, function()
										local v86 = fn31()

										if v86 and clone then
											fn32(v86, clone, v83[189])
										elseif clone then
											clone.Visible = false
										end
									end)
								end

								tbl18.Window.Open = function(arg)
									local tbl19 = arg or {}

									if tbl19.ConfigFolder ~= false then
										tbl18.Config.Setup(tbl19.ConfigFolder or "Zenthra", tbl19.ConfigName or "config")
										tbl18.State.Saved = tbl18.Config.Load()

										if type(tbl18.State.Saved) == "table" then
											for k, v86 in pairs(tbl18.State.Saved) do
												tbl17.Flags[k] = v86
											end
										end

										local v86 = v83[32]

										if type(tbl18.State.Saved.zenthra_notify_position) == v86 then
											tbl18.Notify.SetPosition(tbl18.State.Saved.zenthra_notify_position)
										end
									end

									local tbl20 = { Tabs = {}, ActiveTab = nil, Open = true, ToggleKey = tbl19.ToggleKey or Enum.KeyCode.RightShift }

									if tbl19.Accent then
										tbl17:SetAccent(tbl19.Accent)
									end

									if tbl19.Theme then
										tbl17:SetTheme(tbl19.Theme)
									end

									local v86 = tbl18.Env.Adopt(tbl18.Util.New("ScreenGui", {
										Name = tbl18.Env.RandomName(),
										ResetOnSpawn = false,
										IgnoreGuiInset = v83[189],
										AutoLocalize = false,
										DisplayOrder = tbl18.Env.GuiDisplayOrder,
										ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
										Parent = tbl18.Env.PlayerGuiParent(),
									}))

									pcall(function()
										v86.Modal = false
									end)

									tbl18.Env.PromoteGui(v86, tbl18.Env.GuiDisplayOrder)

									pcall(function()
										v86:GetPropertyChangedSignal("DisplayOrder"):Connect(function()
											if v86.DisplayOrder < tbl18.Env.GuiDisplayOrder then
												v86.DisplayOrder = tbl18.Env.GuiDisplayOrder
											end
										end)
									end)

									tbl20.Screen = v86
									tbl18.Window.BindGameCursor(v86)

									local v87 = tbl18.Util.New(v83[37], {
										Name = "Layer",
										AnchorPoint = Vector2.new(0.5, 0.5),
										Position = UDim2.fromScale(0.5, v83[108]),
										Size = UDim2.fromScale(1, 1),
										BackgroundTransparency = 1,
										Active = v83[142],
										Parent = v86,
									})

									local UIScale = tbl18.Util.New("UIScale", { Scale = v83[15], Parent = v87 })
									tbl20.Scale = UIScale

									local function fn31()
										if v83[12] <= n24 then
											while v83[189] do
											end
										end

										local viewportSize = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, v83[152])
										local mobile = tbl18.Env.Mobile and v83[170] or 90
										UIScale.Scale = math.clamp(math.min(viewportSize.X / (tbl18.Layout.Width + mobile), viewportSize.Y / (tbl18.Layout.Height + mobile)), v83[106], 1)
										v85.Scale = UIScale.Scale
									end

									fn31()

									if workspace.CurrentCamera then
										tbl18.Util.Connect(workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"), fn31)
									end

									local Frame = tbl18.Util.New("Frame", {
										Name = "Holder",
										AnchorPoint = Vector2.new(0.5, 0.5),
										Position = UDim2.fromScale(0.5, 0.5),
										Size = UDim2.fromOffset(tbl18.Layout.Width, tbl18.Layout.Height),
										BackgroundTransparency = v83[15],
										Visible = false,
										Parent = v87,
									}, { tbl18.Util.New("UIScale", { Scale = 0.94 }) })

									tbl20.Holder = Frame
									tbl20.RootScale = Frame:FindFirstChildOfClass(v83[104])

									local ImageLabel = tbl18.Util.New("ImageLabel", {
										Name = "Shadow",
										AnchorPoint = Vector2.new(v83[108], 0.5),
										Position = UDim2.fromScale(0.5, 0.5),
										Size = UDim2.new(1, 97, v83[15], v83[101]),
										BackgroundTransparency = v83[15],
										Image = "rbxassetid://17290899982",
										ImageColor3 = Color3.new(0, 0, 0),
										ImageTransparency = 1,
										Parent = Frame,
									})

									local stroke = tbl18.Util.Stroke

									local v88 = tbl18.Util.New(v83[53], {
										Name = "Root",
										Size = UDim2.fromScale(v83[15], 1),
										BackgroundTransparency = 0,
										BorderSizePixel = 0,
										GroupTransparency = v83[15],
										Parent = Frame,
									}, { tbl18.Util.Corner(13), stroke("Border", 1.2, 0.35) })

									tbl18.Theme.Bind(v88, "BackgroundColor3", "Background")
									tbl20.Root = v88

									local CanvasGroup = tbl18.Util.New("CanvasGroup", {
										Name = "VLBackground",
										Size = UDim2.fromScale(1, 1),
										BackgroundTransparency = 1,
										BorderSizePixel = 0,
										GroupTransparency = 0,
										Visible = false,
										ZIndex = 0,
										Parent = v88,
									}, { tbl18.Util.Corner(13) })

									tbl20.BgCanvas = CanvasGroup

									tbl20.BgVideo = tbl18.Util.New("VideoFrame", {
										Name = "Video",
										Size = UDim2.fromScale(1, 1),
										BackgroundTransparency = 1,
										BorderSizePixel = 0,
										Visible = v83[142],
										Looped = true,
										Volume = 0,
										ZIndex = v83[15],
										Parent = CanvasGroup,
									})

									tbl20.Wallpaper = tbl18.Util.New("ImageLabel", {
										Name = "Image",
										Size = UDim2.fromScale(1, 1),
										BackgroundTransparency = 1,
										BorderSizePixel = 0,
										Image = "",
										ImageTransparency = 1,
										ScaleType = Enum.ScaleType.Stretch,
										Visible = true,
										ZIndex = v83[112],
										Parent = CanvasGroup,
									})

									local v89 = v83[85]

									tbl18.Theme.Bind(tbl18.Util.New("Frame", {
										Name = "TopGlow",
										Size = UDim2.new(1, v83[87], 0, 74),
										BackgroundTransparency = 0.94,
										BorderSizePixel = 0,
										ZIndex = 3,
										Parent = v88,
									}, { tbl18.Util.Gradient(nil, tbl18.Util.Fade(0, 0.45, 1, 1), v89) }), "BackgroundColor3", "Accent")

									local Frame2 = tbl18.Util.New("Frame", {
										Name = "Topbar",
										Size = UDim2.new(1, 0, v83[87], tbl18.Layout.TopbarH),
										BackgroundTransparency = 1,
										Active = true,
										ZIndex = 4,
										Parent = v88,
									})

									local v90 = tbl18.Util.New(v83[37], {
										Position = UDim2.new(0, 18, 0.5, 0),
										AnchorPoint = Vector2.new(0, 0.5),
										Size = UDim2.fromOffset(v83[87], 18),
										AutomaticSize = Enum.AutomaticSize.X,
										BackgroundTransparency = v83[15],
										Parent = Frame2,
									}, {
										tbl18.Util.New("UIListLayout", {
											Padding = UDim.new(0, 7),
											FillDirection = Enum.FillDirection.Horizontal,
											VerticalAlignment = Enum.VerticalAlignment.Center,
											SortOrder = Enum.SortOrder.LayoutOrder,
										}),
									})

									local v91 = tbl18.Util.Label({
										Text = tbl19.Title or "Zenthra",
										TextSize = 14,
										Weight = tbl18.Layout.Weight.Bold,
										AutomaticSize = Enum.AutomaticSize.X,
										Size = UDim2.fromOffset(0, 16),
										LayoutOrder = v83[15],
										Parent = v90,
									})

									local v92 = nil

									if tbl19.Subtitle then
										v92 = tbl18.Util.Label({
											Text = tbl19.Subtitle,
											TextSize = 11,
											ColorKey = "Muted",
											AutomaticSize = Enum.AutomaticSize.X,
											Size = UDim2.fromOffset(v83[87], 14),
											LayoutOrder = 2,
											Parent = v90,
										})
									end

									local function fn32(arg2, arg3, arg4)
										local TextButton = tbl18.Util.New("TextButton", {
											Text = "",
											AutoButtonColor = false,
											AnchorPoint = Vector2.new(v83[15], 0.5),
											Position = UDim2.new(1, -arg2, v83[108], v83[87]),
											Size = UDim2.fromOffset(26, 26),
											BackgroundTransparency = v83[15],
											BorderSizePixel = 0,
											Parent = Frame2,
										}, { tbl18.Util.Corner(7) })

										tbl18.Theme.Bind(TextButton, "BackgroundColor3", v83[115])

										local v93 = tbl18.Util.Image({
											Image = arg3,
											Size = UDim2.fromOffset(13, v83[184]),
											AnchorPoint = Vector2.new(0.5, 0.5),
											Position = UDim2.fromScale(0.5, 0.5),
											ImageTransparency = 0.25,
											ColorKey = v83[70],
											Parent = TextButton,
										})

										tbl18.Util.Hover(TextButton, function()
											tbl18.Util.Tween(TextButton, { BackgroundTransparency = 0.25 }, 0.16)
											tbl18.Util.Tween(v93, { ImageColor3 = palette[arg4 or "Text"], ImageTransparency = 0 }, v83[129])
										end, function()
											tbl18.Util.Tween(TextButton, { BackgroundTransparency = 1 }, v83[51])
											tbl18.Util.Tween(v93, { ImageColor3 = palette.SubText, ImageTransparency = 0.25 }, v83[51])
										end)

										return TextButton
									end

									local v93 = fn32(v83[166], v83[151])
									local stroke2 = tbl18.Util.Stroke

									local Frame3 = tbl18.Util.New("Frame", {
										AnchorPoint = Vector2.new(1, 0.5),
										Position = UDim2.new(v83[15], -48, 0.5, v83[87]),
										Size = UDim2.fromOffset(150, 27),
										BackgroundTransparency = 0.45,
										BorderSizePixel = 0,
										ClipsDescendants = true,
										Parent = Frame2,
									}, { tbl18.Util.Corner(7), stroke2("BorderSoft", 1, 0.25) })

									tbl18.Theme.Bind(Frame3, "BackgroundColor3", "Surface")

									tbl18.Util.Image({
										Image = "search",
										Size = UDim2.fromOffset(12, v83[69]),
										AnchorPoint = Vector2.new(0, 0.5),
										Position = UDim2.new(0, 9, 0.5, 0),
										ImageTransparency = 0.2,
										ColorKey = "Muted",
										Parent = Frame3,
									})

									local v94 = tbl18.Util.New(v83[154], {
										Text = "",
										PlaceholderText = "Search",
										ClearTextOnFocus = v83[142],
										BackgroundTransparency = 1,
										ClipsDescendants = true,
										TextWrapped = false,
										TextTruncate = Enum.TextTruncate.AtEnd,
										FontFace = tbl18.Util.Font(tbl18.Layout.Weight.Medium),
										TextSize = 11.5,
										TextXAlignment = Enum.TextXAlignment.Left,
										Position = UDim2.new(0, v83[135], v83[87], 0),
										Size = UDim2.new(1, -34, 1, v83[87]),
										Parent = Frame3,
									})

									tbl18.Theme.Bind(v94, "TextColor3", v83[118])
									tbl18.Theme.Bind(v94, "PlaceholderColor3", "Muted")
									local v95 = v83[73]

									tbl18.Theme.Bind(tbl18.Util.New("Frame", {
										Position = UDim2.new(0, v83[87], 0, tbl18.Layout.TopbarH),
										Size = UDim2.new(v83[15], 0, 0, 1),
										BackgroundTransparency = 0.55,
										BorderSizePixel = v83[87],
										ZIndex = 4,
										Parent = v88,
									}), v95, "Border")

									local Frame4 = tbl18.Util.New("Frame", {
										Name = "Sidebar",
										Position = UDim2.new(v83[87], 0, 0, tbl18.Layout.TopbarH + 1),
										Size = UDim2.new(0, tbl18.Layout.SidebarW, 1, -(tbl18.Layout.TopbarH + v83[15])),
										BackgroundTransparency = 0.35,
										BorderSizePixel = v83[87],
										ZIndex = 4,
										Parent = v88,
									}, { tbl18.Util.Gradient(nil, tbl18.Util.Fade(0.1, v83[106], 0.7), 90) })

									tbl18.Theme.Bind(Frame4, "BackgroundColor3", "Surface")
									tbl20.Sidebar = Frame4

									tbl18.Theme.Bind(tbl18.Util.New("Frame", {
										AnchorPoint = Vector2.new(v83[15], 0),
										Position = UDim2.new(1, v83[87], 0, v83[87]),
										Size = UDim2.new(v83[87], 1, 1, 0),
										BackgroundTransparency = v83[31],
										BorderSizePixel = 0,
										Parent = Frame4,
									}), "BackgroundColor3", "Border")

									local ScrollingFrame = tbl18.Util.New("ScrollingFrame", {
										Position = UDim2.new(0, 12, v83[87], 12),
										Size = UDim2.new(1, -v83[179], 1, -24),
										BackgroundTransparency = 1,
										BorderSizePixel = 0,
										ScrollBarThickness = 0,
										AutomaticCanvasSize = Enum.AutomaticSize.Y,
										CanvasSize = UDim2.new(),
										ScrollingDirection = Enum.ScrollingDirection.Y,
										Parent = Frame4,
									})

									local new = tbl18.Util.New

									local tbl21 = {
										Name = "Indicator",
										Size = UDim2.new(1, -(tbl18.Layout.TabPad * 2), 0, tbl18.Layout.TabH),
										BackgroundTransparency = v83[120],
										BorderSizePixel = 0,
										Visible = false,
										ZIndex = 1,
										Parent = ScrollingFrame,
									}

									local tbl22 = {}
									local v96 = tbl18.Util.Corner(7)
									local gradient = tbl18.Util.Gradient
									local v97 = tbl18.Util.Fade(v83[75], 0.55, v83[15])
									tbl22[1] = v96

									do
										local values = table.pack(gradient(nil, v97, 0))
										table.move(values, 1, values.n, 2, tbl22)
									end

									local Frame5 = new("Frame", tbl21, tbl22)
									tbl18.Theme.Bind(Frame5, "BackgroundColor3", v83[42])
									tbl20.Indicator = Frame5
									tbl20.TabIndicatorTween = nil

									tbl18.Theme.Bind(tbl18.Util.New("Frame", {
										AnchorPoint = Vector2.new(v83[87], 0.5),
										Position = UDim2.new(v83[87], 0, v83[108], 0),
										Size = UDim2.fromOffset(2, 16),
										BorderSizePixel = 0,
										Parent = Frame5,
									}, { tbl18.Util.Corner(v83[112]) }), v83[73], v83[42])

									local padding = tbl18.Util.Padding
									local tabPad = tbl18.Layout.TabPad
									local tabPad2 = tbl18.Layout.TabPad
									local tabPad3 = tbl18.Layout.TabPad

									tbl20.TabHolder = tbl18.Util.New("Frame", {
										Size = UDim2.new(v83[15], v83[87], 0, 0),
										AutomaticSize = Enum.AutomaticSize.Y,
										BackgroundTransparency = 1,
										ZIndex = v83[112],
										Parent = ScrollingFrame,
									}, { tbl18.Util.List(tbl18.Layout.TabGap), padding(tabPad, 0, tabPad2, tabPad3) })

									tbl20.TabScroll = ScrollingFrame

									local Frame6 = tbl18.Util.New("Frame", {
										Name = v83[168],
										Position = UDim2.new(v83[87], tbl18.Layout.SidebarW + v83[15], 0, tbl18.Layout.TopbarH + v83[15]),
										Size = UDim2.new(v83[15], -(tbl18.Layout.SidebarW + v83[15]), v83[15], -(tbl18.Layout.TopbarH + v83[15])),
										BackgroundTransparency = 1,
										ZIndex = 4,
										Parent = v88,
									})

									tbl20.Content = Frame6
									local flag18 = v83[142]
									local position = nil
									local position2 = nil
									local flag19 = false

									tbl18.Util.Connect(Frame2.InputBegan, function(arg2)
										if tbl18.Window.BlockDrag then
											return
										end

										if arg2.UserInputType ~= Enum.UserInputType.MouseButton1 and arg2.UserInputType ~= Enum.UserInputType.Touch then
											return
										end
										flag18 = true
										flag19 = v83[142]
										position = arg2.Position
										position2 = Frame.Position
									end)

									tbl18.Util.Connect(tbl18.Services.UserInput.InputChanged, function(arg2)
										if not flag18 then
											return
										end

										if arg2.UserInputType ~= Enum.UserInputType.MouseMovement and arg2.UserInputType ~= Enum.UserInputType.Touch then
											return
										end
										local n32 = arg2.Position - position

										if v83[43] < n32.Magnitude then
											flag19 = true
										end

										Frame.Position = UDim2.new(position2.X.Scale, position2.X.Offset + n32.X / UIScale.Scale, position2.Y.Scale, position2.Y.Offset + n32.Y / UIScale.Scale)
									end)

									tbl18.Util.Connect(tbl18.Services.UserInput.InputEnded, function(arg2)
										if arg2.UserInputType ~= Enum.UserInputType.MouseButton1 and arg2.UserInputType ~= Enum.UserInputType.Touch then
											return
										end
										local flag20 = flag18 and not flag19
										flag18 = false

										if flag20 and tbl20.CompactPillActive and tbl20.CompactPillActive() then
											tbl20:Toggle()
										end
									end)

									local v98, v99, v100, v101 = tbl18.Page.Create(Frame6)
									tbl20.SearchBox = v94

									local v102 = tbl18.Util.Label({
										Text = "No modules found",
										TextSize = v83[69],
										ColorKey = "Muted",
										TextXAlignment = Enum.TextXAlignment.Center,
										Position = UDim2.fromScale(0, 0.32),
										Size = UDim2.new(v83[15], 0, v83[87], 16),
										Visible = false,
										Parent = v98,
									})

									local v103 = v83[142]

									tbl18.Util.Connect(v94:GetPropertyChangedSignal("Text"), function()
										local str8 = v94.Text:lower():gsub("^%s+", ""):gsub("%s+$", "")
										local flag20 = str8 ~= ""
										local layoutOrder = 0

										for _, tab in ipairs(tbl20.Tabs) do
											for _, module in ipairs(tab.Modules) do
												local flag21 = flag20 and module.Keyword:find(str8, 1, true) ~= nil
												local column = module.Column

												if flag21 then
													layoutOrder += 1
													module.Frame.LayoutOrder = layoutOrder
													column = layoutOrder % 2 == v83[15] and v100 or v101
												else
													module.Frame.LayoutOrder = module.LayoutOrder
												end

												if module.Frame.Parent ~= column then
													module.Frame.Parent = column
												end
											end
										end

										v102.Visible = flag20 and layoutOrder == 0
										if flag20 == v103 then
											return
										end
										v103 = flag20

										if flag20 then
											if n27(2234) <= 9228 then
												if tbl20.ActiveTab then
													tbl20.ActiveTab.Page.Visible = false
												end

												v98.Visible = v83[189]
												v98.GroupTransparency = 1
												tbl18.Util.Tween(v98, { GroupTransparency = 0 }, v83[95])
											else
												while v83[189] do
												end
											end
										else
											v98.Visible = false

											if tbl20.ActiveTab then
												tbl20.ActiveTab.Page.Visible = true
												tbl20.ActiveTab.Page.GroupTransparency = v83[87]
											end
										end
									end)

									local flag20 = v83[142]

									local function fn33()
										return tbl17.Flags.zenthra_hide_minimized == v83[189]
									end

									local function fn34()
										return tbl17.Flags.zenthra_compact_minimized == v83[189]
									end

									local function fn35()
										return math.clamp(math.floor(v91.AbsoluteSize.X / math.max(UIScale.Scale * (tbl20.RootScale and tbl20.RootScale.Scale or 1), 0.01) + 40), 110, tbl18.Layout.Width)
									end

									local function fn36()
										if not flag20 then
											return UDim2.fromOffset(tbl18.Layout.Width, tbl18.Layout.Height)
										end
										return UDim2.fromOffset(fn34() and fn35() or tbl18.Layout.Width, tbl18.Layout.TopbarH)
									end

									local function fn37()
										return UDim2.new(1, v83[150], 1, 111)
									end

									local function fn38()
										local v104 = flag20 and fn34()
										local visible = not v104
										Frame3.Visible = visible
										v93.Visible = visible

										if v92 then
											v92.Visible = not v104
										end

										v90.AnchorPoint = v104 and Vector2.new(0.5, 0.5) or Vector2.new(0, 0.5)
										v90.Position = v104 and UDim2.fromScale(v83[108], 0.5) or UDim2.new(0, 18, 0.5, 0)
									end

									local connection = nil

									local function fn39()
										local localPlayer = tbl18.Services.LocalPlayer
										if localPlayer and localPlayer.CameraMode == Enum.CameraMode.LockFirstPerson then
											return true
										end
										local currentCamera = workspace.CurrentCamera
										if not currentCamera then
											return false
										end
										return (currentCamera.CFrame.Position - currentCamera.Focus.Position).Magnitude < 2.25
									end

									local function fn40()
										if tbl20.Open == true and Frame.Visible and not flag20 then
											if connection then
												return
											end

											connection = tbl18.Services.Run.RenderStepped:Connect(function()
												local userInput = tbl18.Services.UserInput
												local v104 = fn39()
												local v105 = userInput:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
												local v106 = userInput:IsKeyDown(Enum.KeyCode.LeftAlt) or userInput:IsKeyDown(Enum.KeyCode.RightAlt)
												if v104 then
													userInput.MouseBehavior = v106 and Enum.MouseBehavior.Default or Enum.MouseBehavior.LockCenter
													return
												end

												if v105 then
													userInput.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
													return
												end
												userInput.MouseBehavior = Enum.MouseBehavior.Default
											end)
										elseif connection then
											connection:Disconnect()
											connection = nil
										end
									end

									local function fn41(arg2)
										flag20 = arg2
										fn38()
										tbl18.Util.Tween(Frame, { Size = fn36() }, 0.4)
										tbl18.Util.Tween(ImageLabel, { ImageTransparency = arg2 and 1 or 0.45 }, arg2 and 0.22 or v83[161])
										fn40()
									end

									tbl20.CompactPillActive = function()
										return flag20 and fn34()
									end

									tbl20.RefreshMinimized = function()
										if not flag20 then
											return
										end
										fn38()
										tbl18.Util.Tween(Frame, { Size = fn36() }, 0.3)
									end

									tbl20.Toggle = function()
										if fn33() then
											if tbl20.Open and Frame.Visible then
												tbl20:SetVisible(v83[142])
											else
												flag20 = false
												tbl20:SetVisible(true)
											end

											return
										end

										if not tbl20.Open or not Frame.Visible then
											flag20 = v83[142]
											tbl20:SetVisible(true)
											return
										end

										fn41(not flag20)
									end

									tbl18.Util.Connect(v93.MouseButton1Click, function()
										tbl20:Toggle()
									end)

									local v104 = nil
									local v105 = nil
									local v106 = nil

									tbl20.SetVisible = function(arg2, arg3)
										local open = arg3 == true
										tbl20.Open = open

										if v104 then
											v104:Cancel()
											v104 = nil
										end

										if v105 then
											v105:Cancel()
											v105 = nil
										end

										if v106 then
											v106:Cancel()
											v106 = nil
										end

										if open then
											if flag20 then
												flag20 = false
												fn38()
											end

											Frame.Visible = v83[189]
											ImageLabel.Visible = true
											Frame.Size = fn36()
											ImageLabel.Size = fn37()
											tbl20.RootScale.Scale = 0.78
											v88.GroupTransparency = 1
											ImageLabel.ImageTransparency = 1
											v106 = tbl18.Util.Tween(tbl20.RootScale, { Scale = 0.94 }, 0.36)
											v104 = tbl18.Util.Tween(v88, { GroupTransparency = 0 }, 0.28)
											v105 = tbl18.Util.Tween(ImageLabel, { ImageTransparency = 0.45 }, 0.32)
										else
											v106 = tbl18.Util.Tween(tbl20.RootScale, { Scale = 0.86 }, 0.22, tbl18.Layout.Ease, tbl18.Layout.EaseIn)
											v104 = tbl18.Util.Tween(v88, { GroupTransparency = 1 }, 0.2, tbl18.Layout.Ease, tbl18.Layout.EaseIn)
											v105 = tbl18.Util.Tween(ImageLabel, { ImageTransparency = 1 }, 0.2, tbl18.Layout.Ease, tbl18.Layout.EaseIn)

											task.delay(0.22, function()
												if not tbl20.Open then
													Frame.Visible = false
													ImageLabel.Visible = false
													tbl20.RootScale.Scale = 0.94
													fn40()
												end
											end)
										end

										fn40()
									end

									tbl20.Destroy = function()
										if connection then
											connection:Disconnect()
											connection = nil
										end

										tbl18.Config.Save()

										for _, connection2 in ipairs(tbl18.State.Connections) do
											pcall(function()
												connection2:Disconnect()
											end)
										end

										table.clear(tbl18.State.Connections)
										table.clear(tbl17.Options)

										for i, window in ipairs(tbl17.Windows) do
											if window == tbl20 then
												table.remove(tbl17.Windows, i)
												break
											end
										end

										if getgenv then
											getgenv().__ZenthraTeardown = nil
										end

										tbl18.Util.Tween(v88, { GroupTransparency = 1 }, 0.2)
										tbl18.Util.Tween(tbl20.RootScale, { Scale = 0.9 }, 0.2)

										task.delay(0.24, function()
											v86:Destroy()
											v84:Destroy()
										end)
									end

									tbl20.Tab = function(arg2, arg3)
										return tbl18.Tab.Create(tbl20, arg3 or {})
									end

									tbl20.Notify = function(...)
										return tbl17:Notify(select(2, ...))
									end

									tbl18.Util.Connect(tbl18.Services.UserInput.InputBegan, function(arg2, arg3)
										if arg3 or tbl18.Binds.Binding then
											return
										end

										if arg2.KeyCode == tbl20.ToggleKey then
											tbl20:Toggle()
										end
									end)

									if tbl18.Env.Mobile then
										local stroke3 = tbl18.Util.Stroke

										local v107 = tbl18.Util.New(v83[29], {
											Name = v83[127],
											Text = "",
											AutoButtonColor = v83[142],
											AnchorPoint = Vector2.new(0, 0.5),
											Position = UDim2.new(0, v83[124], 0.28, 0),
											Size = UDim2.fromOffset(v83[60], 46),
											BackgroundTransparency = 0.05,
											BorderSizePixel = 0,
											Parent = v86,
										}, { tbl18.Util.Corner(UDim.new(1, 0)), stroke3("Border", 1, 0.3) })

										tbl18.Theme.Bind(v107, v83[73], v83[92])

										tbl18.Util.Image({
											Image = tbl19.Icon or v83[147],
											Size = UDim2.fromOffset(20, 20),
											AnchorPoint = Vector2.new(0.5, 0.5),
											Position = UDim2.fromScale(0.5, 0.5),
											ColorKey = v83[42],
											Parent = v107,
										})

										local flag21 = nil
										local position3 = nil
										local position4 = nil
										local flag22 = nil

										tbl18.Util.Connect(v107.InputBegan, function(arg2)
											if arg2.UserInputType ~= Enum.UserInputType.Touch then
												return
											end
											local v108 = v83[142]
											flag21 = true
											flag22 = v108
											position3 = arg2.Position
											position4 = v107.Position
										end)

										tbl18.Util.Connect(tbl18.Services.UserInput.InputChanged, function(arg2)
											if not flag21 or arg2.UserInputType ~= Enum.UserInputType.Touch then
												return
											end
											local n32 = arg2.Position - position3

											if n32.Magnitude > 6 then
												flag22 = true
											end

											v107.Position = UDim2.new(position4.X.Scale, position4.X.Offset + n32.X, position4.Y.Scale, position4.Y.Offset + n32.Y)
										end)

										tbl18.Util.Connect(tbl18.Services.UserInput.InputEnded, function(arg2)
											if not flag21 or arg2.UserInputType ~= Enum.UserInputType.Touch then
												return
											end
											flag21 = false

											if not flag22 then
												tbl20:Toggle()
											end
										end)
									end

									local new2 = tbl18.Util.New

									local tbl23 = {
										Name = "KeybindList",
										AnchorPoint = Vector2.new(0, 0.5),
										Position = UDim2.new(v83[87], -194, 0.5, 0),
										Size = UDim2.new(v83[87], v83[61], 0, 0),
										AutomaticSize = Enum.AutomaticSize.Y,
										BackgroundTransparency = 0.02,
										GroupTransparency = 1,
										BorderSizePixel = 0,
										Visible = v83[142],
										Parent = v87,
									}

									local tbl24 = {}
									local v107 = tbl18.Util.Corner(10)
									local Border = tbl18.Util.Stroke("Border", v83[15], 0.32)
									local v108 = tbl18.Util.Padding(v83[22], v83[38], 12, v83[69])
									tbl24[1] = v107
									tbl24[2] = Border
									tbl24[3] = v108

									do
										local values = table.pack(tbl18.Util.List(5))
										table.move(values, 1, values.n, 4, tbl24)
									end

									local CanvasGroup2 = new2("CanvasGroup", tbl23, tbl24)
									tbl18.Theme.Bind(CanvasGroup2, v83[73], v83[92])

									tbl18.Util.Label({
										Text = v83[30],
										TextSize = 10,
										Weight = tbl18.Layout.Weight.Bold,
										ColorKey = "Muted",
										Size = UDim2.new(1, 0, 0, 12),
										LayoutOrder = 0,
										Parent = CanvasGroup2,
									})

									local v109 = tbl18.Util.Label({
										Text = "Nothing bound yet",
										TextSize = 11,
										ColorKey = v83[175],
										Size = UDim2.new(1, 0, 0, 16),
										LayoutOrder = 1,
										Parent = CanvasGroup2,
									})

									local tbl25 = {}
									local flag21 = false

									local function fn42()
										for _, v110 in ipairs(tbl25) do
											v110:Destroy()
										end

										table.clear(tbl25)
										local n32 = 0

										for _, bind in ipairs(tbl17.Binds) do
											if bind.Key then
												n32 += v83[15]

												local Frame7 = tbl18.Util.New("Frame", {
													Size = UDim2.new(1, 0, 0, 18),
													BackgroundTransparency = v83[15],
													LayoutOrder = n32 + 1,
													Parent = CanvasGroup2,
												}, { tbl18.Util.FlexRow(v83[102]) })

												tbl18.Util.Label({
													Text = bind.Label,
													TextSize = 11.5,
													ColorKey = v83[70],
													TextTruncate = Enum.TextTruncate.AtEnd,
													Size = UDim2.new(v83[87], 0, 1, 0),
													LayoutOrder = 1,
													Parent = Frame7,
												}, { tbl18.Util.Grow() })

												local new3 = tbl18.Util.New

												local tbl26 = {
													Size = UDim2.fromOffset(0, 16),
													AutomaticSize = Enum.AutomaticSize.X,
													BackgroundTransparency = 0.4,
													BorderSizePixel = 0,
													LayoutOrder = v83[112],
													Parent = Frame7,
												}

												local tbl27 = {}
												local v110 = tbl18.Util.Corner(5)
												local v111 = tbl18.Util.Stroke(v83[58], 1, v83[27])
												local padding2 = tbl18.Util.Padding
												local v112 = v83[102]
												tbl27[1] = v110
												tbl27[2] = v111

												do
													local values = table.pack(padding2(0, 0, v112, 6))
													table.move(values, 1, values.n, 3, tbl27)
												end

												local Frame8 = new3("Frame", tbl26, tbl27)
												tbl18.Theme.Bind(Frame8, "BackgroundColor3", "SurfaceAlt")

												tbl18.Util.Label({
													Text = tbl18.Util.KeyName(bind.Key),
													TextSize = 10,
													Weight = tbl18.Layout.Weight.SemiBold,
													TextXAlignment = Enum.TextXAlignment.Center,
													AutomaticSize = Enum.AutomaticSize.X,
													Size = UDim2.fromOffset(v83[87], 16),
													Parent = Frame8,
												})

												table.insert(tbl25, Frame7)
											end
										end

										v109.Visible = n32 == v83[87]
									end

									local function fn43(arg2)
										flag21 = arg2

										if arg2 then
											fn42()
											CanvasGroup2.Visible = true
											tbl18.Util.Tween(CanvasGroup2, { Position = UDim2.new(v83[87], v83[88], 0.5, v83[87]), GroupTransparency = v83[87] }, 0.34)
										else
											tbl18.Util.Tween(CanvasGroup2, { Position = UDim2.new(0, -194, 0.5, 0), GroupTransparency = 1 }, 0.28, tbl18.Layout.Ease, tbl18.Layout.EaseIn)

											task.delay(0.3, function()
												if not flag21 then
													CanvasGroup2.Visible = v83[142]
												end
											end)
										end
									end

									tbl17:OnBindsChanged(function()
										if flag21 then
											fn42()
										end
									end)

									local v110 = tbl18.Tab.Create(tbl20, { Title = v83[71], Icon = v83[164], Internal = true })
									tbl20.GuiTab = v110
									local v111 = v110:Module({ Title = "Interface", Description = "Window behavior", Side = v83[86], Toggleable = false })

									v111:Toggle({
										Title = "Hide on minimized",
										Flag = "zenthra_hide_minimized",
										Default = false,
										Keybind = false,
										Callback = function(arg2)
											if arg2 and flag20 then
												fn41(false)
											end
										end,
									})

									v111:Toggle({
										Title = "Start minimized",
										Flag = "zenthra_start_minimized",
										Default = false,
										Keybind = v83[142],
									})

									v111:Toggle({
										Title = "Compact when minimized",
										Flag = "zenthra_compact_minimized",
										Default = v83[142],
										Keybind = false,
										Callback = function()
											tbl20:RefreshMinimized()
										end,
									})

									v111:Toggle({ Title = v83[84], Flag = v83[28], Default = false, Keybind = false, Callback = fn43 })

									local v112 = v111:Keybind({
										Title = "Toggle key",
										Flag = "zenthra_toggle_key",
										Default = tbl20.ToggleKey,
										Changed = function(toggleKey)
											tbl20.ToggleKey = toggleKey
										end,
									})

									if v112.Value then
										tbl20.ToggleKey = v112.Value
									end

									local v113 = v110:Module({ Title = "Notifications", Description = v83[74], Side = "Right", Toggleable = v83[142] })

									v113:Dropdown({
										Title = "Position",
										Flag = "zenthra_notify_position",
										Options = tbl17.NotifyPositions,
										Default = tbl18.Notify.GetPosition(),
										Callback = function(arg2)
											tbl18.Notify.SetPosition(arg2)
										end,
									})

									v113:Button({
										Title = v83[18],
										Callback = function()
											tbl17:Notify({ Title = "Zenthra", Text = "Sample notification in the selected corner.", Type = v83[4] })
										end,
									})

									v113:Button({
										Title = "Preview (Content)",
										Callback = function()
											tbl17:Notify({ Title = v83[14], Content = "Same toast using Content instead of Text.", Type = "info" })
										end,
									})

									pcall(function()
										tbl20.ModuleTransparency = tonumber(tbl18.State.Saved.gui_module_transparency) or v83[87]

										local function applyModuleTransparency(arg2)
											local moduleTransparency = math.clamp(tonumber(arg2) or 0, 0, 1)
											tbl20.ModuleTransparency = moduleTransparency
											local backgroundTransparency = v83[144] + 0.85 * moduleTransparency
											local v114 = v83[20]

											if type(tbl20.Tabs) == v114 then
												for _, tab in ipairs(tbl20.Tabs) do
													local modules = tab.Modules

													if type(modules) == "table" then
														for _, module in ipairs(modules) do
															local frame = module.Frame

															if frame and frame.Parent then
																frame.BackgroundTransparency = backgroundTransparency
															end
														end
													end
												end
											end

											if tbl20.Sidebar then
												tbl20.Sidebar.BackgroundTransparency = 0.35 + 0.65 * moduleTransparency
											end
										end

										tbl20.ApplyModuleTransparency = applyModuleTransparency

										local tbl26 = {
											{ Title = "Main color", Flag = "gui_theme_background", Key = "Background" },
											{ Title = "Secondary", Flag = "gui_theme_surface", Key = "Surface" },
											{ Title = "Accent", Flag = v83[174], Key = "Accent" },
											{ Title = "Stroke", Flag = "gui_theme_border", Key = "Border" },
											{ Title = "Text", Flag = v83[57], Key = "Text" },
											{ Title = "Subtext", Flag = v83[5], Key = "SubText" },
										}

										local v114 = v110:Module({ Title = "Appearance", Description = v83[200], Side = "Right", Toggleable = false })
										local tbl27 = {}

										for _, v115 in ipairs(tbl26) do
											tbl27[v115.Key] = v114:Colorpicker({
												Title = v115.Title,
												Flag = v115.Flag,
												Default = palette[v115.Key] or Color3.fromRGB(255, v83[77], 255),
												Callback = function(arg2)
													pcall(tbl18.Theme.Set, { [v115.Key] = arg2 })
												end,
											})
										end

										local v115 = v114:Slider({
											Title = "Module transparency",
											Flag = "gui_module_transparency",
											Min = 0,
											Max = 1,
											Decimals = 2,
											Default = v83[87],
											Callback = applyModuleTransparency,
										})

										v114:Button({
											Title = v83[145],
											Callback = function()
												pcall(tbl18.Theme.Reset)

												for _, v116 in ipairs(tbl26) do
													local v117 = tbl27[v116.Key]
													local v118 = palette[v116.Key]

													if v117 and v117.Set and v118 then
														pcall(v117.Set, v117, v118, true)
													end
												end

												if v115 and v115.Set then
													pcall(v115.Set, v115, 0)
												else
													applyModuleTransparency(0)
												end
											end,
										})

										task.defer(function()
											applyModuleTransparency(tbl17.Flags.gui_module_transparency)
										end)

										local media2 = tbl17.Media

										if media2 then
											local function fn44(arg2)
												media2.Apply(arg2 or tbl17.Flags.gui_background_image, tbl20)
											end

											local v116 = v110:Module({
												Title = "Background",
												Description = "Image, GIF or video via API",
												Side = "Left",
												Toggleable = false,
											})

											local v117 = v116:Dropdown({
												Title = v83[16],
												Flag = v83[188],
												Options = media2.List(),
												Default = tbl17.Flags.gui_background_image or "None",
												MaxVisible = v83[36],
												Callback = function(arg2)
													if type(arg2) == "table" then
														arg2 = arg2[v83[15]]
													end

													fn44(arg2)
												end,
											})

											v116:Slider({
												Title = v83[49],
												Flag = "gui_bg_image_opacity",
												Min = 0,
												Max = 1,
												Default = tonumber(tbl17.Flags.gui_bg_image_opacity) or 0.45,
												Decimals = 2,
												Callback = function(arg2)
													media2.SetOpacity(arg2, tbl20)
												end,
											})

											v116:Input({ Title = "Media URL", Flag = "gui_bg_url", Placeholder = "https://... or rbxassetid://" })
											v116:Input({ Title = "Save as", Flag = v83[54], Placeholder = "Name for the file" })

											v116:Button({
												Title = "Download and use",
												Callback = function()
													local guiBgUrl = tbl17.Flags.gui_bg_url
													if type(guiBgUrl) ~= "string" or guiBgUrl == "" then
														tbl17:Notify({ Title = v83[186], Content = "Paste a URL first", Type = "error", Duration = 3 })
														return
													end
													local guiBackgroundImage = guiBgUrl:gsub("^%s+", ""):gsub("%s+$", "")

													if guiBackgroundImage:match("^%d+$") then
														guiBackgroundImage = "rbxassetid://" .. guiBackgroundImage
													end

													if guiBackgroundImage:find("rbxassetid://", 1, true) then
														tbl17.Flags.gui_background_image = guiBackgroundImage
														pcall(tbl17.SaveConfig, tbl17)
														fn44(guiBackgroundImage)

														if v117 and v117.Set then
															pcall(v117.Set, v117, guiBackgroundImage)
														end

														tbl17:Notify({ Title = "Background", Content = "Applied", Type = "success", Duration = v83[112] })
														return
													end

													tbl17:Notify({ Title = "Background", Content = v83[134], Type = "info", Duration = 4 })

													task.spawn(function()
														local v118, v119 = media2.Save(guiBackgroundImage, tbl17.Flags.gui_bg_save_name)
														if not v118 then
															tbl17:Notify({ Title = v83[186], Content = tostring(v119), Type = "error", Duration = v83[45] })
															return
														end
														tbl17.Flags.gui_background_image = v119
														pcall(tbl17.SaveConfig, tbl17)
														fn44(v119)

														if v117 and v117.SetOptions then
															v117:SetOptions(media2.List())
															pcall(v117.Set, v117, v119)
														end

														tbl17:Notify({ Title = "Background", Content = "Applied: " .. tostring(v119), Type = "success", Duration = 3 })
													end)
												end,
											})

											v116:Button({
												Title = v83[1],
												Callback = function()
													if v117 and v117.SetOptions then
														v117:SetOptions(media2.List())
													end
												end,
											})

											local flag22 = false

											v116:Button({
												Title = "Delete Background",
												Callback = function()
													local guiBackgroundImage = tbl17.Flags.gui_background_image
													local v118 = v83[20]

													if type(guiBackgroundImage) == v118 then
														guiBackgroundImage = guiBackgroundImage[1]
													end

													if not guiBackgroundImage or guiBackgroundImage == "None" or guiBackgroundImage == "" then
														flag22 = false

														tbl17:Notify({
															Title = "Background",
															Content = "Select an image first",
															Type = "error",
															Duration = v83[89],
														})

														return
													end

													if not flag22 then
														flag22 = true

														tbl17:Notify({
															Title = v83[186],
															Content = "Are you sure? Click again to delete '" .. tostring(guiBackgroundImage) .. "'",
															Type = v83[100],
															Duration = 5,
														})

														task.delay(v83[45], function()
															flag22 = false
														end)

														return
													end

													flag22 = false
													local v119, v120 = media2.Delete(guiBackgroundImage)

													if v119 then
														tbl17.Flags.gui_background_image = "None"
														pcall(tbl17.SaveConfig, tbl17)
														media2.Stop(tbl20)

														if v117 and v117.SetOptions then
															v117:SetOptions(media2.List())
														end

														if v117 and v117.Set then
															pcall(v117.Set, v117, "None")
														end

														tbl17:Notify({
															Title = "Background",
															Content = "Deleted " .. tostring(v120),
															Type = v83[4],
															Duration = v83[89],
														})
													else
														tbl17:Notify({ Title = "Background", Content = tostring(v120), Type = "error", Duration = 4 })
													end
												end,
											})

											task.defer(function()
												media2.SetOpacity(tonumber(tbl17.Flags.gui_bg_image_opacity) or v83[161], tbl20)
												fn44()
											end)
										end
									end)

									local flag22 = tbl18.State.Saved.zenthra_start_minimized == true

									task.defer(function()
										if flag22 then
											tbl20.Open = false
											Frame.Visible = false
											ImageLabel.Visible = false
										else
											tbl20:SetVisible(true)
										end
									end)

									table.insert(tbl17.Windows, tbl20)
									return tbl20
								end

								do
									local function fn31(arg)
										return function(arg2, ...)
											if arg2 == tbl17 then
												return arg(...)
											end
											return arg(arg2, ...)
										end
									end

									tbl17.Window = fn31(function(arg)
										return tbl18.Window.Open(arg)
									end)

									tbl17.Notify = fn31(function(arg, arg2)
										return tbl18.Notify.Push(arg, arg2)
									end)

									tbl17.SetTheme = fn31(function(arg)
										return tbl18.Theme.Set(arg)
									end)

									tbl17.SetAccent = fn31(function(arg)
										return tbl18.Theme.SetAccent(arg)
									end)

									tbl17.ResetTheme = fn31(function()
										return tbl18.Theme.Reset()
									end)

									tbl17.SetNotifyPosition = fn31(function(arg)
										return tbl18.Notify.SetPosition(arg)
									end)

									tbl17.GetNotifyPosition = fn31(function()
										return tbl18.Notify.GetPosition()
									end)

									tbl17.OnBindsChanged = fn31(function(arg)
										return tbl18.Binds.OnChanged(arg)
									end)

									tbl17.SaveConfig = fn31(function()
										tbl18.Config.Save()
									end)

									tbl17.GetFlag = fn31(function(arg)
										return tbl17.Flags[arg]
									end)
								end
							end

							genv = getgenv()

							do
								local value = rawget(genv, "_ZenthraAOTR")

								if type(value) == "table" and type(value.Unload) == "function" then
									if not flag3 then
										return
									end
									pcall(value.Unload)
								end
							end
						end

						do
							local tbl19 = {
								State = {
									Connections = {},
									Tweens = {},
									TweenToken = 0,
									LastHit = 0,
									LastReload = 0,
									BladeCount = -1,
									BladeAt = 0,
									LastRefill = 0,
									SlashBusy = false,
									RefillBusy = false,
									Watched = nil,
									Miss = 0,
									Mark = "",
									Get = nil,
									Module = false,
									Farm = false,
									Fast = v83[142],
									FastAtk = false,
									NoAnim = false,
									Repair = false,
									Refill = v83[142],
									RetryModule = v83[142],
									Retry = false,
									LastRetry = 0,
									RetryCheck = 0,
									HealModule = false,
									Heal = false,
									LastHeal = 0,
									HealCheck = v83[87],
									HealFail = 0,
									MoveModule = false,
									WalkMult = 1,
									JumpMult = 1,
									Fly = false,
									FlySpeed = v83[126],
									FlyBV = nil,
									FlyAtt = nil,
									FlyHold = nil,
									FlyVel = nil,
									FlyKeys = {},
									WalkBase = nil,
									WalkApplied = nil,
									JumpBase = nil,
									JumpApplied = nil,
									JumpHBase = nil,
									JumpHApplied = nil,
									Safe = false,
									SafeOrigin = nil,
									SafeHold = nil,
									SafeChar = nil,
									Towers = false,
									TowerBusy = v83[142],
									LastTower = 0,
									TowerDone = false,
									TowerHold = nil,
									TowerCur = nil,
									Crates = false,
									CrateBusy = false,
									CrateHold = nil,
									LastCrate = 0,
									CrateDone = false,
								},
								Flag = {
									Module = v83[79],
									Farm = "aotr_farm_enabled",
									Mode = "aotr_farm_mode",
									Height = v83[109],
									Fast = "aotr_farm_fast",
									FastAtk = v83[47],
									NoAnim = "aotr_farm_noanim",
									Repair = "aotr_farm_repair",
									Refill = v83[10],
									Safe = "aotr_farm_safe",
									Towers = "aotr_farm_towers",
									Crates = "aotr_farm_crates",
									RetryModule = "aotr_retry_module",
									Retry = "aotr_retry_enabled",
									HealModule = "aotr_heal_module",
									Heal = "aotr_heal_enabled",
									MoveModule = v83[199],
									WalkMult = "aotr_walk_mult",
									JumpMult = v83[6],
									Fly = v83[46],
									FlySpeed = v83[153],
								},
								Actor = { Compiled = {} },
								Blades = {},
								Spears = {},
								Char = {},
								Target = {},
								Move = {},
								Loop = {},
								Retry = {},
								Heal = {},
								Player = {},
								Safe = {},
								Towers = {},
								Crates = {},
								UI = {},
							}

							local state = tbl19.State
							local flag18 = tbl19.Flag
							local players = tbl18.Services.Players
							local run = tbl18.Services.Run
							local tween = tbl18.Services.Tween
							local userInput = tbl18.Services.UserInput
							local localPlayer = tbl18.Services.LocalPlayer

							tbl19.Connect = function(arg, arg2)
								local ok, result = pcall(function()
									return arg:Connect(arg2)
								end)

								if ok and result then
									table.insert(state.Connections, result)
									return result
								end
							end

							tbl19.Unload = function()
								state.SlashBusy = false
								state.RefillBusy = false

								for _, connection in ipairs(state.Connections) do
									pcall(function()
										connection:Disconnect()
									end)
								end

								table.clear(state.Connections)

								for _, tween2 in ipairs(state.Tweens) do
									pcall(function()
										tween2:Cancel()
									end)
								end

								table.clear(state.Tweens)
								tbl19.Safe.Release()
								tbl19.Player.Stop()

								for _, window in ipairs(tbl17.Windows) do
									pcall(function()
										window:Destroy()
									end)
								end
							end

							tbl19.FlagOn = function(arg)
								return tbl17.Flags[arg] == true
							end

							tbl19.Loop.FarmOn = function()
								return (state.Module or tbl19.UI.Module and tbl19.UI.Module.Enabled == true) and (state.Farm or tbl19.FlagOn(flag18.Farm))
							end

							tbl19.Loop.FastOn = function()
								return state.Fast or tbl19.FlagOn(flag18.Fast)
							end

							tbl19.Loop.FastAtkOn = function()
								return state.FastAtk or tbl19.FlagOn(flag18.FastAtk)
							end

							tbl19.Loop.NoAnimOn = function()
								return state.NoAnim or tbl19.FlagOn(flag18.NoAnim)
							end

							tbl19.Loop.RepairOn = function()
								return (state.Module or tbl19.UI.Module and tbl19.UI.Module.Enabled == true) and (state.Repair or tbl19.FlagOn(flag18.Repair))
							end

							tbl19.Loop.RefillOn = function()
								return (state.Module or tbl19.UI.Module and tbl19.UI.Module.Enabled == v83[189]) and (state.Refill or tbl19.FlagOn(flag18.Refill))
							end

							tbl19.Loop.SafeOn = function()
								return (state.Module or tbl19.UI.Module and tbl19.UI.Module.Enabled == true) and (state.Safe or tbl19.FlagOn(flag18.Safe))
							end

							tbl19.Loop.TowersOn = function()
								return (state.Module or tbl19.UI.Module and tbl19.UI.Module.Enabled == true) and (state.Towers or tbl19.FlagOn(flag18.Towers))
							end

							tbl19.Loop.CratesOn = function()
								return (state.Module or tbl19.UI.Module and tbl19.UI.Module.Enabled == true) and (state.Crates or tbl19.FlagOn(flag18.Crates))
							end

							tbl19.Loop.Locked = function()
								return state.RefillBusy or state.TowerBusy or state.CrateBusy
							end

							tbl19.Loop.Mode = function()
								return v83[119]
							end

							tbl19.Loop.Height = function()
								local num = tonumber(tbl17.Flags[flag18.Height])
								if not num then
									return 22
								end
								return math.clamp(num, 12, 40)
							end

							tbl19.Actor.MuteLines = function()
								return {
									"local function mute()",
									"\tlocal char = host.Cache.Character",
									"\tlocal hum = char and char:FindFirstChildOfClass(\"Humanoid\")",
									"\tif hum then",
									"\t\tfor _, track in ipairs(hum:GetPlayingAnimationTracks()) do",
									"\t\t\tlocal n = track.Name",
									"\t\t\tif type(n) == \"string\" and (n:find(\"Hit\") or n:find(\"Slash\")) then",
									"\t\t\t\ttrack:Stop(0)",
									"\t\t\tend",
									"\t\tend",
									"\tend",
									"\tlocal anims = host.Cache.Animations",
									"\tif type(anims) == \"table\" then",
									"\t\tfor key, track in pairs(anims) do",
									"\t\t\tif type(key) == \"string\" and key:find(\"Hit\") then",
									"\t\t\t\tpcall(function() track:Stop(0) end)",
									"\t\t\tend",
									"\t\tend",
									"\tend",
									"\tlocal obj = host.Cache.Objects",
									"\tif obj then",
									"\t\tif obj.Left_Trail then obj.Left_Trail.Enabled = false end",
									"\t\tif obj.Right_Trail then obj.Right_Trail.Enabled = false end",
									"\t\tif obj.Left_Trail_2 then obj.Left_Trail_2.Enabled = false end",
									"\t\tif obj.Right_Trail_2 then obj.Right_Trail_2.Enabled = false end",
									"\tend",
									"end",
								}
							end

							tbl19.Actor.WindSrc = function()
								local tbl20 = {
									"local host = filtergc(\"table\", { Keys = { \"Loadout\", \"Cache\", \"Modules\" } }, true)",
									"if type(host) ~= \"table\" then return end",
									"local noAnim = ... == true",
									"host.Invoked = false",
									"local slash = host.Cache.Variables.Slash",
									"local effects = host.Modules.Effects",
								}

								for _, v86 in ipairs(tbl19.Actor.MuteLines()) do
									table.insert(tbl20, v86)
								end

								for _, v86 in ipairs({
									"if effects.Slash_State ~= false then",
									"\tif noAnim then",
									"\t\thost:Send(\"Attacks\", \"Slash\", false)",
									"\t\teffects.Slash_State = false",
									"\telse",
									"\t\teffects.Slash(host, false, true)",
									"\tend",
									"end",
									"slash.Slashing = false",
									"slash.Released = false",
									"slash.Holding = true",
									"slash.Cooldown = false",
									"slash.Continue = nil",
									"slash.Transition = nil",
									"slash.Combo = 0",
									"slash.Last = 0",
									"host.Modules.Zones.Hit = {}",
									"host.Modules.ODMG.M1(host, false)",
									"if noAnim then",
									"\tslash.Type = \"Silent\"",
									"\tmute()",
									"end",
								}) do
									table.insert(tbl20, v86)
								end

								return table.concat(tbl20, "\n")
							end

							tbl19.Actor.HitSrc = function()
								local tbl20 = {
									"local host = filtergc(\"table\", { Keys = { \"Loadout\", \"Cache\", \"Modules\" } }, true)",
									"if type(host) ~= \"table\" then return end",
									"local noAnim = ... == true",
									"local slash = host.Cache.Variables.Slash",
									"local effects = host.Modules.Effects",
									"local zones = host.Modules.Zones",
								}

								for _, v86 in ipairs(tbl19.Actor.MuteLines()) do
									table.insert(tbl20, v86)
								end

								for _, v86 in ipairs({
									"slash.Holding = false",
									"slash.Released = true",
									"slash.Slashing = true",
									"slash.Cooldown = false",
									"if noAnim then",
									"\tslash.Type = \"Silent\"",
									"end",
									"zones.Time_Difference = tick() - (slash.Last or tick())",
									"zones.Hit = {}",
									"if noAnim then",
									"\thost:Send(\"Attacks\", \"Slash\", true)",
									"\teffects.Slash_State = true",
									"\tmute()",
									"else",
									"\teffects.Slash_State = nil",
									"\teffects.Slash(host, true, true)",
									"end",
									"local titans = workspace:FindFirstChild(\"Titans\")",
									"if titans then",
									"\tfor _, model in ipairs(titans:GetChildren()) do",
									"\t\tif model:IsA(\"Model\") then",
									"\t\t\tlocal hum = model:FindFirstChildOfClass(\"Humanoid\")",
									"\t\t\tlocal boxes = model:FindFirstChild(\"Hitboxes\")",
									"\t\t\tlocal hit = boxes and boxes:FindFirstChild(\"Hit\")",
									"\t\t\tlocal nape = hit and hit:FindFirstChild(\"Nape\")",
									"\t\t\tif hum and nape and nape:IsA(\"BasePart\") and hum.Health > 0 then",
									"\t\t\t\thost:Send(\"Hitboxes\", \"Register\", nape, 220, 0.04)",
									"\t\t\tend",
									"\t\tend",
									"\tend",
									"end",
									"slash.Slashing = false",
									"slash.Cooldown = false",
									"if noAnim then",
									"\tmute()",
									"\ttask.spawn(function()",
									"\t\tfor _ = 1, 10 do",
									"\t\t\tmute()",
									"\t\t\ttask.wait()",
									"\t\tend",
									"\tend)",
									"end",
								}) do
									table.insert(tbl20, v86)
								end

								return table.concat(tbl20, "\n")
							end

							tbl19.Actor.FastSrc = function()
								local tbl20 = {
									"local host = filtergc(\"table\", { Keys = { \"Loadout\", \"Cache\", \"Modules\" } }, true)",
									"if type(host) ~= \"table\" then return end",
									"local noAnim = ... == true",
									"host.Invoked = false",
									"local slash = host.Cache.Variables.Slash",
									"local effects = host.Modules.Effects",
									"local zones = host.Modules.Zones",
								}

								for _, v86 in ipairs(tbl19.Actor.MuteLines()) do
									table.insert(tbl20, v86)
								end

								for _, v86 in ipairs({
									"if effects.Slash_State ~= false then",
									"\tif noAnim then",
									"\t\thost:Send(\"Attacks\", \"Slash\", false)",
									"\t\teffects.Slash_State = false",
									"\telse",
									"\t\teffects.Slash(host, false, true)",
									"\tend",
									v83[187],
									"slash.Slashing = false",
									"slash.Released = false",
									"slash.Holding = true",
									"slash.Cooldown = false",
									"slash.Continue = nil",
									"slash.Transition = nil",
									"slash.Wait = false",
									"slash.Combo = 0",
									"slash.Last = 0",
									"zones.Hit = {}",
									"host.Modules.ODMG.M1(host, false)",
									"if noAnim then",
									"\tslash.Type = \"Silent\"",
									"\tmute()",
									"end",
									"task.wait(0.028)",
									"slash.Holding = false",
									"slash.Released = true",
									"slash.Slashing = true",
									"slash.Cooldown = false",
									"if noAnim then",
									"\tslash.Type = \"Silent\"",
									v83[187],
									"zones.Time_Difference = tick() - (slash.Last or tick())",
									"zones.Hit = {}",
									"if noAnim then",
									"\thost:Send(\"Attacks\", \"Slash\", true)",
									"\teffects.Slash_State = true",
									"\tmute()",
									"else",
									"\teffects.Slash_State = nil",
									"\teffects.Slash(host, true, true)",
									"end",
									"local titans = workspace:FindFirstChild(\"Titans\")",
									"if titans then",
									"\tfor _, model in ipairs(titans:GetChildren()) do",
									"\t\tif model:IsA(\"Model\") then",
									"\t\t\tlocal hum = model:FindFirstChildOfClass(\"Humanoid\")",
									"\t\t\tlocal boxes = model:FindFirstChild(\"Hitboxes\")",
									"\t\t\tlocal hit = boxes and boxes:FindFirstChild(\"Hit\")",
									"\t\t\tlocal nape = hit and hit:FindFirstChild(\"Nape\")",
									"\t\t\tif hum and nape and nape:IsA(\"BasePart\") and hum.Health > 0 then",
									"\t\t\t\thost:Send(\"Hitboxes\", \"Register\", nape, 220, zones.Time_Difference)",
									"\t\t\tend",
									"\t\tend",
									"\tend",
									"end",
									"slash.Slashing = false",
									"slash.Cooldown = false",
									"if noAnim then",
									"\tmute()",
									"\ttask.spawn(function()",
									"\t\tfor _ = 1, 10 do",
									"\t\t\tmute()",
									"\t\t\ttask.wait()",
									"\t\tend",
									"\tend)",
									"end",
								}) do
									table.insert(tbl20, v86)
								end

								return table.concat(tbl20, "\n")
							end

							tbl19.Actor.RefillSrc = function()
								return table.concat({
									"local host = filtergc(\"table\", { Keys = { \"Loadout\", \"Cache\", \"Modules\" } }, true)",
									"if type(host) ~= \"table\" then return end",
									"local station = ...",
									"host.Invoked = false",
									"host.Cache.Variables.Full_Reload = false",
									"host.Cache.Variables.Reload = false",
									"if typeof(station) == \"Instance\" then",
									"\thost.Modules.Zones.Refill_Station = station",
									"\thost:Send(\"Attacks\", \"Reload\", station)",
									v83[187],
									"pcall(function() host:Invoke(\"Blades\", \"Reload\") end)",
								}, "\n")
							end

							tbl19.Actor.SpearSrc = function()
								return table.concat({
									"local host = filtergc(\"table\", { Keys = { \"Loadout\", \"Cache\", \"Modules\" } }, true)",
									"if type(host) ~= \"table\" then return end",
									"local name, already = ...",
									"if type(name) ~= \"string\" or name == \"\" then return end",
									"host.Invoked = false",
									"if already ~= true then",
									"\tpcall(function() host:Invoke(\"Spears\", \"S_Fire\", name) end)",
									"\thost.Invoked = false",
									v83[187],
									"local zones = host.Modules.Zones",
									"if zones then",
									"\tzones.Time_Difference = 2.5",
									"\tzones.Hit = {}",
									"end",
									"local titans = workspace:FindFirstChild(\"Titans\")",
									"if not titans then return end",
									"for _, model in ipairs(titans:GetChildren()) do",
									"\tif model:IsA(\"Model\") then",
									"\t\tlocal hum = model:FindFirstChildOfClass(\"Humanoid\")",
									"\t\tlocal boxes = model:FindFirstChild(\"Hitboxes\")",
									"\t\tlocal hit = boxes and boxes:FindFirstChild(\"Hit\")",
									"\t\tlocal nape = hit and hit:FindFirstChild(\"Nape\")",
									"\t\tif hum and nape and nape:IsA(\"BasePart\") and hum.Health > 0 then",
									"\t\t\thost:Send(\"Spears\", \"S_Explode\", nape.Position, 2.5)",
									"\t\tend",
									"\tend",
									"end",
								}, "\n")
							end

							tbl19.Actor.RetrySrc = function()
								return table.concat({
									"local host = filtergc(\"table\", { Keys = { \"Loadout\", \"Cache\", \"Modules\" } }, true)",
									"if type(host) ~= \"table\" then return end",
									"host.Invoked = false",
									"pcall(function() host:Invoke(\"Functions\", \"Retry\", \"Add\") end)",
								}, "\n")
							end

							tbl19.Actor.HealSrc = function()
								return table.concat({
									"local host = filtergc(\"table\", { Keys = { \"Loadout\", \"Cache\", \"Modules\" } }, true)",
									"if type(host) ~= \"table\" then return end",
									"local name = ...",
									"if type(name) ~= \"string\" or name == \"\" then return end",
									"host.Invoked = false",
									"pcall(function() host:Invoke(\"Equipment\", \"Injury\", name) end)",
								}, "\n")
							end

							tbl19.Actor.TowerReadSrc = function()
								return table.concat({
									"local host = filtergc(\"table\", { Keys = { \"Loadout\", \"Cache\", \"Modules\" } }, true)",
									"if type(host) ~= \"table\" then return end",
									"local slot = host.Cache.Data.Slots[host.Cache.Data.Current_Slot]",
									"local quest = slot and slot.Quests and slot.Quests.Spears and slot.Quests.Spears[1]",
									"local current = quest and tonumber(quest.Current) or -1",
									"local rewarded = quest and quest.Rewarded == true",
									"host.Cache.Character:SetAttribute(\"AOTR_TowerCur\", current)",
									"host.Cache.Character:SetAttribute(\"AOTR_TowerRew\", rewarded and 1 or 0)",
								}, "\n")
							end

							tbl19.Actor.TowerArmSrc = function()
								return table.concat({
									"local host = filtergc(\"table\", { Keys = { \"Loadout\", \"Cache\", \"Modules\" } }, true)",
									"if type(host) ~= \"table\" then return end",
									"local name = ...",
									"if type(name) ~= \"string\" then return end",
									"local fn = host.Modules.Questline and host.Modules.Questline.Watch_Towers",
									"if type(fn) ~= \"function\" then return end",
									"local doneMap = getupvalue(fn, 3)",
									"local pieceMap = getupvalue(fn, 4)",
									"local tower = workspace:FindFirstChild(name)",
									"if not tower then return end",
									"tower:AddTag(\"TS_Towers\")",
									"setupvalue(fn, 1, false)",
									"setupvalue(fn, 2, 0)",
									"host.Invoked = false",
									"local pieces = type(pieceMap) == \"table\" and pieceMap[tower]",
									"if type(pieces) == \"table\" then",
									"\tlocal done = type(doneMap) == \"table\" and doneMap[tower]",
									"\tif type(done) ~= \"table\" then",
									"\t\tdone = {}",
									"\t\tdoneMap[tower] = done",
									"\tend",
									"\tfor _, part in ipairs(pieces) do",
									"\t\tif table.find(done, part) == nil then",
									"\t\t\ttable.insert(done, part)",
									"\t\tend",
									"\tend",
									"end",
								}, "\n")
							end

							tbl19.Actor.Init = function()
								tbl19.Actor.Compiled.Wind = tbl19.Actor.WindSrc()
								tbl19.Actor.Compiled.Hit = tbl19.Actor.HitSrc()
								tbl19.Actor.Compiled.Fast = tbl19.Actor.FastSrc()
								tbl19.Actor.Compiled.Spear = tbl19.Actor.SpearSrc()
								tbl19.Actor.Compiled.Refill = tbl19.Actor.RefillSrc()
								tbl19.Actor.Compiled.Retry = tbl19.Actor.RetrySrc()
								tbl19.Actor.Compiled.Heal = tbl19.Actor.HealSrc()
								tbl19.Actor.Compiled.TowerRead = tbl19.Actor.TowerReadSrc()
								tbl19.Actor.Compiled.TowerArm = tbl19.Actor.TowerArmSrc()
							end

							tbl19.Actor.Run = function(arg, arg2, ...)
								if not arg or type(arg2) ~= "string" then
									return
								end
								local v86 = pcall
								local v87 = run_on_actor
								local v88 = table.pack(...)
								v88.n = 4 + v88.n - 1
								table.move(v88, 1, v88.n, 4, v88)
								v88[1] = v87
								v88[2] = arg
								v88[3] = arg2
								v86(table.unpack(v88, 1, v88.n))
							end

							tbl19.Actor.Wind = function(arg, arg2)
								tbl19.Actor.Run(arg, tbl19.Actor.Compiled.Wind, arg2 == true)
							end

							tbl19.Actor.Hit = function(arg, arg2)
								tbl19.Actor.Run(arg, tbl19.Actor.Compiled.Hit, arg2 == true)
							end

							tbl19.Actor.Fast = function(arg, arg2)
								tbl19.Actor.Run(arg, tbl19.Actor.Compiled.Fast, arg2 == true)
							end

							tbl19.Retry.On = function()
								return (state.RetryModule or tbl19.UI.Retry and tbl19.UI.Retry.Enabled == true) and (state.Retry or tbl19.FlagOn(flag18.Retry))
							end

							tbl19.Retry.Screen = function()
								local playerGui = localPlayer and localPlayer:FindFirstChild("PlayerGui")
								playerGui = playerGui and playerGui:FindFirstChild("Interface")
								if not playerGui then
									return
								end
								local rewards = playerGui:FindFirstChild("Rewards") or playerGui:FindFirstChild("Rewards", true)
								if not rewards then
									return
								end
								local retry = rewards:FindFirstChild("Retry", v83[189])

								if retry and retry:IsA("GuiObject") then
									local visible = retry.Visible
									local parent = retry.Parent

									while true do
										if visible and parent and parent ~= playerGui then
											if parent:IsA("GuiObject") and parent.Visible == v83[142] then
												visible = false
												break
											else
												parent = parent.Parent
												continue
											end
										end

										break
									end

									if visible then
										return retry
									end
								end

								if rewards:IsA("GuiObject") and rewards.Visible then
									return rewards
								end
							end

							tbl19.Retry.Fire = function()
								local now2 = os.clock()
								if now2 - state.LastRetry < v83[89] then
									return
								end
								state.LastRetry = now2
								local v86 = tbl19.Blades.Remote()

								if v86 then
									pcall(function()
										v86:InvokeServer("Functions", "Retry", "Add")
									end)

									return
								end

								local actor = tbl19.Char.Get()
								actor = actor and actor:FindFirstChild("Actor")

								if actor then
									tbl19.Actor.Run(actor, tbl19.Actor.Compiled.Retry)
								end
							end

							tbl19.Retry.Tick = function()
								if not tbl19.Retry.On() then
									return
								end
								local now2 = os.clock()
								if now2 - state.RetryCheck < 0.45 then
									return
								end
								state.RetryCheck = now2

								if tbl19.Retry.Screen() then
									tbl19.Retry.Fire()
								end
							end

							tbl19.Heal.On = function()
								return (state.HealModule or tbl19.UI.Heal and tbl19.UI.Heal.Enabled == true) and (state.Heal or tbl19.FlagOn(flag18.Heal))
							end

							tbl19.Heal.List = function(arg)
								arg = arg and arg:FindFirstChild("Injuries")
								if not arg then
									return {}
								end
								local tbl20 = {}

								for _, child in ipairs(arg:GetChildren()) do
									local name = child.Name

									if name ~= "Gear" and (name == "Arm" or name == "Leg" or name == "Head" or name == "Eyes" or name == "Ribcage") then
										local v86 = v83[142]

										if child:GetAttribute("Active") ~= v86 then
											table.insert(tbl20, name)
										end
									end
								end

								return tbl20
							end

							tbl19.Heal.Fire = function(arg)
								local now2 = os.clock()
								if now2 - state.LastHeal < 0.85 or now2 - state.HealFail < 4 then
									return
								end
								state.LastHeal = now2
								local v86 = tbl19.Blades.Remote()

								if v86 then
									pcall(function()
										v86:InvokeServer("Equipment", "Injury", arg)
									end)

									local injuries = tbl19.Char.Get()
									injuries = injuries and injuries:FindFirstChild("Injuries")
									injuries = injuries and injuries:FindFirstChild(arg)

									if injuries and injuries:GetAttribute("Active") ~= false then
										state.HealFail = now2
									end

									return
								end

								local actor = tbl19.Char.Get()
								actor = actor and actor:FindFirstChild("Actor")

								if actor then
									tbl19.Actor.Run(actor, tbl19.Actor.Compiled.Heal, arg)
								end
							end

							tbl19.Heal.Tick = function()
								if not tbl19.Heal.On() then
									return
								end
								local now2 = os.clock()
								if now2 - state.HealCheck < 0.5 then
									return
								end
								state.HealCheck = now2
								local v86 = tbl19.Heal.List(tbl19.Char.Get())

								if v86[v83[15]] then
									tbl19.Heal.Fire(v86[1])
								end
							end

							tbl19.Blades.Remote = function()
								if state.Get and state.Get.Parent then
									return state.Get
								end
								local assets = game:GetService("ReplicatedStorage"):FindFirstChild("Assets")
								assets = assets and assets:FindFirstChild("Remotes")
								state.Get = assets and assets:FindFirstChild("GET")
								return state.Get
							end

							tbl19.Blades.Intact = function(arg)
								local now2 = os.clock()
								if state.BladeCount >= 0 and now2 - state.BladeAt < 0.25 then
									return state.BladeCount
								end
								local v86 = v83[87]
								local v87 = arg:FindFirstChild("Rig_" .. (localPlayer and localPlayer.Name or "")) or arg

								for _, descendant in ipairs(v87:GetDescendants()) do
									if string.match(descendant.Name, "^Blade_") and descendant:GetAttribute("Broken") == nil then
										v86 += v83[15]
									end
								end

								state.BladeCount = v86
								state.BladeAt = now2
								return v86
							end

							tbl19.Blades.Spares = function(arg)
								local v86 = arg:FindFirstChild("Rig_" .. (localPlayer and localPlayer.Name or ""))
								if not v86 then
									return 0
								end
								local n32 = 0

								for i = 1, 3 do
									local v87 = v86:FindFirstChild("Left_" .. i, true)
									local v88 = v86:FindFirstChild("Right_" .. i, true)

									if v87 and v88 and v87:GetAttribute("Used") == nil then
										n32 += 1
									end
								end

								return n32
							end

							tbl19.Blades.Station = function(arg)
								local v86 = nil
								local v87 = nil

								local function fn31(arg2)
									if typeof(arg2) ~= "Instance" or not arg2:IsA("BasePart") or not arg2.Parent then
										return
									end
									local magnitude = (arg2.Position - arg).Magnitude

									if not v87 or magnitude < v87 then
										v86 = arg2
										v87 = magnitude
									end
								end

								local function fn32(arg2)
									if not arg2 then
										return
									end

									pcall(function()
										for _, descendant in ipairs(arg2:GetDescendants()) do
											if descendant.Name == "Refill" and descendant:IsA("BasePart") then
												fn31(descendant)
											end
										end
									end)
								end

								local climbable = workspace:FindFirstChild("Climbable")
								fn32(climbable and climbable:FindFirstChild("_Walls"))
								fn32(workspace:FindFirstChild("Unclimbable"))
								fn32(workspace:FindFirstChild("Waves"))
								fn32(workspace:FindFirstChild("Points"))

								if not v86 then
									fn32(climbable)
								end

								return v86
							end

							tbl19.Blades.Snap = function(arg, cFrame)
								if not arg or not cFrame then
									return
								end

								pcall(function()
									arg.AssemblyLinearVelocity = Vector3.zero
									arg.AssemblyAngularVelocity = Vector3.zero
									arg.CFrame = cFrame
								end)
							end

							tbl19.Blades.Refill = function(arg)
								if state.RefillBusy then
									return v83[142]
								end
								local now2 = os.clock()

								if now2 - state.LastRefill < 2.4 then
									if tbl19.Spears.Using(arg) then
										return tbl19.Spears.Ready(arg)
									end
									return tbl19.Blades.Intact(arg) > 0
								end

								local v86 = tbl19.Char.Root(arg)
								if not v86 then
									return false
								end
								local v87 = tbl19.Blades.Station(v86.Position)
								local actor = arg:FindFirstChild("Actor")
								local v88 = tbl19.Blades.Remote()
								if not actor and not v88 then
									return false
								end
								local num = tonumber(localPlayer and localPlayer:GetAttribute("Refills")) or v83[87]

								if v87 and v87.Parent then
									local num2 = tonumber(v87.Parent:GetAttribute("Refills"))

									if num2 ~= nil then
										num = num2
									end
								end

								state.RefillBusy = true
								state.LastRefill = now2
								local safeHold

								if tbl19.Loop.SafeOn() and state.SafeHold then
									safeHold = state.SafeHold
								else
									safeHold = v86.CFrame
								end

								local flag19

								if v87 and num > 0 then
									flag19 = false

									if v83[124] < (v86.Position - v87.Position).Magnitude then
										tbl19.Blades.Snap(v86, CFrame.new(v87.Position + Vector3.new(v83[87], v83[45], 0)))
										task.wait(0.12)
										flag19 = true
									end

									local hitbox = arg:FindFirstChild("Hitbox")

									if hitbox then
										pcall(firetouchinterest, hitbox, v87, true)
									end

									if actor then
										tbl19.Actor.Run(actor, tbl19.Actor.Compiled.Refill, v87)
									end

									if v88 then
										pcall(function()
											v88:InvokeServer("Blades", "Reload")
										end)

										local post = v88.Parent and v88.Parent:FindFirstChild("POST")

										if post then
											pcall(function()
												post:FireServer("Attacks", "Reload", v87)
											end)
										end
									end

									task.wait(0.45)

									if hitbox then
										pcall(firetouchinterest, hitbox, v87, false)
									end
								else
									flag19 = false

									if v88 then
										pcall(function()
											v88:InvokeServer("Blades", "Reload")
										end)
									end
								end

								if flag19 and safeHold then
									tbl19.Blades.Snap(v86, safeHold)
								end

								state.BladeCount = -v83[15]
								state.RefillBusy = false
								if tbl19.Spears.Using(arg) then
									return tbl19.Spears.Ready(arg)
								end
								local v89 = v83[87]
								return tbl19.Blades.Intact(arg) > v89
							end

							tbl19.Spears.Using = function(arg)
								if localPlayer and localPlayer:GetAttribute("Weapon") == "Spears" then
									return true
								end
								return arg ~= nil and arg:GetAttribute("Weapon") == "Spears"
							end

							tbl19.Spears.Ammo = function(arg)
								return tonumber(arg and arg:GetAttribute("Spears")) or v83[87]
							end

							tbl19.Spears.List = function(arg, arg2)
								if 6104 >= n28(4339) then
									arg2 = arg2 or v83[15]
									local tbl20 = {}
									local tbl21 = {}
									local tbl22 = {}

									if arg then
										for _, descendant in ipairs(arg:GetDescendants()) do
											if descendant.Name == "Spears" then
												local parent = descendant.Parent

												if parent then
													parent = parent.Name == "LeftLowerArm" or parent.Name == "RightLowerArm"
												end

												if parent then
													for i = 1, 8 do
														local v86 = descendant:FindFirstChild(tostring(i))

														if v86 and not tbl22[v86.Name] then
															tbl22[v86.Name] = true

															if v86:GetAttribute("Used") == nil then
																table.insert(tbl20, v86.Name)
															else
																table.insert(tbl21, v86.Name)
															end
														end
													end
												end
											end
										end
									end

									local tbl23 = {}

									for _, v86 in ipairs(tbl20) do
										table.insert(tbl23, v86)
										if arg2 <= #tbl23 then
											return tbl23
										end
									end

									for _, v86 in ipairs(tbl21) do
										table.insert(tbl23, v86)
										if arg2 <= #tbl23 then
											return tbl23
										end
									end

									if #tbl23 == 0 and tbl19.Spears.Using(arg) then
										table.insert(tbl23, "1")
									end

									return tbl23
								end

								while true do
								end
							end

							tbl19.Spears.Ready = function(arg)
								return #tbl19.Spears.List(arg, 1) > 0
							end

							tbl19.Spears.HasUnused = function(arg)
								if not arg then
									return v83[142]
								end

								for _, descendant in ipairs(arg:GetDescendants()) do
									if descendant.Name ~= "Spears" then
										continue
									end
									local parent = descendant.Parent

									if parent then
										parent = parent.Name == "LeftLowerArm" or parent.Name == "RightLowerArm"
									end

									if parent then
										for i = 1, 8 do
											local v86 = descendant:FindFirstChild(tostring(i))
											if v86 and v86:GetAttribute("Used") == nil then
												return v83[189]
											end
										end
									end
								end

								return false
							end

							tbl19.Spears.Volley = function(arg, arg2)
								local v86 = tbl19.Spears.List(arg, 1)
								if #v86 == 0 then
									return v83[142]
								end
								local v87 = v86[1]
								local response2 = nil
								local v88 = tbl19.Blades.Remote()

								if v88 then
									pcall(function()
										response2 = v88:InvokeServer("Spears", "S_Fire", v87)
									end)
								end

								tbl19.Actor.Run(arg2, tbl19.Actor.Compiled.Spear, v87, response2 ~= nil and response2 ~= false)
								return v83[189]
							end

							tbl19.Blades.Ensure = function(arg)
								if tbl19.Spears.Using(arg) then
									if tbl19.Loop.RefillOn() and tbl19.Spears.Ammo(arg) <= 0 and not tbl19.Spears.HasUnused(arg) then
										tbl19.Blades.Refill(arg)
									end

									return tbl19.Spears.Ready(arg)
								end

								if tbl19.Blades.Intact(arg) > 0 then
									return true
								end

								if tbl19.Loop.RepairOn() then
									local now2 = os.clock()

									if now2 - state.LastReload >= 1.25 then
										state.LastReload = now2
										local v86 = tbl19.Blades.Remote()

										if v86 then
											pcall(function()
												v86:InvokeServer("Blades", "Reload")
											end)
										end

										state.BladeCount = -1
									end

									if v83[87] < tbl19.Blades.Intact(arg) then
										return true
									end
								end

								if tbl19.Loop.RefillOn() and tbl19.Blades.Spares(arg) == 0 then
									return tbl19.Blades.Refill(arg)
								end
								local v86 = v83[87]
								return tbl19.Blades.Intact(arg) > v86
							end

							tbl19.Char.Get = function()
								local characters = workspace:FindFirstChild("Characters")

								if characters and localPlayer then
									local v86 = characters:FindFirstChild(localPlayer.Name)
									if v86 then
										return v86
									end
								end

								return localPlayer and localPlayer.Character
							end

							tbl19.Char.Root = function(arg)
								local humanoidRootPart = arg or tbl19.Char.Get()

								if humanoidRootPart then
									humanoidRootPart = humanoidRootPart:FindFirstChild("HumanoidRootPart") or humanoidRootPart.PrimaryPart
								end

								return humanoidRootPart
							end

							tbl19.Safe.Clear = function()
								if n26(1225) <= 9829 then
									state.SafeOrigin = nil
									state.SafeHold = nil
									state.SafeChar = nil
								else
									while v83[189] do
									end
								end
							end

							tbl19.Safe.Release = function(arg)
								if n26(2941) < 12579 then
									local safeOrigin = state.SafeOrigin
									tbl19.Safe.Clear()
									arg = arg or tbl19.Char.Root()
									if not safeOrigin or not arg or not arg.Parent then
										return
									end

									pcall(function()
										arg.AssemblyLinearVelocity = Vector3.zero
										arg.AssemblyAngularVelocity = Vector3.zero
										arg.CFrame = safeOrigin
									end)

									return
								end

								while true do
								end
							end

							tbl19.Safe.Park = function(arg, safeChar)
								if not arg then
									return
								end

								if not state.SafeOrigin then
									state.SafeOrigin = arg.CFrame
								end

								state.SafeChar = safeChar
								local safeOrigin = state.SafeOrigin
								local position = safeOrigin.Position
								state.SafeHold = CFrame.new(position.X, position.Y + 480, position.Z) * (safeOrigin - safeOrigin.Position)
							end

							tbl19.Safe.Hold = function(arg, arg2)
								local safeHold = state.SafeHold
								if not safeHold or not arg then
									return
								end

								pcall(function()
									arg.AssemblyLinearVelocity = Vector3.zero
									arg.AssemblyAngularVelocity = Vector3.zero
									arg.CFrame = safeHold

									if arg2 then
										arg2.WalkSpeed = 0
										arg2.JumpPower = 0
										arg2.JumpHeight = 0
									end
								end)
							end

							tbl19.Safe.Tick = function()
								if tbl19.Loop.Locked() then
									return
								end
								local v86 = tbl19.Char.Get()
								local v87 = tbl19.Char.Root(v86)
								local humanoid = v86 and v86:FindFirstChildOfClass("Humanoid")

								if not tbl19.Loop.SafeOn() then
									if state.SafeOrigin then
										tbl19.Safe.Release(v87)
									end

									return
								end

								if not v86 or not v87 or not humanoid or humanoid.Health <= v83[87] then
									tbl19.Safe.Clear()
									return
								end

								if state.SafeChar ~= v86 then
									if 8400 >= n25 then
										while true do
										end
									else
										state.SafeOrigin = nil
										state.SafeHold = nil
									end
								end

								if not state.SafeHold then
									tbl19.Safe.Park(v87, v86)
								end

								tbl19.Safe.Hold(v87, humanoid)
							end

							tbl19.Towers.Folder = function()
								local thunderSpearWatchTowers = game:GetService("ReplicatedStorage"):FindFirstChild("ThunderSpear_WatchTowers")
								if thunderSpearWatchTowers then
									return thunderSpearWatchTowers
								end
								local folder = Instance.new("Folder")
								folder.Name = "ThunderSpear_WatchTowers"
								folder.Parent = game:GetService("ReplicatedStorage")
								return folder
							end

							tbl19.Towers.Pad = function(arg)
								if not arg then
									return
								end
								local circle = arg:FindFirstChild("Circle")
								local primaryPart = arg.PrimaryPart or circle and (circle.PrimaryPart or circle:FindFirstChild("Hitbox")) or arg:FindFirstChild("Hitbox", true)
								if primaryPart and primaryPart:IsA("BasePart") then
									return primaryPart
								end
							end

							tbl19.Towers.Find = function(arg)
								local str8 = "WatchTower_" .. tostring(arg)
								local v86 = workspace:FindFirstChild(str8)
								if v86 then
									return v86
								end
								local v87 = tbl19.Towers.Folder()
								return v87 and v87:FindFirstChild(str8)
							end

							tbl19.Towers.ParkOthers = function(arg)
								local v86 = tbl19.Towers.Folder()

								for i = 1, v83[89] do
									if i ~= arg then
										local v87 = workspace:FindFirstChild("WatchTower_" .. i)

										if v87 and v86 then
											pcall(function()
												v87:RemoveTag("TS_Towers")
												v87.Parent = v86
											end)
										end
									end
								end
							end

							tbl19.Towers.Actor = function(arg)
								return arg and arg:FindFirstChild("Actor")
							end

							tbl19.Towers.Poll = function(arg)
								local v86 = arg or tbl19.Char.Get()
								local v87 = tbl19.Towers.Actor(v86)
								if not v87 or not tbl19.Actor.Compiled.TowerRead then
									return state.TowerCur
								end
								v86:SetAttribute("AOTR_TowerCur", nil)
								tbl19.Actor.Run(v87, tbl19.Actor.Compiled.TowerRead)
								local now2 = os.clock()
								local towerCur

								while true do
									task.wait(0.05)
									towerCur = tonumber(v86:GetAttribute("AOTR_TowerCur"))
									if not (towerCur ~= nil or os.clock() - now2 > 0.6) then
										continue
									end
									break
								end

								if towerCur and towerCur >= 0 then
									state.TowerCur = towerCur
								end

								return towerCur
							end

							tbl19.Towers.Arm = function(arg, arg2)
								local v86 = tbl19.Towers.Actor(arg)

								if v86 and tbl19.Actor.Compiled.TowerArm then
									tbl19.Actor.Run(v86, tbl19.Actor.Compiled.TowerArm, arg2)
								end
							end

							tbl19.Towers.Inside = function(arg, arg2)
								if not arg or not arg2 then
									return false
								end
								return (arg.Position - arg2.Position).Magnitude <= math.max(arg2.Size.X, arg2.Size.Z) / 2 - 4
							end

							tbl19.Towers.Run = function()
								local v86 = tbl19.Char.Get()
								local v87 = tbl19.Char.Root(v86)
								local humanoid = v86 and v86:FindFirstChildOfClass("Humanoid")

								if not v86 or not v87 or not humanoid or humanoid.Health <= 0 then
									state.TowerHold = nil
									state.TowerBusy = false
									return
								end

								local safeHold

								if tbl19.Loop.SafeOn() and state.SafeHold then
									safeHold = state.SafeHold
								else
									safeHold = v87.CFrame
								end

								local towerCur = tbl19.Towers.Poll(v86)

								if towerCur and towerCur >= 3 then
									state.TowerDone = true
									state.TowerHold = nil
									state.TowerBusy = false
									return
								end

								local v88 = v83[194]

								if type(towerCur) ~= v88 or towerCur < 0 then
									towerCur = state.TowerCur or 0
								end

								while true do
									if tbl19.Loop.TowersOn() and towerCur < 3 then
										local n32 = towerCur + 1
										tbl19.Towers.ParkOthers(n32)
										local v89 = tbl19.Towers.Find(n32)
										local v90 = tbl19.Towers.Pad(v89)

										if v90 then
											local cframe = CFrame.new(v90.Position + Vector3.new(0, 4, 0))
											state.TowerHold = cframe
											local flag19 = v83[142]
											local now2 = os.clock()
											local flag20 = v83[142]

											while true do
												if tbl19.Loop.TowersOn() and os.clock() - now2 < 8 then
													v87 = tbl19.Char.Root(v86) or v87
													tbl19.Blades.Snap(v87, cframe)

													if not flag19 and tbl19.Towers.Inside(v87, v90) then
														tbl19.Towers.Arm(v86, v89.Name)
														flag19 = true
													end

													task.wait(0.08)
													local v91 = tbl19.Towers.Poll(v86)

													if type(v91) == "number" and v91 > towerCur then
														flag20 = true
														towerCur = v91
														break
													else
														continue
													end
												end

												break
											end

											if flag20 then
												continue
											end
										end
									end

									break
								end

								state.TowerHold = nil

								if safeHold then
									tbl19.Blades.Snap(v87, safeHold)
								end

								if towerCur >= 3 then
									state.TowerDone = true
								end

								state.TowerBusy = v83[142]
							end

							tbl19.Towers.Tick = function()
								if not tbl19.Loop.TowersOn() or state.TowerDone or state.TowerBusy or state.RefillBusy or state.CrateBusy then
									return
								end
								local now2 = os.clock()
								if now2 - state.LastTower < 1.6 then
									return
								end
								local v86 = tbl19.Char.Get()
								local v87 = tbl19.Char.Root(v86)
								local humanoid = v86 and v86:FindFirstChildOfClass("Humanoid")
								if not v86 or not v87 or not humanoid or humanoid.Health <= 0 then
									return
								end
								state.TowerBusy = true
								state.LastTower = now2

								task.spawn(function()
									tbl19.Towers.Run()
								end)
							end

							tbl19.Crates.Circle = function()
								local tagged = game:GetService("CollectionService"):GetTagged("Supply")

								for _, v86 in ipairs(tagged) do
									if v86 and v86.Parent then
										local hitbox = v86:FindFirstChild("Hitbox") or v86.PrimaryPart
										if hitbox and hitbox:IsA("BasePart") then
											return hitbox, v86
										end
									end
								end

								local unclimbable = workspace:FindFirstChild("Unclimbable")
								unclimbable = unclimbable and unclimbable:FindFirstChild("Supplies_Circle")
								local hitbox = unclimbable and (unclimbable:FindFirstChild("Hitbox") or unclimbable.PrimaryPart)
								if hitbox and hitbox:IsA("BasePart") then
									return hitbox, unclimbable
								end
							end

							tbl19.Crates.List = function()
								local tbl20 = {}
								local unclimbable = workspace:FindFirstChild("Unclimbable") or workspace

								for _, child in ipairs(unclimbable:GetChildren()) do
									if child:IsA("Model") and string.match(child.Name, "^ThunderSpear_Supplies%d+$") then
										local hitbox = child:FindFirstChild("Hitbox") or child.PrimaryPart

										if hitbox and hitbox:IsA("BasePart") then
											table.insert(tbl20, { model = child, hit = hitbox })
										end
									end
								end

								table.sort(tbl20, function(arg, arg2)
									return (tonumber(string.match(arg.model.Name, "%d+")) or 0) < (tonumber(string.match(arg2.model.Name, "%d+")) or 0)
								end)

								return tbl20
							end

							tbl19.Crates.Park = function(arg, arg2, arg3)
								if not arg or not arg2 then
									return
								end
								local cframe = CFrame.new(arg2.Position + Vector3.new(0, v83[89], v83[87]))
								state.CrateHold = cframe

								pcall(function()
									firetouchinterest(arg, arg2, 1)
								end)

								local n32 = os.clock() + (tonumber(arg3) or 0.8)

								while tbl19.Loop.CratesOn() and os.clock() < n32 do
									arg = tbl19.Char.Root() or arg
									tbl19.Blades.Snap(arg, cframe)
									task.wait(0.05)
								end

								pcall(function()
									firetouchinterest(arg, arg2, 0)
								end)
							end

							tbl19.Crates.Run = function()
								local v86 = tbl19.Char.Get()
								local v87 = tbl19.Char.Root(v86)
								local humanoid = v86 and v86:FindFirstChildOfClass("Humanoid")

								if not v86 or not v87 or not humanoid or humanoid.Health <= v83[87] then
									state.CrateHold = nil
									state.CrateBusy = v83[142]
									return
								end

								local safeHold

								if tbl19.Loop.SafeOn() and state.SafeHold then
									safeHold = state.SafeHold
								else
									safeHold = v87.CFrame
								end

								local v88 = tbl19.Crates.List()
								local v89 = tbl19.Crates.Circle()

								if #v88 == 0 or not v89 then
									if #v88 == 0 then
										state.CrateDone = true
									end

									state.CrateHold = nil
									state.CrateBusy = false
									return
								end

								for _, v90 in ipairs(v88) do
									if tbl19.Loop.CratesOn() then
										if v90.model.Parent then
											tbl19.Crates.Park(v87, v90.hit, 0.85)

											if v89.Parent then
												tbl19.Crates.Park(v87, v89, 1)
											end
										end

										continue
									end

									break
								end

								state.CrateHold = nil

								if #tbl19.Crates.List() == 0 then
									state.CrateDone = true
								end

								if safeHold then
									tbl19.Blades.Snap(tbl19.Char.Root() or v87, safeHold)
								end

								state.CrateBusy = false
							end

							tbl19.Crates.Tick = function()
								if not tbl19.Loop.CratesOn() or state.CrateDone or state.CrateBusy or state.RefillBusy or state.TowerBusy then
									return
								end
								local now2 = os.clock()
								if now2 - state.LastCrate < 1.4 then
									return
								end
								local v86 = tbl19.Char.Get()
								local v87 = tbl19.Char.Root(v86)
								local humanoid = v86 and v86:FindFirstChildOfClass("Humanoid")
								if not v86 or not v87 or not humanoid or humanoid.Health <= 0 then
									return
								end

								if #tbl19.Crates.List() == 0 then
									state.CrateDone = true
									return
								end
								state.CrateBusy = true
								state.LastCrate = now2

								task.spawn(function()
									tbl19.Crates.Run()
								end)
							end

							tbl19.Target.Nape = function(arg)
								local hitboxes = arg:FindFirstChild("Hitboxes")
								hitboxes = hitboxes and hitboxes:FindFirstChild("Hit")
								hitboxes = hitboxes and hitboxes:FindFirstChild("Nape")
								if hitboxes and hitboxes:IsA("BasePart") then
									return hitboxes
								end
							end

							tbl19.Target.Collect = function(arg)
								local tbl20 = {}
								local titans = workspace:FindFirstChild("Titans")
								if not titans then
									return tbl20
								end

								for _, child in ipairs(titans:GetChildren()) do
									if child:IsA("Model") then
										local humanoid = child:FindFirstChildOfClass("Humanoid")
										local humanoidRootPart = child:FindFirstChild("HumanoidRootPart") or child.PrimaryPart
										local v86 = tbl19.Target.Nape(child)
										local attribute = child:GetAttribute("State")

										if not (attribute == "Dead" or attribute == "Death") then
											if humanoid and humanoidRootPart and v86 and humanoid.Health > 0 and humanoid.MaxHealth > 0 and not players:GetPlayerFromCharacter(child) then
												table.insert(tbl20, { model = child, hum = humanoid, root = humanoidRootPart, nape = v86, dist = (humanoidRootPart.Position - arg).Magnitude })
											end
										end
									end
								end

								table.sort(tbl20, function(arg2, arg3)
									return arg2.dist < arg3.dist
								end)

								return tbl20
							end

							tbl19.Target.Watch = function(watched)
								if state.Watched == watched or not watched then
									return
								end
								state.Watched = watched

								tbl19.Connect(watched.ChildAdded, function()
									state.LastHit = 0
								end)
							end

							tbl19.Target.Mark = function(arg)
								local tbl20 = {}

								for _, v86 in ipairs(arg) do
									table.insert(tbl20, v86.model.Name .. ":" .. math.floor(v86.hum.Health))
								end

								return table.concat(tbl20, ",")
							end

							tbl19.Move.Perch = function(arg, arg2)
								local position = arg.Position
								return CFrame.lookAt(arg.Position + Vector3.new(v83[87], arg2, 0), position)
							end

							tbl19.Move.To = function(arg, cFrame, arg2)
								if arg2 == "TP" then
									pcall(function()
										arg.CFrame = cFrame
									end)

									return
								end

								if arg2 ~= "Tween" then
									return
								end
								local magnitude = (arg.Position - cFrame.Position).Magnitude

								if magnitude <= v83[102] then
									pcall(function()
										arg.CFrame = cFrame
									end)

									return
								end

								if magnitude <= 18 and #state.Tweens > 0 then
									return
								end
								state.TweenToken = state.TweenToken + 1

								for _, tween2 in ipairs(state.Tweens) do
									pcall(function()
										tween2:Cancel()
									end)
								end

								table.clear(state.Tweens)
								local n32 = math.clamp(magnitude / 160, 0.08, v83[31])
								local tween2 = tween:Create(arg, TweenInfo.new(n32, Enum.EasingStyle.Linear), { CFrame = cFrame })
								table.insert(state.Tweens, tween2)

								pcall(function()
									tween2:Play()
								end)

								local tweenToken = state.TweenToken

								task.delay(n32 + 0.03, function()
									if tweenToken == state.TweenToken then
										table.clear(state.Tweens)

										if arg.Parent then
											pcall(function()
												arg.CFrame = cFrame
											end)
										end
									end
								end)
							end

							tbl19.Loop.Slash = function(arg, arg2, arg3, arg4)
								if state.SlashBusy or state.RefillBusy or #arg2 == 0 then
									return false
								end

								if not tbl19.Blades.Ensure(arg) then
									return v83[142]
								end
								local actor = arg:FindFirstChild("Actor")
								if not actor then
									return false
								end
								state.SlashBusy = true

								if tbl19.Spears.Using(arg) then
									task.spawn(function()
										tbl19.Spears.Volley(arg, actor)

										if arg4 then
											task.wait(0.055)
										elseif arg3 then
											task.wait(0.08)
										else
											task.wait(0.12)
										end

										state.SlashBusy = false
									end)

									return true
								end

								local v86 = tbl19.Loop.NoAnimOn()

								task.spawn(function()
									if arg4 then
										tbl19.Actor.Fast(actor, v86)
										task.wait(0.055)
									else
										tbl19.Actor.Wind(actor, v86)
										task.wait(arg3 and 0.04 or 0.06)
										tbl19.Actor.Hit(actor, v86)
										task.wait(0.02)
									end

									state.SlashBusy = v83[142]
								end)

								return v83[189]
							end

							tbl19.Player.On = function()
								return state.MoveModule == true
							end

							tbl19.Player.FlyOn = function()
								return tbl19.Player.On() and state.Fly == true
							end

							tbl19.Player.ClearFly = function()
								state.FlyHold = nil
								state.FlyVel = nil
								local flyBV = state.FlyBV
								local flyAtt = state.FlyAtt
								state.FlyBV = nil
								state.FlyAtt = nil

								if flyBV then
									pcall(function()
										flyBV:Destroy()
									end)
								end

								if flyAtt then
									pcall(function()
										flyAtt:Destroy()
									end)
								end

								local v86 = tbl19.Char.Root()

								if v86 then
									local aotrFly = v86:FindFirstChild("AOTR_Fly")

									if aotrFly then
										pcall(function()
											aotrFly:Destroy()
										end)
									end
								end
							end

							tbl19.Player.Restore = function(arg)
								if arg then
									if state.WalkBase then
										pcall(function()
											if n28(3535) > 5547 then
												arg.WalkSpeed = state.WalkBase
												return
											end

											while true do
											end
										end)
									end

									if state.JumpBase then
										pcall(function()
											arg.JumpPower = state.JumpBase
										end)
									end

									if state.JumpHBase then
										pcall(function()
											arg.JumpHeight = state.JumpHBase
										end)
									end
								end

								state.WalkApplied = nil
								state.JumpApplied = nil
								state.JumpHApplied = nil
							end

							tbl19.Player.Stop = function()
								tbl19.Player.ClearFly()
								local v86 = tbl19.Char.Get()
								tbl19.Player.Restore(v86 and v86:FindFirstChildOfClass("Humanoid"))
							end

							tbl19.Player.ApplySpeed = function(arg)
								if not arg then
									return
								end

								if tbl19.Loop.SafeOn() then
									arg.WalkSpeed = 0
									arg.JumpPower = 0
									arg.JumpHeight = 0
									return
								end

								if not tbl19.Player.On() then
									if state.WalkApplied or state.JumpApplied or state.JumpHApplied then
										tbl19.Player.Restore(arg)
									end

									return
								end

								local n32 = math.clamp(tonumber(state.WalkMult) or 1, v83[15], 10)
								local n33 = math.clamp(tonumber(state.JumpMult) or 1, 1, 10)
								local walkSpeed = arg.WalkSpeed

								if walkSpeed ~= state.WalkApplied then
									state.WalkBase = walkSpeed
								end

								if n32 > 1.001 and state.WalkBase and state.WalkBase > 0 then
									local walkSpeed2 = math.clamp(state.WalkBase * n32, 1, 400)
									arg.WalkSpeed = walkSpeed2
									state.WalkApplied = walkSpeed2
								else
									state.WalkApplied = nil
								end

								local jumpPower = arg.JumpPower

								if jumpPower ~= state.JumpApplied then
									state.JumpBase = jumpPower
								end

								if n33 > 1.001 and state.JumpBase and state.JumpBase > 0 then
									local jumpPower2 = math.clamp(state.JumpBase * n33, 1, 400)
									arg.JumpPower = jumpPower2
									state.JumpApplied = jumpPower2
								else
									state.JumpApplied = nil
								end

								local jumpHeight = arg.JumpHeight

								if jumpHeight ~= state.JumpHApplied then
									state.JumpHBase = jumpHeight
								end

								if n33 > 1.001 and state.JumpHBase and state.JumpHBase > 0 then
									local jumpHeight2 = math.clamp(state.JumpHBase * n33, v83[75], 80)
									arg.JumpHeight = jumpHeight2
									state.JumpHApplied = jumpHeight2
								else
									state.JumpHApplied = nil
								end
							end

							tbl19.Player.Key = function(arg)
								if state.FlyKeys[arg] == true then
									return true
								end

								local ok, result = pcall(function()
									return userInput:IsKeyDown(arg)
								end)

								return ok and result == true
							end

							tbl19.Player.FlyDir = function()
								local currentCamera = workspace.CurrentCamera
								local lookVector = currentCamera and currentCamera.CFrame.LookVector or Vector3.new(0, 0, -1)
								currentCamera = currentCamera and currentCamera.CFrame.RightVector or Vector3.new(v83[15], 0, 0)
								local vector = Vector3.zero

								if tbl19.Player.Key(Enum.KeyCode.W) then
									vector += lookVector
								end

								if tbl19.Player.Key(Enum.KeyCode.S) then
									vector -= lookVector
								end

								if tbl19.Player.Key(Enum.KeyCode.A) then
									vector -= currentCamera
								end

								if tbl19.Player.Key(Enum.KeyCode.D) then
									vector += currentCamera
								end

								if tbl19.Player.Key(Enum.KeyCode.Space) then
									vector += Vector3.yAxis
								end

								if tbl19.Player.Key(Enum.KeyCode.LeftControl) or tbl19.Player.Key(Enum.KeyCode.Q) then
									vector -= Vector3.yAxis
								end

								if vector.Magnitude > 0.001 then
									return vector.Unit
								end
								return Vector3.zero
							end

							tbl19.Player.FlyApply = function(arg)
								local flyHold = state.FlyHold
								if not flyHold or not arg then
									return
								end

								pcall(function()
									arg.AssemblyLinearVelocity = state.FlyVel or Vector3.zero
									arg.AssemblyAngularVelocity = Vector3.zero
									arg.CFrame = flyHold
								end)
							end

							tbl19.Player.FlyTick = function(arg, arg2)
								if tbl19.Loop.Locked() then
									local towerHold = state.TowerHold or state.CrateHold

									if towerHold then
										tbl19.Blades.Snap(arg, towerHold)
									end

									return
								end

								if tbl19.Loop.SafeOn() then
									tbl19.Player.ClearFly()
									return
								end

								if not arg or not tbl19.Player.FlyOn() then
									if state.FlyHold then
										tbl19.Player.ClearFly()
									end

									return
								end

								local n32 = math.clamp(tonumber(arg2) or 0.016, 0, 0.05)
								local n33 = math.clamp(tonumber(state.FlySpeed) or 200, 100, 500)
								local v86 = tbl19.Player.FlyDir()
								local flyHold = state.FlyHold or arg.CFrame
								local position = flyHold.Position

								if v86.Magnitude > 0 then
									position += v86 * n33 * n32
									state.FlyVel = v86 * n33
								else
									state.FlyVel = Vector3.zero
								end

								local currentCamera = workspace.CurrentCamera
								currentCamera = currentCamera and currentCamera.CFrame.LookVector or flyHold.LookVector
								local vector = Vector3.new(currentCamera.X, v83[87], currentCamera.Z)

								if vector.Magnitude > 0.001 then
									state.FlyHold = CFrame.lookAt(position, position + vector.Unit)
								else
									local n34 = flyHold - flyHold.Position
									state.FlyHold = CFrame.new(position) * n34
								end

								tbl19.Player.FlyApply(arg)
							end

							tbl19.Player.Tick = function(arg)
								local v86 = tbl19.Char.Get()
								local v87 = tbl19.Char.Root(v86)
								local humanoid = v86 and v86:FindFirstChildOfClass("Humanoid")

								if not v86 or not v87 or not humanoid or humanoid.Health <= 0 then
									tbl19.Player.ClearFly()
									state.WalkApplied = nil
									state.JumpApplied = nil
									state.JumpHApplied = nil
									tbl19.Safe.Tick()
									return
								end

								tbl19.Player.ApplySpeed(humanoid)
								tbl19.Player.FlyTick(v87, arg)
								tbl19.Safe.Tick()
							end

							tbl19.Player.Late = function()
								local humanoid = tbl19.Char.Get()
								local v86 = tbl19.Char.Root(humanoid)
								humanoid = humanoid and humanoid:FindFirstChildOfClass("Humanoid")

								if humanoid and humanoid.Health > 0 then
									tbl19.Player.ApplySpeed(humanoid)

									if n24 > 7286 then
										while v83[189] do
										end
									end
								end

								if tbl19.Loop.Locked() then
									local towerHold = state.TowerHold or state.CrateHold

									if towerHold then
										tbl19.Blades.Snap(v86, towerHold)
									end

									return
								end

								if tbl19.Player.FlyOn() and not tbl19.Loop.SafeOn() then
									tbl19.Player.FlyApply(v86)
								end

								if tbl19.Loop.SafeOn() and not state.RefillBusy then
									tbl19.Safe.Hold(v86, humanoid)
								end
							end

							tbl19.Loop.Tick = function(arg)
								tbl19.Retry.Tick()
								tbl19.Heal.Tick()
								tbl19.Player.Tick(arg)
								local v86 = tbl19.Char.Get()
								local v87 = tbl19.Char.Root(v86)
								local humanoid = v86 and v86:FindFirstChildOfClass("Humanoid")
								if not v86 or not v87 or not humanoid or humanoid.Health <= 0 then
									return
								end
								tbl19.Towers.Tick()
								tbl19.Crates.Tick()

								if tbl19.Loop.RepairOn() or tbl19.Loop.RefillOn() then
									tbl19.Blades.Ensure(v86)
								end

								if tbl19.Loop.Locked() then
									return
								end

								if not tbl19.Loop.FarmOn() then
									return
								end
								tbl19.Target.Watch(workspace:FindFirstChild("Titans"))
								local v88 = tbl19.Target.Collect(v87.Position)

								if #v88 == 0 then
									state.Miss = 0
									state.Mark = ""
									return
								end

								if state.SlashBusy then
									return
								end
								local now2 = os.clock()
								local v89 = tbl19.Loop.FastOn()
								local v90 = tbl19.Loop.FastAtkOn()
								local n32

								if v90 then
									n32 = 0.08
								elseif v89 then
									n32 = 0.12
								else
									n32 = 0.16

									if state.Miss >= 3 then
										n32 = 0.22
									end
								end

								if now2 - state.LastHit < n32 then
									return
								end
								local v91 = tbl19.Target.Mark(v88)

								if tbl19.Loop.Slash(v86, v88, v89, v90) then
									state.LastHit = now2

									if v91 == state.Mark then
										state.Miss = state.Miss + 1
									else
										state.Miss = 0
									end

									state.Mark = v91
								end
							end

							tbl19.UI.Build = function()
								local v86 = tbl17:Window({
									Title = "Zenthra",
									ConfigFolder = "Zenthra AOTR",
									ConfigName = v83[39],
									ToggleKey = Enum.KeyCode.RightShift,
								})

								local v87 = v86:Tab({ Title = "Combat", Icon = "swords" })

								local v88 = v87:Module({
									Title = "Auto Farm",
									Flag = flag18.Module,
									Default = false,
									Side = "Left",
									Callback = function(arg)
										state.Module = arg == true

										if not state.Module then
											tbl19.Safe.Release()
										end
									end,
								})

								tbl19.UI.Window = v86
								tbl19.UI.Module = v88

								v88:Toggle({
									Title = "Auto Farm",
									Flag = flag18.Farm,
									Default = false,
									Notify = false,
									Callback = function(arg)
										state.Farm = arg == v83[189]
									end,
								})

								v88:Toggle({
									Title = "Fast Kill",
									Flag = flag18.Fast,
									Default = v83[189],
									Notify = false,
									Callback = function(arg)
										state.Fast = arg == v83[189]
									end,
								})

								v88:Toggle({
									Title = "Fast Attack",
									Flag = flag18.FastAtk,
									Default = true,
									Notify = v83[142],
									Callback = function(arg)
										state.FastAtk = arg == true
									end,
								})

								v88:Toggle({
									Title = "No Slash Animation",
									Flag = flag18.NoAnim,
									Default = true,
									Notify = false,
									Callback = function(arg)
										state.NoAnim = arg == true
									end,
								})

								v88:Toggle({
									Title = "Auto Repair",
									Flag = flag18.Repair,
									Default = true,
									Notify = false,
									Callback = function(arg)
										state.Repair = arg == true
									end,
								})

								v88:Toggle({
									Title = "Auto Refill",
									Flag = flag18.Refill,
									Default = v83[189],
									Notify = false,
									Callback = function(arg)
										state.Refill = arg == true
									end,
								})

								v88:Toggle({
									Title = "Safe Spot",
									Flag = flag18.Safe,
									Default = false,
									Notify = false,
									Callback = function(arg)
										state.Safe = arg == true

										if not state.Safe then
											tbl19.Safe.Release()
										end
									end,
								})

								v88:Toggle({
									Title = "Auto Towers",
									Flag = flag18.Towers,
									Default = v83[142],
									Notify = false,
									Callback = function(arg)
										state.Towers = arg == true

										if state.Towers then
											state.TowerDone = v83[142]
										end
									end,
								})

								v88:Toggle({
									Title = "Auto Crates",
									Flag = flag18.Crates,
									Default = false,
									Notify = false,
									Callback = function(arg)
										state.Crates = arg == true

										if state.Crates then
											state.CrateDone = false
										end
									end,
								})

								v88:SetExpanded(true, false)
								state.Module = v88.Enabled == v83[189]
								state.Farm = tbl17.Flags[flag18.Farm] == v83[189]
								state.Fast = tbl17.Flags[flag18.Fast] ~= false
								state.FastAtk = tbl17.Flags[flag18.FastAtk] ~= false
								state.NoAnim = tbl17.Flags[flag18.NoAnim] ~= false
								state.Repair = tbl17.Flags[flag18.Repair] ~= false
								state.Refill = tbl17.Flags[flag18.Refill] ~= false
								state.Safe = tbl17.Flags[flag18.Safe] == true
								state.Towers = tbl17.Flags[flag18.Towers] == true
								state.Crates = tbl17.Flags[flag18.Crates] == true

								local v89 = v87:Module({
									Title = "Auto Retry",
									Flag = flag18.RetryModule,
									Default = v83[142],
									Side = "Right",
									Callback = function(arg)
										state.RetryModule = arg == true
									end,
								})

								tbl19.UI.Retry = v89

								v89:Toggle({
									Title = "Auto Retry",
									Flag = flag18.Retry,
									Default = true,
									Notify = v83[142],
									Callback = function(arg)
										state.Retry = arg == true
									end,
								})

								v89:SetExpanded(true, v83[142])
								state.RetryModule = v89.Enabled == true
								state.Retry = tbl17.Flags[flag18.Retry] ~= v83[142]

								local v90 = v87:Module({
									Title = "Auto Heal",
									Flag = flag18.HealModule,
									Default = v83[142],
									Side = "Right",
									Callback = function(arg)
										state.HealModule = arg == true
									end,
								})

								tbl19.UI.Heal = v90

								v90:Toggle({
									Title = "Auto Heal",
									Flag = flag18.Heal,
									Default = true,
									Notify = v83[142],
									Callback = function(arg)
										state.Heal = arg == true
									end,
								})

								v90:SetExpanded(v83[189], false)
								state.HealModule = v90.Enabled == true
								state.Heal = tbl17.Flags[flag18.Heal] ~= v83[142]
								local v91 = v86:Tab({ Title = "Player", Icon = "user" })

								local v92 = v91:Module({
									Title = "Movement",
									Flag = flag18.MoveModule,
									Default = false,
									Side = "Left",
									Callback = function(arg)
										state.MoveModule = arg == v83[189]

										if not state.MoveModule then
											tbl19.Player.Stop()
										end
									end,
								})

								tbl19.UI.Player = v91
								tbl19.UI.Movement = v92

								v92:Slider({
									Title = "WalkSpeed Multiplier",
									Flag = flag18.WalkMult,
									Min = 1,
									Max = 10,
									Decimals = 1,
									Default = 1,
									Suffix = "x",
									Callback = function(arg)
										state.WalkMult = tonumber(arg) or 1
									end,
								})

								v92:Slider({
									Title = "JumpPower Multiplier",
									Flag = flag18.JumpMult,
									Min = 1,
									Max = v83[22],
									Decimals = 1,
									Default = 1,
									Suffix = "x",
									Callback = function(arg)
										state.JumpMult = tonumber(arg) or 1
									end,
								})

								v92:Toggle({
									Title = "Fly",
									Flag = flag18.Fly,
									Default = false,
									Notify = false,
									Callback = function(arg)
										state.Fly = arg == true

										if not state.Fly then
											tbl19.Player.ClearFly()
										end
									end,
								})

								v92:Slider({
									Title = "Fly Speed",
									Flag = flag18.FlySpeed,
									Min = 100,
									Max = 500,
									Decimals = 0,
									Default = 200,
									Callback = function(arg)
										state.FlySpeed = tonumber(arg) or v83[126]
									end,
								})

								v92:SetExpanded(true, false)
								state.MoveModule = v92.Enabled == v83[189]
								state.WalkMult = tonumber(tbl17.Flags[flag18.WalkMult]) or 1
								state.JumpMult = tonumber(tbl17.Flags[flag18.JumpMult]) or 1
								state.Fly = tbl17.Flags[flag18.Fly] == true
								state.FlySpeed = tonumber(tbl17.Flags[flag18.FlySpeed]) or v83[126]
							end

							tbl19.Actor.Init()
							genv._ZenthraAOTR = { Unload = tbl19.Unload }
							tbl19.UI.Build()

							tbl19.Connect(userInput.InputBegan, function(arg)
								if arg.UserInputType == Enum.UserInputType.Keyboard then
									state.FlyKeys[arg.KeyCode] = true
								end
							end)

							tbl19.Connect(userInput.InputEnded, function(arg)
								if arg.UserInputType == Enum.UserInputType.Keyboard then
									state.FlyKeys[arg.KeyCode] = nil
								end
							end)

							tbl19.Connect(run.Heartbeat, tbl19.Loop.Tick)
							tbl19.Connect(run.RenderStepped, tbl19.Player.Late)
						end

						return
					end

					while true do
					end
				end
			end
		end
	end
end

fn14(100, v3[fn2("n\218\192\176\129w\151\190\193\1756", 21845944094585)], v3[fn2("-\209 \r\161\128\30\181)\162\169\194\240\156\19Ȣs\0212\188p\207(\188\240\176\157\230\2\142\167\11\226\159&\233", 10693721171687)] .. v32(v63), Color3[v3[fn2("\211\207k", 18772801209419)]](1, 0, 0), v3[fn2(" `\4\162\157", 18561267614598)])
