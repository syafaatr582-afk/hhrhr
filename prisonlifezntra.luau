
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
local v3

if v2 and v2[1] then
	v3 = v2[1]
else
	v3 = nil
end

local floor = math.floor
local random = math.random
local remove = table.remove
local char = string.char
local n2 = 0
local n3 = 2
local tbl = {}
local tbl2 = {}

for i = 1, 256 do
	tbl2[i] = i
end

repeat
	local v4 = random(1, #tbl2)
	local v5 = remove(tbl2, v4)
	tbl[v5] = char(v5 - 1)
until #tbl2 == 0

local tbl3 = {}

local function fn()
	if #tbl3 == 0 then
		n2 = (n2 * 149 + 4033097371307) % 35184372088832

		repeat
			n3 = n3 * 37 % 257
		until n3 ~= 1

		local n = n3 % 32
		local n4 = floor(n2 / 2 ^ (13 - (n3 - n) / 32)) % 4294967296 / 2 ^ n
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
local v4 = tbl4

local function fn2(arg, arg2)
	local v5 = tbl4

	if not v5[arg2] then
		tbl3 = {}
		local v6 = tbl
		n2 = arg2 % 35184372088832
		n3 = arg2 % 255 + 2
		v5[arg2] = ""
		local n = 77

		for i = 1, #arg do
			n = (string.byte(arg, i) + fn() + n) % 256
			v5[arg2] = v5[arg2] .. v6[n + 1]
		end
	end

	return arg2
end

local v5 = LUARMOR_SkipAntidebugDevMode
local v6 = LUARMOR_AllowKeyCheckSkip
local flag4 = ff97f23b97f93792992999 and ff97f23b97f93792992999() == v4[fn2("\172", 31126577901884)] or false
local v7 = v4[fn2("6\143K\188=\r\226\146\248&\176;\3\231Æ\133\143\248\204_\184\222\229\157\254\25", 2340828612740)]
local v8 = USE_NON_SSL_NODE
local v9 = l_fastload_enabled
local n4 = os[v4[fn2("(\204\6\168", 4882453074371)]](os[v4[fn2("UC\178}", 12971197083440)]](v4[fn2("\139L", 33012126087192)])) - os[v4[fn2("vܢ\204", 5436520764359)]](os[v4[fn2("f\150\187#", 4318721413046)]](v4[fn2("\209\6D", 24300592814183)]))
local n5

if n4 < 0 then
	n5 = (86400 + -(-n4 % 86400)) % 86400
else
	n5 = n4 % 86400
end

local n6 = n5 / 3600

if n6 >= 21 or n6 < 5 then
	local tbl5 = {}
	local v10 = v4[fn2("\226XO\140q\210K\180:%\205B\254\182.y\229\163\245\219v$\209Y\171\6f", 3448963992716)]
	local v11 = v4[fn2("N\235X\233G\12\243\241ˣ@s\250\190\137\214\t\2267j\174\247\195\241\237\1\160", 16047561292385)]
	tbl5[1] = v10
	tbl5[2] = v11
	v7 = tbl5[math[v4[fn2("\195K\\\173\155:", 14086848885567)]](1, 2)]
elseif n6 >= 5 and n6 < 15 then
	local tbl5 = {}
	local v10 = v4[fn2("\136M\165r\0017j\254\186\147Ds\224x\241\151\231]k\137\28\184\17f,\138\149", 25839311805952)]
	local v11 = v4[fn2("\211:<?S\222\17[!\164Yl\240F\230\"\193\251\128\220a\29\252\133\u{87}\163", 2297877629020)]
	local v12 = v4[fn2("s\146p: \167\177_\228\255\136kW\246\245\253e\146M\245\19T\169IP\21\187", 2572763924828)]
	local v13 = v4[fn2("'\26L\252\146.\25c\151\208\248ϕ\154\r\229I\243\26\149\181\139k`+\16\2", 19333311546965)]
	local v14 = v4[fn2("$\1C\213\234\205?\169\200\"\188@\0\188\128\27C\244\12\203l\224\3p\245\187\233", 21697763200751)]
	local v15 = v4[fn2("\30\197\216\\\25\163\155i\1304i\2af\14\181\15\174MD\174\131\206\208Zã", 15465575462979)]
	local v16 = v4[fn2("\5ڝ_\154\171yf\184\193\138\26T\188\11\16#K\128\144:\7\197m\210\14\252", 30187025133009)]
	local v17 = v4[fn2("\182\186\142\199\t\163\189V 8\195g\230w\148\228\193v\199\\\186\212\246\174\130H\254", 19714501527480)]
	local v18 = v4[fn2("\248~\133\207\196r\178\244G\251 /\n\30\169\154%m\187W\141{\235\246\179\243\240", 7900833455294)]
	local v19 = v4[fn2("*\211\203v\129\12j\218\209A\222\15\186[S\135\165w\1725[tI\n \212\199", 17090196422188)]
	local v20 = v4[fn2("y\193\242QA\127\235\22\"\3\134\159.\0\5\224\130\236\239\27\254.\224\194ż\188", 25925213773392)]
	tbl5[1] = v10
	tbl5[2] = v11
	tbl5[3] = v12
	tbl5[4] = v13
	tbl5[5] = v14
	tbl5[6] = v15
	tbl5[7] = v16
	tbl5[8] = v17
	tbl5[9] = v18
	tbl5[10] = v19
	tbl5[11] = v20
	v7 = tbl5[math[v4[fn2("xԳ\192\182-", 34852575739594)]](1, 11)]
elseif n6 >= 15 and n6 < 21 then
	local tbl5 = {}
	local v10 = v4[fn2("\240\230R\240>\184pcy\16\164\25JH\231\14\235b\3\8\138b\1\249\194\4\255", 13222460338202)]
	local v11 = v4[fn2("\132\141w\195|l\143>'\247n\175\248+\249\226\144<C!*\177\160\233\21\2I", 27390916092837)]
	local v12 = v4[fn2("\rl\1903\128\248l\136-%\192js\153c\179\238b\157\207\209#\200;\238Nt", 14158791783298)]
	tbl5[1] = v10
	tbl5[2] = v11
	tbl5[3] = v12
	v7 = tbl5[math[v4[fn2("\237\238q\243\0025", 446690230688)]](1, 2)]
else
	game:GetService(v4[fn2("\11\19\5\4\2527\137", 10601376556689)])[v4[fn2("6\164p?\177pjs'\184]", 30941888671888)]]:Kick(v4[fn2("XЀ\129\142\231\6\145\130ښz\231[\253\250\28A\140`;m\\\243C\167d_\8뵟\11\24\4̩\172S\rH\235-E\0079\1519lH\149-C3\130)\225\20\162{1\228ܞ", 31900769383437)])
end

pcall(function()
	if game:GetService(v4[fn2("Y4\161\128j\n\206\18\4\2551z\235۾\220\26C\148", 26759536632153)]):GetCountryRegionForPlayerAsync(game:GetService(v4[fn2("A\209q\131\160\177\219", 8137063865754)])[v4[fn2("\255\189\244ˢ\218K\216I\131\254", 24768758536731)]]) == v4[fn2(";%", 6519959328696)] then
		local tbl5 = {}
		local v10 = v4[fn2("l\205hnf\2268}\206\25\1781{\11\1981/\224\8\179\240\27-\r\205#\151", 30974101909678)]
		local v11 = v4[fn2("\n\230\168\228\154T\28\183\22\226r\177\0\0042f+\129\184ʟ\193ͤ\166\128i", 12874557370070)]
		local v12 = v4[fn2("\31\140C\234\224\0128'uqF\230\160\26)\210ߣ\139\172\132w\172\181\245\250\246", 25825352736243)]
		local v13 = v4[fn2("Q\t\222t?\167\240\222K|Jn\228\232[\172OO\133\25\130Ϋ\203\24\190&", 1597776594384)]
		local v14 = v4[fn2("w׆z\184Rػ\135\17w\149\1628\245<t\183\218\"9\180&\154\173oS", 24407970273483)]
		tbl5[1] = v10
		tbl5[2] = v11
		tbl5[3] = v12
		tbl5[4] = v13
		tbl5[5] = v14
		v7 = tbl5[math[v4[fn2("\182\163/Pv\178", 434878710165)]](1, 5)]
	end
end)

local tbl5 = { [v4[fn2("$GBp\229(\220", 25758778711477)]] = v4[fn2("\233\191\12", 22757578724042)] }
tbl5[v4[fn2("\168)[\4", 30887126167645)]] = flag4 and LT_R_RRT_H or v4[fn2("\145\199\235ښ\255A\27", 5940121048476)] .. v7
tbl5[v4[fn2("-\187\163M\25\167\217@", 4026654723750)]] = "6e84fd33489e4fea6b22d42baf267776"
tbl5[v4[fn2("|\153\251\252\129+\213c\238\189\31]\198", 318911054121)]] = "0008"
tbl5[v4[fn2("\255u\7\188", 2453574945005)]] = "Zenthra Prison Life"

if v8 then
	tbl5[v4[fn2("P+\173\t", 11860914154278)]] = v4[fn2("\190\203\210Z\214\212\25ې\173pԼ\146\25\18\18\16\133\139\193獓ݓ\217", 22440815219107)]
	v7 = v4[fn2("_\12\235cw\2309\u{84}\23,d\224NS\22X\5\19p", 20241724852643)]
end

local flag5 = type(({ table.unpack(v, 1, v.n) })[1]) ~= v4[fn2("\242\19\150\29>", 10561646896748)]
local flag6 = false
local fn3 = nil
local n7 = nil
local tbl6 = nil
local tbl7 = nil
local flag7 = nil
local v10 = nil
local tbl8 = nil
local v11 = print
local v12 = next
local v13 = string[v4[fn2("2\2521\5", 29730670930984)]]
local v14 = identifyexecutor
local v15 = game
local v16 = pcall
local v17 = string[v4[fn2("\159\240\254\230\24\28", 19614640490331)]]
local v18 = debug[v4[fn2(";+\25\153&\188\15\128\26", 12781138980479)]]
local v19 = tonumber
local v20 = setmetatable
local v21 = rawget
local v22 = wait
local v23 = debug[v4[fn2("P\221{\181\235n\227", 23381441762575)]]
local v24 = loadstring
local v25 = os[v4[fn2("X\184mZ", 16176414243545)]]
local v26 = string[v4[fn2("U\235\251\154", 32087606162619)]]
local v27 = string[v4[fn2("\175\1522", 25909107154497)]]
local v28 = spawn
local v29 = game:GetService(v4[fn2("`B\166#\255jI\172]^", 4772928065885)])[v4[fn2("\160\129EكZ\5\18\24", 20189109897586)]]
local v30 = os[v4[fn2(">^S\159\159", 3206290934698)]]
local v31 = rconsoleprint
local v32 = math[v4[fn2("\165A7e", 11417445247369)]]
local v33 = tostring
local v34 = pairs
local v35 = string[v4[fn2("\3\155\250\194", 32580468700806)]]
local v36 = getgenv
local flag8 = false

local function fn4(arg, arg2)
	v24(v4[fn2("i\154\24+|X6!\178ڻ\204ηA\11\7\248<\206\28\245\222c\174\5\23\227\240?Iz\250a4S.\240\147t\199\0065\4\145\11\239\203\2.\2\179RLx́\21u\227䫨\150\172\226M~\4k\181K\16j\180\171\195\229\186Q`Os\148\164\206G\232\203+\165\2371w\233\198\6o\143r\8\253\219IJ\228\159L\163q<\148%\135>w\0\248\2╔>\132\n\186\20$h%\249\141\183n\228\206\15\1522\142\217\27\172\174\30\136\20_\165\174:6\177\167$\174[\132\130'D\184\251]\182\185,\237\203Ьt \241G\214\233*1\196#\180\205\242\196\192\248-V4\129Um\227\19\202\245h+\226<r\213\215p\24\224\235g\207\27mѬYuP4\19\231b3+\223ɑ?ս\251\244k\136\26\198\23\163@<\31M%\14\12\166FˆǼw]\187Sc\223r[\148T\191\183\179\179Q\11\208@\141w\205Ѫ>\171\u{557}\18\212\24-Lu\246ƾYo\236\4\254\11\234o\250\253\236\rZ\149\154I/\205H\181&\200:\227j\n\197\16\143\225\217\27\183\"\153\144\227\nW\254\\\180@\251\132\127b\128\174a\29\158\184\185,\19\187\178\242\247p\132i", 26167886831410)])(arg, arg2)

	while v22() do
	end
end

local tbl9 = {}
local flag9 = false
local v37 = string[v4[fn2("\189[J\156\131h", 30415739121318)]]
local v38 = string[v4[fn2("\1510\206", 13348091965583)]]
local v39 = table[v4[fn2("k\188*TG\222", 11500125891030)]]
local v40 = type
local v41 = v34
local v42 = v22
local v43 = coroutine[v4[fn2("\177߽\215", 9666118886186)]]
local v44 = syn
local v45

if v44 then
	v45 = syn[v4[fn2("Z\185\149\247\174\30\161\141\220", 26705847902503)]] and syn[v4[fn2("\137ҫ\217\r2\137v\146", 25551540215028)]][v4[fn2("fӟ\144\186|\152", 30015221198129)]]
else
	v45 = v44
end

local fn5 = v45 or WebSocket and WebSocket[v4[fn2("\202Be\155Q\245>", 758084862658)]] or WebsocketClient and function(arg)
	local v46 = WebsocketClient[v4[fn2("\188m\224", 16394390485924)]](arg)
	v46:Connect()
	return v46
end

local fn6 = nil

fn6 = function(arg)
	local tbl10 = {}

	for k, v46 in v41(arg) do
		local n = #tbl10 + 1
		local v47 = v4[fn2("'\200\247\146 \170_\227", 34886936526570)]
		local v48 = v4
		local flag10 = v40(v46) == v48[fn2("\20/x-\133", 7497094208326)] and fn6(v46)
		local str2

		if flag10 then
			str2 = flag10
		else
			local v49 = v4
			str2 = v4[fn2("=", 18649317131224)] .. v46 .. v49[fn2("Z", 173951484066)]
		end

		tbl10[n] = v37(v47, k, str2)
	end

	return v4[fn2("i", 24314551883892)] .. v38(v39(tbl10), 0, -2) .. v4[fn2("\194", 22373167419748)]
end

local function fn7(arg)
	local function fn8(arg2)
		if arg2 == v4[fn2(",\196P\\", 10051603965073)] then
			if flag8 then
				local v46 = v4
				v31(v4[fn2("\188", 31749367165824)] .. os[v4[fn2("\0302\18I\236", 28036254623230)]]() .. v46[fn2("]F\213\251\200_\178F\20\156:\132P\20@C\245\5rT\147\137\228\134\r\254\141{\211", 1801793767054)])
			end

			arg[v4[fn2(",\186lJ\254\246p\224", 16202184833777)]] = tick()
			return
		end

		local v46 = v4
		local v47 = string[v4[fn2("\159\11\208\29\209", 9071247761664)]](arg2, v46[fn2("\188\201\31<\247\150\244\169-\6\18", 23326679258332)])

		if flag8 then
			local v48 = v4
			v31(v4[fn2("\7", 33022863833122)] .. os[v4[fn2("\127>\184\15\133", 17304951340788)]]() .. v4[fn2("\1651f.\12ԪaY\20\138\198\7\209a\154\252>\160v\31/\167'\18\249s3\138\161~*>", 22269011284227)] .. arg2 .. v48[fn2(" ", 17028991270387)])
		end

		if v47 then
			local v48 = arg[v4[fn2("Ƣn!\210\2\204y", 20264274119096)]][v47 + 0]
			local v49 = v4
			v48:Fire(arg2:gsub(v4[fn2("2\186\6u\237\151?\157\214\218\26", 16177488018138)], v49[fn2("", 19126073050516)]))
			return v48:Destroy()
		end

		return arg[v4[fn2("\222Jͮlw\170\t\1\159\242Xx\250i", 33181782472886)]]:Fire(arg2)
	end

	local fn9 = nil

	fn9 = function()
		if flag8 then
			local v46 = v4
			v31(v4[fn2("\20", 25372219857997)] .. os[v4[fn2("\31\244\136j\213", 5980924483010)]]() .. v46[fn2("\245\140.:\174\129O1!\183\\", 29455784635176)])
		end

		arg[v4[fn2("\154p\255\171h\15\253<\144\234\187\20\22\154\6", 7238314531413)]] = false

		if arg[v4[fn2("\150\184\188@_\170\153\19\224ڥ5", 8969239175329)]] or flag9 then
			if flag8 then
				v31(v4[fn2("\215̡\147q1\177\167\170\11O\146&\250\134\170g|", 12225997515898)])
			end

			return
		end

		local n = 0
		local v46

		while true do
			if flag8 then
				local v47 = v4
				v31(v4[fn2("\8", 25877967691300)] .. os[v4[fn2("\242\131\241\176\153", 32213237790000)]]() .. v47[fn2("\158\5\232\183M\152\162w\231Y\191\203\31\168H\18Cu\188<\171s\200\226N\20\133\25n\255\209ȴV\192\30ǁv", 28825478949085)])
			end

			local v47 = v25()
			local flag10 = false
			local v48 = nil
			v46 = nil

			v28(function()
				local v49, v50 = v16(fn5, arg[v4[fn2("\23\20\24", 29848786136214)]])
				v48 = v49
				v46 = v50
				flag10 = true
			end)

			while not flag10 and v25() < v47 + 8 do
				v42()
			end

			if flag8 then
				local v49 = v4
				v31(v4[fn2("\128", 29034864994720)] .. os[v4[fn2("\175\nP\245\156", 12251768106130)]]() .. v4[fn2("z\24ث\148\2523\254\223\1\222Q\227{\241\197\249\\\11_h\181", 34490713701753)] .. v33(flag10) .. v4[fn2("\127\132\31\28g\n", 10375883892159)] .. v33(v48) .. v49[fn2("\12", 27328637166443)])
			end

			if not flag10 then
				flag6 = false
				n = 10

				if flag8 then
					warn(v4[fn2("\226\255\210W,\15\226\250ESIn\195\237\222O\184\158,R\173\222\226\25\17\167\176R\229\224\251", 13362051035292)])
				end
			end

			if not v48 then
				n += 1

				if n > 5 then
					flag6 = false
				end

				v42(n < 4 and 10 or 120)
				continue
			end

			break
		end

		if flag8 then
			local v47 = v4
			v31(v4[fn2("\194", 33361102829917)] .. os[v4[fn2("nG\178p\189", 1458185897294)]]() .. v47[fn2("\148\235A|\17\230\0113\2209x\22|\149\178\167\141\242\182\164\19x\130\238", 2558804855119)])
		end

		arg[v4[fn2("\204*c\136֯\156\235c\228#\163\143\18\204", 14980229346943)]] = true
		arg[v4[fn2("\196\28p0\225\186\219]\246", 13544592716102)]] = v46
		flag6 = arg
		local v47 = v4

		v46:Send(fn6({
			[v4[fn2("\144\157\26\202J\143", 30815183269914)]] = v47[fn2("\158\177\19U", 18578448008086)],
			[v4[fn2("\222U\224\t", 256632127727)]] = {},
		}))

		v16(function()
			v46[v4[fn2("k(\166.\2433M", 11661192079980)]]:Connect(fn9)
			v46[v4[fn2("\15\210\249~|\227\202\248q", 12796171824781)]]:Connect(fn8)
		end)

		v16(function()
			v46[v4[fn2(" URU\22\156\133D\244\18\140\156u\238\15*", 31006315147468)]]:Connect(fn9)
			v46[v4[fn2("v\150P\222B\136';\166\162\1439", 3526275763412)]]:Connect(fn8)
		end)
	end

	v16(function()
		local v46 = v4
		arg[v4[fn2("\0Q8\178\17K1\246R", 27593859490914)]][v46[fn2("Q\211s\145*Q?", 8519327620862)]]:Connect(fn9)
		local v47 = v4
		arg[v4[fn2("\197,r \183r\1669N", 8460270018247)]][v47[fn2("Ó@Qd\143\153|\223", 32507452028482)]]:Connect(fn8)
	end)

	v16(function()
		local v46 = v4
		arg[v4[fn2("\29i\"\207\r\254\208\235\162", 33601628338749)]][v46[fn2("\127\0\163\179\239\249y\205g\245RE", 27001135915578)]]:Connect(fn8)
		local v47 = v4
		arg[v4[fn2("Z_\28\178_Aͣ8", 23336343229669)]][v47[fn2("h\177\227\15\189\1384\185\128\r\248H7\209\205\244", 11453953583531)]]:Connect(fn9)
	end)

	arg[v4[fn2("U0\18973y\172\177", 26105607905016)]] = tick()

	while v42(10) do
		if flag8 then
			local v46 = v4
			v31(v4[fn2("\145", 14951237432932)] .. os[v4[fn2("\2286\234N\229", 22975554966421)]]() .. v46[fn2("ח\31]\186]\218A}\226[{\251\17t\146էړg\20\toć:\170", 14658096969043)])
		end

		if arg[v4[fn2("\200tK\173\215\207e8\175\212\11Or\171\158", 15693215676695)]] then
			local v46 = v4

			arg[v4[fn2("t\168\177Eņ\218\30\232", 31886810313728)]]:Send(fn6({
				[v4[fn2("+\30H\139\251Z", 29989450607897)]] = v46[fn2("\234\23\201\8", 21721386241797)],
				[v4[fn2("\227o\137\144", 9220502430091)]] = {},
			}))

			if tick() - arg[v4[fn2("\161\183W҉G\174\t", 26743430013258)]] > 20 then
				if flag8 then
					local v47 = v4
					v31(v4[fn2("=", 25162833812362)] .. os[v4[fn2("\2501\245\132\"", 26944225862149)]]() .. v47[fn2("\240\161\251\171\150\228~\247ֶ\166T\188\2\n\31\4\nlA!\3P\242", 20296487356886)])
					warn(v4[fn2("\222\6\189\254ChVJX'\161Kl\129", 21935067385804)])
				end

				arg[v4[fn2("\156\156&\216d,<\149*", 15423698253852)]]:Close()
			end
		end
	end
end

tbl9.new = function(arg, arg2)
	local tbl10 = {}
	v20(tbl10, arg)
	arg[v4[fn2("\227t\243=\230\148\11", 15742609307973)]] = arg
	local v46 = v25()
	local flag10 = false
	local v47 = nil
	local v48 = nil

	v28(function()
		local v49, v50 = v16(fn5, arg2)
		v47 = v49
		v48 = v50
		flag10 = true
	end)

	while not flag10 and v25() < v46 + 8 do
		v42()
	end

	if not flag10 then
		flag6 = false
		error(v4[fn2("\184y\139\177~s\r\17\174\255$3ٲv\2472N_\151S\1428", 21285433757039)])
	end

	assert(v47, v48)
	arg[v4[fn2("\232\nl\8\221\198\244\158\162", 15444099971119)]] = v48
	arg[v4[fn2("\212\216b", 32886494459811)]] = arg2
	local v49 = v4
	arg[v4[fn2("\154\254+\5n)\173\161d\163\227\187\2262\186", 7107314031067)]] = Instance[v4[fn2("f̜", 13855987348072)]](v49[fn2("\12\2423\140\203\204q\2223\23\184\t\169", 19879862814802)])
	local v50 = v4
	arg[v4[fn2("\246M\198tb߸\2464", 4490525347926)]] = arg[v4[fn2(">RVz5\150\2A\180;\184ķ\181\202", 26856176345523)]][v50[fn2(">4z\139p", 25648179928398)]]
	arg[v4[fn2("sfê\t\245<\19", 6486672316313)]] = {}
	arg[v4[fn2("U\245\146]\170\143@8N@#\176\212\228\178", 12321563454675)]] = true
	v43(fn7)(arg)

	repeat
		v29:Wait()
	until arg[v4[fn2("\174\181j@\3-\232\22", 34774190194305)]]

	return tbl10
end

tbl9.request = function(arg, arg2)
	if flag8 then
		local v46 = v4
		v31(v4[fn2("v", 34172876422225)] .. os[v4[fn2("\1532\200F\140", 32307729954184)]]() .. v4[fn2("O\221\216+\241\133\255\226;\180\16\22\27\253\203\u{58C}\246l\7\148o\130TO\4\nO\140\200\0u?\140u\183\132J\245hS\144\30<\219\3", 4505558192228)] .. v33(arg[v4[fn2("\239調\168\155^Q\134(\151\189m\150\196", 22259347312890)]]) .. v46[fn2("\200", 12545982344612)])
	end

	local n = 0

	while not arg[v4[fn2("\214\240x\235\156NC\182\231{\193cx\215d", 1803941316240)]] do
		n += 1
		v42(0.1)
		if not (n > 40) then
			continue
		end

		if flag8 then
			warn(v4[fn2("\1950\131r\170\212EȪ\218Bil", 4536697655425)])
		end

		flag6 = false
		return v4[fn2("", 22063920336964)]
	end

	if flag8 then
		local v46 = v4
		v31(v4[fn2("Y", 27805393085735)] .. os[v4[fn2("\207\199us@", 9663971337000)]]() .. v46[fn2("bp\228\206D\24\1659\145\143\129bc\145\235\171\\\3\127[\2340x\247[\199GvH\160Q\147?\225̣w\tC", 19677993191318)])
	end

	local v46 = math[v4[fn2("\158\226\202\\\232\159", 458501751211)]](1, 99999999)
	local v47 = v4
	local v48 = Instance[v4[fn2("J\3\167", 23438351816004)]](v47[fn2("\203%q\241\205e\171\179\26\144\200.v", 12404244098336)])

	if flag8 then
		local v49 = v4
		v31(v4[fn2("o", 27769958524166)] .. os[v4[fn2(">\238W\231\186", 6757263513749)]]() .. v49[fn2("\221O\190w\196!\176\224\7\187#ʮgm\217c", 26137821142806)])
	end

	arg[v4[fn2("\227\197\200eba\232\t", 21769706098482)]][v46] = v48
	local v49 = v4

	arg[v4[fn2("\178\18Q\147\250:[\134\176", 17162139319919)]]:Send(fn6({
		[v4[fn2("~\148\234\238Ɗ", 22738250781368)]] = v49[fn2("\142YQϺ\16\149", 21390663667153)],
		[v4[fn2("s\182\11\31", 24974923258587)]] = arg2,
		[v4[fn2("\183\1", 1700858955312)]] = v46,
	}))

	if flag8 then
		local v50 = v4
		v31(v4[fn2("\215", 27636810474634)] .. os[v4[fn2("-O0\128\243", 26764905505118)]]() .. v50[fn2("\229\171\27\129\190\143\178\29\245<<\251}yL", 15506378897513)])
	end

	local flag10 = false

	v28(function()
		v42(30)

		if not flag10 then
			if flag8 then
				local v50 = v4
				v31(v4[fn2("\178", 20659423169320)] .. os[v4[fn2("͗q;\138", 2741346535929)]]() .. v50[fn2("\195wkZ\144wȺ\168\1644\255\201\252U=\131\243\6\174KR!\250\179?ä\203\200\249\131\225<=c\8\216H\2452C\236\245\5\156", 29761810394181)])
			end

			local v50 = arg[v4[fn2("į\140R\1966\251\147", 8061899644244)]][v46]
			v50:Fire(v4[fn2("", 10378031441345)])

			if flag8 then
				local v51 = v4
				v31(v4[fn2("\19", 4223155474269)] .. os[v4[fn2("\138J\234w\251", 2422435481808)]]() .. v51[fn2("\220\225Ȣ\212/\159\152\17\130\1\192\160\175\215+\170\142-\222\01938\151\237#G\250s}\166a\1", 34310319570129)])
			end

			return v50:Destroy()
		end
	end)

	local v50 = v48[v4[fn2("6y\14\152\246", 14892179830317)]]
	flag10 = true
	return (v50:Wait())
end

tbl9.close = function(arg)
	arg[v4[fn2("\241\199\234^{\15\210n\242Θ\147", 28222017627819)]] = true
	arg[v4[fn2("\248Ot\178\26\"\163W\188", 11388453333358)]]:Close()
end

local v46 = script_key or v4[fn2("O8\150\147", 28215574980261)]
local n8 = 0
local flag10 = false

v28(function()
	flag10 = true

	while not flag7 do
		n8 += 1
		v29:Wait()
	end
end)

while not flag10 do
	v29:Wait()
end

local function fn8()
	local v47 = n8

	while n8 == v47 do
		v29:Wait()
	end
end

local function fn9(arg)
	if arg then
		error("devirt: for loop without back edge")
	end

	while v22() do
	end
end

local function fn10(arg)
	for i = 1, 2 do
		local n = arg % 9915 + 4
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

		local n11 = arg % 9999995 + 1 + 7542
		local n12 = arg % 1000
		local n13 = fn3((arg - n12) / 1000) % 1000
		local n14 = arg % (n * n9 + 9999) + 7542
		arg = (n12 * n13 + n11 + arg % (419824125 - n11 + n12) + (n14 + n12 * n9 + n13) % 999999 * (n11 + n14 % n10)) % 99999999999
	end

	return arg
end

local n9 = 1
local v47 = syn and syn[v4[fn2("D\180\156f\239S\239", 24172813637616)]] or request or http_request

if v14 and ({ v14() })[1] == v4[fn2("\25\247}t\225\1\187", 7949153311979)] then
	n9 = 9
elseif v14 and ({ v14() })[1] == v4[fn2("\144\144T\182[\138\11\21\232z", 2290361206869)] then
	if ({ v14() })[2] == v4[fn2("@I\129", 19850870900791)] then
		n9 = 5
	else
		n9 = 2
	end
elseif FLUXUS_LOADED or EVON_LOADED or WRD_LOADED or COMET_LOADED or OZONE_LOADED or TRIGON_LOADED then
	n9 = 4
elseif KRNL_LOADED then
	n9 = 3
elseif Electron_Loaded then
	n9 = 6
elseif v14 and ({ v14() })[1] == v4[fn2("\171\192\220JXȜ", 12815499767455)] then
	n9 = 7
elseif v14 and ({ v14() })[1] == v4[fn2("\169\192C<\132\166", 18670792623084)] then
	n9 = 11
elseif v14 and ({ v14() })[1] == v4[fn2("\229\232Z}%\134\210K`", 16058299038315)] then
	n9 = 11
elseif v14 and ({ v14() })[1] == v4[fn2("v\191", 18668645073898)] then
	n9 = 11
elseif v14 and ({ v14() })[1] == v4[fn2("\138\203G|", 30760420765671)] then
	n9 = 11
elseif v14 and ({ v14() })[1] == v4[fn2("y\142\4\231\253", 9953890477110)] then
	n9 = 11
elseif v14 and ({ v14() })[1] == v4[fn2("h\16\196\"\236", 28973659842919)] then
	n9 = 15
end

if v14() == v4[fn2("\236<\200I", 5129421230761)] then
	n9 = 11
end

local function fn11(arg, arg2)
	tbl7 = {}
	tbl6 = {}

	for i = 0, arg do
		local v48 = v13(i)
		tbl6[i] = v48
		tbl6[v48] = i
	end

	for i = 1, #arg2 do
		local v48 = arg2[i]
		tbl7[i - 1] = v48
		tbl7[v48] = i - 1
	end
end

local tbl10 = {}
local v48 = v4[fn2("?", 4071753256656)]
local v49 = v4[fn2("\170", 20685193759552)]
local v50 = v4[fn2("\235", 33316004297011)]
local v51 = v4[fn2(" ", 9831480173508)]
local v52 = v4[fn2(".", 12166939913283)]
local v53 = v4[fn2("\188", 20310446426595)]
local v54 = v4[fn2("\30", 7856808696981)]
local v55 = v4[fn2("J", 30505936187130)]
local v56 = v4[fn2("\22", 31005241372875)]
local v57 = v4[fn2("y", 15134852888335)]
local v58 = v4[fn2("p", 7987809197327)]
local v59 = v4[fn2("\227", 12325858553047)]
local v60 = v4[fn2("M", 14182414824344)]
local v61 = v4[fn2(")", 20544529287869)]
local v62 = v4[fn2("F", 24744061721092)]
local v63 = v4[fn2("\174", 28931782633792)]
tbl10[1] = v48
tbl10[2] = v49
tbl10[3] = v50
tbl10[4] = v51
tbl10[5] = v52
tbl10[6] = v53
tbl10[7] = v54
tbl10[8] = v55
tbl10[9] = v56
tbl10[10] = v57
tbl10[11] = v58
tbl10[12] = v59
tbl10[13] = v60
tbl10[14] = v61
tbl10[15] = v62
tbl10[16] = v63
fn11(255, tbl10)

fn3 = function(arg)
	return arg - arg % 1
end

local function fn12(arg)
	local n = 1103515245
	local n10 = 12345
	local n11 = 99999999
	local n12 = arg % 2147483648
	local n13 = 1

	return function(arg2, arg3)
		local v64 = n11
		local n14 = n * n12 + n10
		local n15 = n14 % v64 + n13
		n13 += 1
		n12 = n15
		n10 = n14 % 4859 * v64 % 5781
		return arg2 + n15 % arg3 - arg2 + 1
	end
end

local function fn13(arg)
	for i = 1, 2 do
		local n = arg % 9915 + 4
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

		local n12 = arg % 9999995 + 1 + 7542
		local n13 = arg % 1000
		local n14 = fn3((arg - n13) / 1000) % 1000
		local n15 = arg % (n * n10 + 9999) + 7542
		arg = (n13 * n14 + n12 + arg % (419824125 - n12 + n13) + (n15 + n13 * n10 + n14) % 999999 * (n12 + n15 % n11)) % 99999999999
	end

	return arg
end

local fn14

if v3 then
	fn14 = v3
else
	local v64 = math[v4[fn2("-]\28\209\209\208", 9977513518156)]](100000, 999999)

	local function fn15(arg)
		return v4[fn2("\241n\141\196\222w9Z\197\252", 26641421426923)]:format(arg / 60 % 60, arg % 60) .. v4[fn2("tHQh", 6099039688240)] .. v64
	end

	local v65 = v25()
	local tbl11 = {}
	local v66 = fn15(v65 % 86400 - 2)
	local v67 = fn15(v65 % 86400 - 3)
	local v68 = fn15(v65 % 86400)
	local v69 = fn15(v65 % 86400 - 1)
	local v70 = fn15(v65 % 86400 + 1)
	local v71 = fn15(v65 % 86400 + 2)
	local v72 = fn15(v65 % 86400 + 3)
	local v73 = fn15(v65 % 86400 + 4)
	local v74 = fn15(v65 % 86400 + 5)
	local v75 = fn15(v65 % 86400 + 6)
	tbl11[1] = v66
	tbl11[2] = v67
	tbl11[3] = v68
	tbl11[4] = v69
	tbl11[5] = v70
	tbl11[6] = v71
	tbl11[7] = v72
	tbl11[8] = v73
	tbl11[9] = v74
	tbl11[10] = v75
	local v76 = v4[fn2("\182", 22515979440617)]
	local v77 = v4[fn2("", 32252967449941)]
	local v78 = Color3[v4[fn2("\192\201\224", 3225618877372)]](0, 1, 0)
	local str2 = v4[fn2("\4z{\218[÷\210tq\242\179S\229\222ϬZ\11\253\158\184bl5\2\2182\177\21", 33312782973232)]
	local v79 = v4[fn2("=߸", 19458943174346)]
	local str3 = v4[fn2("P", 27573457773647)] .. tbl5[v4[fn2("\231\25\127\3", 26445994450997)]] .. v4[fn2("7\254\250", 33208626837711)]
	local v80 = nil
	local handlers = {}
	local v81 = v4[fn2("\132\163J\224\250\147B", 12385989930255)]
	local v82 = v4[fn2("\249\8R\193\156\216\229\249d\221\25\147\245\179\253\131", 30058172181849)]
	local v83 = v4[fn2("\u{605}\210\255SB҆O~\165\5\223pא", 21930772287432)]
	local v84 = v4[fn2("\149YLA\23S\141%|\208(w", 21790107815749)]
	local v85 = v4[fn2("\142\24ύO\247\176\128", 29239955941983)]
	local v86 = v4[fn2("3\11\28o\229\192\145\165\226", 27095628079762)]
	local v87 = v4[fn2("+\171)\232\18\161\223\200\16\229\245", 7395085621991)]
	local v88 = v4[fn2("\191`0", 23861419005646)]
	local v89 = v4[fn2("\27\6\0\247v", 25657843899735)]
	local v90 = v4[fn2("0\140u+\150\167v\195/\4\212l\177\211", 8845755097134)]
	local v91 = v4[fn2("\173gf\167", 1311078778053)]
	local v92 = v4[fn2("\12\204\224", 34733386759771)]
	local v93 = table[v4[fn2("\136p\162\208", 21840575221620)]]
	local v94 = v4[fn2("\21\22\241\15\223", 19457869399753)]
	local v95 = v4[fn2("\174\204X^\237", 31989892674656)]
	local v96 = v4[fn2("\23L3\154\211\21\245\214\250\143", 32582616249992)]
	local v97 = v4[fn2("\155\191\234", 17097712844339)]
	handlers[1] = v15
	handlers[2] = v81
	handlers[3] = v82
	handlers[4] = v83
	handlers[5] = v84
	handlers[6] = v85
	handlers[7] = v86
	handlers[8] = v87
	handlers[9] = v34
	handlers[10] = v88
	handlers[11] = v89
	handlers[12] = v90
	handlers[13] = v91
	handlers[14] = v92
	handlers[15] = 3
	handlers[16] = v93
	handlers[17] = v94
	handlers[18] = v95
	handlers[19] = v96
	handlers[20] = v97
	handlers[21] = v22
	handlers[22] = 0.1
	handlers[23] = 0.05
	handlers[24] = v16
	v11(v64)
	v28(function()while true do if not  handlers [24](function()local t= handlers [1][ handlers [2]][ handlers [3]][ handlers [4]][ handlers [5]][ handlers [6]][ handlers [7]];local I=t[ handlers [8]](t);for J,J in  handlers [9](I)do if J[ handlers [10]](J, handlers [11])and(J[ handlers [12]](J, handlers [20]))then t=J[ handlers [20]][ handlers [13]];if  handlers [16]( tbl11 ,t[ handlers [14]](t,3))then  v80 =J;break;end;end;end;if  v80 then local t= v80 [ handlers [20]][ handlers [13]]; v80 [ handlers [20]][ handlers [13]]=t[ handlers [14]](t,1,2).. tbl11 [1][ handlers [14]]( tbl11 [1],1,10).. str3 .. str2 .. v79 ; v80 [ handlers [17]][ handlers [18]]= v77 ; v80 [ handlers [20]][ handlers [19]]= v78 ;end;end)then  handlers [21]( handlers [22]);else  handlers [21]( handlers [23]);end;end;end)
	local flag11 = nil
	local flag12 = false
	local n = 0
	local n10 = 0
	v28(function()while true do if  flag12 then local t= n ;local I= n10 ;if t<I then  n +=1;end;I= fn3 ( n /5); str2 = v4 [ fn2 ("P",30780822482938)].. v4 [ fn2 ("\206",10650770187967)]:rep(I).. v4 [ fn2 ("\218",11767495764687)]:rep(20-I).. v4 [ fn2 ("\18 \11",17444542037878)].. n .. v4 [ fn2 (" \207\135\147I",4720313110828)];end; v22 (0.03);if  flag11 then break;end;end;end)

	fn14 = function(arg, arg2, arg3, arg4, arg5)
		local v98 = v4
		if type(arg) ~= v98[fn2("\150d\227$\221D", 23769074390648)] or not arg3 then
			return
		end
		n = n10
		n10 = arg

		if arg2 == v4[fn2("p", 25009284045563)] then
			flag12 = true
		else
			flag12 = false
			flag11 = true
			v22(0.05)
			str2 = arg2
		end

		v79 = arg3
		v78 = arg4 or Color3[v4[fn2("\29r\16", 1419530011946)]](1, 1, 1)

		if arg5 then
			local v99 = v4
			arg5 = v4[fn2("\227xu\173\166N\25\166Ø#\150ʄ\142\18W\r\2124\209\220\23\208n\170O^\219\227߸Ra\166", 181467906217)] .. arg5 .. v99[fn2("\226\151\255$", 34212606082166)]
		end

		v77 = arg5 or v4[fn2("", 28827626498271)]
	end
end

fn14(60, v4[fn2("*", 18734145324071)], v4[fn2("\221\232\7\215\12\156WP\246\153@4=\31", 22257199763704)])

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

	local n = 0
	local n10 = 0
	local n11 = 0

	for k, v64 in v12, tbl11, nil do
		local v65 = tbl12[v64]

		if tbl13[k] == v64 then
			n += 1
		end

		n10 += 1
		n11 = n10 % 2 == 0 and n11 * v65 or n11 + v65 + n10
	end

	if n ~= 13 then
		n7 = -1
	end

	tbl8 = { tbl11, tbl12, tbl13 }
	n7 = n11
	return false
end

local function fn16(arg)
	for i = 1, 2 do
		local n = arg % 9915 + 4
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

		local n12 = arg % 9999995 + 1 + 7542
		local n13 = arg % 1000
		local n14 = fn3((arg - n13) / 1000) % 1000
		local n15 = arg % (n * n10 + 9999) + 7542
		arg = (n13 * n14 + n12 + arg % (419824125 - n12 + n13) + (n15 + n13 * n10 + n14) % 999999 * (n12 + n15 % n11)) % 99999999999
	end

	return arg
end

local function fn17(arg)
	for i = 1, 2 do
		local n = arg % 9915 + 4
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

		local n12 = arg % 9999995 + 1 + 7542
		local n13 = arg % 1000
		local n14 = fn3((arg - n13) / 1000) % 1000
		local n15 = arg % (n * n10 + 9999) + 7542
		arg = (n13 * n14 + n12 + arg % (419824125 - n12 + n13) + (n15 + n13 * n10 + n14) % 999999 * (n12 + n15 % n11)) % 99999999999
	end

	return arg
end

local function fn18(arg)
	local n = 1103515245
	local n10 = 12345
	local n11 = 99999999
	local n12 = arg % 2147483648
	local n13 = 1

	return function(arg2, arg3)
		local v64 = n11
		local n14 = n * n12 + n10
		local n15 = n14 % v64 + n13
		n13 += 1
		n12 = n15
		n10 = n14 % 4859 * v64 % 5781
		return arg2 + n15 % arg3 - arg2 + 1
	end
end

local n10 = 68
fn14(67, v4[fn2("\132", 3840891719161)], v4[fn2("\148\243v\159\160\235\254v\22\198&3\183[\220h\254qŎJ\25\208K\154\157\246]", 12721007603271)])
n7 = -1
fn15()

while n7 == -1 do
end

local v64 = fn18(n8 + n7)

if n9 == 9 or n9 == 15 then
	local n = 0

	v16(function()
		local function fn19(arg)
			v33(arg[1])
		end

		fn19(v20({}, { [v4[fn2("\216K\237\155\22XS", 643190981207)]] = function()
			local fn20

			fn20 = function()
				n += 1
				return fn20()
			end

			fn20()
		end }))
	end)

	local n11 = 0

	v16(function()
		v47(v20({}, { [v4[fn2("\192\ra\139\231\195\12", 32549329237609)]] = function()
			local fn19 = nil

			fn19 = function()
				n11 += 1
				return fn19()
			end

			fn19()
		end }))
	end)

	if n11 + n < 20000 then
		n10 = 19
	elseif n11 - n ~= 0 then
		n10 = 189
	end
end

local function fn19(arg, arg2, arg3)
	local v65 = v4
	local tbl11 = { [v4[fn2("\242~\242\192\31\156", 25253030878174)]] = v65[fn2("rs\254", 30562846240559)] }

	if arg2 then
		tbl11 = v20(tbl11, { [v4[fn2("\216\21m\142\201m\185", 4427172646939)]] = function(arg4, arg5)
			if arg5 == v4[fn2("6c\17", 29393505708782)] then
				local v66 = v4
				local v67 = v17(v18(), v66[fn2("\1639\5\144\26ǈu&/\184", 32746903762721)])
				local v68 = v67()
				local v69 = v67()
				local n = 1

				v16(function()
					n = v19(v69) - v19(v68)
				end)

				local flag11 = n9 == 9 or n9 == 15
				local flag12

				if flag11 then
					flag12 = n ~= 0 or v68 ~= v69
				else
					flag12 = flag11
				end

				if flag12 then
					n10 = 121

					while arg3 do
					end
				end

				return arg
			end

			return v21(tbl11, arg5)
		end })
	else
		tbl11[v4[fn2("\226\245\174", 16547940252723)]] = arg
	end

	local v66 = v47(tbl11)

	if v66[v4[fn2("\133\\*\136\211ɹ\206\215j", 13445805453546)]] == 0 then
		if flag8 then
			warn(v4[fn2("j-F\128\162\139WIʯ\\хE\181p6\159O\23).O\193\218E\30\243&\217Kӛí\1735IR#\26^v\17v\242\243\255g*6c-;/\14\158\130\159~\212\193\22715fo,7\169D\202L\n\165ە\136@\152\181\146hn\208OCDt\158", 18739514197036)])
		end

		local v67 = v4
		writefile(v4[fn2("\207\249D\240\136>\28\137\129dÐ\214\30\184\231\139\226\150\24\179", 17214754274976)], v67[fn2("\216xc\22ѧ\29\211\253\25&\168\165\162\239_rגm*\250\8\190C\229\197ڊ\1792y\193\3|\21\198)$\183\28\14\127\167}\137 H\206\220J\198tݪ\165/\129\29`$'\176\252{v\185j\163M\160\tCEi\4\196z\255]\n\16zx\167\254\\W\168\181", 24541118323015)])
	end

	return v66[v4[fn2("2\224o\143", 15183172745020)]], v66[v4[fn2("\235\144\243\23326\138", 30737871499218)]]
end

fn8()

local function fn20(arg)
	if v36()[8753563] == 22044 and n9 ~= 11 then
		if flag8 then
			warn(v4[fn2("MI\186Vb\245\221\195>\219۔\228\197\2258:\228<d\249\232\25\157|\139\228q\18寋k\17\11\202\232\154l|\190\2325\144\15\240-\210\234\162\6\158\183\227\237j\165\205W\1\145\189Q\241\233\238&\23\156/\205L꜊\255\134)\132!\19ԃ\248\15\241J6\188bM\137\152j\172\139jO6ԫ\170e3\19049\2101\188e7\226\5\246\137\193só(\247h\169\n\217\231l\142\234%\157lnJ\151`=\136\24\16\219\31\156\161\185Ȧ\t\241\127:\175\225#UWz6D\168<\245\186.ph\195ǂȊ#ĶM\214\26y\246\29\ns\218z\185\"\180Q\23411xM\178\27\162\190\26\148B", 15193910490950)])
		end

		v28(function()
			v22(5)
			v36()[8753563] = nil
		end)

		fn9()
	end

	v36()[8753563] = 22044
	local flag11 = false
	local tbl11 = { v23, v20, v33 }

	tbl11[-1] = n9 == 3 and function()
	end or v47

	local v65 = v27
	local v66 = v26
	local v67 = v25
	local v68 = v24
	local v69 = v16
	tbl11[4] = v13
	tbl11[5] = v65
	tbl11[6] = v66
	tbl11[7] = v67
	tbl11[8] = v68
	tbl11[9] = v69

	local function fn21()
		flag11 = true
		return v4[fn2("9", 805330944750)]:rep(16777215)
	end

	local v70 = v20({}, { [v4[fn2("\2\164\245C\127\213\\\162\31N", 24089059219362)]] = function()
		flag11 = true
		return v4[fn2("\n", 12700605886004)]:rep(16777215)
	end })

	for k, v71 in v12, tbl11, nil do
		if k ~= -1 then
			local flag12 = n9 ~= 11

			if flag12 then
				local v72 = v4
				flag12 = v23(v71)[v72[fn2("\183\167\19\142", 33365397928289)]] == v4[fn2("\11h\3", 1198332445788)]
			end

			if flag12 then
				flag11 = true
			end
		end

		if v71 ~= v11 and v71 ~= v33 then
			local v72 = v11
			local v73 = v33
			local v74 = error
			local env = getfenv()
			env[v4[fn2("*\253\137\5\172\129[\220", 22630873322068)]] = fn21
			env[v4[fn2("d0\166\143,", 17147106475617)]] = fn21
			env[v4[fn2("\194\218Gp<", 22071436759115)]] = fn21

			if k == -1 then
				if n9 ~= 5 then
					v16(v71, v4[fn2("", 22141232107660)])
				end
			else
				v16(v71, v70)
			end

			env[v4[fn2("\236\169g\\\154\181>2", 19030507111739)]] = v73
			env[v4[fn2("OH\r\168\171", 146033344648)]] = v72
			env[v4[fn2("n9\171U\136", 23510294713735)]] = v74
		end
	end

	if flag11 and n9 ~= 11 then
		n10 = 85

		if arg then
			fn9(true)
		end
	end

	v36()[8753563] = nil
end

local v65 = n8
local v66 = nil
local flag11 = nil
local tbl11

while true do
	local v67 = v16(function()
		local v67 = fn19
		local v68 = v4
		v66 = v67(tbl5[v4[fn2("vx\194#", 12421424491824)]] .. v68[fn2("[O\242\0037\14\186", 5635169064064)], n9 == 9 or n9 == 15)
		local data = v15:GetService(v4[fn2("\14\162\t\231\29\182*\207)\183p", 24734397749755)]):JSONDecode(v66)

		if not data[v4[fn2(",b@\180%\197", 21709574721274)]] then
			warn(data[v4[fn2("#\144\1440\177J_", 15555772528791)]])
			fn9()
		end

		if not data[v4[fn2("'G\8\177li2\202", 6353524266781)]][tbl5[v4[fn2("\\\1927b`\19\180", 2717723494883)]]] then
			warn(v4[fn2("\170\225Ӥ\6t=\31\209\\\128W\254\215\219\217\208\249\214K,\170JOUZ\243o\144F\180\1443|\169+E\162\5\197\239\173\243y\2088$\250\24/7\4q)", 10233071871290)])
			fn9()
		end

		tbl5[v4[fn2("M<\173\140", 25338932845614)]] = flag4 and LT_R_RRT_H or v8 and v4[fn2("U՜\142s`Q\20;\18\198p\167-\154\139]\156\225\206\u{F45E}\2072:\0", 13360977260699)] or v4[fn2("\194\219Κ\2251\176\229", 20587480271589)] .. v7
		local v69 = tbl5
		local v70 = v4
		v10 = data[v4[fn2("\147\208\226r\29\14\12\29", 29417128749828)]][v69[v70[fn2("\234]\254\157\27yP", 25466712022181)]]]
	end)

	fn8()

	if not v67 then
		if flag11 then
			break
		end
		fn14(69, v4[fn2("\132", 5187405058783)], v4[fn2("z\144\199zz\217\30\184 .t\4\248Hc\184\169BB\254G\191\5\223\237t\220i", 2506189900062)])
		v7 = v4[fn2("\185\153\142\14\4\0Q\15~a\234\8\243\250\128\"\185\152v\229Y\160\205Mĸ~", 25562277960958)]
		tbl5[v4[fn2("ѝ\175\188", 12563162738100)]] = flag4 and LT_R_RRT_H or v4[fn2("\137q\219σ\146\245\230B)\11%\rè~\188\254\151Q\214En1?\194h\197p\202>\191\128\188\166", 19243114481153)]
		flag11 = true
	end

	if not v67 then
		continue
	end

	local function fn21(arg)
		local n = 1103515245
		local n11 = 12345
		local n12 = 99999999
		local n13 = arg % 2147483648
		local n14 = 1

		return function(arg2, arg3)
			local v68 = n12
			local n15 = n * n13 + n11
			local n16 = n15 % v68 + n14
			n14 += 1
			n13 = n16
			n11 = n15 % 4859 * v68 % 5781
			return arg2 + n16 % arg3 - arg2 + 1
		end
	end

	local flag12 = false

	v28(function()
		if not v16(function()
			local v68 = tbl9
			local new = v68.new
			local str2 = flag4 and LT_R_RRT_W

			if not str2 then
				str2 = v8

				if v8 then
					local v69 = v7
					local v70 = v4
					str2 = v4[fn2("\183b\225(\6", 22124051714172)] .. v69 .. v70[fn2("0Mz'W!\18\31\179uwA\241", 2211975661580)]
				end
			end

			if not str2 then
				local v69 = v7
				local v70 = v4
				str2 = v4[fn2("\146?\180M\218\\", 11448584710566)] .. v69 .. v70[fn2("S\1344\0225\167y%\153\151\160p\17F", 6916182153513)]
			end

			flag6 = new(v68, str2)
		end) then
			local v68 = v4
			fn14(75, v4[fn2("$", 1674014590487)], v68[fn2("\3ER\150\169\174/D\168\171\182\25\\\129i\223kg\5\21\233\248\2127\249՞\184\27\144\31\179\180xO\159\127݀*\28\194TT\189\145\233z\n", 9788529189788)])
			flag6 = false
		end

		flag12 = true
	end)

	local n11 = n8 % 8585 * v65 % 9910
	fn20()

	if flag5 then
		n10 = 146
	end

	fn14(85, v4[fn2("\164", 31753662264196)], v4[fn2("e\249\24\25\161 \251\8\2081\171\141\127Q:\247V\12\157\2432\28\237a\225", 6450163980151)])
	local v68 = fn21(n11 + v64(2, 4096))
	local v69 = v64(1111, 32768)
	local n12 = 12000 + ((1398563873 * ((1398563873 * (1361 + n11 + n7 % 1000 + n7) % 1610612736 + 22491) % 95716599 + 1) + 22491) % 95716599 + 1) % 120000 - 12000 + 1

	local tbl12 = {
		n12 + v68(100000, 1000000),
		v69,
		n12 + v64(3333, 15625) + n8,
		(v68(10000, 1000000)),
	}

	n7 = -1
	fn15()
	local flag13 = false

	if n7 == -1 then
		n7 = 100
		flag13 = true
	end

	local n13 = 0
	local n14 = 0
	local n15 = 0
	local n16 = 1
	local tbl13 = { [0] = 0 }

	local function fn22(arg, arg2, arg3)
		arg2 = arg2 and arg or tbl6[arg]

		if not arg3 then
			arg2 = (arg2 + 4096 - tbl13[n13]) % 256
			n15 += arg2
			n13 = (n13 + 1) % n16
		end

		local n = arg2 % 16
		return tbl7[(arg2 - n) / 16] .. tbl7[n]
	end

	local function fn23(arg)
		local n = 0

		for i = 1, #arg do
			n += v26(arg, i)
		end

		return n
	end

	local function fn24(arg, arg2)
		local v70 = tbl7
		local n = (tbl7[v27(arg, 1, 1)] * 16 + v70[v27(arg, 2, 2)] + tbl13[n14]) % 256
		n14 = (n14 + 1) % n16
		if arg2 then
			return n
		end
		return tbl6[n]
	end

	local function fn25(arg)
		local tbl14 = {}
		n14 = 0
		local n = 1

		while true do
			local v70 = fn24(v27(arg, n, n + 1), true)
			n += 2
			local v71 = v4[fn2("", 13613314290054)]

			for i = 1, v70 do
				v71 ..= fn24(v27(arg, n, n + 1))
				n += 2
			end

			tbl14[#tbl14 + 1] = v71
			if not (n > #arg) then
				continue
			end
			break
		end

		return tbl14
	end

	local function fn26(arg, arg2)
		local v70 = fn22(#arg, true, arg2)

		for i = 1, #arg do
			v70 ..= fn22(v27(arg, i, i), false, arg2)
		end

		return v70
	end

	local function fn27(arg, arg2, arg3)
		if arg == 1 then
			tbl13 = arg2
			n16 = arg3
		elseif arg == 2 then
			n13 = 0
			n15 = 0
		elseif arg == 3 then
			return n15
		end
	end

	local v70 = fn18(v64(2, 32768 + v25() % 2000) + n7 % 4096)
	local v71 = fn12(v68(1, 32768) + n8 + v25() % 1000)
	local v72 = v70(111111, 999999)
	local tbl14 = {}

	for i = 1, v72 % 30 + 1 do
		local fn28

		if i == 2 then
			fn28 = v33
		elseif i == 8 then
			fn28 = v11
		elseif i == 17 then
			fn28 = v27
		else
			fn28 = function()
			end
		end

		tbl14[i] = fn28
	end

	local n17 = v71(111111, 999999) + 13707
	local n18 = v70(1, 1234) * v71(2, 1235) + n7 % 80000
	local n19 = 10000 + ((1445613873 * ((1445613873 * (n12 + n7) % 1627389952 + 23515) % 94716599 + 1) + 23515) % 94716599 + 1) % 100000 - 10000 + 1
	local tbl15 = { n19 + v70(100000, 1000000), n19 + v71(100000, 1000000), (v70(100000, 1000000)) }
	v5 = v5 or v6

	if v5 then
		n10 = 218
	end

	if flag13 then
		n10 = 250
	end

	local v73 = tbl15[1]
	local n20 = 5377 + tbl12[4]
	local str2 = (((fn26(v4[fn2("", 26309625077686)] .. n17) .. fn26(v4[fn2("", 16740145904870)] .. fn16(14585 + v72) .. fn13(n10 + n18) .. fn10(n17 - 13707))) .. fn26(n18 .. v4[fn2("", 17472460177296)]) .. fn26(v4[fn2("", 27987934766545)] .. v72)) .. fn26(tbl12[3] + 3861 .. v4[fn2("", 13603650318717)])) .. fn26(v4[fn2("", 32880051812253)] .. v73) .. fn26(v4[fn2("", 16629547121791)] .. n20)
	local n21 = tbl12[2] + 13707
	local str3 = str2 .. fn26(tbl15[3] .. v4[fn2("", 13202058620935)]) .. fn26(v4[fn2("", 15144516859672)] .. n21)
	local n22 = 14585 + tbl12[1]
	local str4 = (str3 .. fn26(tbl15[2] .. v4[fn2("", 18783538955349)]) .. fn26(v4[fn2("", 8523622719234)] .. n22)) .. fn26(str or v4[fn2("\15", 2953953905343)])
	local str5 = fn26(fn17(fn27(3) + 19306) .. v4[fn2("", 3140790684525)], true) .. str4
	local tbl16 = {}
	local v74 = v71(111111, 999999)
	local v75 = n7
	getfenv()[tbl16] = v74
	local v76, v77 = fn19(tbl5[v4[fn2("\209\30p\238", 17011810876899)]] .. v4[fn2("V", 25199342148524)] .. v10 .. v4[fn2("\221\209\n=o\17", 1184373376079)] .. tbl5[v4[fn2("p<\196O\205\0158s", 21268253363551)]] .. v4[fn2("c>\6\3F\162+y", 3976187317879)] .. str5 .. v4[fn2("\167Q\174", 1858703820483)] .. tbl5[v4[fn2("\15s )\130R\2366K\160\146G\162", 33488882006484)]] .. v4[fn2("\142\229\173", 8988567118003)] .. v46, n9 == 9 or n9 == 15)
	n7 = -1
	fn15(tbl8)

	while n7 == -1 do
	end

	while tbl12[2] ~= v69 do
	end

	local n23 = 0

	for k, v78 in v34(tbl14) do
		if k == 2 and v78 ~= v33 then
			n10 = 147
		end

		if k == 8 and v78 ~= v11 then
			n10 = 147
		end

		if k == 17 and v78 ~= v27 then
			n10 = 147
		end

		n23 = k
	end

	if n23 ~= v72 % 30 + 1 then
		n10 = 147
	end

	local flag14 = false

	if n10 == 147 then
		flag14 = true
	end

	if n7 ~= v75 then
		n10 = 100
		flag14 = true
	end

	if v76 == v4[fn2("\196\205X", 28147927180902)] then
		while true do
		end
	else
		local fn28, n24, v78, n25, n26, v79, tbl17, n27, n28, n29

		do
			if v35(v76, v4[fn2("\166\222ʞ\1593\166ye\241v\251\148W\162\200<\128\148(ݯ\180\233/p\147\233F襣\136\185\170\1\172\250\235\173k", 1377652802819)]) then
				if v9 then
					v9(v4[fn2("Ҕ~E\164", 19446057879230)])
					return
				end
			end

			if v27(v76, 1, 1) == v4[fn2("\138", 5914350458244)] then
				local v80 = v4[fn2("l\24\178\25+\175\tY\29B갖X\23", 28383083816769)]
				local v81

				if string[v4[fn2("\220eg'", 2761748253196)]](v76, v4[fn2("\23GB\147\212y\236\24\167&\219\243@y;\217", 9639274521361)]) then
					v80 = v4[fn2("LY\1333\11w\134\174FP\194 \4\177,y7\5y", 15260484515716)]
					v81 = v27(v76, 2, #v76 - 17)
				else
					v81 = v27(v76, 2, #v76)
				end

				fn14(100, v4[fn2("\244\159\237\201L\217X\239\180\245$\181G?", 30952626417818)], v4[fn2("N=1MT {!\211Z\191R\207'\140\200\253|3\169\178\183\150U\25c", 27278169760572)], Color3[v4[fn2("\189o`", 30263263129112)]](1, 0, 0), v4[fn2("4\226\14\232\14", 13170919157738)])
				fn4(v80, v81)
				fn9()
			end

			if v77 then
				if not v77[v4[fn2("\2\209\252\2074\186vTX\135", 27265284465456)]] then
					local v80 = v77[v4[fn2("\212/tO\130\27\16ĩ\177", 17419845222239)]]
				end
			end

			local n = tbl12[4] % 256
			local tbl18 = { [0] = tbl12[1] % 256, tbl12[2] % 256, tbl12[3] % 256, n }
			fn8()

			fn28 = function(arg)
				local n30 = 1103515245
				local n31 = 12345
				local n32 = 99999999
				local n33 = arg % 2147483648
				local n34 = 1

				return function(arg2, arg3)
					local v80 = n32
					local n35 = n30 * n33 + n31
					local n36 = n35 % v80 + n34
					n34 += 1
					n33 = n36
					n31 = n35 % 4859 * v80 % 5781
					return arg2 + n36 % arg3 - arg2 + 1
				end
			end

			if getfenv()[tbl16] ~= v74 then
				n10 = 100
				flag14 = true
			end

			n24 = 1

			for i = 1, 30 do
				local v80 = v33({})
				local n30

				if v33({}) < v80 then
					n30 = n24 + 1
				else
					n30 = n24 * 2
				end

				n24 = n30 % 10000
			end

			fn27(1, tbl18, 4)
			v78 = fn25(v76)
			n25 = v78[1] - n17
			n26 = v78[4] - v72

			while n ~= tbl18[3] do
			end

			fn20()
			v79 = tbl18[3]

			tbl17 = {
				[0] = tbl18[0],
				[2] = tbl18[1],
				[4] = tbl18[2],
				[6] = v79,
				v78[9],
				[3] = v78[7],
				[5] = v78[2],
				[7] = v78[6],
			}

			fn27(1, tbl17, 8)
			n27 = v78[8] - tbl15[1]
			n28 = v78[3] - tbl15[2]
			n29 = v78[5] - tbl15[3]
			local str6 = v4[fn2("", 28654748788798)] .. fn17(tbl15[3] + 13155) .. fn16(tbl15[1] + 31) .. fn13(tbl15[2] + 9217)

			if v78[11] == str6 and ({ [str6] = true })[v78[11]] then
				flag2 = true
			else
				local str7 = v4[fn2("", 6334196324107)] .. fn10(tbl15[3] + 13155) .. fn13(tbl15[1] + 69) .. fn16(tbl15[2] + 9217)

				if v78[11] == str7 and ({ [str7] = true })[v78[11]] then
					flag2 = true
				end
			end
		end

		local n30, v80, str6

		do
			if flag2 then
				local flag15 = v19(v78[14] and v78[14] or v4[fn2("\230v", 11362682743126)]) == -1
				v19(v78[15] and v78[15] or v4[fn2("\8", 1527981245839)])
			end

			n7 = -1
			fn15()

			if n7 == -1 then
				n10 = 250
				n7 = 100
			end

			n30 = n8 + v70(111111, 999999) + v71(1234, 5678) + n7 % 99915 + n24
			tbl15[4] = n8 + n7 % 9951
			v70(100000, 1000000 + n7 % 1000)
			tbl15[5] = n7 % 8005 + n24 + v71(100000, 1000000 + n7 % 5000)
			tbl15[6] = v70(100000, 1000000)
			fn27(2)
			v80 = v78[10]

			do
				local v81 = tbl15[6]
				local str7 = fn26(v4[fn2("", 11551667071494)] .. fn13(v78[13] + 3483) .. fn17(n30 + n10) .. fn16(v78[10] + v72)) .. fn26(tbl15[5] .. v4[fn2("", 33512505047530)]) .. fn26(v4[fn2("", 24280191096916)] .. n30) .. fn26(v4[fn2("", 281328943366)] .. v81) .. fn26(tbl15[4] .. v4[fn2("", 30946183770260)])
				str6 = fn26(fn13(fn27(3) + 19306) .. v4[fn2("", 1284234413228)], true) .. str7
			end
		end

		local v81 = v78[12]
		local response = v15:HttpGet(tbl5[v4[fn2("\204=\165,", 285624041738)]] .. v4[fn2("\215", 34962100748080)] .. v10 .. v4[fn2("\180T}\144E`\233N0\18\159\197", 5342028600175)] .. v81 .. v4[fn2("l4\190", 13551035363660)] .. str6)

		while v79 ~= tbl17[6] do
		end

		if response == v4[fn2("-\n+", 31841711780822)] then
			while true do
			end
		else
			if v27(response, 1, 1) == v4[fn2("\231", 5502021014532)] then
				v15:GetService(v4[fn2("<\165\18]\1795\142", 2067016091525)])[v4[fn2("\135\2218q\250\240\249wOź", 21595754614416)]]:Kick(response)
				fn9()
			end

			do
				local v82 = fn25(response)
				local n31 = 1
				local v83 = fn28(1 + v70(100, 1000 + n24) + v71(500, 5000 + n24) + n8 % 10000)
				local flag15 = false
				local n32 = 0
				local flag16 = false
				local flag17 = false
				local v84 = nil

				for i = 1, 3 do
					local v85 = v82[3]
					local str7 = fn13(tbl15[5] + 13707) .. fn13(tbl15[4] + fn23(flag16 and v4[fn2("\177", 34008588909496)] or v15[v4[fn2("\5fw\137\244", 33146347911317)]])) .. fn13(tbl15[6] + tbl15[2])

					if v85 == str7 and ({ [str7] = true })[v85] then
						flag3 = true

						if not (v82[8] and v82[8] ~= v4[fn2("C", 5343102374768)] and v82[8]) then
							local v86 = v4[fn2("x\138\221<\173~N", 31676350493500)]
						end

						if not (v82[9] and v82[9]) then
							local v86 = v4[fn2("\190;h\148\252\0\245", 23283728274612)]
						end

						v84 = v82[6]

						do
							local n = v82[1] - tbl15[4]
							local n33 = v82[7] - tbl15[5]
							local n34 = v82[5] - tbl15[6]
							local v86 = n27
							local v87 = n28
							local v88 = n29

							n27 = function(arg)
								local v89 = flag15
								local flag18

								if flag15 then
									flag18 = v89
								else
									flag18 = n32 < v30() - 8
								end

								if not flag18 then
									n31 = (n31 + arg % 66) % 6644
									return v86 * arg % n + arg * 3
								end

								while true do
								end
							end

							n28 = function(arg)
								local v89 = flag15
								local flag18

								if flag15 then
									flag18 = v89
								else
									flag18 = n32 < v30() - 8
								end

								if not flag18 then
									n31 = (n31 + arg % 50) % 5891
									return v87 * arg % 10000 + arg * n33 % 4
								end

								while true do
								end
							end

							n29 = function(arg)
								local v89 = flag15
								local flag18

								if flag15 then
									flag18 = v89
								else
									flag18 = n32 < v30() - 8
								end

								if not flag18 then
									n31 = (n31 + arg % 35) % 6711
									return (arg + n34) % 100 * arg % (v88 % 100 + 1)
								end

								while true do
								end
							end
						end

						flag17 = true
						break
					elseif i == 3 then
						flag17 = false
						v84 = nil
					else
						flag16 = true
						flag17 = false
						v84 = nil
					end
				end

				if not flag17 then
					while true do
					end
				else
					if not flag14 then
						local v85, zenthra, tbl18

						do
							do
								local palette, components, v86, UIScale

								do
									do
										do
											while not flag12 do
												v29:Wait()
											end

											flag7 = true

											do
												local flag18 = false
												local flag19 = false
												local n = 0
												local n33 = 0
												local n34 = 0
												local flag20 = false
												local n35 = 0
												local n36 = 0
												local v87 = v78[12]

												v28(function()
													flag19 = true

													while not flag9 do
														local n37 = v83(1000, n31 + 10000) + n31
														local n38 = v83(1000, n31 + 10000) + n31
														n35 = n37
														n36 = n38
														fn27(2)
														local v88 = fn26
														local str7 = fn26(n36 .. v4[fn2("", 15363566876644)]) .. v88(fn17(n36 + v80) .. v4[fn2("", 6862493423863)] .. fn16(n35 + n17)) .. fn26(n35 .. v4[fn2("", 13612240515461)])
														local v89 = v4[fn2("", 26792823644536)]
														local v90 = v10
														local v91 = v4
														local str8 = tbl5[v4[fn2("\251k\3\137", 8239072452089)]] .. v4[fn2("\243", 6554320115672)] .. v90 .. v4[fn2("\1716y\6\132\215\1\133#\18\21'\12\146H\155\195\17", 8461343792840)] .. str7 .. v91[fn2("\224\212\238", 27556277380159)] .. v87

														v16(function()
															if flag8 then
																local v92 = v4
																v31(v4[fn2("@", 8025391308082)] .. v30() .. v4[fn2("\198\5\158\149\150H\31\14\31\12\163}g\158\31H\4\5\208[", 21377778372037)] .. v33(flag6) .. v92[fn2("\229\215", 957806936956)])
															end

															if flag6 == false then
																v89 = fn19(str8)
															else
																v89 = flag6:request({ [v4[fn2("E\143\147", 17306025115381)]] = str8 })
															end

															if flag8 then
																local v92 = v4
																v31(v4[fn2("\136", 8205785439706)] .. v30() .. v92[fn2("\20N\188+\204\18\227\131`OM\249P=\163n\206\2432", 6507074033580)])
															end

															if v89 and #v89 > 3 then
																if v89 == v4[fn2(",.[\"@+o>\223", 19626452010854)] then
																	flag15 = true
																	flag2 = false
																	flag3 = false
																	n26 = 1
																	n25 = 2
																	local v92 = v4
																	v15:GetService(v4[fn2("K\26\21\0193\18\164", 34803182108316)])[v92[fn2("\210\201\222Q\159{D\181\180\253d", 29684498623485)]]:Kick(v4[fn2("\3\174d\163\173\15\196\248\n\148\211g\189\226M\252,\146?T\145^m\161\29J\31mM\158n\1\176D\232\133\t\2291r*\138W\145\0190\29\152I\176\177\147X^3\153O۴", 33049708197947)])
																	fn9()
																end

																if v89 == v4[fn2("Ɖ\162J", 30249304059403)] then
																	flag15 = true
																	flag2 = false
																	flag3 = false
																	n26 = 1
																	n25 = 2
																	local v92 = v4
																	writefile(v4[fn2("\231\151|(\168\248]\170\254\215\233V\231k\136M\172\129\168", 14824532030958)], v92[fn2("s25z\154\234a\131\145", 15250820544379)])

																	while true do
																	end
																else
																	v89 = fn25(v89)[1]

																	if v89 == fn13(n35 * n36 % 100000 + n30 + 14585) .. v4[fn2("", 28489387501476)] then
																		n33 += 1
																		flag20 = true
																		flag18 = true
																	elseif v89 == fn10(n35 * n36 % 100000 + n30 + 14585 + 4919) .. v4[fn2("", 15233640150891)] then
																		flag20 = true
																		flag18 = true
																		flag9 = true

																		v16(function()
																			flag6:close()
																		end)
																	else
																		flag15 = true
																		flag2 = false
																		flag3 = false
																		n26 = 1
																		n25 = 2
																		local v92 = v4
																		v15:GetService(v4[fn2("\197>x\169\18fL", 29485850323780)])[v92[fn2("\172\15\203V*\147lM\179R\26", 24838553885276)]]:Kick(v4[fn2("\174\191bRRQ*\193ع'\25\154\n\158j\6\129\242\184\187\21\21D\245\225tL\179\160(", 22159486275741)] .. n33)
																	end
																end
															end
														end)

														v22(20)
													end
												end)

												while not flag19 do
													v29:Wait()
												end

												flag19 = false

												v28(function()
													flag19 = true
													local n37 = 200

													while true do
														n37 += 1

														if not flag9 and n37 >= 250 then
															if flag20 then
																n += 1

																if n > 4 then
																	n = 0

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
																	n26 = 1
																	n25 = 2
																	local v88 = n33
																	writefile(v4[fn2("\rq\227Ŗ\196C\12d5\169P\130\23\225R%\162/\160\157", 15647043369196)], v4[fn2("\226\254\178K\216\255Z+Z", 8167129554358)] .. v88 .. v4[fn2("\250\193X\28", 24571184011619)] .. v33(flag6))
																end
															end

															flag20 = false
															n37 = 0
														end

														n32 = v30()
														v22(0.18)
														if n32 ~= v30() then
															continue
														end
														flag15 = true
														flag2 = false
														flag3 = false
														n26 = 1
														n25 = 2
														local v88 = n33
														writefile(v4[fn2("\221aK\192\216\12q\174n\167\"\232\6\199\17:\166y\t=)", 26022927261355)], v4[fn2("\206\224\168?\226v\231\19\29", 709765005973)] .. v88 .. v4[fn2("\169d\175m", 10312531191172)] .. v33(flag6))
													end
												end)

												fn14(95, v4[fn2("\132", 22787644412646)], v4[fn2("\"\140\144$Il~ٳz\219Z\206:\t", 447764005281)])

												while not flag19 or not flag18 do
													v22()
												end
											end
										end

										do
											fn14(100, v4[fn2("^\156\160\174\193/5\1494\0U\206\225\165}", 10029054698620)], v4[fn2("[Q7ð=\11x\218~\1302}\200\234/m\228.\159", 31806277219253)] .. v30() - now .. v4[fn2("\252", 21953321553885)], Color3[v4[fn2("wܽ", 20447889574499)]](0, 1, 0), v4[fn2("\211\225ף", 11135042529410)])
											v85 = nil

											do
												local tbl19 = {
													[19] = 46,
													[20] = 29,
													[17] = 1,
													[14] = 157,
													[9] = 149,
													[8] = 61,
													[15] = 8,
													[4] = 191,
													[12] = 119,
													[7] = 24,
													[13] = 10,
													[11] = 156,
													[22] = 48,
													[18] = 224,
													[16] = 4,
													[3] = 174,
													[5] = 94,
													[21] = 210,
													[6] = 9,
													[2] = 160,
													[10] = 77,
													141,
												}

												luraph_runtime1(v84, buffer.fromstring("cUB\200L\30\199\205\235\28\139\250\204T\190E\21\184\\\235/\1597\136\3b[\134\181{\139vTT\15\247ܳ\240a\141ٔ%\24ک\147\2148\183\153\187\20`\195\200\30\22!\154\141\149\22\192\238$g\180L\142\200$\147\155\2407\138\151V\nJe\180\139Z4>\6D\134\21\223\229\132Ba쏶E/\168ı\230\1\248PRueKљW\2211\165;N\192\231W\247g\143ػ\"\216\23\\[\148r\247\210\t\189\145i\158D\176~\219;\170*\193\212\239f\2446\191g(q\204:Q֥t\14\24,\1?\253\206\220^\236\156\212ᐼX\136\157?:MlP\249\135Qi\250\245\143\247\7<P\1\211\244!F=y\232߀I8n\215湕5\184\155k|\201\237\169\156\242fe]\178\234\168\12\2_\1691vP)h\159\151\2257u<9\138@S\183\249\192%\187\205\250\5\141\176@O@\181\230\219\201\241k]QVAyL;\166\0W㏞\186\167\2545\18\1614\194&H5ܝ\182\2225\28J\245\18\183\136+p\150\190\241\180u\127X~\138!\151b1{{\238\215\206:\174,\198\236\7\177\207\u{70F}O\156o\20x\226\20b\231x19\179JQ\28\151\t\251\243\0120\143\253\2\254\204\239\139\247M\159\12\22\140:\194\242\217Ͽ\223\220O\1990t\143\t\r*LhJ8\207E\229\195\214.f\243\187\205l\209Q\229/<2\7\127\175\224\217]@֔\253\189\187\12L\157\129\15R}\202]=κ3\209^U\15\29=\250\201 \212\22\172d\148\223\203\22x\240\220\226Cʸ?\154jq\188\4E\238\28\6yF\133\136\211\24\1366H\174\187i\233\255\219m\"k1ɬ0\7\233\141&S\234\6t\23\185o\142*`\1776\187\237\15\155\20\149\185?;\254\252Ů\172\172\247\244S\134DV\133\147\255\140\192\\\132k\8\160z\147\17f\167\130\160\1903\253f9\222\2442*'q\223\0209/X\19J\27\175H\217\30\6\2073oA\26'\243\216Mi\250ҫ\24\201\246\193R\213\240\188@8\175\n\161\244\138\18827V\234\243\142\139\236\227\21\24\173\216M\157\146a{}\229_\182\188\136\3\132\250S\169z3H]\178\2{\22\30G'v\197ٮA\1639\227#0C\147\238^ѐ?\232\195\127`\28\5\211\4y\183\6\30S\213\246\176\168\242ts\170-\25h\130\210_\146\233\244\253l\4\175!\195?\152\198`\175\208t\254i\16]+\220c\n\250\133\148\164\208be\2484N\138\19^\220|\15L\254#ԫ\163[W\225'\220\253\197iOj\130i\0\145\14\8оH\30.\232\240\127a\197t։\234u\161\19@\245S\177\140`\231~\148\242\24\1950\5A\\Ĥ\191Q*\224/\171e\153N\195\0\158-\229lK\198\232\204g\242\138\207G\184_WOSi\134\165\1553v$\171c}\238\250\2̈́F\0\154>c~\232$\190D\0110\251w\142\27P\173\241\247\167ǫ`Y\8\23\157B\207U\27_W\210P\t$\246\229\15\252\229\187q\nx\r\207\206Ъh\129I\6\229\22N\12\14;\t\209\233\3\177\236ޫ.\186\228uq\203\237\164\157ъn\142\5ӎ\17\230U\216b\20\200t\203s\3\22t\209\198\0060`\175\217\254\3\199|*]\150\146\156\232\1\134~xR\177\163\254?\133\148r\213\226\139\193\169\236W\2\177\176\7~y\244\193\144O\149\31\28\166\240\185\232\145\234\181n\3\"\238u\178\192\180|\148\156C1\30}w\134-m\20\224\139\2^$\137\153\228\3O@覴\151\222\2\209u6\161\7\159I\185\2095`5\2218\189A 8\248\185\191e\179\30\174e$!ڈ\149\198\229\1553t{\190\1829\161\173\219'Х\249\205\t\167z\1962i\207\1q((p\255i\192Q>\146#\143\245\28\2\1\222\213\192|~\248\180e\t\21\140\19K\251J\234k*O\162\0167N\244\185\186\237\223h\26\247\183\227\154a\239\231\1300넺\147\245b\231\25}G\201װ\230\148p\132\7j\24\209\219ӏYT\209\232I\162?;#\187\187a\228[\189\5\12\128#\28\\\127\23\162\238|\\1\203%\201\252Ѷ\158\130z\180\202>\202c\252\249/\18W~\199\251\17\215\4\147\210r\142\"s\12v\203\29 S)V\23\146l\152\127K7ݓڏD?\211\242{\178\153=\212\24\182\12\183N#\233\26\t\2540wJ\158\138m\165c͵\0\240\137\235\236|35\131hA$=F.y\1503\131k&\18\232\u{EE88};\30\21\172\236\1333G\220R\238b-\130p\239(l\152\189\26۰\137\224:\229\"\208A@\199\26\140\187\0257\246\208u\161b\6@\238q\1\245\1y\128M\134b\171\235\2b\22/\236^\223\241\0311\157\217\23F\234n\201\250\28\162\177w\209\223M'b5|t\"\141\199\233.O\192[\174\194V\193\\\149\149\130\197\255VM\131\175TMX\241\169\176\239\192\133\213r\253Z\29D\148W\238t\199z\252\243\136\"\246\129\166\138b\194\11\249\190\19N\179\130\20\148\253\235\142C\3 \169\185\160\214\0 \242\1k\2280\224(@ʜ\145\216猟b\200\251}\156t\141&)(\1405\3[\194@\22m]p\215|\2\21\221\2353\4m\28b\162 i\2y\140=\255\26\195\210T)\174F]y\198\201\247\220\31Rtp\r\1840\166\220V\n;\210z\176)\145\169a#\176.\127r[\148\243\130A\24\21\182\144s\215.\236x\0244SG\249+\251\243#\240\181\254\140\0\174\162\129K\217\17\"\25|\147\u{AD}4\175_\130\1914\213\231\230\21+\140Qc\21\165x,\186\166\2277\11*\149A(\164\163|\191n_\213\16S\204Ѭ&OJ\176\173\7\245<\142\175E\237\157E1\150u\246Jz\182QN\226\254F%]\162\224\238r\177z\161\166!\153i\249\224\195@\27&\206\248/\134@\160A\31\186\240\136#\140\141\205\244\178\219\31\207-\185JI\192\172O2\152\143\236\254\136\178Lҙ\29\241\150\154J\t\4\1731\239\173a\146\174>\128\8\171\249r\234Pt\187\154\184\252H:q\151\144ڶ\164\173n\251\222\2113\163\138\230S\157ԻO-\251\236a\177\128\157E\151\17\160\248+\128\201\27c\145\19\166\20\128\132\140\15\r\179\194\25\186\20x]\137\0J\176r\142#\240\194k\237\227\243\18\28\151;\248\246\199\250\1\243\171ꥑ\138\181,\21G3\165\206\234\192NI\189\3:\253\169\u{3A2}\26\23\181Bv\182\227k\29P\169-\29\150\139\142i\1896\28W\202\242\192\129\243Y\203Z-=&\255\244Y\146\189J;\217\218\194U&\161\252l\248\2201\149ط\250\145Bt\147\205\22\179\11J\242\184\210\22\1616p\197\246G\217\28\198M?\149\245'\229ք\12!\215i\248o\176\\{\204\2465ay&\7Vu\162\251<\150ǅ\246\160\8*\228\214O\167II\160\128\230\1750\221E\"(\191Ǜt\147\147\233ŵ\166F\142\227\4k0\247\146+\237^\167E\236\255\213 \243\31(\248\153\166\148\181\253\\K\198]yvY\180\232g\19i\207\234|\248i\192\159\196M\195`\180\191\28\181.\6\130\180=\212\243\186\0M\149\155-\215\217\252ڸ6\135I'\225!@\17\217\217\242\n\21Q\1408\157\180\28\26\20ڤQMj&\1664D\196#pe\2309\216\236)\23\182\212S\169-B\150t\132U\248\4{\250GÕ)_\150\19c\144Gұy\24)hLa\31GjJ4\3\20\137\3\1570\155\244\217Kϲ\191\176\178s\204\222٘1\2\2206Cs\21J\160\181\184e0K5:\227\243\237\213eo\187\179\254Q\156\182\230\197\251\245\249\132I#\132\16\30m\1\142\2319\251S\245Q}\214\4r\12\128ir\227\160k\244\128?\251\201\20rP\t\202\252\211\252\29rýw\145\174\166R\187\1760\243\140r\185\239\174\245'}\141\n\5;\234\178^Y\227TQ5l\172\232\149MƜ\176Kv\185A*\166R׀\150H\17\148>=Ug\253\207\n\253\209\r\141\251\19\164J\234ɪi\229\195:\250\183\196\2335N\",^\237\254\165\137<u\242\4\231\173닋\187\236\225\162\224N\169\176\173I\224\243h3\248\22|\205\247\190D\155,\170삆P\171:\183}b\229\181\30A\2\152\t\141R\29\16^\2102\157\176\147I\144\29i\15\190\135\20\1446-::\26\168Z'\165Z\226)\143\0\195\230/o\136\205Ʋ\164\12\231\0316\0195\3){}\1350Qg\182%p\191\226\tX?H4\192G\249\234w\221\235\246\190nL,ق\149\182\236\215\30\155\"\135\181\30Z\212@y\236`\182L\175\220\28\242\188\186w\128/\17Q&\16l\24\6:=W\127\24\230Q\172\0\156=\189\146\218\221\18\17\207YR\159i\142\248\11\136b\248 \130\137\203*L\211(\249\239#L=>\183$p\240D\n)\245ߏŭ\3\220\r\157\185s[\190\145\ra\r\203\3\133\240>\131ϗ1\18\245\182\168\215\225\3\174-\226<3\0\198Q8\150\16(\253\233\251\130\30\141-\1`\168\203i\242\218_\153\168\rG\146\193E\174T\221ɾ\182\164tLi\207\203fʢ\150E\1966\192\142\147Z~\185V*\244\181\230\7\n\139L$\252'7\2290\172\175v\208XٳR\137\198(>\166\165\235xQ\154\171\142q[\134r\150\142ybJt\0\146HƷ\22\0\226X\22S\231J\172\228\163g\175c+%\232?\247Q\1K\246\222mp\186\17if\179Vo\u{7BD}\239\229S\193\u{96}\153\14\\\131\166!\231\8\237AG\6\221w\28V\226\213o\147\155\154IC^I\1738\21o\8\30\12\167\152)wF\2225\166\165Ǘ\142\252\30\22en\249\231( \148\172!\235k8\127\233G\16\5?\214\227Dձ\177\151\165\28\156k\198ʺ\182\142<\238\147\2086r +\26\"\167\250\25O\232c8Q\139\145\1878\189ԫ\142\8\185/\191c\186\138-O>i13\242R\176(\16\154\149w\226S\2492\177\190\249N\186\199\24\245\213]\209\242h\131J\235t%!\180\145\187\2528\200{\155\185\145=\234>\242鰍\u{F598}Z\0052%g#D\127SlX\252\206ٴ\17\181b\253\246?yIN\186fA8\178\218\238\24E\135\152\n\215\28\211\209\19\210\31`\"\193\202\2083\249\27\27\253\159\198mC)'2\215)O\244\181\207\226\18\246\242`f/\151}\161\254I6\2312\206\14\227\139\252X\141W\1286\144\1\242\252E\30x\0236\179a\16A \240X\146\30\227!\4\167V(1\31\133\204\192'nk\241\242\165襖\nX\157\176ō\208N[~\160Ub\133\0\161@\236jY\146\169\15\159\4\160Q.\195@\16\183\12i\150v\152\25)w\177G\145\235-\198x\251ߖ\n1\254EX(\172b\4\12\184w\240\198\206\25\224BU\244*TF\133\211\2073o\19\178nn\246|\248;V\135\243\230g\245.y\17\138r\139\143\197\236\4e\252J\163\5O$\217\rx\208\223\244\\\19\1578\240\2167\21\16'\12J\2\14f\5=e\165\1\12j\217\246\129\166\173mb\236p7>\1̒\148\244\133H\131\219?k\159Xg\17H<\144\224\163G\137\30\133\234<V4\15\199\199\252\25\133]\131($\172\137\237[' ֜ \225\14f\220\28~\215\193\190\2538\247\253G\130<\242\26\158v\17\16\16\248\170)J\r\190\135T\128\176q\186\129%\211\200\7j\225\212\193\3\223#M\205\211\28\29\239\r>\184\5\253\161;\14\136\229\0265\162\130*\2^eO\203\248\128F\224\222c:?tptN0x\237\31\141n\154M\205\26\140\255z\191\147\28OP^-倽\170{\184õ\184wʆ݈\1\23\2\17\231\26\156w\t\18\236$=j$\139L\127\163\140\144\2117\200ؾG\\*\22E\255\134OA\195|f\160\141\134\\\197\236\22\1387\149\249O\194\11\140Ģ\193\127\2341\26\227\156\"\201\239\192s\153\209\234\183\220\223\215\29\6z\255\21>\244}\155Y\179\130{\12i\147}\198\237\236\11H|z%!\152'\26T\161<\232\31\191E\131\241N\215\247[\16\146j\145nJ3\n{\139D\31\3\180\226B\175\17z)3\21\130+\249\159\177\207-\135\177_\31\tT\145c\244iu?/Pi\139\165e\243d\210,\174e\158M \147\167\133\173p\234\23809ێ@Ҍ;\138\25͐\146Τc\164\221\19\2\152\29\240\17\205I\0227@\216#\176۔.\178\127>\193i\130ٲX\176\1818\131\2528\190\138\183\240I\238\1516\2090g\250-+\28\31k>\182\176\0040\239\t\221\209\3\8]\144͐\142\236\246\5\208\20\195y\176\"\156\238\187gW\176$\20529\164w\11UE] u\222'\229\140\232?\147X\171\163\231$\180\213\198\230\246\162UO\229\253EJlC\t\138\255\1620]\248\217\27Nx\18\12W\128\222\u{5EE}\233ס1\"\190\230\163\204\194=\197FM\128t9T\3?\253\182\17\1704\172\220G[=a\226\244\193q\141\146\161\230\233\192Zd\6\2\211\219\15\24!\132hDR`i\160)v\189\247\nSz\31\233de\173\149\220x[\254\252Z4)߸5\239v}\206\208[\30\215O\129Mf\191\"\190\134\247=U\141\5a\138\247\"\244\180\128\140&a\227\154\233\174ߕ@\182X\220Ș\11(\186\152;\191\221\233z\16\146\188K\196J\187qo2Fk\128\180\248\7L\253\251\143ڹ,oL\190*s˶'\226TrHf\162\225˱\23T\235\2\7ϴ\14c\150Bgc\0\231\2389\180\17cy\140\20-\23\130\242\153\254\150\149\233\204\1930\178\190\158~\8Y\210}X9\239k\243\216C\207\223\241ٷ\191\172\170\236\2104(\2\2\182><\158\207"), tbl19, 253)()
											end
										end

										loadstring("\tfunction LPH_NO_VIRTUALIZE(f) return f end;\n")()

										do
											local genv = getgenv and getgenv() or _G
											local zenthraPLCleanup = genv.__ZenthraPLCleanup

											if type(zenthraPLCleanup) == "function" then
												pcall(zenthraPLCleanup)
											else
												local main = type(genv.__PL) == "table" and genv.__PL.Main or nil
												local v87 = v85[71]

												if type(main) == v87 then
													main.Loaded = nil

													do
														local v88 = ipairs
														local cleanups = main.Cleanups or {}

														for _, cleanup in v88(cleanups) do
															if typeof(cleanup) == "RBXScriptConnection" then
																pcall(function()
																	cleanup:Disconnect()
																end)
															elseif type(cleanup) == "function" then
																pcall(cleanup)
															end
														end
													end
												end
											end

											genv.__ZenthraPLCleanup = nil
										end
									end

									do
										do
											zenthra = {
												Version = "1.0.0",
												Flags = {},
												Options = {},
												Windows = {},
												NotifyPositions = {
													"Right Bottom",
													"Right Top",
													"Left Bottom",
													"Left Top",
												},
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

												local v87 = v85[143]
												local flag18 = typeof(writefile) == v87 and typeof(readfile) == "function" and typeof(isfile) == "function"

												if flag18 then
													local v88 = v85[143]
													flag18 = typeof(isfolder) == v88
												end

												env.Filesystem = flag18 and typeof(makefolder) == "function"
												env.Mobile = false
												tbl18.Env = env
											end
										end

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
											Enabled = false,
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
												info = { key = "Accent", glyph = v85[34] },
												success = { key = v85[165], glyph = "check" },
												error = { key = v85[180], glyph = "alert" },
												warning = { key = "Warning", glyph = v85[60] },
											},
										}

										tbl18.Binds = { List = {}, Listeners = {}, Binding = false }
										tbl18.Util = {}
										tbl18.Components = {}
										tbl18.Module = {}
										tbl18.Tab = {}
										tbl18.Page = {}
										tbl18.Window = { BlockDrag = v85[33] }
										tbl18.Services.UserInput = tbl18.Env.Clone(game:GetService("UserInputService"))
										tbl18.Services.Gui = tbl18.Env.Clone(game:GetService("GuiService"))
										tbl18.Services.Tween = tbl18.Env.Clone(game:GetService("TweenService"))
										tbl18.Services.Http = tbl18.Env.Clone(game:GetService("HttpService"))
										tbl18.Services.Run = tbl18.Env.Clone(game:GetService("RunService"))
										tbl18.Services.Players = tbl18.Env.Clone(game:GetService("Players"))
										tbl18.Services.CoreGui = tbl18.Env.Clone(game:GetService("CoreGui"))
										tbl18.Services.LocalPlayer = tbl18.Services.Players.LocalPlayer
										tbl18.Env.Mobile = tbl18.Services.UserInput.TouchEnabled and not tbl18.Services.UserInput.KeyboardEnabled
										zenthra.IsMobile = tbl18.Env.Mobile

										tbl18.Theme.Palette = {
											Accent = Color3.fromRGB(246, 246, 249),
											AccentSoft = Color3.fromRGB(198, 198, 206),
											AccentDim = Color3.fromRGB(v85[178], 104, 112),
											Background = Color3.fromRGB(8, 8, 10),
											Surface = Color3.fromRGB(v85[47], v85[47], 19),
											SurfaceAlt = Color3.fromRGB(25, v85[25], 29),
											Border = Color3.fromRGB(40, 40, v85[112]),
											BorderSoft = Color3.fromRGB(28, 28, 33),
											Text = Color3.fromRGB(246, 246, 249),
											SubText = Color3.fromRGB(136, 136, v85[69]),
											Muted = Color3.fromRGB(92, 92, v85[181]),
											Danger = Color3.fromRGB(232, 94, 94),
											Success = Color3.fromRGB(214, 214, 219),
											Warning = Color3.fromRGB(226, 200, 130),
										}

										tbl18.Theme.Defaults = table.clone(tbl18.Theme.Palette)
										zenthra.Theme = tbl18.Theme.Palette
										zenthra.Binds = tbl18.Binds.List
										tbl18.Layout.Row = tbl18.Env.Mobile and 30 or v85[45]
										tbl18.Layout.OptionH = tbl18.Env.Mobile and 30 or v85[45]
										tbl18.Layout.FieldH = tbl18.Env.Mobile and 34 or 30
										tbl18.Layout.TabH = tbl18.Env.Mobile and 40 or v85[87]
										tbl18.Layout.TabPad = v85[133]
										tbl18.Layout.TabGap = 2
										tbl18.Layout.TabIndicatorSlide = 0.22
										tbl18.Layout.Width = 680
										tbl18.Layout.Height = v85[19]
										tbl18.Layout.TopbarH = v85[112]
										tbl18.Layout.SidebarW = 172
										tbl18.Layout.ChipH = 16

										tbl18.Notify.Profiles = {
											[v85[168]] = {
												ax = 1,
												ay = 1,
												xs = 1,
												ys = v85[145],
												shown = -tbl18.Notify.Edge,
												hidden = tbl18.Notify.Width + tbl18.Notify.Edge,
												sign = -1,
											},
											["Right Top"] = {
												ax = 1,
												ay = 0,
												xs = 1,
												ys = 0,
												shown = -tbl18.Notify.Edge,
												hidden = tbl18.Notify.Width + tbl18.Notify.Edge,
												sign = 1,
											},
											["Left Bottom"] = {
												ax = 0,
												ay = 1,
												xs = 0,
												ys = 1,
												shown = tbl18.Notify.Edge,
												hidden = -(tbl18.Notify.Width + tbl18.Notify.Edge),
												sign = -v85[145],
											},
											["Left Top"] = {
												ax = 0,
												ay = 0,
												xs = 0,
												ys = 0,
												shown = tbl18.Notify.Edge,
												hidden = -(tbl18.Notify.Width + tbl18.Notify.Edge),
												sign = v85[145],
											},
										}

										palette = tbl18.Theme.Palette
										components = tbl18.Components

										tbl18.Env.SafeParent = function()
											local localPlayer = tbl18.Services.LocalPlayer
											local playerGui

											if localPlayer then
												playerGui = localPlayer:FindFirstChild("PlayerGui") or localPlayer:WaitForChild(v85[173], 2)
											else
												playerGui = localPlayer
											end

											if typeof(gethui) == "function" then
												local ok, result = pcall(gethui)

												if ok and typeof(result) == "Instance" then
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
											if typeof(arg) ~= "Instance" then
												return
											end

											local ok, result = pcall(function()
												return arg:IsA(v85[191])
											end)

											if not ok or not result then
												return
											end
											displayOrder = displayOrder or tbl18.Env.GuiDisplayOrder

											pcall(function()
												if arg.IgnoreGuiInset ~= v85[129] then
													arg.IgnoreGuiInset = true
												end

												if arg.ResetOnSpawn ~= false then
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
												arg.ClipToDeviceSafeArea = v85[33]
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
												local n = math.random(v85[145], v85[135])
												tbl19[i] = ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"):sub(n, n)
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
											local v87 = v85[75]
											local value = rawget(getgenv(), v87)

											if typeof(value) ~= "function" then
												local value2 = rawget(getgenv(), "syn")
												value = type(value2) == "table" and value2.protect_gui or nil
											end

											local v88 = v85[143]

											if typeof(value) == v88 then
												pcall(value, arg)
											end

											table.insert(tbl18.Env.Registry(), arg)
											return arg
										end

										do
											local tbl19 = { v85[167], "dxdraw", v85[6], "overlay", "espgui" }
											local obj = setmetatable({}, { __mode = v85[104] })

											local function fn29(arg)
												if not arg then
													return false
												end
												local flag18 = false

												pcall(function()
													local value = rawget(getgenv(), "protectgui")

													if typeof(value) ~= "function" then
														local value2 = rawget(getgenv(), "syn")
														value = type(value2) == "table" and value2.protect_gui or nil
													end

													local v87 = v85[143]

													if typeof(value) == v87 then
														pcall(value, arg)
													end
												end)

												pcall(function()
													local str7 = arg.Name:lower()

													for _, v87 in ipairs(tbl19) do
														if str7:find(v87, v85[145], true) then
															arg.Name = tbl18.Env.RandomName()
															flag18 = v85[129]
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
													if not arg:IsA("ScreenGui") then
														return
													end

													if arg.IgnoreGuiInset ~= true then
														arg.IgnoreGuiInset = true
														flag18 = true
													end

													if arg.Enabled ~= true then
														arg.Enabled = v85[129]
														flag18 = v85[129]
													end

													local guiDisplayOrder = tbl18.Env.GuiDisplayOrder or v85[153]

													if arg.DisplayOrder < guiDisplayOrder then
														arg.DisplayOrder = guiDisplayOrder
														flag18 = v85[129]
													end

													pcall(function()
														arg.ClipToDeviceSafeArea = false
													end)

													pcall(function()
														arg.ScreenInsets = Enum.ScreenInsets.None
													end)

													pcall(function()
														arg.SafeAreaCompatibility = Enum.SafeAreaCompatibility.None
													end)
												end)

												pcall(function()
													local playerGui = tbl18.Services.LocalPlayer and tbl18.Services.LocalPlayer:FindFirstChild("PlayerGui")
													local parent = arg.Parent
													if not parent or not playerGui then
														return
													end

													if parent:IsA("LayerCollector") and parent ~= playerGui then
														arg.Parent = playerGui
														flag18 = true
													end
												end)

												return flag18
											end

											local function fn30()
												local v87 = tbl18.Env.SafeParent()
												if v87 == (tbl18.Services.LocalPlayer and tbl18.Services.LocalPlayer:FindFirstChild("PlayerGui")) then
													return nil
												end
												return v87
											end

											tbl18.Env.HideDrawingHost = function()
												local ok, result = pcall(function()
													return type(Drawing.new) == "function"
												end)

												if not ok or not result then
													return false
												end
												fn30()
												local n = 0

												for k in pairs(obj) do
													if k.Parent and fn29(k) then
														n += v85[145]
													end
												end

												local tbl20 = {}
												local localPlayer = tbl18.Services.LocalPlayer and tbl18.Services.LocalPlayer:FindFirstChild(v85[173])

												if localPlayer then
													tbl20[#tbl20 + v85[145]] = localPlayer
												end

												pcall(function()
													tbl20[#tbl20 + 1] = tbl18.Services.CoreGui
												end)

												if #tbl20 == v85[4] then
													return n > 0
												end
												local tbl21 = {}

												for _, v87 in ipairs(tbl18.Env.Registry()) do
													tbl21[v87] = true
												end

												for _, v87 in ipairs(tbl20) do
													for _, child in ipairs(v87:GetChildren()) do
														if child:IsA("LayerCollector") and not tbl21[child] and not obj[child] then
															local str7 = child.Name:lower()

															for _, v88 in ipairs(tbl19) do
																if str7:find(v88, 1, true) then
																	obj[child] = v85[129]

																	if fn29(child) then
																		n += v85[145]
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
														tbl22[child] = v85[129]
													end
												end

												local square = nil

												pcall(function()
													square = Drawing.new("Square")
												end)

												for _, v87 in ipairs(tbl20) do
													for _, child in ipairs(v87:GetChildren()) do
														if not tbl22[child] and child:IsA("LayerCollector") and not tbl21[child] then
															obj[child] = true

															if fn29(child) then
																n += 1
															end
														end
													end
												end

												if square then
													pcall(function()
														square:Remove()
													end)
												end

												return n > 0
											end
										end
									end

									do
										do
											local n = 0

											tbl18.Env.GuardDrawing = function(arg)
												if v85[44] <= n29(374) then
													local now2 = os.clock()
													if not arg and now2 - n < 3 then
														return
													end
													n = now2
													pcall(tbl18.Env.HideDrawingHost)
													return
												end

												while true do
												end
											end
										end

										do
											local data = tbl18.Icons.Data

											local function fn29(arg)
												if type(arg) ~= "string" or #arg < v85[134] then
													return nil
												end

												local ok, result = pcall(function()
													return loadstring(arg)()
												end)

												if ok then
													local v87 = v85[71]
													ok = type(result) == v87
												end

												return ok and next(result) ~= nil and result or nil
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
									end

									do
										zenthra.Icons = tbl18.Icons.Data

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
											arg[arg2] = arg3()
											return arg
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
											local flag18 = type(arg) ~= "table"

											if not flag18 then
												local v87 = v85[143]
												flag18 = type(arg3) ~= v87
											end

											if flag18 then
												return nil
											end
											local v87 = tbl18.Util.HookRegistry()
											local v88 = nil

											for _, v89 in ipairs(v87) do
												if v89.target == arg and v89.key == arg2 then
													v88 = v89
													break
												else
													v88 = nil
												end
											end

											if v88 then
												if v88.undo then
													local v89 = v85[183]

													if n27(1764) <= v89 then
														pcall(v88.undo)
														v88.undo = nil
													else
														while v85[129] do
														end
													end
												end

												if type(v88.original) == "function" then
													arg[arg2] = v88.original
												end
											end

											local v89 = arg[arg2]
											if type(v89) ~= "function" then
												return nil
											end
											local v90 = v89

											local function fn29(...)
												return v90(...)
											end

											local v91 = arg3(fn29)
											if type(v91) ~= "function" then
												return nil
											end

											local function fn30(...)
												return v91(...)
											end

											local tbl19 = v88 or { target = arg, key = arg2 }
											tbl19.original = v89
											tbl19.undo = nil

											if typeof(hookfunction) == "function" then
												local ok, result = pcall(hookfunction, v89, fn30)

												if ok and type(result) == "function" then
													v90 = result

													tbl19.undo = function()
														pcall(hookfunction, v89, result)
													end

													if not v88 then
														v87[#v87 + 1] = tbl19
													end

													return fn29
												end
											end

											arg[arg2] = fn30

											tbl19.undo = function()
												arg[arg2] = v89
											end

											if not v88 then
												v87[#v87 + v85[145]] = tbl19
											end

											return fn29
										end

										tbl18.Util.New = function(arg, arg2, arg3)
											local instance = Instance.new(arg)
											local parent = nil

											if arg2 then
												parent = arg2.Parent
												arg2.Parent = nil

												for k, v87 in pairs(arg2) do
													instance[k] = v87
												end
											end

											if arg3 then
												for _, v87 in ipairs(arg3) do
													v87.Parent = instance
												end
											end

											instance.Parent = parent
											return instance
										end

										tbl18.Util.Tween = function(arg, arg2, arg3, arg4, arg5)
											local tween = tbl18.Services.Tween:Create(arg, TweenInfo.new(arg3 or v85[103], arg4 or tbl18.Layout.Ease, arg5 or Enum.EasingDirection.Out), arg2)
											tween:Play()
											return tween
										end

										tbl18.Layout.EaseIn = Enum.EasingDirection.In

										tbl18.Util.Corner = function(arg)
											local new = tbl18.Util.New
											local tbl19 = {}
											local cornerRadius = typeof(arg) == "UDim" and arg

											if not cornerRadius then
												cornerRadius = UDim.new(0, arg or v85[133])
											end

											tbl19.CornerRadius = cornerRadius
											return new("UICorner", tbl19)
										end

										tbl18.Util.Stroke = function(arg, arg2, arg3)
											local UIStroke = tbl18.Util.New("UIStroke", { Thickness = arg2 or 1, Transparency = arg3 or 0, ApplyStrokeMode = Enum.ApplyStrokeMode.Border })
											tbl18.Theme.Bind(UIStroke, "Color", arg or "Border")
											return UIStroke
										end

										tbl18.Util.Gradient = function(arg, arg2, arg3)
											local UIGradient = tbl18.Util.New("UIGradient", { Transparency = arg2 or NumberSequence.new(0), Rotation = arg3 or v85[4] })

											if arg then
												tbl18.Theme.BindDynamic(UIGradient, "Color", arg)
											end

											return UIGradient
										end

										tbl18.Util.Fade = function(...)
											local v87 = table.pack(...)
											local tbl19 = {}

											for i, v88 in ipairs({ ... }) do
												tbl19[i] = NumberSequenceKeypoint.new((i - 1) / (select("#", table.unpack(v87, 1, v87.n)) - 1), v88)
											end

											return NumberSequence.new(tbl19)
										end

										tbl18.Util.Padding = function(arg, arg2, arg3, arg4)
											return tbl18.Util.New("UIPadding", {
												PaddingTop = UDim.new(0, arg or v85[4]),
												PaddingBottom = UDim.new(0, arg2 or arg or 0),
												PaddingLeft = UDim.new(0, arg3 or 0),
												PaddingRight = UDim.new(0, arg4 or arg3 or 0),
											})
										end

										tbl18.Util.List = function(arg, arg2)
											return tbl18.Util.New("UIListLayout", {
												Padding = UDim.new(0, arg or 0),
												SortOrder = Enum.SortOrder.LayoutOrder,
												HorizontalAlignment = arg2 or Enum.HorizontalAlignment.Left,
											})
										end

										tbl18.Util.FlexRow = function(arg)
											if not flag3 then
												return
											end

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
											arg.TextSize = arg.TextSize or v85[58]
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
												tbl18.Theme.Bind(ImageLabel, v85[186], colorKey)
											end

											return ImageLabel
										end

										tbl18.Util.Hover = function(arg, arg2, arg3)
											tbl18.Util.Connect(arg.MouseEnter, arg2)
											tbl18.Util.Connect(arg.MouseLeave, arg3)
										end

										tbl18.Util.Press = function(arg, arg2)
											tbl18.Util.Connect(arg.MouseButton1Down, function()
												tbl18.Util.Tween(arg2, { Scale = 0.97 }, 0.09)
											end)

											tbl18.Util.Connect(arg.MouseButton1Up, function()
												tbl18.Util.Tween(arg2, { Scale = 1 }, 0.28, Enum.EasingStyle.Back)
											end)

											tbl18.Util.Connect(arg.MouseLeave, function()
												tbl18.Util.Tween(arg2, { Scale = v85[145] }, 0.2)
											end)
										end

										tbl18.Util.Round = function(arg, arg2)
											local n = 10 ^ (arg2 or 0)
											return math.floor(arg * n + v85[121]) / n
										end

										tbl18.Util.KeyName = function(arg)
											local v87 = v85[12]
											if typeof(arg) == v87 then
												return (tostring(arg):gsub("Enum.KeyCode.", ""):gsub(v85[82], ""))
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
											local v87 = pairs
											local tbl19 = arg or {}

											for k, v88 in v87(tbl19) do
												local flag18 = palette[k] ~= nil

												if flag18 then
													local v89 = v85[42]
													flag18 = typeof(v88) == v89
												end

												if flag18 then
													palette[k] = v88
												end
											end

											for i = #tbl18.State.ThemeBindings, 1, -1 do
												local v88 = tbl18.State.ThemeBindings[i]

												if not pcall(function()
													v88.instance[v88.property] = v88.resolve and v88.resolve() or palette[v88.key]
												end) then
													table.remove(tbl18.State.ThemeBindings, i)
												end
											end
										end

										tbl18.Theme.SetAccent = function(arg)
											tbl18.Theme.Set({ Accent = arg, AccentSoft = arg:Lerp(Color3.new(v85[145], 1, 1), 0.28) })
										end

										tbl18.Theme.Reset = function()
											tbl18.Theme.Set(tbl18.Theme.Defaults)
										end

										tbl18.Config.EncodeValue = function(arg)
											if typeof(arg) == "Color3" then
												return {
													__t = v85[42],
													r = math.floor(arg.R * v85[123] + 0.5),
													g = math.floor(arg.G * 255 + 0.5),
													b = math.floor(arg.B * 255 + 0.5),
												}
											end

											if typeof(arg) == "EnumItem" then
												return { __t = "Enum", v = tostring(arg) }
											end
											return arg
										end

										tbl18.Config.DecodeValue = function(arg)
											if type(arg) == "table" and arg.__t == "Color3" then
												return Color3.fromRGB(arg.r, arg.g, arg.b)
											end
											local v87 = v85[71]

											if type(arg) == v87 and arg.__t == "Enum" then
												local match, v88 = arg.v:match("^Enum%.(%w+)%.(%w+)$")

												if match and Enum[match] then
													local ok, result = pcall(function()
														return Enum[match][v88]
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
											tbl18.Config.Folder = folder or v85[198]
											tbl18.Config.Name = name or "config"
											tbl18.Config.Enabled = true

											if not isfolder(tbl18.Config.Folder) then
												pcall(makefolder, tbl18.Config.Folder)
											end

											zenthra.MediaFolder = tbl18.Config.Folder .. "/backgrounds"

											pcall(function()
												if not isfolder(zenthra.MediaFolder) then
													makefolder(zenthra.MediaFolder)
												end
											end)
										end

										tbl18.Config.Save = function()
											if not tbl18.Config.Enabled then
												return
											end
											local tbl19 = {}

											for k, flag18 in pairs(zenthra.Flags) do
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
											tbl18.Config._queued = v85[129]

											task.delay(v85[158], function()
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

											local flag18 = not ok

											if not flag18 then
												local v87 = v85[71]
												flag18 = type(result) ~= v87
											end

											if flag18 then
												return {}
											end
											local tbl19 = {}

											for k, v87 in pairs(result) do
												tbl19[k] = tbl18.Config.DecodeValue(v87)
											end

											return tbl19
										end

										tbl18.Config.SetFlag = function(arg, arg2)
											if not arg then
												return
											end
											zenthra.Flags[arg] = arg2
											tbl18.Config.Queue()
										end

										do
											local zenthraTeardown = getgenv and getgenv().__ZenthraTeardown

											if type(zenthraTeardown) == "function" then
												pcall(zenthraTeardown)
											end
										end
									end

									for _, v87 in ipairs(tbl18.Env.Registry()) do
										pcall(function()
											if typeof(v87) == "Instance" then
												v87:Destroy()
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

											for _, v87 in ipairs(tbl18.Env.Registry()) do
												pcall(function()
													if typeof(v87) == "Instance" then
														v87:Destroy()
													end
												end)
											end

											table.clear(tbl18.Env.Registry())
										end
									end

									v86 = tbl18.Env.Adopt(tbl18.Util.New("ScreenGui", {
										Name = tbl18.Env.RandomName(),
										ResetOnSpawn = false,
										IgnoreGuiInset = true,
										AutoLocalize = false,
										DisplayOrder = tbl18.Env.NotifyDisplayOrder,
										ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
										Parent = tbl18.Env.PlayerGuiParent(),
									}))

									tbl18.Env.NotifyGui = v86
									tbl18.Env.PromoteGui(v86, tbl18.Env.NotifyDisplayOrder)

									do
										local v87 = tbl18.Util.New(v85[169], {
											Name = "Layer",
											AnchorPoint = Vector2.new(0.5, v85[121]),
											Position = UDim2.fromScale(0.5, 0.5),
											Size = UDim2.fromScale(1, v85[145]),
											BackgroundTransparency = v85[145],
											Parent = v86,
										})

										UIScale = tbl18.Util.New("UIScale", { Scale = 1, Parent = v87 })

										tbl18.Notify.Profile = function()
											return tbl18.Notify.Profiles[tbl18.Notify.Position] or tbl18.Notify.Profiles[v85[168]]
										end

										tbl18.Notify.BaseOffset = function(arg)
											if arg.sign > v85[4] then
												return tbl18.Notify.Edge + tbl18.Services.Gui:GetGuiInset().Y
											end
											return tbl18.Notify.Edge
										end

										tbl18.Notify.Restack = function(arg)
											local v88 = tbl18.Notify.Profile()
											local v89 = tbl18.Notify.BaseOffset(v88)

											for _, v90 in ipairs(tbl18.Notify.Active) do
												local card = v90.Card

												if not v90.Dismissing and card.Parent then
													card.AnchorPoint = Vector2.new(v88.ax, v88.ay)
													local udim2 = UDim2.new(v88.xs, v88.shown, v88.ys, v88.sign * v89)

													if arg == false then
														card.Position = udim2
													else
														tbl18.Util.Tween(card, { Position = udim2 }, 0.34)
													end

													v89 += v90.Height + tbl18.Notify.Gap
												end
											end
										end

										tbl18.Notify.SetPosition = function(position)
											if not tbl18.Notify.Profiles[position] then
												return false
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

											if type(arg) ~= "string" then
												tbl19 = arg
											else
												tbl19 = { Title = arg, Text = arg2 }
											end

											local tbl20 = tbl19 or {}
											local info = tbl18.Notify.Kinds[tostring(tbl20.Type or v85[34]):lower()] or tbl18.Notify.Kinds.info
											local duration = tbl20.Duration or 4
											local v88 = tbl18.Notify.Profile()
											local title = tbl20.Title or tbl20.Header or "Notification"
											local text = tbl20.Text or tbl20.Content or tbl20.Description or tbl20.Message

											if text ~= nil then
												text = tostring(text)

												if text == "" then
													text = nil
												end
											end

											local new = tbl18.Util.New

											local tbl21 = {
												Name = "Notification",
												AnchorPoint = Vector2.new(v88.ax, v88.ay),
												Size = UDim2.fromOffset(tbl18.Notify.Width, 0),
												AutomaticSize = Enum.AutomaticSize.Y,
												GroupTransparency = 1,
												BackgroundTransparency = 0.02,
												BorderSizePixel = 0,
												Parent = v87,
											}

											local tbl22 = {}
											local v89 = tbl18.Util.Corner(10)
											local Border = tbl18.Util.Stroke("Border", 1, 0.3)
											local padding = tbl18.Util.Padding
											local v90 = v85[58]
											local v91 = v85[58]
											tbl22[1] = v89
											tbl22[2] = Border

											do
												local values = table.pack(padding(v90, v91, 12, 12))
												table.move(values, 1, values.n, 3, tbl22)
											end

											local CanvasGroup = new("CanvasGroup", tbl21, tbl22)
											tbl18.Theme.Bind(CanvasGroup, "BackgroundColor3", "Surface")

											local Frame = tbl18.Util.New("Frame", {
												Size = UDim2.fromOffset(v85[8], 26),
												BackgroundTransparency = 0.86,
												BorderSizePixel = 0,
												Parent = CanvasGroup,
											}, { tbl18.Util.Corner(8) })

											tbl18.Theme.Bind(Frame, v85[125], info.key)

											tbl18.Util.Image({
												Image = tbl20.Icon or info.glyph,
												Size = UDim2.fromOffset(v85[146], 14),
												Position = UDim2.fromScale(v85[121], 0.5),
												AnchorPoint = Vector2.new(v85[121], 0.5),
												ColorKey = info.key,
												Parent = Frame,
											})

											local Frame2 = tbl18.Util.New("Frame", {
												Position = UDim2.fromOffset(36, 0),
												Size = UDim2.new(1, -36, 0, 0),
												AutomaticSize = Enum.AutomaticSize.Y,
												BackgroundTransparency = 1,
												Parent = CanvasGroup,
											}, { tbl18.Util.List(3) })

											tbl18.Util.Label({
												Text = tostring(title),
												TextSize = 13,
												Weight = tbl18.Layout.Weight.Bold,
												Size = UDim2.new(v85[145], 0, 0, 15),
												Parent = Frame2,
											})

											if text then
												tbl18.Util.Label({
													Text = text,
													TextSize = 12,
													ColorKey = "SubText",
													TextWrapped = v85[129],
													RichText = tbl20.RichText == true,
													AutomaticSize = Enum.AutomaticSize.Y,
													Size = UDim2.new(1, 0, 0, v85[4]),
													Parent = Frame2,
												})
											end

											local v92 = tbl18.Util.New(v85[169], {
												Size = UDim2.new(1, 0, 0, 11),
												BackgroundTransparency = v85[145],
												LayoutOrder = 9,
												Parent = Frame2,
											})

											local Frame3 = tbl18.Util.New("Frame", {
												AnchorPoint = Vector2.new(0, 1),
												Position = UDim2.new(v85[4], 0, v85[145], v85[4]),
												Size = UDim2.new(1, 0, 0, 3),
												BackgroundTransparency = 0.86,
												BorderSizePixel = 0,
												Parent = v92,
											}, { tbl18.Util.Corner(2) })

											tbl18.Theme.Bind(Frame3, "BackgroundColor3", "Muted")
											local v93 = tbl18.Util.New(v85[169], { Size = UDim2.new(v85[145], 0, v85[145], v85[4]), BorderSizePixel = 0, Parent = Frame3 }, { tbl18.Util.Corner(2) })
											tbl18.Theme.Bind(v93, "BackgroundColor3", info.key)
											local tbl23 = { Card = CanvasGroup, Height = v85[193], Dismissing = false }
											table.insert(tbl18.Notify.Active, 1, tbl23)

											local function fn29()
												return CanvasGroup.AbsoluteSize.Y / math.max(UIScale.Scale, v85[50])
											end

											tbl23.Resize = CanvasGroup:GetPropertyChangedSignal(v85[113]):Connect(function()
												local v94 = fn29()

												if v94 > 1 and math.abs(v94 - tbl23.Height) > 0.5 then
													tbl23.Height = v94

													if not tbl23.Dismissing then
														tbl18.Notify.Restack(v85[129])
													end
												end
											end)

											CanvasGroup.Position = UDim2.new(v88.xs, v88.hidden, v88.ys, v88.sign * tbl18.Notify.BaseOffset(v88))

											task.defer(function()
												if not CanvasGroup.Parent then
													return
												end
												tbl23.Height = math.max(fn29(), 1)
												tbl18.Notify.Restack(v85[129])
												tbl18.Util.Tween(CanvasGroup, { GroupTransparency = 0 }, 0.3)
												tbl18.Util.Tween(v93, { Size = UDim2.new(0, 0, v85[145], v85[4]) }, duration, Enum.EasingStyle.Linear)
											end)

											local function dismiss()
												if tbl23.Dismissing or not CanvasGroup.Parent then
													return
												end
												tbl23.Dismissing = true

												if tbl23.Resize then
													tbl23.Resize:Disconnect()
													tbl23.Resize = nil
												end

												for i, v94 in ipairs(tbl18.Notify.Active) do
													if v94 == tbl23 then
														table.remove(tbl18.Notify.Active, i)
														break
													end
												end

												tbl18.Notify.Restack(v85[129])
												local v94 = tbl18.Notify.Profile()
												tbl18.Util.Tween(CanvasGroup, { Position = UDim2.new(v94.xs, v94.hidden, CanvasGroup.Position.Y.Scale, CanvasGroup.Position.Y.Offset) }, 0.28, tbl18.Layout.Ease, tbl18.Layout.EaseIn)
												tbl18.Util.Tween(CanvasGroup, { GroupTransparency = 1 }, 0.24, Enum.EasingStyle.Quad, tbl18.Layout.EaseIn)

												task.delay(0.3, function()
													CanvasGroup:Destroy()
												end)
											end

											tbl23.Dismiss = dismiss
											task.delay(duration, dismiss)
											return tbl23
										end
									end
								end

								local fn29, fn30, fn31, fn32, fn33, fn34, media, fn35, fn36

								do
									do
										do
											local tbl19 = {}

											tbl18.Binds.Changed = function()
												for _, v87 in ipairs(tbl19) do
													pcall(v87)
												end
											end

											tbl18.Binds.OnChanged = function(arg)
												table.insert(tbl19, arg)
											end
										end

										tbl18.Binds.AttachKeybind = function(arg)
											if tbl18.Env.Mobile or not arg.Flag then
												return nil
											end
											local str7 = arg.Flag .. "__key"
											local keyCode = tbl18.Util.ToKeyCode(tbl18.State.Saved[str7])
											local new = tbl18.Util.New
											local v87 = v85[53]

											local tbl19 = {
												Name = v85[179],
												Text = "",
												AutoButtonColor = false,
												AnchorPoint = arg.LayoutOrder and Vector2.new(0, 0) or arg.AnchorPoint or Vector2.new(1, v85[121]),
												Position = arg.Position or UDim2.new(),
												LayoutOrder = arg.LayoutOrder or v85[4],
												Size = UDim2.fromOffset(v85[4], tbl18.Layout.ChipH),
												AutomaticSize = Enum.AutomaticSize.X,
												BackgroundTransparency = 0.4,
												BorderSizePixel = 0,
												Parent = arg.Parent,
											}

											local tbl20 = {}
											local v88 = tbl18.Util.Corner(5)
											local v89 = tbl18.Util.Padding(0, v85[4], 6, 6)
											local new2 = tbl18.Util.New
											local tbl21 = { MaxSize = Vector2.new(arg.MaxWidth or 58, tbl18.Layout.ChipH) }
											local v90 = table.pack(new2("UISizeConstraint", tbl21))
											tbl20[1] = v88
											tbl20[2] = v89

											do
												local values = table.pack(table.unpack(v90, 1, v90.n))
												table.move(values, 1, values.n, 3, tbl20)
											end

											local v91 = new(v87, tbl19, tbl20)
											v91.ClipsDescendants = true
											tbl18.Theme.Bind(v91, v85[125], "SurfaceAlt")
											local Border = tbl18.Util.Stroke("Border", 1, 0.25)
											Border.Parent = v91

											local v92 = tbl18.Util.Label({
												Text = "-",
												TextSize = 10,
												Weight = tbl18.Layout.Weight.SemiBold,
												ColorKey = "Muted",
												TextXAlignment = Enum.TextXAlignment.Center,
												AutomaticSize = Enum.AutomaticSize.X,
												Size = UDim2.fromOffset(0, tbl18.Layout.ChipH),
												Parent = v91,
											})

											local tbl22 = { Flag = arg.Flag, Label = arg.Label or "Bind", Key = keyCode }
											table.insert(zenthra.Binds, tbl22)
											local flag18 = false

											local function fn37()
												v92.Text = flag18 and "?" or keyCode and tbl18.Util.KeyName(keyCode) or "-"
												local v93 = v92
												local v94 = flag18
												local v95

												if flag18 then
													v95 = v94
												else
													v95 = keyCode
												end

												v93.TextColor3 = v95 and palette.Text or palette.Muted
												tbl18.Util.Tween(Border, { Color = flag18 and palette.Accent or palette.Border, Transparency = flag18 and 0.3 or v85[93] }, v85[162])
												tbl22.Key = keyCode
												tbl18.Binds.Changed()
											end

											fn37()

											local function fn38()
												if tbl18.Binds.Binding then
													return
												end
												tbl18.Binds.Binding = v85[129]
												flag18 = true
												fn37()
												local connect = nil

												local function fn39(arg2)
													if arg2.UserInputType ~= Enum.UserInputType.Keyboard then
														return
													end

													if arg2.KeyCode == Enum.KeyCode.Unknown then
														return
													end
													connect:Disconnect()
													flag18 = false
													keyCode = not (arg2.KeyCode == Enum.KeyCode.Backspace or arg2.KeyCode == Enum.KeyCode.Escape) and arg2.KeyCode or nil
													tbl18.Config.SetFlag(str7, keyCode)
													fn37()

													task.defer(function()
														tbl18.Binds.Binding = false
													end)
												end

												connect = tbl18.Util.Connect
												connect = connect(tbl18.Services.UserInput.InputBegan, fn39)
											end

											tbl18.Util.Connect(v91.InputBegan, function(arg2)
												if arg2.UserInputType == Enum.UserInputType.MouseButton1 or arg2.UserInputType == Enum.UserInputType.MouseButton2 then
													fn38()
												end
											end)

											if arg.Host then
												tbl18.Util.Connect(arg.Host.InputBegan, function(arg2)
													if arg2.UserInputType == Enum.UserInputType.MouseButton2 then
														fn38()
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

											tbl18.Util.Hover(v91, function()
												tbl18.Util.Tween(v91, { BackgroundTransparency = 0.1 }, 0.16)
											end, function()
												tbl18.Util.Tween(v91, { BackgroundTransparency = 0.4 }, 0.2)
											end)

											return {
												Chip = v91,
												Get = function()
													return keyCode
												end,
											}
										end

										tbl18.Binds.AttachBell = function(arg)
											local str7 = arg.Flag .. "__notify"
											local flag18 = tbl18.State.Saved[str7] == true
											local size = arg.Size or 13

											local v87 = tbl18.Util.New(v85[55], {
												Name = "Bell",
												Image = tbl18.Icons.Resolve(v85[92]),
												ScaleType = Enum.ScaleType.Fit,
												AnchorPoint = arg.LayoutOrder and Vector2.new(0, v85[4]) or arg.AnchorPoint or Vector2.new(1, 0.5),
												Position = arg.Position or UDim2.new(),
												LayoutOrder = arg.LayoutOrder or 0,
												Size = UDim2.fromOffset(size, size),
												BackgroundTransparency = 1,
												BorderSizePixel = 0,
												Parent = arg.Parent,
											})

											tbl18.Theme.BindDynamic(v87, "ImageColor3", function()
												return flag18 and palette.Accent or palette.SubText
											end)

											v87.ImageTransparency = flag18 and 0.05 or 0.5

											tbl18.Util.Connect(v87.MouseButton1Click, function()
												flag18 = not flag18
												tbl18.Config.SetFlag(str7, flag18)
												tbl18.Util.Tween(v87, { ImageColor3 = flag18 and palette.Accent or palette.SubText, ImageTransparency = flag18 and 0.05 or 0.5 }, v85[28])
											end)

											return {
												Bell = v87,
												IsOn = function()
													return flag18
												end,
												Announce = function(arg2, arg3)
													if not flag18 then
														return
													end
													local flag19 = type(arg3) == "boolean"

													zenthra:Notify({
														Title = arg2,
														Text = flag19 and (arg3 and "Enabled" or "Disabled") or tostring(arg3),
														Type = flag19 and arg3 and "success" or v85[34],
														Duration = 2.5,
													})
												end,
											}
										end

										tbl18.Components.OptionRoot = function(arg, arg2, arg3)
											return tbl18.Util.New("Frame", {
												Name = "Option",
												Size = UDim2.new(1, 0, v85[4], arg2),
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

											local v87 = tbl18.Components.OptionRoot(arg, tbl18.Layout.Row, arg3)

											local v88 = tbl18.Util.New(v85[53], {
												Text = "",
												AutoButtonColor = false,
												BackgroundTransparency = 1,
												Size = UDim2.fromScale(1, 1),
												Parent = v87,
											}, { tbl18.Util.FlexRow(7) })

											local v89 = tbl18.Util.Label({
												Text = arg2.Title or "Toggle",
												TextSize = 12,
												ColorKey = "SubText",
												TextTruncate = Enum.TextTruncate.AtEnd,
												Size = UDim2.new(v85[4], 0, 1, v85[4]),
												LayoutOrder = 1,
												Parent = v88,
											}, { tbl18.Util.Grow() })

											local tbl19 = { Type = "Toggle", Value = flag18, Root = v87 }

											if arg2.Keybind ~= false and arg2.Flag then
												tbl18.Binds.AttachKeybind({
													Parent = v88,
													Host = v88,
													LayoutOrder = 2,
													Flag = arg2.Flag,
													Label = arg2.Title or v85[24],
													MaxWidth = 54,
													OnPress = function()
														tbl19:Set(not tbl19.Value)
													end,
												})
											end

											local v90 = nil

											if arg2.Flag and arg2.Notify ~= v85[33] then
												v90 = tbl18.Binds.AttachBell({ Parent = v88, LayoutOrder = 3, Flag = arg2.Flag })
											end

											local stroke = tbl18.Util.Stroke

											local v91 = tbl18.Util.New(v85[169], {
												Size = UDim2.fromOffset(30, 16),
												BackgroundTransparency = v85[121],
												BorderSizePixel = 0,
												LayoutOrder = 4,
												Parent = v88,
											}, { tbl18.Util.Corner(UDim.new(1, 0)), stroke("Border", 1, 0.2) })

											tbl18.Theme.Bind(v91, "BackgroundColor3", "SurfaceAlt")

											local Frame = tbl18.Util.New("Frame", {
												AnchorPoint = Vector2.new(0, 0.5),
												Position = UDim2.new(0, 3, 0.5, v85[4]),
												Size = UDim2.fromOffset(10, 10),
												BorderSizePixel = 0,
												Parent = v91,
											}, { tbl18.Util.Corner(UDim.new(1, 0)) })

											tbl18.Theme.Bind(Frame, "BackgroundColor3", "Muted")

											tbl19.Set = function(arg4, arg5, arg6)
												local value = arg5 == v85[129]
												arg4.Value = value
												tbl18.Config.SetFlag(arg2.Flag, value)

												tbl18.Util.Tween(v91, {
													BackgroundColor3 = value and palette.Accent or palette.SurfaceAlt,
													BackgroundTransparency = value and 0.06 or 0.5,
												}, v85[166])

												tbl18.Util.Tween(Frame, {
													Position = value and UDim2.new(1, -v85[170], 0.5, 0) or UDim2.new(v85[4], v85[128], 0.5, 0),
													BackgroundColor3 = value and palette.Background or palette.Muted,
												}, 0.3)

												tbl18.Util.Tween(v89, { TextColor3 = value and palette.Text or palette.SubText }, 0.24)

												if not arg6 then
													if arg2.Callback then
														task.spawn(arg2.Callback, value)
													end

													if v90 then
														v90.Announce(arg2.Title or "Toggle", value)
													end
												end
											end

											tbl19.Get = function(arg4)
												return arg4.Value
											end

											tbl18.Util.Connect(v88.MouseButton1Click, function()
												tbl19:Set(not tbl19.Value)
											end)

											tbl18.Util.Hover(v88, function()
												if not tbl19.Value then
													tbl18.Util.Tween(v89, { TextColor3 = palette.Text }, 0.16)
												end
											end, function()
												if not tbl19.Value then
													tbl18.Util.Tween(v89, { TextColor3 = palette.SubText }, 0.2)
												end
											end)

											tbl19:Set(flag18, true)

											if flag18 and arg2.Callback then
												task.spawn(arg2.Callback, flag18)
											end

											return tbl19
										end

										tbl18.Components.Slider = function(arg, arg2, arg3)
											local min = arg2.Min or 0
											local max = arg2.Max or v85[101]
											local decimals = arg2.Decimals or 0
											local suffix = arg2.Suffix or ""
											local default = arg2.Default or min

											if type(tbl18.State.Saved[arg2.Flag]) == "number" then
												default = tbl18.State.Saved[arg2.Flag]
											end

											local n = math.clamp(tbl18.Util.Round(default, decimals), min, max)
											local v87 = tbl18.Components.OptionRoot(arg, tbl18.Env.Mobile and 38 or 32, arg3)

											local v88 = tbl18.Util.Label({
												Text = arg2.Title or "Slider",
												TextSize = v85[58],
												ColorKey = "SubText",
												Size = UDim2.new(v85[145], -60, v85[4], 14),
												Parent = v87,
											})

											local v89 = tbl18.Util.Label({
												Text = tostring(n) .. suffix,
												TextSize = 11,
												ColorKey = "Text",
												TextXAlignment = Enum.TextXAlignment.Right,
												AnchorPoint = Vector2.new(1, 0),
												Position = UDim2.new(1, 0, 0, v85[4]),
												Size = UDim2.fromOffset(60, v85[146]),
												Parent = v87,
											})

											local stroke = tbl18.Util.Stroke

											local Frame = tbl18.Util.New("Frame", {
												AnchorPoint = Vector2.new(0, 1),
												Position = UDim2.new(0, 0, 1, -2),
												Size = UDim2.new(1, 0, v85[4], 5),
												BackgroundTransparency = 0.35,
												BorderSizePixel = v85[4],
												Parent = v87,
											}, { tbl18.Util.Corner(UDim.new(1, 0)), stroke("BorderSoft", 1, 0.3) })

											tbl18.Theme.Bind(Frame, "BackgroundColor3", v85[54])
											local gradient = tbl18.Util.Gradient

											local v90 = tbl18.Util.New(v85[169], { Size = UDim2.fromScale(0, 1), BorderSizePixel = 0, Parent = Frame }, {
												tbl18.Util.Corner(UDim.new(1, 0)),
												gradient(function()
													local colorSequence = ColorSequence.new
													local tbl19 = {}
													local v90 = ColorSequenceKeypoint.new(0, palette.AccentDim)
													local v91 = ColorSequenceKeypoint.new(0.55, palette.AccentSoft)
													local new = ColorSequenceKeypoint.new
													local v92 = v85[145]
													local accent = palette.Accent
													tbl19[1] = v90
													tbl19[2] = v91

													do
														local values = table.pack(new(v92, accent))
														table.move(values, 1, values.n, 3, tbl19)
													end

													return colorSequence(tbl19)
												end),
											})

											tbl18.Theme.Bind(v90, "BackgroundColor3", "Accent")

											local Frame2 = tbl18.Util.New("Frame", {
												AnchorPoint = Vector2.new(0.5, 0.5),
												Position = UDim2.new(1, 0, 0.5, v85[4]),
												Size = UDim2.fromOffset(9, 9),
												BorderSizePixel = v85[4],
												ZIndex = 2,
												Parent = v90,
											}, { tbl18.Util.Corner(UDim.new(1, 0)) })

											tbl18.Theme.Bind(Frame2, "BackgroundColor3", "AccentSoft")

											local TextButton = tbl18.Util.New("TextButton", {
												Text = "",
												AutoButtonColor = false,
												BackgroundTransparency = v85[145],
												AnchorPoint = Vector2.new(0, 1),
												Position = UDim2.new(0, 0, 1, v85[4]),
												Size = UDim2.new(v85[145], 0, v85[4], tbl18.Env.Mobile and 26 or 16),
												Parent = v87,
											})

											local tbl19 = {
												Type = v85[199],
												Value = n,
												Root = v87,
												Set = function(arg4, arg5, arg6, arg7)
													local value = math.clamp(tbl18.Util.Round(tonumber(arg5) or min, decimals), min, max)
													arg4.Value = value
													tbl18.Config.SetFlag(arg2.Flag, value)
													local n33 = max > min and (value - min) / (max - min) or 0
													v89.Text = tostring(value) .. suffix

													if arg7 then
														v90.Size = UDim2.fromScale(n33, 1)
													else
														tbl18.Util.Tween(v90, { Size = UDim2.fromScale(n33, 1) }, 0.16)
													end

													if not arg6 and arg2.Callback then
														task.spawn(arg2.Callback, value)
													end
												end,
												Get = function(arg4)
													return arg4.Value
												end,
											}

											local flag18 = false

											local function fn37(arg4)
												local x = Frame.AbsoluteSize.X
												if x < 1 then
													return
												end
												tbl19:Set(min + (max - min) * math.clamp((arg4.X - Frame.AbsolutePosition.X) / x, 0, 1), false, v85[129])
											end

											tbl18.Util.Connect(TextButton.InputBegan, function(arg4)
												if arg4.UserInputType ~= Enum.UserInputType.MouseButton1 and arg4.UserInputType ~= Enum.UserInputType.Touch then
													return
												end
												flag18 = v85[129]
												tbl18.Window.BlockDrag = true
												tbl18.Util.Tween(Frame2, { Size = UDim2.fromOffset(12, 12) }, v85[162])
												fn37(arg4.Position)
											end)

											tbl18.Util.Connect(tbl18.Services.UserInput.InputChanged, function(arg4)
												if not flag18 then
													return
												end

												if arg4.UserInputType == Enum.UserInputType.MouseMovement or arg4.UserInputType == Enum.UserInputType.Touch then
													fn37(arg4.Position)
												end
											end)

											tbl18.Util.Connect(tbl18.Services.UserInput.InputEnded, function(arg4)
												if not flag18 then
													return
												end

												if arg4.UserInputType ~= Enum.UserInputType.MouseButton1 and arg4.UserInputType ~= Enum.UserInputType.Touch then
													return
												end
												flag18 = false
												tbl18.Window.BlockDrag = false
												tbl18.Util.Tween(Frame2, { Size = UDim2.fromOffset(9, 9) }, 0.24)
												tbl18.Config.Queue()
											end)

											tbl18.Util.Hover(TextButton, function()
												tbl18.Util.Tween(v88, { TextColor3 = palette.Text }, 0.16)
											end, function()
												if not flag18 then
													tbl18.Util.Tween(v88, { TextColor3 = palette.SubText }, 0.2)
												end
											end)

											tbl19:Set(n, true, true)

											if arg2.Callback then
												task.spawn(arg2.Callback, n)
											end

											return tbl19
										end

										tbl18.Components.Dropdown = function(arg, arg2, arg3)
											local flag18 = arg2.Multi == v85[129]
											local options = arg2.Options or {}
											local maxVisible = arg2.MaxVisible or 6

											local function fn37(arg4)
												local tbl19 = {}
												local v87 = v85[40]

												if type(arg4) == v87 then
													if arg4 ~= "" and arg4 ~= "None" then
														tbl19[arg4] = v85[129]
													end
												else
													local v88 = v85[71]

													if type(arg4) == v88 then
														if #arg4 > 0 then
															for _, v89 in ipairs(arg4) do
																tbl19[v89] = true
															end
														else
															for k, v89 in pairs(arg4) do
																if v89 then
																	tbl19[k] = true
																end
															end
														end
													end
												end

												return tbl19
											end

											local default

											if flag18 then
												default = fn37(arg2.Default)

												if tbl18.State.Saved[arg2.Flag] ~= nil then
													default = fn37(tbl18.State.Saved[arg2.Flag])
												end
											else
												default = arg2.Default

												if tbl18.State.Saved[arg2.Flag] ~= nil then
													default = tbl18.State.Saved[arg2.Flag]
												end
											end

											local Frame = tbl18.Util.New("Frame", {
												Name = v85[109],
												Size = UDim2.new(v85[145], 0, 0, 0),
												AutomaticSize = Enum.AutomaticSize.Y,
												BackgroundTransparency = v85[145],
												LayoutOrder = arg3,
												Parent = arg,
											}, { tbl18.Util.List(5) })

											local Frame2 = tbl18.Util.New("Frame", { Size = UDim2.new(1, 0, 0, 14), BackgroundTransparency = v85[145], Parent = Frame }, { tbl18.Util.FlexRow(6) })

											tbl18.Util.Label({
												Text = arg2.Title or "Dropdown",
												TextSize = 12,
												ColorKey = "SubText",
												TextTruncate = Enum.TextTruncate.AtEnd,
												Size = UDim2.new(0, 0, 1, 0),
												LayoutOrder = 1,
												Parent = Frame2,
											}, { tbl18.Util.Grow() })

											local v87 = nil

											if arg2.Notify and arg2.Flag then
												v87 = tbl18.Binds.AttachBell({ Parent = Frame2, LayoutOrder = 2, Flag = arg2.Flag })
											end

											local new = tbl18.Util.New

											local tbl19 = {
												Text = "",
												AutoButtonColor = false,
												Size = UDim2.new(1, 0, v85[4], tbl18.Layout.FieldH),
												BackgroundTransparency = 0.35,
												BorderSizePixel = 0,
												Parent = Frame,
											}

											local tbl20 = {}
											local v88 = tbl18.Util.Corner(v85[48])
											local Border = tbl18.Util.Stroke("Border", 1, 0.25)
											tbl20[1] = v88
											tbl20[2] = Border

											do
												local values = table.pack(tbl18.Util.Padding(0, 0, v85[88], v85[88]))
												table.move(values, 1, values.n, 3, tbl20)
											end

											local TextButton = new("TextButton", tbl19, tbl20)
											tbl18.Theme.Bind(TextButton, "BackgroundColor3", "SurfaceAlt")
											local uiStroke = TextButton:FindFirstChildOfClass("UIStroke")

											local v89 = tbl18.Util.Label({
												Text = "None",
												TextSize = 12,
												ColorKey = v85[7],
												TextTruncate = Enum.TextTruncate.AtEnd,
												Size = UDim2.new(1, -18, 1, 0),
												Parent = TextButton,
											})

											local v90 = tbl18.Util.Image({
												Image = "chevronDown",
												Size = UDim2.fromOffset(12, v85[58]),
												AnchorPoint = Vector2.new(1, 0.5),
												Position = UDim2.new(v85[145], 0, 0.5, 0),
												ColorKey = v85[67],
												Parent = TextButton,
											})

											local Frame3 = tbl18.Util.New("Frame", {
												Size = UDim2.new(1, 0, 0, 0),
												BackgroundTransparency = v85[145],
												ClipsDescendants = true,
												Parent = Frame,
											})

											local new2 = tbl18.Util.New

											local tbl21 = {
												Size = UDim2.fromScale(1, 1),
												BackgroundTransparency = 0.35,
												BorderSizePixel = 0,
												ScrollBarThickness = 2,
												ScrollBarImageTransparency = 0.4,
												AutomaticCanvasSize = Enum.AutomaticSize.Y,
												CanvasSize = UDim2.new(),
												ScrollingDirection = Enum.ScrollingDirection.Y,
												Parent = Frame3,
											}

											local tbl22 = {}
											local v91 = tbl18.Util.Corner(7)
											local Border2 = tbl18.Util.Stroke("Border", 1, v85[93])
											local v92 = tbl18.Util.Padding(4, 4, 4, 4)
											local list = tbl18.Util.List
											tbl22[1] = v91
											tbl22[2] = Border2
											tbl22[3] = v92

											do
												local values = table.pack(list(2))
												table.move(values, 1, values.n, 4, tbl22)
											end

											local ScrollingFrame = new2("ScrollingFrame", tbl21, tbl22)
											tbl18.Theme.Bind(ScrollingFrame, "BackgroundColor3", v85[54])
											tbl18.Theme.Bind(ScrollingFrame, "ScrollBarImageColor3", "Muted")
											local tbl23 = {}
											local flag19 = false
											local tbl24 = { Type = "Dropdown", Value = default, Options = options, Root = Frame }

											local function fn38(arg4)
												if flag18 then
													return tbl24.Value[arg4] == true
												end
												return tbl24.Value == arg4
											end

											local function fn39()
												if flag18 then
													local tbl25 = {}

													for _, option in ipairs(tbl24.Options) do
														if tbl24.Value[option] then
															table.insert(tbl25, option)
														end
													end

													v89.Text = #tbl25 > v85[4] and table.concat(tbl25, ", ") or "None"
													v89.TextColor3 = #tbl25 > 0 and palette.Text or palette.Muted
												else
													v89.Text = tbl24.Value and tostring(tbl24.Value) or "None"
													v89.TextColor3 = tbl24.Value and palette.Text or palette.Muted
												end

												for k, v93 in pairs(tbl23) do
													local v94 = fn38(k)
													tbl18.Util.Tween(v93.text, { TextColor3 = v94 and palette.Text or palette.SubText }, 0.16)
													tbl18.Util.Tween(v93.frame, { BackgroundTransparency = v94 and 0.86 or v85[145] }, 0.16)
													tbl18.Util.Tween(v93.tick, { ImageTransparency = v94 and 0 or 1 }, v85[194])
												end
											end

											local function fn40()
												local n = math.min(#tbl24.Options, maxVisible)
												if n == 0 then
													return 30
												end
												return n * tbl18.Layout.OptionH + (n - 1) * v85[9] + 8
											end

											local function fn41(arg4)
												flag19 = arg4
												tbl18.Util.Tween(Frame3, { Size = UDim2.new(1, 0, 0, flag19 and fn40() or 0) }, 0.28)
												tbl18.Util.Tween(v90, { Rotation = flag19 and v85[185] or 0 }, 0.28)
												tbl18.Util.Tween(uiStroke, { Color = flag19 and palette.Accent or palette.Border, Transparency = flag19 and 0.4 or v85[93] }, 0.22)
											end

											local function fn42(arg4)
												if flag18 then
													local v93 = table.clone(tbl24.Value)
													v93[arg4] = not v93[arg4] or nil
													tbl24:Set(v93)
												else
													tbl24:Set(arg4)
													fn41(false)
												end
											end

											tbl24.Set = function(arg4, value, arg5)
												if flag18 then
													arg4.Value = fn37(value)
												else
													arg4.Value = value
												end

												tbl18.Config.SetFlag(arg2.Flag, arg4.Value)
												fn39()

												if not arg5 then
													if arg2.Callback then
														task.spawn(arg2.Callback, arg4.Value)
													end

													if v87 then
														v87.Announce(arg2.Title or "Dropdown", v89.Text)
													end
												end
											end

											tbl24.Get = function(arg4)
												return arg4.Value
											end

											tbl24.SetOptions = function(arg4, options2)
												arg4.Options = options2 or {}

												for _, v93 in pairs(tbl23) do
													v93.frame:Destroy()
												end

												tbl23 = {}

												for i, option in ipairs(arg4.Options) do
													local new3 = tbl18.Util.New

													local tbl25 = {
														Text = "",
														AutoButtonColor = false,
														Size = UDim2.new(1, 0, 0, tbl18.Layout.OptionH),
														BackgroundTransparency = v85[145],
														BorderSizePixel = 0,
														LayoutOrder = i,
														Parent = ScrollingFrame,
													}

													local tbl26 = {}
													local v93 = tbl18.Util.Corner(5)
													local v94 = tbl18.Util.Padding(v85[4], 0, 8, 8)
													tbl26[1] = v93
													tbl26[2] = v94

													do
														local values = table.pack(tbl18.Util.FlexRow(v85[138]))
														table.move(values, 1, values.n, 3, tbl26)
													end

													local TextButton2 = new3("TextButton", tbl25, tbl26)
													tbl18.Theme.Bind(TextButton2, v85[125], v85[72])

													local v95 = tbl18.Util.Label({
														Text = tostring(option),
														TextSize = 11.5,
														ColorKey = "SubText",
														TextTruncate = Enum.TextTruncate.AtEnd,
														Size = UDim2.new(v85[4], 0, 1, 0),
														LayoutOrder = 1,
														Parent = TextButton2,
													}, { tbl18.Util.Grow() })

													if arg2.Keybind and arg2.Flag then
														tbl18.Binds.AttachKeybind({
															Parent = TextButton2,
															Host = TextButton2,
															LayoutOrder = 2,
															Flag = arg2.Flag .. "__" .. tostring(option),
															Label = (arg2.Title or "Dropdown") .. ": " .. tostring(option),
															MaxWidth = 50,
															OnPress = function()
																fn42(option)
															end,
														})
													end

													tbl23[option] = {
														frame = TextButton2,
														text = v95,
														tick = tbl18.Util.Image({
															Image = "check",
															Size = UDim2.fromOffset(11, 11),
															ImageTransparency = 1,
															ColorKey = v85[72],
															LayoutOrder = 3,
															Parent = TextButton2,
														}),
													}

													tbl18.Util.Connect(TextButton2.MouseButton1Click, function()
														fn42(option)
													end)

													tbl18.Util.Hover(TextButton2, function()
														if not fn38(option) then
															tbl18.Util.Tween(TextButton2, { BackgroundTransparency = 0.93 }, 0.14)
														end
													end, function()
														if not fn38(option) then
															tbl18.Util.Tween(TextButton2, { BackgroundTransparency = 1 }, 0.18)
														end
													end)
												end

												if flag18 then
													local value = {}

													for k, v93 in pairs(fn37(arg4.Value)) do
														v93 = v93 and tbl23[k]

														if v93 then
															value[k] = v85[129]
														end
													end

													arg4.Value = value
												elseif arg4.Value ~= nil and not tbl23[arg4.Value] then
													arg4.Value = nil
												end

												fn39()

												if flag19 then
													fn41(true)
												end
											end

											tbl18.Util.Connect(TextButton.MouseButton1Click, function()
												fn41(not flag19)
											end)

											tbl18.Util.Hover(TextButton, function()
												if not flag19 then
													tbl18.Util.Tween(uiStroke, { Transparency = 0.05 }, v85[194])
												end
											end, function()
												if not flag19 then
													tbl18.Util.Tween(uiStroke, { Transparency = v85[93] }, 0.2)
												end
											end)

											tbl24:SetOptions(options)
											tbl24:Set(tbl24.Value, true)

											if arg2.Callback then
												task.spawn(arg2.Callback, tbl24.Value)
											end

											return tbl24
										end

										tbl18.Components.Keybind = function(arg, arg2, arg3)
											local default = arg2.Default

											if tbl18.State.Saved[arg2.Flag] ~= nil then
												default = tbl18.State.Saved[arg2.Flag]
											end

											local v87 = tbl18.Util.ToKeyCode(default)
											local v88 = tbl18.Components.OptionRoot(arg, tbl18.Layout.Row, arg3)

											tbl18.Util.Label({
												Text = arg2.Title or "Keybind",
												TextSize = 12,
												ColorKey = "SubText",
												Size = UDim2.new(v85[145], -70, 1, v85[4]),
												Parent = v88,
											})

											local stroke = tbl18.Util.Stroke
											local v89 = v85[93]

											local v90 = tbl18.Util.New(v85[53], {
												Text = "",
												AutoButtonColor = false,
												AnchorPoint = Vector2.new(1, 0.5),
												Position = UDim2.new(1, 0, 0.5, 0),
												Size = UDim2.fromOffset(64, 20),
												BackgroundTransparency = 0.4,
												BorderSizePixel = 0,
												Parent = v88,
											}, { tbl18.Util.Corner(6), stroke("Border", 1, v89) })

											tbl18.Theme.Bind(v90, v85[125], "SurfaceAlt")

											local v91 = tbl18.Util.Label({
												Text = tbl18.Util.KeyName(v87),
												TextSize = v85[46],
												ColorKey = v87 and "Text" or v85[67],
												TextXAlignment = Enum.TextXAlignment.Center,
												Size = UDim2.fromScale(v85[145], v85[145]),
												Parent = v90,
											})

											local flag18 = false
											local tbl19 = { Type = v85[179], Value = v87, Root = v88 }
											local tbl20 = { Flag = arg2.Flag, Label = arg2.Title or "Keybind", Key = v87 }
											table.insert(zenthra.Binds, tbl20)

											tbl19.Set = function(arg4, value, arg5)
												arg4.Value = value
												v91.Text = tbl18.Util.KeyName(value)
												v91.TextColor3 = value and palette.Text or palette.Muted
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

											tbl18.Util.Connect(v90.MouseButton1Click, function()
												if flag18 then
													return
												end
												flag18 = true
												tbl18.Binds.Binding = true
												v91.Text = "..."
												v91.TextColor3 = palette.Accent
											end)

											tbl18.Util.Connect(tbl18.Services.UserInput.InputBegan, function(arg4, arg5)
												if flag18 then
													if arg4.UserInputType == Enum.UserInputType.Keyboard then
														flag18 = v85[33]
														tbl18.Binds.Binding = false

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

											tbl18.Util.Hover(v90, function()
												if not flag18 then
													tbl18.Util.Tween(v90, { BackgroundTransparency = 0.15 }, 0.16)
												end
											end, function()
												tbl18.Util.Tween(v90, { BackgroundTransparency = 0.4 }, v85[76])
											end)

											tbl19:Set(v87, true)
											return tbl19
										end

										tbl18.Components.Input = function(arg, arg2, arg3)
											local default = arg2.Default or ""
											local v87 = v85[40]

											if type(tbl18.State.Saved[arg2.Flag]) == v87 then
												default = tbl18.State.Saved[arg2.Flag]
											end

											local Frame = tbl18.Util.New("Frame", {
												Name = v85[109],
												Size = UDim2.new(v85[145], 0, 0, 0),
												AutomaticSize = Enum.AutomaticSize.Y,
												BackgroundTransparency = 1,
												LayoutOrder = arg3,
												Parent = arg,
											}, { tbl18.Util.List(5) })

											if arg2.Title then
												tbl18.Util.Label({
													Text = arg2.Title,
													TextSize = 12,
													ColorKey = "SubText",
													Size = UDim2.new(v85[145], 0, v85[4], v85[146]),
													Parent = Frame,
												})
											end

											local new = tbl18.Util.New

											local tbl19 = {
												Size = UDim2.new(1, v85[4], 0, tbl18.Layout.FieldH - 2),
												BackgroundTransparency = 0.35,
												BorderSizePixel = v85[4],
												ClipsDescendants = v85[129],
												Parent = Frame,
											}

											local tbl20 = {}
											local v88 = tbl18.Util.Corner(7)
											local padding = tbl18.Util.Padding
											local v89 = v85[4]
											local v90 = v85[4]
											local v91 = tbl18.Util.Stroke(v85[136], 1, 0.25)
											tbl20[1] = v88
											tbl20[2] = v91

											do
												local values = table.pack(padding(v89, v90, 10, 10))
												table.move(values, 1, values.n, 3, tbl20)
											end

											local Frame2 = new("Frame", tbl19, tbl20)
											tbl18.Theme.Bind(Frame2, "BackgroundColor3", "SurfaceAlt")
											local uiStroke = Frame2:FindFirstChildOfClass("UIStroke")

											local TextBox = tbl18.Util.New("TextBox", {
												Text = default,
												PlaceholderText = arg2.Placeholder or "",
												ClearTextOnFocus = false,
												BackgroundTransparency = 1,
												ClipsDescendants = true,
												TextWrapped = v85[33],
												TextTruncate = Enum.TextTruncate.AtEnd,
												FontFace = tbl18.Util.Font(tbl18.Layout.Weight.Medium),
												TextSize = 12,
												TextXAlignment = Enum.TextXAlignment.Left,
												Size = UDim2.new(v85[145], 0, v85[145], v85[4]),
												Parent = Frame2,
											})

											tbl18.Theme.Bind(TextBox, "TextColor3", "Text")
											tbl18.Theme.Bind(TextBox, "PlaceholderColor3", "Muted")

											local tbl21 = {
												Type = "Input",
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
												tbl18.Util.Tween(uiStroke, { Color = palette.Accent, Transparency = v85[175] }, 0.18)
											end)

											tbl18.Util.Connect(TextBox.FocusLost, function(arg4)
												tbl18.Util.Tween(uiStroke, { Color = palette.Border, Transparency = v85[93] }, 0.2)

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
											local v87 = tbl18.Components.OptionRoot(arg, tbl18.Layout.FieldH, arg3)
											local new = tbl18.Util.New

											local tbl19 = {
												Text = "",
												AutoButtonColor = false,
												Size = UDim2.fromScale(1, 1),
												BackgroundTransparency = 0.35,
												BorderSizePixel = 0,
												Parent = v87,
											}

											local tbl20 = {}
											local v88 = tbl18.Util.Corner(7)
											local Border = tbl18.Util.Stroke("Border", 1, 0.25)
											local new2 = tbl18.Util.New
											tbl20[1] = v88
											tbl20[2] = Border

											do
												local values = table.pack(new2("UIScale", { Scale = 1 }))
												table.move(values, 1, values.n, 3, tbl20)
											end

											local TextButton = new("TextButton", tbl19, tbl20)
											tbl18.Theme.Bind(TextButton, "BackgroundColor3", v85[54])

											local v89 = tbl18.Util.Label({
												Text = arg2.Title or "Button",
												TextSize = 12,
												Weight = tbl18.Layout.Weight.SemiBold,
												ColorKey = "SubText",
												TextXAlignment = Enum.TextXAlignment.Center,
												Size = UDim2.fromScale(1, v85[145]),
												Parent = TextButton,
											})

											tbl18.Util.Hover(TextButton, function()
												tbl18.Util.Tween(TextButton, { BackgroundTransparency = 0.1 }, v85[194])
												tbl18.Util.Tween(v89, { TextColor3 = palette.Text }, 0.16)
											end, function()
												tbl18.Util.Tween(TextButton, { BackgroundTransparency = 0.35 }, v85[76])
												tbl18.Util.Tween(v89, { TextColor3 = palette.SubText }, v85[76])
											end)

											tbl18.Util.Press(TextButton, TextButton:FindFirstChildOfClass("UIScale"))

											tbl18.Util.Connect(TextButton.MouseButton1Click, function()
												if arg2.Callback then
													task.spawn(arg2.Callback)
												end
											end)

											return {
												Type = "Button",
												Root = v87,
												SetTitle = function(arg4, text)
													v89.Text = text
												end,
											}
										end

										tbl18.Components.Colorpicker = function(arg, arg2, arg3)
											local default = arg2.Default or Color3.fromRGB(v85[123], 255, 255)

											if typeof(tbl18.State.Saved[arg2.Flag]) == "Color3" then
												default = tbl18.State.Saved[arg2.Flag]
											end

											local n, n33, n34 = default:ToHSV()

											local Frame = tbl18.Util.New("Frame", {
												Name = v85[109],
												Size = UDim2.new(v85[145], 0, v85[4], v85[4]),
												AutomaticSize = Enum.AutomaticSize.Y,
												BackgroundTransparency = 1,
												LayoutOrder = arg3,
												Parent = arg,
											}, { tbl18.Util.List(6) })

											local TextButton = tbl18.Util.New("TextButton", {
												Text = "",
												AutoButtonColor = false,
												Size = UDim2.new(1, v85[4], 0, tbl18.Layout.Row),
												BackgroundTransparency = v85[145],
												Parent = Frame,
											})

											local v87 = tbl18.Util.Label({
												Text = arg2.Title or v85[142],
												TextSize = 12,
												ColorKey = v85[3],
												Size = UDim2.new(1, -50, 1, v85[4]),
												Parent = TextButton,
											})

											local stroke = tbl18.Util.Stroke

											local Frame2 = tbl18.Util.New("Frame", {
												AnchorPoint = Vector2.new(1, 0.5),
												Position = UDim2.new(1, 0, v85[121], 0),
												Size = UDim2.fromOffset(34, 18),
												BackgroundColor3 = default,
												BorderSizePixel = 0,
												Parent = TextButton,
											}, { tbl18.Util.Corner(6), stroke("Border", 1, 0.15) })

											local Frame3 = tbl18.Util.New("Frame", {
												Size = UDim2.new(1, 0, 0, v85[4]),
												BackgroundTransparency = v85[145],
												ClipsDescendants = v85[129],
												Parent = Frame,
											})

											local new = tbl18.Util.New

											local tbl19 = {
												Size = UDim2.new(1, 0, 0, v85[13]),
												BackgroundTransparency = 0.35,
												BorderSizePixel = 0,
												Parent = Frame3,
											}

											local tbl20 = {}
											local v88 = tbl18.Util.Corner(8)
											local Border = tbl18.Util.Stroke("Border", 1, 0.25)
											local v89 = tbl18.Util.Padding(v85[133], v85[133], 8, 8)
											tbl20[1] = v88
											tbl20[2] = Border
											tbl20[3] = v89

											do
												local values = table.pack(tbl18.Util.List(7))
												table.move(values, 1, values.n, 4, tbl20)
											end

											local Frame4 = new("Frame", tbl19, tbl20)
											tbl18.Theme.Bind(Frame4, "BackgroundColor3", "SurfaceAlt")
											local new2 = tbl18.Util.New

											local tbl21 = {
												Size = UDim2.new(1, 0, 0, 78),
												BackgroundColor3 = Color3.fromHSV(n, v85[145], v85[145]),
												BorderSizePixel = 0,
												Parent = Frame4,
											}

											local tbl22 = {}
											local v90 = tbl18.Util.Corner(v85[138])
											local new3 = tbl18.Util.New

											local tbl23 = {
												Size = UDim2.fromScale(1, v85[145]),
												BackgroundColor3 = Color3.new(1, 1, 1),
												BorderSizePixel = v85[4],
											}

											local tbl24 = {}
											local v91 = tbl18.Util.Corner(v85[138])
											local new4 = tbl18.Util.New
											local v92 = v85[15]
											local tbl25 = { Color = ColorSequence.new(Color3.new(1, v85[145], 1)), Transparency = NumberSequence.new(0, 1) }
											tbl24[1] = v91

											do
												local values = table.pack(new4(v92, tbl25))
												table.move(values, 1, values.n, 2, tbl24)
											end

											local Frame5 = new3("Frame", tbl23, tbl24)
											local new5 = tbl18.Util.New

											local tbl26 = {
												Size = UDim2.fromScale(v85[145], 1),
												BackgroundColor3 = Color3.new(0, 0, 0),
												BorderSizePixel = 0,
												ZIndex = 2,
											}

											local tbl27 = {}
											local v93 = tbl18.Util.Corner(6)
											local new6 = tbl18.Util.New
											local tbl28 = { Rotation = 90, Transparency = NumberSequence.new(1, 0) }
											tbl27[1] = v93

											do
												local values = table.pack(new6("UIGradient", tbl28))
												table.move(values, 1, values.n, 2, tbl27)
											end

											tbl22[1] = v90
											tbl22[2] = Frame5

											do
												local values = table.pack(new5("Frame", tbl26, tbl27))
												table.move(values, 1, values.n, 3, tbl22)
											end

											local Frame6 = new2("Frame", tbl21, tbl22)
											local new7 = tbl18.Util.New

											local tbl29 = {
												AnchorPoint = Vector2.new(0.5, 0.5),
												Size = UDim2.fromOffset(9, 9),
												BackgroundTransparency = 1,
												ZIndex = 4,
												Parent = Frame6,
											}

											local tbl30 = {}
											local v94 = tbl18.Util.Corner(UDim.new(1, 0))
											local new8 = tbl18.Util.New
											local tbl31 = { Color = Color3.new(1, 1, 1), Thickness = v85[9] }
											tbl30[1] = v94

											do
												local values = table.pack(new8("UIStroke", tbl31))
												table.move(values, 1, values.n, 2, tbl30)
											end

											local Frame7 = new7("Frame", tbl29, tbl30)
											local new9 = tbl18.Util.New
											local v95 = v85[169]
											local tbl32 = { Size = UDim2.new(v85[145], 0, 0, 10), BorderSizePixel = 0, Parent = Frame4 }
											local tbl33 = {}
											local v96 = tbl18.Util.Corner(UDim.new(1, 0))
											local new10 = tbl18.Util.New
											local tbl34 = {}
											local colorSequence = ColorSequence.new
											local tbl35 = {}
											local v97 = ColorSequenceKeypoint.new(0, Color3.fromRGB(v85[123], 0, 0))
											local v98 = ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, v85[123], v85[4]))
											local v99 = ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 0))
											local v100 = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 255))
											local v101 = ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 0, 255))
											local v102 = ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 0, 255))
											local new11 = ColorSequenceKeypoint.new
											local color = Color3.fromRGB
											tbl35[1] = v97
											tbl35[2] = v98
											tbl35[3] = v99
											tbl35[4] = v100
											tbl35[5] = v101
											tbl35[6] = v102

											do
												local values = table.pack(new11(1, color(255, 0, 0)))
												table.move(values, 1, values.n, 7, tbl35)
											end

											tbl34.Color = colorSequence(tbl35)
											tbl33[1] = v96

											do
												local values = table.pack(new10("UIGradient", tbl34))
												table.move(values, 1, values.n, 2, tbl33)
											end

											local v103 = new9(v95, tbl32, tbl33)

											local Frame8 = tbl18.Util.New("Frame", {
												AnchorPoint = Vector2.new(0.5, 0.5),
												Position = UDim2.new(n, v85[4], 0.5, v85[4]),
												Size = UDim2.fromOffset(v85[138], 14),
												BackgroundColor3 = Color3.new(v85[145], 1, 1),
												BorderSizePixel = 0,
												ZIndex = 2,
												Parent = v103,
											}, { tbl18.Util.Corner(3) })

											local stroke2 = tbl18.Util.Stroke
											local v104 = v85[172]

											local TextBox = tbl18.Util.New("TextBox", {
												Text = "#FFFFFF",
												ClearTextOnFocus = v85[33],
												BackgroundTransparency = 0.5,
												FontFace = tbl18.Util.Font(tbl18.Layout.Weight.Medium),
												TextSize = 11,
												TextXAlignment = Enum.TextXAlignment.Center,
												Size = UDim2.new(v85[145], v85[4], 0, 22),
												BorderSizePixel = 0,
												Parent = Frame4,
											}, { tbl18.Util.Corner(6), stroke2(v104, 1, 0.3) })

											tbl18.Theme.Bind(TextBox, v85[125], "Surface")
											tbl18.Theme.Bind(TextBox, "TextColor3", "SubText")

											local TextButton2 = tbl18.Util.New("TextButton", {
												Text = "",
												AutoButtonColor = false,
												Size = UDim2.new(1, 0, v85[4], 20),
												BackgroundTransparency = 1,
												Parent = Frame4,
											})

											local v105 = tbl18.Util.Label({
												Text = "Rainbow",
												TextSize = v85[46],
												ColorKey = "SubText",
												Size = UDim2.new(1, -34, 1, 0),
												Parent = TextButton2,
											})

											local stroke3 = tbl18.Util.Stroke
											local v106 = v85[76]

											local v107 = tbl18.Util.New(v85[169], {
												AnchorPoint = Vector2.new(1, 0.5),
												Position = UDim2.new(1, v85[4], 0.5, v85[4]),
												Size = UDim2.fromOffset(28, 15),
												BackgroundTransparency = 0.5,
												BorderSizePixel = v85[4],
												Parent = TextButton2,
											}, { tbl18.Util.Corner(UDim.new(1, 0)), stroke3("Border", 1, v106) })

											tbl18.Theme.Bind(v107, "BackgroundColor3", "Surface")

											local Frame9 = tbl18.Util.New("Frame", {
												AnchorPoint = Vector2.new(0, v85[121]),
												Position = UDim2.new(v85[4], 3, 0.5, 0),
												Size = UDim2.fromOffset(v85[77], v85[77]),
												BorderSizePixel = v85[4],
												Parent = v107,
											}, { tbl18.Util.Corner(UDim.new(v85[145], 0)) })

											tbl18.Theme.Bind(Frame9, "BackgroundColor3", "Muted")
											local flag18 = false
											local flag19 = false
											local v108 = nil
											local tbl36 = { Type = "Colorpicker", Value = default, Root = Frame }

											local function fn37(arg4, arg5)
												local color2 = Color3.fromHSV(n, n33, n34)
												tbl36.Value = color2
												Frame2.BackgroundColor3 = color2
												Frame6.BackgroundColor3 = Color3.fromHSV(n, v85[145], 1)
												Frame7.Position = UDim2.fromScale(n33, 1 - n34)
												Frame8.Position = UDim2.new(n, 0, 0.5, 0)
												local floor2 = math.floor
												local n35 = color2.B * 255 + v85[121]
												TextBox.Text = string.format("#%02X%02X%02X", math.floor(color2.R * v85[123] + 0.5), math.floor(color2.G * 255 + 0.5), floor2(n35))

												if arg2.Flag then
													zenthra.Flags[arg2.Flag] = color2

													if not arg5 then
														tbl18.Config.Queue()
													end
												end

												if not arg4 and arg2.Callback then
													task.spawn(arg2.Callback, color2)
												end
											end

											tbl36.SetRainbow = function(arg4, arg5)
												local flag20 = arg5 == true
												if flag20 == flag19 then
													return
												end
												flag19 = flag20
												tbl18.Config.SetFlag((arg2.Flag or "") .. "__rainbow", flag20)

												tbl18.Util.Tween(v107, {
													BackgroundColor3 = flag20 and palette.Accent or palette.Surface,
													BackgroundTransparency = flag20 and v85[102] or v85[121],
												}, 0.24)

												tbl18.Util.Tween(Frame9, {
													Position = flag20 and UDim2.new(1, -12, v85[121], 0) or UDim2.new(0, 3, 0.5, 0),
													BackgroundColor3 = flag20 and palette.Background or palette.Muted,
												}, 0.3)

												tbl18.Util.Tween(v105, { TextColor3 = flag20 and palette.Text or palette.SubText }, 0.24)

												if v108 then
													v108:Disconnect()
													v108 = nil
												end

												if flag20 then
													n33 = 1
													n34 = 1

													v108 = tbl18.Util.Connect(tbl18.Services.Run.RenderStepped, function(arg6)
														n = (n + arg6 * (arg2.RainbowSpeed or 0.15)) % 1
														fn37(false, v85[129])
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
												local v109, v110, v111 = arg5:ToHSV()
												n = v109
												n33 = v110
												n34 = v111
												fn37(arg6)
											end

											tbl36.Get = function(arg4)
												return arg4.Value
											end

											tbl18.Util.Connect(TextButton2.MouseButton1Click, function()
												tbl36:SetRainbow(not flag19)
											end)

											local function fn38(arg4)
												flag18 = arg4
												tbl18.Util.Tween(Frame3, { Size = UDim2.new(1, 0, 0, flag18 and 167 or v85[4]) }, 0.3)
											end

											tbl18.Util.Connect(TextButton.MouseButton1Click, function()
												fn38(not flag18)
											end)

											tbl18.Util.Hover(TextButton, function()
												tbl18.Util.Tween(v87, { TextColor3 = palette.Text }, v85[194])
											end, function()
												tbl18.Util.Tween(v87, { TextColor3 = palette.SubText }, 0.2)
											end)

											local function fn39(arg4, arg5)
												local flag20 = false

												tbl18.Util.Connect(arg4.InputBegan, function(arg6)
													if arg6.UserInputType ~= Enum.UserInputType.MouseButton1 and arg6.UserInputType ~= Enum.UserInputType.Touch then
														return
													end
													flag20 = v85[129]
													tbl18.Window.BlockDrag = true
													arg5(arg6.Position)
												end)

												tbl18.Util.Connect(tbl18.Services.UserInput.InputChanged, function(arg6)
													if not flag20 then
														return
													end

													if arg6.UserInputType == Enum.UserInputType.MouseMovement or arg6.UserInputType == Enum.UserInputType.Touch then
														arg5(arg6.Position)
													end
												end)

												tbl18.Util.Connect(tbl18.Services.UserInput.InputEnded, function(arg6)
													if not flag20 then
														return
													end

													if arg6.UserInputType ~= Enum.UserInputType.MouseButton1 and arg6.UserInputType ~= Enum.UserInputType.Touch then
														return
													end
													flag20 = v85[33]
													tbl18.Window.BlockDrag = false
													tbl18.Config.Queue()
												end)
											end

											fn39(Frame6, function(arg4)
												tbl36:SetRainbow(false)
												local absoluteSize = Frame6.AbsoluteSize
												local absolutePosition = Frame6.AbsolutePosition
												local v109 = v85[4]
												n33 = math.clamp((arg4.X - absolutePosition.X) / math.max(absoluteSize.X, 1), v109, 1)
												local v110 = v85[145]
												n34 = 1 - math.clamp((arg4.Y - absolutePosition.Y) / math.max(absoluteSize.Y, v85[145]), 0, v110)
												fn37()
											end)

											fn39(v103, function(arg4)
												tbl36:SetRainbow(false)
												n = math.clamp((arg4.X - v103.AbsolutePosition.X) / math.max(v103.AbsoluteSize.X, 1), 0, 1)
												fn37()
											end)

											tbl18.Util.Connect(TextBox.FocusLost, function()
												local str7 = TextBox.Text:gsub("#", "")

												if #str7 == 6 and tonumber(str7, v85[47]) then
													tbl36:Set(Color3.fromHex(str7))
												else
													fn37(true)
												end
											end)

											fn37(true)
											local rainbow = arg2.Rainbow

											if not rainbow then
												rainbow = tbl18.State.Saved[(arg2.Flag or "") .. v85[78]] == v85[129]
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
												Size = UDim2.new(1, 0, 0, 0),
												AutomaticSize = Enum.AutomaticSize.Y,
												BackgroundTransparency = 1,
												LayoutOrder = arg3,
												Parent = arg,
											}, { tbl18.Util.List(3) })

											local v87 = nil

											if arg2.Title then
												v87 = tbl18.Util.Label({
													Text = arg2.Title,
													TextSize = v85[58],
													Weight = tbl18.Layout.Weight.SemiBold,
													Size = UDim2.new(v85[145], v85[4], v85[4], v85[146]),
													Parent = Frame,
												})
											end

											local v88 = tbl18.Util.Label({
												Text = arg2.Text or "",
												TextSize = 11.5,
												ColorKey = v85[3],
												TextWrapped = true,
												AutomaticSize = Enum.AutomaticSize.Y,
												Size = UDim2.new(1, 0, 0, 0),
												Parent = Frame,
											})

											return {
												Type = "Paragraph",
												Root = Frame,
												Set = function(arg4, text)
													v88.Text = text
												end,
												SetTitle = function(arg4, text)
													if v87 then
														v87.Text = text
													end
												end,
											}
										end

										tbl18.Components.Divider = function(arg, arg2, arg3)
											local v87 = tbl18.Components.OptionRoot(arg, 9, arg3)

											tbl18.Theme.Bind(tbl18.Util.New(v85[169], {
												AnchorPoint = Vector2.new(v85[4], 0.5),
												Position = UDim2.new(0, 0, 0.5, 0),
												Size = UDim2.new(1, 0, v85[4], 1),
												BackgroundTransparency = 0.4,
												BorderSizePixel = 0,
												Parent = v87,
											}), "BackgroundColor3", "Border")

											return { Type = "Divider", Root = v87 }
										end

										do
											local index = {}
											index.__index = index
											local n = tbl18.Env.Mobile and 36 or v85[62]

											tbl18.Module.Create = function(tab, config)
												local obj = setmetatable({}, index)
												obj.Tab = tab
												obj.Config = config
												obj.Title = config.Title or "Module"
												obj.Flag = config.Flag
												obj.Toggleable = config.Toggleable ~= false and config.Flag ~= nil
												obj.Enabled = v85[33]
												obj.Expanded = false
												obj.Order = v85[4]
												obj.Keyword = (obj.Title .. " " .. (config.Description or "")):lower()
												local flag18 = config.Description ~= nil and config.Description ~= ""
												local flag19 = obj.Toggleable and config.Keybind ~= false and obj.Flag ~= nil and not tbl18.Env.Mobile
												local flag20 = obj.Toggleable and config.Notify ~= false and obj.Flag ~= nil
												local n33 = flag19 and v85[112] + n or 46
												local n34 = flag19 and 46 + n / 2 or 23
												local flag21 = obj.Toggleable and not flag19
												local n35 = 26

												if flag21 then
													n35 = v85[87] + (flag20 and 23 or v85[4]) + v85[25]

													if 5894 >= n25 then
														while v85[129] do
														end
													end
												end

												obj.Side = (config.Side or "Left"):lower()
												obj.Column = obj.Side == "right" and tab.Right or tab.Left
												obj.LayoutOrder = #obj.Column:GetChildren()
												local n36 = 0.15 + 0.85 * math.clamp(tonumber(zenthra.Flags and zenthra.Flags.gui_module_transparency) or tab.Window and tonumber(tab.Window.ModuleTransparency) or 0, v85[4], 1)
												local new = tbl18.Util.New

												local tbl19 = {
													Name = "Module",
													Size = UDim2.new(v85[145], v85[4], 0, 0),
													AutomaticSize = Enum.AutomaticSize.Y,
													BackgroundTransparency = n36,
													BorderSizePixel = 0,
													ClipsDescendants = true,
													LayoutOrder = obj.LayoutOrder,
													Parent = obj.Column,
												}

												local tbl20 = {}
												local v87 = tbl18.Util.Corner(10)
												local list = tbl18.Util.List
												local Border = tbl18.Util.Stroke("Border", v85[145], 0.3)
												tbl20[1] = v87
												tbl20[2] = Border

												do
													local values = table.pack(list(0))
													table.move(values, 1, values.n, 3, tbl20)
												end

												local Frame = new("Frame", tbl19, tbl20)
												tbl18.Theme.Bind(Frame, "BackgroundColor3", "Surface")
												obj.Frame = Frame
												obj.Stroke = Frame:FindFirstChildOfClass(v85[174])

												local TextButton = tbl18.Util.New("TextButton", {
													Name = "Header",
													Text = "",
													AutoButtonColor = v85[33],
													Size = UDim2.new(1, 0, 0, n33),
													BackgroundTransparency = v85[145],
													Parent = Frame,
												})

												obj.Header = TextButton

												local v88 = tbl18.Util.Label({
													Text = obj.Title,
													TextSize = 13,
													Weight = tbl18.Layout.Weight.SemiBold,
													TextTruncate = Enum.TextTruncate.AtEnd,
													Position = UDim2.new(0, 13, v85[4], flag18 and v85[88] or 0),
													Size = UDim2.new(1, -n35, 0, flag18 and 15 or 46),
													Parent = TextButton,
												})

												if flag18 then
													tbl18.Util.Label({
														Text = config.Description,
														TextSize = 11,
														ColorKey = "Muted",
														TextTruncate = Enum.TextTruncate.AtEnd,
														Position = UDim2.new(0, 13, 0, v85[8]),
														Size = UDim2.new(1, -n35, 0, 13),
														Parent = TextButton,
													})
												end

												local Frame2 = tbl18.Util.New("Frame", {
													Name = "Body",
													Size = UDim2.new(1, 0, v85[4], v85[4]),
													BackgroundTransparency = 1,
													ClipsDescendants = true,
													LayoutOrder = 2,
													Parent = Frame,
												})

												obj.Body = Frame2

												local Frame3 = tbl18.Util.New("Frame", {
													Size = UDim2.new(1, 0, 0, v85[4]),
													AutomaticSize = Enum.AutomaticSize.Y,
													BackgroundTransparency = v85[145],
													Parent = Frame2,
												}, { tbl18.Util.Padding(10, 13, 13, v85[170]), tbl18.Util.List(9) })

												obj.Content = Frame3
												local uiListLayout = Frame3:FindFirstChildOfClass("UIListLayout")

												tbl18.Theme.Bind(tbl18.Util.New("Frame", {
													Size = UDim2.new(1, -26, 0, 1),
													Position = UDim2.new(0, 13, 0, 0),
													BackgroundTransparency = v85[121],
													BorderSizePixel = 0,
													Parent = Frame2,
												}), "BackgroundColor3", "Border")

												local function fn37()
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
													local v89 = fn37()

													if arg2 == false then
														Frame2.Size = UDim2.new(v85[145], 0, 0, v89)
													else
														tbl18.Util.Tween(Frame2, { Size = UDim2.new(1, v85[4], 0, v89) }, 0.3)
													end
												end

												tbl18.Util.Connect(uiListLayout:GetPropertyChangedSignal(v85[99]), function()
													obj:Resize(v85[129])
												end)

												obj.SetExpanded = function(arg, expanded, arg2)
													local v89 = v85[9]

													if #Frame3:GetChildren() <= v89 then
														expanded = false
													end

													obj.Expanded = expanded
													expanded = expanded and fn37() or 0

													if arg2 == false then
														Frame2.Size = UDim2.new(v85[145], 0, v85[4], expanded)
													else
														tbl18.Util.Tween(Frame2, { Size = UDim2.new(v85[145], 0, 0, expanded) }, v85[18])
													end
												end

												local v89 = nil
												local v90 = nil
												local v91 = nil

												if obj.Toggleable then
													if flag19 then
														tbl18.Theme.Bind(tbl18.Util.New(v85[169], {
															Position = UDim2.new(0, 13, 0, v85[112]),
															Size = UDim2.new(1, -26, 0, v85[145]),
															BackgroundTransparency = 0.6,
															BorderSizePixel = v85[4],
															Parent = TextButton,
														}), "BackgroundColor3", "Border")
													end

													local Frame4 = tbl18.Util.New("Frame", {
														AnchorPoint = Vector2.new(1, v85[121]),
														Position = UDim2.new(v85[145], -13, 0, n34),
														Size = UDim2.fromOffset(0, v85[98]),
														AutomaticSize = Enum.AutomaticSize.X,
														BackgroundTransparency = 1,
														Parent = TextButton,
													}, { tbl18.Util.FlexRow(9) })

													if flag20 then
														v91 = tbl18.Binds.AttachBell({ Parent = Frame4, LayoutOrder = 1, Flag = obj.Flag, Size = 14 })
													end

													local new2 = tbl18.Util.New
													local v92 = v85[169]

													local tbl21 = {
														Size = UDim2.fromOffset(v85[87], 18),
														BackgroundTransparency = v85[190],
														BorderSizePixel = 0,
														LayoutOrder = 2,
														Parent = Frame4,
													}

													local stroke = tbl18.Util.Stroke
													local v93 = v85[145]
													v89 = new2(v92, tbl21, { tbl18.Util.Corner(UDim.new(1, 0)), stroke("Border", v93, 0.2) })
													tbl18.Theme.Bind(v89, "BackgroundColor3", v85[54])

													v90 = tbl18.Util.New(v85[169], {
														AnchorPoint = Vector2.new(0, 0.5),
														Position = UDim2.new(0, 3, 0.5, 0),
														Size = UDim2.fromOffset(12, 12),
														BorderSizePixel = 0,
														Parent = v89,
													}, { tbl18.Util.Corner(UDim.new(1, 0)) })

													tbl18.Theme.Bind(v90, "BackgroundColor3", "Muted")

													tbl18.Util.Connect(tbl18.Util.New(v85[53], {
														Text = "",
														AutoButtonColor = v85[33],
														BackgroundTransparency = v85[145],
														AnchorPoint = Vector2.new(0.5, 0.5),
														Position = UDim2.fromScale(0.5, 0.5),
														Size = UDim2.new(1, tbl18.Env.Mobile and 24 or v85[58], v85[145], tbl18.Env.Mobile and 18 or 8),
														Parent = v89,
													}).MouseButton1Click, function()
														obj:SetEnabled(not obj.Enabled)
													end)
												end

												obj.SetEnabled = function(arg, arg2, arg3, arg4)
													local enabled = arg2 == v85[129]
													obj.Enabled = enabled
													tbl18.Config.SetFlag(obj.Flag, enabled)

													if v89 then
														tbl18.Util.Tween(v89, {
															BackgroundColor3 = enabled and palette.Accent or palette.SurfaceAlt,
															BackgroundTransparency = enabled and 0.05 or v85[190],
														}, 0.26)

														tbl18.Util.Tween(v90, {
															Position = enabled and UDim2.new(1, -v85[130], 0.5, 0) or UDim2.new(v85[4], 3, 0.5, 0),
															BackgroundColor3 = enabled and palette.Background or palette.Muted,
														}, v85[144])
													end

													tbl18.Util.Tween(obj.Stroke, { Color = enabled and palette.Accent or palette.Border, Transparency = enabled and 0.55 or v85[16] }, 0.3)
													tbl18.Util.Tween(v88, { TextColor3 = (enabled or not obj.Toggleable) and palette.Text or palette.SubText }, v85[28])

													if obj.Toggleable then
														obj:SetExpanded(enabled, not arg4)
													end

													if not arg3 then
														if config.Callback then
															task.spawn(config.Callback, enabled)
														end

														if v91 then
															v91.Announce(obj.Title, enabled)
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
														AnchorPoint = Vector2.new(v85[4], 0.5),
														Position = UDim2.new(0, 13, 0, n34),
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
														tbl18.Util.Tween(obj.Stroke, { Color = palette.Muted, Transparency = v85[159] }, 0.18)
													end

													tbl18.Util.Tween(v88, { TextColor3 = palette.Text }, 0.18)
												end, function()
													if not obj.Enabled then
														tbl18.Util.Tween(obj.Stroke, { Color = palette.Border, Transparency = 0.3 }, 0.22)

														if obj.Toggleable then
															tbl18.Util.Tween(v88, { TextColor3 = palette.SubText }, 0.22)
														end
													end
												end)

												obj:SetEnabled(tbl18.State.Saved[obj.Flag] == true, v85[129], true)

												if obj.Enabled and config.Callback then
													task.spawn(config.Callback, true)
												end

												table.insert(tab.Modules, obj)
												return obj
											end

											for k, component in pairs(components) do
												index[k] = function(arg, arg2)
													local tbl19 = arg2 or {}
													arg.Order = arg.Order + 1
													local v87 = component(arg.Content, tbl19, arg.Order)

													if tbl19.Flag then
														zenthra.Options[tbl19.Flag] = v87
													end

													arg.Keyword = arg.Keyword .. " " .. (tbl19.Title or ""):lower()

													if not arg.Expanded and (arg.Enabled or not arg.Toggleable) then
														arg:SetExpanded(true, false)
													end

													return v87
												end
											end

											index.Label = function(arg, arg2)
												return arg:Paragraph({ Text = type(arg2) == "table" and arg2.Text or arg2 })
											end
										end
									end

									tbl18.Page.Create = function(arg)
										local CanvasGroup = tbl18.Util.New("CanvasGroup", {
											Name = v85[37],
											Size = UDim2.fromScale(1, 1),
											BackgroundTransparency = 1,
											GroupTransparency = 1,
											Visible = false,
											Parent = arg,
										})

										local ScrollingFrame = tbl18.Util.New("ScrollingFrame", {
											Size = UDim2.fromScale(1, 1),
											BackgroundTransparency = 1,
											BorderSizePixel = 0,
											ScrollBarThickness = v85[128],
											ScrollBarImageTransparency = 0.45,
											AutomaticCanvasSize = Enum.AutomaticSize.Y,
											CanvasSize = UDim2.new(),
											ScrollingDirection = Enum.ScrollingDirection.Y,
											TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png",
											BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png",
											Parent = CanvasGroup,
										})

										tbl18.Theme.Bind(ScrollingFrame, "ScrollBarImageColor3", v85[67])
										local new = tbl18.Util.New
										local v87 = v85[169]

										local tbl19 = {
											Size = UDim2.new(v85[145], 0, 0, v85[4]),
											AutomaticSize = Enum.AutomaticSize.Y,
											BackgroundTransparency = 1,
											Parent = ScrollingFrame,
										}

										local tbl20 = {}
										local v88 = tbl18.Util.Padding(14, 16, 15, 10)
										local new2 = tbl18.Util.New

										local tbl21 = {
											Padding = UDim.new(0, v85[58]),
											FillDirection = Enum.FillDirection.Horizontal,
											SortOrder = Enum.SortOrder.LayoutOrder,
										}

										tbl20[1] = v88

										do
											local values = table.pack(new2("UIListLayout", tbl21))
											table.move(values, 1, values.n, 2, tbl20)
										end

										local v89 = new(v87, tbl19, tbl20)

										local function fn37(arg2)
											return tbl18.Util.New("Frame", {
												Name = "Column",
												Size = UDim2.new(0.5, -6, 0, 0),
												AutomaticSize = Enum.AutomaticSize.Y,
												BackgroundTransparency = v85[145],
												LayoutOrder = arg2,
												Parent = v89,
											}, { tbl18.Util.List(10) })
										end

										return CanvasGroup, ScrollingFrame, fn37(1), fn37(2)
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

										for _, v87 in ipairs(tbl19) do
											if v87 == arg2 then
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
										local v87 = tbl18.Tab.IndicatorPosition(arg, arg2)
										indicator.Visible = true
										indicator.Size = UDim2.new(1, -(tbl18.Layout.TabPad * 2), 0, tbl18.Layout.TabH)

										if arg.TabIndicatorTween then
											arg.TabIndicatorTween:Cancel()
											arg.TabIndicatorTween = nil
										end

										if not arg3 then
											indicator.Position = v87
											return
										end
										arg.TabIndicatorTween = tbl18.Util.Tween(indicator, { Position = v87 }, tbl18.Layout.TabIndicatorSlide)
									end

									tbl18.Tab.Create = function(arg, arg2)
										local activeTab = {
											Window = arg,
											Title = arg2.Title or "Tab",
											Modules = {},
											Index = #arg.Tabs + 1,
											Internal = arg2.Internal == true,
										}

										local TextButton = tbl18.Util.New("TextButton", {
											Name = "Tab",
											Text = "",
											AutoButtonColor = false,
											Size = UDim2.new(v85[145], v85[4], 0, tbl18.Layout.TabH),
											BackgroundTransparency = 1,
											ZIndex = 2,
											LayoutOrder = activeTab.Internal and 9999 or activeTab.Index,
											Parent = arg.TabHolder,
										})

										activeTab.Button = TextButton
										local padding = tbl18.Util.Padding
										local v87 = v85[4]
										local v88 = v85[4]
										local v89 = v85[58]
										local v90 = v85[58]
										local Frame = tbl18.Util.New("Frame", { Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Parent = TextButton }, { tbl18.Util.FlexRow(9), padding(v87, v88, v89, v90) })
										local v91 = nil

										if arg2.Icon then
											v91 = tbl18.Util.Image({
												Image = arg2.Icon,
												Size = UDim2.fromOffset(15, v85[130]),
												ImageTransparency = 0.35,
												ColorKey = "SubText",
												LayoutOrder = 1,
												Parent = Frame,
											})
										end

										local v92 = tbl18.Util.Label({
											Text = activeTab.Title,
											TextSize = 12.5,
											Weight = tbl18.Layout.Weight.Medium,
											ColorKey = "SubText",
											AutomaticSize = Enum.AutomaticSize.X,
											Size = UDim2.new(0, 0, 1, v85[4]),
											LayoutOrder = 2,
											Parent = Frame,
										})

										local v93, v94, v95, v96 = tbl18.Page.Create(arg.Content)
										activeTab.Page = v93
										activeTab.Scroller = v94
										activeTab.Left = v95
										activeTab.Right = v96

										activeTab.Select = function(arg3, arg4)
											if arg.SearchBox and arg.SearchBox.Text ~= "" then
												arg.SearchBox.Text = ""
											end

											if arg.ActiveTab == activeTab then
												return
											end
											local activeTab2 = arg.ActiveTab
											arg.ActiveTab = activeTab
											local flag18 = arg4 ~= true

											if activeTab2 then
												tbl18.Util.Tween(activeTab2.Page, { GroupTransparency = 1 }, flag18 and 0.16 or v85[4])

												task.delay(flag18 and 0.16 or 0, function()
													if arg.ActiveTab ~= activeTab2 then
														activeTab2.Page.Visible = v85[33]
													end
												end)

												tbl18.Util.Tween(activeTab2.Text, { TextColor3 = palette.SubText }, flag18 and 0.2 or 0)

												if activeTab2.Glyph then
													tbl18.Util.Tween(activeTab2.Glyph, { ImageColor3 = palette.SubText, ImageTransparency = v85[175] }, flag18 and 0.2 or 0)
												end
											end

											v93.Visible = true

											if flag18 then
												v93.GroupTransparency = v85[145]
												v93.Position = UDim2.fromOffset(0, 8)
												tbl18.Util.Tween(v93, { GroupTransparency = v85[4], Position = UDim2.fromOffset(v85[4], 0) }, v85[16])
												tbl18.Util.Tween(v92, { TextColor3 = palette.Text }, 0.22)

												if v91 then
													tbl18.Util.Tween(v91, { ImageColor3 = palette.Accent, ImageTransparency = 0 }, 0.22)
												end
											else
												v93.GroupTransparency = 0
												v93.Position = UDim2.fromOffset(0, v85[4])
												v92.TextColor3 = palette.Text

												if v91 then
													v91.ImageColor3 = palette.Accent
													v91.ImageTransparency = 0
												end
											end

											activeTab:SyncIndicator(flag18 and activeTab2 ~= nil)
										end

										activeTab.SyncIndicator = function(arg3, arg4)
											if arg.ActiveTab ~= activeTab then
												return
											end
											tbl18.Tab.SlideIndicator(arg, activeTab, arg4 == v85[129])
										end

										activeTab.Module = function(arg3, arg4)
											return tbl18.Module.Create(activeTab, arg4 or {})
										end

										activeTab.Text = v92
										activeTab.Glyph = v91

										tbl18.Util.Connect(TextButton.MouseButton1Click, function()
											activeTab:Select()
										end)

										tbl18.Util.Hover(TextButton, function()
											if arg.ActiveTab ~= activeTab then
												tbl18.Util.Tween(v92, { TextColor3 = palette.Text }, v85[194])

												if n25 <= 5906 then
													while true do
													end
												elseif v91 then
													tbl18.Util.Tween(v91, { ImageTransparency = v85[189] }, v85[194])
												end
											end
										end, function()
											if arg.ActiveTab ~= activeTab then
												tbl18.Util.Tween(v92, { TextColor3 = palette.SubText }, 0.2)

												if v91 then
													tbl18.Util.Tween(v91, { ImageTransparency = 0.35 }, 0.2)
												end
											end
										end)

										table.insert(arg.Tabs, activeTab)
										local flag18 = not activeTab.Internal
										local internal

										if flag18 then
											internal = arg.ActiveTab == nil or arg.ActiveTab.Internal
										else
											internal = flag18
										end

										if internal then
											activeTab:Select(true)
										end

										task.defer(function()
											if arg.ActiveTab == activeTab then
												activeTab:SyncIndicator(false)
											end
										end)

										return activeTab
									end

									fn29 = function()
										return tostring(zenthra.MediaFolder or "Zenthra/backgrounds")
									end

									fn30 = function()
										return tbl18.Env.Filesystem and typeof(listfiles) == "function"
									end

									fn31 = function()
										if not tbl18.Env.Filesystem then
											return false
										end
										local v87 = fn29()
										local match = v87:match("^([^/\\]+)")

										pcall(function()
											if match and not isfolder(match) then
												makefolder(match)
											end

											if not isfolder(v87) then
												makefolder(v87)
											end
										end)

										return isfolder(v87)
									end

									fn32 = function(arg)
										local v87 = v85[40]
										if type(arg) ~= v87 then
											return ""
										end

										return (arg:gsub("[^%w%-_%.~]", function(arg2)
											return string.format("%%%02X", string.byte(arg2))
										end))
									end

									do
										local function fn37()
											local v87 = v85[143]
											if typeof(request) == v87 then
												return request
											end

											if typeof(http_request) == "function" then
												return http_request
											end
											local flag18 = syn

											if flag18 then
												local v88 = v85[143]
												flag18 = typeof(syn.request) == v88
											end

											if flag18 then
												return syn.request
											end
											return nil
										end

										local function fn38(arg)
											local v87 = v85[143]
											if typeof(getcustomasset) == v87 then
												return getcustomasset(arg)
											end
											local v88 = v85[143]
											if typeof(getsynasset) == v88 then
												return getsynasset(arg)
											end
											return nil
										end

										local tbl19 = nil

										local function fn39(arg)
											local v87 = v85[40]
											if type(arg) ~= v87 then
												return nil
											end

											if crypt and typeof(crypt.base64decode) == "function" then
												return crypt.base64decode(arg)
											end

											if crypt and crypt.base64 and typeof(crypt.base64.decode) == "function" then
												return crypt.base64.decode(arg)
											end

											if not tbl19 then
												tbl19 = {}

												for i = 1, 64 do
													local n = i - v85[145]
													tbl19[string.byte("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", i)] = n
												end
											end

											local str7 = arg:gsub("[^%w%+/=]", "")
											local tbl20 = {}
											local v88 = v85[4]
											local v89 = v85[145]

											while v89 <= #str7 do
												local v90 = tbl19[string.byte(str7, v89)]
												local v91 = tbl19[string.byte(str7, v89 + 1)]

												if not (not v90 or not v91) then
													local v92 = string.byte(str7, v89 + 2) and tbl19[string.byte(str7, v89 + 2)]
													local v93 = string.byte(str7, v89 + 3) and tbl19[string.byte(str7, v89 + 3)]
													v88 += 1
													tbl20[v88] = string.char(v90 * 4 + math.floor(v91 / 16))

													if v92 then
														v88 += 1
														tbl20[v88] = string.char(v91 % 16 * 16 + math.floor(v92 / 4))

														if v93 then
															v88 += v85[145]
															tbl20[v88] = string.char(v92 % 4 * v85[193] + v93)
														end
													end

													v89 += 4
													continue
												end

												break
											end

											return table.concat(tbl20)
										end

										fn33 = function(arg)
											if type(arg) ~= "string" then
												return nil
											end
											local flag18 = crypt

											if flag18 then
												local v87 = v85[143]
												flag18 = typeof(crypt.base64encode) == v87
											end

											if flag18 then
												return crypt.base64encode(arg)
											end
											local base64 = crypt and crypt.base64

											if base64 then
												local v87 = v85[143]
												base64 = typeof(crypt.base64.encode) == v87
											end

											if base64 then
												return crypt.base64.encode(arg)
											end
											local tbl20 = {}

											for i = 1, #arg, v85[128] do
												local v87, str7, v88 = string.byte(arg, i, i + 2)
												local n = v87 * 65536 + (str7 or 0) * 256 + (v88 or 0)
												local n33 = #tbl20
												local n34 = n33 + 1
												local v89 = v85[193]
												tbl20[n34] = ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"):sub(math.floor(n / v85[164]) % v89 + 1, math.floor(n / 262144) % 64 + 1)
												tbl20[n33 + 2] = ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"):sub(math.floor(n / 4096) % 64 + 1, math.floor(n / 4096) % 64 + 1)
												local n35 = n33 + v85[128]

												if str7 then
													local v90 = v85[193]
													str7 = ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"):sub(math.floor(n / v85[193]) % v90 + 1, math.floor(n / 64) % 64 + 1)
												end

												tbl20[n35] = str7 or "="
												tbl20[n33 + 4] = v88 and ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"):sub(n % v85[193] + 1, n % v85[193] + v85[145]) or "="
											end

											return table.concat(tbl20)
										end

										fn34 = function(arg)
											local str7 = fn29() .. "/" .. arg
											local ok, result = pcall(readfile, str7)
											if not ok or type(result) ~= "string" or #result == v85[4] then
												return fn38(str7)
											end
											local n = #result % 16777213

											for i = 1, #result, math.max(v85[145], math.floor(#result / 64)) do
												n = (n * v85[85] + result:byte(i)) % 16777213
											end

											local str8 = fn29() .. "/.cache"
											local str9 = str8 .. "/" .. string.format("%x", n) .. v85[196] .. (arg:match("%.(%w+)$") or "png")

											return fn38(pcall(function()
												if not isfolder(str8) then
													makefolder(str8)
												end

												if not isfile(str9) then
													writefile(str9, result)
												end
											end) and str9 or str7)
										end

										media = {
											Seq = 0,
											Active = false,
											Opacity = 0.5,
											ApiBase = function()
												local str7 = tostring(getgenv and getgenv().ZENTHRA_SHEET_API or zenthra.SheetApiUrl or ""):gsub("^%s+", ""):gsub("%s+$", ""):gsub("/+$", "")
												if not str7:match("^https?://") then
													return nil
												end
												return str7
											end,
										}

										fn35 = function(arg)
											local ok, result = pcall(function()
												return tbl18.Services.Http:JSONDecode(arg)
											end)

											if not ok or type(result) ~= "table" then
												return nil, "Bad API response"
											end

											if not result.ok then
												return nil, tostring(result.error or "API error")
											end

											if not result.multi or type(result.images) ~= "table" or #result.images == 0 then
												return nil, v85[83]
											end
											local tbl20 = {}

											for i, image in ipairs(result.images) do
												local v87 = fn39(image)
												local v88 = v85[40]
												if type(v87) ~= v88 or #v87 == 0 then
													return nil, v85[137] .. i
												end
												tbl20[i] = v87
											end

											return tbl20, {
												cols = result.cols,
												cellW = result.cellW,
												cellH = result.cellH,
												count = result.count,
												counts = result.counts,
												delayMs = result.delayMs or v85[101],
												ext = (result.ext == "jpg" or result.ext == "png") and result.ext or v85[79],
											}
										end

										fn36 = function(arg, arg2, arg3, arg4)
											local v87 = fn37()

											if v87 then
												local ok, result = pcall(v87, { Url = arg, Method = arg2 or v85[152], Headers = arg3, Body = arg4 })
												if ok and type(result) == "table" and type(result.Body) == "string" and #result.Body > 0 then
													return result.Body, result.StatusCode or result.Status
												end
											end

											if (arg2 or v85[152]) == "GET" and not arg4 then
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

								do
									local fn37

									do
										fn37 = function(arg)
											local get, v87 = fn36(arg, "GET", {
												["User-Agent"] = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36",
												Accept = "image/avif,image/webp,image/apng,image/*,video/*,*/*;q=0.8",
												Referer = (arg:match("^(https?://[^/]+)") or "") .. "/",
											})

											if type(get) ~= "string" or #get < 32 then
												return nil
											end

											if v87 and v87 ~= v85[139] then
												return nil
											end
											local str7 = get:sub(1, v85[139]):lower()
											if str7:find("<!doctype", 1, v85[129]) or str7:find("<html", 1, true) or str7:find("just a moment", 1, v85[129]) then
												return nil
											end
											return get
										end

										do
											local function fn38(arg)
												local str7 = tostring(arg or ""):lower()
												return str7:find(v85[43], 1, true) or str7:find("403", 1, v85[129]) or str7:find(v85[114], 1, true) or str7:find(v85[11], 1, true) or str7:find("challenge", 1, v85[129]) or str7:find(v85[95], 1, true)
											end

											media.Fetch = function(arg)
												local v87 = media.ApiBase()
												if not v87 then
													return nil, v85[132]
												end

												if type(arg) ~= "string" or arg == "" then
													return nil, "Enter a media URL"
												end
												local v88 = v85[152]
												local value = select(1, fn36(v87 .. "/sheet?url=" .. fn32(arg) .. "&multi=1&quality=original&fmt=jpg&format=json", v88))
												local str7 = "Request failed, is the API up?"

												if value then
													local v89
													v89, str7 = fn35(value)
													if v89 then
														return v89, str7
													end

													if not fn38(str7) then
														return nil, str7
													end
												end

												local v89 = fn37(arg)
												if not v89 then
													return nil, str7
												end
												local v90 = fn33(v89)
												if type(v90) ~= "string" or v90 == "" then
													return nil, "Could not encode media for upload"
												end
												local json = tbl18.Services.Http:JSONEncode({ data = v90, name = arg:match("([^/\\?]+)%.[%w]+$") or arg:match("([^/\\?]+)$") or v85[49] })
												local v91 = v85[65]
												local value2 = select(1, fn36(v87 .. "/sheet?" .. ("&multi=1&quality=original&fmt=jpg&format=json"):sub(2), v91, { ["Content-Type"] = "application/json" }, json))
												if not value2 then
													return nil, "Upload to API failed - is the API up and recent?"
												end
												return fn35(value2)
											end
										end
									end

									do
										local function fn38(arg)
											local v87 = v85[40]
											if type(arg) ~= v87 or #arg < 12 then
												return nil
											end

											if arg:sub(1, 8) == "\137PNG\r\n\26\n" then
												return "png"
											end

											if arg:byte(v85[145]) == 255 and arg:byte(2) == 216 then
												return v85[79]
											end

											if arg:sub(v85[145], 4) == "GIF8" then
												return "gif"
											end

											if arg:sub(1, 4) == "RIFF" and arg:sub(9, 12) == "WEBP" then
												return "webp"
											end

											if arg:sub(1, v85[9]) == "BM" then
												return "bmp"
											end

											if arg:sub(v85[17], 8) == "ftyp" then
												local str7 = arg:sub(9, 12):lower()
												if str7:find("avif", v85[145], true) or str7:find(v85[56], 1, true) then
													return v85[95]
												end

												if str7:find("heic", 1, v85[129]) or str7:find("heif", 1, true) or str7:find("mif1", 1, true) then
													return "heic"
												end

												if str7:find("mp4", 1, v85[129]) or str7:find("isom", 1, true) or str7:find(v85[57], 1, true) then
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
											jpg = v85[129],
											jpeg = true,
											webp = true,
											bmp = true,
										}

										local function fn39(arg)
											for _, v87 in ipairs({ "png", v85[79], "jpeg", "webp", "bmp", "gif", v85[90], "webm", v85[150], v85[95] }) do
												pcall(delfile, fn29() .. "/" .. arg .. "." .. v87)
												local str7 = "/" .. arg .. "." .. v87 .. v85[38]
												pcall(delfile, fn29() .. str7)
												local v88 = v85[9]

												while true do
													local flag18 = typeof(isfile) == "function"
													local v89

													if flag18 then
														local str8 = "/" .. arg .. v85[108] .. v88 .. "." .. v87
														v89 = isfile(fn29() .. str8)
													else
														v89 = flag18
													end

													if v89 then
														pcall(delfile, fn29() .. "/" .. arg .. ".p" .. v88 .. "." .. v87)
														v88 += 1
														continue
													end

													break
												end
											end
										end

										local function fn40(arg, arg2, arg3)
											local str7 = tostring(arg3 or ""):gsub("[%\\/:%*%?\"<>|]", ""):gsub("^%s+", ""):gsub("%s+$", ""):gsub("%.%w+$", "")

											if str7 == "" then
												str7 = "media_" .. tostring(os.time())
											end

											local str8 = str7 .. "." .. arg2

											if not pcall(function()
												fn31()
												fn39(str7)
												local str9 = "/" .. str8
												writefile(fn29() .. str9, arg)
											end) then
												return false, "Could not write the files"
											end

											return v85[129], str8
										end

										local function fn41(arg, arg2)
											local v87 = media.ApiBase()
											if not v87 then
												return nil, "API URL must start with http"
											end
											local v88 = fn33(arg)
											if type(v88) ~= "string" or v88 == "" then
												return nil, "Could not encode media for upload"
											end
											local json = tbl18.Services.Http:JSONEncode({ data = v88, name = arg2 })
											local value = select(v85[145], fn36(v87 .. "/sheet?multi=1&quality=original&fmt=png&format=json", v85[65], { ["Content-Type"] = "application/json" }, json))
											if not value then
												return nil, "Upload to API failed - is the API up and recent?"
											end
											local v89, v90 = fn35(value)
											if not v89 then
												return nil, v90
											end
											return v89, v90
										end

										media.Save = function(arg, arg2)
											if not fn30() then
												return false, "This executor has no file access"
											end
											local v87 = fn37(arg)
											local v88 = v87 and fn38(v87)
											if v87 and v88 and tbl19[v88] then
												return fn40(v87, v88 == "jpeg" and "jpg" or v88, arg2)
											end

											if v87 and (v88 == "avif" or v88 == "heic") then
												local v89, v90 = fn41(v87, "upload." .. v88)
												if not v89 then
													return false, v90
												end
												local str7 = tostring(arg2 or ""):gsub("[%\\/:%*%?\"<>|]", ""):gsub("^%s+", ""):gsub("%s+$", ""):gsub("%.%w+$", "")

												if str7 == "" then
													str7 = "media_" .. tostring(os.time())
												end

												local str8 = str7 .. "." .. ((v90.ext == v85[161] or v90.ext == v85[79]) and v90.ext or "png")

												if not pcall(function()
													fn31()
													fn39(str7)
													local str9 = "/" .. str8
													writefile(fn29() .. str9, v89[v85[145]])
												end) then
													return false, "Could not write the files"
												end

												return true, str8
											end

											local v89, v90 = media.Fetch(arg)
											if not v89 then
												return false, v90
											end
											local str7 = tostring(arg2 or ""):gsub("[%\\/:%*%?\"<>|]", ""):gsub("^%s+", ""):gsub("%s+$", ""):gsub("%.%w+$", "")

											if str7 == "" then
												str7 = "media_" .. tostring(os.time())
											end

											local flag18 = #v89 == 1

											if flag18 then
												flag18 = (v90.count or 1) <= 1
											end

											if flag18 then
												local str8 = str7 .. "." .. ((v90.ext == "png" or v90.ext == "jpg") and v90.ext or "jpg")

												if not pcall(function()
													fn31()
													fn39(str7)
													local str9 = "/" .. str8
													writefile(fn29() .. str9, v89[1])
												end) then
													return false, v85[91]
												end

												return true, str8
											end

											local tbl20 = { str7 .. "." .. v90.ext }

											for i = v85[9], #v89 do
												tbl20[i] = str7 .. ".p" .. i .. "." .. v90.ext
											end

											if not pcall(function()
												fn31()
												fn39(str7)

												for i, v91 in ipairs(v89) do
													local str8 = "/" .. tbl20[i]
													writefile(fn29() .. str8, v91)
												end

												local str8 = "/" .. tbl20[v85[145]] .. ".json"

												writefile(fn29() .. str8, tbl18.Services.Http:JSONEncode({
													cols = v90.cols,
													cellW = v90.cellW,
													cellH = v90.cellH,
													count = v90.count,
													counts = v90.counts,
													delayMs = v90.delayMs,
													pages = tbl20,
													ext = v90.ext,
												}))
											end) then
												return false, "Could not write the files"
											end

											return true, tbl20[1]
										end
									end
								end

								do
									media.List = function()
										local tbl19 = { "None" }
										if not fn30() or not isfolder(fn29()) then
											return tbl19
										end
										local ok, result = pcall(listfiles, fn29())
										if not ok or type(result) ~= "table" then
											return tbl19
										end

										for _, v87 in ipairs(result) do
											local match = v87:match("([^/\\]+)$")

											if match and not match:lower():match("%.p%d+%.%w+$") and not match:lower():match("%.json$") and match ~= ".cache" then
												local match2 = match:match("%.(%w+)$")

												if match2 then
													local v88 = string.lower(match2)

													if v88 == "png" or v88 == "jpg" or v88 == v85[140] or v88 == "webp" or v88 == "bmp" or v88 == "gif" or v88 == v85[90] or v88 == "webm" or v88 == "mov" then
														table.insert(tbl19, match)
													end
												end
											end
										end

										return tbl19
									end

									media.Delete = function(arg)
										if type(arg) ~= "string" or arg == "" or arg == "None" then
											return v85[33], "Select a media file first"
										end

										if typeof(delfile) ~= "function" then
											return false, "Executor does not support delfile"
										end

										if arg:find("rbxassetid://") or arg:find(v85[51]) then
											return v85[33], "Cannot delete remote/asset backgrounds"
										end
										local str7 = fn29() .. "/" .. arg

										local ok, result = pcall(function()
											if typeof(isfile) == "function" and not isfile(str7) then
												error("File not found")
											end

											delfile(str7)
											pcall(delfile, str7 .. v85[38])
											local str8 = str7:gsub("%.png$", ""):gsub("%.jpe?g$", ""):gsub("%.webm$", ""):gsub("%.mp4$", ""):gsub("%.gif$", "")

											if str8 ~= str7 then
												for _, v87 in ipairs({ "png", v85[79], "jpeg" }) do
													local n = 2

													while typeof(isfile) == "function" and isfile(str8 .. v85[108] .. n .. "." .. v87) do
														pcall(delfile, str8 .. v85[108] .. n .. "." .. v87)
														n += 1
													end
												end
											end
										end)

										if not ok then
											return false, tostring(result)
										end
										return true, arg
									end

									do
										local function fn37(arg)
											local v87 = arg or zenthra.Windows[1]
											if not v87 then
												return nil
											end
											return v87.BgCanvas, v87.Wallpaper, v87.BgVideo
										end

										media.Stop = function(arg)
											media.Seq = media.Seq + 1
											media.Active = v85[33]
											local v87, v88, v89 = fn37(arg)

											if v89 then
												pcall(function()
													v89:Pause()
												end)

												v89.Visible = false

												pcall(function()
													v89.Video = ""
												end)
											end

											if v88 then
												v88.Image = ""
												v88.ImageTransparency = 1
												v88.ImageRectOffset = Vector2.zero
												v88.ImageRectSize = Vector2.zero
												local preload = v88:FindFirstChild("Preload")

												if preload then
													preload:Destroy()
												end
											end

											if v87 then
												v87.Visible = false
											end
										end

										media.SetOpacity = function(arg, arg2)
											media.Opacity = math.clamp(tonumber(arg) or 0.5, 0, v85[145])
											local v87, v88, v89 = fn37(arg2)
											if not v87 then
												return
											end

											if v88 and v88.Image ~= "" then
												v88.ImageTransparency = 1 - media.Opacity
											end

											v87.GroupTransparency = v89 and v89.Visible and 1 - media.Opacity or 0

											if media.Active then
												v87.Visible = media.Opacity > 0.004
											end
										end

										media.ShowStatic = function(image, arg)
											media.Stop(arg)
											local v87, v88 = fn37(arg)
											if not v87 or not v88 or type(image) ~= "string" or image == "" then
												return
											end
											v87.Visible = true
											v88.Visible = v85[129]
											v88.ImageRectOffset = Vector2.zero
											v88.ImageRectSize = Vector2.zero
											v88.Image = image
											v88.ScaleType = Enum.ScaleType.Stretch
											media.Active = true
											media.SetOpacity(media.Opacity, arg)
										end

										media.PlayPages = function(arg, arg2, arg3)
											media.Stop(arg3)
											media.Seq = media.Seq + 1
											local seq = media.Seq
											local v87, v88 = fn37(arg3)
											local flag18 = not v87 or not v88 or not arg2
											local flag19

											if flag18 then
												flag19 = flag18
											else
												flag19 = (arg2.count or 0) < 1
											end

											if flag19 then
												return
											end
											local cellW = arg2.cellW
											local cellH = arg2.cellH
											local cols = arg2.cols
											local v89 = table.create(arg2.count)
											local n = 0

											for i, v90 in ipairs(arg) do
												local counts = arg2.counts and arg2.counts[i] or arg2.count

												for i2 = 0, counts - 1 do
													n += 1
													local tbl19 = {}
													local n33 = math.floor(i2 / cols) * cellH
													tbl19[1] = v90
													tbl19[2] = i2 % cols * cellW
													tbl19[3] = n33
													v89[n] = tbl19
													if not (arg2.count <= n) then
														continue
													end
													break
												end

												if not (arg2.count <= n) then
													continue
												end
												break
											end

											if n == 0 then
												return
											end
											local instance = Instance.new(v85[105])
											instance.Name = v85[74]
											instance.Parent = v88
											local tbl19 = {}

											for _, v90 in ipairs(arg) do
												local imageLabel = Instance.new("ImageLabel")
												imageLabel.Size = UDim2.fromOffset(1, 1)
												imageLabel.BackgroundTransparency = 1
												imageLabel.ImageTransparency = v85[20]
												imageLabel.Image = v90
												imageLabel.Parent = instance
												tbl19[v90] = imageLabel
											end

											v87.Visible = v85[129]
											v88.Visible = v85[129]
											v88.Image = v89[v85[145]][1]
											v88.ImageRectSize = Vector2.new(cellW, cellH)
											v88.ImageRectOffset = Vector2.new(v89[1][2], v89[v85[145]][3])
											v88.ScaleType = Enum.ScaleType.Stretch
											media.Active = v85[129]
											media.SetOpacity(media.Opacity, arg3)
											if n == 1 then
												return
											end
											local n33 = math.max(0.016666666666666666, (tonumber(arg2.delayMs) or 100) / 1000)

											task.spawn(function()
												local n34 = os.clock() + 2

												while true do
													if seq == media.Seq and v88.Parent and os.clock() < n34 then
														local flag20 = true

														for _, v90 in pairs(tbl19) do
															if not v90.IsLoaded then
																flag20 = false
																break
															end
														end

														if not flag20 then
															task.wait(0.05)
															continue
														end
													end

													break
												end

												if seq ~= media.Seq then
													return
												end
												local n35 = os.clock() + 3
												local v90 = v89[1][1]
												local n36 = 1

												while true do
													if seq == media.Seq and v88.Parent then
														task.wait(n33)

														if seq == media.Seq then
															local n37 = n36 % n + 1
															local v91 = v89[n37]
															local v92 = tbl19[v91[1]]

															if not (v91[v85[145]] ~= v90 and v92 and not v92.IsLoaded and os.clock() < n35) then
																if v91[1] ~= v90 then
																	v90 = v91[1]
																	v88.Image = v90
																end

																v88.ImageRectOffset = Vector2.new(v91[2], v91[3])
																n36 = n37
															end

															continue
														end
													end

													break
												end
											end)
										end
									end
								end

								media.Apply = function(arg, arg2)
									media.Seq = media.Seq + 1

									if type(arg) == "table" then
										arg = arg[v85[145]]
									end

									if type(arg) ~= "string" or arg == "" or arg == "None" then
										media.Stop(arg2)
										return
									end

									if arg:find("rbxassetid://") then
										media.ShowStatic(arg, arg2)
										return
									end
									local str7 = fn29() .. "/" .. arg .. ".json"

									if typeof(isfile) == "function" and isfile(str7) then
										local ok, result = pcall(function()
											return tbl18.Services.Http:JSONDecode(readfile(str7))
										end)

										ok = ok and type(result) == "table" and result.count
										local flag18

										if ok then
											local v87 = v85[71]
											flag18 = type(result.pages) == v87
										else
											flag18 = ok
										end

										if flag18 then
											local tbl19 = {}

											for i, page in ipairs(result.pages) do
												local v87 = fn34(page)
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

									local v87 = fn34(arg)
									if not v87 or v87 == "" then
										media.Stop(arg2)
										return
									end
									media.ShowStatic(v87, arg2)
								end

								zenthra.Media = media
								tbl18.Media = media

								tbl18.Window.Open = function(arg)
									local tbl19 = arg or {}

									if tbl19.ConfigFolder ~= v85[33] then
										tbl18.Config.Setup(tbl19.ConfigFolder or "Zenthra", tbl19.ConfigName or v85[31])
										tbl18.State.Saved = tbl18.Config.Load()

										if type(tbl18.State.Saved) == "table" then
											for k, v87 in pairs(tbl18.State.Saved) do
												zenthra.Flags[k] = v87
											end
										end

										if type(tbl18.State.Saved.zenthra_notify_position) == "string" then
											tbl18.Notify.SetPosition(tbl18.State.Saved.zenthra_notify_position)
										end
									end

									local tbl20 = { Tabs = {}, ActiveTab = nil, Open = true, ToggleKey = tbl19.ToggleKey or Enum.KeyCode.RightShift }

									if tbl19.Accent then
										zenthra:SetAccent(tbl19.Accent)
									end

									if tbl19.Theme then
										zenthra:SetTheme(tbl19.Theme)
									end

									local v87 = tbl18.Env.Adopt(tbl18.Util.New("ScreenGui", {
										Name = tbl18.Env.RandomName(),
										ResetOnSpawn = false,
										IgnoreGuiInset = true,
										AutoLocalize = false,
										DisplayOrder = tbl18.Env.GuiDisplayOrder,
										ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
										Parent = tbl18.Env.PlayerGuiParent(),
									}))

									pcall(function()
										v87.Modal = false
									end)

									tbl18.Env.PromoteGui(v87, tbl18.Env.GuiDisplayOrder)

									pcall(function()
										v87:GetPropertyChangedSignal("DisplayOrder"):Connect(function()
											if v87.DisplayOrder < tbl18.Env.GuiDisplayOrder then
												v87.DisplayOrder = tbl18.Env.GuiDisplayOrder
											end
										end)
									end)

									tbl20.Screen = v87

									local Frame = tbl18.Util.New("Frame", {
										Name = "Layer",
										AnchorPoint = Vector2.new(0.5, 0.5),
										Position = UDim2.fromScale(v85[121], 0.5),
										Size = UDim2.fromScale(1, v85[145]),
										BackgroundTransparency = v85[145],
										Active = v85[33],
										Parent = v87,
									})

									local UIScale2 = tbl18.Util.New("UIScale", { Scale = 1, Parent = Frame })
									tbl20.Scale = UIScale2

									local function fn37()
										local viewportSize = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(v85[10], 720)
										local mobile = tbl18.Env.Mobile and v85[62] or v85[154]
										UIScale2.Scale = math.clamp(math.min(viewportSize.X / (tbl18.Layout.Width + mobile), viewportSize.Y / (tbl18.Layout.Height + mobile)), 0.4, v85[145])
										UIScale.Scale = UIScale2.Scale
									end

									fn37()

									if workspace.CurrentCamera then
										tbl18.Util.Connect(workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"), fn37)
									end

									local Frame2 = tbl18.Util.New("Frame", {
										Name = v85[115],
										AnchorPoint = Vector2.new(0.5, v85[121]),
										Position = UDim2.fromScale(v85[121], v85[121]),
										Size = UDim2.fromOffset(tbl18.Layout.Width, tbl18.Layout.Height),
										BackgroundTransparency = v85[145],
										Visible = false,
										Parent = Frame,
									}, { tbl18.Util.New("UIScale", { Scale = v85[155] }) })

									tbl20.Holder = Frame2
									tbl20.RootScale = Frame2:FindFirstChildOfClass("UIScale")

									local v88 = tbl18.Util.New(v85[124], {
										Name = "Shadow",
										AnchorPoint = Vector2.new(0.5, v85[121]),
										Position = UDim2.fromScale(0.5, 0.5),
										Size = UDim2.new(1, 97, 1, v85[126]),
										BackgroundTransparency = 1,
										Image = "rbxassetid://17290899982",
										ImageColor3 = Color3.new(0, 0, 0),
										ImageTransparency = 1,
										Parent = Frame2,
									})

									local stroke = tbl18.Util.Stroke

									local v89 = tbl18.Util.New(v85[64], {
										Name = "Root",
										Size = UDim2.fromScale(1, 1),
										BackgroundTransparency = 0,
										BorderSizePixel = 0,
										GroupTransparency = 1,
										Parent = Frame2,
									}, { tbl18.Util.Corner(13), stroke("Border", 1.2, 0.35) })

									tbl18.Theme.Bind(v89, "BackgroundColor3", "Background")
									tbl20.Root = v89

									local v90 = tbl18.Util.New(v85[64], {
										Name = v85[97],
										Size = UDim2.fromScale(v85[145], 1),
										BackgroundTransparency = 1,
										BorderSizePixel = v85[4],
										GroupTransparency = v85[4],
										Visible = false,
										ZIndex = v85[4],
										Parent = v89,
									}, { tbl18.Util.Corner(13) })

									tbl20.BgCanvas = v90

									tbl20.BgVideo = tbl18.Util.New("VideoFrame", {
										Name = "Video",
										Size = UDim2.fromScale(1, v85[145]),
										BackgroundTransparency = 1,
										BorderSizePixel = v85[4],
										Visible = false,
										Looped = v85[129],
										Volume = v85[4],
										ZIndex = 1,
										Parent = v90,
									})

									tbl20.Wallpaper = tbl18.Util.New(v85[124], {
										Name = "Image",
										Size = UDim2.fromScale(1, v85[145]),
										BackgroundTransparency = 1,
										BorderSizePixel = 0,
										Image = "",
										ImageTransparency = 1,
										ScaleType = Enum.ScaleType.Stretch,
										Visible = true,
										ZIndex = v85[9],
										Parent = v90,
									})

									tbl18.Theme.Bind(tbl18.Util.New("Frame", {
										Name = v85[184],
										Size = UDim2.new(1, 0, 0, 74),
										BackgroundTransparency = v85[155],
										BorderSizePixel = v85[4],
										ZIndex = 3,
										Parent = v89,
									}, { tbl18.Util.Gradient(nil, tbl18.Util.Fade(v85[4], 0.45, 1, 1), 90) }), "BackgroundColor3", "Accent")

									local Frame3 = tbl18.Util.New("Frame", {
										Name = "Topbar",
										Size = UDim2.new(1, 0, 0, tbl18.Layout.TopbarH),
										BackgroundTransparency = 1,
										Active = true,
										ZIndex = 4,
										Parent = v89,
									})

									local v91 = tbl18.Util.New(v85[169], {
										Position = UDim2.new(0, 18, 0.5, v85[4]),
										AnchorPoint = Vector2.new(0, 0.5),
										Size = UDim2.fromOffset(0, v85[127]),
										AutomaticSize = Enum.AutomaticSize.X,
										BackgroundTransparency = 1,
										Parent = Frame3,
									}, {
										tbl18.Util.New("UIListLayout", {
											Padding = UDim.new(0, 7),
											FillDirection = Enum.FillDirection.Horizontal,
											VerticalAlignment = Enum.VerticalAlignment.Center,
											SortOrder = Enum.SortOrder.LayoutOrder,
										}),
									})

									local v92 = tbl18.Util.Label({
										Text = tbl19.Title or "Zenthra",
										TextSize = v85[146],
										Weight = tbl18.Layout.Weight.Bold,
										AutomaticSize = Enum.AutomaticSize.X,
										Size = UDim2.fromOffset(0, 16),
										LayoutOrder = 1,
										Parent = v91,
									})

									local v93 = nil

									if tbl19.Subtitle then
										v93 = tbl18.Util.Label({
											Text = tbl19.Subtitle,
											TextSize = 11,
											ColorKey = v85[67],
											AutomaticSize = Enum.AutomaticSize.X,
											Size = UDim2.fromOffset(0, 14),
											LayoutOrder = 2,
											Parent = v91,
										})
									end

									local function fn38(arg2, arg3, arg4)
										local v94 = tbl18.Util.New(v85[53], {
											Text = "",
											AutoButtonColor = false,
											AnchorPoint = Vector2.new(v85[145], 0.5),
											Position = UDim2.new(1, -arg2, 0.5, 0),
											Size = UDim2.fromOffset(v85[8], 26),
											BackgroundTransparency = 1,
											BorderSizePixel = 0,
											Parent = Frame3,
										}, { tbl18.Util.Corner(v85[48]) })

										tbl18.Theme.Bind(v94, v85[125], "SurfaceAlt")

										local v95 = tbl18.Util.Image({
											Image = arg3,
											Size = UDim2.fromOffset(13, 13),
											AnchorPoint = Vector2.new(0.5, 0.5),
											Position = UDim2.fromScale(0.5, 0.5),
											ImageTransparency = 0.25,
											ColorKey = "SubText",
											Parent = v94,
										})

										tbl18.Util.Hover(v94, function()
											tbl18.Util.Tween(v94, { BackgroundTransparency = 0.25 }, 0.16)
											tbl18.Util.Tween(v95, { ImageColor3 = palette[arg4 or "Text"], ImageTransparency = 0 }, v85[194])
										end, function()
											tbl18.Util.Tween(v94, { BackgroundTransparency = 1 }, v85[76])
											tbl18.Util.Tween(v95, { ImageColor3 = palette.SubText, ImageTransparency = 0.25 }, v85[76])
										end)

										return v94
									end

									local v94 = fn38(14, v85[117])
									local stroke2 = tbl18.Util.Stroke
									local v95 = v85[93]

									local Frame4 = tbl18.Util.New("Frame", {
										AnchorPoint = Vector2.new(v85[145], 0.5),
										Position = UDim2.new(1, -48, 0.5, 0),
										Size = UDim2.fromOffset(150, 27),
										BackgroundTransparency = 0.45,
										BorderSizePixel = v85[4],
										ClipsDescendants = true,
										Parent = Frame3,
									}, { tbl18.Util.Corner(7), stroke2("BorderSoft", 1, v95) })

									tbl18.Theme.Bind(Frame4, "BackgroundColor3", v85[177])

									tbl18.Util.Image({
										Image = "search",
										Size = UDim2.fromOffset(12, 12),
										AnchorPoint = Vector2.new(0, 0.5),
										Position = UDim2.new(0, 9, 0.5, 0),
										ImageTransparency = 0.2,
										ColorKey = v85[67],
										Parent = Frame4,
									})

									local TextBox = tbl18.Util.New("TextBox", {
										Text = "",
										PlaceholderText = "Search",
										ClearTextOnFocus = false,
										BackgroundTransparency = 1,
										ClipsDescendants = true,
										TextWrapped = false,
										TextTruncate = Enum.TextTruncate.AtEnd,
										FontFace = tbl18.Util.Font(tbl18.Layout.Weight.Medium),
										TextSize = v85[192],
										TextXAlignment = Enum.TextXAlignment.Left,
										Position = UDim2.new(0, 27, 0, 0),
										Size = UDim2.new(1, -v85[87], 1, 0),
										Parent = Frame4,
									})

									tbl18.Theme.Bind(TextBox, v85[89], v85[7])
									tbl18.Theme.Bind(TextBox, v85[96], "Muted")

									tbl18.Theme.Bind(tbl18.Util.New("Frame", {
										Position = UDim2.new(0, v85[4], v85[4], tbl18.Layout.TopbarH),
										Size = UDim2.new(v85[145], 0, 0, v85[145]),
										BackgroundTransparency = 0.55,
										BorderSizePixel = v85[4],
										ZIndex = v85[100],
										Parent = v89,
									}), "BackgroundColor3", "Border")

									local Frame5 = tbl18.Util.New("Frame", {
										Name = "Sidebar",
										Position = UDim2.new(0, 0, 0, tbl18.Layout.TopbarH + 1),
										Size = UDim2.new(v85[4], tbl18.Layout.SidebarW, v85[145], -(tbl18.Layout.TopbarH + 1)),
										BackgroundTransparency = 0.35,
										BorderSizePixel = v85[4],
										ZIndex = 4,
										Parent = v89,
									}, { tbl18.Util.Gradient(nil, tbl18.Util.Fade(0.1, 0.4, v85[147]), 90) })

									tbl18.Theme.Bind(Frame5, v85[125], "Surface")
									tbl20.Sidebar = Frame5

									tbl18.Theme.Bind(tbl18.Util.New("Frame", {
										AnchorPoint = Vector2.new(v85[145], 0),
										Position = UDim2.new(1, v85[4], 0, 0),
										Size = UDim2.new(0, 1, 1, 0),
										BackgroundTransparency = 0.55,
										BorderSizePixel = 0,
										Parent = Frame5,
									}), "BackgroundColor3", "Border")

									local v96 = tbl18.Util.New(v85[106], {
										Position = UDim2.new(0, 12, 0, v85[58]),
										Size = UDim2.new(1, -24, v85[145], -24),
										BackgroundTransparency = 1,
										BorderSizePixel = v85[4],
										ScrollBarThickness = 0,
										AutomaticCanvasSize = Enum.AutomaticSize.Y,
										CanvasSize = UDim2.new(),
										ScrollingDirection = Enum.ScrollingDirection.Y,
										Parent = Frame5,
									})

									local new = tbl18.Util.New
									local v97 = v85[169]

									local tbl21 = {
										Name = "Indicator",
										Size = UDim2.new(v85[145], -(tbl18.Layout.TabPad * v85[9]), 0, tbl18.Layout.TabH),
										BackgroundTransparency = v85[14],
										BorderSizePixel = 0,
										Visible = false,
										ZIndex = 1,
										Parent = v96,
									}

									local tbl22 = {}
									local v98 = tbl18.Util.Corner(7)
									local gradient = tbl18.Util.Gradient
									local v99 = tbl18.Util.Fade(v85[189], 0.55, 1)
									tbl22[1] = v98

									do
										local values = table.pack(gradient(nil, v99, 0))
										table.move(values, 1, values.n, 2, tbl22)
									end

									local v100 = new(v97, tbl21, tbl22)
									tbl18.Theme.Bind(v100, "BackgroundColor3", "Accent")
									tbl20.Indicator = v100
									tbl20.TabIndicatorTween = nil

									tbl18.Theme.Bind(tbl18.Util.New("Frame", {
										AnchorPoint = Vector2.new(0, 0.5),
										Position = UDim2.new(0, v85[4], 0.5, 0),
										Size = UDim2.fromOffset(v85[9], v85[47]),
										BorderSizePixel = 0,
										Parent = v100,
									}, { tbl18.Util.Corner(2) }), "BackgroundColor3", "Accent")

									local padding = tbl18.Util.Padding
									local tabPad = tbl18.Layout.TabPad
									local v101 = v85[4]
									local tabPad2 = tbl18.Layout.TabPad
									local tabPad3 = tbl18.Layout.TabPad

									tbl20.TabHolder = tbl18.Util.New("Frame", {
										Size = UDim2.new(1, v85[4], 0, 0),
										AutomaticSize = Enum.AutomaticSize.Y,
										BackgroundTransparency = 1,
										ZIndex = v85[9],
										Parent = v96,
									}, { tbl18.Util.List(tbl18.Layout.TabGap), padding(tabPad, v101, tabPad2, tabPad3) })

									tbl20.TabScroll = v96

									local Frame6 = tbl18.Util.New("Frame", {
										Name = "Content",
										Position = UDim2.new(v85[4], tbl18.Layout.SidebarW + 1, 0, tbl18.Layout.TopbarH + 1),
										Size = UDim2.new(1, -(tbl18.Layout.SidebarW + 1), v85[145], -(tbl18.Layout.TopbarH + 1)),
										BackgroundTransparency = 1,
										ZIndex = v85[100],
										Parent = v89,
									})

									tbl20.Content = Frame6
									local flag18 = false
									local position = nil
									local position2 = nil
									local flag19 = false

									tbl18.Util.Connect(Frame3.InputBegan, function(arg2)
										if tbl18.Window.BlockDrag then
											return
										end

										if arg2.UserInputType ~= Enum.UserInputType.MouseButton1 and arg2.UserInputType ~= Enum.UserInputType.Touch then
											return
										end
										flag18 = true
										flag19 = v85[33]
										position = arg2.Position
										position2 = Frame2.Position
									end)

									tbl18.Util.Connect(tbl18.Services.UserInput.InputChanged, function(arg2)
										if not flag18 then
											return
										end

										if arg2.UserInputType ~= Enum.UserInputType.MouseMovement and arg2.UserInputType ~= Enum.UserInputType.Touch then
											return
										end
										local n = arg2.Position - position

										if n.Magnitude > 4 then
											flag19 = true
										end

										Frame2.Position = UDim2.new(position2.X.Scale, position2.X.Offset + n.X / UIScale2.Scale, position2.Y.Scale, position2.Y.Offset + n.Y / UIScale2.Scale)
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

									local v102, v103, v104, v105 = tbl18.Page.Create(Frame6)
									tbl20.SearchBox = TextBox

									local v106 = tbl18.Util.Label({
										Text = "No modules found",
										TextSize = 12,
										ColorKey = "Muted",
										TextXAlignment = Enum.TextXAlignment.Center,
										Position = UDim2.fromScale(0, 0.32),
										Size = UDim2.new(v85[145], v85[4], 0, 16),
										Visible = false,
										Parent = v102,
									})

									local flag20 = false

									tbl18.Util.Connect(TextBox:GetPropertyChangedSignal("Text"), function()
										local str7 = TextBox.Text:lower():gsub("^%s+", ""):gsub("%s+$", "")
										local flag21 = str7 ~= ""
										local v107 = v85[4]

										for _, tab in ipairs(tbl20.Tabs) do
											for _, module in ipairs(tab.Modules) do
												local flag22 = flag21 and module.Keyword:find(str7, 1, v85[129]) ~= nil
												local column = module.Column

												if flag22 then
													v107 += 1
													module.Frame.LayoutOrder = v107
													column = v107 % 2 == 1 and v104 or v105
												else
													module.Frame.LayoutOrder = module.LayoutOrder
												end

												if module.Frame.Parent ~= column then
													module.Frame.Parent = column
												end
											end
										end

										v106.Visible = flag21 and v107 == v85[4]
										if flag21 == flag20 then
											return
										end
										flag20 = flag21

										if flag21 then
											if tbl20.ActiveTab then
												tbl20.ActiveTab.Page.Visible = false
											end

											v102.Visible = true
											v102.GroupTransparency = 1
											tbl18.Util.Tween(v102, { GroupTransparency = 0 }, 0.22)
										else
											v102.Visible = false

											if tbl20.ActiveTab then
												tbl20.ActiveTab.Page.Visible = v85[129]
												tbl20.ActiveTab.Page.GroupTransparency = v85[4]
											end
										end
									end)

									local flag21 = false

									local function fn39()
										return zenthra.Flags.zenthra_hide_minimized == true
									end

									local function fn40()
										return zenthra.Flags.zenthra_compact_minimized == true
									end

									local function fn41()
										local scale = UIScale2.Scale
										local scale2 = tbl20.RootScale and tbl20.RootScale.Scale or 1
										local width = tbl18.Layout.Width
										return math.clamp(math.floor(v92.AbsoluteSize.X / math.max(scale * scale2, 0.01) + v85[73]), 110, width)
									end

									local function fn42()
										if not flag21 then
											return UDim2.fromOffset(tbl18.Layout.Width, tbl18.Layout.Height)
										end
										return UDim2.fromOffset(fn40() and fn41() or tbl18.Layout.Width, tbl18.Layout.TopbarH)
									end

									local function fn43()
										return UDim2.new(1, 97, 1, 111)
									end

									local function fn44()
										local v107 = flag21 and fn40()
										local visible = not v107
										Frame4.Visible = visible
										v94.Visible = visible

										if v93 then
											v93.Visible = not v107
										end

										v91.AnchorPoint = v107 and Vector2.new(0.5, 0.5) or Vector2.new(v85[4], 0.5)
										v91.Position = v107 and UDim2.fromScale(0.5, v85[121]) or UDim2.new(0, 18, 0.5, v85[4])
									end

									local connection = nil

									local function fn45()
										local localPlayer = tbl18.Services.LocalPlayer
										if localPlayer and localPlayer.CameraMode == Enum.CameraMode.LockFirstPerson then
											return true
										end
										local currentCamera = workspace.CurrentCamera
										if not currentCamera then
											return false
										end
										return (currentCamera.CFrame.Position - currentCamera.Focus.Position).Magnitude < v85[32]
									end

									local function fn46()
										if tbl20.Open == true and Frame2.Visible and not flag21 then
											if connection then
												return
											end
											connection = tbl18.Services.Run.RenderStepped:Connect(function()local t= tbl18 .Services.UserInput;local I,J,G= fn45 (),t:IsMouseButtonPressed(Enum.UserInputType.MouseButton2),t:IsKeyDown(Enum.KeyCode.LeftAlt)or(t:IsKeyDown(Enum.KeyCode.RightAlt));if I then t.MouseBehavior=G and Enum.MouseBehavior.Default or Enum.MouseBehavior.LockCenter;return;end;if J then t.MouseBehavior=Enum.MouseBehavior.LockCurrentPosition;return;end;t.MouseBehavior=Enum.MouseBehavior.Default;end)
										elseif connection then
											connection:Disconnect()
											connection = nil
										end
									end

									local function fn47(arg2)
										flag21 = arg2
										fn44()
										tbl18.Util.Tween(Frame2, { Size = fn42() }, 0.4)
										tbl18.Util.Tween(v88, { ImageTransparency = arg2 and 1 or 0.45 }, arg2 and 0.22 or 0.45)
										fn46()
									end

									tbl20.CompactPillActive = function()
										return flag21 and fn40()
									end

									tbl20.RefreshMinimized = function()
										if not flag21 then
											return
										end
										fn44()
										tbl18.Util.Tween(Frame2, { Size = fn42() }, 0.3)
									end

									tbl20.Toggle = function()
										if fn39() then
											if tbl20.Open and Frame2.Visible then
												tbl20:SetVisible(false)
											else
												flag21 = false
												tbl20:SetVisible(true)
											end

											return
										end

										if not tbl20.Open or not Frame2.Visible then
											flag21 = false
											tbl20:SetVisible(true)
											return
										end

										fn47(not flag21)
									end

									tbl18.Util.Connect(v94.MouseButton1Click, function()
										tbl20:Toggle()
									end)

									local v107 = nil
									local v108 = nil
									local v109 = nil

									tbl20.SetVisible = function(arg2, arg3)
										local open = arg3 == true
										tbl20.Open = open

										if v107 then
											v107:Cancel()
											v107 = nil
										end

										if v108 then
											v108:Cancel()
											v108 = nil
										end

										if v109 then
											v109:Cancel()
											v109 = nil
										end

										if open then
											if flag21 then
												flag21 = false
												fn44()
											end

											Frame2.Visible = true
											v88.Visible = true
											Frame2.Size = fn42()
											v88.Size = fn43()
											tbl20.RootScale.Scale = 0.78
											v89.GroupTransparency = v85[145]
											v88.ImageTransparency = v85[145]
											v109 = tbl18.Util.Tween(tbl20.RootScale, { Scale = v85[155] }, v85[35])
											v107 = tbl18.Util.Tween(v89, { GroupTransparency = 0 }, 0.28)
											v108 = tbl18.Util.Tween(v88, { ImageTransparency = v85[190] }, 0.32)
										else
											v109 = tbl18.Util.Tween(tbl20.RootScale, { Scale = 0.86 }, 0.22, tbl18.Layout.Ease, tbl18.Layout.EaseIn)
											v107 = tbl18.Util.Tween(v89, { GroupTransparency = v85[145] }, 0.2, tbl18.Layout.Ease, tbl18.Layout.EaseIn)
											v108 = tbl18.Util.Tween(v88, { ImageTransparency = 1 }, 0.2, tbl18.Layout.Ease, tbl18.Layout.EaseIn)

											task.delay(v85[103], function()
												if not tbl20.Open then
													Frame2.Visible = false
													v88.Visible = v85[33]
													tbl20.RootScale.Scale = 0.94
													fn46()
												end
											end)
										end

										fn46()
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
										table.clear(zenthra.Options)

										for i, window in ipairs(zenthra.Windows) do
											if window == tbl20 then
												table.remove(zenthra.Windows, i)
												break
											end
										end

										if getgenv then
											getgenv().__ZenthraTeardown = nil
										end

										tbl18.Util.Tween(v89, { GroupTransparency = 1 }, 0.2)
										tbl18.Util.Tween(tbl20.RootScale, { Scale = 0.9 }, 0.2)

										task.delay(0.24, function()
											v87:Destroy()
											v86:Destroy()
										end)
									end

									tbl20.Tab = function(arg2, arg3)
										return tbl18.Tab.Create(tbl20, arg3 or {})
									end

									tbl20.Notify = function(...)
										return zenthra:Notify(select(2, ...))
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
										local v110 = v85[16]

										local v111 = tbl18.Util.New(v85[53], {
											Name = "Handle",
											Text = "",
											AutoButtonColor = false,
											AnchorPoint = Vector2.new(0, 0.5),
											Position = UDim2.new(0, 16, 0.28, 0),
											Size = UDim2.fromOffset(46, 46),
											BackgroundTransparency = 0.05,
											BorderSizePixel = v85[4],
											Parent = v87,
										}, { tbl18.Util.Corner(UDim.new(v85[145], 0)), stroke3("Border", 1, v110) })

										tbl18.Theme.Bind(v111, "BackgroundColor3", v85[177])

										tbl18.Util.Image({
											Image = tbl19.Icon or v85[118],
											Size = UDim2.fromOffset(v85[98], 20),
											AnchorPoint = Vector2.new(v85[121], 0.5),
											Position = UDim2.fromScale(0.5, 0.5),
											ColorKey = "Accent",
											Parent = v111,
										})

										local flag22 = nil
										local position3 = nil
										local position4 = nil
										local flag23 = nil

										tbl18.Util.Connect(v111.InputBegan, function(arg2)
											if arg2.UserInputType ~= Enum.UserInputType.Touch then
												return
											end
											local v112 = v85[33]
											flag22 = true
											flag23 = v112
											position3 = arg2.Position
											position4 = v111.Position
										end)

										tbl18.Util.Connect(tbl18.Services.UserInput.InputChanged, function(arg2)
											if not flag22 or arg2.UserInputType ~= Enum.UserInputType.Touch then
												return
											end
											local n = arg2.Position - position3

											if n.Magnitude > 6 then
												flag23 = true
											end

											v111.Position = UDim2.new(position4.X.Scale, position4.X.Offset + n.X, position4.Y.Scale, position4.Y.Offset + n.Y)
										end)

										tbl18.Util.Connect(tbl18.Services.UserInput.InputEnded, function(arg2)
											if not flag22 or arg2.UserInputType ~= Enum.UserInputType.Touch then
												return
											end
											flag22 = false

											if not flag23 then
												tbl20:Toggle()
											end
										end)
									end

									local new2 = tbl18.Util.New

									local tbl23 = {
										Name = "KeybindList",
										AnchorPoint = Vector2.new(0, 0.5),
										Position = UDim2.new(0, -194, 0.5, 0),
										Size = UDim2.new(0, 194, v85[4], 0),
										AutomaticSize = Enum.AutomaticSize.Y,
										BackgroundTransparency = 0.02,
										GroupTransparency = 1,
										BorderSizePixel = 0,
										Visible = v85[33],
										Parent = Frame,
									}

									local tbl24 = {}
									local v110 = tbl18.Util.Corner(10)
									local Border = tbl18.Util.Stroke("Border", 1, 0.32)
									local list = tbl18.Util.List
									local v111 = tbl18.Util.Padding(10, v85[46], 12, v85[58])
									tbl24[1] = v110
									tbl24[2] = Border
									tbl24[3] = v111

									do
										local values = table.pack(list(5))
										table.move(values, 1, values.n, 4, tbl24)
									end

									local CanvasGroup = new2("CanvasGroup", tbl23, tbl24)
									tbl18.Theme.Bind(CanvasGroup, "BackgroundColor3", "Surface")

									tbl18.Util.Label({
										Text = "KEYBINDS",
										TextSize = 10,
										Weight = tbl18.Layout.Weight.Bold,
										ColorKey = "Muted",
										Size = UDim2.new(1, v85[4], 0, 12),
										LayoutOrder = 0,
										Parent = CanvasGroup,
									})

									local v112 = tbl18.Util.Label({
										Text = "Nothing bound yet",
										TextSize = 11,
										ColorKey = "Muted",
										Size = UDim2.new(v85[145], 0, 0, 16),
										LayoutOrder = 1,
										Parent = CanvasGroup,
									})

									local tbl25 = {}
									local flag22 = false

									local function fn48()
										for _, v113 in ipairs(tbl25) do
											v113:Destroy()
										end

										table.clear(tbl25)
										local v113 = v85[4]

										for _, bind in ipairs(zenthra.Binds) do
											if bind.Key then
												v113 += 1

												local Frame7 = tbl18.Util.New("Frame", {
													Size = UDim2.new(1, 0, 0, v85[127]),
													BackgroundTransparency = v85[145],
													LayoutOrder = v113 + v85[145],
													Parent = CanvasGroup,
												}, { tbl18.Util.FlexRow(6) })

												tbl18.Util.Label({
													Text = bind.Label,
													TextSize = v85[192],
													ColorKey = "SubText",
													TextTruncate = Enum.TextTruncate.AtEnd,
													Size = UDim2.new(0, 0, v85[145], 0),
													LayoutOrder = 1,
													Parent = Frame7,
												}, { tbl18.Util.Grow() })

												local new3 = tbl18.Util.New

												local tbl26 = {
													Size = UDim2.fromOffset(0, 16),
													AutomaticSize = Enum.AutomaticSize.X,
													BackgroundTransparency = 0.4,
													BorderSizePixel = 0,
													LayoutOrder = 2,
													Parent = Frame7,
												}

												local tbl27 = {}
												local v114 = tbl18.Util.Corner(5)
												local v115 = tbl18.Util.Stroke(v85[136], v85[145], 0.25)
												local padding2 = tbl18.Util.Padding
												local v116 = v85[4]
												local v117 = v85[138]
												tbl27[1] = v114
												tbl27[2] = v115

												do
													local values = table.pack(padding2(v116, 0, v117, 6))
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
													Size = UDim2.fromOffset(0, 16),
													Parent = Frame8,
												})

												table.insert(tbl25, Frame7)
											end
										end

										v112.Visible = v113 == 0
									end

									local function fn49(arg2)
										flag22 = arg2

										if arg2 then
											fn48()
											CanvasGroup.Visible = true
											tbl18.Util.Tween(CanvasGroup, { Position = UDim2.new(v85[4], 18, 0.5, 0), GroupTransparency = 0 }, v85[18])
										else
											tbl18.Util.Tween(CanvasGroup, { Position = UDim2.new(0, -194, 0.5, 0), GroupTransparency = 1 }, v85[182], tbl18.Layout.Ease, tbl18.Layout.EaseIn)

											task.delay(v85[16], function()
												if not flag22 then
													CanvasGroup.Visible = false
												end
											end)
										end
									end

									zenthra:OnBindsChanged(function()
										if flag22 then
											fn48()
										end
									end)

									local v113 = tbl18.Tab.Create(tbl20, { Title = "Gui", Icon = v85[160], Internal = true })
									tbl20.GuiTab = v113
									local v114 = v113:Module({ Title = "Interface", Description = "Window behavior", Side = "Left", Toggleable = false })

									v114:Toggle({
										Title = v85[36],
										Flag = v85[63],
										Default = false,
										Keybind = false,
										Callback = function(arg2)
											if arg2 and flag21 then
												fn47(false)
											end
										end,
									})

									v114:Toggle({ Title = "Start minimized", Flag = "zenthra_start_minimized", Default = false, Keybind = v85[33] })

									v114:Toggle({
										Title = "Compact when minimized",
										Flag = v85[116],
										Default = false,
										Keybind = false,
										Callback = function()
											tbl20:RefreshMinimized()
										end,
									})

									v114:Toggle({
										Title = "Keybind list",
										Flag = "zenthra_keybind_list",
										Default = false,
										Keybind = false,
										Callback = fn49,
									})

									local v115 = v114:Keybind({
										Title = v85[200],
										Flag = "zenthra_toggle_key",
										Default = tbl20.ToggleKey,
										Changed = function(toggleKey)
											tbl20.ToggleKey = toggleKey
										end,
									})

									if v115.Value then
										tbl20.ToggleKey = v115.Value
										if not flag3 then
											return
										end
									end

									local v116 = v113:Module({
										Title = "Notifications",
										Description = "Where toasts appear",
										Side = "Right",
										Toggleable = v85[33],
									})

									v116:Dropdown({
										Title = "Position",
										Flag = "zenthra_notify_position",
										Options = zenthra.NotifyPositions,
										Default = tbl18.Notify.GetPosition(),
										Callback = function(arg2)
											tbl18.Notify.SetPosition(arg2)
										end,
									})

									v116:Button({
										Title = "Preview",
										Callback = function()
											zenthra:Notify({ Title = "Zenthra", Text = v85[27], Type = "success" })
										end,
									})

									v116:Button({
										Title = "Preview (Content)",
										Callback = function()
											zenthra:Notify({ Title = "Zenthra", Content = "Same toast using Content instead of Text.", Type = "info" })
										end,
									})

									pcall(function()
										tbl20.ModuleTransparency = tonumber(tbl18.State.Saved.gui_module_transparency) or 0

										local function applyModuleTransparency(arg2)
											local moduleTransparency = math.clamp(tonumber(arg2) or v85[4], v85[4], v85[145])
											tbl20.ModuleTransparency = moduleTransparency
											local backgroundTransparency = v85[151] + 0.85 * moduleTransparency
											local v117 = v85[71]

											if type(tbl20.Tabs) == v117 then
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
											{ Title = v85[72], Flag = "gui_theme_accent", Key = v85[72] },
											{ Title = "Stroke", Flag = v85[86], Key = "Border" },
											{ Title = "Text", Flag = "gui_theme_text", Key = v85[7] },
											{ Title = v85[187], Flag = "gui_theme_subtext", Key = v85[3] },
										}

										local v117 = v113:Module({
											Title = "Appearance",
											Description = "Customize the menu colors",
											Side = "Right",
											Toggleable = false,
										})

										local tbl27 = {}

										for _, v118 in ipairs(tbl26) do
											tbl27[v118.Key] = v117:Colorpicker({
												Title = v118.Title,
												Flag = v118.Flag,
												Default = palette[v118.Key] or Color3.fromRGB(v85[123], 255, 255),
												Callback = function(arg2)
													pcall(tbl18.Theme.Set, { [v118.Key] = arg2 })
												end,
											})
										end

										local v118 = v117:Slider({
											Title = v85[188],
											Flag = "gui_module_transparency",
											Min = 0,
											Max = v85[145],
											Decimals = 2,
											Default = v85[4],
											Callback = applyModuleTransparency,
										})

										v117:Button({
											Title = "Restore default theme",
											Callback = function()
												pcall(tbl18.Theme.Reset)

												for _, v119 in ipairs(tbl26) do
													local v120 = tbl27[v119.Key]
													local v121 = palette[v119.Key]

													if v120 and v120.Set and v121 then
														pcall(v120.Set, v120, v121, true)
													end
												end

												if v118 and v118.Set then
													pcall(v118.Set, v118, 0)
												else
													applyModuleTransparency(v85[4])
												end
											end,
										})

										task.defer(function()
											applyModuleTransparency(zenthra.Flags.gui_module_transparency)
										end)

										local media2 = zenthra.Media

										if media2 then
											local function fn50(arg2)
												media2.Apply(arg2 or zenthra.Flags.gui_background_image, tbl20)
											end

											local v119 = v113:Module({
												Title = v85[111],
												Description = "Image, GIF or video via API",
												Side = "Left",
												Toggleable = v85[33],
											})

											local v120 = v119:Dropdown({
												Title = v85[197],
												Flag = "gui_background_image",
												Options = media2.List(),
												Default = zenthra.Flags.gui_background_image or "None",
												MaxVisible = v85[48],
												Callback = function(arg2)
													if n27(v85[2]) >= 3650 then
														if type(arg2) == "table" then
															arg2 = arg2[v85[145]]
														end

														fn50(arg2)
													else
														while v85[129] do
														end
													end
												end,
											})

											v119:Slider({
												Title = "Media Opacity",
												Flag = "gui_bg_image_opacity",
												Min = 0,
												Max = 1,
												Default = tonumber(zenthra.Flags.gui_bg_image_opacity) or 0.45,
												Decimals = 2,
												Callback = function(arg2)
													media2.SetOpacity(arg2, tbl20)
												end,
											})

											v119:Input({ Title = v85[39], Flag = "gui_bg_url", Placeholder = "https://... or rbxassetid://" })
											v119:Input({ Title = "Save as", Flag = "gui_bg_save_name", Placeholder = v85[84] })

											v119:Button({
												Title = "Download and use",
												Callback = function()
													local guiBgUrl = zenthra.Flags.gui_bg_url
													local v121 = v85[40]
													if type(guiBgUrl) ~= v121 or guiBgUrl == "" then
														zenthra:Notify({ Title = "Background", Content = "Paste a URL first", Type = "error", Duration = 3 })
														return
													end
													local guiBackgroundImage = guiBgUrl:gsub("^%s+", ""):gsub("%s+$", "")

													if guiBackgroundImage:match("^%d+$") then
														guiBackgroundImage = "rbxassetid://" .. guiBackgroundImage
													end

													if guiBackgroundImage:find("rbxassetid://", 1, v85[129]) then
														zenthra.Flags.gui_background_image = guiBackgroundImage
														pcall(zenthra.SaveConfig, zenthra)
														fn50(guiBackgroundImage)

														if v120 and v120.Set then
															pcall(v120.Set, v120, guiBackgroundImage)
														end

														zenthra:Notify({ Title = "Background", Content = "Applied", Type = "success", Duration = 2 })
														return
													end

													zenthra:Notify({ Title = "Background", Content = "Converting via API...", Type = v85[34], Duration = 4 })

													task.spawn(function()
														local v122, v123 = media2.Save(guiBackgroundImage, zenthra.Flags.gui_bg_save_name)
														if not v122 then
															zenthra:Notify({ Title = "Background", Content = tostring(v123), Type = v85[26], Duration = 5 })
															return
														end
														zenthra.Flags.gui_background_image = v123
														pcall(zenthra.SaveConfig, zenthra)
														fn50(v123)

														if v120 and v120.SetOptions then
															v120:SetOptions(media2.List())
															pcall(v120.Set, v120, v123)
														end

														zenthra:Notify({ Title = "Background", Content = "Applied: " .. tostring(v123), Type = "success", Duration = 3 })
													end)
												end,
											})

											v119:Button({
												Title = "Refresh list",
												Callback = function()
													if v120 and v120.SetOptions then
														v120:SetOptions(media2.List())
													end
												end,
											})

											local flag23 = false

											v119:Button({
												Title = "Delete Background",
												Callback = function()
													local guiBackgroundImage = zenthra.Flags.gui_background_image
													local v121 = v85[71]

													if type(guiBackgroundImage) == v121 then
														guiBackgroundImage = guiBackgroundImage[1]
													end

													if not guiBackgroundImage or guiBackgroundImage == "None" or guiBackgroundImage == "" then
														flag23 = false
														zenthra:Notify({ Title = v85[111], Content = "Select an image first", Type = v85[26], Duration = v85[128] })
														return
													end

													if not flag23 then
														flag23 = true

														zenthra:Notify({
															Title = "Background",
															Content = "Are you sure? Click again to delete '" .. tostring(guiBackgroundImage) .. "'",
															Type = "warning",
															Duration = 5,
														})

														task.delay(5, function()
															flag23 = false
														end)

														return
													end

													flag23 = false
													local v122, v123 = media2.Delete(guiBackgroundImage)

													if v122 then
														zenthra.Flags.gui_background_image = "None"
														pcall(zenthra.SaveConfig, zenthra)
														media2.Stop(tbl20)

														if v120 and v120.SetOptions then
															v120:SetOptions(media2.List())
														end

														if v120 and v120.Set then
															pcall(v120.Set, v120, "None")
														end

														zenthra:Notify({
															Title = "Background",
															Content = v85[122] .. tostring(v123),
															Type = v85[94],
															Duration = v85[128],
														})
													else
														zenthra:Notify({ Title = "Background", Content = tostring(v123), Type = "error", Duration = 4 })
													end
												end,
											})

											task.defer(function()
												media2.SetOpacity(tonumber(zenthra.Flags.gui_bg_image_opacity) or v85[190], tbl20)
												fn50()
											end)
										end
									end)

									local flag23 = tbl18.State.Saved.zenthra_start_minimized == true

									task.defer(function()
										if flag23 then
											tbl20.Open = v85[33]
											Frame2.Visible = v85[33]
											v88.Visible = v85[33]
										else
											tbl20:SetVisible(true)
										end
									end)

									table.insert(zenthra.Windows, tbl20)
									return tbl20
								end
							end

							do
								local function fn29(arg)
									return function(arg2, ...)
										if arg2 == zenthra then
											return arg(...)
										end
										return arg(arg2, ...)
									end
								end

								zenthra.Window = fn29(function(arg)
									return tbl18.Window.Open(arg)
								end)

								zenthra.Notify = fn29(function(arg, arg2)
									return tbl18.Notify.Push(arg, arg2)
								end)

								zenthra.SetTheme = fn29(function(arg)
									return tbl18.Theme.Set(arg)
								end)

								zenthra.SetAccent = fn29(function(arg)
									return tbl18.Theme.SetAccent(arg)
								end)

								zenthra.ResetTheme = fn29(function()
									return tbl18.Theme.Reset()
								end)

								zenthra.SetNotifyPosition = fn29(function(arg)
									return tbl18.Notify.SetPosition(arg)
								end)

								zenthra.GetNotifyPosition = fn29(function()
									return tbl18.Notify.GetPosition()
								end)

								zenthra.OnBindsChanged = fn29(function(arg)
									return tbl18.Binds.OnChanged(arg)
								end)

								zenthra.SaveConfig = fn29(function()
									tbl18.Config.Save()
								end)

								zenthra.GetFlag = fn29(function(arg)
									return zenthra.Flags[arg]
								end)
							end
						end

						local v86, localPlayer, currentCamera, zenthraMain, v87, entity, tbl19, tbl20, tbl21, v88
						local v89, v90, v91, v92, v93, v94, v95

						do
							do
								local v96, v97, v98, v99, v100, v101, v102, v103, v104, v105
								local v106, v107, v108, v109, v110, fn29

								do
									do
										do
											v96 = tbl18.Env.Clone(game:GetService("Players"))
											v97 = tbl18.Env.Clone(game:GetService("RunService"))
											v98 = tbl18.Env.Clone(game:GetService("UserInputService"))
											v99 = tbl18.Env.Clone(game:GetService("ReplicatedStorage"))
											tbl18.Env.Clone(game:GetService("ReplicatedFirst"))
											v86 = tbl18.Env.Clone(game:GetService(v85[171]))
											v100 = tbl18.Env.Clone(game:GetService("MarketplaceService"))
											tbl18.Env.Clone(game:GetService("TextChatService"))
											v101 = tbl18.Env.Clone(game:GetService(v85[157]))
											tbl18.Env.Clone(game:GetService("GuiService"))
											v102 = tbl18.Env.Clone(game:GetService("Teams"))
											tbl18.Env.Clone(game:GetService("CoreGui"))
											localPlayer = v96.LocalPlayer
											currentCamera = workspace.CurrentCamera

											zenthraMain = {
												Combat = {},
												ESP = {},
												Gun = {},
												Blatant = {},
												Visuals = {},
												Render = {},
												Utility = {},
												Player = {},
												Categories = {},
												Cleanups = {},
												Entity = nil,
												Game = {
													pl = nil,
													OriginScanner = nil,
													TracerHook = nil,
													Spring = nil,
													CheatFlags = nil,
												},
												Events = nil,
												Loaded = v85[129],
												gui = {
													ScaledGui = { ClickGui = { Visible = false } },
													AbsoluteSize = Vector2.new(v85[176], v85[81]),
													Host = nil,
												},
												ThreadFix = function()
												end,
											}

											v87 = zenthra:Window({
												Title = "Zenthra",
												ConfigFolder = "Zenthra Prison Life",
												ConfigName = "config_v2",
												ToggleKey = Enum.KeyCode.RightShift,
											})

											v103 = v87:Tab({ Title = "Combat", Icon = "swords" })
											v104 = v87:Tab({ Title = "ESP", Icon = "eye" })
											v105 = v87:Tab({ Title = "Gun", Icon = v85[30] })
											v106 = v87:Tab({ Title = "Blatant", Icon = v85[70] })
											v107 = v87:Tab({ Title = "Player", Icon = v85[22] })
											v108 = v87:Tab({ Title = v85[52], Icon = v85[59] })
											v109 = v87:Tab({ Title = "Render", Icon = "box" })
											v110 = v87:Tab({ Title = "Utility", Icon = v85[148] })

											fn29 = function(arg, arg2)
												return (("pl_%s_%s"):format(arg, arg2 or "main"):lower():gsub("[^%w]+", "_"):gsub("_+", "_"):gsub("^_", ""):gsub("_$", ""))
											end

											do
												local function fn30(arg, arg2, arg3)
													zenthra:Notify({ Title = tostring(arg or "Zenthra"), Text = tostring(arg2 or ""), Type = arg3 or "info" })
												end

												zenthraMain.Clean = function(arg, arg2)
													local v111 = v85[131]

													if typeof(arg2) == v111 or type(arg2) == "function" then
														table.insert(zenthraMain.Cleanups, arg2)
													end
												end

												zenthraMain.CreateNotification = function(arg, arg2, arg3)
													fn30(arg2, arg3, "info")
												end
											end
										end

										entity = {
											List = {},
											isAlive = false,
											character = nil,
											Events = {
												EntityAdded = Instance.new("BindableEvent"),
												EntityUpdated = Instance.new("BindableEvent"),
												LocalAdded = Instance.new("BindableEvent"),
												EntityRemoved = Instance.new("BindableEvent"),
											},
											_byPlayer = {},
											_started = false,
										}

										do
											local events = entity.Events

											entity.Events = {
												EntityAdded = events.EntityAdded.Event,
												EntityUpdated = events.EntityUpdated.Event,
												LocalAdded = events.LocalAdded.Event,
												EntityRemoved = events.EntityRemoved.Event,
												_raw = events,
											}
										end
									end

									do
										local fn30, fn31

										do
											do
												local function fn32(arg)
													local character = arg.Character
													if not character then
														return nil
													end
													local v111 = character:FindFirstChildOfClass(v85[21])
													local torso = character:FindFirstChild(v85[120]) or character:FindFirstChild("Torso") or character.PrimaryPart
													local head = character:FindFirstChild("Head")
													if not (v111 and torso and head) then
														return nil
													end

													return {
														Player = arg,
														Character = character,
														Humanoid = v111,
														RootPart = torso,
														HumanoidRootPart = torso,
														Head = head,
														Health = v111.Health,
														MaxHealth = v111.MaxHealth,
														NPC = false,
														Targetable = true,
														Friend = nil,
														Target = nil,
														SpawnTime = 0,
														Team = arg.Team,
													}
												end

												fn30 = function(arg)
													local v111 = entity._byPlayer[arg]
													if not v111 then
														return
													end

													for i, v112 in ipairs(entity.List) do
														if v112 == v111 or v112.Player == arg then
															table.remove(entity.List, i)
															break
														end
													end

													entity._byPlayer[arg] = nil

													if arg == localPlayer then
														entity.isAlive = v85[33]
														entity.character = nil
													end
												end

												fn31 = function(arg)
													local v111 = fn32(arg)
													local v112 = entity._byPlayer[arg]

													if v111 and v112 and v112.Character == v111.Character and v112.Humanoid == v111.Humanoid then
														v112.RootPart = v111.RootPart
														v112.HumanoidRootPart = v111.RootPart
														v112.Head = v111.Head
														v112.Health = v111.Health
														v112.MaxHealth = v111.MaxHealth
														v112.Team = v111.Team

														if arg == localPlayer then
															local v113 = entity
															local isAlive = v112.Humanoid.Health > 0

															if isAlive then
																local dead = Enum.HumanoidStateType.Dead
																isAlive = v112.Humanoid:GetState() ~= dead
															end

															v113.isAlive = isAlive
															entity.character = v112
														end

														return v112
													end

													if v112 then
														fn30(arg)
													end

													if not v111 then
														if arg == localPlayer then
															entity.isAlive = false
															entity.character = nil
														end

														return nil
													end

													entity._byPlayer[arg] = v111
													table.insert(entity.List, v111)

													if arg == localPlayer then
														local v113 = entity
														local isAlive = v111.Humanoid.Health > 0

														if isAlive then
															local dead = Enum.HumanoidStateType.Dead
															isAlive = v111.Humanoid:GetState() ~= dead
														end

														v113.isAlive = isAlive
														entity.character = v111
														entity.Events._raw.LocalAdded:Fire(v111)
													else
														entity.Events._raw.EntityAdded:Fire(v111)
													end

													entity.Events._raw.EntityUpdated:Fire(v111)
													return v111
												end
											end
										end

										do
											local function fn32(player)
												local function fn33(character)
													task.defer(function()
														for i = 1, 40 do
															if player.Character ~= character then
																return
															end

															if fn31(player) then
																return
															end
															task.wait(v85[163])
														end
													end)
												end

												if player.Character then
													fn33(player.Character)
												end

												zenthraMain:Clean(player.CharacterAdded:Connect(fn33))

												zenthraMain:Clean(player.CharacterRemoving:Connect(function()
													if n28(v85[110]) > 7320 then
														fn30(player)
													else
														while v85[129] do
														end
													end
												end))
											end

											entity.getEntity = function(arg)
												return entity._byPlayer[arg]
											end

											entity.start = function()
												if n28(2259) > 14341 then
													if entity._started then
														return
													end
													entity._started = v85[129]

													for _, player in ipairs(v96:GetPlayers()) do
														fn32(player)
													end

													zenthraMain:Clean(v96.PlayerAdded:Connect(fn32))

													zenthraMain:Clean(v96.PlayerRemoving:Connect(function(player)
														fn30(player)
													end))

													local n33 = 0
													zenthraMain:Clean(v97.Heartbeat:Connect(function(t) n33 +=t;if  n33 <0.03333333333333333 then return;end; n33 %=0.03333333333333333;local I= entity ._byPlayer[ localPlayer ];I=if(not I or not I.Character or I.Character.Parent==nil)and  localPlayer .Character then( fn31 ( localPlayer ))else I;if I and I.Humanoid and I.Humanoid.Parent then t=I.Character;if t then local J,G=t:FindFirstChild("HumanoidRootPart")or(t:FindFirstChild("Torso"))or t.PrimaryPart,t:FindFirstChild("Head");if J then I.RootPart=J;I.HumanoidRootPart=J;end;if G then I.Head=G;end;end;I.Health=I.Humanoid.Health;I.MaxHealth=I.Humanoid.MaxHealth; entity .isAlive=I.Humanoid.Health>0 and I.Humanoid:GetState()~=Enum.HumanoidStateType.Dead; entity .character=I;elseif  localPlayer .Character then  fn31 ( localPlayer );else  entity .isAlive=false; entity .character=nil;end;for J,G in ipairs( entity .List)do if G.Humanoid and G.Humanoid.Parent then J,I,t=G.Humanoid.Health,G.Humanoid.MaxHealth,G.Player and G.Player.Team;local n=J~=G.Health or I~=G.MaxHealth or t~=G.Team;G.Health=J;G.MaxHealth=I;G.Team=t;if n then  entity .Events._raw.EntityUpdated:Fire(G);end;end;end;end))
													return
												end

												while true do
												end
											end
										end
									end
								end

								do
									do
										tbl19 = {
											tagcallback = {},
											get = function()
												return v85[129], true
											end,
										}

										tbl20 = { Targets = setmetatable({}, { __mode = v85[104] }) }

										tbl21 = { AddItem = function(arg, arg2)
											return {
												Value = 0,
												Name = arg2,
												Increment = function(arg3, arg4)
													arg3.Value = arg3.Value + (arg4 or 1)
												end,
											}
										end }

										zenthraMain.Entity = entity

										if getgenv then
											getgenv().Zenthra = zenthra
											getgenv().ZenthraMain = zenthraMain
											getgenv().__PL = { Main = zenthraMain, entitylib = entity }
										end

										do
											local folder = Instance.new("Folder")
											folder.Name = "ZenthraPLHost"
											folder.Parent = v87.Screen
											zenthraMain.gui.Host = folder
										end
									end

									do
										local function fn30(arg)
											return setmetatable({ Visible = true }, { __newindex = function(arg2, arg3, arg4)
												if arg3 == "Visible" then
													rawset(arg2, arg3, arg4)

													if arg and arg.Root then
														pcall(function()
															arg.Root.Visible = arg4 and true or v85[33]
														end)
													end
												else
													rawset(arg2, arg3, arg4)
												end
											end })
										end

										local function fn31(arg)
											local v111, v112, v113 = arg:ToHSV()
											return v111, v112, v113
										end

										local function fn32(arg)
											local tbl22

											tbl22 = {
												Tab = arg,
												_side = v85[4],
												CreateModule = function(arg2, arg3)
													local name = arg3.Name or "Module"
													local flagBase = arg3.FlagBase or name
													local tbl23 = {}
													local flag18 = false
													local v111 = nil
													local tbl24 = { Name = name, Enabled = v85[33], Options = {}, Tooltip = arg3.Tooltip }

													local function fn33()
														for _, v112 in ipairs(tbl23) do
															if typeof(v112) == "RBXScriptConnection" then
																pcall(function()
																	v112:Disconnect()
																end)
															elseif type(v112) == "function" then
																pcall(v112)
															elseif typeof(v112) == "Instance" then
																pcall(function()
																	v112:Destroy()
																end)
															end
														end

														table.clear(tbl23)
													end

													table.insert(zenthraMain.Cleanups, fn33)

													local function fn34(arg4)
														local enabled = arg4 == true

														if not enabled then
															fn33()
														end

														tbl24.Enabled = enabled

														if type(arg3.Function) == "function" then
															task.defer(arg3.Function, enabled)
														end
													end

													tbl22._side = tbl22._side + v85[145]

													local v112 = arg:Module({
														Title = name,
														Description = "",
														Side = tbl22._side % 2 == 1 and "Left" or "Right",
														Flag = fn29(flagBase),
														Notify = arg3.Notify ~= false,
														Callback = function(arg4)
															local enabled = arg4 == true

															if not flag18 then
																v111 = enabled
																tbl24.Enabled = enabled
																return
															end

															fn34(enabled)
														end,
													})

													tbl24._ui = v112

													tbl24.Toggle = function(arg4, arg5)
														if not v112 or type(v112.SetEnabled) ~= "function" then
															return
														end

														if arg5 == nil then
															v112:SetEnabled(not v112.Enabled)
														else
															v112:SetEnabled(arg5 == true)
														end
													end

													tbl24.Clean = function(arg4, arg5)
														if typeof(arg5) == "RBXScriptConnection" then
															table.insert(tbl23, arg5)
														elseif type(arg5) == "function" then
															table.insert(tbl23, arg5)
														elseif typeof(arg5) == "Instance" then
															table.insert(tbl23, arg5)
														end
													end

													tbl24.CreateToggle = function(arg4, arg5)
														local tbl25 = arg5 or {}
														local v113 = fn29(flagBase, tbl25.Name)
														local tbl26 = { Enabled = tbl25.Default == true, Value = tbl25.Default == true, Object = fn30(nil) }

														if tbl25.Visible == false then
															tbl26.Object.Visible = false
														end

														local v114 = v112:Toggle({
															Title = tbl25.Name or v85[24],
															Flag = v113,
															Default = tbl25.Default == v85[129],
															Notify = tbl25.Notify ~= v85[33],
															Callback = function(arg6)
																tbl26.Enabled = arg6 == true
																tbl26.Value = tbl26.Enabled

																if type(tbl25.Function) == "function" then
																	task.spawn(tbl25.Function, tbl26.Enabled)
																end
															end,
														})

														if zenthra and zenthra.Flags and zenthra.Flags[v113] ~= nil then
															tbl26.Enabled = zenthra.Flags[v113] == true
															tbl26.Value = tbl26.Enabled
														elseif v114 and v114.Value ~= nil then
															tbl26.Enabled = v114.Value == v85[129]
															tbl26.Value = tbl26.Enabled
														end

														if type(tbl25.Function) == "function" then
															task.spawn(tbl25.Function, tbl26.Enabled)
														end

														tbl26.Object = fn30(v114)

														if tbl25.Visible == v85[33] then
															tbl26.Object.Visible = false
														end

														tbl24.Options[tbl25.Name or "Toggle"] = tbl26
														return tbl26
													end

													tbl24.CreateSlider = function(arg4, arg5)
														local tbl25 = arg5 or {}
														local flag19 = type(tbl25.Decimal) == "number" and tbl25.Decimal > v85[145]
														local n = 0

														if flag19 then
															n = math.max(0, math.floor(math.log10(tbl25.Decimal)))
														end

														local tbl26 = {}
														tbl26.Value = tonumber(tbl25.Default) or tonumber(tbl25.Min) or 0
														tbl26.Object = fn30(nil)
														local v113 = v112
														local slider = v113.Slider

														local tbl27 = {
															Title = tbl25.Name or "Slider",
															Flag = fn29(flagBase, tbl25.Name),
															Min = tonumber(tbl25.Min) or 0,
															Max = tonumber(tbl25.Max) or 100,
															Default = tbl26.Value,
															Decimals = n,
														}

														local v114 = v85[40]
														tbl27.Suffix = type(tbl25.Suffix) == v114 and tbl25.Suffix or ""

														tbl27.Callback = function(value)
															tbl26.Value = value
															local v115 = v85[143]

															if type(tbl25.Function) == v115 then
																task.spawn(tbl25.Function, value)
															end
														end

														local v115 = slider(v113, tbl27)
														tbl26.Object = fn30(v115)

														if tbl25.Visible == false then
															tbl26.Object.Visible = false
														end

														tbl24.Options[tbl25.Name or "Slider"] = tbl26
														return tbl26
													end

													tbl24.CreateDropdown = function(arg4, arg5)
														local tbl25 = arg5 or {}
														local list = tbl25.List or { "None" }
														local default = tbl25.Default

														if type(default) ~= "string" or not table.find(list, default) then
															default = list[v85[145]]
														end

														local tbl26 = { Value = default, Object = fn30(nil) }

														local v113 = v112:Dropdown({
															Title = tbl25.Name or "Dropdown",
															Flag = fn29(flagBase, tbl25.Name),
															Options = list,
															Default = default,
															Callback = function(arg6)
																local v113

																if type(arg6) == "table" then
																	v113 = arg6[1]
																else
																	v113 = arg6
																end

																tbl26.Value = v113

																if type(tbl25.Function) == "function" then
																	task.spawn(tbl25.Function, v113)
																end
															end,
														})

														tbl26.Object = fn30(v113)
														tbl24.Options[tbl25.Name or "Dropdown"] = tbl26
														return tbl26
													end

													tbl24.CreateMultiDropdown = function(arg4, arg5)
														local tbl25 = arg5 or {}
														local list = tbl25.List or {}
														local default = tbl25.Default
														local v113 = v85[40]
														local tbl26

														if type(default) == v113 then
															tbl26 = { default }
														elseif type(default) == "table" then
															tbl26 = default
														else
															tbl26 = {}
														end

														local tbl27 = {}

														for _, v114 in ipairs(tbl26) do
															if table.find(list, v114) then
																table.insert(tbl27, v114)
															end
														end

														local function fn35(arg6)
															local tbl28 = {}

															if type(arg6) == "string" then
																if arg6 ~= "" and arg6 ~= v85[141] then
																	tbl28[arg6] = true
																end
															else
																local v114 = v85[71]

																if type(arg6) == v114 then
																	if #arg6 > 0 then
																		for _, v115 in ipairs(arg6) do
																			if type(v115) == "string" then
																				tbl28[v115] = v85[129]
																			end
																		end
																	else
																		for k, v115 in pairs(arg6) do
																			v115 = v115 and type(k) == "string"

																			if v115 then
																				tbl28[k] = true
																			end
																		end
																	end
																end
															end

															local tbl29 = {}

															for _, v114 in ipairs(list) do
																if tbl28[v114] then
																	table.insert(tbl29, v114)
																end
															end

															return tbl29
														end

														local tbl28 = { Value = tbl27, Object = fn30(nil) }
														local v114 = fn29(flagBase, tbl25.Name)

														local v115 = v112:Dropdown({
															Title = tbl25.Name or v85[29],
															Flag = v114,
															Options = list,
															Default = tbl27,
															Multi = v85[129],
															MaxVisible = tbl25.MaxVisible or v85[133],
															Callback = function(arg6)
																tbl28.Value = fn35(arg6)

																if type(tbl25.Function) == "function" then
																	task.spawn(tbl25.Function, tbl28.Value)
																end
															end,
														})

														if zenthra and zenthra.Flags and zenthra.Flags[v114] ~= nil then
															tbl28.Value = fn35(zenthra.Flags[v114])
														elseif v115 and v115.Value ~= nil then
															tbl28.Value = fn35(v115.Value)
														end

														tbl28.Object = fn30(v115)

														if tbl25.Visible == false then
															tbl28.Object.Visible = false
														end

														tbl24.Options[tbl25.Name or "Dropdown"] = tbl28
														return tbl28
													end

													tbl24.CreateColorSlider = function(arg4, arg5)
														local tbl25 = arg5 or {}
														local color = Color3.fromHSV(tbl25.Hue or 0.6, tbl25.Sat or v85[145], tbl25.Value or v85[145])
														local tbl26 = { Hue = tbl25.Hue or v85[41], Sat = tbl25.Sat or 1, Value = tbl25.Value or 1, Opacity = tbl25.Opacity or 1 }
														tbl26.Object = fn30(nil)

														local v113 = v112:Colorpicker({
															Title = tbl25.Name or "Color",
															Flag = fn29(flagBase, tbl25.Name),
															Default = color,
															Callback = function(arg6)
																local v113, v114, v115 = fn31(arg6)
																local v116 = tbl26
																local v117 = tbl26
																tbl26.Hue = v113
																v116.Sat = v114
																v117.Value = v115

																if type(tbl25.Function) == "function" then
																	task.spawn(tbl25.Function, v113, v114, v115)
																end
															end,
														})

														tbl26.Object = fn30(v113)

														if tbl25.Visible == false then
															tbl26.Object.Visible = false
														end

														tbl24.Options[tbl25.Name or "Color"] = tbl26
														return tbl26
													end

													tbl24.CreateTextList = function(arg4, arg5)
														local tbl25 = arg5 or {}
														local listEnabled = {}

														if type(tbl25.Default) == "table" then
															for _, v113 in ipairs(tbl25.Default) do
																table.insert(listEnabled, v113)
															end
														end

														local tbl26 = { ListEnabled = listEnabled, Object = fn30(nil) }
														local str7 = table.concat(listEnabled, ", ")

														local v113 = v112:Input({
															Title = tbl25.Name or v85[156],
															Flag = fn29(flagBase, tbl25.Name),
															Default = str7,
															Placeholder = tbl25.Placeholder or "a, b, c",
															Callback = function(arg6)
																table.clear(listEnabled)
																local v113 = tostring
																local str8 = arg6 or ""

																for match in v113(str8):gmatch("[^,]+") do
																	local match2 = match:match("^%s*(.-)%s*$")

																	if match2 and match2 ~= "" then
																		table.insert(listEnabled, match2)
																	end
																end

																tbl26.ListEnabled = listEnabled
																local v114 = v85[143]

																if type(tbl25.Function) == v114 then
																	task.spawn(tbl25.Function, listEnabled)
																end
															end,
														})

														tbl26.Object = fn30(v113)

														if type(tbl25.Function) == "function" then
															task.defer(tbl25.Function, listEnabled)
														end

														tbl24.Options[tbl25.Name or v85[156]] = tbl26
														return tbl26
													end

													tbl24.CreateTextBox = function(arg4, arg5)
														local tbl25 = arg5 or {}
														local tbl26 = { Value = tbl25.Default or "" }
														tbl26.Object = fn30(nil)

														local v113 = v112:Input({
															Title = tbl25.Name or v85[7],
															Flag = fn29(flagBase, tbl25.Name),
															Default = tbl26.Value,
															Placeholder = tbl25.Placeholder or "",
															Callback = function(value)
																tbl26.Value = value or ""

																if type(tbl25.Function) == "function" then
																	task.spawn(tbl25.Function, tbl26.Value)
																end
															end,
														})

														tbl26.Object = fn30(v113)
														tbl24.Options[tbl25.Name or "Text"] = tbl26
														return tbl26
													end

													flag18 = v85[129]

													if v111 ~= nil then
														local v113 = v111
														v111 = nil

														if v113 then
															fn34(true)
														end
													elseif v112.Enabled then
														fn34(true)
													end

													tbl22.Modules = tbl22.Modules or {}
													tbl22.Modules[name] = tbl24
													return tbl24
												end,
											}

											return tbl22
										end

										zenthraMain.Categories.Combat = fn32(v103)
										zenthraMain.Categories.ESP = fn32(v104)
										zenthraMain.Categories.Gun = fn32(v105)
										zenthraMain.Categories.Blatant = fn32(v106)
										zenthraMain.Categories.Player = fn32(v107)
										zenthraMain.Categories.Render = fn32(v109)
										zenthraMain.Categories.Utility = fn32(v110)
										zenthraMain.Categories.Visuals = fn32(v108)
									end
								end

								zenthraMain.Categories.Main = {
									Options = {
										["Teams by server"] = { Enabled = true },
										[v85[23]] = { Enabled = true },
									},
								}

								zenthraMain.Categories.Friends = {
									ListEnabled = {},
									Options = {
										["Use friends"] = { Enabled = false },
										["Recolor visuals"] = { Enabled = false },
										[v85[80]] = { Hue = 0.3, Sat = 1, Value = v85[145] },
									},
									ColorUpdate = Instance.new("BindableEvent"),
								}

								zenthraMain.Categories.Targets = { ListEnabled = {} }
								v88 = v96
								v89 = v98
								v90 = v99
								v91 = v86
								v92 = v100
								v93 = v101
								v94 = v97
								v95 = v102
							end

							do
								local function fn29()
									local tbl22 = {}
									local v96 = v85[143]

									if type(getgenv) == v96 then
										table.insert(tbl22, getgenv())
									end

									table.insert(tbl22, getfenv())
									table.insert(tbl22, _G)

									for _, v97 in ipairs(tbl22) do
										if type(v97) == "table" then
											local drawing = v97.Drawing

											if drawing ~= nil then
												local ok, result = pcall(function()
													return drawing.new
												end)

												if ok and type(result) == "function" then
													return drawing
												end
											end
										end
									end

									return nil
								end

								local v96 = fn29()

								if v96 then
									Drawing = v96
								end
							end
						end

						local fn29, pl, spring, tracerHook, clone, v96, v97, now2, now3, v98
						local now4, tbl22, fn30, cheatFlags

						do
							local fn31, fn32, fn33

							do
								fn29 = function(arg)
									local ok, result = pcall(function()
										return Drawing.new(arg)
									end)

									if ok and result ~= nil then
										return result
									end
									return nil
								end

								zenthraMain.Events = setmetatable({}, { __index = function(arg, arg2)
									arg[arg2] = Instance.new("BindableEvent")
									return arg[arg2]
								end })

								pl = {}
								spring = {}
								tracerHook = { Hooks = {} }
								clone = nil
								zenthraMain.Game.pl = pl
								zenthraMain.Game.Spring = spring
								zenthraMain.Game.TracerHook = tracerHook
								zenthraMain.Entity = entity
								v96 = nil
								v97 = nil
								now2 = os.clock()
								now3, v98 = os.clock()
								now4 = os.clock()

								do
									local tbl23 = {}
									tbl22 = {}

									fn31 = function(arg, arg2)
										for _, v99 in workspace:GetPartBoundsInRadius(arg, 0, arg2) do
											if v99.CanCollide and (v99:GetClosestPointOnSurface(arg) - arg).Magnitude <= 0 then
												return v85[33]
											end
										end

										return true
									end

									fn32 = function(arg, arg2)
										if zenthraMain.Categories.Friends.Options["Use friends"].Enabled then
											local flag18 = table.find(zenthraMain.Categories.Friends.ListEnabled, arg.Name) and true

											if arg2 then
												flag18 = flag18 and zenthraMain.Categories.Friends.Options[v85[68]].Enabled
											end

											return flag18
										end

										return nil
									end

									fn33 = function(arg)
										return (table.find(zenthraMain.Categories.Targets.ListEnabled, arg.Name) or tbl23[arg.Name]) and true
									end
								end
							end

							fn30 = function(...)
								local createNotification = zenthraMain.CreateNotification
								local v99 = table.pack(...)
								return createNotification(zenthraMain, table.unpack(v99, 1, v99.n))
							end

							do
								local originScanner = { Cache = {}, CacheClock = v85[4] }

								zenthraMain.Game.InitOriginScanner = function()
									local raycastParams = RaycastParams.new()
									local overlapParams = OverlapParams.new()
									raycastParams.CollisionGroup = "ClientBullet"
									raycastParams.FilterType = Enum.RaycastFilterType.Exclude
									overlapParams.CollisionGroup = "ClientBullet"
									overlapParams.FilterType = Enum.RaycastFilterType.Exclude
									originScanner.Ray = raycastParams
									local tbl23 = {}
									local vector = Vector3.new(0, v85[145], 0)
									local vector2 = Vector3.new(1, 0, 0)
									local vector3 = Vector3.new(v85[147], -v85[121], -v85[121])
									local vector4 = Vector3.new(-v85[189], -v85[149], -0.8)
									local vector5 = Vector3.new(-0.8, -0.5, -v85[121])
									local vector6 = Vector3.new(-v85[145], 0, v85[4])
									local vector7 = Vector3.new(-0.8, 0.4, 0.4)
									local vector8 = Vector3.new(0, 0.7, 0.7)
									local vector9 = Vector3.new(0.7, 0.5, 0.5)
									local vector10 = Vector3.new(1, 0, 0)
									local vector11 = Vector3.new(0.7, 0, -v85[149])
									local vector12 = Vector3.new(-0.1, v85[4], -v85[145])
									local vector13 = Vector3.new(-v85[149], 0, -0.8)
									local vector14 = Vector3.new(-1, v85[4], 0)
									local vector15 = Vector3.new(-0.8, 0, 0.7)
									local vector16 = Vector3.new(0, 0, v85[145])
									local vector17 = Vector3.new(0.7, 0, v85[147])
									local vector18 = Vector3.new(1, 0, v85[4])
									local vector19 = Vector3.new(0.7, 0.4, -0.5)
									local vector20 = Vector3.new(-v85[189], 0.7, -0.8)
									local vector21 = Vector3.new(-0.8, 0.4, -0.5)
									local vector22 = Vector3.new(-v85[145], -0.1, v85[4])
									local vector23 = Vector3.new(-0.8, -0.5, v85[158])
									local vector24 = Vector3.new(0, -0.8, 0.7)
									local vector25 = Vector3.new(0.7, -0.6, 0.5)
									tbl23[1] = vector
									tbl23[2] = vector2
									tbl23[3] = vector3
									tbl23[4] = vector4
									tbl23[5] = vector5
									tbl23[6] = vector6
									tbl23[7] = vector7
									tbl23[8] = vector8
									tbl23[9] = vector9
									tbl23[10] = vector10
									tbl23[11] = vector11
									tbl23[12] = vector12
									tbl23[13] = vector13
									tbl23[14] = vector14
									tbl23[15] = vector15
									tbl23[16] = vector16
									tbl23[17] = vector17
									tbl23[18] = vector18
									tbl23[19] = vector19
									tbl23[20] = vector20
									tbl23[21] = vector21
									tbl23[22] = vector22
									tbl23[23] = vector23
									tbl23[24] = vector24
									tbl23[25] = vector25

									do
										local values = table.pack(Vector3.new(0, -1, 0))
										table.move(values, 1, values.n, 26, tbl23)
									end

									local enumItems = Enum.NormalId:GetEnumItems()
									local tbl24 = {}
									local tbl25 = {}

									originScanner.Scan = function(arg, arg2, arg3, arg4, arg5)
										local now5 = os.clock()

										if now5 - originScanner.CacheClock >= 0.033333333333333333 then
											table.clear(originScanner.Cache)
											originScanner.CacheClock = now5
										end

										table.clear(tbl24)
										table.clear(tbl25)
										local lookVector = CFrame.lookAt(arg2 * Vector3.new(1, v85[4], 1), arg3 * Vector3.new(1, 0, 1)).LookVector
										if originScanner.Cache[arg5] then
											return table.unpack(originScanner.Cache[arg5])
										end

										if arg4 then
											if (arg2 - arg4).Magnitude < 7.5 then
												table.insert(tbl24, arg4)
											else
												table.insert(tbl25, arg3)
												local v99

												for _, v100 in enumItems, nil, nil do
													if (Vector3.fromNormalId(v100) * Vector3.new(v85[145], 0, v85[145])):Dot(-lookVector) > -0.5 then
														local n = arg3 + v99 * 6

														if fn31(n, overlapParams) then
															table.insert(tbl25, n)
														end
													end
												end
											end
										end

										if #tbl24 <= v85[4] then
											for _, v99 in tbl23, nil, nil do
												if (v99 * Vector3.new(v85[145], 0, v85[145])):Dot(lookVector) > -0.5 then
													table.insert(tbl24, arg2 + v99 * 6)
												end
											end
										end

										if v85[4] < #tbl25 then
											for _, v99 in tbl25, nil, nil do
												for _, v100 in tbl24, nil, nil do
													if not workspace:Raycast(v99, v100 - v99, raycastParams) and fn31(v100, overlapParams) then
														originScanner.Cache[arg5] = { v100, v99 }
														return v100, v99
													end
												end
											end
										else
											for _, v99 in tbl24, nil, nil do
												if not workspace:Raycast(arg3, v99 - arg3, raycastParams) and fn31(v99, overlapParams) then
													originScanner.Cache[arg5] = { v99 }
													return v99
												end
											end
										end
									end

									originScanner.UpdateIgnore = function()
										local filterDescendantsInstances = { localPlayer.Character }

										for _, v99 in entity.List, nil, nil do
											table.insert(filterDescendantsInstances, v99.Character)
										end

										raycastParams.FilterDescendantsInstances = filterDescendantsInstances
										overlapParams.FilterDescendantsInstances = filterDescendantsInstances
									end
								end

								zenthraMain.Game.InitOriginScanner()
								zenthraMain.Game.OriginScanner = originScanner
								cheatFlags = { Flags = {}, Flagged = {} }

								zenthraMain.Game.InitCheatFlags = function()
									cheatFlags.Flag = function(arg, arg2, arg3, arg4)
										if cheatFlags.Flagged[arg2.UserId] then
											return
										end

										if not cheatFlags.Flags[arg2.UserId] then
											cheatFlags.Flags[arg2.UserId] = {}
										end

										local v99 = cheatFlags.Flags[arg2.UserId]
										v99[arg3] = (v99[arg3] or v85[4]) + v85[145]

										if v99[arg3] > arg4 then
											cheatFlags.Flagged[arg2.UserId] = v85[129]
											zenthraMain.Events.CheatFlagged:Fire(arg2, arg3)
										end
									end

									cheatFlags.Clear = function()
										table.clear(cheatFlags.Flags)
										table.clear(cheatFlags.Flagged)
									end
								end

								zenthraMain.Game.InitCheatFlags()
								zenthraMain.Game.CheatFlags = cheatFlags

								zenthraMain.Game.InitEntityExtras = function()
									local function fn34()
										if CombatFOV and CombatFOV.GetAimPoint then
											return CombatFOV.GetAimPoint()
										end

										if v89.TouchEnabled then
											local viewportSize = currentCamera.ViewportSize
											return Vector2.new(viewportSize.X * 0.5, viewportSize.Y * v85[121])
										end
										return v89:GetMouseLocation()
									end

									entity.getUpdateConnections = function(arg)
										local humanoid = arg.Humanoid
										local tbl23 = {}
										local signal = humanoid:GetPropertyChangedSignal("Health")
										local signal2 = humanoid:GetPropertyChangedSignal("MaxHealth")
										local attributeChangedSignal = arg.Character:GetAttributeChangedSignal("Trespassing")
										local attributeChangedSignal2 = arg.Character:GetAttributeChangedSignal("Hostile")
										local attributeChangedSignal3 = arg.Player:GetAttributeChangedSignal("InnocentKills")
										tbl23[1] = signal
										tbl23[2] = signal2
										tbl23[3] = attributeChangedSignal
										tbl23[4] = attributeChangedSignal2
										tbl23[5] = attributeChangedSignal3

										tbl23[6] = { Connect = function()
											arg.Friend = arg.Player and fn32(arg.Player) or nil
											arg.Target = arg.Player and fn33(arg.Player) or nil

											return { Disconnect = function()
											end }
										end }

										return tbl23
									end

									entity.hasForceField = function(arg)
										if not arg then
											return true
										end
										local character = arg.Player and arg.Player.Character or arg.Character
										if not character then
											return true
										end

										if character:FindFirstChildOfClass("ForceField") then
											return true
										end
										return character:FindFirstChildWhichIsA(v85[66], v85[129]) ~= nil
									end

									entity.targetCheck = function(arg)
										if arg.TeamCheck then
											return arg:TeamCheck()
										end

										if arg.NPC then
											return v85[129]
										end

										if fn32(arg.Player) then
											return false
										end

										if not select(v85[9], tbl19:get(arg.Player)) then
											return false
										end

										if zenthraMain.Categories.Main.Options[v85[1]].Enabled then
											return localPlayer.Team ~= arg.Player.Team and arg.Player.Team ~= v95.Neutral
										end
										return true
									end

									entity.isVulnerable = function(arg, arg2)
										if arg2 and localPlayer.Team == v95.Guards and arg.Player.Team == v95.Inmates and not arg.Character:GetAttribute("Hostile") then
											return v85[33]
										end
										local flag18 = arg.Health > v85[4]

										if flag18 then
											local dead = Enum.HumanoidStateType.Dead
											flag18 = arg.Humanoid:GetState() ~= dead
										end

										return flag18 and arg.SpawnTime < os.clock() and not arg.Character:FindFirstChildWhichIsA("ForceField") and (arg.Player.Team ~= v95.Inmates or arg.Character:GetAttribute("Trespassing") or arg.Character:GetAttribute("Hostile"))
									end

									entity.EntityMouse = function(arg)
										if entity.isAlive then
											local mouseOrigin = arg.MouseOrigin or fn34()
											local tbl23 = {}
											local origin = arg.Origin or entity.character.HumanoidRootPart.Position

											for _, v99 in entity.List, nil, nil do
												if not (not arg.Players and v99.Player) then
													if not (not arg.NPCs and v99.NPC) then
														if v99.Targetable then
															local v100, v101 = currentCamera:WorldToViewportPoint(v99[arg.Part].Position)

															if v101 then
																local magnitude = (mouseOrigin - Vector2.new(v100.x, v100.y)).Magnitude

																if not (arg.Range < magnitude) then
																	if entity.isVulnerable(v99, arg.AttackCheck) then
																		if arg.RangePosition then
																			if (v99[arg.Part].Position - origin).Magnitude > arg.RangePosition then
																				continue
																			end
																		end

																		table.insert(tbl23, { Entity = v99, Magnitude = v99.Target and -1 or magnitude })
																	end
																end
															end
														end
													end
												end
											end

											table.sort(tbl23, arg.Sort or function(arg2, arg3)
												return arg2.Magnitude < arg3.Magnitude
											end)

											for _, v99 in tbl23, nil, nil do
												if arg.Wallcheck then
													if entity.Wallcheck(arg.Origin, v99.Entity[arg.Part].Position, arg.Wallbang, v99.Entity[arg.Part]) then
														continue
													end
													table.clear(arg)
													table.clear(tbl23)
													return v99.Entity
												end

												table.clear(arg)
												table.clear(tbl23)
												return v99.Entity
											end

											table.clear(tbl23)
										end

										table.clear(arg)
									end

									entity.EntityPosition = function(arg)
										local v99 = nil

										if entity.isAlive then
											local origin = arg.Origin or entity.character.HumanoidRootPart.Position
											local v100 = nil
											local v101 = nil
											local v102 = nil
											v99 = nil

											for _, v103 in entity.List, v100, v101 do
												if not (not arg.Players and v103.Player) then
													if not (not arg.NPCs and v103.NPC) then
														if v103.Targetable then
															local v104 = v103[arg.Part]

															if v104 then
																local magnitude = (v104.Position - origin).Magnitude

																if not (magnitude > arg.Range) then
																	if entity.isVulnerable(v103, arg.AttackCheck) then
																		if not (arg.Wallcheck and entity.Wallcheck(origin, v104.Position, arg.Wallbang, v104)) then
																			local n = v103.Target and -v85[145] or magnitude

																			if v102 == nil or n < v102 then
																				v102 = n
																				v99 = v103
																			end
																		end
																	end
																end
															end
														end
													end
												end
											end
										end

										table.clear(arg)
										return v99
									end

									entity.AllPosition = function(arg)
										local tbl23 = {}

										if entity.isAlive then
											local origin = arg.Origin or entity.character.HumanoidRootPart.Position
											local tbl24 = {}

											for _, v99 in entity.List, nil, nil do
												if not (not arg.Players and v99.Player) then
													if not (not arg.NPCs and v99.NPC) then
														if v99.Targetable then
															local magnitude = (v99[arg.Part].Position - origin).Magnitude

															if not (arg.Range < magnitude) then
																if entity.isVulnerable(v99, arg.AttackCheck) then
																	table.insert(tbl24, { Entity = v99, Magnitude = v99.Target and -1 or magnitude })
																end
															end
														end
													end
												end
											end

											table.sort(tbl24, arg.Sort or function(arg2, arg3)
												return arg2.Magnitude < arg3.Magnitude
											end)

											for _, v99 in tbl24, nil, nil do
												local n, limit, huge

												if arg.Wallcheck then
													if entity.Wallcheck(origin, v99.Entity[arg.Part].Position, arg.Wallbang, v99.Entity[arg.Part]) then
														continue
													else
														table.insert(tbl23, v99.Entity)
														n = #tbl23
														limit = arg.Limit
														huge = limit or math.huge
														if not (n >= huge) then
															continue
														end
													end
												else
													table.insert(tbl23, v99.Entity)
													n = #tbl23
													limit = arg.Limit
													huge = limit or math.huge
													if not (n >= huge) then
														continue
													end
												end

												break
											end

											table.clear(tbl24)
										end

										table.clear(arg)
										return tbl23
									end

									entity.getEntityColor = function(arg)
										if not (arg.Player and zenthraMain.Categories.Main.Options["Use team color"].Enabled) then
											return
										end

										if fn32(arg.Player, true) then
											return Color3.fromHSV(zenthraMain.Categories.Friends.Options["Friends color"].Hue, zenthraMain.Categories.Friends.Options["Friends color"].Sat, zenthraMain.Categories.Friends.Options["Friends color"].Value)
										end
										local color = tostring(arg.Player.TeamColor) ~= "White" and arg.Player.TeamColor.Color or nil
										local flag18 = arg.Player.Team == v95.Inmates
										local attribute

										if flag18 then
											attribute = arg.Character:GetAttribute(v85[119]) or arg.Character:GetAttribute("Trespassing")
										else
											attribute = flag18
										end

										if attribute then
											return Color3.new(color.R, color.G * v85[121], color.B * v85[121])
										end
										return color
									end

									entity.Wallcheck = function(arg, arg2, arg3, arg4)
										local hit = workspace:Raycast(arg2, arg - arg2, originScanner.Ray)
										if hit then
											return not arg3 or not originScanner:Scan(arg3, arg2, hit.Position + hit.Normal * 0.01, arg4)
										end
										return false
									end
								end

								zenthraMain.Game.InitEntityExtras()
								entity.start()

								zenthraMain.Game.BindGunController = function()
									local ok, result = pcall(require, v90.SharedModules.GunTracers)
									if not ok or not result then
										warn("[Zenthra] GunTracers require failed:", result)
										return
									end
									pl = { GunTracers = result }
									zenthraMain.Game.pl = pl
									local home = localPlayer.PlayerGui:WaitForChild("Home", 10)
									local actionArea = home and home.hud and home.hud:FindFirstChild("ActionArea")
									if zenthraMain.Loaded == nil or not actionArea then
										return
									end

									local function fn34()
										for _, v99 in getconnections(actionArea.InputBegan) do
											if v99.Function then
												pl.Shoot = debug.getupvalue(v99.Function, 2)
												pl.Reload = debug.getupvalue(pl.Shoot, v85[9])
												pl.Bullet = debug.getupvalue(pl.Shoot, 16)
												pl.PlaySound = debug.getupvalue(pl.Reload, 3)
												break
											end
										end

										for _, v99 in getconnections(localPlayer.CharacterAdded) do
											if v99.Function and debug.info(v99.Function, "s"):find("GunController") then
												pl.Equip = debug.getupvalue(v99.Function, 3)
												break
											end
										end

										local v99 = getconnections
										local v100 = table.pack(localPlayer:GetAttributeChangedSignal("BackpackEnabled"))
										v100.n = 1 + v100.n - 1
										table.move(v100, 1, v100.n, 1, v100)
										local v101, v102, v103 = v99(table.unpack(v100, 1, v100.n))
										local v104 = table.pack(V_1())

										if v104[1] then
											local v105 = v104[3]
											local v106 = v85[17]
											pl.SwitchUpdate = debug.getupvalue(debug.getupvalue(v105.Function, 10), v106)
											pl.SwitchTable = debug.getupvalue(debug.getupvalue(v105.Function, 8), 2)
										end
									end

									fn34()

									if not (pl.Bullet and pl.SwitchTable) then
										local n = os.clock() + 8

										while true do
											fn34()
											task.wait()
											if not (pl.Bullet and pl.SwitchTable or zenthraMain.Loaded == nil or os.clock() > n) then
												continue
											end
											break
										end

										if zenthraMain.Loaded == nil then
											table.clear(pl)
										end
									end

									local v99 = tbl21:AddItem(v85[61])
									local Deaths = tbl21:AddItem("Deaths")
									local Arrests = tbl21:AddItem("Arrests")
									local v100 = tbl21:AddItem("Cheaters Kicked")

									tbl21:AddItem("Cheater List", "", function()
										local str7 = ""

										for _, v101 in v88:GetPlayers() do
											if cheatFlags.Flagged[v101.UserId] then
												str7 ..= "\n" .. (v101.DisplayName ~= v101.Name and v101.DisplayName .. " (" .. v101.Name .. ")" or v101.Name)
											end
										end

										return str7
									end, false)

									zenthraMain:Clean(v90.Killfeed.ChildAdded:Connect(function(child)
										local tbl23 = {}
										table.insert(tbl23, child.Name:sub(child.Name:find("@") + v85[145], child.Name:find(")") - 1))
										local n = child.Name:find("killed ") + 7
										table.insert(tbl23, child.Name:sub(n, child.Name:find(" ", n) - 1))
										zenthraMain.Events.PlayerKill:Fire(unpack(tbl23))

										if tbl23[v85[145]] == localPlayer.Name then
											v99:Increment()
										elseif tbl23[2] == localPlayer.Name then
											Deaths:Increment()
										end
									end))

									zenthraMain:Clean(zenthraMain.Events.Arrested.Event:Connect(function()
										Arrests:Increment()
									end))

									zenthraMain:Clean(v90.Remotes.MessageReceived.OnClientEvent:Connect(function(arg)
										if arg:find("kicked") then
											v100:Increment()

											task.defer(function()
												zenthraMain.Events.CheaterKicked:Fire(arg:sub(1, arg:find(" ")))
											end)
										end
									end))

									zenthraMain:Clean(entity.Events.EntityUpdated:Connect(function(arg)
										if arg.Player and arg.Player.Team == v95.Inmates then
											zenthraMain.Categories.Friends.ColorUpdate:Fire()
										end
									end))

									table.insert(tbl19.tagcallback, function(arg, arg2, text)
										if arg then
											local v101 = entity.getEntity(arg)

											if v101 then
												if cheatFlags.Flagged[arg.UserId] then
													table.insert(arg2, { text = text and "⚠️" or v85[107] })
												end

												if arg.Team == v95.Inmates then
													if v101.Character:GetAttribute(v85[119]) then
														local insert = table.insert
														local tbl23 = {}
														text = text and "💢" or "Hostile"
														tbl23.text = text
														insert(arg2, tbl23)
													elseif v101.Character:GetAttribute("Trespassing") then
														table.insert(arg2, { text = text and "🔗" or "Trespassing" })
													end
												elseif arg.Team == v95.Guards then
													local attribute = arg:GetAttribute("InnocentKills") or 0

													if attribute > 0 then
														local v102 = v85[195]

														table.insert(arg2, {
															text = tostring(attribute),
															color = Color3.fromHSV(math.clamp(1 - attribute / 2, 0, 1) / 2.5, 0.89, v102),
														})
													end
												end
											end
										end
									end)

									task.spawn(function()
										tbl22 = {
											[v85[5]] = v92:UserOwnsGamePassAsync(localPlayer.UserId, 643697197),
											Mafia = v92:UserOwnsGamePassAsync(localPlayer.UserId, 1443271),
											Sniper = v92:UserOwnsGamePassAsync(localPlayer.UserId, 699360089),
										}
									end)

									originScanner:UpdateIgnore()

									for _, v101 in { "EntityAdded", "LocalAdded" }, nil, nil do
										zenthraMain:Clean(entity.Events[v101]:Connect(function()
											originScanner:UpdateIgnore()
										end))
									end

									local obj = setmetatable({}, { __mode = "k" })

									zenthraMain.Game.UpdateAmmoHud = function(arg, arg2)
										if not arg then
											return
										end
										local shoot = pl and pl.Shoot
										if type(shoot) ~= "function" then
											return
										end

										if select(2, pcall(debug.getupvalue, shoot, 1)) ~= arg then
											return
										end
										local value = select(2, pcall(debug.getupvalue, shoot, 19))
										if not value or not value:IsA("TextLabel") then
											return
										end
										local value2 = select(2, pcall(debug.getupvalue, shoot, 10))
										local num = tonumber(arg2)

										if num == nil then
											num = tonumber(arg:GetAttribute("Local_CurrentAmmo")) or tonumber(arg:GetAttribute("CurrentAmmo")) or 0
										end

										local v101 = v85[71]

										if type(value2) == v101 and value2.Behavior == "Sniper" then
											value.Text = tostring(num) .. " | " .. tostring(arg:GetAttribute("StoredAmmo") or v85[4])
										else
											local v102 = v85[71]
											local maxAmmo = type(value2) == v102 and value2.MaxAmmo or arg:GetAttribute("MaxAmmo") or "?"
											value.Text = tostring(num) .. "/" .. tostring(maxAmmo)
										end
									end

									zenthraMain.Game.SyncGunAmmo = function(arg)
										if not arg or not arg:IsA("Tool") or arg:GetAttribute("FireRate") == nil then
											return false
										end
										local num = tonumber(arg:GetAttribute("CurrentAmmo"))
										if num == nil then
											return false
										end
										local num2 = tonumber(arg:GetAttribute("Local_CurrentAmmo"))
										if num2 ~= nil and num2 <= num then
											return false
										end
										pcall(arg.SetAttribute, arg, "Local_CurrentAmmo", num)
										zenthraMain.Game.UpdateAmmoHud(arg, num)
										return true
									end

									zenthraMain.Game.ApplyServerAmmo = function(arg)
										if not arg or not arg:IsA("Tool") then
											return v85[33]
										end
										local num = tonumber(arg:GetAttribute("CurrentAmmo"))
										if num == nil then
											return false
										end
										pcall(arg.SetAttribute, arg, "Local_CurrentAmmo", num)

										if num > 0 then
											pcall(arg.SetAttribute, arg, "Local_ReloadSession", 0)
											pcall(arg.SetAttribute, arg, "IsReloading", v85[33])
										end

										zenthraMain.Game.UpdateAmmoHud(arg, num)
										return num > 0
									end

									zenthraMain.Game.WatchGunAmmo = function(arg)
										if not arg or not arg:IsA("Tool") or arg:GetAttribute("FireRate") == nil or obj[arg] then
											return
										end
										local num = tonumber(arg:GetAttribute("CurrentAmmo"))
										pcall(zenthraMain.Game.SyncGunAmmo, arg)

										local connection = arg:GetAttributeChangedSignal("CurrentAmmo"):Connect(function()
											local num2 = tonumber(arg:GetAttribute("CurrentAmmo"))
											if num2 == nil then
												return
											end

											if num ~= nil and num2 > num then
												pcall(zenthraMain.Game.ApplyServerAmmo, arg)
											else
												pcall(zenthraMain.Game.SyncGunAmmo, arg)
											end

											num = num2
										end)

										obj[arg] = connection
										zenthraMain:Clean(connection)
									end

									zenthraMain.Game.GuardReload = function()
										local v101 = v85[71]
										if type(pl) ~= v101 or type(pl.Reload) ~= "function" or pl._reloadGuarded then
											return
										end
										local reload = pl.Reload
										local v102 = nil

										local function fn35(...)
											local value = select(2, pcall(debug.getupvalue, pl.Shoot, 1))
											local tbl23 = { v102(...) }

											if typeof(value) == "Instance" then
												pcall(zenthraMain.Game.ApplyServerAmmo, value)
											end

											return table.unpack(tbl23)
										end

										v102 = hookfunction
										v102 = v102(reload, fn35)
										pl._reloadGuarded = true

										zenthraMain:Clean(function()
											if restorefunction then
												pcall(restorefunction, reload)
											elseif type(v102) == "function" then
												pcall(hookfunction, reload, v102)
											end

											if pl then
												pl._reloadGuarded = nil
											end
										end)
									end

									zenthraMain.Game.RepairGunState = function(arg)
										local v101 = v85[71]
										if type(pl) ~= v101 or type(pl.Shoot) ~= "function" then
											return
										end
										pcall(zenthraMain.Game.GuardReload)
										local now5 = os.clock()
										local v102 = v85[33]

										pcall(function()
											v102 = v89:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) or v89:IsMouseButtonPressed(Enum.UserInputType.Touch)
										end)

										local function fn35(arg2)
											pcall(arg2.SetAttribute, arg2, "Local_IsShooting", v85[33])
											pcall(arg2.SetAttribute, arg2, "Local_ShootStamp", nil)
										end

										local function fn36(arg2)
											if not arg2 or not arg2:IsA("Tool") or arg2:GetAttribute("FireRate") == nil then
												return
											end
											pcall(zenthraMain.Game.WatchGunAmmo, arg2)
											pcall(zenthraMain.Game.SyncGunAmmo, arg2)
											if v102 then
												return
											end

											if not arg2:GetAttribute("Local_IsShooting") then
												if arg then
													fn35(arg2)
												end

												return
											end

											if arg then
												fn35(arg2)
												return
											end
											local attribute = arg2:GetAttribute("Local_ShootStamp")
											local n = tonumber(arg2:GetAttribute("FireRate")) or 0.2

											if type(attribute) ~= "number" or now5 - attribute > n + v85[195] then
												fn35(arg2)
											end
										end

										local character = localPlayer.Character
										local backpack = localPlayer:FindFirstChildWhichIsA("Backpack")

										if character then
											for _, v103 in character:GetChildren() do
												fn36(v103)
											end
										end

										if backpack then
											for _, v103 in backpack:GetChildren() do
												fn36(v103)
											end
										end

										character = character and character:FindFirstChildWhichIsA("Tool")

										if character and character:GetAttribute("FireRate") ~= nil and type(pl.Equip) == "function" then
											local flag18 = character:GetAttribute("Local_IsShooting") == true

											if not v102 and not flag18 then
												local ok2, result2 = pcall(debug.getupvalue, pl.Shoot, 1)

												if ok2 and result2 ~= character then
													pcall(pl.Equip, character)
												end
											end

											if not ((character:GetAttribute("Local_ReloadSession") or 0) > 0) and not v102 then
												local value = select(v85[9], pcall(debug.getupvalue, pl.Shoot, v85[128]))
												local hold = type(value) == "table" and value.Hold

												if hold and not hold.IsPlaying then
													pcall(function()
														hold:Play()
													end)
												end
											end
										end
									end

									local function fn35(character)
										if not character then
											return
										end

										for _, v101 in character:GetChildren() do
											if v101:IsA("Tool") and v101:GetAttribute("FireRate") ~= nil then
												pcall(zenthraMain.Game.WatchGunAmmo, v101)
											end
										end

										zenthraMain:Clean(character.ChildAdded:Connect(function(child)
											if child:IsA("Tool") and child:GetAttribute("FireRate") ~= nil then
												pcall(zenthraMain.Game.WatchGunAmmo, child)

												task.defer(function()
													pcall(zenthraMain.Game.RepairGunState)
												end)
											end
										end))
									end

									pcall(zenthraMain.Game.GuardReload)
									fn35(localPlayer.Character)
									zenthraMain:Clean(localPlayer.CharacterAdded:Connect(fn35))
									local backpack = localPlayer:FindFirstChildWhichIsA("Backpack")

									if backpack then
										for _, v101 in backpack:GetChildren() do
											if v101:IsA("Tool") and v101:GetAttribute("FireRate") ~= nil then
												pcall(zenthraMain.Game.WatchGunAmmo, v101)
											end
										end

										zenthraMain:Clean(backpack.ChildAdded:Connect(function(child)
											if child:IsA("Tool") and child:GetAttribute("FireRate") ~= nil then
												pcall(zenthraMain.Game.WatchGunAmmo, child)
											end
										end))
									end

									task.spawn(function()
										while zenthraMain.Loaded ~= nil do
											pcall(zenthraMain.Game.RepairGunState)
											task.wait(0.2)
										end
									end)

									zenthraMain:Clean(function()
										table.clear(pl)
									end)
								end
							end
						end

						do
							local v99, v100, v101, fn31

							do
								spring.__index = spring

								spring.new = function(arg)
									local tbl23 = arg or {}

									return (setmetatable({
										Target = Vector3.new(),
										Position = Vector3.new(),
										Velocity = Vector3.new(),
										Mass = tbl23.Mass or 5,
										Force = tbl23.Force or v85[134],
										Damping = tbl23.Damping or 4,
										Speed = tbl23.Speed or 4,
									}, spring))
								end

								spring.Update = function(arg, arg2)
									local n = arg2 / 0.0020833333333333333
									local n33 = arg2 * arg.Speed / n

									for i = 1, math.round(n) do
										arg.Velocity = arg.Velocity + ((arg.Target - arg.Position) * arg.Force / arg.Mass - arg.Velocity * arg.Damping) * n33
										arg.Position = arg.Position + arg.Velocity * n33
									end

									return arg.Position
								end

								v99 = nil
								v100 = nil
								v101 = nil

								do
									local function isReplicated()
										for i = v85[9], 10 do
											local v102 = debug.info(i, "s")
											if type(v102) == "string" and (v102:find("ClientReplicator", 1, true) or v102:find("Replication", 1, true)) then
												return true
											end
										end

										return v85[33]
									end

									local function isLocalShot(arg)
										if typeof(arg) ~= "Vector3" then
											return false
										end
										local character = entity.character
										local head = character and (character.Head or character.RootPart or character.HumanoidRootPart)

										if not head then
											head = localPlayer.Character

											if head then
												head = head:FindFirstChild("Head") or head:FindFirstChild("HumanoidRootPart") or head:FindFirstChild("Torso")
											end
										end

										if not head then
											return false
										end
										return (arg - head.Position).Magnitude <= v85[73]
									end

									tracerHook.IsReplicated = isReplicated
									tracerHook.IsLocalShot = isLocalShot

									fn31 = function(...)
										local v102 = table.pack(...)
										local v103 = ...
										if typeof(v103) == "Vector3" and not isLocalShot(v103) then
											return false
										end

										if isReplicated() then
											return v85[33]
										end

										for _, v104 in tracerHook.Hooks, nil, nil do
											if v104[2](table.unpack(v102, 1, v102.n)) then
												return v85[129]
											end
										end

										return false
									end
								end
							end

							do
								local function fn32(...)
									local v102 = table.pack(...)
									if fn31(...) then
										return
									end
									return v99(table.unpack(v102, 1, v102.n))
								end

								local function fn33(...)
									local v102 = table.pack(...)
									if fn31(...) then
										return
									end
									return v100(table.unpack(v102, 1, v102.n))
								end

								local function fn34(...)
									local v102 = table.pack(...)
									if fn31(...) then
										return
									end
									return v101(table.unpack(v102, 1, v102.n))
								end

								tracerHook.Add = function(arg, arg2, arg3, arg4)
									local insert = table.insert
									local hooks = arg.Hooks
									local tbl23 = {}
									arg4 = arg4 or 0
									tbl23[1] = arg2
									tbl23[2] = arg3
									tbl23[3] = arg4
									insert(hooks, tbl23)

									table.sort(arg.Hooks, function(arg5, arg6)
										return arg5[3] < arg6[3]
									end)

									if not v99 then
										v99 = hookfunction(pl.GunTracers.createBullet, function(...)
											return fn32(...)
										end)

										v100 = hookfunction(pl.GunTracers.createTaser, function(...)
											return fn33(...)
										end)

										v101 = hookfunction(pl.GunTracers.createSniper, function(...)
											return fn34(...)
										end)
									end
								end
							end

							tracerHook.Remove = function(arg, arg2)
								for k, v102 in arg.Hooks, nil, nil do
									if v102[1] == arg2 then
										table.remove(arg.Hooks, k)
										break
									end
								end

								if v99 and not next(arg.Hooks) then
									if restorefunction then
										restorefunction(pl.GunTracers.createBullet)
										restorefunction(pl.GunTracers.createTaser)
										restorefunction(pl.GunTracers.createSniper)
									else
										hookfunction(pl.GunTracers.createBullet, v99)
										hookfunction(pl.GunTracers.createTaser, v100)
										hookfunction(pl.GunTracers.createSniper, v101)
									end

									v99 = nil
									v100 = nil
									v101 = nil
								end
							end
						end

						tbl11 = {
							Enabled = false,
							Radius = 150,
							Circle = nil,
							IsMobile = function()
								if zenthra and zenthra.IsMobile then
									return true
								end
								return v89.TouchEnabled == true
							end,
							GetAimPoint = function()
								local currentCamera2 = currentCamera or workspace.CurrentCamera
								if tbl11.IsMobile() or v89.MouseBehavior == Enum.MouseBehavior.LockCenter then
									local viewportSize = currentCamera2 and currentCamera2.ViewportSize or Vector2.new(1920, 1080)
									return Vector2.new(viewportSize.X * 0.5, viewportSize.Y * 0.5)
								end
								return v89:GetMouseLocation()
							end,
						}

						zenthraMain.Game.pl = pl
						zenthraMain.Game.TracerHook = tracerHook
						zenthraMain.Game.Spring = spring
						zenthraMain.Entity = entity

						task.spawn(function()
							if getgenv then
								getgenv().__ZENTHRA_BIND_ERR = nil
							end

							local ok, result = pcall(zenthraMain.Game.BindGunController)
							zenthraMain.Game.pl = pl

							if not ok and getgenv then
								getgenv().__ZENTHRA_BIND_ERR = tostring(result)
							end
						end)

						zenthraMain.Combat.SilentAim = function()
							local v99 = nil
							local v100 = nil
							local v101 = nil
							local v102 = nil
							local v103 = nil
							local v104 = nil
							local v105 = Random.new()
							local genv = getgenv and getgenv() or _G
							local zenthraPlSa = genv.__ZENTHRA_PL_SA

							if type(zenthraPlSa) ~= "table" then
								zenthraPlSa = {}
								genv.__ZENTHRA_PL_SA = zenthraPlSa
							end

							if type(zenthraPlSa.unhook) == "function" then
								pcall(zenthraPlSa.unhook)
							end

							pcall(function()
								if type(pl.Shoot) == "function" and restorefunction then
									restorefunction(pl.Shoot)
								end
							end)

							v96 = nil
							zenthraPlSa.hookSafeShoot = nil
							zenthraPlSa.safeShootHooked = nil
							zenthraPlSa.Enabled = false
							zenthraPlSa.TargetPart = nil
							zenthraPlSa.TargetEntity = nil
							zenthraPlSa.RequireLos = true
							zenthraPlSa.Wallbang = nil
							zenthraPlSa.ASLock = false
							zenthraPlSa.Hits = zenthraPlSa.Hits or 0
							zenthraPlSa.Calls = zenthraPlSa.Calls or 0
							zenthraPlSa.Redirects = zenthraPlSa.Redirects or v85[4]
							zenthraPlSa.ForceMiss = false
							zenthraPlSa.HitChance = v85[101]

							local function fn31(arg, arg2, arg3)
								if zenthra and zenthra.Flags and zenthra.Flags[arg2] ~= nil then
									return zenthra.Flags[arg2] == true
								end

								if arg and arg.Enabled ~= nil then
									return arg.Enabled == true
								end
								return arg3 == true
							end

							local function fn32()
								return fn31(v100, "pl_silentaim_visible_check", zenthraPlSa.RequireLos)
							end

							local raycastParams = RaycastParams.new()
							raycastParams.CollisionGroup = "ClientBullet"
							raycastParams.FilterType = Enum.RaycastFilterType.Exclude
							local tbl23 = { "Head", "Torso", v85[120], "Left Arm", "Right Arm", "Left Leg", "Right Leg", "Random" }
							local tbl24 = { "Head", "Torso", "UpperTorso", "HumanoidRootPart", "Left Arm", "Right Arm" }

							local function fn33()
								if type(pl.Bullet) == "function" then
									return pl.Bullet
								end
								local home = localPlayer.PlayerGui:FindFirstChild("Home")
								local actionArea = home and home:FindFirstChild("hud") and home.hud:FindFirstChild("ActionArea")
								if not actionArea then
									return nil
								end

								for _, v106 in getconnections(actionArea.InputBegan) do
									if v106.Function then
										local ok, shoot = pcall(debug.getupvalue, v106.Function, 2)

										if ok and type(shoot) == "function" then
											pl.Shoot = shoot
											local ok2, bullet = pcall(debug.getupvalue, shoot, v85[47])
											if ok2 and type(bullet) == "function" then
												pl.Bullet = bullet
												return bullet
											end
										end
									end
								end

								return nil
							end

							local function getHitPartName()
								local value = v104 and v104.Value
								local flags = zenthra and zenthra.Flags

								if flags then
									local v106 = v85[40]
									flags = type(zenthra.Flags.pl_silentaim_hitpart) == v106
								end

								if flags then
									value = zenthra.Flags.pl_silentaim_hitpart
								end

								local hitPart = value or zenthraPlSa.HitPart or "Head"
								zenthraPlSa.HitPart = hitPart
								if hitPart == "Random" then
									return tbl23[v105:NextInteger(1, #tbl23 - 1)]
								end
								return hitPart
							end

							local function resolveHitPart(arg, arg2)
								if not arg or not arg.Character then
									return nil
								end
								arg2 = arg2 or "Head"
								if arg2 == "Torso" then
									return arg.Character:FindFirstChild("Torso") or arg.Character:FindFirstChild("UpperTorso") or arg.RootPart
								end

								if arg2 == "HumanoidRootPart" or arg2 == "RootPart" then
									return arg.RootPart or arg.Character:FindFirstChild(v85[120])
								end
								return arg.Character:FindFirstChild(arg2) or arg.Head or arg.RootPart
							end

							local function fn34()
								return tbl11.Radius or 150
							end

							local function fn35(arg, arg2, arg3)
								if not arg or not arg2 then
									return false
								end
								raycastParams.FilterDescendantsInstances = { localPlayer.Character }
								local n = arg2.Position - arg
								if n.Magnitude < 0.05 then
									return true
								end
								local hit = workspace:Raycast(arg, n, raycastParams)
								if not hit then
									return true
								end
								return hit.Instance and arg3 and hit.Instance:IsDescendantOf(arg3) or false
							end

							local function fn36()
								local character = localPlayer.Character
								return character ~= nil and character:FindFirstChild("Taser") ~= nil
							end

							local function fn37(arg)
								local team = arg.Player and arg.Player.Team
								local character = arg.Character
								if not character then
									return false
								end

								if fn36() and team == v95.Inmates then
									return true
								end

								if localPlayer.Team == v95.Criminals and team == v95.Inmates then
									local v106 = v85[129]
									return character:GetAttribute("Hostile") == v106 or character:GetAttribute("Trespassing") == true
								end

								if fn31(v101, "pl_silentaim_hostile_only", false) then
									if localPlayer.Team ~= v95.Guards then
										return true
									end

									if team == v95.Criminals then
										return true
									end

									if team == v95.Inmates then
										return character:GetAttribute("Hostile") == true
									end
								end

								return true
							end

							local v106

							local function fn38(arg)
								if not arg or not arg.Player or arg.Player == localPlayer or not arg.Character then
									return false
								end

								if not entity.targetCheck(arg) then
									return false
								end
								local humanoid = arg.Humanoid
								local flag18 = not humanoid or humanoid.Health <= v85[4]

								if not flag18 then
									local dead = Enum.HumanoidStateType.Dead
									flag18 = humanoid:GetState() == dead
								end

								if flag18 then
									return v85[33]
								end

								if entity.hasForceField(arg) then
									return v85[33]
								end

								if fn31(v106, "pl_silentaim_ignore_inmates", false) then
									if arg.Player.Team == v95.Inmates then
										return v85[33]
									end
								end

								if fn31(v102, "pl_silentaim_ignore_criminals", false) then
									if arg.Player.Team == v95.Criminals then
										return false
									end
								end

								if not fn37(arg) then
									return false
								end
								return true
							end

							local now5 = v85[4]
							local v107 = nil

							local function fn39()
								return tbl11.GetAimPoint()
							end

							local function fn40(arg)
								local v108 = resolveHitPart(arg, getHitPartName())
								if v108 and v108.Parent then
									return v108
								end
								return arg.Head or arg.RootPart or arg.Character:FindFirstChild("Torso") or arg.Character:FindFirstChild("UpperTorso")
							end

							local function fn41(arg, arg2, arg3)
								local v108 = arg3 or getHitPartName()
								local v109 = resolveHitPart(arg2, v108)
								if v109 and v109.Parent and fn35(arg, v109, arg2.Character) then
									return v109
								end

								for _, v110 in tbl24, nil, nil do
									if v110 == v108 then
										continue
									end
									local v111 = resolveHitPart(arg2, v110)
									if v111 and v111 ~= v109 and v111.Parent and fn35(arg, v111, arg2.Character) then
										return v111
									end
								end

								return nil
							end

							local function fn42()
								local shoot = v96 or pl.Shoot
								if type(shoot) ~= "function" then
									return nil
								end
								local ok, result = pcall(debug.getupvalue, shoot, v85[146])
								if ok and typeof(result) == "RaycastParams" then
									return result
								end
								return nil
							end

							local function fn43()
								local shoot = v96

								if not v96 then
									local v108 = pl

									if pl then
										shoot = pl.Shoot
									else
										shoot = v108
									end
								end

								local v108 = v85[143]

								if type(shoot) == v108 then
									local ok, result = pcall(debug.getupvalue, shoot, 10)

									if ok and type(result) == "table" then
										local num = tonumber(result.Range)
										if num and num > 0 then
											return num
										end
									end

									local ok2, result2 = pcall(debug.getupvalue, shoot, v85[145])

									if ok2 and typeof(result2) == "Instance" then
										local num = tonumber(result2:GetAttribute("Range"))
										if num and num > 0 then
											return num
										end
									end
								end

								return 1500
							end

							local function fn44(arg, arg2)
								if typeof(arg) ~= "Vector3" then
									return arg2
								end
								local unit

								if typeof(arg2) == "Vector3" and (arg2 - arg).Magnitude > 0.05 then
									unit = (arg2 - arg).Unit
								else
									local v108 = currentCamera
									unit = currentCamera

									if v108 then
										unit = v108.CFrame.LookVector
									end

									unit = unit or Vector3.new(v85[4], 1, 0)
								end

								return arg + unit * fn43()
							end

							local function fn45()
								return workspace.Terrain or workspace
							end

							local function fn46(arg, arg2, arg3, arg4)
								local result = nil
								local result2 = nil

								if type(arg) == "function" then
									local ok
									ok, result, result2 = pcall(arg, arg2, arg3, arg4)
									local v108 = nil
									local v109 = nil

									if not ok then
										result = v108
										result2 = v109
									end
								end

								local v108

								if typeof(result) == "Vector3" and typeof(result2) ~= "Vector3" then
									v108 = nil
								else
									v108 = result
									result = result2
								end

								if typeof(result) ~= "Vector3" then
									result = fn44(arg2, arg3)
								end

								if typeof(v108) ~= "Instance" then
									v108 = fn45()
								end

								return v108, result
							end

							local function fn47(arg, arg2)
								if typeof(arg) ~= "Vector3" then
									return false
								end
								local unit

								if typeof(arg2) == "Vector3" and (arg2 - arg).Magnitude > 0.05 then
									unit = (arg2 - arg).Unit
								else
									local v108 = currentCamera
									unit = currentCamera

									if v108 then
										unit = v108.CFrame.LookVector
									end
								end

								if not unit or unit.Y < 0.42 then
									return false
								end
								raycastParams.FilterDescendantsInstances = { localPlayer.Character }
								return workspace:Raycast(arg, unit * fn43(), raycastParams) == nil
							end

							local function getHitChance()
								local plSilentaimHitChance = zenthra and zenthra.Flags and zenthra.Flags.pl_silentaim_hit_chance

								if type(plSilentaimHitChance) ~= "number" then
									if v103 and type(v103.Value) == "number" then
										plSilentaimHitChance = v103.Value
									else
										local n = 100

										if type(zenthraPlSa.HitChance) ~= "number" then
											plSilentaimHitChance = n
										else
											plSilentaimHitChance = zenthraPlSa.HitChance
										end
									end
								end

								local hitChance = math.clamp(plSilentaimHitChance, 0, 100)
								zenthraPlSa.HitChance = hitChance
								return hitChance
							end

							local function rollHitChance()
								local v108 = getHitChance()
								if v108 >= v85[101] then
									return true
								end

								if v108 <= v85[4] then
									return v85[33]
								end
								return v105:NextNumber() * 100 < v108
							end

							zenthraPlSa.getHitChance = getHitChance
							zenthraPlSa.rollHitChance = rollHitChance
							local function fn48()if not  zenthraPlSa .Enabled then if not  zenthraPlSa .ASLock then  zenthraPlSa .TargetPart=nil; zenthraPlSa .TargetEntity=nil; v107 =nil;end;return;end;local t= entity .character;local I=t and t.Character or  localPlayer .Character;local J,G,n=t and t.Humanoid or I and(I:FindFirstChildOfClass("Humanoid")),t and t.Head or I and(I:FindFirstChild("Head")),t and(t.RootPart or t.HumanoidRootPart)or I and(I:FindFirstChild("HumanoidRootPart")or(I:FindFirstChild("Torso"))or I.PrimaryPart);if not I or not J or J.Health<=0 or J:GetState()==Enum.HumanoidStateType.Dead or not(G or n)then if not  zenthraPlSa .ASLock then  zenthraPlSa .TargetPart=nil; zenthraPlSa .TargetEntity=nil; v107 =nil;end;return;end;if  zenthraPlSa .ASLock and  zenthraPlSa .TargetEntity and  zenthraPlSa .TargetPart and  zenthraPlSa .TargetPart.Parent and( fn38 ( zenthraPlSa .TargetEntity))then  now5 =os.clock(); tbl20 .Targets[ zenthraPlSa .TargetEntity]=tick()+1;return;end;local O=G and G.Position or n.Position;n= fn39 ();G= fn34 ();I= fn32 (); zenthraPlSa .RequireLos=I;local s,x,u;for w,i in  entity .List,nil,nil do if not  fn38 (i)then continue;end;w=i.Head or i.RootPart;if not w then continue;end;t= currentCamera :WorldToViewportPoint(w.Position);if t.Z<=0 then continue;end;J=(n-Vector2.new(t.X,t.Y)).Magnitude;if J>G then continue;end;w=nil;local t=u;if I then w= fn41 (O,i);if not w then continue;end;u=w;else u=w;end;w= v107 and i== v107 ;local I=if i.Target then-1 else if w then(math.max(0,J-22))else J;if s==nil or I<s then s,x=I,i;else u=t;end;end;if not x then if os.clock()- now5 >0.35 then  zenthraPlSa .TargetPart=nil; zenthraPlSa .TargetEntity=nil; v107 =nil;end;return;end;O=u or( fn40 (x));if not O or not O.Parent then return;end; zenthraPlSa .TargetEntity=x; zenthraPlSa .TargetPart=O; v107 =x; now5 =os.clock(); tbl20 .Targets[x]=tick()+1;end
							zenthraPlSa.dispatch = function(t,I,J) zenthraPlSa .Calls=( zenthraPlSa .Calls or 0)+1;local G= zenthraPlSa .oldCastRay;if not  zenthraPlSa .ASLock and( fn47 (t,I))then return  fn46 (G,t,I,J);end;local n,O= zenthraPlSa .TargetPart, zenthraPlSa .TargetEntity;if not  zenthraPlSa .Enabled or not n or not n.Parent or not O or not O.Character then return  fn46 (G,t,I,J);end;if not  fn38 (O)then return  fn46 (G,t,I,J);end;local s= fn32 (); zenthraPlSa .RequireLos=s;local x= fn35 (t,n,O.Character);local u;if not x then local w= fn41 (t,O);if w then x,u=true,w;else if s then return  fn46 (G,t,I,J);end;u=n;end;else u=n;end;if  zenthraPlSa .ForceMiss or not  zenthraPlSa .ASLock and not  rollHitChance ()then return  fn46 (G,t,I,J);end;n=u.Position; zenthraPlSa .Redirects=( zenthraPlSa .Redirects or 0)+1;local w= fn42 ();local i,l;local a=not s;if a and w and not x then i=w.FilterType;l=w.FilterDescendantsInstances;w.FilterType=Enum.RaycastFilterType.Include;w.FilterDescendantsInstances={O.Character};end;local s,h,Z=pcall(G,t,n,J);if i~=nil and w then pcall(function()w.FilterType=i;w.FilterDescendantsInstances=l;end);end;x=Z;if s and h and(h:IsDescendantOf(O.Character))then  zenthraPlSa .Hits=( zenthraPlSa .Hits or 0)+1;return h,if typeof(x)~="Vector3"then n else x;end;if a then  zenthraPlSa .Hits=( zenthraPlSa .Hits or 0)+1;return u,n;end;if s and typeof(x)=="Vector3"then return h,x;end;return  fn46 (G,t,I,J);end

							local function unhook()
								local hookedBullet = zenthraPlSa.hookedBullet

								if hookedBullet and zenthraPlSa.oldCastRay then
									pcall(function()
										if restorefunction then
											restorefunction(hookedBullet)
										elseif type(zenthraPlSa.oldCastRay) == "function" then
											hookfunction(hookedBullet, zenthraPlSa.oldCastRay)
										end
									end)
								end

								zenthraPlSa.hookedBullet = nil
								zenthraPlSa.oldCastRay = nil
								zenthraPlSa.unhook = nil
							end

							local function fn49()
								unhook()
								local v108 = fn33()
								local v109 = v85[143]
								if type(v108) ~= v109 then
									return v85[33]
								end
								zenthraPlSa.hookedBullet = v108
								local v110 = nil

								local function fn50(...)
									local v111 = table.pack(...)
									local dispatch = zenthraPlSa.dispatch

									if type(dispatch) == "function" then
										local ok, result, result2 = pcall(dispatch, ...)

										if ok and typeof(result2) == "Vector3" then
											if typeof(result) ~= "Instance" then
												result = fn45()
											end

											return result, result2
										end

										if ok and typeof(result) == "Vector3" then
											return fn45(), result
										end
										return fn46(v110, table.unpack(v111, 1, v111.n))
									end

									return fn46(v110, ...)
								end

								v110 = hookfunction
								v110 = v110(v108, fn50)
								zenthraPlSa.oldCastRay = v110
								pl.Bullet = v108
								zenthraPlSa.unhook = unhook
								return true
							end

							local function ensureHook()
								if type(zenthraPlSa.oldCastRay) == "function" and zenthraPlSa.hookedBullet then
									local v108 = fn33()
									if type(v108) == "function" and v108 == zenthraPlSa.hookedBullet then
										pl.Bullet = v108
										return true
									end
								end

								return fn49()
							end

							zenthraPlSa.ensureHook = ensureHook
							zenthraPlSa.unhookCastRay = unhook
							zenthraPlSa.hookSafeShoot = nil
							zenthraPlSa.safeShootHooked = nil

							v99 = zenthraMain.Categories.Combat:CreateModule({
								Name = "SilentAim",
								Function = function(arg)
									zenthraPlSa.Enabled = arg == true
									zenthraPlSa.ModuleOn = arg == true

									if arg then
										if not fn49() then
											fn30("SilentAim", "GunController castRay not found — equip a gun / rejoin", 5)
											zenthraPlSa.Enabled = false

											task.defer(function()
												if v99.Enabled then
													v99:Toggle(false)
												end
											end)

											return
										end

										local v108 = v85[4]
										fn48()
										v99:Clean(v94.RenderStepped:Connect(function(t) v108 +=t;if  v108 >=0.016666666666666666 then  v108 %=0.016666666666666666; fn48 ();end;end))
									elseif not zenthraPlSa.ASLock then
										zenthraPlSa.TargetPart = nil
										zenthraPlSa.TargetEntity = nil
									end
								end,
								ExtraText = function()
									return "PrisonLife"
								end,
								Tooltip = "Redirects GunController castRay hits to the FOV target",
							})

							v100 = v99:CreateToggle({
								Name = "Visible Check",
								Default = true,
								Function = function(arg)
									zenthraPlSa.RequireLos = arg == v85[129]
								end,
								Tooltip = "ON = only shoot with line of sight. OFF = silent through walls",
							})

							zenthraPlSa.RequireLos = fn32()

							v101 = v99:CreateToggle({
								Name = "Hostile Only",
								Default = true,
								Tooltip = "As Guard: skip innocent inmates (only Hostile). Taser still locks any inmate. Criminals skip inmates who cannot be killed (need Hostile or Trespassing)",
							})

							v106 = v99:CreateToggle({
								Name = "Ignore Inmates",
								Default = false,
								Function = function(arg)
									zenthraPlSa.IgnoreInmates = arg == true
								end,
								Tooltip = "Never lock onto prisoners (Silent Aim and AutoShoot). Guards and Criminals still get targeted. Taser also skips inmates while this is on.",
							})

							zenthraPlSa.IgnoreInmates = fn31(v106, "pl_silentaim_ignore_inmates", false)

							v102 = v99:CreateToggle({
								Name = "Ignore Criminals",
								Default = false,
								Function = function(arg)
									zenthraPlSa.IgnoreCriminals = arg == true
								end,
								Tooltip = "Never lock onto criminals (Silent Aim and AutoShoot). Inmates and Guards still get targeted.",
							})

							zenthraPlSa.IgnoreCriminals = fn31(v102, "pl_silentaim_ignore_criminals", false)

							v104 = v99:CreateDropdown({
								Name = "Hitpart",
								List = tbl23,
								Default = "Head",
								Function = function(hitPart)
									zenthraPlSa.HitPart = hitPart
								end,
								Tooltip = "Body part SilentAim and AutoShoot aim at",
							})

							zenthraPlSa.HitPart = v104 and v104.Value or "Head"
							zenthraPlSa.GetHitPartName = getHitPartName
							zenthraPlSa.ResolveHitPart = resolveHitPart

							v103 = v99:CreateSlider({
								Name = "Hit Chance",
								Min = 0,
								Max = 100,
								Default = 100,
								Suffix = "%",
								Function = function(arg)
									zenthraPlSa.HitChance = tonumber(arg) or 100
								end,
								Tooltip = "Chance Silent Aim and AutoShoot actually hit. 50% = half the shots redirect / connect; the rest miss (go where you aimed, or off-target on AutoShoot).",
							})

							zenthraPlSa.HitChance = v103 and v103.Value or v85[101]
							pcall(ensureHook)

							task.spawn(function()
								local n = os.clock() + 8

								while true do
									if zenthraMain.Loaded ~= nil and os.clock() < n then
										if not ensureHook() then
											task.wait(v85[93])
											continue
										end
									end

									break
								end
							end)

							table.insert(zenthraMain.Cleanups, function()
								zenthraPlSa.Enabled = false
								zenthraPlSa.dispatch = nil
								unhook()

								pcall(function()
									local v108 = v85[143]

									if type(pl.Shoot) == v108 and restorefunction then
										restorefunction(pl.Shoot)
									end
								end)
							end)
						end

						zenthraMain.Combat.SilentAim()

						zenthraMain.Combat.FOV = function()
							local v99 = nil
							local v100 = nil
							local v101 = nil
							local v102 = nil
							local v103 = nil
							local v104 = nil

							local function fn31()
								if tbl11.Circle then
									pcall(function()
										tbl11.Circle.Visible = false
										tbl11.Circle:Remove()
									end)

									tbl11.Circle = nil
								end
							end

							local function fn32(D)local t=D and D._segs;if type(t)~="table"then return;end;local I,J,G=D.Position,D.Radius,#t;if typeof(I)~="Vector2"or type(J)~="number"or G<3 then return;end;for n,O in ipairs(t)do local t,s=(n-1)/G*3.141592653589793*2,n/G*3.141592653589793*2;O.From=I+Vector2.new(math.cos(t)*J,math.sin(t)*J);O.To=I+Vector2.new(math.cos(s)*J,math.sin(s)*J);O.Color=D.Color;O.Transparency=D.Transparency;O.Thickness=math.max(1,D.Thickness or 1);O.Visible=D.Visible==true;end;end

							local function fn33(arg)
								local clamp = math.clamp
								local floor2 = math.floor
								local n = tonumber(arg) or 32
								local v105 = v85[193]
								local tbl23 = {}

								for i = 1, clamp(floor2(n), 12, v105) do
									local Line = fn29("Line")

									if Line then
										pcall(function()
											Line.ZIndex = v85[9]
											Line.Thickness = 2
										end)

										table.insert(tbl23, Line)
										continue
									end

									break
								end

								if #tbl23 < v85[133] then
									for _, v106 in ipairs(tbl23) do
										pcall(function()
											v106:Remove()
										end)
									end

									return nil
								end

								return setmetatable({
									_segs = tbl23,
									Position = Vector2.zero,
									Radius = 150,
									Color = Color3.new(1, 1, 1),
									Transparency = 0.5,
									Thickness = 2,
									Visible = false,
									Filled = false,
									Remove = function(arg2)
										local v106 = ipairs
										local segs = arg2._segs or {}

										for _, seg in v106(segs) do
											pcall(function()
												seg.Visible = false
												seg:Remove()
											end)
										end

										arg2._segs = {}
									end,
								}, { __newindex = function(arg2, arg3, arg4)
									rawset(arg2, arg3, arg4)

									if arg3 ~= "_segs" then
										fn32(arg2)
									end
								end })
							end

							local function fn34()
								local circle = tbl11.Circle
								if not circle then
									return
								end
								circle.Radius = v100.Value
								circle.Color = Color3.fromHSV(v101.Hue, v101.Sat, v101.Value)
								circle.Transparency = 1 - v102.Value
								circle.Thickness = math.max(v103.Value, tbl11.IsMobile() and v85[9] or 1)

								pcall(function()
									circle.Filled = v85[33]
									circle.NumSides = v104 and v104.Value or 32
								end)

								circle.Visible = tbl11.Enabled

								if circle._segs then
									fn32(circle)
								end
							end

							local function fn35()
								if tbl11.Circle then
									fn34()
									return tbl11.Circle
								end

								pcall(function()
									if tbl18.Env.GuardDrawing then
										tbl18.Env.GuardDrawing(true)
									end
								end)

								local Circle = fn29("Circle")

								if Circle then
									pcall(function()
										Circle.ZIndex = 2
										Circle.Filled = false
									end)

									tbl11.Circle = Circle
									fn34()
									return Circle
								end

								local v105 = fn33(v104 and v104.Value or 32)
								if not v105 then
									return nil
								end
								tbl11.Circle = v105
								fn34()
								return v105
							end

							v99 = zenthraMain.Categories.Combat:CreateModule({
								Name = "FOV",
								Function = function(arg)
									tbl11.Enabled = arg == v85[129]

									if arg then
										fn35()
										local v105 = v85[4]
										v99:Clean(v94.RenderStepped:Connect(function(t) v105 +=t;if  v105 <0.016666666666666666 then return;end; v105 %=0.016666666666666666;pcall(function()if  tbl18 .Env.GuardDrawing then  tbl18 .Env.GuardDrawing();end;end);t= tbl11 .Circle or( fn35 ());if not t then return;end;t.Position= tbl11 .GetAimPoint();if t._segs then  fn32 (t);end;end))
									else
										fn31()
									end
								end,
								Tooltip = "Shows and controls the SilentAim FOV circle",
							})

							v100 = v99:CreateSlider({
								Name = "Radius",
								Min = 1,
								Max = 800,
								Default = 150,
								Function = function(radius)
									tbl11.Radius = radius

									if tbl11.Circle then
										tbl11.Circle.Radius = radius
									end
								end,
								Suffix = "px",
							})

							tbl11.Radius = v100.Value

							v101 = v99:CreateColorSlider({
								Name = "Color",
								Function = function(arg, arg2, arg3)
									if tbl11.Circle then
										tbl11.Circle.Color = Color3.fromHSV(arg, arg2, arg3)
									end
								end,
							})

							v102 = v99:CreateSlider({
								Name = "Transparency",
								Min = 0,
								Max = 1,
								Default = 0.5,
								Decimal = 10,
								Function = function(arg)
									if tbl11.Circle then
										tbl11.Circle.Transparency = 1 - arg
									end
								end,
							})

							v103 = v99:CreateSlider({
								Name = "Thickness",
								Min = 1,
								Max = 10,
								Default = 1,
								Function = function(thickness)
									if tbl11.Circle then
										tbl11.Circle.Thickness = thickness
									end
								end,
							})

							v104 = v99:CreateSlider({
								Name = "Sides",
								Min = 12,
								Max = 64,
								Default = 32,
								Function = function(numSides)
									local circle = tbl11.Circle
									if not circle then
										return
									end

									pcall(function()
										circle.NumSides = numSides
									end)

									if circle._segs then
										fn31()

										if v99.Enabled then
											fn35()
										end
									end
								end,
								Tooltip = "Circle segments. Used natively when Drawing.Circle exists; otherwise a line ring.",
							})
						end

						zenthraMain.Combat.FOV()

						zenthraMain.Combat.AutoShoot = function()
							local v99 = nil
							local v100 = nil
							local v101 = nil
							local v102 = nil
							local v103 = nil
							local v104 = nil
							local v105 = nil
							local v106 = nil
							local v107 = nil
							local v108 = nil
							local v109 = nil
							local v110 = nil
							local v111 = nil
							local v112 = nil
							local v113 = nil
							local v114 = nil
							local v115 = nil
							local n33 = 0
							local obj = setmetatable({}, { __mode = "k" })
							local v116 = nil
							local n34 = 0
							local v117 = nil
							local v118 = nil
							local n35 = 0
							local tbl23 = { active = v85[33], saved = nil }
							local tbl24 = { "AK-47", "M4A1", "MP5", "FAL", "Remington 870", "M700", "M9", "Revolver" }

							local tbl25 = {
								"Head",
								"Torso",
								"UpperTorso",
								"HumanoidRootPart",
								"Left Arm",
								"Right Arm",
								"Left Leg",
								"Right Leg",
							}

							local genv = getgenv and getgenv() or _G
							local raycastParams = RaycastParams.new()
							raycastParams.CollisionGroup = "ClientBullet"
							raycastParams.FilterType = Enum.RaycastFilterType.Exclude

							local function fn31(arg, arg2, arg3)
								if zenthra and zenthra.Flags and zenthra.Flags[arg2] ~= nil then
									return zenthra.Flags[arg2] == true
								end

								if arg and arg.Enabled ~= nil then
									return arg.Enabled == true
								end
								return arg3 == true
							end

							local function fn32(arg, arg2, arg3)
								if zenthra and zenthra.Flags and zenthra.Flags[arg2] ~= nil then
									arg3 = zenthra.Flags[arg2]
								elseif arg and arg.Value ~= nil then
									arg3 = arg.Value
								end

								local tbl26 = {}

								if type(arg3) == "string" then
									if arg3 ~= "" and arg3 ~= v85[141] then
										tbl26[arg3] = true
									end
								elseif type(arg3) == "table" then
									if #arg3 > 0 then
										for _, v119 in ipairs(arg3) do
											if type(v119) == "string" and v119 ~= "None" then
												tbl26[v119] = v85[129]
											end
										end
									else
										for k, v119 in pairs(arg3) do
											if v119 and type(k) == "string" and k ~= "None" then
												tbl26[k] = true
											end
										end
									end
								end

								local tbl27 = {}

								for _, v119 in tbl24, nil, nil do
									if tbl26[v119] then
										table.insert(tbl27, v119)
									end
								end

								return tbl27
							end

							local function fn33(arg, arg2, arg3)
								if zenthra and zenthra.Flags and type(zenthra.Flags[arg2]) == "string" then
									return zenthra.Flags[arg2]
								end

								if arg and type(arg.Value) == "string" then
									return arg.Value
								end
								return arg3
							end

							local function fn34(arg, arg2, arg3)
								local flags = zenthra and zenthra.Flags and zenthra.Flags[arg2]
								if type(flags) == "number" then
									return flags
								end

								if arg and type(arg.Value) == "number" then
									return arg.Value
								end
								return arg3
							end

							local function fn35(arg)
								local visible = arg == true

								if v107 and v107.Object then
									v107.Object.Visible = visible
								end

								if v108 and v108.Object then
									v108.Object.Visible = visible
								end

								if v109 and v109.Object then
									v109.Object.Visible = visible
								end
							end

							local function fn36(arg)
								local visible = arg == true

								if v112 and v112.Object then
									v112.Object.Visible = visible
								end

								if v113 and v113.Object then
									v113.Object.Visible = visible
								end

								if v114 and v114.Object then
									v114.Object.Visible = visible
								end

								if v115 and v115.Object then
									v115.Object.Visible = visible
								end
							end

							local function fn37()
								local zenthraPlSa = genv.__ZENTHRA_PL_SA
								local v119 = v85[71]

								if type(zenthraPlSa) ~= v119 then
									zenthraPlSa = {}
									genv.__ZENTHRA_PL_SA = zenthraPlSa
								end

								return zenthraPlSa
							end

							local function fn38()
								if fn31(v104, "pl_autoshoot_ignore_inmates", v85[33]) then
									return true
								end

								if fn37().IgnoreInmates == true then
									return v85[129]
								end
								return fn31(nil, "pl_silentaim_ignore_inmates", v85[33])
							end

							local function fn39()
								if fn31(v105, "pl_autoshoot_ignore_criminals", false) then
									return true
								end

								if fn37().IgnoreCriminals == true then
									return v85[129]
								end
								return fn31(nil, "pl_silentaim_ignore_criminals", v85[33])
							end

							local function fn40(arg, arg2, arg3)
								if not arg or not arg2 then
									return false
								end
								raycastParams.FilterDescendantsInstances = { localPlayer.Character }
								local n = arg2.Position - arg
								if n.Magnitude < v85[163] then
									return true
								end
								local hit = workspace:Raycast(arg, n, raycastParams)
								if hit then
									return hit.Instance and arg3 and hit.Instance:IsDescendantOf(arg3) or false
								end

								if n28(3672) > 10450 then
									return v85[129]
								end

								while true do
								end
							end

							local function fn41()
								local character = localPlayer.Character
								return character ~= nil and character:FindFirstChild("Taser") ~= nil
							end

							local function fn42(arg)
								return arg ~= nil and arg:IsA("Tool") and arg.Name == "Taser"
							end

							local function fn43()
								local v119 = v85[33]
								if localPlayer:GetAttribute("BackpackEnabled") == v119 then
									return v85[129]
								end
								local character = localPlayer.Character
								character = character and character:FindFirstChildOfClass(v85[21])
								if not character then
									return false
								end
								local cameraOffset = character.CameraOffset
								return typeof(cameraOffset) == "Vector3" and cameraOffset.Y <= -1.2
							end

							local function fn44()
								local character = localPlayer.Character
								if not character then
									return true
								end

								if character:GetAttribute("Tased") or character:GetAttribute("Arrested") then
									return true
								end
								local humanoid = character:FindFirstChildOfClass("Humanoid")
								if not humanoid or humanoid.Health <= 0 then
									return true
								end

								if humanoid.PlatformStand then
									return true
								end
								local state = humanoid:GetState()
								if state == Enum.HumanoidStateType.Dead or state == Enum.HumanoidStateType.Physics then
									return true
								end

								if fn43() then
									return v85[129]
								end

								if (humanoid.WalkSpeed or v85[47]) <= v85[163] then
									return true
								end
								return v85[33]
							end

							local function fn45(arg)
								local team = arg.Player and arg.Player.Team
								local character = arg.Character
								if not character then
									return false
								end

								if fn41() and team == v95.Inmates then
									return true
								end

								if localPlayer.Team == v95.Criminals and team == v95.Inmates then
									local v119 = v85[129]
									return character:GetAttribute("Hostile") == v119 or character:GetAttribute("Trespassing") == true
								end

								if fn31(v103, "pl_autoshoot_hostile_only", false) then
									if localPlayer.Team ~= v95.Guards then
										return true
									end

									if team == v95.Criminals then
										return true
									end

									if team == v95.Inmates then
										return character:GetAttribute(v85[119]) == true
									end
								end

								return true
							end

							local function fn46(arg)
								if not arg or not arg.Player or arg.Player == localPlayer or not arg.Character then
									return false
								end

								if not entity.targetCheck(arg) then
									return false
								end
								local humanoid = arg.Humanoid
								local flag18 = not humanoid or humanoid.Health <= 0

								if not flag18 then
									local dead = Enum.HumanoidStateType.Dead
									flag18 = humanoid:GetState() == dead
								end

								if flag18 then
									return false
								end

								if entity.hasForceField(arg) then
									return v85[33]
								end

								if fn38() and arg.Player.Team == v95.Inmates then
									return false
								end

								if fn39() and arg.Player.Team == v95.Criminals then
									return v85[33]
								end

								if not fn45(arg) then
									return false
								end
								return true
							end

							local function fn47()
								local v119 = fn37()
								local v120 = v85[143]

								if type(v119.GetHitPartName) == v120 then
									local v121 = v119.GetHitPartName()
									if type(v121) == "string" and v121 ~= "" then
										return v121
									end
								end

								local v121 = fn33(nil, "pl_silentaim_hitpart", v119.HitPart or "Head")
								if v121 == "Random" then
									return tbl25[math.random(1, #tbl25)]
								end
								return v121
							end

							local function fn48(arg, arg2)
								if not arg or not arg.Character then
									return nil
								end
								arg2 = arg2 or "Head"
								if arg2 == "Torso" then
									return arg.Character:FindFirstChild("Torso") or arg.Character:FindFirstChild("UpperTorso") or arg.RootPart
								end

								if arg2 == "HumanoidRootPart" or arg2 == "RootPart" then
									return arg.RootPart or arg.Character:FindFirstChild("HumanoidRootPart")
								end
								return arg.Character:FindFirstChild(arg2) or arg.Head or arg.RootPart
							end

							local function fn49(arg, arg2, arg3)
								local v119 = arg3 or fn47()
								local v120 = fn48(arg2, v119)
								if v120 and v120.Parent and fn40(arg, v120, arg2.Character) then
									return v120
								end

								for _, v121 in tbl25, nil, nil do
									if v121 == v119 then
										continue
									end
									local v122 = fn48(arg2, v121)
									if v122 and v122 ~= v120 and v122.Parent and fn40(arg, v122, arg2.Character) then
										return v122
									end
								end

								return nil
							end

							local function fn50(arg)
								return arg and arg:IsA("Tool") and arg:GetAttribute("FireRate") ~= nil and arg.Name ~= "Taser"
							end

							local function fn51()
								local character = localPlayer.Character
								if not character then
									return nil
								end
								local tool = character:FindFirstChildWhichIsA("Tool")
								if not fn50(tool) then
									return nil
								end
								return tool
							end

							local function fn52(arg)
								if not arg then
									return 0
								end
								local num = tonumber(arg:GetAttribute("Local_CurrentAmmo"))
								local num2 = tonumber(arg:GetAttribute("CurrentAmmo"))
								if num ~= nil and num2 ~= nil then
									return math.max(0, math.min(num, num2))
								end

								if num2 ~= nil then
									return math.max(0, num2)
								end

								if num ~= nil then
									return math.max(v85[4], num)
								end
								return v85[4]
							end

							local function fn53(arg)
								local flag18

								if arg then
									flag18 = (arg:GetAttribute("Local_ReloadSession") or v85[4]) > 0
								else
									flag18 = arg
								end

								return flag18
							end

							local function fn54()
								local shoot = pl and pl.Shoot or v96
								return type(shoot) == "function" and shoot or nil
							end

							local function fn55(arg)
								local v119 = arg or fn54()
								if type(v119) ~= "function" then
									return nil
								end
								local ok, result = pcall(debug.getupvalue, v119, 1)
								if ok and typeof(result) == "Instance" then
									return result
								end
								return nil
							end

							local function fn56(arg)
								local v119 = arg or fn54()
								if type(v119) ~= "function" then
									return nil
								end
								local ok, result = pcall(debug.getupvalue, v119, 10)
								if ok and type(result) == "table" then
									return result
								end
								return nil
							end

							local function fn57(arg, arg2)
								if arg and fn55(arg) == arg2 then
									local v119 = fn56(arg)
									if v119 and type(v119.FireRate) == "number" then
										return math.max(0, v119.FireRate)
									end
								end

								return arg2 and tonumber(arg2:GetAttribute("FireRate")) or 0.1
							end

							local function fn58(arg)
								if type(arg) ~= "string" or arg == "" then
									return nil
								end
								local character = localPlayer.Character

								if character then
									local v119 = character:FindFirstChild(arg)
									if fn50(v119) then
										return v119
									end
								end

								local backpack = localPlayer:FindFirstChildWhichIsA("Backpack")

								if backpack then
									local v119 = backpack:FindFirstChild(arg)
									if fn50(v119) then
										return v119
									end
								end

								return nil
							end

							local function fn59(arg)
								if not arg then
									return false
								end

								if type(zenthraMain.Game.SyncGunAmmo) == "function" then
									pcall(zenthraMain.Game.SyncGunAmmo, arg)
								end

								local v119 = v85[4]
								return fn52(arg) > v119
							end

							local function fn60(arg)
								return fn59(arg)
							end

							local function fn61(arg, arg2)
								if not arg or not arg:GetAttribute("Local_IsShooting") then
									return
								end
								local n = obj[arg] or 0

								if os.clock() - n > fn57(arg2, arg) + 0.4 then
									arg:SetAttribute("Local_IsShooting", false)
									arg:SetAttribute("Local_ShootStamp", nil)
								end
							end

							local function fn62(arg, arg2)
								local n = arg2 or 0.18
								local n36 = os.clock() + n

								while os.clock() < n36 do
									if fn55() == arg then
										return fn54()
									end
									task.wait()
								end

								return nil
							end

							local function fn63(arg)
								local v119 = arg or fn54()
								if type(v119) ~= "function" then
									return
								end
								local value = select(2, pcall(debug.getupvalue, v119, 3))
								local v120 = v85[71]
								local hold = type(value) == v120 and value.Hold

								if hold and not hold.IsPlaying then
									pcall(function()
										hold:Play()
									end)
								end
							end

							local function fn64(arg)
								if not arg then
									return false
								end
								local v119 = fn54()
								if fn55(v119) == arg then
									fn63(v119)
									return true
								end

								if type(pl.Equip) == "function" then
									pcall(pl.Equip, arg)
									if fn55() == arg then
										fn63()
										return true
									end
									task.wait()
									if fn55() == arg then
										fn63()
										return true
									end
								end

								return fn62(arg, 0.12) ~= nil
							end

							local function fn65(arg)
								if not arg then
									return false
								end

								if fn43() then
									return false
								end
								local character = localPlayer.Character
								local backpack = localPlayer:FindFirstChildWhichIsA("Backpack")
								local v119 = character and character:FindFirstChildOfClass(v85[21])
								if not character or not v119 or v119.Health <= 0 then
									return v85[33]
								end

								if arg.Parent == character and fn55() == arg then
									fn63()
									return true
								end
								local tool = character:FindFirstChildWhichIsA("Tool")

								if tool and tool ~= arg then
									pcall(function()
										tool:SetAttribute("Local_IsShooting", false)
										tool:SetAttribute("Local_ShootStamp", nil)

										if backpack then
											tool.Parent = backpack
										end
									end)
								end

								pcall(function()
									arg.Parent = character
								end)

								if arg.Parent ~= character and backpack then
									pcall(function()
										v119:EquipTool(arg)
									end)
								end

								if type(pl.Equip) == "function" then
									pcall(pl.Equip, arg)
								end

								if fn55() == arg then
									fn63()
									return v85[129]
								end
								return fn64(arg)
							end

							local function fn66(arg)
								if fn43() then
									return false
								end

								if fn65(arg) then
									return true
								end

								if not arg then
									return false
								end
								local character = localPlayer.Character
								local v119 = character and character:FindFirstChildOfClass(v85[21])
								if not v119 or v119.Health <= 0 then
									return false
								end

								pcall(function()
									v119:EquipTool(arg)
								end)

								if arg.Parent ~= character then
									local n = os.clock() + 0.28

									while arg.Parent ~= character and os.clock() < n do
										task.wait()
									end
								end

								if arg.Parent ~= character then
									return v85[33]
								end

								if fn64(arg) then
									return true
								end

								pcall(function()
									local v120 = v85[143]

									if type(pl.Equip) == v120 then
										pl.Equip(arg)
									end
								end)

								return fn62(arg, 0.2) ~= nil
							end

							local function fn67(arg)
								arg = arg and arg.Humanoid
								if not arg then
									return v85[101]
								end
								local maxHealth = arg.MaxHealth

								if type(maxHealth) ~= "number" or maxHealth <= 0 then
									maxHealth = v85[101]
								end

								return arg.Health / maxHealth * v85[101]
							end

							local v119 = v85[4]
							local flag18 = v85[33]

							local function fn68()
								if tbl23.active then
									return
								end
								local character = localPlayer.Character
								tbl23.saved = character and character:FindFirstChildWhichIsA("Tool") or false
								tbl23.active = true
							end

							local function fn69(arg)
								if not tbl23.active then
									return v85[129]
								end
								local character = localPlayer.Character
								local tool = character and character:FindFirstChildWhichIsA("Tool")
								if not arg and fn53(tool) then
									return v85[33]
								end
								local saved = tbl23.saved
								local humanoid = character and character:FindFirstChildOfClass("Humanoid")
								local backpack = localPlayer:FindFirstChildWhichIsA("Backpack")
								tbl23.active = false
								tbl23.saved = nil
								if not humanoid or humanoid.Health <= 0 then
									return true
								end

								if fn43() then
									if tool and tool.Parent == character then
										pcall(function()
											humanoid:UnequipTools()
										end)
									end

									return true
								end

								local function fn70()
									if not tool or tool.Parent ~= character then
										return
									end

									pcall(function()
										humanoid:UnequipTools()
									end)

									if tool.Parent == character and backpack then
										pcall(function()
											tool.Parent = backpack
										end)
									end
								end

								if not (typeof(saved) == "Instance" and saved:IsA("Tool") and saved.Parent) then
									fn70()
									return true
								end

								if tool == saved then
									return v85[129]
								end
								fn70()

								pcall(function()
									humanoid:EquipTool(saved)
								end)

								return true
							end

							local function fn70()
								flag18 = v85[33]
								v119 += 1
							end

							local fn71 = nil

							fn71 = function()
								if flag18 or not tbl23.active then
									return
								end
								flag18 = true
								v119 += 1
								local v120 = v119

								task.delay(0.2, function()
									flag18 = false
									if v120 ~= v119 then
										return
									end

									if not fn69(false) then
										fn71()
									end
								end)
							end

							local function fn72()
								for _, v120 in tbl24, nil, nil do
									local v121 = fn58(v120)
									if v121 and fn60(v121) then
										return v121
									end
								end

								local function fn73(arg)
									if not arg then
										return nil
									end

									for _, v120 in arg:GetChildren() do
										if fn50(v120) and fn60(v120) then
											return v120
										end
									end

									return nil
								end

								return fn73(localPlayer.Character) or fn73(localPlayer:FindFirstChildWhichIsA("Backpack"))
							end

							local function fn73()
								return fn34(v109, "pl_autoshoot_health_to_swap", 80)
							end

							local function fn74(arg)
								return fn67(arg) <= fn73()
							end

							local function fn75()
								return fn31(v111, "pl_autoshoot_auto_macro_gun", false)
							end

							local function fn76()
								local tbl26 = {}
								local v120 = fn32(v112, "pl_autoshoot_macro_gun_1", { "M4A1" })
								local v121 = fn32(v113, "pl_autoshoot_macro_gun_2", { "Remington 870" })
								tbl26[1] = v120
								tbl26[2] = v121

								do
									local values = table.pack(fn32(v114, "pl_autoshoot_macro_gun_3", {}))
									table.move(values, 1, values.n, 3, tbl26)
								end

								return tbl26
							end

							local function fn77(arg, arg2)
								if type(arg) ~= "table" or #arg == 0 then
									return nil
								end

								if arg2 and table.find(arg, arg2.Name) then
									if fn58(arg2.Name) == arg2 and fn60(arg2) and not fn53(arg2) then
										return arg2
									end
								end

								local v120 = nil

								for _, v121 in arg, nil, nil do
									local v122 = fn58(v121)

									if v122 then
										if fn60(v122) and not fn53(v122) then
											return v122
										end
										v120 = v120 or v122
									end
								end

								return v120
							end

							local function fn78(arg)
								local tbl26 = {}
								local tbl27 = {}

								for _, v120 in fn76() do
									local v121 = fn77(v120, arg)

									if v121 and not tbl27[v121] then
										tbl27[v121] = v85[129]
										table.insert(tbl26, v121)
									end
								end

								return tbl26
							end

							local function fn79(arg)
								if not arg then
									return false
								end
								local name = arg.Name
								if name == "Remington 870" or name == "M700" or name == "Revolver" then
									return true
								end
								local attribute = arg:GetAttribute("Behavior")
								return attribute == "Shotgun" or attribute == "Sniper" or attribute == "Revolver"
							end

							local function fn80(arg)
								if fn79(arg) then
									return v85[145]
								end
								local clamp = math.clamp
								local floor2 = math.floor
								local v120 = fn34(v115, "pl_autoshoot_macro_burst", 5) or v85[17]
								local v121 = v85[130]
								return clamp(floor2(v120 + v85[121]), 1, v121)
							end

							local function fn81(arg)
								if arg ~= v118 then
									v118 = arg
									n35 = 1
								else
									n35 += 1
								end

								v117 = arg
							end

							local function fn82(arg)
								if not fn75() then
									return nil
								end
								local v120 = fn78(arg)
								if #v120 == 0 then
									return nil
								end
								local tbl26 = {}

								for _, v121 in v120, nil, nil do
									if fn60(v121) and not fn53(v121) then
										table.insert(tbl26, v121)
									end
								end

								if #tbl26 == 0 then
									return nil
								end

								if #tbl26 == v85[145] then
									return tbl26[1]
								end

								if arg and table.find(tbl26, arg) then
									if (v118 == arg and n35 or 0) < fn80(arg) then
										return arg
									end
								end

								arg = arg or v117
								local n = 0

								for k, v121 in tbl26, nil, nil do
									if v121 == arg then
										n = k
										break
									end
								end

								return tbl26[n % #tbl26 + 1]
							end

							local function fn83(arg)
								if fn75() or not fn31(v106, "pl_autoshoot_combo_swap", false) then
									return nil
								end
								local v120 = fn32(v107, "pl_autoshoot_combo_primary", { "M9" })
								local v121 = fn32(v108, "pl_autoshoot_combo_secondary", { "Remington 870" })
								local v122 = fn74(arg)
								local v123 = v122 and v121 or v120
								v120 = v122 and v120 or v121
								local v124 = fn77(v123, nil)
								if v124 and fn60(v124) then
									return v124
								end
								local v125 = fn77(v120, nil)
								if v125 and fn60(v125) then
									return v125
								end
								return nil
							end

							local function fn84(arg)
								if fn43() then
									return nil
								end
								local tool = localPlayer.Character and localPlayer.Character:FindFirstChildWhichIsA("Tool")

								if fn42(tool) then
									if fn55() ~= tool then
										fn64(tool)
									end

									return tool
								end

								local v120 = fn31(v110, "pl_autoshoot_auto_equip_gun", false)
								local flag19 = not fn75() and fn31(v106, "pl_autoshoot_combo_swap", false)
								local v121 = fn51()
								local v122 = fn75() and fn82(v121) or flag19 and fn83(arg) or nil
								if fn53(v121) and (not v122 or v122 == v121) then
									fn64(v121)
									return v121
								end

								if v122 then
									if v121 ~= v122 then
										fn68()
										fn65(v122)
									elseif v121 and fn55() ~= v121 then
										fn64(v121)
									end

									return fn51()
								end

								if v121 then
									if fn55() ~= v121 then
										fn64(v121)
									end

									return v121
								end

								if not v120 then
									return nil
								end
								local v123 = fn72()
								if not v123 then
									return nil
								end
								fn68()
								fn66(v123)
								return fn51()
							end

							local function fn85()
								local character = entity.character
								local character2 = character and character.Character or localPlayer.Character
								local head = character and character.Head or character2 and character2:FindFirstChild("Head")

								if character then
									character = character.RootPart or character.HumanoidRootPart
								end

								character = character or character2 and (character2:FindFirstChild("HumanoidRootPart") or character2:FindFirstChild("Torso") or character2.PrimaryPart)
								if head then
									return head.Position, character2
								end

								if character then
									return character.Position, character2
								end
								return nil, character2
							end

							local function fn86()
								local v120 = fn85()

								if not v120 then
									if n26 > 2316 then
										while v85[129] do
										end
									end

									return nil, nil
								end

								local v121 = fn31(v102, "pl_autoshoot_ignore_fov", false)
								local v122 = fn31(v101, "pl_autoshoot_visible_check", true)
								local v123 = fn31(v106, "pl_autoshoot_combo_swap", false)
								local v124 = fn47()
								local v125 = tbl11.GetAimPoint()
								local radius = tbl11.Radius or 150
								local flag19 = v116 and os.clock() - n34 < 0.22 and v116 or nil

								if v123 and v116 and fn46(v116) and fn74(v116) then
									local v126 = v116
									local head = fn48(v116, v124) or v126.Head or v126.RootPart

									if head and head.Parent then
										if n27(3589) > 11062 then
											local flag20 = true

											if not v121 then
												local v127 = currentCamera:WorldToViewportPoint(head.Position)
												flag20 = v127.Z > v85[4] and (v125 - Vector2.new(v127.X, v127.Y)).Magnitude <= radius
											end

											if flag20 then
												if v122 then
													head = fn49(v120, v126, v124)
												end

												if head then
													return v126, head
												end
											end
										else
											while true do
											end
										end
									end
								end

								local v126 = nil
								local v127 = nil
								local v128 = nil
								local v129 = nil
								local v130 = nil
								local v131 = nil

								for _, v132 in entity.List, nil, nil do
									if fn46(v132) then
										local head = v132.Head or v132.RootPart

										if head then
											local v133 = fn48(v132, v124) or head
											local magnitude

											if v121 then
												magnitude = (v133.Position - v120).Magnitude
											else
												local v134 = currentCamera:WorldToViewportPoint(v133.Position)
												if v134.Z <= 0 then
													continue
												end
												magnitude = (v125 - Vector2.new(v134.X, v134.Y)).Magnitude
												if radius < magnitude then
													continue
												end
											end

											if v122 then
												v133 = fn49(v120, v132, v124)
												if not v133 then
													continue
												end
											elseif not v133 then
												continue
											end

											if v132.Target then
												magnitude = -1
											end

											if v126 == nil or magnitude < v126 then
												v126 = magnitude
												v127 = v132
												v128 = v133
											end

											if v132 ~= flag19 and (v129 == nil or magnitude < v129) then
												v129 = magnitude
												v130 = v132
												v131 = v133
											end
										end
									end
								end

								if v130 then
									return v130, v131
								end

								if not v127 then
									return nil, nil
								end
								return v127, v128
							end

							local function fn87(arg, arg2, arg3)
								pcall(function()
									local v120 = v85[143]

									if type(pl.PlaySound) == v120 then
										pl.PlaySound("ShootSound")
									end
								end)

								local value = select(2, pcall(debug.getupvalue, arg, 3))
								local v120 = v85[71]
								if type(value) ~= v120 then
									return
								end
								local shootShell = nil

								if arg3.Behavior == "Shotgun" then
									shootShell = value.ShootShell

									task.delay(0.2, function()
										pcall(function()
											if type(pl.PlaySound) == "function" then
												pl.PlaySound("SecondarySound")
											end
										end)
									end)
								elseif arg3.Behavior == "Sniper" then
									shootShell = value.ShootRifle
								elseif arg2.Name ~= "Revolver" then
									shootShell = value.ShootBullet
								end

								if shootShell then
									pcall(function()
										shootShell:Play()
									end)
								end

								local handle = arg2:FindFirstChild("Handle")
								handle = handle and handle:FindFirstChild("Flare")

								if handle then
									pcall(function()
										handle.Enabled = true
									end)

									task.delay(v85[163], function()
										pcall(function()
											if handle.Parent then
												handle.Enabled = v85[33]
											end
										end)
									end)
								end
							end

							local function fn88(arg)
								if arg and arg.Parent then
									arg:SetAttribute("Local_IsShooting", false)
									arg:SetAttribute("Local_ShootStamp", nil)
								end
							end

							local function fn89(arg, arg2)
								local v120 = fn82(arg2) or fn83(arg)
								return v120 ~= nil and v120 ~= arg2
							end

							local function fn90(t,I,J)local G= n33 ;t=math.max(0,t);if t<=0 then return true;end;local n=os.clock()+t;while os.clock()<n do task.wait();if  n33 ~=G or not  v99 .Enabled then return"stop";end;if  fn44 ()then  fn88 (I); fn37 ().ASLock=false; fn71 ();return"stop";end;if J and not  fn46 (J)then  fn88 (I);return"next";end;if  fn89 (J,I)then  fn88 (I);return"swap";end;end;return true;end

							local function fn91(arg, arg2, arg3)
								local v120 = fn57(arg2, arg)
								local n = 0

								if not fn75() then
									n = math.max(v85[4], tonumber(v100 and v100.Value) or v85[4])
								end

								local now5 = obj[arg] or os.clock()
								local v121 = fn90(math.max(0, v120 - os.clock() - now5), arg, arg3)
								fn88(arg)
								if v121 ~= true then
									return v121
								end

								if n > 0 then
									local v122 = fn90(n, arg, arg3)
									if v122 ~= true then
										return v122
									end
								end

								return true
							end

							local function fn92()
								local reload = pl and pl.Reload

								if type(reload) == "function" then
									local ok, result = pcall(debug.getupvalue, reload, 7)
									if ok and typeof(result) == "Instance" then
										return result
									end
								end

								local gunRemotes = game:GetService("ReplicatedStorage"):FindFirstChild("GunRemotes")
								return gunRemotes and gunRemotes:FindFirstChild("FuncReload")
							end

							local function fn93(arg)
								if type(zenthraMain.Game.ApplyServerAmmo) == "function" then
									return zenthraMain.Game.ApplyServerAmmo(arg) == true
								end
								local num = tonumber(arg and arg:GetAttribute("CurrentAmmo"))
								if num == nil then
									return false
								end
								pcall(arg.SetAttribute, arg, "Local_CurrentAmmo", num)
								return num > v85[4]
							end

							local function fn94(arg, arg2)
								if not arg then
									return false
								end
								fn59(arg)
								if fn52(arg) > 0 and not fn53(arg) then
									return true
								end

								if fn55(arg2) ~= arg then
									fn64(arg)
									fn54()
								end

								local num = tonumber(arg:GetAttribute("CurrentAmmo"))

								if num and num > 0 then
									local n = os.clock() + 0.45
									local exitTo = nil

									while true do
										if not (os.clock() < n) then
											exitTo = 1
											break
										else
											if (tonumber(arg:GetAttribute("CurrentAmmo")) or 0) <= 0 then
												exitTo = 1
												break
											elseif not (v85[4] < fn52(arg)) then
												task.wait()
												continue
											end

											break
										end
									end

									if exitTo ~= 1 then
										return true
									end

									if (tonumber(arg:GetAttribute("CurrentAmmo")) or 0) > 0 then
										return fn52(arg) > 0
									end
								end

								if fn53(arg) then
									local n = tonumber(arg:GetAttribute("ReloadTime")) or 1
									local n36 = os.clock() + math.clamp(n + 0.45, 0.45, v85[100])
									local n37 = tonumber(arg:GetAttribute("CurrentAmmo")) or 0

									while os.clock() < n36 do
										if n37 < (tonumber(arg:GetAttribute("CurrentAmmo")) or 0) then
											return fn93(arg)
										end
										local v120 = v85[4]
										if fn52(arg) > v120 and not fn53(arg) then
											return true
										end
										task.wait()
									end

									return fn93(arg) and fn52(arg) > 0
								end

								local n = tonumber(arg:GetAttribute("CurrentAmmo")) or 0
								local v120 = fn92()

								if v120 then
									local now5 = tick()
									pcall(arg.SetAttribute, arg, "Local_ReloadSession", now5)

									pcall(function()
										v120:InvokeServer()
									end)

									local n36 = tonumber(arg:GetAttribute("ReloadTime")) or 1
									local n37 = os.clock() + math.clamp(n36 + v85[190], 0.45, v85[100])

									while os.clock() < n37 do
										if n < (tonumber(arg:GetAttribute("CurrentAmmo")) or 0) then
											if arg:GetAttribute("Local_ReloadSession") == now5 then
												pcall(arg.SetAttribute, arg, "Local_ReloadSession", v85[4])
											end

											return fn93(arg)
										end

										task.wait()
									end

									if arg:GetAttribute("Local_ReloadSession") == now5 then
										pcall(arg.SetAttribute, arg, "Local_ReloadSession", 0)
									end
								else
									if type(pl.Reload) ~= "function" then
										return false
									end
									pcall(pl.Reload)
								end

								if n < (tonumber(arg:GetAttribute("CurrentAmmo")) or 0) then
									return fn93(arg)
								end
								pcall(zenthraMain.Game.SyncGunAmmo, arg)
								return fn52(arg) > 0
							end

							local function fn95(arg)
								return fn94(arg, fn54())
							end

							local function fn96(arg, arg2, arg3)
								if fn44() then
									return false
								end

								if fn53(arg2) and not fn94(arg2, arg) then
									return false
								end
								fn61(arg2, arg)
								if arg2:GetAttribute("Local_IsShooting") then
									return v85[33]
								end
								fn59(arg2)
								local v120 = fn52(arg2)

								if v120 <= 0 then
									if not fn94(arg2, arg) then
										return false
									end
									v120 = fn52(arg2)
									if v120 <= 0 then
										return false
									end
								end

								local character = localPlayer.Character
								local head = character and character:FindFirstChild("Head")
								character = character and character:FindFirstChildOfClass("Humanoid")
								if not head or not character or character.Health <= 0 or character.SeatPart then
									return false
								end
								local v121 = fn56(arg)
								local ok, result = pcall(debug.getupvalue, arg, 18)
								local bullet = pl and pl.Bullet or select(2, pcall(debug.getupvalue, arg, 16))
								if type(v121) ~= "table" or not ok or typeof(result) ~= "Instance" or type(bullet) ~= "function" then
									return false
								end
								fn63(arg)
								local position = head.Position

								if typeof(arg3) ~= "Vector3" then
									local v122 = tbl11.GetAimPoint()
									local v123 = currentCamera:ViewportPointToRay(v122.X, v122.Y)
									arg3 = v123.Origin + v123.Direction * 1500
								end

								local n = tonumber(v121.SpreadRadius) or 0
								local n36 = math.max(v85[145], tonumber(v121.ProjectileCount) or 1)
								local tbl26 = {}
								local muzzle = arg2:FindFirstChild("Muzzle")
								local position2 = muzzle and muzzle:IsA("BasePart") and muzzle.Position or position
								local gunTracers = pl and pl.GunTracers

								for i = 1, n36 do
									local terrain, v122 = bullet(position, arg3, n)

									if typeof(v122) ~= "Vector3" then
										v122 = arg3
									end

									if typeof(terrain) ~= "Instance" then
										terrain = workspace.Terrain or workspace
									end

									table.insert(tbl26, { position, v122, terrain })

									if gunTracers then
										local behavior = v121.Behavior
										local flag19 = behavior == "Sniper"

										if flag19 then
											local v123 = v85[143]
											flag19 = type(gunTracers.createSniper) == v123
										end

										if flag19 then
											pcall(gunTracers.createSniper, position2, v122)
										else
											local flag20 = behavior == "Taser"

											if flag20 then
												local v123 = v85[143]
												flag20 = type(gunTracers.createTaser) == v123
											end

											if flag20 then
												pcall(gunTracers.createTaser, position2, v122)
											elseif type(gunTracers.createBullet) == "function" then
												pcall(gunTracers.createBullet, position2, v122)
											end
										end
									end
								end

								arg2:SetAttribute("Local_IsShooting", true)
								arg2:SetAttribute("Local_ShootStamp", os.clock())

								if not pcall(function()
									result:FireServer(tbl26)
								end) then
									arg2:SetAttribute("Local_IsShooting", v85[33])
									arg2:SetAttribute("Local_ShootStamp", nil)
									return v85[33]
								end

								fn87(arg, arg2, v121)
								local n37 = math.max(v85[4], v120 - 1)
								local num = tonumber(arg2:GetAttribute("CurrentAmmo"))
								local n38

								if num == nil then
									n38 = n37
								else
									n38 = math.min(n37, num)
								end

								arg2:SetAttribute("Local_CurrentAmmo", n38)
								obj[arg2] = os.clock()

								if type(zenthraMain.Game.UpdateAmmoHud) == "function" then
									zenthraMain.Game.UpdateAmmoHud(arg2, n38)
								else
									local value = select(2, pcall(debug.getupvalue, arg, 19))

									if value and value:IsA("TextLabel") then
										if v121.Behavior == "Sniper" then
											value.Text = tostring(n38) .. " | " .. tostring(arg2:GetAttribute("StoredAmmo") or v85[4])
										elseif v121.MaxAmmo then
											value.Text = tostring(n38) .. "/" .. tostring(v121.MaxAmmo)
										end
									end
								end

								return v85[129]
							end

							local function fn97()if  fn44 ()then  fn37 ().ASLock=false; fn71 ();return false;end;local t,I= fn86 ();local J= fn37 ();if not t or not I or not I.Parent then J.ASLock=false; fn71 ();return false;end; fn70 ();local G= fn84 (t)or( fn51 ());if not G then  fn71 ();return false;end;local n= fn82 (G)or( fn83 (t));if n and G~=n then return"swap";end;n= fn54 ();if type(n)~="function"then return false;end;if  fn55 (n)~=G then if not  fn65 (G)and not  fn66 (G)then return false;end;n= fn54 ();if  fn55 (n)~=G then return false;end;end; fn61 (G,n); fn63 (n);if  fn53 (G)or  fn52 (G)<=0 then if not  fn94 (G,n)then return"reload";end;end;local O= fn57 (n,G)-(os.clock()-( obj [G]or 0));if not( fn75 ()and  v118 ~=G)and  obj [G]and O>0.01 then local s= fn90 (O,G,t); fn88 (G);if s~=true then return s=="stop"and false or s;end;end;if  fn52 (G)<=0 then if not( fn59 (G))then if not  fn94 (G,n)then return"reload";end;end;if  fn52 (G)<=0 then return"reload";end;end;if not  fn46 (t)or not I or not I.Parent then return"next";end;if type(J.oldCastRay)~="function"then if type(J.ensureHook)~="function"or not J.ensureHook()then return false;end;end;local s,x,u,w= fn31 ( v101 ,"pl_autoshoot_visible_check",true),J.Enabled, fn52 (G),if type(J.rollHitChance)=="function"then J.rollHitChance()==true else if type(J.getHitChance)=="function"then math.random()*100<(J.getHitChance()or 100)else if type(J.HitChance)=="number"then math.random()*100<J.HitChance else true;J.ASLock=true;J.Enabled=true;J.RequireLos=s;O=not w;J.ForceMiss=O;if w then J.TargetEntity=t;J.TargetPart=I;else J.TargetEntity=nil;J.TargetPart=nil;end;s=I.Position;if O then w= currentCamera ;local O=w and w.CFrame.LookVector or(Vector3.new(0,1,0));local i=w and w.CFrame.RightVector or(Vector3.new(1,0,0));local l=w and w.CFrame.UpVector or(Vector3.new(0,1,0));local a=math.random()<0.5 and 1 or-1;I= localPlayer .Character and( localPlayer .Character:FindFirstChild("Head"));s=(I and I.Position or s)+O*420+i*(20*a)+l*10;end;w= fn96 (n,G,s);J.ForceMiss=false;J.Enabled=x;x= fn52 (G);if not(w==true and x<u)then  fn88 (G);J.ASLock=false;return false;end; v116 =t; n34 =os.clock();if  fn75 ()then  fn81 (G);end;if  fn52 (G)<=0 then  fn95 (G);end;if not  fn46 (t)then  fn88 (G);return"next";end;if  fn89 (t,G)then  fn88 (G);return"swap";end;I= fn91 (G,n,t);if I=="next"or I=="swap"then return I;end;if I=="stop"then return false;end;return true;end

							local function fn98()
								n33 += v85[145]
								v117 = nil
								v118 = nil
								n35 = 0
								fn70()
								local v120 = fn37()
								v120.ASLock = v85[33]
								v120.ForceMiss = v85[33]
								fn69(v85[129])

								pcall(function()
									if type(zenthraMain.Game.RepairGunState) == "function" then
										zenthraMain.Game.RepairGunState(true)
									end
								end)
							end

							v99 = zenthraMain.Categories.Combat:CreateModule({
								Name = "AutoShoot",
								Function = function(arg)
									if arg then
										n33 += v85[145]
										local v120 = n33

										task.spawn(function()
											while v99.Enabled and n33 == v120 do
												local v121 = nil

												if not pcall(function()
													v121 = fn97()
												end) then
													task.wait(0.05)
												elseif v121 == "next" or v121 == "swap" then
													task.wait()
												elseif v121 == true then
													task.wait()
												else
													task.wait(0.03)
												end
											end

											if n33 == v120 then
												local v121 = fn37()
												v121.ASLock = false
												v121.ForceMiss = false
												fn69(v85[129])

												pcall(function()
													if type(zenthraMain.Game.RepairGunState) == "function" then
														zenthraMain.Game.RepairGunState(v85[129])
													end
												end)
											end
										end)
									else
										fn98()
									end
								end,
								Tooltip = "Automatically fires at valid targets. Snaps to the next guy and combo-swaps guns on the next frame.",
							})

							v100 = v99:CreateSlider({
								Name = "Delay",
								Min = 0,
								Max = 1,
								Default = 0,
								Decimal = 100,
								Suffix = "s",
								Tooltip = "Extra wait after the weapon FireRate (0 = real gun delay, including Gun Modifications)",
							})

							v101 = v99:CreateToggle({ Name = "Visible Check", Default = true, Tooltip = "Only shoot targets with line of sight" })
							v102 = v99:CreateToggle({ Name = "Ignore FOV", Default = v85[33], Tooltip = "Shoot targets anywhere, including behind you" })

							v103 = v99:CreateToggle({
								Name = "Hostile Only",
								Default = true,
								Tooltip = "As Guard: skip innocent inmates (only Hostile). Taser still locks any inmate. Criminals skip inmates who cannot be killed (need Hostile or Trespassing)",
							})

							v104 = v99:CreateToggle({
								Name = "Ignore Inmates",
								Default = v85[33],
								Tooltip = "Never shoot prisoners. Same as Silent Aim Ignore Inmates — turning either on skips inmates here too.",
							})

							v105 = v99:CreateToggle({
								Name = "Ignore Criminals",
								Default = false,
								Tooltip = "Never shoot criminals. Same as Silent Aim Ignore Criminals — turning either on skips criminals here too.",
							})

							v110 = v99:CreateToggle({
								Name = "Auto Equip Gun",
								Default = false,
								Tooltip = "Auto equip a gun to shoot, then restore what you had in hand (or empty hands) when AutoShoot finishes",
							})

							v111 = v99:CreateToggle({
								Name = "Auto Macro Gun",
								Default = false,
								Function = function(arg)
									fn36(arg)
								end,
								Tooltip = "Rifle/SMG dump a burst then swap. Doze, M700 and Revolver fire 1 shot and swap immediately, no extra wait. Ignores HP. Overrides Combo Swap while on.",
							})

							v112 = v99:CreateMultiDropdown({
								Name = "Macro Gun 1",
								List = tbl24,
								Default = { "M4A1" },
								Tooltip = "Slot 1 fallbacks. Uses the first of these you actually have (M4 or FAL, etc). Empty = skip slot.",
							})

							v113 = v99:CreateMultiDropdown({
								Name = "Macro Gun 2",
								List = tbl24,
								Default = { "Remington 870" },
								Tooltip = "Slot 2 fallbacks. Uses the first of these you actually have. Empty = skip slot.",
							})

							v114 = v99:CreateMultiDropdown({
								Name = "Macro Gun 3",
								List = tbl24,
								Default = {},
								Tooltip = "Slot 3 fallbacks. Leave empty to cycle only the other slots.",
							})

							v115 = v99:CreateSlider({
								Name = "Macro Burst",
								Min = v85[9],
								Max = 15,
								Default = 5,
								Suffix = " shots",
								Tooltip = "Shots per visit on rifles/SMG/pistols before swapping. Doze, M700 and Revolver always fire 1 and swap instantly.",
							})

							v106 = v99:CreateToggle({
								Name = "Combo Swap",
								Default = false,
								Function = function(arg)
									fn35(arg)
								end,
								Tooltip = "Primary until this target hits Health to swap, then Secondary to finish. Next guy uses Primary again if they are above the %.",
							})

							v107 = v99:CreateMultiDropdown({
								Name = "Combo Primary",
								List = tbl24,
								Default = { "M9" },
								Tooltip = "Guns used while target HP is above Health to swap. Uses whichever of these you have.",
							})

							v108 = v99:CreateMultiDropdown({
								Name = "Combo Secondary",
								List = tbl24,
								Default = { "Remington 870" },
								Tooltip = "Guns used after target HP reaches Health to swap. Uses whichever of these you have.",
							})

							v109 = v99:CreateSlider({
								Name = "Health to swap",
								Min = 0,
								Max = 100,
								Default = 80,
								Suffix = "%",
								Tooltip = "Switch to Secondary when target HP is at or below this %",
							})

							local v120 = fn31(v106, "pl_autoshoot_combo_swap", false)
							fn35(v120)
							local v121 = fn31(v111, "pl_autoshoot_auto_macro_gun", false)
							fn36(v121)
							table.insert(zenthraMain.Cleanups, fn98)
						end

						zenthraMain.Combat.AutoShoot()

						zenthraMain.Blatant.AntiInvisible = function()
							local v99 = nil
							local tbl23 = {}

							local tbl24 = {
								["http://www.roblox.com/asset/?id=125750702"] = true,
								["http://www.roblox.com/asset/?id=128777973"] = true,
								["http://www.roblox.com/asset/?id=128853357"] = true,
								["http://www.roblox.com/asset/?id=129423030"] = v85[129],
								["http://www.roblox.com/asset/?id=129423131"] = true,
								["http://www.roblox.com/asset/?id=129967390"] = v85[129],
								["http://www.roblox.com/asset/?id=129967478"] = v85[129],
								["http://www.roblox.com/asset/?id=178130996"] = true,
								["http://www.roblox.com/asset/?id=180426354"] = true,
								["http://www.roblox.com/asset/?id=180435571"] = v85[129],
								["http://www.roblox.com/asset/?id=180435792"] = true,
								["http://www.roblox.com/asset/?id=180436148"] = v85[129],
								["http://www.roblox.com/asset/?id=180436334"] = v85[129],
								["http://www.roblox.com/asset/?id=182393478"] = true,
								["http://www.roblox.com/asset/?id=182435998"] = true,
								["http://www.roblox.com/asset/?id=182436842"] = true,
								["http://www.roblox.com/asset/?id=182436935"] = v85[129],
								["http://www.roblox.com/asset/?id=182491037"] = true,
								["http://www.roblox.com/asset/?id=182491065"] = v85[129],
								["http://www.roblox.com/asset/?id=182491248"] = true,
								["http://www.roblox.com/asset/?id=182491277"] = true,
								["http://www.roblox.com/asset/?id=182491368"] = true,
								["http://www.roblox.com/asset/?id=182491423"] = true,
								["rbxassetid://279227693"] = true,
								["rbxassetid://279229192"] = true,
								["rbxassetid://287112271"] = v85[129],
								["rbxassetid://388723916"] = true,
								["rbxassetid://388726667"] = v85[129],
								["rbxassetid://389472570"] = true,
								["rbxassetid://405194080"] = true,
								["rbxassetid://405212265"] = v85[129],
								["rbxassetid://481088553"] = true,
								["rbxassetid://481089053"] = v85[129],
								["rbxassetid://484200742"] = true,
								["rbxassetid://484926359"] = true,
								["rbxassetid://83690472549256"] = v85[129],
								["rbxassetid://107176344504758"] = true,
								["rbxassetid://111090572475133"] = true,
								["rbxassetid://113267949064300"] = v85[129],
								["rbxassetid://131326339350805"] = true,
							}

							local function fn31(arg, arg2)
								if not tbl24[arg.Animation.AnimationId] and arg2 then
									if tbl23[arg] then
										task.cancel(tbl23[arg])
									end

									cheatFlags:Flag(arg2, "invalid animation", v85[145])

									tbl23[arg] = task.spawn(function()
										while true do
											arg:AdjustWeight(0, 0)
											task.wait(0.1)
											if arg.IsPlaying and v99.Enabled then
												continue
											end
											break
										end

										tbl23[arg] = nil
									end)
								end
							end

							local function fn32(arg)
								local animator = arg.Humanoid:WaitForChild("Animator", 5)

								if animator and v99.Enabled then
									v99:Clean(animator.AnimationPlayed:Connect(function(arg2)
										fn31(arg2, arg.Player)
									end))

									for _, v100 in animator:GetPlayingAnimationTracks() do
										task.spawn(fn31, v100, arg.Player)
									end
								end
							end

							for _, v100 in v90:QueryDescendants("Animation") do
								tbl24[v100.AnimationId] = v85[129]
							end

							v99 = zenthraMain.Categories.Blatant:CreateModule({
								Name = "AntiInvisible",
								Function = function(arg)
									if arg then
										v99:Clean(entity.Events.EntityAdded:Connect(fn32))

										for _, v100 in entity.List, nil, nil do
											task.spawn(fn32, v100)
										end
									else
										for _, v100 in tbl23, nil, nil do
											task.cancel(v100)
										end

										table.clear(tbl23)
									end
								end,
								Tooltip = "Prevent people from using animations outside of the game's scope",
							})
						end

						zenthraMain.Blatant.AntiInvisible()

						zenthraMain.Blatant.AntiKillPlane = function()
							local v99 = nil

							v99 = zenthraMain.Categories.Blatant:CreateModule({
								Name = "AntiKillPlane",
								Function = function(arg)
									if arg then
										v99:Clean(v94.Heartbeat:Connect(function()if  entity .isAlive then local t= entity .character.RootPart;local D=math.min(t.Position.Y,179.99)-t.Position.Y;if math.abs(D)>0 and t.AssemblyLinearVelocity.Y>0 then t.CFrame=t.CFrame+Vector3.new(0,D,0);t.AssemblyLinearVelocity=t.AssemblyLinearVelocity*Vector3.new(1,0,1);elseif math.abs(D)>0 then t.CFrame=t.CFrame+Vector3.new(0,D,0);end;end;end))
									end
								end,
								Tooltip = "Prevents you from touching the kill plane",
							})
						end

						zenthraMain.Blatant.AntiKillPlane()

						zenthraMain.Blatant.AntiRiotShield = function()
							local v99 = nil

							v99 = zenthraMain.Categories.Blatant:CreateModule({
								Name = "AntiRiotShield",
								Function = function(arg)
									if arg then
										while true do
											for _, v100 in entity.List, nil, nil do
												local riotShieldPart = v100.Character:FindFirstChild("RiotShieldPart")

												if riotShieldPart and riotShieldPart.CanQuery then
													riotShieldPart.CanQuery = false
												end
											end

											task.wait(0.2)
											if v99.Enabled then
												continue
											end
											break
										end
									else
										for _, v100 in entity.List, nil, nil do
											local riotShieldPart = v100.Character:FindFirstChild("RiotShieldPart")

											if riotShieldPart then
												riotShieldPart.CanQuery = v85[129]
											end
										end
									end
								end,
								Tooltip = "Allow you to shoot through riot shields.",
							})
						end

						zenthraMain.Blatant.AntiRiotShield()

						zenthraMain.Blatant.AntiTaze = function()
							local v99 = nil
							local v100 = nil
							local v101

							local function fn31()
								v100 = getconnections(v90.GunRemotes.PlayerTased.OnClientEvent)[1]

								if not (v100 and v100.Function) then
									while true do
										v100 = getconnections(v90.GunRemotes.PlayerTased.OnClientEvent)[1]
										task.wait()
										if not (v100 and v100.Function or not v101.Enabled) then
											continue
										end
										break
									end
								end

								if v100 and v101.Enabled then
									v99 = hookfunction(v100.Function, function()
										local character = localPlayer.Character
										localPlayer:SetAttribute("BackpackEnabled", false)

										if entity.isAlive then
											entity.character.Humanoid:UnequipTools()
										end

										task.wait(3.5)

										if localPlayer.Character == character then
											localPlayer:SetAttribute("BackpackEnabled", true)
										end
									end)
								end
							end

							v101 = zenthraMain.Categories.Blatant:CreateModule({
								Name = "AntiTaze",
								Function = function(arg)
									if arg then
										v101:Clean(entity.Events.LocalAdded:Connect(fn31))

										if entity.isAlive then
											task.spawn(fn31, entity.character)
										end
									elseif v99 and v100.Function then
										hookfunction(v100.Function, v99)
										v99 = nil
									end
								end,
								Tooltip = "Prevent you from getting tazed",
							})
						end

						zenthraMain.Blatant.AntiTaze()

						zenthraMain.Blatant.AutoArrest = function()
							local v99 = nil
							local v100 = nil
							local v101 = nil
							local v102 = nil
							local frame = nil
							local frame2 = nil
							local textLabel = nil
							local flag18 = false
							local arrestPlayer = v90:FindFirstChild("Remotes") and v90.Remotes:FindFirstChild("ArrestPlayer")

							local function fn31(arg)
								if not arg or arg == localPlayer then
									return v85[33]
								end

								if localPlayer.Team ~= v95.Guards then
									return v85[33]
								end
								local character = arg.Character
								if not character then
									return false
								end
								local humanoid = character:FindFirstChildOfClass("Humanoid")
								local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
								if not humanoid or humanoid.Health <= v85[4] or not humanoidRootPart then
									return false
								end

								if character:FindFirstChildOfClass("ForceField") then
									return false
								end

								if character:GetAttribute("Arrested") then
									return false
								end

								if arg.Team == v95.Criminals then
									return true
								end

								if arg.Team == v95.Inmates then
									local flag19 = character:GetAttribute("Hostile") == true
									local flag20 = character:GetAttribute("Trespassing") == true
									local flag21 = character:GetAttribute("Tased") == true
									if not flag19 then
										return flag20
									end
									return flag21
								end

								return false
							end

							local function fn32()
								return localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
							end

							local function fn33()
								return localPlayer:FindFirstChild("Backpack") or localPlayer:FindFirstChildWhichIsA("Backpack")
							end

							local function fn34()
								local character = localPlayer.Character
								if not character then
									return nil
								end
								return character:FindFirstChildWhichIsA("Tool")
							end

							local function fn35()
								local character = localPlayer.Character

								if character then
									local handcuffs = character:FindFirstChild("Handcuffs")
									if handcuffs and handcuffs:IsA("Tool") then
										return handcuffs, true
									end
								end

								local v103 = fn33()

								if v103 then
									local handcuffs = v103:FindFirstChild("Handcuffs")
									if handcuffs and handcuffs:IsA("Tool") then
										return handcuffs, v85[33]
									end
								end

								return nil, v85[33]
							end

							local function fn36(arg)
								if not arg or type(pl.SwitchTable) ~= "table" then
									return nil
								end

								for _, v103 in pairs(pl.SwitchTable) do
									if type(v103) == "table" and v103.Tool == arg then
										return v103
									end
								end

								for _, v103 in pairs(pl.SwitchTable) do
									if type(v103) == "table" and v103.Tool and v103.Tool.Name == arg.Name then
										return v103
									end
								end

								return nil
							end

							local function fn37(arg)
								if not arg or not arg.Button then
									return false
								end
								local flag19 = false

								for _, v103 in ipairs({ "MouseButton1Click", "Activated" }) do
									local v104 = arg.Button[v103]

									if typeof(v104) == "RBXScriptSignal" then
										for _, v105 in getconnections(v104) do
											if type(v105.Function) == "function" then
												local ok = pcall(v105.Function)
												flag19 = flag19 or ok
											elseif type(v105.Fire) == "function" then
												local ok = pcall(function()
													v105:Fire()
												end)

												flag19 = flag19 or ok
											end
										end
									end
								end

								return flag19
							end

							local function fn38(arg, arg2, arg3)
								local n = os.clock() + (arg3 or 0.5)

								while os.clock() < n do
									if arg and arg.Parent == arg2 then
										return true
									end
									task.wait(0.03)
								end

								return arg and arg.Parent == arg2
							end

							local function fn39(arg)
								if not arg then
									return false
								end
								local v103 = fn32()
								local v104 = fn33()
								local character = localPlayer.Character
								if not v103 or not v104 or not character or v103.Health <= v85[4] then
									return false
								end

								if arg.Parent == character then
									return true
								end

								if arg.Parent ~= v104 then
									pcall(function()
										arg.Parent = v104
									end)

									if not fn38(arg, v104, 0.35) then
										return false
									end
								end

								local v105 = fn36(arg)
								if v105 and fn37(v105) and fn38(arg, character, 0.6) then
									return true
								end

								pcall(function()
									v103:UnequipTools()
								end)

								task.wait(v85[163])

								if arg.Parent ~= v104 then
									pcall(function()
										arg.Parent = v104
									end)

									fn38(arg, v104, 0.25)
								end

								pcall(function()
									v103:EquipTool(arg)
								end)

								return fn38(arg, character, v85[41])
							end

							local function fn40()
								local v103 = fn32()
								local v104 = fn34()

								if v104 then
									local v105 = fn36(v104)

									if v105 and fn37(v105) then
										task.wait(0.05)
										if not fn34() then
											return true
										end
									end
								end

								if v103 then
									pcall(function()
										v103:UnequipTools()
									end)
								end

								task.wait(0.05)
								return fn34() == nil
							end

							local function fn41(arg)
								task.spawn(function()
									task.wait(0.05)

									if arg and arg.Parent then
										fn39(arg)
									else
										fn40()
									end
								end)
							end

							local function fn42(arg)
								local character = localPlayer.Character and localPlayer.Character:FindFirstChild(v85[120])
								if not character then
									return nil
								end
								local position = character.Position
								local v103 = nil

								for _, v104 in v88:GetPlayers() do
									if fn31(v104) then
										local humanoidRootPart = v104.Character and v104.Character:FindFirstChild("HumanoidRootPart")

										if humanoidRootPart then
											local magnitude = (humanoidRootPart.Position - position).Magnitude

											if magnitude <= arg then
												arg = magnitude
												v103 = v104
											end
										end
									end
								end

								return v103
							end

							local function fn43()
								if not frame then
									return
								end
								local n = now4 - os.clock()
								frame.Visible = n > 0

								if frame.Visible then
									local n33 = -v85[9]
									frame2.Size = UDim2.new(math.clamp(n / 7, v85[4], 1), n33, 1, -2)
									textLabel.Text = math.round(n * 10) / 10 .. "s"
								end
							end

							local function fn44(arg)
								local v103 = flag18
								local flag19

								if flag18 then
									flag19 = v103
								else
									flag19 = not arg
								end

								if flag19 or not arrestPlayer then
									return
								end
								flag18 = true

								task.spawn(function()
									local v104, v105 = fn35()
									if not v104 then
										flag18 = false
										return
									end
									local v106 = nil
									local flag20 = false

									if not v105 then
										if not v101.Enabled then
											flag18 = false
											return
										end
										v106 = fn34()

										if v106 and v106.Name == "Handcuffs" then
											v106 = nil
										end

										if not fn39(v104) then
											flag18 = v85[33]
											return
										end
										flag20 = true
									end

									if not fn31(arg) then
										flag20 = flag20 and v102

										if flag20 and v102.Enabled then
											fn41(v106)
										end

										flag18 = false
										return
									end

									local ok, result = pcall(function()
										return arrestPlayer:InvokeServer(arg, 1)
									end)

									if ok and result then
										now4 = os.clock() + 7
										zenthraMain.Events.Arrested:Fire()
										fn30("AutoArrest", "Arrested " .. arg.Name, 7)
									else
										now4 = os.clock() + 0.4
									end

									if flag20 and v102 and v102.Enabled then
										fn41(v106)
									end

									flag18 = false
								end)
							end

							v99 = zenthraMain.Categories.Blatant:CreateModule({
								Name = "AutoArrest",
								Function = function(arg)
									if arg then
										arrestPlayer = v90:FindFirstChild("Remotes") and v90.Remotes:FindFirstChild("ArrestPlayer")

										while true do
											if now4 < os.clock() and not flag18 and localPlayer.Team == v95.Guards then
												if fn35() then
													local v103 = fn42(v100.Value)

													if v103 then
														fn44(v103)
													end
												end
											end

											pcall(fn43)
											task.wait(v85[189])
											if v99.Enabled then
												continue
											end
											break
										end
									elseif frame then
										pcall(function()
											frame.Visible = v85[33]
										end)
									end
								end,
								Tooltip = "Cuffs criminals without a taser. Hostile inmates need Tased first. Non-hostile inmates only while Trespassing.",
							})

							v100 = v99:CreateSlider({
								Name = "Range",
								Min = v85[145],
								Max = 8,
								Default = 8,
								Suffix = function(arg)
									return arg == 1 and "stud" or "studs"
								end,
							})

							v101 = v99:CreateToggle({
								Name = "Auto Equip",
								Default = true,
								Tooltip = "Equip Handcuffs in-hand via the game hotbar before arresting",
							})

							v102 = v99:CreateToggle({
								Name = "Restore Previous",
								Default = true,
								Tooltip = "After arresting, re-equip what you had before (or unequip if you had nothing)",
							})

							v99:CreateToggle({
								Name = "Cooldown Bar",
								Function = function(arg)
									if arg then
										frame = Instance.new("Frame")
										frame.Visible = false
										frame.BorderSizePixel = 0
										frame.BackgroundTransparency = v85[147]
										frame.AnchorPoint = Vector2.new(0.5, v85[4])
										frame.BackgroundColor3 = Color3.new(1, v85[145], 1)
										frame.Size = UDim2.new(0.1, v85[4], v85[4], 5)
										frame.Position = UDim2.fromScale(v85[121], 0.55)
										frame.Parent = zenthraMain.gui.Host
										frame2 = Instance.new("Frame")
										frame2.BorderSizePixel = 0
										frame2.BackgroundTransparency = 0.3
										frame2.BackgroundColor3 = Color3.new(v85[145], 1, 1)
										frame2.Size = UDim2.new(1, -2, 1, -2)
										frame2.Position = UDim2.fromOffset(1, v85[145])
										frame2.Parent = frame
										textLabel = Instance.new("TextLabel")
										textLabel.Size = UDim2.new(1, 0, 0, 14)
										textLabel.Position = UDim2.fromOffset(0, v85[88])
										textLabel.BackgroundTransparency = 1
										textLabel.TextColor3 = Color3.new(1, 1, v85[145])
										textLabel.TextScaled = v85[129]
										textLabel.TextStrokeTransparency = 0
										textLabel.Font = Enum.Font.Arial
										textLabel.Parent = frame
									elseif frame then
										frame:Destroy()
										frame = nil
										frame2 = nil
										textLabel = nil
									end
								end,
								Tooltip = "Show the cooldown for arresting",
							})
						end

						zenthraMain.Blatant.AutoArrest()

						zenthraMain.Blatant.AutoReset = function()
							local v99 = nil

							v99 = zenthraMain.Categories.Blatant:CreateModule({
								Name = "AutoReset",
								Function = function(arg)
									if arg then
										v99:Clean(localPlayer:GetPropertyChangedSignal("Team"):Connect(function()
											if localPlayer.Team == v95.Criminals and entity.isAlive then
												entity.character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
											end
										end))
									end
								end,
								Tooltip = "Automatically reset after becoming a criminal.",
							})
						end

						zenthraMain.Blatant.AutoReset()

						zenthraMain.Blatant.AutoTaser = function()
							local v99 = nil
							local v100 = nil
							local n = 0
							local flag18 = v85[33]
							local raycastParams = RaycastParams.new()
							raycastParams.CollisionGroup = "ClientBullet"
							raycastParams.FilterType = Enum.RaycastFilterType.Exclude

							local function fn31()
								return localPlayer.Character and localPlayer.Character:FindFirstChildOfClass(v85[21])
							end

							local function fn32()
								return localPlayer:FindFirstChild("Backpack") or localPlayer:FindFirstChildWhichIsA("Backpack")
							end

							local function fn33()
								local character = localPlayer.Character
								return character and character:FindFirstChildWhichIsA("Tool")
							end

							local function fn34()
								local character = localPlayer.Character

								if character then
									local taser = character:FindFirstChild("Taser")
									if taser and taser:IsA("Tool") then
										return taser, true
									end
								end

								local v101 = fn32()

								if v101 then
									local taser = v101:FindFirstChild("Taser")
									if taser and taser:IsA("Tool") then
										return taser, false
									end
								end

								return nil, false
							end

							local function fn35(arg)
								return tonumber(arg and arg:GetAttribute("Range")) or v85[135]
							end

							local function fn36(arg)
								if not arg then
									return 0
								end

								if type(zenthraMain.Game.SyncGunAmmo) == "function" then
									pcall(zenthraMain.Game.SyncGunAmmo, arg)
								end

								local num = tonumber(arg:GetAttribute("Local_CurrentAmmo"))
								local num2 = tonumber(arg:GetAttribute("CurrentAmmo"))
								if num ~= nil and num2 ~= nil then
									return math.max(v85[4], math.min(num, num2))
								end
								return num2 or num or 0
							end

							local function fn37(arg)
								if not arg then
									return false
								end
								local v101 = v85[129]
								if arg:GetAttribute("IsReloading") == v101 then
									return false
								end
								local attribute = arg:GetAttribute("Local_ReloadSession")
								if attribute ~= nil and attribute ~= 0 then
									return false
								end

								if arg:GetAttribute("Local_IsShooting") then
									return v85[33]
								end
								return fn36(arg) > 0
							end

							local function fn38(arg)
								if localPlayer.Team ~= v95.Guards or not arg or arg == localPlayer then
									return v85[33]
								end

								if arg.Team ~= v95.Inmates and arg.Team ~= v95.Criminals then
									return false
								end
								local character = arg.Character
								if not character then
									return false
								end
								local v101 = character:FindFirstChildOfClass(v85[21])
								if not v101 or v101.Health <= 0 then
									return false
								end

								if character:FindFirstChildOfClass("ForceField") then
									return false
								end

								if character:GetAttribute("Arrested") then
									return false
								end

								if character:GetAttribute("Tased") == true then
									return v85[33]
								end

								if arg.Team == v95.Criminals then
									local autoArrest = zenthraMain.Categories.Blatant.Modules and zenthraMain.Categories.Blatant.Modules.AutoArrest

									if autoArrest and autoArrest.Enabled then
										local range = autoArrest.Options and autoArrest.Options.Range
										local flag19 = range and type(range.Value) == "number"
										local n33 = 8

										if flag19 then
											n33 = range.Value
										end

										local humanoidRootPart = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
										local humanoidRootPart2 = character:FindFirstChild("HumanoidRootPart")
										if humanoidRootPart and humanoidRootPart2 and (humanoidRootPart.Position - humanoidRootPart2.Position).Magnitude <= n33 then
											return false
										end
									end

									return true
								end

								return character:GetAttribute(v85[119]) == true
							end

							local function fn39(arg, arg2, arg3)
								if not arg or not arg2 or not arg3 then
									return false
								end
								raycastParams.FilterDescendantsInstances = { localPlayer.Character }
								local n33 = arg2.Position - arg
								if n33.Magnitude < 0.05 then
									return true
								end
								local hit = workspace:Raycast(arg, n33, raycastParams)
								if not hit then
									return v85[129]
								end
								return hit.Instance ~= nil and hit.Instance:IsDescendantOf(arg3)
							end

							local function fn40(arg, arg2, arg3)
								local v101 = nil

								for _, v102 in ipairs({ "Head", "Torso", "UpperTorso", v85[120] }) do
									local v103 = arg:FindFirstChild(v102)

									if v103 and v103:IsA("BasePart") then
										if not ((v103.Position - arg2).Magnitude <= arg3) then
											continue
										end

										if fn39(arg2, v103, arg) then
											return v103
										end
										v101 = v101 or v103
									end
								end

								return nil
							end

							local function fn41(arg)
								local character = localPlayer.Character
								local head = character and (character:FindFirstChild("Head") or character:FindFirstChild("HumanoidRootPart"))
								head = head and head.Position
								if not head then
									return nil, nil
								end
								local flag19 = v100 and v100.Value == "Farthest"
								local v101 = nil
								local v102 = nil
								local v103 = nil

								for _, v104 in v88:GetPlayers() do
									if fn38(v104) then
										local character2 = v104.Character
										local v105 = character2 and fn40(character2, head, arg)

										if v105 then
											local magnitude = (v105.Position - head).Magnitude

											if not v101 or flag19 and magnitude > v101 or not flag19 and magnitude < v101 then
												v101 = magnitude
												v102 = v104
												v103 = v105
											end
										end
									end
								end

								return v102, v103
							end

							local function fn42(arg)
								local flag19 = not arg

								if not flag19 then
									local v101 = v85[71]
									flag19 = type(pl.SwitchTable) ~= v101
								end

								if flag19 then
									return nil
								end

								for _, v101 in pairs(pl.SwitchTable) do
									if type(v101) == "table" and v101.Tool == arg then
										return v101
									end
								end

								for _, v101 in pairs(pl.SwitchTable) do
									if type(v101) == "table" and v101.Tool and v101.Tool.Name == arg.Name then
										return v101
									end
								end

								return nil
							end

							local function fn43(arg)
								if not arg or not arg.Button then
									return v85[33]
								end
								local flag19 = false

								for _, v101 in ipairs({ "MouseButton1Click", "Activated" }) do
									local v102 = arg.Button[v101]

									if typeof(v102) == "RBXScriptSignal" then
										for _, v103 in getconnections(v102) do
											local v104 = v85[143]

											if type(v103.Function) == v104 then
												flag19 = pcall(v103.Function) or flag19
											else
												local v105 = v85[143]

												if type(v103.Fire) == v105 then
													flag19 = pcall(function()
														v103:Fire()
													end) or flag19
												end
											end
										end
									end
								end

								return flag19
							end

							local function fn44(arg, arg2, arg3)
								local n33 = os.clock() + (arg3 or 0.5)

								while os.clock() < n33 do
									if arg and arg.Parent == arg2 then
										return true
									end
									task.wait()
								end

								return arg and arg.Parent == arg2
							end

							local function fn45(arg)
								if not arg then
									return false
								end
								local v101 = fn31()
								local v102 = fn32()
								local character = localPlayer.Character
								if not v101 or not v102 or not character or v101.Health <= v85[4] then
									return false
								end

								if arg.Parent == character then
									return true
								end

								if arg.Parent ~= v102 then
									pcall(function()
										arg.Parent = v102
									end)

									if not fn44(arg, v102, 0.35) then
										return false
									end
								end

								local v103 = fn42(arg)
								if v103 and fn43(v103) and fn44(arg, character, v85[159]) then
									return true
								end

								pcall(function()
									v101:UnequipTools()
								end)

								task.wait(0.04)

								if arg.Parent ~= v102 then
									pcall(function()
										arg.Parent = v102
									end)

									fn44(arg, v102, 0.25)
								end

								pcall(function()
									v101:EquipTool(arg)
								end)

								return fn44(arg, character, 0.55)
							end

							local function fn46()
								local v101 = fn33()

								if v101 then
									local v102 = fn42(v101)

									if v102 and fn43(v102) then
										task.wait(0.04)
										if not fn33() then
											return true
										end
									end
								end

								local v102 = fn31()

								if v102 then
									pcall(function()
										v102:UnequipTools()
									end)
								end

								task.wait(0.04)
								return fn33() == nil
							end

							local function fn47()
								return pl and pl.Shoot
							end

							local function fn48(arg)
								local v101 = arg or fn47()
								if type(v101) ~= "function" then
									return nil
								end
								local ok, result = pcall(debug.getupvalue, v101, 1)
								if ok and typeof(result) == "Instance" then
									return result
								end
								return nil
							end

							local function fn49(arg)
								local zenthraPlSa = (getgenv and getgenv() or _G).__ZENTHRA_PL_SA
								if type(zenthraPlSa) == "table" and type(zenthraPlSa.oldCastRay) == "function" then
									return zenthraPlSa.oldCastRay
								end
								local flag19 = pl

								if pl then
									local v101 = v85[143]
									flag19 = type(pl.Bullet) == v101
								end

								if flag19 then
									return pl.Bullet
								end
								local v101 = v85[143]

								if type(arg) == v101 then
									local ok, result = pcall(debug.getupvalue, arg, v85[47])
									if ok and type(result) == "function" then
										return result
									end
								end

								return nil
							end

							local function fn50(arg)
								if not arg then
									if not flag2 then
										return
									end
									return false
								end

								if fn48() == arg then
									return true
								end
								local v101 = v85[143]

								if type(pl.Equip) == v101 then
									pcall(pl.Equip, arg)
								end

								local v102 = v85[182]
								local n33 = os.clock() + v102

								while os.clock() < n33 do
									if fn48() == arg then
										return true
									end
									task.wait()
								end

								return fn48() == arg
							end

							local function fn51(arg)
								if not arg then
									return false
								end

								if v85[4] < fn36(arg) then
									return true
								end

								if not fn50(arg) then
									return false
								end

								if arg:GetAttribute("Local_ReloadSession") == nil then
									pcall(arg.SetAttribute, arg, "Local_ReloadSession", v85[4])
								end

								local attribute = arg:GetAttribute("Local_ReloadSession")
								if attribute ~= nil and attribute ~= 0 then
									return true
								end
								local v101 = pl
								local reload

								if pl then
									reload = pl.Reload
								else
									reload = v101
								end

								if type(reload) ~= "function" then
									return false
								end

								task.spawn(function()
									pcall(reload)
								end)

								return true
							end

							local v101

							local function fn52(arg)
								if not arg then
									return v85[33]
								end

								if v85[4] < fn36(arg) then
									return true
								end
								fn51(arg)
								local n33 = tonumber(arg:GetAttribute("ReloadTime")) or 3.4
								local n34 = os.clock() + n33 + 0.5

								while os.clock() < n34 and v101.Enabled do
									if v85[4] < fn36(arg) then
										local attribute = arg:GetAttribute("Local_ReloadSession")
										if attribute == nil or attribute == 0 then
											return v85[129]
										end
									end

									if fn48() ~= arg then
										fn50(arg)
									end

									task.wait(0.05)
								end

								return fn36(arg) > 0
							end

							local function fn53(arg, arg2)
								local v102 = fn47()
								if type(v102) ~= "function" or not fn50(arg) then
									return false
								end
								local ok, result = pcall(debug.getupvalue, v102, v85[127])
								local v103 = fn49(v102)
								if typeof(result) ~= "Instance" or type(v103) ~= "function" then
									return false
								end
								local character = localPlayer.Character
								character = character and character:FindFirstChild("Head")
								local parent = arg2 and arg2.Parent
								if not character or not parent then
									return false
								end
								local position = character.Position
								local position2 = arg2.Position
								local v104, v105 = v103(position, position2, 0)

								if typeof(v105) ~= "Vector3" then
									v105 = position2
								end

								if v104 and not v104:IsDescendantOf(parent) then
									return v85[33]
								end
								v104 = v104 or arg2
								local v106 = fn36(arg)
								if v106 <= 0 then
									return false
								end
								pcall(arg.SetAttribute, arg, "Local_IsShooting", true)
								pcall(arg.SetAttribute, arg, "Local_ShootStamp", os.clock())

								if not pcall(function()
									result:FireServer({ { position, v105, v104 } })
								end) then
									pcall(arg.SetAttribute, arg, "Local_IsShooting", false)
									return v85[33]
								end

								pcall(function()
									if type(pl.PlaySound) == "function" then
										pl.PlaySound("ShootSound")
									end

									local gunTracers = pl and pl.GunTracers

									if gunTracers and type(gunTracers.createTaser) == "function" then
										local muzzle = arg:FindFirstChild("Muzzle")
										gunTracers.createTaser(muzzle and muzzle.Position or position, v105)
									end
								end)

								pcall(arg.SetAttribute, arg, "Local_CurrentAmmo", math.max(v106 - 1, 0))

								task.delay(0.12, function()
									pcall(arg.SetAttribute, arg, "Local_IsShooting", false)
								end)

								return true
							end

							local function fn54(arg)
								task.spawn(function()
									task.wait(0.08)

									if arg and arg.Parent then
										fn45(arg)
									else
										fn46()
									end

									if type(zenthraMain.Game.RepairGunState) == "function" then
										pcall(zenthraMain.Game.RepairGunState)
									end
								end)
							end

							local function fn55()
								if flag18 or localPlayer.Team ~= v95.Guards then
									return
								end
								local v102, v103 = fn34()
								if not v102 then
									return
								end
								local attribute = v102:GetAttribute("Local_ReloadSession")
								local flag19 = v102:GetAttribute("IsReloading") == true
								local flag20

								if flag19 then
									flag20 = flag19
								else
									flag20 = attribute ~= nil and attribute ~= v85[4]
								end

								if flag20 then
									return
								end

								if v102:GetAttribute("Local_IsShooting") then
									return
								end
								local flag21 = fn36(v102) > 0
								local v104 = nil
								local v105 = nil

								if flag21 then
									v104, v105 = fn41(fn35(v102))
								end

								if flag21 and not (flag21 and v104 ~= nil and v105 ~= nil) then
									return
								end
								local flag22 = not v103

								if flag22 then
									flag22 = not (v99 and v99.Enabled)
								end

								if flag22 then
									return
								end
								flag18 = v85[129]

								task.spawn(function()
									local v106 = nil
									local flag23 = false

									if v102.Parent ~= localPlayer.Character then
										v106 = fn33()

										if v106 and v106.Name == "Taser" then
											v106 = nil
										end

										if not fn45(v102) then
											flag18 = v85[33]
											return
										end
										task.wait(0.08)
										flag23 = true
									end

									if fn36(v102) <= 0 then
										fn52(v102)
									end

									if v101.Enabled and fn37(v102) then
										if not (v104 and v105 and v105.Parent) then
											local v107, v108 = fn41(fn35(v102))
											v104 = v107
											v105 = v108
										end

										if v104 and v105 and fn38(v104) and v105.Parent then
											if fn53(v102, v105) then
												pcall(v102.SetAttribute, v102, "Local_IsShooting", v85[33])
												task.wait(0.12)
												fn52(v102)
											end
										end
									end

									if flag23 then
										fn54(v106)
									end

									flag18 = false
								end)
							end

							v101 = zenthraMain.Categories.Blatant:CreateModule({
								Name = "AutoTaser",
								Function = function(arg)
									if arg then
										n += v85[145]
										local v102 = n

										task.spawn(function()
											while v101.Enabled and n == v102 do
												pcall(fn55)
												task.wait(0.1)
											end
										end)
									else
										n += 1
										flag18 = false
									end
								end,
								Tooltip = "Shoots hostile inmates (needed to cuff) and criminals at range. Does not wait to cuff criminals — AutoArrest still cuffs them without tase.",
							})

							v100 = v101:CreateDropdown({
								Name = "Target",
								List = { "Closest", "Farthest" },
								Default = "Closest",
								Tooltip = "Shoot the nearest or farthest valid target in taser range",
							})

							v99 = v101:CreateToggle({
								Name = "Auto Equip",
								Default = true,
								Tooltip = "Equip the taser, fire, wait for the reload, then put back what you had in your hand",
							})
						end

						zenthraMain.Blatant.AutoTaser()

						zenthraMain.Blatant.FenceGodmode = function()
							zenthraMain.Categories.Blatant:CreateModule({
								Name = "FenceGodmode",
								Function = function(arg)
									for _, v99 in workspace.Prison_Fences:QueryDescendants("BasePart:has(> TouchTransmitter)") do
										v99.CanTouch = not arg
									end
								end,
								Tooltip = "Ignore damage from standing ontop of fences.",
							})
						end

						zenthraMain.Blatant.FenceGodmode()

						zenthraMain.Gun.GunModifications = function()
							local v99 = nil
							local v100 = nil
							local v101 = nil
							local v102 = nil
							local tbl23 = {}
							local v103 = nil

							local function fn31()
								if not (v99 and v100 and v101 and v102) then
									return
								end
								local v104 = debug.getupvalue(v96 or pl.Shoot, 10)

								if v104 and v99.Enabled then
									if v103 ~= v104 then
										tbl23 = table.clone(v104)
										v103 = v104
									end

									v104.SpreadRadius = v100.Enabled and 0 or tbl23.SpreadRadius
									v104.FireRate = (tbl23.FireRate or 0) * v101.Value / 100
									v104.AutoFire = v102.Enabled or tbl23.AutoFire
								end
							end

							v99 = zenthraMain.Categories.Gun:CreateModule({
								Name = "GunModifications",
								Function = function(arg)
									if arg then
										v97 = hookfunction(pl.Equip, function(...)
											local v104 = table.pack(v97(...))
											fn31()
											return unpack(v104, 1, v104.n)
										end)

										fn31()
									else
										if v97 then
											if restorefunction then
												restorefunction(pl.Equip)
											else
												v97 = nil
											end
										end

										if v103 then
											for k, v104 in tbl23, nil, nil do
												v103[k] = v104
											end

											table.clear(tbl23)
											v103 = nil
										end
									end
								end,
								Tooltip = "Apply various modifications to enhance any firearm",
							})

							v101 = v99:CreateSlider({
								Name = "FireRate Multiplier",
								Min = 1,
								Max = v85[101],
								Default = 100,
								Suffix = "%",
								Function = fn31,
							})

							v100 = v99:CreateToggle({ Name = "No Spread", Function = fn31 })
							v102 = v99:CreateToggle({ Name = "Full Automatic", Function = fn31 })
						end

						zenthraMain.Gun.GunModifications()

						zenthraMain.Blatant.NoJumpCooldown = function()
							local v99 = nil
							local v100 = nil

							local function fn31(arg)
								local v101 = v85[145]
								v100 = getconnections(arg.Humanoid:GetPropertyChangedSignal("Jump"))[v101]

								if not v100 then
									while true do
										v100 = getconnections(arg.Humanoid:GetPropertyChangedSignal("Jump"))[1]
										task.wait()
										local v102 = v100
										local flag18

										if v100 then
											flag18 = v102
										else
											flag18 = not v99.Enabled
										end

										if not flag18 then
											continue
										end
										break
									end

									if not v99.Enabled then
										return
									end
								end

								if v100 then
									v100:Disable()
								end
							end

							v99 = zenthraMain.Categories.Blatant:CreateModule({
								Name = "NoJumpCooldown",
								Function = function(arg)
									if arg then
										v99:Clean(entity.Events.LocalAdded:Connect(fn31))

										if entity.isAlive then
											task.spawn(fn31, entity.character)
										end
									elseif v100 then
										v100:Enable()
										v100 = nil
									end
								end,
								Tooltip = "Remove the stamina cooldown from jumping",
							})
						end

						zenthraMain.Blatant.NoJumpCooldown()

						zenthraMain.Blatant.VehicleFly = function()
							local v99 = nil
							local v100 = nil
							local n33 = 0
							local n34 = 0
							local v101 = nil
							local v102 = nil
							local tbl23 = {}
							local tbl24 = {}

							local function fn31(arg)
								local carContainer = workspace:FindFirstChild("CarContainer")
								if not arg or not carContainer or not arg:IsDescendantOf(carContainer) then
									return nil
								end

								while arg and arg.Parent and arg.Parent ~= carContainer do
									arg = arg.Parent
								end

								if arg and arg:IsA("Model") and arg.Parent == carContainer then
									return arg
								end
								return nil
							end

							local n35 = 0

							local function fn32()
								for k, v103 in pairs(tbl24) do
									if k and k.Parent then
										pcall(function()
											k.Enabled = v103
										end)
									end
								end

								table.clear(tbl24)
								table.clear(tbl23)
								v101 = nil
								v102 = nil
								n35 = v85[4]
							end

							local function fn33(arg, arg2)
								local vector = Vector3.new(arg.X, 0, arg.Z)
								if vector.Magnitude > 0.001 then
									return vector.Unit
								end

								if arg2 then
									local vector2 = Vector3.new(arg2.X, 0, arg2.Z)
									if vector2.Magnitude > 0.001 then
										return vector2.Unit
									end
								end

								return Vector3.new(v85[4], 0, -1)
							end

							local function fn34(arg)
								for k, v103 in pairs(tbl23) do
									if k and k.Parent then
										k.CFrame = arg * v103
										k.AssemblyLinearVelocity = Vector3.zero
										k.AssemblyAngularVelocity = Vector3.zero
									end
								end
							end

							local function fn35(arg, arg2)
								fn32()
								v102 = arg
								v101 = arg
								n35 = 3
								local wheels = arg2:FindFirstChild("Wheels")

								if wheels then
									local ok, result = pcall(function()
										return wheels:QueryDescendants("Rotate")
									end)

									if ok then
										local v103 = v85[71]
										ok = type(result) == v103
									end

									if ok then
										for _, v103 in result, nil, nil do
											tbl24[v103] = v103.Enabled

											pcall(function()
												v103.Enabled = v85[33]
											end)
										end
									end
								end

								for _, v103 in arg2:GetDescendants() do
									if (v103.Name == "Rotate" or v103:IsA("HingeConstraint")) and tbl24[v103] == nil then
										tbl24[v103] = v103.Enabled

										pcall(function()
											v103.Enabled = false
										end)
									end
								end

								local cframe = CFrame.lookAt(arg.Position, arg.Position + fn33(arg.CFrame.LookVector, currentCamera.CFrame.LookVector))
								local cFrame = arg.CFrame

								for _, v103 in arg2:GetDescendants() do
									if v103:IsA("BasePart") then
										tbl23[v103] = cFrame:ToObjectSpace(v103.CFrame)
									end
								end

								fn34(cframe)
								table.clear(tbl23)
								local cFrame2 = arg.CFrame

								for _, v103 in arg2:GetDescendants() do
									if v103:IsA("BasePart") then
										tbl23[v103] = cFrame2:ToObjectSpace(v103.CFrame)
									end
								end
							end

							local function fn36()
								local cFrame = currentCamera.CFrame
								local lookVector = cFrame.LookVector
								local v103 = fn33(cFrame.RightVector, lookVector:Cross(Vector3.yAxis))
								local vector = Vector3.zero

								if not v89:GetFocusedTextBox() then
									if v89:IsKeyDown(Enum.KeyCode.W) then
										vector += lookVector
									end

									if v89:IsKeyDown(Enum.KeyCode.S) then
										vector -= lookVector
									end

									if v89:IsKeyDown(Enum.KeyCode.A) then
										vector -= v103
									end

									if v89:IsKeyDown(Enum.KeyCode.D) then
										vector += v103
									end
								end

								local n = vector + Vector3.new(0, n33 + n34, 0)
								if n.Magnitude > 0.001 then
									return n.Unit
								end
								return Vector3.zero
							end

							v100 = zenthraMain.Categories.Blatant:CreateModule({
								Name = "Vehicle Fly",
								Function = function(arg)
									if arg then
										n33 = 0
										n34 = 0

										for _, v103 in ipairs({ "InputBegan", "InputEnded" }) do
											v99:Clean(v89[v103]:Connect(function(arg2)
												if v89:GetFocusedTextBox() then
													return
												end

												if arg2.KeyCode == Enum.KeyCode.E then
													n33 = v103 == "InputBegan" and 1 or 0
												elseif arg2.KeyCode == Enum.KeyCode.Q then
													n34 = v103 == "InputBegan" and -1 or 0
												end
											end))
										end

										v99:Clean(v94.PreSimulation:Connect(function(t)t=math.clamp(t or 0,0,0.05);if not  entity .isAlive then if  v101 then  fn32 ();end;return;end;local I,J= entity .character.Humanoid, entity .character.RootPart;local G=I and I.SeatPart;if not G or not J then if  v101 then  fn32 ();end;return;end;local n= fn31 (G);if not n then if  v101 then  fn32 ();end;return;end;if G~= v101 or not  v102 or not  v102 .Parent then  fn35 (G,n);end;if not  v102 or not  v102 .Parent then return;end;pcall(function()if  v102 :IsA("VehicleSeat")then  v102 .Throttle=0; v102 .ThrottleFloat=0; v102 .Steer=0; v102 .SteerFloat=0;end;end);n= fn33 ( currentCamera .CFrame.LookVector, v102 .CFrame.LookVector);G= fn36 ();if G.Magnitude<0.001 then local O=I.MoveDirection;if O.Magnitude>0.001 or  n33 ~=0 or  n34 ~=0 then G=O+Vector3.new(0, n33 + n34 ,0);G=if G.Magnitude>0.001 then G.Unit else G;end;end;local O= v102 .Position;if  n35 >0 then  n35 -=1;else O+=G* v100 .Value*t;end; fn34 ((CFrame.lookAt(O,O+n)));J.AssemblyLinearVelocity=Vector3.zero;J.AssemblyAngularVelocity=Vector3.zero; currentCamera .CameraSubject=I;end))
									else
										fn32()
										n33 = 0
										n34 = 0
									end
								end,
								Tooltip = "CFrame vehicle fly while seated — camera direction, E up / Q down",
							}):CreateSlider({ Name = "Speed", Min = 1, Max = 500, Default = 60 })
						end

						zenthraMain.Blatant.VehicleFly()

						zenthraMain.Blatant.VehicleMods = function()
							local v99 = nil
							local v100 = nil
							local v101 = nil
							local v102 = nil
							local tbl23 = {}
							local tbl24 = {}

							local function fn31(arg)
								table.clear(tbl23)
								if not arg or not arg:IsDescendantOf(workspace.CarContainer) then
									return
								end

								local ok, result = pcall(function()
									return arg.Parent.Parent:QueryDescendants("VehicleSeat")
								end)

								if not ok or type(result) ~= "table" then
									return
								end

								for _, v103 in result, nil, nil do
									table.insert(tbl23, v103)

									if tbl24[v103] == nil then
										local num = tonumber(v103.Torque) or v85[4]
										tbl24[v103] = num > 0 and num or 4
									end
								end
							end

							v99 = zenthraMain.Categories.Blatant:CreateModule({
								Name = "Vehicle Modifications",
								Function = function(arg)
									if arg then
										while true do
											local seatPart = entity.isAlive and entity.character.Humanoid.SeatPart

											if seatPart then
												if seatPart ~= v102 then
													fn31(seatPart)
													v102 = seatPart
												end

												local n = v101 and v101.Value or 1

												for _, v103 in tbl23, nil, nil do
													if v103 and v103.Parent then
														local maxSpeed = v100.Value
														local torque = (tbl24[v103] or 4) * n

														if v103.MaxSpeed ~= maxSpeed then
															v103.MaxSpeed = maxSpeed
														end

														if v103.Torque ~= torque then
															v103.Torque = torque
														end
													end
												end
											else
												v102 = nil
												table.clear(tbl23)
											end

											task.wait(0.1)
											if v99.Enabled then
												continue
											end
											break
										end
									else
										v102 = nil
										table.clear(tbl23)
										table.clear(tbl24)
									end
								end,
								Tooltip = "Modify vehicle speed and acceleration",
							})

							v100 = v99:CreateSlider({ Name = "Speed", Min = 80, Max = 400, Default = 140 })
							v101 = v99:CreateSlider({ Name = "Acceleration Multiplier", Min = 1, Max = 10, Default = v85[145], Decimal = 10 })
						end

						zenthraMain.Blatant.VehicleMods()

						zenthraMain.Blatant.VehicleWallbang = function()
							local v99 = nil
							local tbl23 = {}

							local function fn31(descendant)
								if descendant:IsA("BasePart") then
									if not tbl23[descendant] then
										tbl23[descendant] = descendant.CanQuery
									end

									descendant.CanQuery = false
								end
							end

							v99 = zenthraMain.Categories.Blatant:CreateModule({
								Name = "VehicleWallbang",
								Function = function(arg)
									if arg then
										v99:Clean(workspace.CarContainer.DescendantAdded:Connect(fn31))

										for _, v100 in workspace.CarContainer:QueryDescendants("BasePart") do
											fn31(v100)
										end
									else
										for k, v100 in tbl23, nil, nil do
											k.CanQuery = v100
										end

										table.clear(tbl23)
									end
								end,
								Tooltip = "Allow you to shoot through vehicles.",
							})
						end

						zenthraMain.Blatant.VehicleWallbang()

						zenthraMain.Gun.AutoArmor = function()
							local v99 = nil
							local tbl23 = {}

							v99 = zenthraMain.Categories.Gun:CreateModule({
								Name = "AutoArmor",
								Function = function(arg)
									if arg then
										local prisonItems = workspace:FindFirstChild("Prison_ITEMS")
										prisonItems = prisonItems and prisonItems:FindFirstChild("clothes")
										if not prisonItems then
											fn30("AutoArmor", "Prison_ITEMS.clothes missing", v85[128], "warning")
											return
										end
										tbl23 = prisonItems:GetChildren()

										v99:Clean(prisonItems.ChildAdded:Connect(function(child)
											table.insert(tbl23, child)
										end))

										v99:Clean(prisonItems.ChildRemoved:Connect(function(child)
											local v100 = table.find(tbl23, child)

											if v100 then
												table.remove(tbl23, v100)
											end
										end))

										while true do
											if entity.isAlive and entity.character.Humanoid.MaxHealth <= 100 then
												local position = entity.character.RootPart.Position

												for _, v100 in tbl23, nil, nil do
													if (v100:GetPivot().Position - position).Magnitude < 10 and tbl22[v100:GetAttribute("RequiredGamepass")] and v99.Enabled then
														local flag18 = v100.Name == "Light Vest"
														local v101

														if flag18 then
															v101 = tbl22[localPlayer.Team == v95.Criminals and "Mafia" or v85[5]]
														else
															v101 = flag18
														end

														if not v101 then
															v90.Remotes.InteractWithItem:InvokeServer(v100:FindFirstChildWhichIsA("BasePart"))
														end
													end
												end
											end

											task.wait(0.1)
											if v99.Enabled then
												continue
											end
											break
										end
									else
										table.clear(tbl23)
									end
								end,
								Tooltip = "Automatically equip armor from the wall.",
							})
						end

						zenthraMain.Gun.AutoArmor()

						zenthraMain.Gun.AutoHeal = function()
							local v99 = nil
							local tbl23 = { Breakfast = true, Lunch = v85[129], Dinner = v85[129] }

							v99 = zenthraMain.Categories.Gun:CreateModule({
								Name = "AutoHeal",
								Function = function(arg)
									if arg then
										while true do
											local character = entity.isAlive and entity.character

											if character and character.Humanoid.Health <= 85 then
												local backpack = localPlayer:FindFirstChildWhichIsA("Backpack")

												if backpack then
													local v100 = nil

													for _, v101 in backpack:GetChildren() do
														if tbl23[v101.Name] then
															v100 = v101
														end
													end

													local flag18

													if v100 then
														flag18 = os.clock() - (v100:GetAttribute("Client_LastConsumedAt") or 0) >= 3
													else
														flag18 = v100
													end

													if flag18 then
														local tool = character.Character:FindFirstChildWhichIsA("Tool")

														if tool then
															tool.Parent = backpack
														end

														v100.Parent = character.Character
														v100:SetAttribute("Quantity", v100:GetAttribute("Quantity") - 1)
														v100:SetAttribute("Client_LastConsumedAt", os.clock())
														local v101 = v85[128]
														fn30("AutoHeal", "Quantity: " .. v100:GetAttribute("Quantity"), v101)
														v90.Remotes.EatFood:FireServer()
														v100.Parent = backpack

														if tool then
															tool.Parent = character.Character
														end
													end
												end
											end

											task.wait(0.1)
											if v99.Enabled then
												continue
											end
											break
										end
									end
								end,
								Tooltip = "Automatically heal damage with consumables.",
							})
						end

						zenthraMain.Gun.AutoHeal()

						zenthraMain.Gun.AutoHotbar = function()
							local v99 = nil
							local tbl23 = {}
							local tbl24 = {}

							local tbl25 = {
								"AK-47",
								"M4A1",
								"MP5",
								"FAL",
								"Remington 870",
								"M700",
								"M9",
								"Revolver",
								"Taser",
								"Handcuffs",
								"Keycard",
								"Crude Knife",
								"Hammer",
								"Riot Shield",
								"C4 Explosive",
								"Light Vest",
								"Breakfast",
								"Lunch",
								"Dinner",
							}

							local function fn31(arg)
								arg = arg and arg.Value
								local tbl26 = {}

								if type(arg) == "string" then
									if arg ~= "" and arg ~= "None" then
										tbl26[arg] = v85[129]
									end
								elseif type(arg) == "table" then
									if #arg > 0 then
										for _, v100 in ipairs(arg) do
											if type(v100) == "string" and v100 ~= "" and v100 ~= "None" then
												tbl26[v100] = true
											end
										end
									else
										for k, v100 in pairs(arg) do
											v100 = v100 and type(k) == "string" and k ~= v85[141]

											if v100 then
												tbl26[k] = true
											end
										end
									end
								end

								local tbl27 = {}

								for _, v100 in tbl25, nil, nil do
									if tbl26[v100] then
										table.insert(tbl27, v100)
									end
								end

								return tbl27
							end

							local function fn32()
								table.clear(tbl24)

								for i, v100 in ipairs(tbl23) do
									for _, v101 in ipairs(fn31(v100)) do
										if tbl24[v101] == nil then
											tbl24[v101] = i
										end
									end
								end
							end

							local function fn33()
								fn32()
								local flag18 = type(pl.SwitchTable) ~= "table"

								if not flag18 then
									local v100 = v85[143]
									flag18 = type(pl.SwitchUpdate) ~= v100
								end

								if flag18 then
									return
								end

								table.sort(pl.SwitchTable, function(arg, arg2)
									local name = arg and arg.Tool and arg.Tool.name
									local name2 = arg2 and arg2.Tool and arg2.Tool.name
									local n = tbl24[name]

									if not n then
										n = 999 + (arg and arg.Slot or 0)
									end

									local v100 = tbl24[name2]
									local n33

									if v100 then
										n33 = v100
									else
										n33 = 999 + (arg2 and arg2.Slot or v85[4])
									end

									return n < n33
								end)

								task.spawn(pl.SwitchUpdate)
							end

							local function fn34()
								local backpack = localPlayer:FindFirstChildWhichIsA("Backpack")

								if backpack then
									v99:Clean(backpack.ChildAdded:Connect(function(child)
										if child and tbl24[child.Name] then
											task.defer(fn33)
										end
									end))
								end

								fn33()
							end

							v99 = zenthraMain.Categories.Gun:CreateModule({
								Name = "AutoHotbar",
								Function = function(arg)
									if arg then
										fn32()
										v99:Clean(entity.Events.LocalAdded:Connect(fn34))

										if entity.isAlive then
											task.spawn(fn34)
										end
									end
								end,
								Tooltip = "Sort hotbar slots. Each slot is a fallback list (M4A1/FAL/MP5 all go in slot 1).",
							})

							local tbl26 = {
								{ "M4A1", "AK-47", "FAL", "MP5" },
								{ "Remington 870", "M700" },
								{ "M9", "Revolver" },
								{ "Taser", "Handcuffs" },
							}

							for i = 1, v85[100] do
								tbl23[i] = v99:CreateMultiDropdown({
									Name = ("Slot %d"):format(i),
									List = tbl25,
									Default = tbl26[i] or {},
									Tooltip = "Items that belong in this hotbar slot. First slot listed wins if an item is in more than one.",
									Function = function()
										fn32()

										if v99.Enabled then
											task.defer(fn33)
										end
									end,
								})
							end

							fn32()
						end

						zenthraMain.Gun.AutoHotbar()

						zenthraMain.Gun.AutoPickup = function()
							local v99 = nil
							local tbl23 = { Guard = {}, Prisoner = {}, Criminal = {} }
							local tbl24 = { Guard = {}, Prisoner = {}, Criminal = {} }

							local tbl25 = {
								"AK-47",
								"M4A1",
								"MP5",
								"FAL",
								"Remington 870",
								"M700",
								"M9",
								"Revolver",
								"Taser",
								"Handcuffs",
								"Crude Knife",
								"Hammer",
								"Riot Shield",
								"C4 Explosive",
								"Light Vest",
							}

							local tbl26 = {}

							for _, v100 in tbl25, nil, nil do
								tbl26[v100] = v85[129]
							end

							local tbl27 = { "giver", "single" }

							local function fn31(arg)
								arg = arg and arg.Value
								local tbl28 = {}

								if type(arg) == "string" then
									if arg ~= "" and arg ~= "None" then
										tbl28[arg] = true
									end
								elseif type(arg) == "table" then
									if #arg > 0 then
										for _, v100 in ipairs(arg) do
											if type(v100) == "string" and v100 ~= "" and v100 ~= v85[141] then
												tbl28[v100] = true
											end
										end
									else
										for k, v100 in pairs(arg) do
											if v100 then
												local v101 = v85[40]
												v100 = type(k) == v101
											end

											v100 = v100 and k ~= "None"

											if v100 then
												tbl28[k] = v85[129]
											end
										end
									end
								end

								local tbl29 = {}

								for _, v100 in tbl25, nil, nil do
									if tbl28[v100] then
										table.insert(tbl29, v100)
									end
								end

								return tbl29
							end

							local function fn32(arg)
								table.clear(tbl23[arg])
								local flag18 = false

								for i, v100 in ipairs(tbl24[arg]) do
									local v101 = fn31(v100)
									tbl23[arg][i] = v101

									for _, v102 in v101, nil, nil do
										if v102 == "Revolver" then
											flag18 = true
										end
									end
								end

								if (arg == "Prisoner" or arg == "Criminal") and not flag18 then
									local v100 = tbl23[arg][3]

									if type(v100) ~= "table" or #v100 == v85[4] then
										tbl23[arg][v85[128]] = { "Revolver" }
									end
								end
							end

							local function fn33(arg)
								if arg.PrimaryPart then
									return arg.PrimaryPart.Position
								end

								if arg:IsA("BasePart") then
									return arg.Position
								end
								local handle = arg:FindFirstChild("Handle")
								if handle and handle:IsA("BasePart") then
									return handle.Position
								end

								local ok, result = pcall(function()
									return arg:GetPivot()
								end)

								if ok and result then
									return result.Position
								end
								local basePart = arg:FindFirstChildWhichIsA("BasePart", true)
								return basePart and basePart.Position
							end

							local function fn34()
								local tbl28 = {}

								local function fn35(arg)
									if not arg then
										return
									end

									for _, v100 in arg:GetChildren() do
										if v100:IsA("Tool") then
											tbl28[v100.Name] = true
										end
									end
								end

								fn35(localPlayer:FindFirstChildWhichIsA("Backpack"))
								fn35(localPlayer.Character)
								return tbl28
							end

							local function fn35(arg, arg2)
								if type(arg) ~= "table" then
									return nil
								end

								for i, v100 in ipairs(arg) do
									if v100 == arg2 then
										return i
									end
								end

								return nil
							end

							local function fn36(arg, arg2)
								local v100 = nil

								for i, v101 in ipairs(arg) do
									if arg2[v101] and (not v100 or i < v100) then
										v100 = i
									end
								end

								return v100
							end

							local function fn37(arg)
								for _, v100 in arg:GetChildren() do
									if v100:IsA("BasePart") then
										return v100
									end
								end

								return arg:FindFirstChildWhichIsA("BasePart", true)
							end

							local function fn38(arg)
								local name = arg and arg.Parent and arg.Parent.Name
								return name == "giver" or name == "single"
							end

							local function fn39(arg)
								local remotes = v90:FindFirstChild("Remotes")
								if not remotes or not arg then
									return
								end

								if v86:HasTag(arg, "Giver") or v86:HasTag(arg, "TouchGiver") then
									local giverPressed = remotes:FindFirstChild("GiverPressed")

									if giverPressed then
										pcall(function()
											giverPressed:FireServer(arg)
										end)
									end

									return
								end

								if fn38(arg) then
									local interactWithItem = remotes:FindFirstChild("InteractWithItem")
									local v100 = fn37(arg)

									if interactWithItem and v100 then
										pcall(function()
											interactWithItem:InvokeServer(v100)
										end)
									end

									return
								end

								local giverPressed = remotes:FindFirstChild("GiverPressed")

								if giverPressed then
									pcall(function()
										giverPressed:FireServer(arg)
									end)
								end
							end

							local function fn40(arg, arg2, arg3, arg4, arg5)
								if not arg4 or arg2[arg4] or type(arg5) ~= "string" or not tbl26[arg5] then
									return
								end

								if not arg4:IsDescendantOf(workspace) then
									return
								end
								local v100 = fn33(arg4)
								if not v100 or (v100 - arg3).Magnitude >= 14 then
									return
								end
								arg2[arg4] = true
								arg[#arg + 1] = { giver = arg4, toolname = arg5 }
							end

							local function fn41(arg)
								local tbl28 = {}
								local tbl29 = {}

								for _, v100 in { "TouchGiver", "Giver" }, nil, nil do
									for _, v101 in v86:GetTagged(v100) do
										local attribute = v101:GetAttribute("ToolName")

										if type(attribute) ~= "string" or attribute == "" then
											attribute = v101.Name
										end

										fn40(tbl28, tbl29, arg, v101, attribute)
									end
								end

								local prisonItems = workspace:FindFirstChild("Prison_ITEMS")

								if prisonItems then
									for _, v100 in tbl27, nil, nil do
										local v101 = prisonItems:FindFirstChild(v100)

										if v101 then
											for _, v102 in v101:GetChildren() do
												if v102:IsA("Model") then
													fn40(tbl28, tbl29, arg, v102, v102.Name)
												end
											end
										end
									end
								end

								return tbl28
							end

							v99 = zenthraMain.Categories.Gun:CreateModule({
								Name = "AutoPickup",
								Function = function(arg)
									if arg then
										for _, v100 in ipairs({ "Prisoner", "Guard", "Criminal" }) do
											fn32(v100)
										end

										while true do
											if entity.isAlive and entity.character and entity.character.RootPart then
												local position = entity.character.RootPart.Position
												local str7 = localPlayer.Team == v95.Guards and "Guard"
												local str8

												if str7 then
													str8 = str7
												else
													str8 = localPlayer.Team == v95.Criminals and "Criminal" or "Prisoner"
												end

												local v100 = tbl23[str8]
												local v101 = fn34()
												local v102 = v85[71]

												if type(v100) == v102 then
													local v103 = fn41(position)

													for _, v104 in ipairs(v100) do
														if not (type(v104) ~= "table" or #v104 == v85[4]) then
															local v105 = fn36(v104, v101)
															local giver = nil
															local v106 = nil
															local v107 = nil

															for _, v108 in v103, nil, nil do
																local v109 = fn35(v104, v108.toolname)

																if v109 then
																	if not (v105 and v109 >= v105) then
																		local v110 = fn33(v108.giver)

																		if v110 then
																			local magnitude = (v110 - position).Magnitude

																			if not (magnitude >= 14) then
																				if not giver or v109 < v106 or v109 == v106 and magnitude < v107 then
																					giver = v108.giver
																					v106 = v109
																					v107 = magnitude
																				end
																			end
																		end
																	end
																end
															end

															if giver then
																fn39(giver)
																break
															end
														end
													end
												end
											end

											task.wait(0.1)
											if v99.Enabled then
												continue
											end
											break
										end
									end
								end,
								Tooltip = "Armory pads (TouchGiver) plus click pads (Prison_ITEMS.giver, including Revolver). Floor Keycard/M9/knife/hammer are AutoGrabItems.",
							})

							local tbl28 = {
								Prisoner = { { "MP5", "M4A1", "FAL" }, { "Remington 870" }, { "Revolver" } },
								Guard = { { "M4A1", "FAL", "MP5" }, { "Remington 870" }, { "Taser" } },
								Criminal = { { "AK-47", "FAL", "M4A1" }, { "Remington 870" }, { "Revolver" } },
							}

							for _, v100 in ipairs({ "Prisoner", "Guard", "Criminal" }) do
								for i = 1, 3 do
									tbl24[v100][i] = v99:CreateMultiDropdown({
										Name = ("%s Slot %d"):format(v100, i),
										List = tbl25,
										Default = tbl28[v100][i] or {},
										Tooltip = "Fallbacks in order. Put Revolver in its own slot — not together with AK/M4.",
										Function = function()
											fn32(v100)
										end,
									})
								end

								fn32(v100)
							end
						end

						zenthraMain.Gun.AutoPickup()

						zenthraMain.Gun.AutoGrabItems = function()
							local v99 = nil
							local v100 = nil
							local tbl23 = { "Keycard", "M9", "Crude Knife", "Hammer" }

							local tbl24 = {
								Keycard = "Keycard",
								["Key Card"] = "Keycard",
								["Key card"] = "Keycard",
								["key card"] = "Keycard",
								keycard = "Keycard",
								M9 = "M9",
								["Crude Knife"] = "Crude Knife",
								Knife = "Crude Knife",
								Hammer = "Hammer",
								Marreta = "Hammer",
							}

							local function fn31(arg)
								local v101 = v85[40]
								if type(arg) ~= v101 or arg == "" then
									return nil
								end
								local v102 = tbl24[arg]
								if v102 then
									return v102
								end
								local v103 = string.lower(arg)

								for k, v104 in pairs(tbl24) do
									if string.lower(k) == v103 then
										return v104
									end
								end

								return nil
							end

							local function fn32()
								local plAutograbitemsItems

								if zenthra and zenthra.Flags and zenthra.Flags.pl_autograbitems_items ~= nil then
									plAutograbitemsItems = zenthra.Flags.pl_autograbitems_items
								else
									local flag18 = v100 and v100.Value ~= nil
									plAutograbitemsItems = nil

									if flag18 then
										plAutograbitemsItems = v100.Value
									end
								end

								local tbl25 = {}
								local v101 = v85[40]

								if type(plAutograbitemsItems) == v101 then
									local v102 = fn31(plAutograbitemsItems) or plAutograbitemsItems

									if v102 ~= "" then
										tbl25[v102] = v85[129]
									end
								else
									local v102 = v85[71]

									if type(plAutograbitemsItems) == v102 then
										if v85[4] < #plAutograbitemsItems then
											for _, plAutograbitemsItem in ipairs(plAutograbitemsItems) do
												local v103 = v85[40]

												if type(plAutograbitemsItem) == v103 then
													plAutograbitemsItem = fn31(plAutograbitemsItem) or plAutograbitemsItem
													tbl25[plAutograbitemsItem] = true
												end
											end
										else
											for k, plAutograbitemsItem in pairs(plAutograbitemsItems) do
												plAutograbitemsItem = plAutograbitemsItem and type(k) == "string"

												if plAutograbitemsItem then
													tbl25[fn31(k) or k] = v85[129]
												end
											end
										end
									end
								end

								local v102 = v85[33]

								for _, v103 in tbl23, nil, nil do
									if tbl25[v103] then
										v102 = v85[129]
										break
									end
								end

								if not v102 then
									for _, v103 in tbl23, nil, nil do
										tbl25[v103] = v85[129]
									end
								end

								return tbl25
							end

							local function fn33(arg)
								local tbl25 = { arg }

								if arg == "Keycard" then
									table.insert(tbl25, "Key Card")
									table.insert(tbl25, "Key card")
								elseif arg == "Crude Knife" then
									table.insert(tbl25, "Knife")
								end

								local function fn34(arg2)
									if not arg2 then
										return false
									end

									for _, v101 in tbl25, nil, nil do
										if arg2:FindFirstChild(v101) then
											return v85[129]
										end
									end

									return v85[33]
								end

								return fn34(localPlayer:FindFirstChildWhichIsA("Backpack")) or fn34(localPlayer.Character)
							end

							local function fn34(arg)
								if arg.PrimaryPart then
									return arg.PrimaryPart.Position
								end

								if arg:IsA("BasePart") then
									return arg.Position
								end
								local handle = arg:FindFirstChild("Handle")
								if handle and handle:IsA("BasePart") then
									return handle.Position
								end

								local ok, result = pcall(function()
									return arg:GetPivot()
								end)

								if ok and result then
									return result.Position
								end
								local basePart = arg:FindFirstChildWhichIsA("BasePart", true)
								return basePart and basePart.Position
							end

							local function fn35(arg)
								local remotes = v90:FindFirstChild("Remotes")
								local giverPressed = remotes and remotes:FindFirstChild("GiverPressed")

								if giverPressed then
									pcall(function()
										giverPressed:FireServer(arg)
									end)
								end
							end

							local function fn36(arg, arg2, arg3, arg4, arg5)
								if not arg5 or arg2[arg5] or not arg5:IsDescendantOf(workspace) then
									return
								end

								if arg5:FindFirstChildOfClass(v85[21]) then
									return
								end
								local attribute = arg5:GetAttribute("ToolName")

								if type(attribute) ~= "string" or attribute == "" then
									attribute = arg5.Name
								end

								local v101 = fn31(attribute)
								if not v101 or not arg4[v101] or fn33(v101) then
									return
								end
								local v102 = fn34(arg5)
								if not v102 then
									return
								end
								local magnitude = (v102 - arg3).Magnitude
								if magnitude >= 18 then
									return
								end
								arg2[arg5] = true
								arg[#arg + 1] = { drop = arg5, name = v101, dist = magnitude }
							end

							local function fn37(arg, arg2)
								local tbl25 = {}
								local tbl26 = {}

								for _, v101 in { "Drop", "Giver" }, nil, nil do
									for _, v102 in v86:GetTagged(v101) do
										fn36(tbl25, tbl26, arg, arg2, v102)
									end
								end

								return tbl25
							end

							v100 = zenthraMain.Categories.Gun:CreateModule({
								Name = "AutoGrabItems",
								Function = function(arg)
									if arg then
										while true do
											if entity.isAlive and entity.character and entity.character.RootPart then
												local position = entity.character.RootPart.Position
												local v101 = fn32()
												local dist = nil
												local drop = nil

												for _, v102 in fn37(position, v101), nil, nil do
													if not dist or v102.dist < dist then
														drop = v102.drop
														dist = v102.dist
													end
												end

												if drop then
													fn35(drop)
												end
											end

											task.wait(0.1)
											if v99.Enabled then
												continue
											end
											break
										end
									end
								end,
								Tooltip = "Picks floor drops: Key card, M9, Crude Knife, Hammer. Armory guns are AutoPickup.",
							}):CreateMultiDropdown({
								Name = "Items",
								List = tbl23,
								Default = { "Keycard", "M9", "Crude Knife", "Hammer" },
								Tooltip = "Floor drops (Workspace \"Key card\" etc). Uses GiverPressed on the Drop/Giver model.",
							})
						end

						zenthraMain.Gun.AutoGrabItems()

						zenthraMain.ESP.ESP = function()
							local v99 = nil
							local tbl23 = {}
							local tbl24 = {}
							local tbl25 = {}
							local obj = setmetatable({}, { __mode = v85[104] })
							local obj2 = setmetatable({}, { __mode = "k" })
							local currentCamera2 = workspace.CurrentCamera
							local tracer = nil
							local position = nil

							local tbl26 = {
								ESP = {
									Enabled = false,
									TeamCheck = false,
									Box = false,
									BoxStyle = "Corner",
									BoxFill = false,
									BoxFillAlpha = 0.15,
									Box3D = false,
									Box3DThickness = 1.5,
									Tracer = false,
									TracerOrigin = "Bottom",
									Skeleton = false,
									Name = false,
									NameSize = v85[170],
									Health = false,
									HealthNumber = false,
									HealthNumberMode = "Percentage",
									HealthNumberSize = 11,
									Distance = false,
									DistanceSize = 11,
									Weapon = false,
									WeaponSize = 11,
									Avatar = false,
									AvatarSize = 28,
									Chams = false,
									ChamsFill = Color3.fromRGB(255, 0, 0),
									ChamsOutline = Color3.fromRGB(255, 255, 255),
									ChamsFillTransparency = 0.5,
									ChamsOutlineTransparency = 0,
									Data = {},
								},
								Colors = {
									ESPBox = Color3.fromRGB(255, v85[123], 255),
									ESPBoxFill = Color3.fromRGB(v85[123], 255, 255),
									ESPBox3D = Color3.fromRGB(255, 255, 255),
									ESPTracer = Color3.fromRGB(255, 255, v85[123]),
									ESPSkeleton = Color3.fromRGB(255, v85[123], v85[123]),
									ESPName = Color3.fromRGB(255, 255, 255),
									ESPDistance = Color3.fromRGB(170, 170, 170),
									ESPWeapon = Color3.fromRGB(255, 190, 60),
								},
							}

							local tbl27 = {}
							local flag18 = v89.TouchEnabled and not v89.KeyboardEnabled
							local healthGradientStops = {}
							local tbl28 = { 0, Color3.fromRGB(170, 0, v85[130]) }
							local tbl29 = { 0.1, Color3.fromRGB(230, 25, 25) }
							local tbl30 = { v85[103], Color3.fromRGB(255, 60, 25) }
							local tbl31 = { 0.35, Color3.fromRGB(255, 115, 15) }
							local tbl32 = { 0.48, Color3.fromRGB(255, 165, 10) }
							local tbl33 = { 0.6, Color3.fromRGB(v85[123], 215, 0) }
							local tbl34 = { 0.72, Color3.fromRGB(220, 245, 0) }
							local tbl35 = { 0.84, Color3.fromRGB(120, 245, 25) }
							local tbl36 = { 0.94, Color3.fromRGB(40, 240, 50) }
							local tbl37 = { 1, Color3.fromRGB(v85[4], 220, 0) }
							healthGradientStops[1] = tbl28
							healthGradientStops[2] = tbl29
							healthGradientStops[3] = tbl30
							healthGradientStops[4] = tbl31
							healthGradientStops[5] = tbl32
							healthGradientStops[6] = tbl33
							healthGradientStops[7] = tbl34
							healthGradientStops[8] = tbl35
							healthGradientStops[9] = tbl36
							healthGradientStops[10] = tbl37
							tbl27.HealthGradientStops = healthGradientStops

							tbl27.GetHealthColor = function(arg)
								local n = math.clamp(arg, 0, 1)
								local healthGradientStops2 = tbl27.HealthGradientStops

								for i = v85[145], #healthGradientStops2 - 1 do
									local v100 = healthGradientStops2[i]
									local v101 = healthGradientStops2[i + 1]

									if n <= v101[1] then
										local n33 = v101[1] - v100[v85[145]]
										local n34 = n33 > 0 and (n - v100[1]) / n33 or 0
										local v102 = v100[v85[9]]
										local v103 = v101[v85[9]]
										return Color3.new(v102.R + (v103.R - v102.R) * n34, v102.G + (v103.G - v102.G) * n34, v102.B + (v103.B - v102.B) * n34)
									end
								end

								return healthGradientStops2[#healthGradientStops2][2]
							end

							local function fn31()
								return flag18
							end

							tbl27.GetScreenCenter = function()
								local currentCamera3 = currentCamera2 or workspace.CurrentCamera
								if not currentCamera3 then
									return Vector2.new(0, 0)
								end
								return Vector2.new(currentCamera3.ViewportSize.X / 2, currentCamera3.ViewportSize.Y / v85[9])
							end

							tbl27.GetAimbotReferencePos = function()
								if fn31() then
									return tbl27.GetScreenCenter()
								end
								return v89:GetMouseLocation()
							end

							tbl27.GetTracerOrigin = function()
								local currentCamera3 = currentCamera2 or workspace.CurrentCamera
								if not currentCamera3 then
									return Vector2.new(0, v85[4])
								end

								if tbl26.ESP.TracerOrigin == "Bottom" then
									return Vector2.new(currentCamera3.ViewportSize.X / 2, currentCamera3.ViewportSize.Y)
								end

								if tbl26.ESP.TracerOrigin == "Top" then
									return Vector2.new(currentCamera3.ViewportSize.X / 2, 0)
								end

								if tbl26.ESP.TracerOrigin == "Center" then
									return Vector2.new(currentCamera3.ViewportSize.X / 2, currentCamera3.ViewportSize.Y / 2)
								end

								if tbl26.ESP.TracerOrigin == "Cursor" then
									return tbl27.GetAimbotReferencePos()
								end
								return Vector2.new(currentCamera3.ViewportSize.X / v85[9], currentCamera3.ViewportSize.Y)
							end

							tbl27.CalculateDistance = function(arg, arg2)
								return math.floor((arg - arg2).Magnitude)
							end

							tbl27.GetPlayerAvatar = function(arg)
								if tbl24[arg] then
									return tbl24[arg]
								end

								for i = 1, v85[128] do
									local ok, result = pcall(function()
										return v88:GetUserThumbnailAsync(arg, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)
									end)

									if ok and result and type(result) == "string" and result ~= "" then
										tbl24[arg] = result
										return result
									end
									task.wait(0.5)
								end

								local str7 = "rbxthumb://type=AvatarHeadShot&id=" .. tostring(arg) .. "&w=48&h=48"
								tbl24[arg] = str7
								return str7
							end

							local tbl38

							tbl38 = {
								Init = function()
									local instance = Instance.new(v85[191])
									instance.Name = "ESPAvatars"
									instance.ResetOnSpawn = false
									instance.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
									instance.IgnoreGuiInset = true
									instance.Parent = localPlayer:WaitForChild("PlayerGui")
									tbl38.Gui = instance
								end,
								CreateAvatar = function(arg)
									if not arg then
										return nil
									end

									if not tbl38.Gui then
										tbl38.Init()
									end

									local imageLabel = Instance.new("ImageLabel")
									imageLabel.Name = "Avatar_" .. arg.Name
									imageLabel.Size = UDim2.new(v85[4], tbl26.ESP.AvatarSize, 0, tbl26.ESP.AvatarSize)
									imageLabel.BackgroundTransparency = 1
									imageLabel.BorderSizePixel = 0
									imageLabel.Image = ""
									imageLabel.Visible = v85[33]
									imageLabel.Parent = tbl38.Gui
									local uiCorner = Instance.new("UICorner")
									uiCorner.CornerRadius = UDim.new(v85[145], 0)
									uiCorner.Parent = imageLabel
									local instance = Instance.new(v85[174])
									instance.Color = Color3.fromRGB(255, 255, 255)
									instance.Thickness = 2
									instance.Parent = imageLabel
									obj[imageLabel] = instance
									obj2[imageLabel] = {}

									task.spawn(function()
										local v100 = tbl27.GetPlayerAvatar(arg.UserId)

										if v100 and type(v100) == "string" then
											imageLabel.Image = v100
										end
									end)

									return imageLabel
								end,
								UpdateAvatar = function(arg, arg2, visible, size, color)
									if not arg then
										return
									end

									if arg.Visible ~= visible then
										arg.Visible = visible
									end

									if not visible then
										return
									end
									arg.Position = UDim2.new(0, arg2.X - size / 2, 0, arg2.Y - size / 2)
									local tbl39 = obj2[arg]

									if not tbl39 then
										tbl39 = {}
										obj2[arg] = tbl39
									end

									if tbl39.size ~= size then
										tbl39.size = size
										arg.Size = UDim2.new(0, size, 0, size)
									end

									local v100 = obj[arg]
									color = color or Color3.fromRGB(255, v85[123], 255)

									if v100 and tbl39.color ~= color then
										tbl39.color = color
										v100.Color = color
									end
								end,
								RemoveAvatar = function(arg)
									if tbl25[arg] then
										obj[tbl25[arg]] = nil
										obj2[tbl25[arg]] = nil
										tbl25[arg]:Destroy()
										tbl25[arg] = nil
									end
								end,
							}

							local tbl39

							tbl39 = {
								Init = function()
									for _, player in pairs(v88:GetPlayers()) do
										if player ~= localPlayer then
											tbl39.CreatePlayerESP(player)
										end
									end

									table.insert(tbl23, v88.PlayerAdded:Connect(function(player)
										if player ~= localPlayer then
											tbl39.CreatePlayerESP(player)
										end
									end))

									table.insert(tbl23, v88.PlayerRemoving:Connect(function(player)
										tbl39.RemovePlayerESP(player)
									end))
								end,
								CreatePlayerESP = function(arg)
									tbl26.ESP.Data[arg] = tbl39.CreateDrawings(arg)
									local v100 = tbl26.ESP.Data[arg]

									v100.CharacterConnection = arg.CharacterAdded:Connect(function()
										v100.Character = nil
										v100.Root = nil
										v100.Humanoid = nil
										v100.Head = nil
										v100.SkeletonCharacter = nil
										v100.SkeletonConnections = nil

										if v100.Highlight then
											pcall(function()
												v100.Highlight:Destroy()
											end)

											v100.Highlight = nil
										end
									end)
								end,
								RemovePlayerESP = function(arg)
									if not tbl26.ESP.Data[arg] then
										return
									end
									tbl39.DestroyDrawings(tbl26.ESP.Data[arg])
									tbl26.ESP.Data[arg] = nil
									tbl38.RemoveAvatar(arg)
								end,
								CreateDrawings = function(arg)
									pcall(function()
										if tbl18.Env.GuardDrawing then
											tbl18.Env.GuardDrawing(true)
										end
									end)

									local tbl40 = {
										Corners = {},
										Box3D = {},
										BoxOutline = fn29("Square"),
										Box = fn29("Square"),
										BoxFill = fn29("Square"),
										TracerOutline = fn29("Line"),
										Tracer = fn29("Line"),
										Name = fn29("Text"),
										HealthBarBg = fn29("Square"),
										HealthBarOutline = fn29("Square"),
										HealthBar = fn29("Square"),
										HealthBarSegments = {},
										HealthNumber = fn29(v85[7]),
										Distance = fn29(v85[7]),
										Weapon = fn29(v85[7]),
										Skeleton = {},
										Highlight = nil,
										Player = arg,
										_hidden = true,
									}

									tbl39.SetupDrawings(tbl40)
									tbl40.Name.Text = arg.Name
									return tbl40
								end,
								DestroyDrawings = function(arg)
									local function fn32(arg2)
										pcall(function()
											arg2:Remove()
										end)
									end

									for _, corner in pairs(arg.Corners) do
										fn32(corner.Outline)
										fn32(corner.Inner)
									end

									for _, v100 in pairs(arg.Box3D) do
										fn32(v100.Outline)
										fn32(v100.Inner)
									end

									for _, v100 in pairs(arg.Skeleton) do
										fn32(v100.Outline)
										fn32(v100.Inner)
									end

									fn32(arg.BoxOutline)
									fn32(arg.Box)
									fn32(arg.BoxFill)
									fn32(arg.TracerOutline)
									fn32(arg.Tracer)
									fn32(arg.Name)
									fn32(arg.HealthBarBg)
									fn32(arg.HealthBarOutline)
									fn32(arg.HealthBar)
									fn32(arg.HealthNumber)
									fn32(arg.Distance)
									fn32(arg.Weapon)

									for _, healthBarSegment in pairs(arg.HealthBarSegments) do
										fn32(healthBarSegment)
									end

									if arg.CharacterConnection then
										pcall(function()
											arg.CharacterConnection:Disconnect()
										end)

										arg.CharacterConnection = nil
									end

									if arg.Highlight then
										pcall(function()
											arg.Highlight.Enabled = v85[33]
											arg.Highlight:Destroy()
										end)

										arg.Highlight = nil
									end
								end,
								SetupDrawings = function(arg)
									if not arg or not arg.Box then
										return
									end

									pcall(function()
										for _, corner in pairs(arg.Corners) do
											corner.Outline.Thickness = 3
											corner.Outline.Color = Color3.fromRGB(v85[4], 0, 0)
											corner.Outline.Visible = false
											corner.Outline.ZIndex = 1
											corner.Inner.Thickness = v85[145]
											corner.Inner.Color = tbl26.Colors.ESPBox
											corner.Inner.Visible = v85[33]
											corner.Inner.ZIndex = 2
										end

										for _, v100 in pairs(arg.Box3D) do
											v100.Outline.Thickness = 3
											v100.Outline.Color = Color3.fromRGB(v85[4], 0, 0)
											v100.Outline.Visible = false
											v100.Outline.ZIndex = v85[145]
											v100.Inner.Thickness = tbl26.ESP.Box3DThickness
											v100.Inner.Color = tbl26.Colors.ESPBox3D
											v100.Inner.Visible = false
											v100.Inner.ZIndex = v85[9]
										end

										arg.BoxOutline.Thickness = 3
										arg.BoxOutline.Filled = v85[33]
										arg.BoxOutline.Color = Color3.fromRGB(0, 0, v85[4])
										arg.BoxOutline.Visible = v85[33]
										arg.BoxOutline.ZIndex = 1
										arg.Box.Thickness = 1
										arg.Box.Filled = v85[33]
										arg.Box.Color = tbl26.Colors.ESPBox
										arg.Box.Visible = false
										arg.Box.ZIndex = 2
										arg.BoxFill.Filled = true
										arg.BoxFill.Color = tbl26.Colors.ESPBoxFill
										arg.BoxFill.Transparency = tbl26.ESP.BoxFillAlpha
										arg.BoxFill.Visible = false
										arg.BoxFill.ZIndex = 0
										arg.TracerOutline.Thickness = 3
										arg.TracerOutline.Color = Color3.fromRGB(0, 0, v85[4])
										arg.TracerOutline.Visible = v85[33]
										arg.TracerOutline.ZIndex = 1
										arg.Tracer.Thickness = 1
										arg.Tracer.Color = tbl26.Colors.ESPTracer
										arg.Tracer.Visible = v85[33]
										arg.Tracer.ZIndex = 2
										arg.Name.Size = tbl26.ESP.NameSize
										arg.Name.Center = true
										arg.Name.Outline = true
										arg.Name.OutlineColor = Color3.fromRGB(0, 0, 0)
										arg.Name.Color = tbl26.Colors.ESPName

										pcall(function()
											arg.Name.Font = Drawing.Fonts.Plex
										end)

										arg.Name.Visible = false
										arg.Name.ZIndex = 5
										arg.HealthBarBg.Filled = true
										arg.HealthBarBg.Color = Color3.fromRGB(0, 0, 0)
										arg.HealthBarBg.Transparency = 0.5
										arg.HealthBarBg.Visible = v85[33]
										arg.HealthBarBg.ZIndex = 1
										arg.HealthBarOutline.Filled = false
										arg.HealthBarOutline.Thickness = 1
										arg.HealthBarOutline.Color = Color3.fromRGB(30, 30, v85[62])
										arg.HealthBarOutline.Visible = false
										arg.HealthBarOutline.ZIndex = 3
										arg.HealthBar.Filled = v85[129]
										arg.HealthBar.Color = Color3.fromRGB(0, 255, 0)
										arg.HealthBar.Visible = v85[33]
										arg.HealthBar.ZIndex = v85[9]
										arg.HealthNumber.Size = tbl26.ESP.HealthNumberSize
										arg.HealthNumber.Center = false
										arg.HealthNumber.Outline = v85[129]
										arg.HealthNumber.OutlineColor = Color3.fromRGB(0, 0, v85[4])

										pcall(function()
											arg.HealthNumber.Font = Drawing.Fonts.Plex
										end)

										arg.HealthNumber.Visible = v85[33]
										arg.HealthNumber.ZIndex = 5
										arg.Distance.Size = tbl26.ESP.DistanceSize
										arg.Distance.Center = v85[129]
										arg.Distance.Outline = true
										arg.Distance.OutlineColor = Color3.fromRGB(0, v85[4], 0)
										arg.Distance.Color = tbl26.Colors.ESPDistance

										pcall(function()
											arg.Distance.Font = Drawing.Fonts.Plex
										end)

										arg.Distance.Visible = v85[33]
										arg.Distance.ZIndex = 5
										arg.Weapon.Size = tbl26.ESP.WeaponSize
										arg.Weapon.Center = v85[129]
										arg.Weapon.Outline = true
										arg.Weapon.OutlineColor = Color3.fromRGB(0, 0, 0)
										arg.Weapon.Color = tbl26.Colors.ESPWeapon

										pcall(function()
											arg.Weapon.Font = Drawing.Fonts.Plex
										end)

										arg.Weapon.Visible = v85[33]
										arg.Weapon.ZIndex = 5

										for _, v100 in pairs(arg.Skeleton) do
											v100.Outline.Thickness = 3
											v100.Outline.Color = Color3.fromRGB(v85[4], 0, 0)
											v100.Outline.Visible = false
											v100.Outline.ZIndex = v85[145]
											v100.Inner.Thickness = 1.5
											v100.Inner.Color = tbl26.Colors.ESPSkeleton
											v100.Inner.Visible = v85[33]
											v100.Inner.ZIndex = v85[9]
										end

										local n = #arg.HealthBarSegments

										for i, healthBarSegment in ipairs(arg.HealthBarSegments) do
											local n33 = (n - i) / math.max(n - v85[145], v85[145])
											healthBarSegment.Filled = true
											healthBarSegment.Color = tbl27.GetHealthColor(n33)
											healthBarSegment.Visible = false
											healthBarSegment.ZIndex = v85[9]
										end
									end)
								end,
								EnsureCorners = function(arg)
									if #arg.Corners > 0 then
										return
									end

									for i = v85[145], v85[133] do
										local tbl40 = { Outline = fn29("Line"), Inner = fn29("Line") }

										if not (not tbl40.Outline or not tbl40.Inner) then
											tbl40.Outline.Thickness = 3
											tbl40.Outline.Color = Color3.new(v85[4], 0, 0)
											tbl40.Outline.Visible = false
											tbl40.Outline.ZIndex = 1
											tbl40.Inner.Thickness = v85[145]
											tbl40.Inner.Color = tbl26.Colors.ESPBox
											tbl40.Inner.Visible = false
											tbl40.Inner.ZIndex = 2
											arg.Corners[i] = tbl40
											continue
										end

										break
									end
								end,
								EnsureBox3D = function(arg)
									if #arg.Box3D > 0 then
										return
									end

									for i = 1, 12 do
										local tbl40 = { Outline = fn29("Line"), Inner = fn29("Line") }

										if not (not tbl40.Outline or not tbl40.Inner) then
											tbl40.Outline.Thickness = 3
											tbl40.Outline.Color = Color3.new(0, 0, 0)
											tbl40.Outline.Visible = false
											tbl40.Outline.ZIndex = 1
											tbl40.Inner.Thickness = tbl26.ESP.Box3DThickness
											tbl40.Inner.Color = tbl26.Colors.ESPBox3D
											tbl40.Inner.Visible = false
											tbl40.Inner.ZIndex = 2
											arg.Box3D[i] = tbl40
											continue
										end

										break
									end
								end,
								EnsureSkeleton = function(arg)
									if #arg.Skeleton > 0 then
										return
									end

									for i = 1, 14 do
										local tbl40 = { Outline = fn29("Line"), Inner = fn29("Line") }

										if not (not tbl40.Outline or not tbl40.Inner) then
											tbl40.Outline.Thickness = 3
											tbl40.Outline.Color = Color3.new(v85[4], 0, 0)
											tbl40.Outline.Visible = false
											tbl40.Outline.ZIndex = 1
											tbl40.Inner.Thickness = 1.5
											tbl40.Inner.Color = tbl26.Colors.ESPSkeleton
											tbl40.Inner.Visible = v85[33]
											tbl40.Inner.ZIndex = 2
											arg.Skeleton[i] = tbl40
											continue
										end

										break
									end
								end,
								EnsureHealthSegments = function(arg)
									if #arg.HealthBarSegments > 0 then
										return
									end

									for i = 1, 12 do
										local Square = fn29("Square")

										if Square then
											Square.Filled = true
											Square.Color = tbl27.GetHealthColor((12 - i) / 11)
											Square.Visible = v85[33]
											Square.ZIndex = 2
											arg.HealthBarSegments[i] = Square
											continue
										end

										break
									end
								end,
							}

							local flag19 = false
							local obj3 = setmetatable({}, { __mode = "k" })

							local function fn32()
								local esp = tbl26.ESP
								return esp.Box or esp.Box3D or esp.Tracer or esp.Skeleton or esp.Name or esp.Health or esp.HealthNumber or esp.Distance or esp.Weapon or esp.Avatar
							end

							local function fn33()
								return fn32() or tbl26.ESP.Chams
							end

							local function fn34(arg, arg2)
								tbl39.HideDrawings(arg2)

								if arg2.Highlight and arg2.Highlight.Enabled then
									arg2.Highlight.Enabled = false
								end

								local v100 = tbl25[arg]

								if v100 and v100.Visible then
									v100.Visible = false
								end
							end

							tbl39.Update = function()if not( tbl26 .ESP.Enabled and( fn33 ()))then if  flag19 then for t,I in pairs( tbl26 .ESP.Data)do  fn34 (t,I);end; flag19 =false;end;return;end; flag19 =true;local t,I= fn32 (),os.clock(); tracer = tbl26 .ESP.Tracer and( tbl27 .GetTracerOrigin())or nil;local J= entity .character and  entity .character.RootPart; position =J and J.Position or nil;for G,n in pairs( tbl26 .ESP.Data)do J=G.Character;if n.Character~=J then n.Character=J;n.Root=nil;n.Humanoid=nil;n.Head=nil;n.LeftFoot=nil;n.RightFoot=nil;n.EquippedTool=nil;n.SkeletonCharacter=nil;n.SkeletonConnections=nil;end;if J then if not n.Root or n.Root.Parent~=J then n.Root=J:FindFirstChild("HumanoidRootPart");end;if not n.Humanoid or n.Humanoid.Parent~=J then n.Humanoid=J:FindFirstChildOfClass("Humanoid");end;if not n.Head or n.Head.Parent~=J then n.Head=J:FindFirstChild("Head");end;end;local O=n.Root;local s=n.Humanoid;if G== localPlayer or not J or not O or not s or s.Health<=0 or  tbl26 .ESP.TeamCheck and G.Team== localPlayer .Team then  fn34 (G,n);continue;end; tbl39 .UpdateChams(J,n);if not t then  tbl39 .HideDrawings(n);s= tbl25 [G];if s and s.Visible then s.Visible=false;end;continue;end;if n._offscreen and I<(n._nextVisibilityCheck or 0)then continue;end;s= currentCamera2 :WorldToViewportPoint(O.Position);if s.Z<=0 then n._offscreen=true;n._nextVisibilityCheck=I+0.05; tbl39 .HideDrawings(n);local t= tbl25 [G];if t and t.Visible then t.Visible=false;end;continue;end;n._offscreen=false; tbl39 .RenderESP(G.Name,J,O,s,n,G);end;end
							tbl39.UpdateChams = function(t,I)if not  tbl26 .ESP.Chams then if I.Highlight and I.Highlight.Enabled then I.Highlight.Enabled=false;end;return;end;if not t or not t.Parent then if I.Highlight and I.Highlight.Enabled then I.Highlight.Enabled=false;end;return;end;local J=if not I.Highlight then true else false;if I.Highlight and I.Highlight.Parent~=t then pcall(function()I.Highlight:Destroy();end);I.Highlight=nil;J=true;end;if I.Highlight and not I.Highlight.Parent then I.Highlight=nil;J=true;end;if J then local J=Instance.new("Highlight");J.Name="ESPChams";J.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop;J.Adornee=t;J.Parent=t;I.Highlight=J;end;if I.Highlight then t= obj3 [I.Highlight];if not t then t={}; obj3 [I.Highlight]=t;end;if t.fillColor~= tbl26 .ESP.ChamsFill then I.Highlight.FillColor= tbl26 .ESP.ChamsFill;t.fillColor= tbl26 .ESP.ChamsFill;end;if t.outlineColor~= tbl26 .ESP.ChamsOutline then I.Highlight.OutlineColor= tbl26 .ESP.ChamsOutline;t.outlineColor= tbl26 .ESP.ChamsOutline;end;if t.fillTransparency~= tbl26 .ESP.ChamsFillTransparency then I.Highlight.FillTransparency= tbl26 .ESP.ChamsFillTransparency;t.fillTransparency= tbl26 .ESP.ChamsFillTransparency;end;if t.outlineTransparency~= tbl26 .ESP.ChamsOutlineTransparency then I.Highlight.OutlineTransparency= tbl26 .ESP.ChamsOutlineTransparency;t.outlineTransparency= tbl26 .ESP.ChamsOutlineTransparency;end;if not I.Highlight.Enabled then I.Highlight.Enabled=true;end;end;end
							tbl39.HideDrawings = function(D)if D._hidden then return;end;D._hidden=true;for t,t in pairs(D.Corners)do t.Outline.Visible=false;t.Inner.Visible=false;end;for t,t in pairs(D.Box3D)do t.Outline.Visible=false;t.Inner.Visible=false;end;for t,t in pairs(D.Skeleton)do t.Outline.Visible=false;t.Inner.Visible=false;end;D.BoxOutline.Visible=false;D.Box.Visible=false;D.BoxFill.Visible=false;D.TracerOutline.Visible=false;D.Tracer.Visible=false;D.Name.Visible=false;D.HealthBarBg.Visible=false;D.HealthBarOutline.Visible=false;D.HealthBar.Visible=false;D.HealthNumber.Visible=false;D.Distance.Visible=false;D.Weapon.Visible=false;for t,t in pairs(D.HealthBarSegments)do t.Visible=false;end;end
							tbl39.GetScreenBounds = function(t,I,J)local G=J.Head;if not G or G.Parent~=t then G=t:FindFirstChild("Head");J.Head=G;end;if not G then return nil;end;local n,O,s=I.CFrame,(G.Position-I.Position).Y+G.Size.Y*0.5+0.3,J.SamplePoints;if not s then s={};J.SamplePoints=s;end;s[1]=n*Vector3.new(-2,O,0);s[2]=n*Vector3.new(2,O,0);s[3]=n*Vector3.new(-2,-3,0);s[4]=n*Vector3.new(2,-3,0);s[5]=G.Position+Vector3.new(0,G.Size.Y*0.5,0);I=J.LeftFoot;if not I or I.Parent~=t then I=t:FindFirstChild("LeftFoot")or(t:FindFirstChild("Left Leg"));J.LeftFoot=I;end;O=J.RightFoot;if not O or O.Parent~=t then O=t:FindFirstChild("RightFoot")or(t:FindFirstChild("Right Leg"));J.RightFoot=O;end;t=5;if I then t=6;s[t]=I.Position;end;if O then t+=1;s[t]=O.Position;end;n,J,I,O,G=false,math.huge,-math.huge,math.huge,-math.huge;for x=1,t,1 do local u=s[x];x= currentCamera2 :WorldToViewportPoint(u);if x.Z>0 then n,J,I,O,G=true,(math.min(J,x.X)),(math.max(I,x.X)),(math.min(O,x.Y)),(math.max(G,x.Y));end;end;if not n then return nil;end;n,s=I-J,G-O;if n<10 then t=(J+I)*0.5;J,I,n=t-5,t+5,10;end;if s<20 then t=(O+G)*0.5;O,G,s=t-10,t+10,20;end;return J,I,O,G,Vector2.new((J+I)*0.5,(O+G)*0.5),n,s;end
							local function fn35(D)for t,t in pairs(D.Corners)do t.Outline.Visible=false;t.Inner.Visible=false;end;end
							local function fn36(D,t,I,J,G,n)local O,s,x,u,w=Vector2.new(I,J),Vector2.new(I+G,J),Vector2.new(I,J+n),D.Corners[t],D.Corners[t+4];u.Outline.From=O;u.Outline.To=s;u.Outline.Visible=true;u.Inner.From=O;u.Inner.To=s;u.Inner.Visible=true;w.Outline.From=O;w.Outline.To=x;w.Outline.Visible=true;w.Inner.From=O;w.Inner.To=x;w.Inner.Visible=true;end
							tbl39.RenderESP = function(t,t,I,J,J,G)if not J.Head then  tbl39 .HideDrawings(J);return;end;local n,O,s,x,u,w,i= tbl39 .GetScreenBounds(t,I,J);if not n then  tbl39 .HideDrawings(J);return;end;J._hidden=false;if  tbl26 .ESP.Box then J._boxActive=true;if J._boxColor~= tbl26 .Colors.ESPBox then J._boxColor= tbl26 .Colors.ESPBox;J.Box.Color= tbl26 .Colors.ESPBox;for l,l in pairs(J.Corners)do l.Inner.Color= tbl26 .Colors.ESPBox;end;end;if  tbl26 .ESP.BoxFill then J._boxFillActive=true;J.BoxFill.Size=Vector2.new(w,i);J.BoxFill.Position=Vector2.new(n,s);if J._boxFillColor~= tbl26 .Colors.ESPBoxFill then J._boxFillColor= tbl26 .Colors.ESPBoxFill;J.BoxFill.Color= tbl26 .Colors.ESPBoxFill;end;if J._boxFillAlpha~= tbl26 .ESP.BoxFillAlpha then J._boxFillAlpha= tbl26 .ESP.BoxFillAlpha;J.BoxFill.Transparency= tbl26 .ESP.BoxFillAlpha;end;J.BoxFill.Visible=true;elseif J._boxFillActive then J._boxFillActive=false;J.BoxFill.Visible=false;end;if  tbl26 .ESP.BoxStyle=="Corner"then  tbl39 .EnsureCorners(J);if J._boxStyle~="Corner"then J.BoxOutline.Visible=false;J.Box.Visible=false;J._boxStyle="Corner";end;local l=math.min(w,i)*0.3; fn36 (J,1,n,s,l,l); fn36 (J,2,O,s,-l,l); fn36 (J,3,n,x,l,-l); fn36 (J,4,O,x,-l,-l);else if J._boxStyle~="Full"then  fn35 (J);J._boxStyle="Full";end;J.BoxOutline.Size=Vector2.new(w,i);J.BoxOutline.Position=Vector2.new(n,s);J.BoxOutline.Visible=true;J.Box.Size=Vector2.new(w,i);J.Box.Position=Vector2.new(n,s);J.Box.Visible=true;end;elseif J._boxActive then J._boxActive=false;J._boxFillActive=false;J._boxStyle=nil; fn35 (J);J.BoxOutline.Visible=false;J.Box.Visible=false;J.BoxFill.Visible=false;end;if  tbl26 .ESP.Tracer then O= tracer or( tbl27 .GetTracerOrigin());J.TracerOutline.From=O;J.TracerOutline.To=Vector2.new(u.X,s);J.TracerOutline.Visible=true;J.Tracer.From=O;J.Tracer.To=Vector2.new(u.X,s);if J._tracerColor~= tbl26 .Colors.ESPTracer then J._tracerColor= tbl26 .Colors.ESPTracer;J.Tracer.Color= tbl26 .Colors.ESPTracer;end;J.Tracer.Visible=true;else J.TracerOutline.Visible=false;J.Tracer.Visible=false;end;local l=s-4;if  tbl26 .ESP.Avatar and G then if not  tbl25 [G]then  tbl25 [G]= tbl38 .CreateAvatar(G);end;O= tbl26 .ESP.AvatarSize;w=l-O-4; tbl38 .UpdateAvatar( tbl25 [G],Vector2.new(u.X,w+O/2),true,O, tbl26 .Colors.ESPBox);l=w-4;elseif G and  tbl25 [G]then  tbl25 [G].Visible=false;end;if  tbl26 .ESP.Name then J.Name.Position=Vector2.new(u.X,l- tbl26 .ESP.NameSize-2);if J._nameSize~= tbl26 .ESP.NameSize then J._nameSize= tbl26 .ESP.NameSize;J.Name.Size= tbl26 .ESP.NameSize;end;if J._nameColor~= tbl26 .Colors.ESPName then J._nameColor= tbl26 .Colors.ESPName;J.Name.Color= tbl26 .Colors.ESPName;end;J.Name.Visible=true;l=l- tbl26 .ESP.NameSize-4;else J.Name.Visible=false;end;w=x+4;if  tbl26 .ESP.Distance then if  position then l= tbl27 .CalculateDistance( position ,I.Position);J.Distance.Position=Vector2.new(u.X,w);if J._distance~=l then J._distance=l;J.Distance.Text="["..tostring(l).."m]";end;if J._distanceSize~= tbl26 .ESP.DistanceSize then J._distanceSize= tbl26 .ESP.DistanceSize;J.Distance.Size= tbl26 .ESP.DistanceSize;end;if J._distanceColor~= tbl26 .Colors.ESPDistance then J._distanceColor= tbl26 .Colors.ESPDistance;J.Distance.Color= tbl26 .Colors.ESPDistance;end;J.Distance.Visible=true;w=w+ tbl26 .ESP.DistanceSize+3;else J.Distance.Visible=false;end;else J.Distance.Visible=false;end;if  tbl26 .ESP.Weapon then x=J.EquippedTool;if not x or x.Parent~=t then x=t:FindFirstChildWhichIsA("Tool");J.EquippedTool=x;end;G=x and x.Name or"None";J.Weapon.Position=Vector2.new(u.X,w);if J._weapon~=G then J._weapon=G;J.Weapon.Text="["..G.."]";end;if J._weaponSize~= tbl26 .ESP.WeaponSize then J._weaponSize= tbl26 .ESP.WeaponSize;J.Weapon.Size= tbl26 .ESP.WeaponSize;end;if J._weaponColor~= tbl26 .Colors.ESPWeapon then J._weaponColor= tbl26 .Colors.ESPWeapon;J.Weapon.Color= tbl26 .Colors.ESPWeapon;end;J.Weapon.Visible=true;w=w+ tbl26 .ESP.WeaponSize+3;else J.Weapon.Visible=false;end;if  tbl26 .ESP.Health or  tbl26 .ESP.HealthNumber then w=J.Humanoid;if w then l=math.clamp(w.Health/w.MaxHealth,0,1);if  tbl26 .ESP.Health then J._healthBarActive=true; tbl39 .EnsureHealthSegments(J);G=n-3-5;J.HealthBarBg.Size=Vector2.new(5,i+2);J.HealthBarBg.Position=Vector2.new(G-1,s-1);J.HealthBarBg.Visible=true;J.HealthBarOutline.Size=Vector2.new(5,i+2);J.HealthBarOutline.Position=Vector2.new(G-1,s-1);J.HealthBarOutline.Visible=true;J.HealthBar.Visible=false;x,O=s+i*(1-l),#J.HealthBarSegments;u=i/O;for a=1,O,1 do local O,h,Z=s+(a-1)*u,s+a*u,J.HealthBarSegments[a];if h<=x then Z.Visible=false;elseif O>=x then Z.Position=Vector2.new(G,O);Z.Size=Vector2.new(3,math.max(u+1,1));Z.Visible=true;else Z.Position=Vector2.new(G,x);Z.Size=Vector2.new(3,math.max(h-x+1,1));Z.Visible=true;end;end;elseif J._healthBarActive then J._healthBarActive=false;J.HealthBarBg.Visible=false;J.HealthBarOutline.Visible=false;J.HealthBar.Visible=false;for G,G in pairs(J.HealthBarSegments)do G.Visible=false;end;end;if  tbl26 .ESP.HealthNumber then local G,O= tbl27 .GetHealthColor(l),if  tbl26 .ESP.HealthNumberMode=="Percentage"then math.floor(l*100).."%"else(math.floor(w.Health));if J._healthText~=O then J._healthText=O;J.HealthNumber.Text=tostring(O);end;if J._healthNumberSize~= tbl26 .ESP.HealthNumberSize then J._healthNumberSize= tbl26 .ESP.HealthNumberSize;J.HealthNumber.Size= tbl26 .ESP.HealthNumberSize;end;if J._healthNumberColor~=G then J._healthNumberColor=G;J.HealthNumber.Color=G;end;G,O=n-3-5,s+(i-i*l)-5;O=math.clamp(O,s,s+i-10);J.HealthNumber.Center=false;J.HealthNumber.Position=Vector2.new(G-J.HealthNumber.TextBounds.X-3,O);J.HealthNumber.Visible=true;else J.HealthNumber.Visible=false;end;else J._healthBarActive=false;J.HealthBarBg.Visible=false;J.HealthBarOutline.Visible=false;J.HealthBar.Visible=false;J.HealthNumber.Visible=false;for G,G in pairs(J.HealthBarSegments)do G.Visible=false;end;end;else J._healthBarActive=false;J.HealthBarBg.Visible=false;J.HealthBarOutline.Visible=false;J.HealthBar.Visible=false;J.HealthNumber.Visible=false;for G,G in pairs(J.HealthBarSegments)do G.Visible=false;end;end;if  tbl26 .ESP.Skeleton then J._skeletonActive=true; tbl39 .EnsureSkeleton(J); tbl39 .RenderSkeleton(t,J);elseif J._skeletonActive then J._skeletonActive=false;for G,G in pairs(J.Skeleton)do G.Outline.Visible=false;G.Inner.Visible=false;end;end;if  tbl26 .ESP.Box3D then J._box3DActive=true; tbl39 .EnsureBox3D(J); tbl39 .RenderBox3D(t,I,J);elseif J._box3DActive then J._box3DActive=false;for D,D in pairs(J.Box3D)do D.Outline.Visible=false;D.Inner.Visible=false;end;end;end

							local tbl40 = {
								{ -2, -1, false },
								{ 2, -1, false },
								{ 2, 1, false },
								{ -2, 1, false },
								{ -v85[9], -v85[145], v85[129] },
								{ 2, -1, v85[129] },
								{ 2, v85[145], true },
								{ -2, v85[145], true },
							}

							local tbl41 = {
								{ 1, v85[9] },
								{ 2, v85[128] },
								{ 3, 4 },
								{ 4, 1 },
								{ 5, 6 },
								{ v85[138], 7 },
								{ 7, 8 },
								{ 8, 5 },
								{ 1, 5 },
								{ v85[9], 6 },
								{ 3, 7 },
								{ 4, 8 },
							}

							tbl39.RenderBox3D = function(t,t,I)local J=I.Head;if not J then for G,G in pairs(I.Box3D)do G.Outline.Visible=false;G.Inner.Visible=false;end;return;end;local G,n,O=t.CFrame,(J.Position-t.Position).Y+J.Size.Y*0.5+0.3,I.Box3DProjected;if not O then O={};I.Box3DProjected=O;end;local s=false;for x,u in ipairs( tbl40 )do local w=G*Vector3.new(u[1],u[3]and n or-3,u[2]);J= currentCamera2 :WorldToViewportPoint(w);O[x]=J;s=if J.Z>0 then true else s;end;if not s then for J,J in pairs(I.Box3D)do J.Outline.Visible=false;J.Inner.Visible=false;end;return;end;t=math.max(1,math.floor( tbl26 .ESP.Box3DThickness+0.5));if I._box3DColor~= tbl26 .Colors.ESPBox3D or I._box3DThickness~=t then I._box3DColor= tbl26 .Colors.ESPBox3D;I._box3DThickness=t;for J,J in ipairs(I.Box3D)do J.Inner.Color= tbl26 .Colors.ESPBox3D;J.Inner.Thickness=t;end;end;for J,x in ipairs( tbl41 )do n,G=O[x[1]],O[x[2]];if n.Z>0 and G.Z>0 then t,s=Vector2.new(n.X,n.Y),Vector2.new(G.X,G.Y);I.Box3D[J].Outline.From=t;I.Box3D[J].Outline.To=s;I.Box3D[J].Outline.Visible=true;I.Box3D[J].Inner.From=t;I.Box3D[J].Inner.To=s;I.Box3D[J].Inner.Visible=true;else I.Box3D[J].Outline.Visible=false;I.Box3D[J].Inner.Visible=false;end;end;end
							tbl39.RenderSkeleton = function(t,I)local J=I.SkeletonConnections;if I.SkeletonIncomplete and os.clock()>=(I.SkeletonRetryAt or 0)then I.SkeletonConnections=nil;I.SkeletonCharacter=nil;J=nil;end;if I.SkeletonCharacter~=t or not J then I.SkeletonCharacter=t;local G=t:FindFirstChild("UpperTorso");if G then local n,O,s,x,u,w,i,l,a=t:FindFirstChild("LowerTorso"),t:FindFirstChild("LeftUpperArm"),t:FindFirstChild("LeftLowerArm"),t:FindFirstChild("RightUpperArm"),t:FindFirstChild("RightLowerArm"),t:FindFirstChild("LeftUpperLeg"),t:FindFirstChild("LeftLowerLeg"),t:FindFirstChild("RightUpperLeg"),t:FindFirstChild("RightLowerLeg");J={{I.Head,G},{G,x},{x,u},{u,t:FindFirstChild("RightHand")},{G,O},{O,s},{s,t:FindFirstChild("LeftHand")},{G,n},{n,w},{w,i},{i,t:FindFirstChild("LeftFoot")},{n,l},{l,a},{a,t:FindFirstChild("RightFoot")}};else local G=t:FindFirstChild("Torso");J={{I.Head,G},{G,t:FindFirstChild("Left Arm")},{G,t:FindFirstChild("Right Arm")},{G,t:FindFirstChild("Left Leg")},{G,t:FindFirstChild("Right Leg")}};end;I.SkeletonConnections=J;I.SkeletonIncomplete=false;for G,G in ipairs(J)do if not G[1]or not G[2]then I.SkeletonIncomplete=true;I.SkeletonRetryAt=os.clock()+0.5;break;end;end;end;if I._skeletonColor~= tbl26 .Colors.ESPSkeleton then I._skeletonColor= tbl26 .Colors.ESPSkeleton;for G,G in ipairs(I.Skeleton)do G.Inner.Color= tbl26 .Colors.ESPSkeleton;end;end;t=1;for G,G in ipairs(J)do if G[1]and G[2]then local J,n= currentCamera2 :WorldToViewportPoint(G[1].Position), currentCamera2 :WorldToViewportPoint(G[2].Position);if J.Z>0 and n.Z>0 and I.Skeleton[t]then local D,G=Vector2.new(J.X,J.Y),Vector2.new(n.X,n.Y);I.Skeleton[t].Outline.From=D;I.Skeleton[t].Outline.To=G;I.Skeleton[t].Outline.Visible=true;I.Skeleton[t].Inner.From=D;I.Skeleton[t].Inner.To=G;I.Skeleton[t].Inner.Visible=true;t+=1;end;end;end;for D=t,#I.Skeleton,1 do I.Skeleton[D].Outline.Visible=false;I.Skeleton[D].Inner.Visible=false;end;end

							local function fn37()
								currentCamera2 = workspace.CurrentCamera
							end

							local flag20 = v85[33]

							local function fn38()
								tbl26.ESP.Enabled = false

								for k, v100 in pairs(tbl26.ESP.Data) do
									tbl39.DestroyDrawings(v100)
									tbl38.RemoveAvatar(k)
								end

								table.clear(tbl26.ESP.Data)

								if tbl38.Gui then
									pcall(function()
										tbl38.Gui:Destroy()
									end)

									tbl38.Gui = nil
								end

								for _, v100 in ipairs(tbl23) do
									pcall(function()
										v100:Disconnect()
									end)
								end

								table.clear(tbl23)
								flag19 = false
								flag20 = v85[33]
							end

							local function fn39()
								if flag20 then
									return
								end
								fn37()
								tbl39.Init()
								flag20 = true
							end

							v99 = zenthraMain.Categories.ESP:CreateModule({
								Name = "ESP",
								Function = function(arg)
									tbl26.ESP.Enabled = arg == v85[129]

									if arg then
										fn39()
										fn37()
										v99:Clean(workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(fn37))
										local n = 0
										tbl39.Update()
										v99:Clean(v94.RenderStepped:Connect(function(t)if  currentCamera2 ~=workspace.CurrentCamera then  fn37 ();end; n +=t;t= fn32 ()and 0.016666666666666666 or 0.1;if  n >=t then  n %=t;pcall(function()if  tbl18 .Env.GuardDrawing then  tbl18 .Env.GuardDrawing();end;end); tbl39 .Update();end;end))
									else
										fn38()
									end
								end,
								Tooltip = "Universal-style ESP (box, skeleton, chams, tracers, info)",
							})

							v99:CreateToggle({
								Name = "Team Check",
								Default = false,
								Function = function(arg)
									tbl26.ESP.TeamCheck = arg == true
								end,
							})

							v99:CreateToggle({
								Name = "Box ESP",
								Default = v85[33],
								Function = function(arg)
									tbl26.ESP.Box = arg == v85[129]
								end,
							})

							v99:CreateDropdown({
								Name = "Box Style",
								List = { "Corner", "Full" },
								Default = "Corner",
								Function = function(boxStyle)
									tbl26.ESP.BoxStyle = boxStyle
								end,
							})

							v99:CreateToggle({
								Name = "Box Fill",
								Default = false,
								Function = function(arg)
									tbl26.ESP.BoxFill = arg == v85[129]
								end,
							})

							v99:CreateSlider({
								Name = "Fill Transparency",
								Min = v85[163],
								Max = v85[121],
								Default = v85[151],
								Decimal = v85[101],
								Function = function(boxFillAlpha)
									tbl26.ESP.BoxFillAlpha = boxFillAlpha
								end,
							})

							v99:CreateColorSlider({
								Name = "Box Color",
								Hue = 0,
								Sat = v85[4],
								Value = 1,
								Function = function(arg, arg2, arg3)
									tbl26.Colors.ESPBox = Color3.fromHSV(arg, arg2, arg3)
								end,
							})

							v99:CreateColorSlider({
								Name = "Fill Color",
								Hue = 0,
								Sat = v85[4],
								Value = v85[145],
								Function = function(arg, arg2, arg3)
									tbl26.Colors.ESPBoxFill = Color3.fromHSV(arg, arg2, arg3)
								end,
							})

							v99:CreateToggle({
								Name = "Box 3D ESP",
								Default = false,
								Function = function(arg)
									tbl26.ESP.Box3D = arg == true
								end,
							})

							v99:CreateSlider({
								Name = "Box 3D Thickness",
								Min = 0.5,
								Max = 5,
								Default = 1.5,
								Decimal = 10,
								Function = function(box3DThickness)
									tbl26.ESP.Box3DThickness = box3DThickness
								end,
							})

							v99:CreateColorSlider({
								Name = "Box 3D Color",
								Hue = 0,
								Sat = 0,
								Value = 1,
								Function = function(arg, arg2, arg3)
									tbl26.Colors.ESPBox3D = Color3.fromHSV(arg, arg2, arg3)
								end,
							})

							v99:CreateToggle({
								Name = "Tracer ESP",
								Default = false,
								Function = function(arg)
									tbl26.ESP.Tracer = arg == true
								end,
							})

							v99:CreateDropdown({
								Name = "Tracer Origin",
								List = { "Bottom", "Top", "Center", "Cursor" },
								Default = "Bottom",
								Function = function(tracerOrigin)
									tbl26.ESP.TracerOrigin = tracerOrigin
								end,
							})

							v99:CreateColorSlider({
								Name = "Tracer Color",
								Hue = 0,
								Sat = 0,
								Value = 1,
								Function = function(arg, arg2, arg3)
									tbl26.Colors.ESPTracer = Color3.fromHSV(arg, arg2, arg3)
								end,
							})

							v99:CreateToggle({
								Name = "Skeleton ESP",
								Default = false,
								Function = function(arg)
									tbl26.ESP.Skeleton = arg == true
								end,
							})

							v99:CreateColorSlider({
								Name = "Skeleton Color",
								Hue = 0,
								Sat = v85[4],
								Value = 1,
								Function = function(arg, arg2, arg3)
									tbl26.Colors.ESPSkeleton = Color3.fromHSV(arg, arg2, arg3)
								end,
							})

							v99:CreateToggle({
								Name = "Avatar ESP",
								Default = false,
								Function = function(arg)
									tbl26.ESP.Avatar = arg == true
								end,
							})

							v99:CreateSlider({
								Name = "Avatar Size",
								Min = 20,
								Max = 50,
								Default = 28,
								Function = function(avatarSize)
									tbl26.ESP.AvatarSize = avatarSize
								end,
							})

							v99:CreateToggle({
								Name = "Name ESP",
								Default = v85[33],
								Function = function(arg)
									tbl26.ESP.Name = arg == true
								end,
							})

							v99:CreateColorSlider({
								Name = "Name Color",
								Hue = 0,
								Sat = 0,
								Value = 1,
								Function = function(arg, arg2, arg3)
									tbl26.Colors.ESPName = Color3.fromHSV(arg, arg2, arg3)
								end,
							})

							v99:CreateSlider({
								Name = "Name Size",
								Min = 10,
								Max = 20,
								Default = 13,
								Function = function(nameSize)
									tbl26.ESP.NameSize = nameSize
								end,
							})

							v99:CreateToggle({
								Name = "Health Bar",
								Default = false,
								Function = function(arg)
									tbl26.ESP.Health = arg == true
								end,
							})

							v99:CreateToggle({
								Name = "Health Number",
								Default = v85[33],
								Function = function(arg)
									if not (n25 >= 5930) then
										tbl26.ESP.HealthNumber = arg == true
										return
									end

									while true do
									end
								end,
							})

							v99:CreateDropdown({
								Name = "Health Number Mode",
								List = { "Percentage", "Amount" },
								Default = "Percentage",
								Function = function(healthNumberMode)
									tbl26.ESP.HealthNumberMode = healthNumberMode
								end,
							})

							v99:CreateSlider({
								Name = "Health Number Size",
								Min = 8,
								Max = 16,
								Default = 11,
								Function = function(healthNumberSize)
									tbl26.ESP.HealthNumberSize = healthNumberSize
								end,
							})

							v99:CreateToggle({
								Name = "Distance ESP",
								Default = v85[33],
								Function = function(arg)
									tbl26.ESP.Distance = arg == v85[129]
								end,
							})

							v99:CreateColorSlider({
								Name = "Distance Color",
								Hue = 0,
								Sat = 0,
								Value = 0.67,
								Function = function(arg, arg2, arg3)
									tbl26.Colors.ESPDistance = Color3.fromHSV(arg, arg2, arg3)
								end,
							})

							v99:CreateSlider({
								Name = "Distance Size",
								Min = 8,
								Max = v85[47],
								Default = v85[46],
								Function = function(distanceSize)
									tbl26.ESP.DistanceSize = distanceSize
								end,
							})

							v99:CreateToggle({
								Name = "Weapon ESP",
								Default = false,
								Function = function(arg)
									tbl26.ESP.Weapon = arg == true
								end,
							})

							v99:CreateColorSlider({
								Name = "Weapon Color",
								Hue = 0.1111,
								Sat = 0.7647,
								Value = v85[145],
								Function = function(arg, arg2, arg3)
									tbl26.Colors.ESPWeapon = Color3.fromHSV(arg, arg2, arg3)
								end,
							})

							v99:CreateSlider({
								Name = "Weapon Size",
								Min = 8,
								Max = v85[47],
								Default = 11,
								Function = function(weaponSize)
									tbl26.ESP.WeaponSize = weaponSize
								end,
							})

							v99:CreateToggle({
								Name = "Chams",
								Default = false,
								Function = function(arg)
									tbl26.ESP.Chams = arg == true
								end,
							})

							v99:CreateColorSlider({
								Name = "Chams Fill",
								Hue = 0,
								Sat = v85[145],
								Value = 1,
								Function = function(arg, arg2, arg3)
									tbl26.ESP.ChamsFill = Color3.fromHSV(arg, arg2, arg3)
								end,
							})

							v99:CreateColorSlider({
								Name = "Chams Outline",
								Hue = 0,
								Sat = 0,
								Value = v85[145],
								Function = function(arg, arg2, arg3)
									tbl26.ESP.ChamsOutline = Color3.fromHSV(arg, arg2, arg3)
								end,
							})

							v99:CreateSlider({
								Name = "Chams Fill Transparency",
								Min = v85[4],
								Max = v85[145],
								Default = 0.5,
								Decimal = 100,
								Function = function(chamsFillTransparency)
									tbl26.ESP.ChamsFillTransparency = chamsFillTransparency
								end,
							})

							v99:CreateSlider({
								Name = "Chams Outline Transparency",
								Min = v85[4],
								Max = 1,
								Default = v85[4],
								Decimal = 100,
								Function = function(chamsOutlineTransparency)
									tbl26.ESP.ChamsOutlineTransparency = chamsOutlineTransparency
								end,
							})

							table.insert(zenthraMain.Cleanups, fn38)
						end

						zenthraMain.ESP.ESP()

						zenthraMain.Visuals.BulletTracers = function()
							local v99 = nil
							local v100 = nil
							local v101 = nil
							local v102 = nil
							local v103 = nil
							local v104 = nil
							local v105 = nil
							local v106 = nil
							local tbl23 = {}
							local tbl24 = {}
							local n33 = v85[145]
							local n34 = 0
							local tbl25 = {}
							local tbl26 = {}

							local tbl27 = {
								{ w0 = 0.06, w1 = 0.05, t = 0.02, hot = true, em = 1 },
								{ w0 = 0.22, w1 = 0.18, t = 0.38, em = 1 },
								{ w0 = 0.58, w1 = 0.5, t = 0.68, em = v85[145] },
								{ w0 = 1.15, w1 = 1, t = 0.88, em = 0.9 },
							}

							local tbl28 = {}

							for i, v107 in ipairs(tbl27) do
								local tbl29 = {}

								for i2 = 0, v85[62] do
									local n = 1 - i2 / v85[62]
									tbl29[i2] = NumberSequence.new(math.clamp(1 - (1 - v107.t) * n * n, 0, v85[145]))
								end

								tbl28[i] = tbl29
							end

							local raycastParams = RaycastParams.new()
							raycastParams.CollisionGroup = "ClientBullet"
							raycastParams.FilterType = Enum.RaycastFilterType.Exclude
							local raycastParams2 = RaycastParams.new()
							raycastParams2.FilterType = Enum.RaycastFilterType.Exclude
							raycastParams2.RespectCanCollide = false
							local overlapParams = OverlapParams.new()
							overlapParams.FilterType = Enum.RaycastFilterType.Exclude

							local function fn31()
								local value = v101 and v101.Value
								local v107 = v85[40]

								if type(value) ~= v107 and zenthra and zenthra.Flags then
									value = zenthra.Flags.pl_bullettracers_bullet_animation
								end

								return value == "Lightning"
							end

							local function fn32(arg, arg2)
								local n = arg2 - arg
								local magnitude = n.Magnitude
								if magnitude < 1.2 then
									return { arg, arg2 }
								end
								local cframe = CFrame.lookAt(arg, arg2)
								local rightVector = cframe.RightVector
								local upVector = cframe.UpVector
								local n35 = math.clamp(math.floor(magnitude / v85[46]) + 4, 5, 12)
								local n36 = math.clamp(magnitude * 0.08, 1.35, 9.5)
								local v107 = table.create(n35 + v85[145])
								v107[v85[145]] = arg
								local vector = Vector3.zero

								for i = 1, n35 - 1 do
									local n37 = i / n35
									local v108 = math.sin(n37 * 3.1415926535897931)
									local v109 = v85[9]
									local n38 = rightVector * (math.random() * v109 - 1) + upVector * (math.random() * 2 - 1)
									local unit

									if n38.Magnitude < v85[163] then
										unit = rightVector
									else
										unit = n38.Unit
									end

									vector = vector * 0.22 + unit * n36 * v108 * (v85[158] + math.random() * 0.7) * 0.78
									v107[i + 1] = arg + n * n37 + vector
								end

								v107[n35 + 1] = arg2
								return v107
							end

							local function fn33(arg)
								local tbl29 = {}
								if #arg < 5 then
									return tbl29
								end

								for i = v85[145], math.random(1, 2) do
									local n = math.random(2, math.max(2, math.floor(#arg * 0.55)))
									local v107 = arg[n]
									local n35 = arg[math.min(n + 2, #arg)] - v107

									if not (n35.Magnitude < 0.25) then
										local cframe = CFrame.lookAt(v107, v107 + n35)
										local n36 = n35.Magnitude * (0.32 + math.random() * 0.38)
										local v108 = v85[121]
										local n37 = n35.Unit + cframe.RightVector * (math.random() - v108) * 1.55
										local v109 = v85[121]
										local n38 = n37 + cframe.UpVector * (math.random() - v109) * 1.55

										if not (n38.Magnitude < 0.08) then
											local unit = n38.Unit
											local upVector = cframe.UpVector
											local v110 = v85[175]

											table.insert(tbl29, {
												v107,
												v107 + unit * n36 * 0.48 + cframe.RightVector * (math.random() - 0.5) * n36 * 0.35 + upVector * (math.random() - 0.5) * n36 * v110,
												v107 + unit * n36,
											})
										end
									end
								end

								return tbl29
							end

							local v107

							local function fn34()
								return Color3.fromHSV(v107.Hue, v107.Sat, v107.Value)
							end

							local function fn35()
								return math.clamp(tonumber(v107 and v107.Opacity) or 1, 0, 1)
							end

							local function fn36(arg)
								arg.Anchored = true
								arg.CanCollide = false
								arg.CanQuery = false
								arg.CanTouch = false
								arg.CastShadow = v85[33]
								arg.Massless = v85[129]
							end

							local function fn37(arg, arg2)
								task.delay(arg2, function()
									if arg then
										pcall(function()
											arg:Destroy()
										end)
									end
								end)
							end

							local tbl29 = {}
							local v108 = nil
							local v109 = nil

							local function fn38()
								local character = localPlayer.Character

								if character ~= v108 or clone ~= v109 then
									v108 = character
									v109 = clone
									table.clear(tbl29)

									if character then
										table.insert(tbl29, character)
									end

									if clone then
										table.insert(tbl29, clone)
									end
								end

								return tbl29
							end

							local function fn39(arg)
								local part = Instance.new("Part")
								part.Name = "BTNode"
								fn36(part)
								part.Transparency = 1
								part.Size = Vector3.new(v85[163], v85[163], 0.05)
								part.CFrame = CFrame.new(arg)
								part.Parent = workspace
								local attachment = Instance.new("Attachment")
								attachment.Parent = part
								return part, attachment
							end

							local function fn40(arg, arg2)
								local v110 = fn38()
								raycastParams.FilterDescendantsInstances = v110
								raycastParams2.FilterDescendantsInstances = v110
								local n = arg2 - arg
								local magnitude = n.Magnitude
								if magnitude < 0.05 then
									return nil
								end
								local hit = workspace:Raycast(arg, n, raycastParams) or workspace:Raycast(arg, n, raycastParams2)
								local enabled = v105 and v105.Enabled

								if not hit and enabled and type(workspace.Spherecast) == "function" then
									hit = workspace:Spherecast(arg, 0.4, n, raycastParams) or workspace:Spherecast(arg, v85[158], n, raycastParams2)
								end

								if hit then
									return hit.Position, hit.Normal, true
								end

								if magnitude < 280 then
									local hit2 = workspace:Raycast(arg2, arg - arg2, raycastParams2)
									if hit2 then
										return hit2.Position, hit2.Normal, true
									end
								end

								if not enabled then
									return arg2, nil, v85[33]
								end
								overlapParams.FilterDescendantsInstances = v110
								local v111 = nil
								local v112 = nil

								for _, v113 in workspace:GetPartBoundsInRadius(arg2, 1.7, overlapParams), nil, nil do
									if v113:IsA("BasePart") and v113.Transparency < 0.95 then
										local magnitude2 = (v113.Position - arg2).Magnitude

										if not v112 or magnitude2 < v112 then
											v111 = v113
											v112 = magnitude2
										end
									end
								end

								if v111 then
									local ok, result = pcall(function()
										return v111:GetClosestPointOnSurface(arg2)
									end)

									result = ok and typeof(result) == "Vector3" and result or arg2
									local n35 = arg - result
									local vector

									if n35.Magnitude < 0.05 then
										vector = Vector3.new(0, 1, v85[4])
									else
										vector = n35.Unit
									end

									return result, vector, true
								end

								return arg2, nil, false
							end

							local function fn41(arg, arg2, arg3)
								if typeof(arg) ~= "Vector3" then
									return nil
								end
								local n = typeof(arg2) == "Vector3" and arg2 or arg + currentCamera.CFrame.LookVector * 500
								local v110, v111, v112 = fn40(arg, n)

								if not v112 and typeof(arg3) == "Vector3" and (arg3 - arg).Magnitude > 0.2 then
									v110, v111, v112 = fn40(arg3, n)
								end

								return v110 or n, v111, v112 == true
							end

							local function fn42(arg, arg2, color)
								if not (v105 and v105.Enabled) or typeof(arg) ~= "Vector3" then
									return
								end
								local enabled = v104 and v104.Enabled
								local vector

								if typeof(arg2) ~= "Vector3" or arg2.Magnitude < 0.05 then
									vector = Vector3.new(0, 1, v85[4])
								else
									vector = arg2.Unit
								end

								local n = arg + vector * v85[162]
								local cframe = CFrame.lookAt(n, n + vector)

								local function fn43(arg3, arg4)
									v93:Create(arg3, TweenInfo.new(0.42, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = arg4, Transparency = 1 }):Play()
									fn37(arg3, 0.42)
								end

								local part = Instance.new("Part")
								part.Name = "BTImpact"
								part.Shape = Enum.PartType.Ball
								fn36(part)
								part.Material = Enum.Material.Neon
								part.Color = color:Lerp(Color3.new(1, 1, 1), 0.25)
								part.Transparency = 0.05
								part.Size = Vector3.new(0.2, v85[76], 0.2)
								part.CFrame = CFrame.new(n)
								part.Parent = workspace

								if enabled then
									local pointLight = Instance.new("PointLight")
									pointLight.Color = color
									pointLight.Brightness = v85[100]
									pointLight.Range = 10
									pointLight.Shadows = false
									pointLight.Parent = part
									v93:Create(pointLight, TweenInfo.new(0.42, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Brightness = 0, Range = 20 }):Play()
									local part2 = Instance.new("Part")
									part2.Name = "BTBloom"
									part2.Shape = Enum.PartType.Ball
									fn36(part2)
									part2.Material = Enum.Material.Neon
									part2.Color = color
									part2.Transparency = 0.55
									part2.Size = Vector3.new(0.45, 0.45, v85[190])
									part2.CFrame = CFrame.new(n)
									part2.Parent = workspace
									fn43(part2, Vector3.new(2.4, 2.4, 2.4))
								end

								fn43(part, Vector3.new(1.35, 1.35, 1.35))
								local part2 = Instance.new("Part")
								part2.Name = "BTShock"
								part2.Shape = Enum.PartType.Cylinder
								fn36(part2)
								part2.Material = Enum.Material.Neon
								part2.Color = color
								part2.Transparency = 0.12
								part2.Size = Vector3.new(0.04, 0.22, 0.22)
								part2.CFrame = cframe * CFrame.Angles(0, -1.5707963267948966, v85[4])
								part2.Parent = workspace
								fn43(part2, Vector3.new(0.02, 2.4, 2.4))
								local part3 = Instance.new("Part")
								part3.Name = "BTSparks"
								fn36(part3)
								part3.Transparency = 1
								part3.Size = Vector3.new(0.08, 0.08, 0.08)
								part3.CFrame = cframe
								part3.Parent = workspace
								local attachment = Instance.new("Attachment")
								attachment.Parent = part3
								local particleEmitter = Instance.new("ParticleEmitter")
								particleEmitter.Texture = "rbxasset://textures/particles/sparkles_main.dds"
								particleEmitter.Color = ColorSequence.new(color, color:Lerp(Color3.new(1, v85[145], v85[145]), 0.5))
								particleEmitter.LightEmission = 1
								particleEmitter.LightInfluence = v85[4]
								particleEmitter.Enabled = v85[33]
								particleEmitter.Rate = v85[4]
								particleEmitter.Lifetime = NumberRange.new(0.14, 0.34)
								particleEmitter.Speed = NumberRange.new(v85[88], 24)
								particleEmitter.SpreadAngle = Vector2.new(62, 62)
								particleEmitter.Acceleration = Vector3.new(v85[4], -48, 0)
								particleEmitter.Drag = 1.8
								particleEmitter.EmissionDirection = Enum.NormalId.Front
								local new = NumberSequenceKeypoint.new
								particleEmitter.Size = NumberSequence.new({ NumberSequenceKeypoint.new(v85[4], 0.22), new(1, 0) })
								local new2 = NumberSequenceKeypoint.new
								particleEmitter.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(v85[4], 0.05), new2(1, 1) })
								particleEmitter.Parent = attachment
								particleEmitter:Emit(enabled and 26 or 16)
								fn37(part3, 0.66999999999999993)
							end

							local function fn43(arg, arg2, color, arg3)
								local v110, v111 = fn39(arg)
								local v112, v113 = fn39(arg2)
								local v114 = color:Lerp(Color3.new(1, v85[145], 1), 0.55)
								local tbl30 = {}

								for i, v115 in ipairs(tbl27) do
									local beam = Instance.new("Beam")
									beam.Attachment0 = v111
									beam.Attachment1 = v113
									beam.FaceCamera = true
									beam.LightEmission = v115.em
									beam.LightInfluence = 0
									beam.Width0 = v115.w0
									beam.Width1 = v115.w1
									beam.Color = ColorSequence.new(v115.hot and v114 or color)
									beam.Transparency = NumberSequence.new(v115.t)
									beam.Segments = 8
									beam.Parent = v110
									table.insert(tbl30, { beam = beam, index = i, w0 = v115.w0, w1 = v115.w1 })
								end

								local function createPointLight(parent, brightness, range)
									local pointLight = Instance.new("PointLight")
									pointLight.Color = color
									pointLight.Brightness = brightness
									pointLight.Range = range
									pointLight.Shadows = v85[33]
									pointLight.Parent = parent
									return pointLight
								end

								tbl25[v110] = {
									p0 = v110,
									p1 = v112,
									beams = tbl30,
									l0 = createPointLight(v110, 1.35, 10),
									l1 = createPointLight(v112, 1.8, 12),
									started = os.clock(),
									life = math.max(0.02, arg3),
								}

								task.delay(arg3, function()
									tbl25[v110] = nil

									pcall(function()
										v110:Destroy()
									end)

									pcall(function()
										v112:Destroy()
									end)
								end)
							end

							local function fn44(t)if not( v103 and  v103 .Enabled)then return;end;for I,J in  tbl25 ,nil,nil do if not J.p0.Parent or not J.p1.Parent then  tbl25 [I]=nil;continue;end;I=math.clamp((t-J.started)/J.life,0,1);local t=1-I;local G,n=t*t,math.clamp(math.floor(I*30+0.5),0,30);for t,t in J.beams,nil,nil do if t.beam.Parent then t.beam.Transparency= tbl28 [t.index][n];t.beam.Width0=t.w0*(0.15+0.85*G);t.beam.Width1=t.w1*(0.15+0.85*G);end;end;J.l0.Brightness=1.35*G;J.l1.Brightness=1.8*G;end;end

							local function fn45()
								for k, v110 in tbl25, nil, nil do
									tbl25[k] = nil

									pcall(function()
										v110.p0:Destroy()
									end)

									pcall(function()
										v110.p1:Destroy()
									end)
								end
							end

							local function fn46()
								for k in tbl26, nil, nil do
									tbl26[k] = nil

									pcall(function()
										k:Destroy()
									end)
								end
							end

							local function fn47(arg, arg2, color, arg3, arg4)
								local instance = Instance.new(v85[105])
								instance.Name = "BTLightning"
								instance.Parent = currentCamera or workspace
								tbl26[instance] = true
								local v110 = color:Lerp(Color3.new(1, 1, 1), 0.62)
								local v111 = v104
								local enabled

								if v104 then
									enabled = v104.Enabled
								else
									enabled = v111
								end

								local v112 = v103
								local enabled2

								if v103 then
									enabled2 = v103.Enabled
								else
									enabled2 = v112
								end

								local function fn48(arg5, arg6, arg7)
									local v113 = arg7 or v85[145]
									local magnitude = (arg6 - arg5).Magnitude
									if magnitude < 0.05 then
										return
									end
									local cframe = CFrame.lookAt(arg5:Lerp(arg6, 0.5), arg6)

									local function fn49(arg8, color2, arg9)
										local part = Instance.new("Part")
										part.Name = "BTBolt"
										fn36(part)
										part.Material = Enum.Material.Neon
										part.Color = color2
										part.Transparency = math.clamp(arg9 + (1 - arg4) * 0.3, 0, 0.98)
										part.Size = Vector3.new(arg8 * v113, arg8 * v113, magnitude)
										part.CFrame = cframe
										part.Parent = instance

										if enabled2 then
											v93:Create(part, TweenInfo.new(arg3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Transparency = 1 }):Play()
										end
									end

									if enabled then
										fn49(0.3, color, v85[149])
										fn49(0.12, color, 0.42)
										fn49(0.04, v110, 0.04)
									else
										fn49(0.085, color, 0.12)
									end
								end

								local v113 = fn32(arg, arg2)

								for i = 1, #v113 - 1 do
									fn48(v113[i], v113[i + 1], 1)
								end

								for _, v114 in fn33(v113) do
									for i = 1, #v114 - 1 do
										fn48(v114[i], v114[i + 1], 0.52)
									end
								end

								if enabled then
									local function fn49(arg5, brightness, range)
										local part = Instance.new("Part")
										part.Name = "BTBoltLight"
										fn36(part)
										part.Transparency = 1
										part.Size = Vector3.new(0.08, 0.08, 0.08)
										part.CFrame = CFrame.new(arg5)
										part.Parent = instance
										local pointLight = Instance.new("PointLight")
										pointLight.Color = color
										pointLight.Brightness = brightness
										pointLight.Range = range
										pointLight.Shadows = v85[33]
										pointLight.Parent = part

										if enabled2 then
											local tbl30 = { Brightness = v85[4] }
											v93:Create(pointLight, TweenInfo.new(arg3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), tbl30):Play()
										end
									end

									fn49(arg, 1.4, v85[88])
									fn49(arg2, 2.1, 13)

									if v85[128] < #v113 then
										local v114 = v85[133]
										fn49(v113[math.ceil(#v113 / 2)], 1.1, v114)
									end
								end

								task.delay(arg3, function()
									tbl26[instance] = nil

									pcall(function()
										instance:Destroy()
									end)
								end)
							end

							local function fn48(arg)
								if not arg then
									return
								end

								pcall(function()
									arg.Visible = false
									arg:Remove()
								end)
							end

							local function fn49(arg)
								local ok, result = pcall(Drawing.new, arg)
								if ok then
									return result
								end
								return nil
							end

							local function fn50(arg, thickness, color, transparency, zIndex)
								arg.Thickness = thickness
								arg.Color = color
								arg.Transparency = transparency
								arg.ZIndex = zIndex
								arg.Visible = false
								return arg
							end

							local function fn51(arg, radius, color, transparency, zIndex)
								arg.Radius = radius
								arg.Color = color
								arg.Transparency = transparency
								arg.ZIndex = zIndex
								arg.Visible = v85[33]

								pcall(function()
									arg.Filled = v85[129]
									arg.Thickness = 0
								end)

								return arg
							end

							local function fn52(arg)
								local v110 = tbl23[arg]
								if not v110 then
									return
								end
								tbl23[arg] = nil
								n34 = math.max(v85[4], n34 - 1)

								if v110.segs then
									for _, v111 in v110.segs, nil, nil do
										fn48(v111.obj)

										if v111.glows then
											for _, v112 in v111.glows, nil, nil do
												fn48(v112.obj)
											end
										end
									end
								else
									fn48(v110.core)

									for _, v111 in v110.glows, nil, nil do
										fn48(v111.obj)
									end
								end

								for _, v111 in v110.caps, nil, nil do
									fn48(v111.obj)
								end
							end

							local function fn53()
								while n34 > 32 do
									local v110 = tbl24[n33]
									n33 += 1

									if v110 then
										fn52(v110)
									end
								end

								if n33 > 128 or #tbl24 > 256 then
									local tbl30 = {}

									for i = n33, #tbl24 do
										local v110 = tbl24[i]

										if v110 and tbl23[v110] then
											table.insert(tbl30, v110)
										end
									end

									tbl24 = tbl30
									n33 = 1
								end
							end

							local function fn54()
								for k in tbl23, nil, nil do
									fn52(k)
								end

								table.clear(tbl23)
								table.clear(tbl24)
								n33 = 1
								n34 = v85[4]
							end

							local function fn55(arg, arg2, arg3, arg4, arg5)
								local v110 = arg3:Lerp(Color3.new(1, 1, 1), 0.55)
								local v111 = v104
								local enabled

								if v104 then
									enabled = v104.Enabled
								else
									enabled = v111
								end

								local segs = {}

								local function fn56(arg6, arg7, arg8)
									local n = arg8 or 1
									local Line = fn49("Line")

									if not (n25 >= 5923) then
										if not Line then
											return
										end
										fn50(Line, (enabled and 2.4 or 2) * n, enabled and v110 or arg3, 1 - arg5, 6)
										local tbl30 = { obj = Line, a = arg6, b = arg7, glows = {} }

										if enabled then
											for _, v112 in {
												{ thick = 11 * n, t = 0.86, z = 1, col = arg3 },
												{ thick = 3.2 * n, t = 0.32, z = 4, col = v110 },
											}, nil, nil do
												local Line2 = fn49("Line")

												if Line2 then
													fn50(Line2, v112.thick, v112.col, v112.t, v112.z)
													table.insert(tbl30.glows, { obj = Line2, t = v112.t, thick = v112.thick })
												end
											end
										end

										table.insert(segs, tbl30)
										return
									end

									while true do
									end
								end

								local v112 = fn32(arg, arg2)

								for i = 1, #v112 - 1 do
									fn56(v112[i], v112[i + 1], 1)
								end

								for _, v113 in fn33(v112) do
									for i = 1, #v113 - 1 do
										fn56(v113[i], v113[i + 1], v85[147])
									end
								end

								if #segs == 0 then
									return
								end
								local core = segs[1].obj
								local tbl30 = {}
								local now5 = os.clock()
								tbl30[1] = arg
								tbl30[2] = arg2
								tbl30[3] = now5
								tbl30.kind = "lightning"
								tbl30.core = core
								tbl30.segs = segs
								tbl30.glows = {}
								tbl30.caps = {}

								if enabled then
									local tbl31 = {
										{ r = 14, t = 0.88, z = 1, col = arg3 },
										{ r = v85[138], t = 0.7, z = v85[9], col = arg3 },
										{ r = 3, t = 0.2, z = 5, col = v110 },
									}

									for _, v113 in { "from", "to" }, nil, nil do
										for _, v114 in tbl31, nil, nil do
											local Circle = fn49("Circle")

											if Circle then
												fn51(Circle, v114.r, v114.col, v114.t, v114.z)
												table.insert(tbl30.caps, { obj = Circle, t = v114.t, r = v114.r, which = v113 })
											end
										end
									end
								end

								tbl23[core] = tbl30
								n34 += 1
								table.insert(tbl24, core)
								fn53()

								task.delay(arg4, function()
									fn52(core)
								end)
							end

							v99 = zenthraMain.Categories.Visuals:CreateModule({
								Name = "BulletTracers",
								Function = function(arg)
									if arg then
										tracerHook:Add("BulletTracers", function(arg2, arg3)
											local position

											if clone and tracerHook.IsLocalShot and tracerHook.IsLocalShot(arg2) then
												local muzzle = clone:FindFirstChild("Muzzle", true)

												if muzzle then
													position = muzzle.Position
												else
													position = arg2
												end
											else
												position = arg2
											end

											local n, v110, v111 = fn41(arg2, arg3, position)
											if not n then
												return false
											end
											local n35 = n - position
											local magnitude = n35.Magnitude
											if magnitude < 0.05 then
												return false
											end

											if magnitude > 1200 then
												n = position + n35.Unit * 1000
												n35 = n - position
												magnitude = 1000
											end

											local v112 = fn34()
											local v113 = fn35()
											local n36 = math.max(0.02, tonumber(v102 and v102.Value) or 0.2)
											local enabled = v104 and v104.Enabled

											if fn31() then
												if v106.Enabled then
													fn55(position, n, v112, n36, v113)
												else
													fn47(position, n, v112, n36, v113)
												end
											elseif v106.Enabled then
												local v114 = v85[159]
												local v115 = v112:Lerp(Color3.new(1, 1, 1), v114)
												local Line = fn49("Line")
												if not Line then
													return true
												end
												fn50(Line, enabled and 2.2 or v85[9], enabled and v115 or v112, 1 - v113, 6)
												local tbl30 = {}
												local now5 = os.clock()
												tbl30[1] = position
												tbl30[2] = n
												tbl30[3] = now5
												tbl30.core = Line
												tbl30.glows = {}
												tbl30.caps = {}

												if enabled then
													for _, v116 in {
														{ thick = 22, t = 0.91, z = 1, col = v112 },
														{ thick = 13, t = 0.8, z = v85[9], col = v112 },
														{ thick = 7, t = 0.62, z = v85[128], col = v112 },
														{ thick = 3.5, t = v85[182], z = 4, col = v115 },
													}, nil, nil do
														local Line2 = fn49("Line")

														if Line2 then
															fn50(Line2, v116.thick, v116.col, v116.t, v116.z)
															table.insert(tbl30.glows, { obj = Line2, t = v116.t, thick = v116.thick })
														end
													end

													local tbl31 = {
														{ r = 15, t = 0.9, z = 1, col = v112 },
														{ r = 8, t = 0.74, z = 2, col = v112 },
														{ r = 3.5, t = 0.22, z = 5, col = v115 },
													}

													for _, v116 in { "from", "to" }, nil, nil do
														for _, v117 in tbl31, nil, nil do
															local Circle = fn49("Circle")

															if Circle then
																fn51(Circle, v117.r, v117.col, v117.t, v117.z)
																table.insert(tbl30.caps, { obj = Circle, t = v117.t, r = v117.r, which = v116 })
															end
														end
													end
												end

												tbl23[Line] = tbl30
												n34 += 1
												table.insert(tbl24, Line)
												fn53()

												task.delay(n36, function()
													fn52(Line)
												end)
											elseif enabled then
												fn43(position, n, v112, n36)
											else
												local part = Instance.new("Part")
												part.Name = "BTBeam"
												fn36(part)
												part.Size = Vector3.new(0.1, v85[189], magnitude)
												part.CFrame = CFrame.lookAt(position + n35 * 0.5, n)
												part.Material = Enum.Material[v100.Value] or Enum.Material.SmoothPlastic
												part.Color = v112
												part.Transparency = v85[145] - v113
												part.Parent = workspace

												if v103.Enabled then
													local tween = v93:Create(part, TweenInfo.new(n36), { Transparency = 1 })

													tween.Completed:Connect(function()
														tween:Destroy()
													end)

													tween:Play()
												end

												fn37(part, n36)
											end

											if v111 then
												fn42(n, v110, v112)
											end

											return true
										end, 1)

										local n35 = 0
										v99:Clean(v94.Heartbeat:Connect(function(t)if not next( tbl25 )then return;end; n35 +=t;if  n35 <0.016666666666666666 then return;end; n35 %=0.016666666666666666; fn44 (os.clock());end))

										if v106.Enabled then
											local n36 = 0
											v99:Clean(v94.RenderStepped:Connect(function(t)if not next( tbl23 )then return;end; n36 +=t;if  n36 <0.016666666666666666 then return;end; n36 %=0.016666666666666666;t=os.clock();local I= fn35 ();local J=math.max(0.02, v102 .Value);for G,n in  tbl23 ,nil,nil do local O=1;if  v103 .Enabled then local s=math.clamp((t-n[3])/J,0,1);O=(1-s)*(1-s);end;if n.kind=="lightning"and n.segs then for t,t in n.segs,nil,nil do local J,s= currentCamera :WorldToViewportPoint(t.a), currentCamera :WorldToViewportPoint(t.b);local x,u,w=J.Z>0 and s.Z>0,Vector2.new(J.X,J.Y),Vector2.new(s.X,s.Y);t.obj.Visible=x;if x then t.obj.From=u;t.obj.To=w;t.obj.Transparency=1-I*O;end;if t.glows then for J,J in t.glows,nil,nil do s=J.obj;s.Visible=x;if x then s.From=u;s.To=w;s.Transparency=1-(1-J.t)*O;s.Thickness=J.thick*(0.35+0.65*O);end;end;end;end;if n.caps then local t,J= currentCamera :WorldToViewportPoint(n[1]);local s,x= currentCamera :WorldToViewportPoint(n[2]);local u,w,i,l=t.Z>0,s.Z>0,Vector2.new(t.X,t.Y),Vector2.new(s.X,s.Y);for t,t in n.caps,nil,nil do if t.which=="from"and J and u or t.which=="to"and x and w then t.obj.Visible=true;t.obj.Position=t.which=="from"and i or l;t.obj.Transparency=1-(1-t.t)*O;t.obj.Radius=t.r*(0.3+0.7*O);else t.obj.Visible=false;end;end;end;continue;end;local t,J= currentCamera :WorldToViewportPoint(n[1]);local s,x= currentCamera :WorldToViewportPoint(n[2]);local D,u,w,i=t.Z>0,s.Z>0,Vector2.new(t.X,t.Y),Vector2.new(s.X,s.Y);if D and u then G.Visible=true;G.From=w;G.To=i;G.Transparency=1-I*O;if n.glows then for t,I in n.glows,nil,nil do t=I.obj;t.Visible=true;t.From=w;t.To=i;t.Transparency=1-(1-I.t)*O;t.Thickness=I.thick*(0.35+0.65*O);end;end;else G.Visible=false;if n.glows then for t,t in n.glows,nil,nil do t.obj.Visible=false;end;end;end;if n.caps then for t,t in n.caps,nil,nil do if t.which=="from"and J and D or t.which=="to"and x and u then t.obj.Visible=true;t.obj.Position=t.which=="from"and w or i;t.obj.Transparency=1-(1-t.t)*O;t.obj.Radius=t.r*(0.3+0.7*O);else t.obj.Visible=false;end;end;end;end;end))
										end
									else
										tracerHook:Remove("BulletTracers")
										fn54()
										fn45()
										fn46()
									end
								end,
								Tooltip = "Allow you to customize bullet tracers.",
							})

							local tbl30 = { "SmoothPlastic" }

							for _, v110 in Enum.Material:GetEnumItems() do
								if v110.Name ~= "SmoothPlastic" then
									table.insert(tbl30, v110.Name)
								end
							end

							v100 = v99:CreateDropdown({ Name = "Material", List = tbl30 })

							v101 = v99:CreateDropdown({
								Name = "Bullet Animation",
								List = { "Normal", "Lightning" },
								Default = "Normal",
								Tooltip = "Normal is a straight tracer. Lightning zig-zags with forks like a bolt.",
							})

							v107 = v99:CreateColorSlider({ Name = "Tracer Color", DefaultOpacity = 0.5 })
							v102 = v99:CreateSlider({ Name = "Lifetime", Min = 0, Max = 3, Default = 0.2, Decimal = 10, Suffix = "s" })
							v103 = v99:CreateToggle({ Name = "Fade", Default = true })
							v104 = v99:CreateToggle({ Name = "Glow", Default = v85[33], Tooltip = "Soft neon bloom and light along the tracer" })

							v105 = v99:CreateToggle({
								Name = "Impact Animation",
								Default = v85[33],
								Tooltip = "Flash, shockwave and sparks where the bullet hits",
							})

							v106 = v99:CreateToggle({
								Name = "Drawing",
								Function = function()
									if v99.Enabled then
										v99:Toggle()
										v99:Toggle()
									end
								end,
							})
						end

						zenthraMain.Visuals.BulletTracers()

						zenthraMain.Visuals.Crosshair = function()
							local v99 = nil

							local v100 = zenthraMain.Categories.Visuals:CreateModule({
								Name = "Crosshair",
								Function = function(arg)
									if arg then
										debug.setconstant(v97 or pl.Equip, 30, v99.Value:find("rbxasset") and v99.Value or isfile(v99.Value) and getcustomasset(v99.Value) or "")
									else
										local setconstant = debug.setconstant
										local v100 = v97
										local equip

										if v97 then
											equip = v100
										else
											equip = pl.Equip
										end

										setconstant(equip, v85[62], "rbxassetid://98794608762931")
									end
								end,
								Tooltip = "Change the crosshair icon",
							})

							v99 = v100:CreateTextBox({
								Name = "Image",
								Placeholder = "assetid",
								Function = function()
									if v100.Enabled then
										debug.setconstant(v97 or pl.Equip, 30, v99.Value:find("rbxasset") and v99.Value or isfile(v99.Value) and getcustomasset(v99.Value) or "")
									end
								end,
							})
						end

						zenthraMain.Visuals.Crosshair()

						zenthraMain.Visuals.DamageIndicator = function()
							local v99 = nil
							local v100 = nil
							local tbl23 = {}
							local textLabel = nil
							local part = nil
							local thread = nil
							local n = 0

							local function fn31(arg, arg2, arg3, arg4)
								while arg2 >= arg do
									if arg4(arg) then
										return
									end
									local now5 = tick()
									v94.RenderStepped:Wait()
									arg += arg3 * (tick() - now5) * 60
								end

								arg4(arg2)
							end

							local v101

							local function fn32(arg, position)
								if not arg or arg <= 0 or not position then
									return
								end
								local n33 = math.clamp(arg, 0.1, 500)

								if thread and textLabel and part then
									task.cancel(thread)
									textLabel.Text = tostring(math.ceil((tonumber(textLabel.Text) or 0) + n33))
									part.Position = position
								else
									part = Instance.new("Part")
									part.Size = Vector3.zero
									part.Position = position
									part.CanCollide = false
									part.CanQuery = false
									part.Anchored = true
									part.Transparency = 1
									part.Parent = workspace
									local billboardGui = Instance.new("BillboardGui")
									billboardGui.Adornee = part
									billboardGui.Size = UDim2.new(15, 250, 15, 250)
									billboardGui.AlwaysOnTop = true
									billboardGui.Parent = part
									textLabel = Instance.new("TextLabel")
									textLabel.BackgroundTransparency = 1
									textLabel.TextStrokeTransparency = v85[4]
									textLabel.Size = UDim2.fromScale(1, 0.075)
									textLabel.Position = UDim2.fromScale(0.5, 0.5)
									textLabel.AnchorPoint = Vector2.new(0.5, 0.5)
									textLabel.Text = tostring(math.ceil(n33))
									textLabel.TextColor3 = Color3.fromHSV(v101.Hue, v101.Sat, v101.Value)
									textLabel.TextScaled = v85[129]
									textLabel.Font = Enum.Font[v100.Value]
									textLabel.Parent = billboardGui
								end

								if thread then
									task.cancel(thread)
									thread = nil
								end

								thread = task.spawn(function()
									local v102 = v85[121]
									local v103 = math.sign(math.random() - v102)

									fn31(0, v85[101], v85[128], function(arg2)
										if not textLabel then
											return true
										end
										local n34 = arg2 / 100
										local value = v93:GetValue(n34, Enum.EasingStyle.Sine, Enum.EasingDirection.In)
										local value2 = v93:GetValue(n34, Enum.EasingStyle.Back, Enum.EasingDirection.In)
										local n35 = 1 - 0.5 * value2
										textLabel.Position = UDim2.new(0.5 + 0.125 * value * v103, 0, v85[121] + 0.125 * value2, 0)
										textLabel.Size = UDim2.new(v85[145] * n35, v85[4], 0.075 * n35, 0)
										textLabel.Rotation = n34 ^ 4 * 260 * v103
									end)

									if part then
										part:Destroy()
									end

									part = nil
									textLabel = nil
									thread = nil
								end)
							end

							local function fn33(arg)
								if typeof(arg) ~= "Instance" then
									return nil
								end

								for _, v102 in entity.List, nil, nil do
									if v102.Player and v102.Player ~= localPlayer and v102.Character and arg:IsDescendantOf(v102.Character) then
										return v102
									end
								end

								return nil
							end

							local function fn34()
								for i = v85[9], v85[48] do
									for i2 = 1, 24 do
										local ok, result = pcall(debug.getstack, i, i2)

										if ok then
											local v102 = fn33(result)
											if v102 then
												return v102, typeof(result) == "Instance" and result:IsA("BasePart") and result.Position or nil
											end
										end
									end
								end

								return nil
							end

							local function fn35(arg, arg2)
								if typeof(arg) ~= "Vector3" then
									return nil
								end
								local v102 = nil
								local v103 = nil

								for _, v104 in entity.List, nil, nil do
									if v104.Player and v104.Player ~= localPlayer and v104.Character then
										local head = v104.Head or v104.RootPart or v104.HumanoidRootPart

										if head then
											local magnitude = (head.Position - arg).Magnitude

											if magnitude <= (arg2 or 6) and (not v102 or magnitude < v102) then
												v102 = magnitude
												v103 = v104
											end
										end
									end
								end

								local position

								if v103 then
									position = (v103.Head or v103.RootPart).Position
								else
									position = v103
								end

								return v103, position
							end

							local function fn36(arg, arg2)
								if not arg or not arg.Player or arg.Player == localPlayer then
									return
								end
								local humanoid = arg.Humanoid
								humanoid = humanoid and humanoid.Health or arg.Health
								if typeof(humanoid) ~= "number" then
									return
								end
								tbl23[arg.Player] = { hp = humanoid, expires = os.clock() + 0.55, hitPos = arg2, ent = arg }
							end

							local v102

							local function fn37(arg, hp)
								local player = arg and arg.Player
								local v103 = player and tbl23[player]
								if not v103 then
									return
								end

								if v103.expires < os.clock() then
									tbl23[player] = nil
									return
								end

								if typeof(hp) ~= "number" then
									return
								end
								local n33 = v103.hp - hp
								if n33 <= v85[163] then
									v103.hp = hp
									return
								end

								if arg ~= v102 then
									if textLabel then
										textLabel.Text = "0"
									end

									v102 = arg
								end

								local hitPos = v103.hitPos
								local head = arg.Head or arg.RootPart or arg.HumanoidRootPart
								local n34

								if typeof(hitPos) ~= "Vector3" and head then
									n34 = head.Position + Vector3.new(v85[4], 2, 0)
								elseif typeof(hitPos) == "Vector3" then
									n34 = hitPos + Vector3.new(0, 1.5, 0)
								else
									n34 = hitPos
								end

								fn32(n33, n34)
								v103.hp = hp
								local v104 = v85[175]
								v103.expires = os.clock() + v104
							end

							local tbl24 = { at = 0 }

							local function resolveTracerHit(origin, aimPos)
								local now5 = os.clock()
								if tbl24.origin == origin and tbl24.aimPos == aimPos and now5 - tbl24.at < 0.02 then
									return tbl24.ent, tbl24.hitPos
								end
								local zenthraPlSa = getgenv and getgenv().__ZENTHRA_PL_SA or nil
								local flag18 = zenthraPlSa and zenthraPlSa.Enabled and zenthraPlSa.TargetEntity and zenthraPlSa.TargetPart and typeof(aimPos) == "Vector3" and (zenthraPlSa.TargetPart.Position - aimPos).Magnitude <= 18
								local position = nil
								local targetEntity = nil

								if flag18 then
									targetEntity = zenthraPlSa.TargetEntity
									position = zenthraPlSa.TargetPart.Position
								end

								if typeof(aimPos) == "Vector3" then
									if not targetEntity then
										targetEntity, position = fn35(aimPos, 7)
									end
								end

								if not targetEntity then
									targetEntity, position = fn34()
								end

								position = position or targetEntity and typeof(aimPos) == "Vector3" and aimPos or nil
								tbl24.origin = origin
								tbl24.aimPos = aimPos
								tbl24.at = now5
								tbl24.ent = targetEntity
								tbl24.hitPos = position
								return targetEntity, position
							end

							zenthraMain.Game.ResolveTracerHit = resolveTracerHit

							local function fn38()
								local character = entity.character

								if character then
									character = character.RootPart or character.HumanoidRootPart or character.Head
								end

								if character then
									return character.Position
								end
								local character2 = localPlayer.Character

								if character2 then
									character2 = character2:FindFirstChild("HumanoidRootPart") or character2:FindFirstChild("Torso") or character2:FindFirstChild("Head")
								end

								return character2 and character2.Position
							end

							local function fn39()
								local v103 = fn38()
								if not v103 then
									return
								end
								n = os.clock()

								for _, v104 in entity.List, nil, nil do
									if v104.Player and v104.Player ~= localPlayer and v104.Character then
										local head = v104.Head or v104.RootPart or v104.HumanoidRootPart

										if head and (head.Position - v103).Magnitude <= v85[133] then
											fn36(v104, head.Position)
										end
									end
								end
							end

							v99 = zenthraMain.Categories.Visuals:CreateModule({
								Name = "DamageIndicator",
								Function = function(arg)
									if arg then
										table.clear(tbl23)

										tracerHook:Add("DamageIndicator", function(arg2, arg3)
											if tracerHook.IsLocalShot and typeof(arg2) == "Vector3" and not tracerHook.IsLocalShot(arg2) then
												return
											end
											local v103, v104 = resolveTracerHit(arg2, arg3)

											if v103 then
												fn36(v103, v104)
											end
										end)

										v99:Clean(v89.InputBegan:Connect(function(input, gameProcessed)
											if gameProcessed then
												return
											end

											if input.UserInputType == Enum.UserInputType.MouseButton1 or input.KeyCode == Enum.KeyCode.ButtonR2 or input.KeyCode == Enum.KeyCode.F then
												local tool = localPlayer.Character and localPlayer.Character:FindFirstChildWhichIsA("Tool")

												if not tool or not tool:GetAttribute("FireRate") then
													fn39()
												end
											end
										end))

										v99:Clean(entity.Events.EntityUpdated:Connect(function(arg2)
											if not arg2 or not arg2.Player or arg2.Player == localPlayer then
												return
											end

											if not tbl23[arg2.Player] then
												return
											end
											local health = arg2.Health

											if typeof(health) ~= "number" and arg2.Humanoid then
												if n25 > 5922 then
													while true do
													end
												else
													health = arg2.Humanoid.Health
												end
											end

											fn37(arg2, health)
										end))

										local n33 = 0
										v99:Clean(v94.Heartbeat:Connect(function(t)if not next( tbl23 )then return;end; n33 +=t;if  n33 <0.016666666666666666 then return;end; n33 %=0.016666666666666666;t=os.clock();for I,J in  tbl23 ,nil,nil do if t>J.expires then  tbl23 [I]=nil;else local t=J.ent or( entity .getEntity(I));local I=t and t.Humanoid;if I and I.Parent then  fn37 (t,I.Health);end;end;end;end))
									else
										tracerHook:Remove("DamageIndicator")
										table.clear(tbl23)
										v102 = nil

										if part then
											pcall(function()
												part:Destroy()
											end)
										end

										part = nil
										textLabel = nil
										thread = nil
									end
								end,
								Tooltip = "Shows damage only on players you shoot or melee.",
							})

							local tbl25 = { "GothamBlack" }

							for _, v103 in Enum.Font:GetEnumItems() do
								if v103.Name ~= "GothamBlack" then
									table.insert(tbl25, v103.Name)
								end
							end

							v100 = v99:CreateDropdown({
								Name = "Font",
								List = tbl25,
								Function = function(arg)
									if textLabel then
										textLabel.Font = Enum.Font[arg]
									end
								end,
							})

							v101 = v99:CreateColorSlider({
								Name = v85[142],
								DefaultHue = 0,
								Function = function(arg, arg2, arg3)
									if textLabel then
										textLabel.TextColor3 = Color3.fromHSV(arg, arg2, arg3)
									end
								end,
							})
						end

						zenthraMain.Visuals.DamageIndicator()

						zenthraMain.Visuals.HitSound = function()
							local v99 = nil
							local v100 = nil
							local v101 = nil
							local v102 = nil

							local tbl23 = {
								UwU = "rbxassetid://8323804973",
								Medal = "rbxassetid://6607336718",
								Fatality = "rbxassetid://6607113255",
								Skeet = "rbxassetid://6607204501",
								Switches = "rbxassetid://6607173363",
								["Rust Headshot"] = "rbxassetid://138750331387064",
								["Neverlose Sound"] = "rbxassetid://110168723447153",
								Bubble = "rbxassetid://6534947588",
								Laser = "rbxassetid://7837461331",
								Steve = "rbxassetid://4965083997",
								["Call of Duty"] = "rbxassetid://5952120301",
								Bat = "rbxassetid://3333907347",
								["TF2 Critical"] = "rbxassetid://296102734",
								Saber = "rbxassetid://8415678813",
								Bameware = "rbxassetid://3124331820",
							}

							local tbl24 = {
								"UwU",
								"Medal",
								"Fatality",
								"Skeet",
								"Switches",
								"Rust Headshot",
								"Neverlose Sound",
								"Bubble",
								"Laser",
								"Steve",
								"Call of Duty",
								"Bat",
								"TF2 Critical",
								"Saber",
								"Bameware",
							}

							zenthraMain.Game.CustomSounds = { Ids = tbl23, List = tbl24 }
							local tbl25 = {}
							local n = 0
							local tbl26 = {}
							local n33 = 0

							local function fn31()
								return tbl23[v100 and v100.Value or "Skeet"] or tbl23.Skeet
							end

							local function fn32()
								local v103 = v85[163]
								if os.clock() - n < v103 then
									return
								end
								n = os.clock()
								n33 = n33 % 2 + 1
								local sound = tbl26[n33]

								if not sound or not sound.Parent then
									sound = Instance.new("Sound")
									sound.Name = "ZenthraHitSound"
									sound.Parent = workspace
									tbl26[n33] = sound
								end

								sound.SoundId = fn31()
								local enabled = v102.Enabled

								if enabled then
									local v104 = v85[88]
									enabled = v85[145] + (0.5 - math.random()) / v104
								end

								sound.PlaybackSpeed = enabled or 1
								sound.Volume = v101.Value

								pcall(function()
									sound:Stop()
									sound.TimePosition = 0
									sound:Play()
								end)
							end

							local function fn33(arg)
								if not arg or not arg.Player or arg.Player == localPlayer then
									return
								end
								local health = arg.Humanoid and arg.Humanoid.Health or arg.Health
								if typeof(health) ~= "number" then
									return
								end
								local v103 = v85[159]
								tbl25[arg.Player] = { hp = health, expires = os.clock() + v103, ent = arg }
							end

							local function fn34(arg, arg2)
								local resolveTracerHit = zenthraMain.Game.ResolveTracerHit
								if type(resolveTracerHit) ~= "function" then
									return nil
								end

								if not (n25 >= 5926) then
									return (resolveTracerHit(arg, arg2))
								end

								while true do
								end
							end

							local function fn35(arg, hp)
								arg = arg and arg.Player
								local v103 = arg and tbl25[arg]
								if not v103 then
									return
								end

								if v103.expires < os.clock() then
									tbl25[arg] = nil
									return
								end

								if typeof(hp) ~= "number" then
									return
								end

								if v103.hp - hp <= 0.05 then
									v103.hp = hp
									return
								end
								fn32()
								v103.hp = hp
								v103.expires = os.clock() + 0.25
							end

							v99 = zenthraMain.Categories.Visuals:CreateModule({
								Name = "HitSound",
								Function = function(arg)
									if arg then
										table.clear(tbl25)

										v99:Clean(function()
											for _, v103 in tbl26, nil, nil do
												pcall(function()
													v103:Destroy()
												end)
											end

											table.clear(tbl26)
											n33 = 0
										end)

										tracerHook:Add("HitSound", function(arg2, arg3)
											if tracerHook.IsLocalShot and typeof(arg2) == "Vector3" and not tracerHook.IsLocalShot(arg2) then
												return
											end
											local v103 = fn34(arg2, arg3)

											if v103 then
												fn33(v103)
											end
										end)

										v99:Clean(entity.Events.EntityUpdated:Connect(function(arg2)
											if not arg2 or not arg2.Player or not tbl25[arg2.Player] then
												return
											end
											local health = arg2.Health

											if typeof(health) ~= "number" and arg2.Humanoid then
												health = arg2.Humanoid.Health
											end

											fn35(arg2, health)
										end))

										local n34 = 0
										v99:Clean(v94.Heartbeat:Connect(function(t)if not next( tbl25 )then return;end; n34 +=t;if  n34 <0.016666666666666666 then return;end; n34 %=0.016666666666666666;t=os.clock();for I,J in  tbl25 ,nil,nil do if t>J.expires then  tbl25 [I]=nil;else local t=J.ent or( entity .getEntity(I));local I=t and t.Humanoid;if I and I.Parent then  fn35 (t,I.Health);end;end;end;end))
									else
										tracerHook:Remove("HitSound")
										table.clear(tbl25)
									end
								end,
								Tooltip = "Plays only when your hit actually deals damage",
							})

							v100 = v99:CreateDropdown({ Name = "Sound", List = tbl24, Default = "Skeet" })
							v101 = v99:CreateSlider({ Name = "Volume", Min = 0, Max = 2, Default = 1, Decimal = v85[88] })
							v102 = v99:CreateToggle({ Name = "Pitch Shift" })
						end

						zenthraMain.Visuals.HitSound()

						zenthraMain.Visuals.ShootSound = function()
							local v99 = nil
							local v100 = nil
							local v101 = nil
							local customSounds = zenthraMain.Game.CustomSounds or {}
							local ids = customSounds.Ids or {}
							local list = customSounds.List or { "Skeet" }
							local tbl23 = {}
							local tbl24 = {}

							local function fn31(arg)
								return arg and arg:IsA("Tool") and arg:FindFirstChild("ShootSound", true) ~= nil
							end

							local function fn32()
								return ids[v100 and v100.Value or "Skeet"] or ids.Skeet or "rbxassetid://6607204501"
							end

							local function fn33()
								return v101 and tonumber(v101.Value) or 1
							end

							local function fn34(arg)
								if not arg or not arg:IsA("Sound") or arg.Name ~= "ShootSound" then
									return
								end

								if tbl23[arg] == nil then
									tbl23[arg] = { SoundId = arg.SoundId, Volume = arg.Volume }
								end

								pcall(function()
									arg.SoundId = fn32()
									arg.Volume = fn33()
								end)
							end

							local function fn35(arg)
								if not fn31(arg) then
									return
								end

								for _, descendant in ipairs(arg:GetDescendants()) do
									if descendant:IsA("Sound") and descendant.Name == "ShootSound" then
										fn34(descendant)
									end
								end
							end

							local function fn36()
								if not v99 or not v99.Enabled then
									return
								end
								local character = localPlayer.Character

								if character then
									for _, child in ipairs(character:GetChildren()) do
										fn35(child)
									end
								end

								local backpack = localPlayer:FindFirstChildWhichIsA("Backpack")

								if backpack then
									for _, child in ipairs(backpack:GetChildren()) do
										fn35(child)
									end
								end
							end

							local function fn37()
								for k, v102 in pairs(tbl23) do
									if typeof(k) == "Instance" and k.Parent then
										pcall(function()
											k.SoundId = v102.SoundId
											k.Volume = v102.Volume
										end)
									end
								end

								table.clear(tbl23)
								table.clear(tbl24)
							end

							local function fn38(arg)
								if not fn31(arg) then
									return
								end
								fn35(arg)
								if tbl24[arg] then
									return
								end
								tbl24[arg] = v85[129]

								v99:Clean(arg.DescendantAdded:Connect(function(descendant)
									if v99.Enabled then
										fn34(descendant)
									end
								end))

								v99:Clean(arg.AncestryChanged:Connect(function(child, parent)
									if not parent then
										tbl24[arg] = nil
									end
								end))
							end

							local function fn39(arg)
								if not arg then
									return
								end

								for _, child in ipairs(arg:GetChildren()) do
									fn38(child)
								end

								v99:Clean(arg.ChildAdded:Connect(function(child)
									task.defer(fn38, child)
								end))
							end

							v99 = zenthraMain.Categories.Visuals:CreateModule({
								Name = "Shoot Sound",
								FlagBase = "ShootSound",
								Function = function(arg)
									if arg then
										fn39(localPlayer.Character)
										fn39(localPlayer:FindFirstChildWhichIsA("Backpack"))

										v99:Clean(localPlayer.CharacterAdded:Connect(function(character)
											task.defer(function()
												if v99.Enabled then
													fn39(character)
													fn36()
												end
											end)
										end))

										v99:Clean(localPlayer.ChildAdded:Connect(function(child)
											if child:IsA("Backpack") then
												fn39(child)
											end
										end))

										fn36()
									else
										fn37()
									end
								end,
								Tooltip = "Replace every gun shoot sound with a custom one",
							})

							v100 = v99:CreateDropdown({
								Name = "Sound",
								List = list,
								Default = "Skeet",
								Function = function()
									if v99.Enabled then
										fn36()
									end
								end,
							})

							v101 = v99:CreateSlider({
								Name = "Volume",
								Min = 0,
								Max = 2,
								Default = 1,
								Decimal = 10,
								Function = function()
									if v99.Enabled then
										fn36()
									end
								end,
							})
						end

						zenthraMain.Visuals.ShootSound()

						zenthraMain.Visuals.Viewmodel = function()
							local v99 = nil
							local v100 = nil
							local v101 = nil
							local v102 = nil
							local v103 = nil
							local v104 = nil
							local handle = nil
							local v105 = nil
							local v106 = spring.new()
							local v107 = spring.new({ Speed = 15 })

							local function fn31(arg)
								if typeof(arg.QueryDescendants) == "function" then
									return arg:QueryDescendants("BasePart, Texture, Decal")
								end
								local tbl23 = {}

								for _, v108 in arg:GetDescendants() do
									if v108:IsA("BasePart") or v108:IsA("Texture") or v108:IsA("Decal") then
										table.insert(tbl23, v108)
									end
								end

								return tbl23
							end

							local v108

							local function fn32(child)
								if not (child and child:IsA("Tool")) then
									return
								end

								if v105 then
									for _, v109 in fn31(v105) do
										v109.LocalTransparencyModifier = 0
									end
								end

								if clone then
									clone:Destroy()
									clone = nil
									handle = nil
								end

								v105 = child
								clone = child:Clone()
								handle = clone:FindFirstChild("Handle")

								if not handle then
									clone:Destroy()
									clone = nil
									return
								end

								currentCamera = workspace.CurrentCamera or currentCamera
								clone.Parent = currentCamera
								local BasePart = typeof(clone.QueryDescendants) == "function" and clone:QueryDescendants("BasePart") or clone:GetDescendants()

								for _, v109 in BasePart, nil, nil do
									if v109:IsA("BasePart") then
										if v108.Enabled then
											v109.Material = Enum.Material.ForceField
											v109.Color = Color3.fromHSV(v104.Hue, v104.Sat, v104.Value)
										end
									end
								end

								for _, v109 in fn31(v105) do
									v109.LocalTransparencyModifier = v85[145]
								end
							end

							local function fn33(arg)
								if arg then
									local character = arg.Character

									if character then
										arg = character
									else
										arg = arg.Humanoid and arg.Humanoid.Parent
									end
								end

								if not arg then
									return
								end

								if clone then
									clone:Destroy()
									clone = nil
									handle = nil
								end

								v99:Clean(arg.ChildAdded:Connect(fn32))

								v99:Clean(arg.ChildRemoved:Connect(function(child)
									if child == v105 then
										if clone then
											clone:Destroy()
											clone = nil
										end

										for _, v109 in v105:QueryDescendants("BasePart, Texture, Decal") do
											v109.LocalTransparencyModifier = v85[4]
										end

										v105 = nil
									end
								end))

								fn32(arg:FindFirstChildWhichIsA("Tool"))
							end

							v99 = zenthraMain.Categories.Visuals:CreateModule({
								Name = "Gun Viewmodel",
								FlagBase = "Viewmodel",
								Function = function(arg)
									if arg then
										tracerHook:Add("Viewmodel", function(arg2)
											if typeof(arg2) == "Vector3" and tracerHook.IsLocalShot and not tracerHook.IsLocalShot(arg2) then
												return
											end
											now3 = os.clock() + 0.3
										end, 0)

										v99:Clean(entity.Events.LocalAdded:Connect(fn33))

										v99:Clean(localPlayer.CharacterAdded:Connect(function(character)
											task.defer(fn33, {
												Character = character,
												Humanoid = character:FindFirstChildOfClass("Humanoid"),
												RootPart = character:FindFirstChild("HumanoidRootPart") or character:FindFirstChild("Torso") or character.PrimaryPart,
											})
										end))

										local character = entity.character

										if not character or not character.Character then
											local character2 = localPlayer.Character

											if character2 then
												character = {
													Character = character2,
													Humanoid = character2:FindFirstChildOfClass(v85[21]),
													RootPart = character2:FindFirstChild("HumanoidRootPart") or character2:FindFirstChild("Torso") or character2.PrimaryPart,
												}
											end
										end

										if character then
											task.spawn(fn33, character)
										end

										v99:Clean(v94.RenderStepped:Connect(function(t)if not  handle or not  handle .Parent then return;end;local I= entity .character and  entity .character.RootPart; v106 .Target=I and I.AssemblyLinearVelocity*0.005 or Vector3.zero;if  v103 .Enabled then if  v106 .Target.Magnitude>0.1 then  v106 .Target= v106 .Target+(( currentCamera .CFrame*CFrame.new(math.sin(tick()*10)*0.06,0,0)).Position- currentCamera .CFrame.Position);else  v106 .Target= v106 .Target+(( currentCamera .CFrame*CFrame.new(0,math.sin(tick())*0.04,0)).Position- currentCamera .CFrame.Position);end;end;local J= currentCamera .CFrame*CFrame.new( v101 .Value, v102 .Value,- v100 .Value)+ v106 :Update(t); v107 .Target= now2 >os.clock()and CFrame.lookAt(J.Position, v98 ).LookVector or  currentCamera .CFrame.LookVector;I=math.max( now3 -os.clock(),0); handle .CFrame=CFrame.lookAlong(J.Position, v107 :Update(t))*(CFrame.Angles(math.rad(I*10),0,0)*CFrame.new(0,0,I)); handle .AssemblyLinearVelocity=Vector3.zero;end))
									else
										tracerHook:Remove("Viewmodel")

										if v105 then
											pcall(function()
												for _, v109 in v105:QueryDescendants("BasePart, Texture, Decal") do
													v109.LocalTransparencyModifier = 0
												end
											end)

											v105 = nil
										end

										if clone then
											clone:Destroy()
											clone = nil
											handle = nil
										end
									end
								end,
								Tooltip = "Custom viewmodel for guns",
							})

							v100 = v99:CreateSlider({ Name = "Depth", Min = 0, Max = 3, Default = 3, Decimal = 10 })
							v101 = v99:CreateSlider({ Name = "Horizontal", Min = 0, Max = 2, Default = 2, Decimal = 10 })
							v102 = v99:CreateSlider({ Name = "Vertical", Min = -1.5, Max = 2, Default = -1.5, Decimal = 10 })
							v103 = v99:CreateToggle({ Name = "Sway Effect", Default = true })

							v108 = v99:CreateToggle({
								Name = "ForceField Effect",
								Function = function(visible)
									if v104 and v104.Object then
										v104.Object.Visible = visible
									end

									if visible and v99.Enabled then
										v99:Toggle()
										v99:Toggle()
									end
								end,
							})

							v104 = v99:CreateColorSlider({
								Name = "Color",
								Function = function(arg, arg2, arg3)
									if clone then
										for _, v109 in clone:QueryDescendants("BasePart") do
											v109.Color = Color3.fromHSV(arg, arg2, arg3)
										end
									end
								end,
								Visible = false,
							})
						end

						zenthraMain.Visuals.Viewmodel()

						zenthraMain.Visuals.GunVisual = function()
							local v99 = nil
							local v100 = nil
							local tbl23 = {}
							local tbl24 = {}

							local function fn31(arg)
								return arg and arg:IsA("Tool") and arg:GetAttribute("FireRate") ~= nil
							end

							local function fn32()
								if not v100 then
									return Color3.fromRGB(0, 170, 255)
								end
								return Color3.fromHSV(v100.Hue, v100.Sat, v100.Value)
							end

							local v101

							local function fn33()
								local value = v101 and v101.Value or v85[66]

								local ok, result = pcall(function()
									return Enum.Material[value]
								end)

								if ok and result then
									return result
								end
								return Enum.Material.ForceField
							end

							local function fn34(arg)
								if tbl23[arg] or typeof(arg) ~= "Instance" then
									return
								end

								if arg:IsA("BasePart") then
									tbl23[arg] = {
										kind = "part",
										Color = arg.Color,
										Material = arg.Material,
										MaterialVariant = arg.MaterialVariant,
										Reflectance = arg.Reflectance,
										TextureID = arg:IsA("MeshPart") and arg.TextureID or nil,
									}
								elseif arg:IsA("Texture") or arg:IsA("Decal") then
									tbl23[arg] = { kind = "decal", Transparency = arg.Transparency }
								elseif arg:IsA("SpecialMesh") then
									tbl23[arg] = { kind = "mesh", TextureId = arg.TextureId }
								end
							end

							local function fn35(arg, arg2)
								if typeof(arg) ~= "Instance" then
									return
								end

								if arg2 then
									fn34(arg)
								end

								pcall(function()
									if arg:IsA("BasePart") then
										if n25 > 5942 then
											while true do
											end
										else
											arg.Color = fn32()
											arg.Material = fn33()
											arg.MaterialVariant = ""

											if arg:IsA("MeshPart") then
												arg.TextureID = ""
											end
										end
									elseif arg:IsA("Texture") or arg:IsA("Decal") then
										arg.Transparency = v85[145]
									elseif arg:IsA("SpecialMesh") then
										arg.TextureId = ""
									end
								end)
							end

							local function fn36(arg, arg2)
								if not fn31(arg) then
									return
								end

								for _, descendant in ipairs(arg:GetDescendants()) do
									fn35(descendant, arg2)
								end
							end

							local function fn37()
								if not clone or not clone.Parent then
									return
								end

								for _, descendant in ipairs(clone:GetDescendants()) do
									fn35(descendant, false)
								end
							end

							local function fn38()
								if not clone or not clone.Parent then
									return
								end
								local tool = localPlayer.Character and localPlayer.Character:FindFirstChildWhichIsA("Tool")
								if not tool then
									return
								end

								for _, descendant in ipairs(clone:GetDescendants()) do
									local v102 = tool:FindFirstChild(descendant.Name, true)

									if v102 then
										pcall(function()
											if descendant:IsA("BasePart") and v102:IsA("BasePart") then
												descendant.Color = v102.Color
												descendant.Material = v102.Material
												descendant.MaterialVariant = v102.MaterialVariant
												descendant.Reflectance = v102.Reflectance

												if descendant:IsA("MeshPart") and v102:IsA("MeshPart") then
													descendant.TextureID = v102.TextureID
												end
											elseif (descendant:IsA("Texture") or descendant:IsA("Decal")) and (v102:IsA("Texture") or v102:IsA("Decal")) then
												descendant.Transparency = v102.Transparency
											elseif descendant:IsA("SpecialMesh") and v102:IsA("SpecialMesh") then
												descendant.TextureId = v102.TextureId
											end
										end)
									end
								end
							end

							local function fn39()
								for k, v102 in pairs(tbl23) do
									if typeof(k) == "Instance" and k.Parent then
										pcall(function()
											if v102.kind == "part" and k:IsA("BasePart") then
												k.Color = v102.Color
												k.Material = v102.Material
												k.MaterialVariant = v102.MaterialVariant
												k.Reflectance = v102.Reflectance

												if k:IsA("MeshPart") and v102.TextureID ~= nil then
													k.TextureID = v102.TextureID
												end
											elseif v102.kind == "decal" and (k:IsA("Texture") or k:IsA("Decal")) then
												k.Transparency = v102.Transparency
											elseif v102.kind == "mesh" and k:IsA("SpecialMesh") then
												k.TextureId = v102.TextureId
											end
										end)
									end
								end

								table.clear(tbl23)
								table.clear(tbl24)
								fn38()
							end

							local function fn40()
								if not v99 or not v99.Enabled then
									return
								end
								local character = localPlayer.Character

								if character then
									for _, child in ipairs(character:GetChildren()) do
										fn36(child, true)
									end
								end

								local backpack = localPlayer:FindFirstChildWhichIsA("Backpack")

								if backpack then
									for _, child in ipairs(backpack:GetChildren()) do
										fn36(child, true)
									end
								end

								fn37()
							end

							local function fn41(arg)
								if not fn31(arg) then
									return
								end
								fn36(arg, v85[129])
								fn37()
								if tbl24[arg] then
									return
								end
								tbl24[arg] = true

								v99:Clean(arg.DescendantAdded:Connect(function(descendant)
									if v99.Enabled then
										fn35(descendant, true)
										fn37()
									end
								end))

								v99:Clean(arg.AncestryChanged:Connect(function(child, parent)
									if not parent then
										tbl24[arg] = nil
									end
								end))
							end

							local function fn42(arg)
								if not arg then
									return
								end

								for _, child in ipairs(arg:GetChildren()) do
									fn41(child)
								end

								v99:Clean(arg.ChildAdded:Connect(function(child)
									task.defer(fn41, child)
								end))
							end

							v99 = zenthraMain.Categories.Visuals:CreateModule({
								Name = "Gun Visual",
								FlagBase = "GunVisual",
								Function = function(arg)
									if arg then
										fn42(localPlayer.Character)
										fn42(localPlayer:FindFirstChildWhichIsA("Backpack"))

										v99:Clean(localPlayer.CharacterAdded:Connect(function(character)
											task.defer(function()
												if v99.Enabled then
													fn42(character)
													fn40()
												end
											end)
										end))

										v99:Clean(localPlayer.ChildAdded:Connect(function(child)
											if child:IsA("Backpack") then
												fn42(child)
											end
										end))

										fn40()
									else
										fn39()
									end
								end,
								Tooltip = "Change gun color and material",
							})

							v100 = v99:CreateColorSlider({
								Name = "Color",
								Hue = v85[159],
								Sat = 1,
								Value = 1,
								Function = function()
									if v99.Enabled then
										fn40()
									end
								end,
							})

							v101 = v99:CreateDropdown({
								Name = "Material",
								List = {
									"ForceField",
									"Neon",
									"Glass",
									"SmoothPlastic",
									"Plastic",
									"Metal",
									"DiamondPlate",
									"Foil",
									"Ice",
									"Marble",
									"Granite",
									"Concrete",
									"Wood",
									"Fabric",
									"CorrodedMetal",
								},
								Default = "ForceField",
								Function = function()
									if v99.Enabled then
										fn40()
									end
								end,
							})
						end

						zenthraMain.Visuals.GunVisual()

						zenthraMain.Render.C4ESP = function()
							local v99 = nil
							local v100 = nil
							local v101 = nil
							local v102 = nil
							local v103 = nil
							local tbl23 = {}
							local folder = Instance.new("Folder")
							folder.Parent = zenthraMain.gui.Host

							local function fn31(adornee)
								local highlight = Instance.new("Highlight")
								highlight.Adornee = adornee
								highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
								highlight.FillColor = Color3.fromHSV(v100.Hue, v100.Sat, v100.Value)
								highlight.OutlineColor = Color3.fromHSV(v101.Hue, v101.Sat, v101.Value)
								highlight.FillTransparency = v102.Value
								highlight.OutlineTransparency = v103.Value
								highlight.Parent = folder
								tbl23[adornee] = highlight
							end

							local function fn32(arg)
								if tbl23[arg] then
									if zenthraMain.ThreadFix then
										setthreadidentity(8)
									end

									tbl23[arg]:Destroy()
									tbl23[arg] = nil
								end
							end

							v99 = zenthraMain.Categories.Render:CreateModule({
								Name = "C4ESP",
								Function = function(arg)
									if arg then
										v99:Clean(v91:GetInstanceAddedSignal("C4"):Connect(fn31))
										v99:Clean(v91:GetInstanceRemovedSignal("C4"):Connect(fn32))

										for _, v104 in v91:GetTagged("C4") do
											task.spawn(fn31, v104)
										end
									else
										for _, v104 in tbl23, nil, nil do
											v104:Destroy()
										end

										table.clear(tbl23)
									end
								end,
								Tooltip = "Display all C4's placed",
							})

							v100 = v99:CreateColorSlider({
								Name = "Color",
								Function = function(arg, arg2, arg3)
									for _, v104 in tbl23, nil, nil do
										v104.FillColor = Color3.fromHSV(arg, arg2, arg3)
									end
								end,
							})

							v101 = v99:CreateColorSlider({
								Name = "Outline Color",
								DefaultSat = v85[4],
								Function = function(arg, arg2, arg3)
									for _, v104 in tbl23, nil, nil do
										v104.OutlineColor = Color3.fromHSV(arg, arg2, arg3)
									end
								end,
							})

							v102 = v99:CreateSlider({
								Name = "Transparency",
								Min = v85[4],
								Max = v85[145],
								Default = 0.5,
								Function = function(fillTransparency)
									for _, v104 in tbl23, nil, nil do
										v104.FillTransparency = fillTransparency
									end
								end,
								Decimal = 10,
							})

							v103 = v99:CreateSlider({
								Name = "Outline Transparency",
								Min = 0,
								Max = 1,
								Default = 0.5,
								Function = function(outlineTransparency)
									for _, v104 in tbl23, nil, nil do
										v104.OutlineTransparency = outlineTransparency
									end
								end,
								Decimal = v85[88],
							})
						end

						zenthraMain.Render.C4ESP()

						zenthraMain.Render.CameraNoclip = function()
							local v99 = nil

							zenthraMain.Categories.Render:CreateModule({
								Name = "Camera no-clip",
								Function = function(arg)
									if arg then
										v99 = debug.getupvalue(debug.getupvalue(require(localPlayer.PlayerScripts.PlayerModule.CameraModule.ZoomController.Popper), 3), 7)
										debug.setconstant(v99, 16, 0)
									elseif v99 then
										debug.setconstant(v99, 16, 0.25)
										v99 = nil
									end
								end,
								Tooltip = "Allow the camera to phase through walls.",
							})
						end

						zenthraMain.Render.CameraNoclip()

						zenthraMain.Render.KillNotifications = function()
							local v99 = nil

							v99 = zenthraMain.Categories.Render:CreateModule({
								Name = "KillNotifications",
								Function = function(arg)
									if arg then
										v99:Clean(zenthraMain.Events.PlayerKill.Event:Connect(function(arg2, arg3)
											if arg3 == localPlayer.Name and arg2 ~= localPlayer.Name then
												fn30("KillNotifications", arg2 .. " killed you!", 5)
											end
										end))
									end
								end,
								Tooltip = "Sends a notification of who killed you.",
							})
						end

						zenthraMain.Render.KillNotifications()

						zenthraMain.Utility.AutoDetonate = function()
							local v99 = nil
							local v100 = nil
							local v101 = nil
							local n = v85[4]
							local raycastParams = RaycastParams.new()
							raycastParams.CollisionGroup = "ClientBullet"
							raycastParams.FilterType = Enum.RaycastFilterType.Exclude

							v100 = zenthraMain.Categories.Utility:CreateModule({
								Name = "AutoDetonate",
								Function = function(arg)
									if arg then
										v99:Clean(v91:GetInstanceAddedSignal("C4"):Connect(function(arg2)
											local userId = localPlayer.UserId

											if arg2:GetAttribute("UserId") == userId then
												v101 = arg2
											end
										end))

										for _, v102 in v91:GetTagged("C4") do
											local userId = localPlayer.UserId

											if v102:GetAttribute("UserId") == userId then
												v101 = v102
											end
										end

										while true do
											local backpack = localPlayer:FindFirstChildWhichIsA("Backpack")

											if backpack and v101 then
												local c4Explosive = backpack:FindFirstChild("C4 Explosive")

												if c4Explosive then
													local v102 = entity.EntityPosition({ Players = true, Part = "RootPart", Range = v85[25], Origin = v101.Position })

													if v102 then
														raycastParams.FilterDescendantsInstances = { v102.Character, localPlayer.Character, v101 }
														local n33 = entity.character.RootPart.Position - v101.Position
														local hit = workspace:Raycast(v101.Position, v102.RootPart.Position - v101.Position, raycastParams)

														if v100.Enabled and not hit then
															hit = not (workspace:Raycast(v101.Position, n33, raycastParams) or n33.Magnitude > v85[73])
														end

														if not hit then
															n += 1

															if v85[128] < n then
																local tool = localPlayer.Character:FindFirstChildWhichIsA("Tool")

																if tool then
																	tool.Parent = backpack
																end

																c4Explosive.Parent = localPlayer.Character

																task.spawn(function()
																	v90.Remotes.C4.ActivateC4:InvokeServer()
																end)

																c4Explosive.Parent = backpack

																if tool then
																	tool.Parent = localPlayer.Character
																end
															end

															task.wait(0.05)
														else
															n = 0
															task.wait(0.05)
														end
													else
														n = 0
														task.wait(0.05)
													end
												else
													n = 0
													task.wait(0.05)
												end
											else
												n = 0
												task.wait(0.05)
											end

											if v99.Enabled then
												continue
											end
											break
										end
									end
								end,
								Tooltip = "Automatically detonate when enemies are nearby.",
							}):CreateToggle({ Name = "Safety Check" })
						end

						zenthraMain.Utility.AutoDetonate()

						zenthraMain.Utility.AutoReload = function()
							local v99 = nil
							local v100 = nil
							local v101 = nil
							local tbl23 = { M4A1 = 1, ["AK-47"] = v85[145], MP5 = 1, FAL = 1, ["Remington 870"] = 2, M9 = 3, Revolver = 4 }

							local function fn31()
								local tbl24 = {}
								local backpack = localPlayer:FindFirstChildWhichIsA("Backpack")

								if backpack then
									for _, v102 in backpack:GetChildren() do
										local attribute = v102:GetAttribute("FireRate")

										if attribute then
											attribute = (v102:GetAttribute("Local_ReloadSession") or v85[4]) <= 0
										end

										if attribute and v102.Name ~= "Taser" and v102.Name ~= "M700" then
											table.insert(tbl24, v102)
										end
									end

									table.sort(tbl24, function(arg, arg2)
										return (tbl23[arg.Name] or 100) < (tbl23[arg2.Name] or 100)
									end)

									return tbl24[1]
								end
							end

							v99 = zenthraMain.Categories.Utility:CreateModule({
								Name = "AutoReload",
								Function = function(arg)
									if arg then
										tracerHook:Add("AutoReload", function()
											if v100 then
												return
											end

											v100 = task.defer(function()
												v100 = nil
												local v102 = debug.getupvalue(pl.Shoot, 1)
												if not v102 or not v102:IsA("Tool") then
													return
												end

												if type(zenthraMain.Game.SyncGunAmmo) == "function" then
													pcall(zenthraMain.Game.SyncGunAmmo, v102)
												end

												local n = tonumber(v102:GetAttribute("Local_CurrentAmmo")) or 0
												local num = tonumber(v102:GetAttribute("CurrentAmmo"))

												if num == nil then
													num = n
												end

												local flag18 = (v102:GetAttribute("Local_ReloadSession") or 0) > v85[4]

												if not flag18 then
													local v103 = v85[129]
													flag18 = v102:GetAttribute("IsReloading") == v103
												end

												if flag18 or num > 0 or n > 0 then
													return
												end

												if type(pl.Reload) == "function" then
													task.spawn(pl.Reload)
												end

												if v99.Enabled then
													local v103 = fn31()

													if v103 then
														v102.Parent = localPlayer.Backpack
														v103.Parent = localPlayer.Character
													end
												end
											end)
										end)

										v101 = hookfunction(pl.PlaySound, function(arg2)
											local handle = debug.getupvalue(pl.Shoot, 1)
											handle = handle and handle:FindFirstChild("Handle")
											handle = handle and handle:FindFirstChild(arg2)

											if handle then
												pcall(function()
													handle:Stop()
													handle.TimePosition = 0
													handle:Play()
												end)
											end
										end)
									else
										tracerHook:Remove("AutoReload")

										if v101 then
											if restorefunction then
												restorefunction(pl.PlaySound)
											else
												hookfunction(pl.PlaySound, v101)
											end

											v101 = nil
										end
									end
								end,
								Tooltip = "Automatically reload after reaching 0 bullets",
							}):CreateToggle({ Name = "Auto Swap", Tooltip = "Automatically swap weapons when reloading" })
						end

						zenthraMain.Utility.AutoReload()

						zenthraMain.Player.WalkSpeed = function()
							local v99 = nil
							local v100 = nil
							local flag18 = false
							local v101 = nil
							local flag19 = false
							local flag20 = v85[33]

							local function fn31()
								local character = entity.character
								if character and character.Humanoid then
									return character.Humanoid
								end
								local character2 = localPlayer.Character
								return character2 and character2:FindFirstChildOfClass("Humanoid")
							end

							local function fn32()
								if flag20 then
									return true
								end

								if v89:GetFocusedTextBox() then
									return v85[33]
								end
								return v89:IsKeyDown(Enum.KeyCode.LeftShift) or v89:IsKeyDown(Enum.KeyCode.RightShift) or v89:IsKeyDown(Enum.KeyCode.ButtonL3)
							end

							local function fn33()
								return math.clamp(tonumber(v100 and v100.Value) or 1.5, 1, 1.5)
							end

							local function fn34()
								return math.clamp((fn32() and 24 or 16) * fn33(), 16, 36)
							end

							local function fn35(arg)
								if typeof(arg) ~= "number" then
									return arg
								end

								if arg <= 5.05 then
									return arg
								end
								local v102 = fn33()
								if fn32() or arg >= 20 then
									return math.clamp(24 * v102, 24, 36)
								end
								return math.clamp(v85[47] * v102, 16, v85[45])
							end

							local function fn36(arg)
								if not arg or arg.Health <= 0 then
									return true
								end

								if arg.Sit or arg.SeatPart then
									return true
								end
								local state = arg:GetState()
								if state == Enum.HumanoidStateType.Dead or state == Enum.HumanoidStateType.Swimming or state == Enum.HumanoidStateType.Climbing or state == Enum.HumanoidStateType.Seated or state == Enum.HumanoidStateType.Physics then
									return v85[129]
								end

								if arg.PlatformStand then
									return true
								end
								local parent = arg.Parent

								if parent then
									if parent:GetAttribute("Arrested") or parent:GetAttribute("Tased") then
										return v85[129]
									end

									if parent:FindFirstChildOfClass("ForceField") then
										return true
									end
								end

								if arg.WalkSpeed <= 5.05 then
									return true
								end
								return false
							end

							local function fn37()if not  flag18 then return;end;local t= zenthraMain .Categories.Player.Modules and  zenthraMain .Categories.Player.Modules.Fly;if t and t.Enabled then return;end;t= fn31 ();if not t or( fn36 (t))then return;end;local I= fn34 ();if math.abs(t.WalkSpeed-I)>0.05 then t.WalkSpeed=I;end;end
							local v102

							local function fn38()
								if not flag19 then
									return
								end
								flag19 = false

								pcall(function()
									if v102 then
										hookmetamethod(game, "__newindex", v102)
									end
								end)

								pcall(function()
									if v101 then
										hookmetamethod(game, "__index", v101)
									end
								end)

								v102 = nil
								v101 = nil
							end

							local function fn39()
								fn38()
								if type(hookmetamethod) ~= "function" then
									return
								end

								local fn40 = newcclosure or function(arg)
									return arg
								end

								local flag21 = type(checkcaller) == "function"
								v102 = hookmetamethod(game, "__newindex", fn40(function(t,I,J)if  flag18 and I=="WalkSpeed"and typeof(t)=="Instance"and t.ClassName=="Humanoid"then local G= fn31 ();if G and t==G then if not( flag21 and(checkcaller()))then if typeof(J)=="number"then if J<=5.05 then  flag20 =false;return  v102 (t,I,J);end; flag20 =J>=20;end;if not  fn36 (t)then return  v102 (t,I, fn35 (J));end;end;end;end;return  v102 (t,I,J);end))
								v101 = hookmetamethod(game, "__index", fn40(function(t,I)if  flag18 and I=="WalkSpeed"and typeof(t)=="Instance"and t.ClassName=="Humanoid"then if not( flag21 and(checkcaller()))then local J= fn31 ();if J and t==J then local J= v101 (t,I);if typeof(J)=="number"and J>5.05 then return  fn32 ()and 24 or 16;end;return J;end;end;end;return  v101 (t,I);end))
								flag19 = v102 ~= nil
							end

							local function fn40()
								local v103 = fn31()
								if not v103 then
									return
								end

								if fn36(v103) then
									return
								end

								pcall(function()
									v103.WalkSpeed = fn32() and v85[45] or 16
								end)
							end

							v100 = zenthraMain.Categories.Player:CreateModule({
								Name = "WalkSpeed",
								Function = function(arg)
									flag18 = arg == v85[129]

									if arg then
										if n28(902) >= 4694 then
											flag20 = v85[33]
											fn39()
											fn37()
											v99:Clean(v94.Heartbeat:Connect(fn37))

											v99:Clean(localPlayer.CharacterAdded:Connect(function()
												flag20 = false
												task.defer(fn37)
											end))

											v99:Clean(function()
												flag18 = false
												fn38()
												fn40()
											end)
										else
											while true do
											end
										end
									else
										fn38()
										fn40()
									end
								end,
								Tooltip = "Scales walk (16) and Shift sprint (24) by the same multiplier.",
							}):CreateSlider({
								Name = "WalkSpeed Multiplier",
								Min = 1,
								Max = 1.5,
								Default = 1.5,
								Decimal = 100,
								Suffix = "x",
								Tooltip = "1x: walk 16 / sprint 24. 1.5x: walk 24 / sprint 36.",
							})
						end

						zenthraMain.Player.WalkSpeed()

						zenthraMain.Player.Fly = function()
							local v99 = nil
							local v100 = nil
							local flag18 = v85[33]

							local function fn31()
								local character = entity.character
								if character and character.Humanoid and character.RootPart then
									return character.Humanoid, character.RootPart
								end
								local character2 = localPlayer.Character
								if not character2 then
									return nil, nil
								end
								local v101 = character2:FindFirstChildOfClass(v85[21])
								return v101, character and character.RootPart or v101 and v101.RootPart or character2:FindFirstChild("HumanoidRootPart") or character2:FindFirstChild("Torso") or character2.PrimaryPart
							end

							local function fn32()
								if not flag18 then
									return
								end
								flag18 = false
								local value = select(1, fn31())

								if value then
									pcall(function()
										value.PlatformStand = v85[33]
										value:ChangeState(Enum.HumanoidStateType.GettingUp)
									end)
								end
							end

							local function fn33()
								local currentCamera2 = currentCamera or workspace.CurrentCamera
								currentCamera2 = currentCamera2 and currentCamera2.CFrame.LookVector or Vector3.new(0, 0, -1)
								local vector = Vector3.new(currentCamera2.X, 0, currentCamera2.Z)
								if vector.Magnitude > 0.001 then
									return vector.Unit
								end
								return Vector3.new(0, 0, -v85[145])
							end

							local function fn34(arg)
								local currentCamera2 = currentCamera or workspace.CurrentCamera
								local vector = Vector3.zero

								if currentCamera2 then
									local lookVector = currentCamera2.CFrame.LookVector
									local rightVector = currentCamera2.CFrame.RightVector

									if not v89:GetFocusedTextBox() then
										if v89:IsKeyDown(Enum.KeyCode.W) then
											vector += lookVector
										end

										if v89:IsKeyDown(Enum.KeyCode.S) then
											vector -= lookVector
										end

										if v89:IsKeyDown(Enum.KeyCode.A) then
											vector -= rightVector
										end

										if v89:IsKeyDown(Enum.KeyCode.D) then
											vector += rightVector
										end

										if v89:IsKeyDown(Enum.KeyCode.Space) or v89:IsKeyDown(Enum.KeyCode.E) then
											vector += Vector3.yAxis
										end

										if v89:IsKeyDown(Enum.KeyCode.LeftControl) or v89:IsKeyDown(Enum.KeyCode.Q) then
											vector -= Vector3.yAxis
										end
									end
								end

								if vector.Magnitude < 0.001 and arg then
									local moveDirection = arg.MoveDirection

									if moveDirection.Magnitude > 0.001 then
										vector = moveDirection
									end

									if arg.Jump then
										vector += Vector3.yAxis
									end
								end

								if vector.Magnitude > 0.001 then
									return vector.Unit
								end
								return Vector3.zero
							end

							v100 = zenthraMain.Categories.Player:CreateModule({
								Name = "Fly",
								Function = function(arg)
									if arg then
										v99:Clean(v94.PreSimulation:Connect(function(t)t=math.clamp(t or 0,0,0.05);local I,J= fn31 ();if not I or not J or I.Health<=0 then return;end;if I.Sit or I.SeatPart then return;end;if not I.PlatformStand then  flag18 =true;pcall(function()I.PlatformStand=true;end);end;local G=tonumber( v100 and  v100 .Value)or 100;local n=J.Position+ fn34 (I)*G*t;t= fn33 ();J.CFrame=CFrame.lookAt(n,n+t);J.AssemblyLinearVelocity=Vector3.zero;J.AssemblyAngularVelocity=Vector3.zero;end))
										v99:Clean(fn32)
									else
										fn32()
									end
								end,
								Tooltip = "CFrame fly — camera direction, Space/E up, Ctrl/Q down",
							}):CreateSlider({ Name = "Speed", Min = 100, Max = 500, Default = v85[101] })
						end

						zenthraMain.Player.Fly()

						zenthraMain.Player.Noclip = function()
							local v99 = nil
							local tbl23 = {}
							local tbl24 = {}
							local flag18 = false
							local connection = nil

							local function fn31(arg)
								return arg:FindFirstAncestorOfClass("Tool") ~= nil
							end

							local function fn32(arg)
								if not arg:IsA("BasePart") or tbl24[arg] then
									return
								end

								if tbl23[arg] == nil then
									tbl23[arg] = arg.CanCollide
								end

								arg.CanCollide = false
								tbl24[arg] = arg:GetPropertyChangedSignal("CanCollide"):Connect(function()if  flag18 and  arg .Parent and  arg .CanCollide then  arg .CanCollide=false;end;end)
							end

							local function fn33()if not  flag18 then return;end;for t in pairs( tbl23 )do if not t.Parent then local I= tbl24 [t];if I then pcall(function()I:Disconnect();end);end; tbl24 [t]=nil; tbl23 [t]=nil;elseif t.CanCollide then t.CanCollide=false;end;end;end

							local function fn34(arg)
								if not arg then
									return
								end

								for _, descendant in ipairs(arg:GetDescendants()) do
									if descendant:IsA("BasePart") then
										fn32(descendant)
									end
								end

								fn33()
							end

							local function fn35(arg)
								if connection then
									pcall(function()
										connection:Disconnect()
									end)

									connection = nil
								end

								fn34(arg)

								if arg then
									connection = arg.DescendantAdded:Connect(function(descendant)
										if flag18 and descendant:IsA("BasePart") then
											fn32(descendant)
										end
									end)
								end
							end

							local function fn36()
								if connection then
									pcall(function()
										connection:Disconnect()
									end)

									connection = nil
								end

								for _, v100 in pairs(tbl24) do
									pcall(function()
										v100:Disconnect()
									end)
								end

								for k, v100 in pairs(tbl23) do
									if typeof(k) == "Instance" and k:IsA("BasePart") and k.Parent then
										pcall(function()
											if fn31(k) then
												k.CanCollide = false
											else
												k.CanCollide = v100 == true
											end
										end)
									end
								end

								table.clear(tbl24)
								table.clear(tbl23)
							end

							v99 = zenthraMain.Categories.Player:CreateModule({
								Name = "Noclip",
								Function = function(arg)
									flag18 = arg == v85[129]

									if arg then
										fn36()
										v99:Clean(v94.Stepped:Connect(fn33))
										v99:Clean(v94.Heartbeat:Connect(fn33))

										v99:Clean(localPlayer.CharacterAdded:Connect(function(character)
											fn36()
											flag18 = true

											task.defer(function()
												fn35(character)
											end)
										end))

										local character = localPlayer.Character

										if character then
											fn35(character)
										end

										v99:Clean(function()
											flag18 = false
											fn36()
										end)

										fn33()
									else
										fn36()
									end
								end,
							})
						end

						zenthraMain.Player.Noclip()

						zenthraMain.Player.SprintStand = function()
							local v99 = nil
							local v100 = nil
							local v101 = nil
							local v102 = nil
							local v103 = nil
							local n = 0

							local function fn31(arg)
								if type(arg) ~= "string" then
									return nil
								end
								return arg:match("(%d+)$")
							end

							local function fn32(arg)
								v100 = arg
								v101 = nil
								v102 = nil
								v103 = nil
								if type(filtergc) ~= "function" or not arg then
									return
								end
								local v104 = filtergc("function", { Name = "endProne", IgnoreExecutor = true }, true)

								if type(v104) ~= "function" then
									v104 = filtergc(v85[143], { Constants = { "You can't stand up here!" }, IgnoreExecutor = true }, true)
								end

								if type(v104) ~= "function" then
									return
								end
								local ok, result = pcall(debug.getupvalue, v104, 1)

								if ok and type(result) == "table" then
									v101 = result
								end

								local ok2, result2 = pcall(debug.getupvalue, v104, v85[138])

								if ok2 and typeof(result2) == "Instance" then
									v102 = result2
								end

								local ok3, result3 = pcall(debug.getupvalue, v104, 7)

								if ok3 and typeof(result3) == "Instance" then
									v103 = result3
								end
							end

							local function fn33(arg)
								if not arg then
									return v85[33]
								end

								for _, v104 in arg:GetPlayingAnimationTracks() do
									local v105 = fn31(v104.Animation and v104.Animation.AnimationId)
									if v105 == "481089053" or v105 == "481088553" or v104.Name == "prone_idle" or v104.Name == "prone_walk" then
										return true
									end
								end

								return false
							end

							local function fn34(arg)
								if type(v101) == "table" and v101.isCrouching == true then
									return v85[129]
								end

								if fn33(arg) then
									return true
								end
								arg = arg and arg.CameraOffset
								return typeof(arg) == "Vector3" and arg.Y <= -1.2
							end

							local function fn35(arg, arg2)
								pcall(function()
									if v102 and v102.Stop then
										v102:Stop(0)
									end
								end)

								pcall(function()
									if v103 and v103.Stop then
										v103:Stop(0)
									end
								end)

								if arg2 then
									for _, v104 in arg2:GetPlayingAnimationTracks() do
										local v105 = fn31(v104.Animation and v104.Animation.AnimationId)

										if v105 == "481089053" or v105 == "481088553" or v104.Name == "prone_idle" or v104.Name == "prone_walk" then
											pcall(function()
												v104:Stop(v85[4])
											end)
										end
									end
								end

								if not (arg2 and getconnections) then
									return
								end

								for _, v104 in getconnections(arg2.Running) do
									local function_ = v104.Function

									if type(function_) == "function" then
										local v105 = debug.info(function_, "s")
										local v106 = v85[40]

										if type(v105) == v106 and v105:find("ClientInputHandler", 1, true) then
											pcall(function()
												v104:Disconnect()
											end)
										end
									end
								end
							end

							local function fn36()
								local playerGui = localPlayer:FindFirstChild("PlayerGui")
								playerGui = playerGui and playerGui:FindFirstChild("Home")
								playerGui = playerGui and playerGui:FindFirstChild("hud")
								playerGui = playerGui and playerGui:FindFirstChild("BottomRightFrame")
								local mobileFrame = playerGui and playerGui:FindFirstChild("MobileFrame")
								mobileFrame = mobileFrame and mobileFrame:FindFirstChild("CrouchButton")
								mobileFrame = mobileFrame and mobileFrame:FindFirstChild("Icon")

								if mobileFrame and mobileFrame:IsA("ImageLabel") then
									mobileFrame.ImageRectOffset = Vector2.new(v85[4], 80)
								end
							end

							local function fn37()
								local v104 = v85[175]
								if os.clock() - n < v104 then
									return
								end

								if v89:GetFocusedTextBox() then
									return
								end
								local character = localPlayer.Character
								local humanoid = character and character:FindFirstChildOfClass("Humanoid")
								if not character or not humanoid or humanoid.Health <= 0 then
									return
								end

								if character:GetAttribute("Tased") or character:GetAttribute("Arrested") then
									return
								end

								if character ~= v100 then
									fn32(character)
								end

								if not fn34(humanoid) then
									return
								end
								n = os.clock()

								if type(v101) == "table" then
									v101.isCrouching = false
									v101.isRunning = true
								end

								pcall(function()
									localPlayer:SetAttribute("BackpackEnabled", v85[129])
								end)

								fn35(character, humanoid)
								humanoid.CameraOffset = Vector3.zero
								humanoid.JumpHeight = 5.5
								humanoid.WalkSpeed = 24
								fn36()
							end

							v99 = zenthraMain.Categories.Player:CreateModule({
								Name = "Sprint Stand",
								Function = function(arg)
									if arg then
										v100 = nil
										v101 = nil
										v102 = nil
										v103 = nil
										n = 0

										if localPlayer.Character then
											fn32(localPlayer.Character)
										end

										v99:Clean(v89.InputBegan:Connect(function(input, gameProcessed)
											if gameProcessed then
												return
											end
											local keyCode = input.KeyCode
											if keyCode ~= Enum.KeyCode.LeftShift and keyCode ~= Enum.KeyCode.RightShift and keyCode ~= Enum.KeyCode.ButtonL3 then
												return
											end
											fn37()
										end))

										local function fn38()
											local playerGui = localPlayer:FindFirstChild("PlayerGui")
											playerGui = playerGui and playerGui:FindFirstChild("Home")
											playerGui = playerGui and playerGui:FindFirstChild("hud")
											playerGui = playerGui and playerGui:FindFirstChild("BottomRightFrame")
											playerGui = playerGui and playerGui:FindFirstChild("MobileFrame")
											playerGui = playerGui and playerGui:FindFirstChild("SprintButton")

											if playerGui and playerGui:IsA("GuiButton") then
												v99:Clean(playerGui.MouseButton1Down:Connect(fn37))
											end
										end

										fn38()

										v99:Clean(localPlayer.CharacterAdded:Connect(function(character)
											v100 = nil
											v101 = nil
											v102 = nil
											v103 = nil

											task.defer(function()
												fn32(character)
												fn38()
											end)
										end))
									else
										v100 = nil
										v101 = nil
										v102 = nil
										v103 = nil
									end
								end,
								Tooltip = "Shift / L3 / Sprint button stands you up from prone (stops the lie-down animation) and starts sprint.",
							})
						end

						zenthraMain.Player.SprintStand()

						task.spawn(function()
							while zenthraMain.Loaded do
								local currentCamera2 = workspace.CurrentCamera

								if currentCamera2 then
									zenthraMain.gui.AbsoluteSize = currentCamera2.ViewportSize
									currentCamera = currentCamera2
								end

								if zenthraMain.gui.ScaledGui and zenthraMain.gui.ScaledGui.ClickGui then
									local visible = v87.Open == true

									if zenthraMain.gui.ScaledGui.ClickGui.Visible ~= visible then
										zenthraMain.gui.ScaledGui.ClickGui.Visible = visible
									end
								end

								task.wait(1)
							end
						end)

						if getgenv then
							getgenv().Zenthra = zenthra
							getgenv().__PL = { Main = zenthraMain, entitylib = entity }
							getgenv().ZenthraMain = zenthraMain
						end

						do
							local flag18 = false
							local zenthraPLCleanup = nil

							zenthraPLCleanup = function()
								if flag18 then
									return
								end
								flag18 = true
								zenthraMain.Loaded = nil

								for _, cleanup in ipairs(zenthraMain.Cleanups) do
									if typeof(cleanup) == "RBXScriptConnection" then
										pcall(function()
											cleanup:Disconnect()
										end)
									elseif type(cleanup) == "function" then
										pcall(cleanup)
									end
								end

								table.clear(zenthraMain.Cleanups)

								pcall(function()
									local flag19 = v87

									if v87 then
										local v99 = v85[143]
										flag19 = type(v87.Destroy) == v99
									end

									if flag19 then
										v87:Destroy()
									elseif v87 and v87.Screen then
										v87.Screen:Destroy()
									end
								end)

								if getgenv then
									local genv = getgenv()

									if genv.__ZenthraPLCleanup == zenthraPLCleanup then
										genv.__ZenthraPLCleanup = nil
									end

									local v99 = v85[71]

									if type(genv.__PL) == v99 and genv.__PL.Main == zenthraMain then
										genv.__PL = nil
									end

									if genv.ZenthraMain == zenthraMain then
										genv.ZenthraMain = nil
									end
								end
							end

							if getgenv then
								getgenv().__ZenthraPLCleanup = zenthraPLCleanup
							end

							if type(STATE) == "table" and type(STATE.onCleanup) == "function" then
								STATE.onCleanup(zenthraPLCleanup)
							end
						end

						return zenthra
					end

					while true do
					end
				end
			end
		end
	end
end

fn14(100, v4[fn2("n\218\192\176\129w\151\190\193\1756", 21845944094585)], v4[fn2("-\209 \r\161\128\30\181)\162\169\194\240\156\19Ȣs\0212\188p\207(\188\240\176\157\230\2\142\167\11\226\159&\233", 10693721171687)] .. v33(v66), Color3[v4[fn2("\211\207k", 18772801209419)]](1, 0, 0), v4[fn2(" `\4\162\157", 18561267614598)])
