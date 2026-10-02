-- Deobfuscated by ligma
-- Partial lift: one VM block and Luraph runtime helpers remain unresolved.
-- Detected obfuscation: Luraph v15
-- Local names are inferred from use (the original names are not in the bytecode)

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
local n = 0
local n2 = 2
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
local v4 = tbl4

local function fn2(arg, arg2)
	local v5 = tbl4

	if not v5[arg2] then
		tbl3 = {}
		local v6 = tbl
		n = arg2 % 35184372088832
		n2 = arg2 % 255 + 2
		v5[arg2] = ""
		local n3 = 77

		for i = 1, #arg do
			n3 = (string.byte(arg, i) + fn() + n3) % 256
			v5[arg2] = v5[arg2] .. v6[n3 + 1]
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
local n3 = os[v4[fn2("(\204\6\168", 4882453074371)]](os[v4[fn2("UC\178}", 12971197083440)]](v4[fn2("\139L", 33012126087192)])) - os[v4[fn2("vܢ\204", 5436520764359)]](os[v4[fn2("f\150\187#", 4318721413046)]](v4[fn2("\209\6D", 24300592814183)]))
local n4

if n3 < 0 then
	n4 = (86400 + -(-n3 % 86400)) % 86400
else
	n4 = n3 % 86400
end

local n5 = n4 / 3600

if n5 >= 21 or n5 < 5 then
	local tbl5 = {}
	local v10 = v4[fn2("\226XO\140q\210K\180:%\205B\254\182.y\229\163\245\219v$\209Y\171\6f", 3448963992716)]
	local v11 = v4[fn2("N\235X\233G\12\243\241ˣ@s\250\190\137\214\t\2267j\174\247\195\241\237\1\160", 16047561292385)]
	tbl5[1] = v10
	tbl5[2] = v11
	v7 = tbl5[math[v4[fn2("\195K\\\173\155:", 14086848885567)]](1, 2)]
elseif n5 >= 5 and n5 < 15 then
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
elseif n5 >= 15 and n5 < 21 then
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
tbl5[v4[fn2("-\187\163M\25\167\217@", 4026654723750)]] = "307f12cb4ebb25852eb8a2b4d21fe9a0"
tbl5[v4[fn2("|\153\251\252\129+\213c\238\189\31]\198", 318911054121)]] = "0016"
tbl5[v4[fn2("\255u\7\188", 2453574945005)]] = "r1"

if v8 then
	tbl5[v4[fn2("P+\173\t", 11860914154278)]] = v4[fn2("\190\203\210Z\214\212\25ې\173pԼ\146\25\18\18\16\133\139\193獓ݓ\217", 22440815219107)]
	v7 = v4[fn2("_\12\235cw\2309\u{84}\23,d\224NS\22X\5\19p", 20241724852643)]
end

local flag5 = type(({ table.unpack(v, 1, v.n) })[1]) ~= v4[fn2("\242\19\150\29>", 10561646896748)]
local flag6 = false
local fn3 = nil
local n6 = nil
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
local v44 = syn and syn[v4[fn2("Z\185\149\247\174\30\161\141\220", 26705847902503)]] and syn[v4[fn2("\137ҫ\217\r2\137v\146", 25551540215028)]][v4[fn2("fӟ\144\186|\152", 30015221198129)]] or WebSocket and WebSocket[v4[fn2("\202Be\155Q\245>", 758084862658)]]
local fn5

if v44 then
	fn5 = v44
else
	fn5 = WebsocketClient and function(arg)
		local v45 = WebsocketClient[v4[fn2("\188m\224", 16394390485924)]](arg)
		v45:Connect()
		return v45
	end
end

local fn6 = nil

fn6 = function(arg)
	local tbl10 = {}

	for k, v45 in v41(arg) do
		local n7 = #tbl10 + 1
		local v46 = v4[fn2("'\200\247\146 \170_\227", 34886936526570)]
		local v47 = v4
		local flag10 = v40(v45) == v47[fn2("\20/x-\133", 7497094208326)] and fn6(v45)

		if not flag10 then
			local v48 = v4
			flag10 = v4[fn2("=", 18649317131224)] .. v45 .. v48[fn2("Z", 173951484066)]
		end

		tbl10[n7] = v37(v46, k, flag10)
	end

	return v4[fn2("i", 24314551883892)] .. v38(v39(tbl10), 0, -2) .. v4[fn2("\194", 22373167419748)]
end

local function fn7(arg)
	local function fn8(arg2)
		if arg2 == v4[fn2(",\196P\\", 10051603965073)] then
			if flag8 then
				local v45 = v4
				v31(v4[fn2("\188", 31749367165824)] .. os[v4[fn2("\0302\18I\236", 28036254623230)]]() .. v45[fn2("]F\213\251\200_\178F\20\156:\132P\20@C\245\5rT\147\137\228\134\r\254\141{\211", 1801793767054)])
			end

			arg[v4[fn2(",\186lJ\254\246p\224", 16202184833777)]] = tick()
			return
		end

		local v45 = v4
		local v46 = string[v4[fn2("\159\11\208\29\209", 9071247761664)]](arg2, v45[fn2("\188\201\31<\247\150\244\169-\6\18", 23326679258332)])

		if flag8 then
			local v47 = v4
			v31(v4[fn2("\7", 33022863833122)] .. os[v4[fn2("\127>\184\15\133", 17304951340788)]]() .. v4[fn2("\1651f.\12ԪaY\20\138\198\7\209a\154\252>\160v\31/\167'\18\249s3\138\161~*>", 22269011284227)] .. arg2 .. v47[fn2(" ", 17028991270387)])
		end

		if v46 then
			local v47 = arg[v4[fn2("Ƣn!\210\2\204y", 20264274119096)]][v46 + 0]
			local v48 = v4
			v47:Fire(arg2:gsub(v4[fn2("2\186\6u\237\151?\157\214\218\26", 16177488018138)], v48[fn2("", 19126073050516)]))
			return v47:Destroy()
		end

		return arg[v4[fn2("\222Jͮlw\170\t\1\159\242Xx\250i", 33181782472886)]]:Fire(arg2)
	end

	local fn9 = nil

	fn9 = function()
		if flag8 then
			local v45 = v4
			v31(v4[fn2("\20", 25372219857997)] .. os[v4[fn2("\31\244\136j\213", 5980924483010)]]() .. v45[fn2("\245\140.:\174\129O1!\183\\", 29455784635176)])
		end

		arg[v4[fn2("\154p\255\171h\15\253<\144\234\187\20\22\154\6", 7238314531413)]] = false

		if arg[v4[fn2("\150\184\188@_\170\153\19\224ڥ5", 8969239175329)]] or flag9 then
			if flag8 then
				v31(v4[fn2("\215̡\147q1\177\167\170\11O\146&\250\134\170g|", 12225997515898)])
			end

			return
		end

		local n7 = 0
		local v45

		while true do
			if flag8 then
				local v46 = v4
				v31(v4[fn2("\8", 25877967691300)] .. os[v4[fn2("\242\131\241\176\153", 32213237790000)]]() .. v46[fn2("\158\5\232\183M\152\162w\231Y\191\203\31\168H\18Cu\188<\171s\200\226N\20\133\25n\255\209ȴV\192\30ǁv", 28825478949085)])
			end

			local v46 = v25()
			local flag10 = false
			local v47 = nil
			v45 = nil

			v28(function()
				local v48, v49 = v16(fn5, arg[v4[fn2("\23\20\24", 29848786136214)]])
				v47 = v48
				v45 = v49
				flag10 = true
			end)

			while not flag10 and v25() < v46 + 8 do
				v42()
			end

			if flag8 then
				local v48 = v4
				v31(v4[fn2("\128", 29034864994720)] .. os[v4[fn2("\175\nP\245\156", 12251768106130)]]() .. v4[fn2("z\24ث\148\2523\254\223\1\222Q\227{\241\197\249\\\11_h\181", 34490713701753)] .. v33(flag10) .. v4[fn2("\127\132\31\28g\n", 10375883892159)] .. v33(v47) .. v48[fn2("\12", 27328637166443)])
			end

			if not flag10 then
				flag6 = false
				n7 = 10

				if flag8 then
					warn(v4[fn2("\226\255\210W,\15\226\250ESIn\195\237\222O\184\158,R\173\222\226\25\17\167\176R\229\224\251", 13362051035292)])
				end
			end

			if not v47 then
				n7 += 1

				if n7 > 5 then
					flag6 = false
				end

				v42(n7 < 4 and 10 or 120)
				continue
			end

			break
		end

		if flag8 then
			local v46 = v4
			v31(v4[fn2("\194", 33361102829917)] .. os[v4[fn2("nG\178p\189", 1458185897294)]]() .. v46[fn2("\148\235A|\17\230\0113\2209x\22|\149\178\167\141\242\182\164\19x\130\238", 2558804855119)])
		end

		arg[v4[fn2("\204*c\136֯\156\235c\228#\163\143\18\204", 14980229346943)]] = true
		arg[v4[fn2("\196\28p0\225\186\219]\246", 13544592716102)]] = v45
		flag6 = arg
		local v46 = v4

		v45:Send(fn6({
			[v4[fn2("\144\157\26\202J\143", 30815183269914)]] = v46[fn2("\158\177\19U", 18578448008086)],
			[v4[fn2("\222U\224\t", 256632127727)]] = {},
		}))

		v16(function()
			v45[v4[fn2("k(\166.\2433M", 11661192079980)]]:Connect(fn9)
			v45[v4[fn2("\15\210\249~|\227\202\248q", 12796171824781)]]:Connect(fn8)
		end)

		v16(function()
			v45[v4[fn2(" URU\22\156\133D\244\18\140\156u\238\15*", 31006315147468)]]:Connect(fn9)
			v45[v4[fn2("v\150P\222B\136';\166\162\1439", 3526275763412)]]:Connect(fn8)
		end)
	end

	v16(function()
		local v45 = v4
		arg[v4[fn2("\0Q8\178\17K1\246R", 27593859490914)]][v45[fn2("Q\211s\145*Q?", 8519327620862)]]:Connect(fn9)
		local v46 = v4
		arg[v4[fn2("\197,r \183r\1669N", 8460270018247)]][v46[fn2("Ó@Qd\143\153|\223", 32507452028482)]]:Connect(fn8)
	end)

	v16(function()
		local v45 = v4
		arg[v4[fn2("\29i\"\207\r\254\208\235\162", 33601628338749)]][v45[fn2("\127\0\163\179\239\249y\205g\245RE", 27001135915578)]]:Connect(fn8)
		local v46 = v4
		arg[v4[fn2("Z_\28\178_Aͣ8", 23336343229669)]][v46[fn2("h\177\227\15\189\1384\185\128\r\248H7\209\205\244", 11453953583531)]]:Connect(fn9)
	end)

	arg[v4[fn2("U0\18973y\172\177", 26105607905016)]] = tick()

	while v42(10) do
		if flag8 then
			local v45 = v4
			v31(v4[fn2("\145", 14951237432932)] .. os[v4[fn2("\2286\234N\229", 22975554966421)]]() .. v45[fn2("ח\31]\186]\218A}\226[{\251\17t\146էړg\20\toć:\170", 14658096969043)])
		end

		if arg[v4[fn2("\200tK\173\215\207e8\175\212\11Or\171\158", 15693215676695)]] then
			local v45 = v4

			arg[v4[fn2("t\168\177Eņ\218\30\232", 31886810313728)]]:Send(fn6({
				[v4[fn2("+\30H\139\251Z", 29989450607897)]] = v45[fn2("\234\23\201\8", 21721386241797)],
				[v4[fn2("\227o\137\144", 9220502430091)]] = {},
			}))

			if tick() - arg[v4[fn2("\161\183W҉G\174\t", 26743430013258)]] > 20 then
				if flag8 then
					local v46 = v4
					v31(v4[fn2("=", 25162833812362)] .. os[v4[fn2("\2501\245\132\"", 26944225862149)]]() .. v46[fn2("\240\161\251\171\150\228~\247ֶ\166T\188\2\n\31\4\nlA!\3P\242", 20296487356886)])
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
	local v45 = v25()
	local flag10 = false
	local v46 = nil
	local v47 = nil

	v28(function()
		local v48, v49 = v16(fn5, arg2)
		v46 = v48
		v47 = v49
		flag10 = true
	end)

	while not flag10 and v25() < v45 + 8 do
		v42()
	end

	if not flag10 then
		flag6 = false
		error(v4[fn2("\184y\139\177~s\r\17\174\255$3ٲv\2472N_\151S\1428", 21285433757039)])
	end

	assert(v46, v47)
	arg[v4[fn2("\232\nl\8\221\198\244\158\162", 15444099971119)]] = v47
	arg[v4[fn2("\212\216b", 32886494459811)]] = arg2
	local v48 = v4
	arg[v4[fn2("\154\254+\5n)\173\161d\163\227\187\2262\186", 7107314031067)]] = Instance[v4[fn2("f̜", 13855987348072)]](v48[fn2("\12\2423\140\203\204q\2223\23\184\t\169", 19879862814802)])
	local v49 = v4
	arg[v4[fn2("\246M\198tb߸\2464", 4490525347926)]] = arg[v4[fn2(">RVz5\150\2A\180;\184ķ\181\202", 26856176345523)]][v49[fn2(">4z\139p", 25648179928398)]]
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
		local v45 = v4
		v31(v4[fn2("v", 34172876422225)] .. os[v4[fn2("\1532\200F\140", 32307729954184)]]() .. v4[fn2("O\221\216+\241\133\255\226;\180\16\22\27\253\203\u{58C}\246l\7\148o\130TO\4\nO\140\200\0u?\140u\183\132J\245hS\144\30<\219\3", 4505558192228)] .. v33(arg[v4[fn2("\239調\168\155^Q\134(\151\189m\150\196", 22259347312890)]]) .. v45[fn2("\200", 12545982344612)])
	end

	local n7 = 0

	while not arg[v4[fn2("\214\240x\235\156NC\182\231{\193cx\215d", 1803941316240)]] do
		n7 += 1
		v42(0.1)
		if not (n7 > 40) then
			continue
		end

		if flag8 then
			warn(v4[fn2("\1950\131r\170\212EȪ\218Bil", 4536697655425)])
		end

		flag6 = false
		return v4[fn2("", 22063920336964)]
	end

	if flag8 then
		local v45 = v4
		v31(v4[fn2("Y", 27805393085735)] .. os[v4[fn2("\207\199us@", 9663971337000)]]() .. v45[fn2("bp\228\206D\24\1659\145\143\129bc\145\235\171\\\3\127[\2340x\247[\199GvH\160Q\147?\225̣w\tC", 19677993191318)])
	end

	local v45 = math[v4[fn2("\158\226\202\\\232\159", 458501751211)]](1, 99999999)
	local v46 = v4
	local v47 = Instance[v4[fn2("J\3\167", 23438351816004)]](v46[fn2("\203%q\241\205e\171\179\26\144\200.v", 12404244098336)])

	if flag8 then
		local v48 = v4
		v31(v4[fn2("o", 27769958524166)] .. os[v4[fn2(">\238W\231\186", 6757263513749)]]() .. v48[fn2("\221O\190w\196!\176\224\7\187#ʮgm\217c", 26137821142806)])
	end

	arg[v4[fn2("\227\197\200eba\232\t", 21769706098482)]][v45] = v47
	local v48 = v4

	arg[v4[fn2("\178\18Q\147\250:[\134\176", 17162139319919)]]:Send(fn6({
		[v4[fn2("~\148\234\238Ɗ", 22738250781368)]] = v48[fn2("\142YQϺ\16\149", 21390663667153)],
		[v4[fn2("s\182\11\31", 24974923258587)]] = arg2,
		[v4[fn2("\183\1", 1700858955312)]] = v45,
	}))

	if flag8 then
		local v49 = v4
		v31(v4[fn2("\215", 27636810474634)] .. os[v4[fn2("-O0\128\243", 26764905505118)]]() .. v49[fn2("\229\171\27\129\190\143\178\29\245<<\251}yL", 15506378897513)])
	end

	local flag10 = false

	v28(function()
		v42(30)

		if not flag10 then
			if flag8 then
				local v49 = v4
				v31(v4[fn2("\178", 20659423169320)] .. os[v4[fn2("͗q;\138", 2741346535929)]]() .. v49[fn2("\195wkZ\144wȺ\168\1644\255\201\252U=\131\243\6\174KR!\250\179?ä\203\200\249\131\225<=c\8\216H\2452C\236\245\5\156", 29761810394181)])
			end

			local v49 = arg[v4[fn2("į\140R\1966\251\147", 8061899644244)]][v45]
			v49:Fire(v4[fn2("", 10378031441345)])

			if flag8 then
				local v50 = v4
				v31(v4[fn2("\19", 4223155474269)] .. os[v4[fn2("\138J\234w\251", 2422435481808)]]() .. v50[fn2("\220\225Ȣ\212/\159\152\17\130\1\192\160\175\215+\170\142-\222\01938\151\237#G\250s}\166a\1", 34310319570129)])
			end

			return v49:Destroy()
		end
	end)

	local v49 = v47[v4[fn2("6y\14\152\246", 14892179830317)]]
	flag10 = true
	return (v49:Wait())
end

tbl9.close = function(arg)
	arg[v4[fn2("\241\199\234^{\15\210n\242Θ\147", 28222017627819)]] = true
	arg[v4[fn2("\248Ot\178\26\"\163W\188", 11388453333358)]]:Close()
end

local v45 = script_key or v4[fn2("O8\150\147", 28215574980261)]
local n7 = 0
local flag10 = false

v28(function()
	flag10 = true

	while not flag7 do
		n7 += 1
		v29:Wait()
	end
end)

while not flag10 do
	v29:Wait()
end

local function fn8()
	local v46 = n7

	while n7 == v46 do
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

		local n11 = arg % 9999995 + 1 + 18577
		local n12 = arg % 1000
		local n13 = fn3((arg - n12) / 1000) % 1000
		local n14 = arg % (n8 * n9 + 9999) + 18577
		arg = (n12 * n13 + n11 + arg % (419824125 - n11 + n12) + (n14 + n12 * n9 + n13) % 999999 * (n11 + n14 % n10)) % 99999999999
	end

	return arg
end

local n8 = 1
local v46 = syn and syn[v4[fn2("D\180\156f\239S\239", 24172813637616)]] or request or http_request

if v14 and ({ v14() })[1] == v4[fn2("\25\247}t\225\1\187", 7949153311979)] then
	n8 = 9
elseif v14 and ({ v14() })[1] == v4[fn2("\144\144T\182[\138\11\21\232z", 2290361206869)] then
	if ({ v14() })[2] == v4[fn2("@I\129", 19850870900791)] then
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
elseif v14 and ({ v14() })[1] == v4[fn2("\171\192\220JXȜ", 12815499767455)] then
	n8 = 7
elseif v14 and ({ v14() })[1] == v4[fn2("\169\192C<\132\166", 18670792623084)] then
	n8 = 11
elseif v14 and ({ v14() })[1] == v4[fn2("\229\232Z}%\134\210K`", 16058299038315)] then
	n8 = 11
elseif v14 and ({ v14() })[1] == v4[fn2("v\191", 18668645073898)] then
	n8 = 11
elseif v14 and ({ v14() })[1] == v4[fn2("\138\203G|", 30760420765671)] then
	n8 = 11
elseif v14 and ({ v14() })[1] == v4[fn2("y\142\4\231\253", 9953890477110)] then
	n8 = 11
elseif v14 and ({ v14() })[1] == v4[fn2("h\16\196\"\236", 28973659842919)] then
	n8 = 15
end

if v14() == v4[fn2("\236<\200I", 5129421230761)] then
	n8 = 11
end

local function fn11(arg, arg2)
	tbl7 = {}
	tbl6 = {}

	for i = 0, arg do
		local v47 = v13(i)
		tbl6[i] = v47
		tbl6[v47] = i
	end

	for i = 1, #arg2 do
		local v47 = arg2[i]
		tbl7[i - 1] = v47
		tbl7[v47] = i - 1
	end
end

local tbl10 = {}
local v47 = v4[fn2("?", 4071753256656)]
local v48 = v4[fn2("\170", 20685193759552)]
local v49 = v4[fn2("\235", 33316004297011)]
local v50 = v4[fn2(" ", 9831480173508)]
local v51 = v4[fn2(".", 12166939913283)]
local v52 = v4[fn2("\188", 20310446426595)]
local v53 = v4[fn2("\30", 7856808696981)]
local v54 = v4[fn2("J", 30505936187130)]
local v55 = v4[fn2("\22", 31005241372875)]
local v56 = v4[fn2("y", 15134852888335)]
local v57 = v4[fn2("p", 7987809197327)]
local v58 = v4[fn2("\227", 12325858553047)]
local v59 = v4[fn2("M", 14182414824344)]
local v60 = v4[fn2(")", 20544529287869)]
local v61 = v4[fn2("F", 24744061721092)]
local v62 = v4[fn2("\174", 28931782633792)]
tbl10[1] = v47
tbl10[2] = v48
tbl10[3] = v49
tbl10[4] = v50
tbl10[5] = v51
tbl10[6] = v52
tbl10[7] = v53
tbl10[8] = v54
tbl10[9] = v55
tbl10[10] = v56
tbl10[11] = v57
tbl10[12] = v58
tbl10[13] = v59
tbl10[14] = v60
tbl10[15] = v61
tbl10[16] = v62
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
		local v63 = n11
		local n14 = n9 * n12 + n10
		local n15 = n14 % v63 + n13
		n13 += 1
		n12 = n15
		n10 = n14 % 4859 * v63 % 5781
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

		local n12 = arg % 9999995 + 1 + 18577
		local n13 = arg % 1000
		local n14 = fn3((arg - n13) / 1000) % 1000
		local n15 = arg % (n9 * n10 + 9999) + 18577
		arg = (n13 * n14 + n12 + arg % (419824125 - n12 + n13) + (n15 + n13 * n10 + n14) % 999999 * (n12 + n15 % n11)) % 99999999999
	end

	return arg
end

if v3 then
	local v63 = v3
	v63(60, v4[fn2("*", 18734145324071)], v4[fn2("\221\232\7\215\12\156WP\246\153@4=\31", 22257199763704)])

	local function fn14(arg)
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

		for k, v64 in v12, tbl11, nil do
			local v65 = tbl12[v64]

			if tbl13[k] == v64 then
				n9 += 1
			end

			n10 += 1
			n11 = n10 % 2 == 0 and n11 * v65 or n11 + v65 + n10
		end

		if n9 ~= 13 then
			n6 = -1
		end

		tbl8 = { tbl11, tbl12, tbl13 }
		n6 = n11
		return false
	end

	local function fn15(arg)
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

			local n12 = arg % 9999995 + 1 + 18577
			local n13 = arg % 1000
			local n14 = fn3((arg - n13) / 1000) % 1000
			local n15 = arg % (n9 * n10 + 9999) + 18577
			arg = (n13 * n14 + n12 + arg % (419824125 - n12 + n13) + (n15 + n13 * n10 + n14) % 999999 * (n12 + n15 % n11)) % 99999999999
		end

		return arg
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

			local n12 = arg % 9999995 + 1 + 18577
			local n13 = arg % 1000
			local n14 = fn3((arg - n13) / 1000) % 1000
			local n15 = arg % (n9 * n10 + 9999) + 18577
			arg = (n13 * n14 + n12 + arg % (419824125 - n12 + n13) + (n15 + n13 * n10 + n14) % 999999 * (n12 + n15 % n11)) % 99999999999
		end

		return arg
	end

	local function fn17(arg)
		local n9 = 1103515245
		local n10 = 12345
		local n11 = 99999999
		local n12 = arg % 2147483648
		local n13 = 1

		return function(arg2, arg3)
			local v64 = n11
			local n14 = n9 * n12 + n10
			local n15 = n14 % v64 + n13
			n13 += 1
			n12 = n15
			n10 = n14 % 4859 * v64 % 5781
			return arg2 + n15 % arg3 - arg2 + 1
		end
	end

	local n9 = 68
	v63(67, v4[fn2("\132", 3840891719161)], v4[fn2("\148\243v\159\160\235\254v\22\198&3\183[\220h\254qŎJ\25\208K\154\157\246]", 12721007603271)])
	n6 = -1
	fn14()

	while n6 == -1 do
	end

	local v64 = fn17(n7 + n6)

	if n8 == 9 or n8 == 15 then
		local n10 = 0

		v16(function()
			local function fn18(arg)
				v33(arg[1])
			end

			fn18(v20({}, { [v4[fn2("\216K\237\155\22XS", 643190981207)]] = function()
				local fn19

				fn19 = function()
					n10 += 1
					return fn19()
				end

				fn19()
			end }))
		end)

		local n11 = 0

		v16(function()
			v46(v20({}, { [v4[fn2("\192\ra\139\231\195\12", 32549329237609)]] = function()
				local fn18 = nil

				fn18 = function()
					n11 += 1
					return fn18()
				end

				fn18()
			end }))
		end)

		if n11 + n10 < 20000 then
			n9 = 19
		elseif n11 - n10 ~= 0 then
			n9 = 189
		end
	end

	local function fn18(arg, arg2, arg3)
		local v65 = v4
		local tbl11 = { [v4[fn2("\242~\242\192\31\156", 25253030878174)]] = v65[fn2("rs\254", 30562846240559)] }

		if arg2 then
			tbl11 = v20(tbl11, { [v4[fn2("\216\21m\142\201m\185", 4427172646939)]] = function(arg4, arg5)
				if arg5 == v4[fn2("6c\17", 29393505708782)] then
					local v66 = v4
					local v67 = v17(v18(), v66[fn2("\1639\5\144\26ǈu&/\184", 32746903762721)])
					local v68 = v67()
					local v69 = v67()
					local n10 = 1

					v16(function()
						n10 = v19(v69) - v19(v68)
					end)

					if (n8 == 9 or n8 == 15) and (n10 ~= 0 or v68 ~= v69) then
						n9 = 121

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

		local v66 = v46(tbl11)

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

	local function fn19(arg)
		if v36()[8753563] == 22044 and n8 ~= 11 then
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

		tbl11[-1] = n8 == 3 and function()
		end or v46

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

		local function fn20()
			flag11 = true
			return v4[fn2("9", 805330944750)]:rep(16777215)
		end

		local v70 = v20({}, { [v4[fn2("\2\164\245C\127\213\\\162\31N", 24089059219362)]] = function()
			flag11 = true
			return v4[fn2("\n", 12700605886004)]:rep(16777215)
		end })

		for k, v71 in v12, tbl11, nil do
			if k ~= -1 then
				local flag12 = n8 ~= 11

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
				env[v4[fn2("*\253\137\5\172\129[\220", 22630873322068)]] = fn20
				env[v4[fn2("d0\166\143,", 17147106475617)]] = fn20
				env[v4[fn2("\194\218Gp<", 22071436759115)]] = fn20

				if k == -1 then
					if n8 ~= 5 then
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

		if flag11 and n8 ~= 11 then
			n9 = 85

			if arg then
				fn9(true)
			end
		end

		v36()[8753563] = nil
	end

	local v65 = n7
	local v66 = nil
	local flag11 = nil
	local data

	while true do
		local v67 = v16(function()
			local v67 = fn18
			local v68 = v4
			v66 = v67(tbl5[v4[fn2("vx\194#", 12421424491824)]] .. v68[fn2("[O\242\0037\14\186", 5635169064064)], n8 == 9 or n8 == 15)
			local data2 = v15:GetService(v4[fn2("\14\162\t\231\29\182*\207)\183p", 24734397749755)]):JSONDecode(v66)

			if not data2[v4[fn2(",b@\180%\197", 21709574721274)]] then
				warn(data2[v4[fn2("#\144\1440\177J_", 15555772528791)]])
				fn9()
			end

			if not data2[v4[fn2("'G\8\177li2\202", 6353524266781)]][tbl5[v4[fn2("\\\1927b`\19\180", 2717723494883)]]] then
				warn(v4[fn2("\170\225Ӥ\6t=\31\209\\\128W\254\215\219\217\208\249\214K,\170JOUZ\243o\144F\180\1443|\169+E\162\5\197\239\173\243y\2088$\250\24/7\4q)", 10233071871290)])
				fn9()
			end

			local v69 = tbl5
			local v70 = v4[fn2("M<\173\140", 25338932845614)]
			local v71 = flag4 and LT_R_RRT_H
			local v72

			if v71 then
				v72 = v71
			else
				local v73 = v8

				if v8 then
					v72 = v4[fn2("U՜\142s`Q\20;\18\198p\167-\154\139]\156\225\206\u{F45E}\2072:\0", 13360977260699)]
				else
					v72 = v73
				end
			end

			v69[v70] = v72 or v4[fn2("\194\219Κ\2251\176\229", 20587480271589)] .. v7
			local v73 = tbl5
			local v74 = v4
			v10 = data2[v4[fn2("\147\208\226r\29\14\12\29", 29417128749828)]][v73[v74[fn2("\234]\254\157\27yP", 25466712022181)]]]
		end)

		fn8()

		if not v67 then
			if flag11 then
				break
			end
			v63(69, v4[fn2("\132", 5187405058783)], v4[fn2("z\144\199zz\217\30\184 .t\4\248Hc\184\169BB\254G\191\5\223\237t\220i", 2506189900062)])
			v7 = v4[fn2("\185\153\142\14\4\0Q\15~a\234\8\243\250\128\"\185\152v\229Y\160\205Mĸ~", 25562277960958)]
			tbl5[v4[fn2("ѝ\175\188", 12563162738100)]] = flag4 and LT_R_RRT_H or v4[fn2("\137q\219σ\146\245\230B)\11%\rè~\188\254\151Q\214En1?\194h\197p\202>\191\128\188\166", 19243114481153)]
			flag11 = true
		end

		if not v67 then
			continue
		end

		local function fn20(arg)
			local n10 = 1103515245
			local n11 = 12345
			local n12 = 99999999
			local n13 = arg % 2147483648
			local n14 = 1

			return function(arg2, arg3)
				local v68 = n12
				local n15 = n10 * n13 + n11
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
				local v69 = flag4 and LT_R_RRT_W
				local str2

				if v69 then
					str2 = v69
				else
					str2 = v8

					if v8 then
						local v70 = v7
						local v71 = v4
						str2 = v4[fn2("\183b\225(\6", 22124051714172)] .. v70 .. v71[fn2("0Mz'W!\18\31\179uwA\241", 2211975661580)]
					end
				end

				if not str2 then
					local v70 = v7
					local v71 = v4
					str2 = v4[fn2("\146?\180M\218\\", 11448584710566)] .. v70 .. v71[fn2("S\1344\0225\167y%\153\151\160p\17F", 6916182153513)]
				end

				flag6 = new(v68, str2)
			end) then
				local v68 = v4
				v63(75, v4[fn2("$", 1674014590487)], v68[fn2("\3ER\150\169\174/D\168\171\182\25\\\129i\223kg\5\21\233\248\2127\249՞\184\27\144\31\179\180xO\159\127݀*\28\194TT\189\145\233z\n", 9788529189788)])
				flag6 = false
			end

			flag12 = true
		end)

		local n10 = n7 % 8585 * v65 % 9910
		fn19()

		if flag5 then
			n9 = 146
		end

		v63(85, v4[fn2("\164", 31753662264196)], v4[fn2("e\249\24\25\161 \251\8\2081\171\141\127Q:\247V\12\157\2432\28\237a\225", 6450163980151)])
		local v68 = fn20(n10 + v64(2, 4096))
		local v69 = v64(1111, 32768)
		local n11 = 12000 + ((1398563873 * ((1398563873 * (1361 + n10 + n6 % 1000 + n6) % 1610612736 + 22491) % 95716599 + 1) + 22491) % 95716599 + 1) % 120000 - 12000 + 1

		local tbl11 = {
			n11 + v68(100000, 1000000),
			v69,
			n11 + v64(3333, 15625) + n7,
			(v68(10000, 1000000)),
		}

		n6 = -1
		fn14()
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

		local function fn21(arg, arg2, arg3)
			local n16 = arg2 and arg or tbl6[arg]

			if not arg3 then
				n16 = (n16 + 4096 - tbl12[n12]) % 256
				n14 += n16
				n12 = (n12 + 1) % n15
			end

			local n17 = n16 % 16
			return tbl7[(n16 - n17) / 16] .. tbl7[n17]
		end

		local function fn22(arg)
			local n16 = 0

			for i = 1, #arg do
				n16 += v26(arg, i)
			end

			return n16
		end

		local function fn23(arg, arg2)
			local v70 = tbl7
			local n16 = (tbl7[v27(arg, 1, 1)] * 16 + v70[v27(arg, 2, 2)] + tbl12[n13]) % 256
			n13 = (n13 + 1) % n15
			if arg2 then
				return n16
			end
			return tbl6[n16]
		end

		local function fn24(arg)
			local tbl13 = {}
			n13 = 0
			local n16 = 1

			while true do
				local v70 = fn23(v27(arg, n16, n16 + 1), true)
				n16 += 2
				local v71 = v4[fn2("", 13613314290054)]

				for i = 1, v70 do
					v71 ..= fn23(v27(arg, n16, n16 + 1))
					n16 += 2
				end

				tbl13[#tbl13 + 1] = v71
				if not (n16 > #arg) then
					continue
				end
				break
			end

			return tbl13
		end

		local function fn25(arg, arg2)
			local v70 = fn21(#arg, true, arg2)

			for i = 1, #arg do
				v70 ..= fn21(v27(arg, i, i), false, arg2)
			end

			return v70
		end

		local function fn26(arg, arg2, arg3)
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

		local v70 = fn17(v64(2, 32768 + v25() % 2000) + n6 % 4096)
		local v71 = fn12(v68(1, 32768) + n7 + v25() % 1000)
		local v72 = v70(111111, 999999)
		local tbl13 = {}

		for i = 1, v72 % 30 + 1 do
			local fn27

			if i == 2 then
				fn27 = v33
			elseif i == 8 then
				fn27 = v11
			elseif i == 17 then
				fn27 = v27
			else
				fn27 = function()
				end
			end

			tbl13[i] = fn27
		end

		local n16 = v71(111111, 999999) + 11293
		local n17 = v70(1, 1234) * v71(2, 1235) + n6 % 80000
		local n18 = 10000 + ((1445613873 * ((1445613873 * (n11 + n6) % 1627389952 + 23515) % 94716599 + 1) + 23515) % 94716599 + 1) % 100000 - 10000 + 1
		local tbl14 = { n18 + v70(100000, 1000000), n18 + v71(100000, 1000000), (v70(100000, 1000000)) }
		v5 = v5 or v6

		if v5 then
			n9 = 218
		end

		if flag13 then
			n9 = 250
		end

		local v73 = tbl14[1]
		local n19 = 14883 + tbl11[4]
		local str2 = (((fn25(v4[fn2("", 26309625077686)] .. n16) .. fn25(v4[fn2("", 16740145904870)] .. fn15(16232 + v72) .. fn13(n9 + n17) .. fn10(n16 - 11293))) .. fn25(n17 .. v4[fn2("", 17472460177296)]) .. fn25(v4[fn2("", 27987934766545)] .. v72)) .. fn25(tbl11[3] + 3215 .. v4[fn2("", 13603650318717)])) .. fn25(v4[fn2("", 32880051812253)] .. v73) .. fn25(v4[fn2("", 16629547121791)] .. n19)
		local n20 = tbl11[2] + 11293
		local str3 = str2 .. fn25(tbl14[3] .. v4[fn2("", 13202058620935)]) .. fn25(v4[fn2("", 15144516859672)] .. n20)
		local n21 = 16232 + tbl11[1]
		local str4 = (str3 .. fn25(tbl14[2] .. v4[fn2("", 18783538955349)]) .. fn25(v4[fn2("", 8523622719234)] .. n21)) .. fn25(str or v4[fn2("\15", 2953953905343)])
		local str5 = fn25(fn16(fn26(3) + 11020) .. v4[fn2("", 3140790684525)], true) .. str4
		local tbl15 = {}
		local v74 = v71(111111, 999999)
		local v75 = n6
		getfenv()[tbl15] = v74
		local v76, v77 = fn18(tbl5[v4[fn2("\209\30p\238", 17011810876899)]] .. v4[fn2("V", 25199342148524)] .. v10 .. v4[fn2("\221\209\n=o\17", 1184373376079)] .. tbl5[v4[fn2("p<\196O\205\0158s", 21268253363551)]] .. v4[fn2("c>\6\3F\162+y", 3976187317879)] .. str5 .. v4[fn2("\167Q\174", 1858703820483)] .. tbl5[v4[fn2("\15s )\130R\2366K\160\146G\162", 33488882006484)]] .. v4[fn2("\142\229\173", 8988567118003)] .. v45, n8 == 9 or n8 == 15)
		n6 = -1
		fn14(tbl8)

		while n6 == -1 do
		end

		while tbl11[2] ~= v69 do
		end

		local n22 = 0

		for k, v78 in v34(tbl13) do
			if k == 2 and v78 ~= v33 then
				n9 = 147
			end

			if k == 8 and v78 ~= v11 then
				n9 = 147
			end

			if k == 17 and v78 ~= v27 then
				n9 = 147
			end

			n22 = k
		end

		if n22 ~= v72 % 30 + 1 then
			n9 = 147
		end

		local flag14 = false

		if n9 == 147 then
			flag14 = true
		end

		if n6 ~= v75 then
			n9 = 100
			flag14 = true
		end

		if v76 == v4[fn2("\196\205X", 28147927180902)] then
			while true do
			end
		else
			local fn27, n23, v78, n24, n25, v79, tbl16, n26, n27, n28

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

					v63(100, v4[fn2("\244\159\237\201L\217X\239\180\245$\181G?", 30952626417818)], v4[fn2("N=1MT {!\211Z\191R\207'\140\200\253|3\169\178\183\150U\25c", 27278169760572)], Color3[v4[fn2("\189o`", 30263263129112)]](1, 0, 0), v4[fn2("4\226\14\232\14", 13170919157738)])
					fn4(v80, v81)
					fn9()
				end

				if v77 then
					if not v77[v4[fn2("\2\209\252\2074\186vTX\135", 27265284465456)]] then
						local v80 = v77[v4[fn2("\212/tO\130\27\16ĩ\177", 17419845222239)]]
					end
				end

				local n29 = tbl11[4] % 256
				local tbl17 = { [0] = tbl11[1] % 256, tbl11[2] % 256, tbl11[3] % 256, n29 }
				fn8()

				fn27 = function(arg)
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

				if getfenv()[tbl15] ~= v74 then
					n9 = 100
					flag14 = true
				end

				n23 = 1

				for i = 1, 30 do
					local n30

					if v33({}) > v33({}) then
						n30 = n23 + 1
					else
						n30 = n23 * 2
					end

					n23 = n30 % 10000
				end

				fn26(1, tbl17, 4)
				v78 = fn24(v76)
				n24 = v78[1] - n16
				n25 = v78[4] - v72

				while n29 ~= tbl17[3] do
				end

				fn19()
				v79 = tbl17[3]

				tbl16 = {
					[0] = tbl17[0],
					[2] = tbl17[1],
					[4] = tbl17[2],
					[6] = v79,
					v78[9],
					[3] = v78[7],
					[5] = v78[2],
					[7] = v78[6],
				}

				fn26(1, tbl16, 8)
				n26 = v78[8] - tbl14[1]
				n27 = v78[3] - tbl14[2]
				n28 = v78[5] - tbl14[3]
				local str6 = v4[fn2("", 28654748788798)] .. fn16(tbl14[3] + 4691) .. fn15(tbl14[1] + 31) .. fn13(tbl14[2] + 6695)

				if v78[11] == str6 and ({ [str6] = true })[v78[11]] then
					flag2 = true
				else
					local str7 = v4[fn2("", 6334196324107)] .. fn10(tbl14[3] + 4691) .. fn13(tbl14[1] + 69) .. fn15(tbl14[2] + 6695)

					if v78[11] == str7 and ({ [str7] = true })[v78[11]] then
						flag2 = true
					end
				end
			end

			local n29, v80, str6

			do
				if flag2 then
					local flag15 = v19(v78[14] and v78[14] or v4[fn2("\230v", 11362682743126)]) == -1
					v19(v78[15] and v78[15] or v4[fn2("\8", 1527981245839)])
				end

				n6 = -1
				fn14()

				if n6 == -1 then
					n9 = 250
					n6 = 100
				end

				n29 = n7 + v70(111111, 999999) + v71(1234, 5678) + n6 % 99915 + n23
				tbl14[4] = n7 + n6 % 9951
				v70(100000, 1000000 + n6 % 1000)
				tbl14[5] = n6 % 8005 + n23 + v71(100000, 1000000 + n6 % 5000)
				tbl14[6] = v70(100000, 1000000)
				fn26(2)
				v80 = v78[10]
				local v81 = tbl14[6]
				local str7 = fn25(v4[fn2("", 11551667071494)] .. fn13(v78[13] + 14708) .. fn16(n29 + n9) .. fn15(v78[10] + v72)) .. fn25(tbl14[5] .. v4[fn2("", 33512505047530)]) .. fn25(v4[fn2("", 24280191096916)] .. n29) .. fn25(v4[fn2("", 281328943366)] .. v81) .. fn25(tbl14[4] .. v4[fn2("", 30946183770260)])
				str6 = fn25(fn13(fn26(3) + 11020) .. v4[fn2("", 1284234413228)], true) .. str7
			end

			local v81 = v78[12]
			local response = v15:HttpGet(tbl5[v4[fn2("\204=\165,", 285624041738)]] .. v4[fn2("\215", 34962100748080)] .. v10 .. v4[fn2("\180T}\144E`\233N0\18\159\197", 5342028600175)] .. v81 .. v4[fn2("l4\190", 13551035363660)] .. str6)

			while v79 ~= tbl16[6] do
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
					local v82 = fn24(response)
					local n30 = 1
					local v83 = fn27(1 + v70(100, 1000 + n23) + v71(500, 5000 + n23) + n7 % 10000)
					local flag15 = false
					local n31 = 0
					local flag16 = false
					local flag17 = false
					local str7 = "?"
					local v84 = nil

					for i = 1, 3 do
						local v85 = v82[3]
						local str8 = fn13(tbl14[5] + 11293) .. fn13(tbl14[4] + fn22(flag16 and v4[fn2("\177", 34008588909496)] or v15[v4[fn2("\5fw\137\244", 33146347911317)]])) .. fn13(tbl14[6] + tbl14[2])

						if v85 == str8 and ({ [str8] = true })[v85] then
							local n32, n33, v86, v87

							do
								flag3 = true
								str7 = v82[8] and v82[8] ~= v4[fn2("C", 5343102374768)] and v82[8] or v4[fn2("x\138\221<\173~N", 31676350493500)]

								if not (v82[9] and v82[9]) then
									local v88 = v4[fn2("\190;h\148\252\0\245", 23283728274612)]
								end

								v84 = v82[6]

								do
									local n34 = v82[1] - tbl14[4]
									n32 = v82[7] - tbl14[5]
									n33 = v82[5] - tbl14[6]
									local v88 = n26
									v86 = n27
									v87 = n28

									n26 = function(arg)
										if not (flag15 or n31 < v30() - 8) then
											n30 = (n30 + arg % 66) % 6644
											return v88 * arg % n34 + arg * 3
										end

										while true do
										end
									end
								end
							end

							local function fn28(arg)
								if not (flag15 or n31 < v30() - 8) then
									n30 = (n30 + arg % 50) % 5891
									return v86 * arg % 10000 + arg * n32 % 4
								end

								while true do
								end
							end

							n28 = function(arg)
								if not (flag15 or n31 < v30() - 8) then
									n30 = (n30 + arg % 35) % 6711
									return (arg + n33) % 100 * arg % (v87 % 100 + 1)
								end

								while true do
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
							local v85, tbl17, ReplicatedStorage, tbl18, tbl19, FinishersController, RunService, instance, Players, localPlayer
							local UserInputService, replicatedInstances, module, sword, function_, function_2, text, v86, v87, tbl20
							local fn28, data2, fn29, flag18, tbl21, n32, n33, n34, n35, n36
							local n37, flag19, flag20, fn30, favoriteSword, favoriteExplosion, lastEquipped, tbl22, v88, tbl23
							local fn31, str8, v89, TitleData, titleList, tbl24, service, fn32, tbl25, v90
							local tbl26, tbl27, tbl28, v91, tbl29, tbl30, flag21, now2, n38, flag22
							local n39, n40, flag23, byteUi, flag24, HttpService, str9

							do
								do
									do
										do
											while not flag12 do
												v29:Wait()
											end

											flag7 = true

											do
												local flag25 = false
												local flag26 = false
												local n41 = 0
												local n42 = 0
												local n43 = 0
												local flag27 = false
												local n44 = 0
												local n45 = 0
												local v92 = v78[12]

												v28(function()
													flag26 = true

													while not flag9 do
														local n46 = v83(1000, n30 + 10000) + n30
														local n47 = v83(1000, n30 + 10000) + n30
														n44 = n46
														n45 = n47
														fn26(2)
														local v93 = fn25
														local str10 = fn25(n45 .. v4[fn2("", 15363566876644)]) .. v93(fn16(n45 + v80) .. v4[fn2("", 6862493423863)] .. fn15(n44 + n16)) .. fn25(n44 .. v4[fn2("", 13612240515461)])
														local v94 = v4[fn2("", 26792823644536)]
														local v95 = v10
														local v96 = v4
														local str11 = tbl5[v4[fn2("\251k\3\137", 8239072452089)]] .. v4[fn2("\243", 6554320115672)] .. v95 .. v4[fn2("\1716y\6\132\215\1\133#\18\21'\12\146H\155\195\17", 8461343792840)] .. str10 .. v96[fn2("\224\212\238", 27556277380159)] .. v92

														v16(function()
															if flag8 then
																local v97 = v4
																v31(v4[fn2("@", 8025391308082)] .. v30() .. v4[fn2("\198\5\158\149\150H\31\14\31\12\163}g\158\31H\4\5\208[", 21377778372037)] .. v33(flag6) .. v97[fn2("\229\215", 957806936956)])
															end

															if flag6 == false then
																v94 = fn18(str11)
															else
																v94 = flag6:request({ [v4[fn2("E\143\147", 17306025115381)]] = str11 })
															end

															if flag8 then
																local v97 = v4
																v31(v4[fn2("\136", 8205785439706)] .. v30() .. v97[fn2("\20N\188+\204\18\227\131`OM\249P=\163n\206\2432", 6507074033580)])
															end

															if v94 and #v94 > 3 then
																if v94 == v4[fn2(",.[\"@+o>\223", 19626452010854)] then
																	flag15 = true
																	flag2 = false
																	flag3 = false
																	n25 = 1
																	n24 = 2
																	local v97 = v4
																	v15:GetService(v4[fn2("K\26\21\0193\18\164", 34803182108316)])[v97[fn2("\210\201\222Q\159{D\181\180\253d", 29684498623485)]]:Kick(v4[fn2("\3\174d\163\173\15\196\248\n\148\211g\189\226M\252,\146?T\145^m\161\29J\31mM\158n\1\176D\232\133\t\2291r*\138W\145\0190\29\152I\176\177\147X^3\153O۴", 33049708197947)])
																	fn9()
																end

																if v94 == v4[fn2("Ɖ\162J", 30249304059403)] then
																	flag15 = true
																	flag2 = false
																	flag3 = false
																	n25 = 1
																	n24 = 2
																	local v97 = v4
																	writefile(v4[fn2("\231\151|(\168\248]\170\254\215\233V\231k\136M\172\129\168", 14824532030958)], v97[fn2("s25z\154\234a\131\145", 15250820544379)])

																	while true do
																	end
																else
																	v94 = fn24(v94)[1]

																	if v94 == fn13(n44 * n45 % 100000 + n29 + 16232) .. v4[fn2("", 28489387501476)] then
																		n42 += 1
																		flag27 = true
																		flag25 = true
																	elseif v94 == fn10(n44 * n45 % 100000 + n29 + 16232 + 4919) .. v4[fn2("", 15233640150891)] then
																		flag27 = true
																		flag25 = true
																		flag9 = true

																		v16(function()
																			flag6:close()
																		end)
																	else
																		flag15 = true
																		flag2 = false
																		flag3 = false
																		n25 = 1
																		n24 = 2
																		local v97 = v4
																		v15:GetService(v4[fn2("\197>x\169\18fL", 29485850323780)])[v97[fn2("\172\15\203V*\147lM\179R\26", 24838553885276)]]:Kick(v4[fn2("\174\191bRRQ*\193ع'\25\154\n\158j\6\129\242\184\187\21\21D\245\225tL\179\160(", 22159486275741)] .. n42)
																	end
																end
															end
														end)

														v22(20)
													end
												end)

												while not flag26 do
													v29:Wait()
												end

												flag26 = false

												v28(function()
													flag26 = true
													local n46 = 200

													while true do
														n46 += 1

														if not flag9 and n46 >= 250 then
															if flag27 then
																n41 += 1

																if n41 > 4 then
																	n41 = 0

																	if n43 < 10 then
																		n43 += 1
																	end
																end
															else
																n43 -= 1

																if n43 <= 0 then
																	flag15 = true
																	flag2 = false
																	flag3 = false
																	n25 = 1
																	n24 = 2
																	local v93 = n42
																	writefile(v4[fn2("\rq\227Ŗ\196C\12d5\169P\130\23\225R%\162/\160\157", 15647043369196)], v4[fn2("\226\254\178K\216\255Z+Z", 8167129554358)] .. v93 .. v4[fn2("\250\193X\28", 24571184011619)] .. v33(flag6))
																end
															end

															flag27 = false
															n46 = 0
														end

														n31 = v30()
														v22(0.18)

														if n31 == v30() then
															flag15 = true
															flag2 = false
															flag3 = false
															n25 = 1
															n24 = 2
															local v93 = n42
															writefile(v4[fn2("\221aK\192\216\12q\174n\167\"\232\6\199\17:\166y\t=)", 26022927261355)], v4[fn2("\206\224\168?\226v\231\19\29", 709765005973)] .. v93 .. v4[fn2("\169d\175m", 10312531191172)] .. v33(flag6))
														end
													end
												end)

												v63(95, v4[fn2("\132", 22787644412646)], v4[fn2("\"\140\144$Il~ٳz\219Z\206:\t", 447764005281)])

												while not flag26 or not flag25 do
													v22()
												end
											end
										end

										v63(100, v4[fn2("^\156\160\174\193/5\1494\0U\206\225\165}", 10029054698620)], v4[fn2("[Q7ð=\11x\218~\1302}\200\234/m\228.\159", 31806277219253)] .. v30() - now .. v4[fn2("\252", 21953321553885)], Color3[v4[fn2("wܽ", 20447889574499)]](0, 1, 0), v4[fn2("\211\225ף", 11135042529410)])
										v85 = nil

										do
											local tbl31 = {
												[15] = 86,
												[3] = 198,
												[2] = 102,
												[8] = 6,
												[23] = 221,
												[5] = 76,
												[4] = 170,
												[9] = 224,
												[12] = 190,
												[10] = 63,
												[19] = 143,
												[18] = 215,
												[11] = 177,
												[22] = 219,
												[20] = 52,
												[14] = 231,
												[7] = 2,
												[17] = 98,
												[21] = 189,
												[13] = 8,
												45,
												[6] = 110,
												[16] = 249,
											}

											luraph_runtime1(v84, buffer.fromstring("a\205U|\1e\172\158\160\135;\160\167=0\194a\221\218Ĭ~\201\229\141\222\12\201\6\159/\134܈\tƛ\231\239\4\222\244%\u{379}\177ܽؿ\180\226\241oթ\127\215ח7w\14\216 \12\130\251|\191\186\20h\11\0x\249\137\253\221j\164ϡ\146\254\198\11U$\156\tx\194\r\249\184\195e\229H\27\167\240\216\225\207\244\245\18\18\20\1\226\181x\129\163\186i\151\145ه\1506S\173\129h\145[\225\238&\160<L\246\199\2\170\155\0T\186\167\2\236\7\253\215\19\23\132ݯV\144\24\129\252\139\213\24GȞR\2443hak}K^v\237\222\224\15I\26\2350\20\161̙6\235\25\151,\1817ꂂ\212\230\237,\138\191D_0_\246=e\153P/\145\195#\138O\220\239='\227D\u{9A}\15\150YO\2148\199\211\8t\nt\241\142L\154\"\180<ŎT\134vˁ%{\221\253!z\202¾?Vo\127q\230\208\27(\201\1\188d\155_M\2\18S\171\31\171\247F\20\190g\\\205⵰m\135ק\217A\237\206!\195\245\1521\143\226F\133,\127T\204\229\188\225ϣ\207\30p\156\19k\157q\7\192{'\135U\143\207s\31tن\11\208K\168I-2\158wt\133\139\253\20\170\20\4\132\209f\133\139\230\153(\155\1702*0l\253\163\29lJZzmCh\166_4\154*\214L\26\177\240`\250\"\135AIM\150\228\179p#`\238\25W6o\229\211Rap\229\148߱\252I\16\161\201βgx\221&\177\238+\127\16\255\168\136o\240\223|$K\25\1_\1\246@l\239\2147H\221\3\0\142\28Jr\194\220u\214[H\1374\11\176\17541\249AN\193/\199\127\165\193\20\158#Z*@\185\165+̉V\246\189&t\127\240X\0266\23F\19|\186\0208'\187\249q\253d\140\180\210\234\213\193&lH\250\222\238?\218\225O\217\255\20\19\167%\181\175\185\234\1.\212\235|\6\20\242\141\213\127,P\7\2\202ߚ\231\249\8!w\"\252\241\171a\166\173\27\230s\131\30\211\250\138\189\139\183\141\238\r\248\179\164\174\206\19\230mo>$\237\137S\247\250\220aJ\137$\215\127®\242\154\189у\134_C\250\249T\209H\14\220\216\238o\11\190LU\244r_\192\25\166\218_$\31\7ї6\213TS\131[\206?\129O`\tz\182\237\184\230C\18\0\137\220\202=\199\25\16r\232J\14o\21886\166\178\211\0\197\14\130\n\2533Y\197P\174H\1407\143\178\7\155RN\134\247\176=\197\250\226\4\251\\ 1\223r\181p\193\219MGd\244\27\163w9M\226\232\227\238p\196W\133\1760qRuC\194\226\175ۗ\127\197\20\r\224!Rd)2\\\25\158\3oݗ/\250z\219tGsC**\221}\3\240\205Sv\3*\246\151榎\230\246ԴJ\28o\0290\12\255\28\1940֯\r\3\188\168\247\224\142{\231\228\127\27\233~\152 \244\191\252\149\133)\156j\7\1435\157,\139q\29\1582~\147\255[+\21J\225\"Š`\236=\27N\135\254\2149s\130\182\18\223̠\25>\141\29:\177x\232\1695v&\200L\222Q\164\u{5FF}\146\251\150\173\132\255\235\244\n2x\136\187\1\167K\232o\23\196P\4\152VȒi\196r\132l\11\226\229\204\6\230\226\184]d\240h*\238\155\26\26V\252\18D\229?\208UV\22\233\158~\196H\192_\181\203V-\n#\169\225\160\19\14\5\204\224+\24\219P\243\186%ޡ\1727\136\247\145\1\228_\134\165\226CS\234\155\207*\151\131~g.mޖ7\224\158g/\2282:\20OV\253]sgo#䭐\152]\218C+w\132\145\204\26w\252wN\174\141G\24\2133\191\217ޣ\228\234^U\162Պ\196tmwÂ\129\4\148\156\"\167q2\241\28\\c赎\142\187\237>\203t\248d\177\184\223\8\201q\202 QMh\19\2436\220e\192\151k\251\152-\237\29\14\166nH\136q\170\1\249:o6ro\241\135\146b䲠\7\2083\198\7B\6\3\238\173\29#\23\149t:\157\197\196\200\0D\134`\219P^\196.\233\168Þ\179\144\159\31\153\179\160\1531\7\243v\174\6\151\155L\203DZ!XV*\27\15\229\19\241\208\234D\209\244\147!\168l\242\205\194\4\154\14\0047d\17\181z\177\203_\219\24\174Ӝ\2\134\24'?\30Q\0117\29\207Fs\152\143]-.\219\1k\199ڰ\209\194B\2\221\193\147F\185\241W\149Z\246\24\165\23\132\211/]\250\182B\177JXn\228\250\0[3\240f\157m\253\157\17\151(\2271\207k錜\3P\238O\230Pԃ\250B\215]\137\162\202o5j\149T\216\196\195\245=\131M4h\154ֱW\217L\133\18p\246Ь\224\189\217\12\206\221\248\2205\nq:\3\245A\160\186\180\20y\145h\254\2531TC\19{8\178\22n\1E}\244R\231*=\191\178\132\200\238\17\162\228䔯\219;\224\7u\2526\0247\127g\148\151\220\207?\28\203\11g@\20\222=\223|\239\148\u{AF6EF}\168\249\199Es\25q\192\15\t\224\27I\131^z\4\135\140\141\184\1456\201\211\210fd-\149\27\5\166\180Y#\132\181\129`[]p\168*T9\142\135-\180\8G\8\173m&\r\135=\2101\180\206\245\144z3\242}\246\188˷1\190\241N\29\147\148,\2246p6\163\200=\214\r\134n\153\170\240\162\230\212\0227\175c\132\152\240\215\20\135\145U\254\154\145y0\30p\183<<\2100\186T$\0129\215H\185\239WGi+'\208\5Z\237\213\219\6\29\173w\220\4y\139A\249\128iJI\r\18/\212\18\240\149\253m\29\187\236\232aʝ\240\202\t\142uC\22\2527\215\233`\239\135\248\196\253jB\6:\251\131\253\229O\192\130@|\241T\146&~5~\1876\30\150F\178\162\249\188\r\149c/\228T|XZ\243\161\165\254\6\232\251\1727>\183T\133\169\183+\247\160\210&\16\18G\29b\180@\29\251\210\5\239m\219J\1904\230X\239\203\3&\136\127;\200iY\153\128\22\217́\174\153\161\159\174N\198z \155\217\238\153M\188\177??\142я5\180\190\253\197\25\0054h\253\241f\249\189\22\182\204\202\242/E\191d\201sK\230\0!\251\183}\0076ZC;I_\22\18PI\162[\\\173\240\240F\131\6\129AX\22\180g \185T\137\170z\30\149\203ŵe(\210M\144\18BH\243\128\7P\182͟o\233R}\158\255\138}v&\140$\12\228\1770$\127@Ǒ\189\158\24\21l\171\170\212ua\\9~\254\243\230o\236;\215a\2228_\1993\249\135\177\132\226\246\0054\239T䶬\2204\253\2\r\147\1923\15\190K0?\217v\153\166b\160\18{\155S5%ǒ;\184\" =\24\224\183\245\239g;\131-35٦G\164\185\142\138\205h%r\179B\191N_)\r\221Y\156\1943\14\134\5ǲ\224\208\229&\127\00205\165\130P\193\208݅\7!J\167L\235-߈x\t\t\4\146)wZ\183\141\t\nK\232q?g\158\146XSv\11\180\245\218\249\11\23i\173\184\151\137C\127\247\221\234\2\2482\149$\229b1\133z~\29\146\174\204)\18\3:\132\144(\234\167\8\187\2153&\2\2481\2223\241z\159\220\249.o:\136t\174U\175st\152\169\147\230\173\225\251\19Y.:\129Ek\t\1951\161X\6M\185\164o\146\224\151\164\144:g\132c\164\189+\7\204-\191!T\173\175ô\208\6\200\14W\171y\3|\153W\145\25\251\208F\172J>IJG3\146\172hd\29r\\^7d\169_\158\187RF\220N}\142\235+_\21\164\182\171F\159\147\\\134\r\209b?\165\247\241\200\26*\23\202\243\232\217h\128H\155\129\132\248\130\21$9\n\247r\180\175\16\150\183YE\227\245\133\252\232\15\2325\241T\169\211E(\30\234}/\214\200/\2293T\217\193\0\132!\252\238jx\198\22\188\251+i\2418\159^\133&t\186,\173\29W\25j%EN\189\241\142\128\235\240N7\180\21\236NVEU\2450`^2\189#\146ޢlMkPb\179N\234\174<4\26Z\156\4C@\142c\166\0062c\1956b\237V\162~hy$Ѧ\2475\221\0\141W*\195Nl\181\155\2286+S.\240@\145\153\130\2\25\234D\"\135P{\243\177@ʡ\168\0111\17\199^\127\135\150\176Q\140E\u{9C}\233\176~\n:+\0154h \31\131\156\173\233\21\129\29|\135\167\229\2\163\26\230\127\241r\224h>\17\248\26Y\139\250tߐsҡ9 J\129\205\5\145\187\246Ԁ\213\252\185ɧ\1370\242ZI\225\127\172?\255f\t\11\\>6E\238\135 G\155\188x\204\213+\147\176zt\"6}\6\212M\129\214\198K\254\161\rԉ1\168\162dCȐ\207J\210\7\237\19\145ȥ\137F3G2\171\134ڜ\154\135\18\187i\161\198\211c\17$C\180\252\1573\130`V\228v\31\241\166\22\239\186|\242\5\236\197\225Q8\254\219\1H\239\253yu\211\0$\197>\137\151|\t\20\12\174\145\1[u\245\209?s\12\176\131\250\28\144\17߈\23\151\130U|v\212\209\199\235\211X\150|\127\245p\130B\223\15\204v\253\171jBv\138\235\170:\147\202\204\7\149ş\156\150 Xee\145\1841<EQ\1521\213\241\215,XI\217`\241-\135Q\250\\\177\213+!\185\134\129>\r\152>\214$LE\176\223NN\230=\127\176\203#f\242\150\152:![\200\29\243\30$\176\139\195.2\175\4\143\252\21\211mF\0\146\31\252\n6|\249$\131#=\138ḷ9\241\232X\171N}\131\136\227x\133\20_\169\1876?c\5l\208&\26\234\175am\140\18\249z\28\163s}͜A)\8Y\187\186\135\248\138\16\166\208S\214U.\149*Y\222ꅏ\171\15 r\163\20\183\221\16rpY\253}\244O\171\0300\255r\29c\244\26e\255\176̊ȉ\170ی,)\207\204\218\127\178E\133\226CJP\212\204L0O\152\129\133P\25\232\157\02168\143w\150O&ϓ;\3\237\219\252j#\132\150\195j\22=\225$\144\20&NO\194\21c\162\166\r\2371\207\0T:\8\244\204\\\189\131\12|է\205]Oe\176\185\152\8\19\127:SPv\250C?fv\207ƿX\233GM\0068\220\250\19\248w8\211C`?5Z\248Y\173}\7!\171\178m81%\196c\24\191.)\233\248\2471\253!\136Ǥ`\\\216;\u{5F7}OJ\14165\226\u{F152}GW\230Q\2107\236\248K\145\205X{7\1\162s\236\130\2205\n\2\0059qN\150y\27\128\154\172.\189,\191\255\208\192A\194\253\244\234\156o\255\226\226\249̗ςr\8\140\6\2018\250u\155\1711,`\145\153\248\230\224\1518=\219Y\169\29\150\208\2003\139\197Q>*\248^\1ϰ\166A\u{89E03}\2081gyx\248q\248m˖\197\5\19'Y\11t\139>\15\164\\\245\28\131Bώ#\252I\246\"m\140\"\243B\8\250AgeE\189\136?$\0242C4o\15\251\254è\158k\158\224~\129\232*\239Ĳ{\150\00620\247B'\151B\181-\236\u{5F6}1\231\194u%\141\182\153\184\14z\213=\127i\219mq\200s\14\172\29.\17q\25\175~\148\"\187v\208.\250,\226\178\251d\31j\189\225ġ\146\226\8+\30\234\185G\7K\4\168\180?\226-ݾQ\218\243K\152_\135}\2R\220\21\166\206\254\227\181\30\146\156ў\140t/p\213\239\218&g~\2282\203\220W\166-E1\139^\210\30\231\240\19 \243y\148\25\255!(a\31>5\196\249\239A\188;s\152\170\242\241M\249\186\245\173\225\166x\252\11G\186\1450\206x\1772:\170\228\219d=\4d[\160\181\220\15\250\203\208n\223-\rWq\176^\19K&c\\_\169*h>\2\241'\252m^\144\249s\17s\189E@n\7`{\175v\252\234\229\204hP\219\237\6\150\239%\15\242\249\203xBl\236\215\205\2\172\227\249\217\"\0\153\177\167v/\137\152l\177k\234l\147A\236L\246\196~AȊ\234\164\209E&\239,\2087\143\146J\191G\170Q\185j\160\163\200\233\211\202,\253Z\214xv\30O\254\1672\223\250-s4\196\19\t\16\235\u{605}\153\180\r\161ޙSx\217ѯ\235\25zĭ@\185\5l\221ּ\3E\245\131\207V5'\244`\147\239\203^[\252\186\14\133{\225\30\2\30_\204\15\196z\220\218[H\193\n\195rHV\240\219\211\231b\176-\235\170\12\138ԧ\3\155\8\168\185:@\178C\3\n\2\172E\165\14\199jo˄\31Re79\160\1702\160\165\213\248\4a\158ҏ\237]\165\169]$d?\229\174B\217\253\252/4,v\195\3]\136`5\150\224\209\250B\130K\223-\226\148\252\190\138\\'~|,\194\31{\163\243\168\4\4\189\2084\142\r\140\203\208\27\251\187\240\156v\27\203]=\231i\175\204\6\183\242B\220\3\252\168N\141+\7?\194\15\223\237!\233\27\255\1507B\127\197\30g\171Ae>!\164\131\199\254\12\28%H,\187\168滌\255w\241+\246\238?u\189A\r\252\145]\156VlU\227\3%\206#\2197R\26\3\210\241^\224s\25\199\31\233\203Tfȗ\190ma\179,\185*\23\227#\220\247\u{50C80}\3\165\221@\17\254ز@E\186~.\21\205\tZ>\233\29\232E\189B;Þ\243Ќ\185ſ\221"), tbl31, 259)()
										end
									end

									do
										local tbl31, balls, touchEnabled

										do
											do
												repeat
													task.wait()
												until game:IsLoaded()

												tbl17 = { Flags = {}, Keybinds = {} }
												ReplicatedStorage = game:GetService("ReplicatedStorage")

												tbl31 = {
													Parry_Remote = nil,
													Parry_Hash = nil,
													Parry_Key = nil,
													Token = nil,
													Time_Encoder = nil,
												}

												do
													local module2 = require(game:GetService(v85[148]).Controllers["SwordsController \12"]:WaitForChild(v85[183]))
													local v92 = debug.getupvalues(module2)
													tbl31.Time_Encoder = v92[4]
													tbl31.Parry_Hash = v92[8]
													tbl31.Parry_Key = v92[3][3]
												end
											end

											do
												if not tbl31.Parry_Remote then
													do
														local v92 = nil

														local function fn33(parryRemote, ...)
															local v93 = table.pack(...)
															local tbl32 = { ... }

															if parryRemote and typeof(parryRemote) == "Instance" and parryRemote:IsA("RemoteEvent") and tbl32[1] == tbl31.Parry_Hash then
																if not tbl31.Parry_Remote then
																	tbl31.Parry_Remote = parryRemote
																end
															end

															return v92(parryRemote, table.unpack(v93, 1, v93.n))
														end

														v92 = hookfunction
														v92 = v92(Instance.new("RemoteEvent").FireServer, fn33)
													end
												end

												tbl18 = {}
												tbl19 = {}
												FinishersController = require(game.ReplicatedStorage.Controllers.FinishersController)
												RunService = game:GetService("RunService")
												instance = Instance.new(v85[23])
												Players = game:GetService("Players")
												localPlayer = Players.LocalPlayer
												balls = workspace:WaitForChild("Balls")
												UserInputService = game:GetService("UserInputService")
												touchEnabled = UserInputService.TouchEnabled
												replicatedInstances = ReplicatedStorage:WaitForChild(v85[112]):WaitForChild("ReplicatedInstances")
												module = require(replicatedInstances:WaitForChild(v85[57]))
												local serverStatsItem = game:GetService(v85[163]).Network.ServerStatsItem
											end

											do
												local attribute = localPlayer:GetAttribute("CurrentlyEquippedSword")
												sword = module:GetSword(attribute)
											end
										end

										do
											do
												function_ = nil
												function_2 = nil

												do
													local net = ReplicatedStorage.Packages._Index["sleitnick_net@0.1.0"].net
													text = localPlayer.PlayerGui.Settings.Frame.Frame["Keybinds/Block"].Keybind1.TextBox.Text or localPlayer.PlayerGui.Settings.Frame.Frame["Keybinds/Block"].Keybind2.TextBox.Text or localPlayer.PlayerGui.Settings.Frame.Frame["Keybinds/Block"].Keybind3.TextBox.Text
													v86 = nil
													v87 = nil

													for _, v92 in net:GetChildren() do
														if v92:IsA("UnreliableRemoteEvent") and v92.Name ~= "URE/ReplicateBallPosition" then
															tbl18["Real Ball Position"] = v92.OnClientEvent:Connect(function(arg, arg2)
																if not arg or not arg.Parent then
																	if arg == v87 then
																		v87 = nil
																		v86 = nil
																	end

																	return
																end

																v87 = arg
																v86 = arg2
															end)
														end
													end
												end
											end

											for _, v92 in getconnections(ReplicatedStorage.Remotes.FireSwordInfo.OnClientEvent) do
												function_2 = v92.Function
												v92:Disable()
												v92:Disconnect()
											end

											for _, v92 in getconnections(ReplicatedStorage.Remotes.ParrySuccessAll.OnClientEvent) do
												if v92 and v92.Function then
													function_ = v92.Function
													v92:Disable()
													v92:Disconnect()
												end
											end

											tbl20 = { storage = { current = nil, Trove = nil } }

											for _, v92 in game:GetService("ReplicatedStorage").Misc.Emotes:GetChildren() do
												if v92:IsA(v85[101]) and v92:GetAttribute(v85[180]) then
													tbl20.storage[v92:GetAttribute("EmoteName")] = v92
												end
											end

											do
												local tbl32 = {}

												for k in tbl20.storage, nil, nil do
													table.insert(tbl32, k)
												end

												table.sort(tbl32)
											end
										end

										do
											if isfile("Aries/fav_emotes.json") then
												local json = readfile("Aries/fav_emotes.json")
												data = game:GetService("HttpService"):JSONDecode(json)
											elseif n26(v85[166]) > 14515 then
												data = {}
											else
												while true do
												end
											end

											fn28 = function()
												writefile("Aries/fav_emotes.json", game:GetService("HttpService"):JSONEncode(data))
											end

											if isfile("Aries/wheel_slots.json") then
												data2 = game:GetService("HttpService"):JSONDecode(readfile("Aries/wheel_slots.json"))
											else
												data2 = {}
											end

											fn29 = function()
												writefile("Aries/wheel_slots.json", game:GetService("HttpService"):JSONEncode(data2))
											end

											tbl19.Generate_Token = function()
												local v92 = tbl31.Time_Encoder(tbl31.Parry_Key, v85[74])
												local n41 = #v92
												local v93 = v85[54]
												local str10 = tostring(math.floor(workspace:GetServerTimeNow() * v93))
												local n42 = #str10
												local v94 = table.create(n42)

												for i = v85[86], n42 do
													local v95 = str10:byte(i)
													local v96 = v92:byte((i - v85[86]) % n41 + 1)
													v94[i] = string.char(bit32.bxor(v95 + i, v96))
												end

												return table.concat(v94)
											end

											tbl19.Client_Ball = function()
												for _, v92 in workspace.Balls:GetChildren() do
													if not v92:GetAttribute(v85[51]) then
														return v92
													end
												end
											end

											tbl19.Get_Ball = function()
												for _, v92 in balls:GetChildren() do
													if v92:GetAttribute(v85[51]) then
														return v92
													end
												end
											end

											tbl19.Get_Balls = function()
												local tbl32 = {}

												for _, v92 in balls:GetChildren() do
													if v92:GetAttribute("realBall") then
														table.insert(tbl32, v92)
													end
												end

												return tbl32
											end

											tbl19.Get_Crosshair_Target = function()
												local currentCamera = workspace.CurrentCamera
												local alive = workspace.Alive
												if not alive then
													return false
												end
												local viewportSize = currentCamera.ViewportSize
												local vector2 = Vector2.new(viewportSize.X / v85[149], viewportSize.Y / v85[149])
												local huge = math.huge
												local tbl32 = nil

												for _, v92 in alive:GetChildren() do
													if v92 ~= localPlayer.Character and v92.PrimaryPart then
														local v93, v94 = currentCamera:WorldToScreenPoint(v92.PrimaryPart.Position)

														if v94 then
															local magnitude = (Vector2.new(v93.X, v93.Y) - vector2).Magnitude

															if magnitude < huge then
																tbl32 = { Character = v92, Screen_Data = { v93.X, v93.Y } }
																huge = magnitude
															end
														end
													end
												end

												return tbl32
											end

											do
												local v92 = nil

												tbl19.Closest_Aim = function()
													local alive = workspace.Alive
													if localPlayer.Character.Parent ~= alive then
														return false
													end
													local n41 = -math.huge
													local currentCamera = workspace.CurrentCamera
													local v93 = nil

													for _, v94 in alive:GetChildren() do
														if v94 ~= localPlayer.Character and v94.PrimaryPart then
															v94:FindFirstChildOfClass("Humanoid")
															local v95 = currentCamera.CFrame.LookVector:Dot((v94.PrimaryPart.Position - currentCamera.CFrame.Position).Unit)
															local v96, v97 = currentCamera:WorldToViewportPoint(v94.PrimaryPart.Position)

															if v97 and v95 > n41 then
																n41 = v95
																v93 = v94
															end
														end
													end

													v92 = v93
													return v92
												end
											end
										end

										tbl19.Force_Target = function()
											local currentCamera = workspace.CurrentCamera
											local alive = workspace.Alive
											if not alive then
												return false
											end
											local huge = math.huge
											local tbl32 = nil

											for _, v92 in alive:GetChildren() do
												if v92 ~= localPlayer.Character and v92.PrimaryPart then
													local v93, v94 = currentCamera:WorldToScreenPoint(v92.PrimaryPart.Position)

													if v94 then
														local magnitude = (localPlayer.Character.PrimaryPart.Position - v92.PrimaryPart.Position).Magnitude

														if magnitude < huge then
															tbl32 = { Character = v92, Screen_Data = { v93.X, v93.Y } }
															huge = magnitude
														end
													end
												end
											end

											if not tbl32 then
												return false
											end
											return tbl32
										end

										tbl19.FFA = function()
											local currentCamera = workspace.CurrentCamera
											local alive = workspace.Alive
											if not alive then
												return false
											end
											local v92 = tbl19.Get_Ball()
											if not v92 then
												Last_FFA_Target = nil
												return false
											end

											if not v92:FindFirstChild("zoomies") then
												return v85[36]
											end
											local attribute = v92:GetAttribute(v85[30])

											if attribute ~= Last_FFA_Target then
												Last_FFA_Target = nil
											end

											local tbl32 = {}

											for _, v93 in alive:GetChildren() do
												if v93 ~= localPlayer.Character and v93.PrimaryPart then
													local v94, v95 = currentCamera:WorldToScreenPoint(v93.PrimaryPart.Position)

													if v95 and v93.Name ~= attribute and v93 ~= Last_FFA_Target then
														table.insert(tbl32, { Character = v93, Screen_Data = { v94.X, v94.Y } })
													end
												end
											end

											if #tbl32 < 1 then
												return false
											end
											local v93 = tbl32[math.random(1, #tbl32)]
											Last_FFA_Target = v93.Character.Name
											return v93
										end

										tbl19.select_target_by_mouse = function()
											local tbl32 = {}

											for _, v92 in workspace.Alive:GetChildren() do
												if v92.Name ~= localPlayer.Name and v92.PrimaryPart then
													table.insert(tbl32, v92)
												end
											end

											local currentCamera = workspace.CurrentCamera
											local mouseLocation = UserInputService:GetMouseLocation()
											local direction = currentCamera:ScreenPointToRay(mouseLocation.X, mouseLocation.Y).Direction
											local n41 = -math.huge
											local v92 = nil

											for _, v93 in tbl32, nil, nil do
												local v94 = direction:Dot((v93.PrimaryPart.Position - currentCamera.CFrame.Position).Unit)

												if n41 < v94 then
													n41 = v94
													v92 = v93
												end
											end

											return v92
										end

										tbl19.Parry_Data = function(arg)
											if touchEnabled then
												Vector2_Mouse_Location = {
													workspace.CurrentCamera.ViewportSize.X / v85[149],
													workspace.CurrentCamera.ViewportSize.Y / 2,
												}
											elseif n28(v85[178]) < 2092 then
												local mouseLocation = UserInputService:GetMouseLocation()
												Vector2_Mouse_Location = { mouseLocation.X, mouseLocation.Y }
											else
												while true do
												end
											end

											local tbl32 = {}

											for _, v92 in workspace.Alive:GetChildren() do
												tbl32[v92.Name] = workspace.CurrentCamera:WorldToScreenPoint(v92.HumanoidRootPart.Position)
											end

											if arg == "Camera" then
												local tbl33 = {}
												local cframe = CFrame.new(workspace.CurrentCamera.CFrame.Position, workspace.CurrentCamera.CFrame.Position + workspace.CurrentCamera.CFrame.LookVector)
												local v92 = Vector2_Mouse_Location
												tbl33[1] = 0
												tbl33[2] = cframe
												tbl33[3] = tbl32
												tbl33[4] = v92
												return tbl33
											end

											if arg == "Random" then
												local tbl33 = {}
												local cframe = CFrame.new(workspace.CurrentCamera.CFrame.Position, Vector3.new(math.random(-v85[37], 3000), math.random(-3000, 3000), math.random(-v85[37], v85[37])))
												local v92 = Vector2_Mouse_Location
												tbl33[1] = 0
												tbl33[2] = cframe
												tbl33[3] = tbl32
												tbl33[4] = v92
												return tbl33
											end

											if arg == "Backwards" then
												local n41 = -workspace.CurrentCamera.CFrame.LookVector * 10000
												local tbl33 = {}
												local cframe = CFrame.new(workspace.CurrentCamera.CFrame.Position, workspace.CurrentCamera.CFrame.Position + Vector3.new(n41.X, 100, n41.Z))
												local v92 = Vector2_Mouse_Location
												tbl33[1] = 0
												tbl33[2] = cframe
												tbl33[3] = tbl32
												tbl33[4] = v92
												return tbl33
											end

											if arg == "High" then
												local tbl33 = {}
												local cframe = CFrame.new(workspace.CurrentCamera.CFrame.Position, workspace.CurrentCamera.CFrame.Position + Vector3.new(0, 10000, v85[25]))
												local v92 = Vector2_Mouse_Location
												tbl33[1] = 0
												tbl33[2] = cframe
												tbl33[3] = tbl32
												tbl33[4] = v92
												return tbl33
											end

											if arg == "Dot" then
												local v92 = tbl19.Get_Crosshair_Target()

												if v92 then
													local screenData = v92.Screen_Data

													return {
														v85[25],
														CFrame.new(localPlayer.Character.PrimaryPart.Position, v92.Character.PrimaryPart.Position + Vector3.new(0, 1.75, 0)),
														tbl32,
														screenData,
													}
												end

												local tbl33 = {}
												local v93 = v85[25]
												local cframe = CFrame.new(workspace.CurrentCamera.CFrame.Position, workspace.CurrentCamera.CFrame.Position + workspace.CurrentCamera.CFrame.LookVector)
												local v94 = Vector2_Mouse_Location
												tbl33[1] = v93
												tbl33[2] = cframe
												tbl33[3] = tbl32
												tbl33[4] = v94
												return tbl33
											end

											if arg == "Dot Pointer" then
												local currentCamera = workspace.CurrentCamera
												local v92 = tbl19.select_target_by_mouse()
												local position = v92 and v92.PrimaryPart and v92.PrimaryPart.Position or localPlayer.Character.PrimaryPart.Position + currentCamera.CFrame.LookVector * 1000
												local v93 = Vector2_Mouse_Location

												return {
													v85[25],
													CFrame.lookAt(localPlayer.Character.PrimaryPart.Position, position + Vector3.new(0, v85[8], 0)),
													tbl32,
													v93,
												}
											end

											if arg == v85[200] then
												local v92 = tbl19.Force_Target()

												if v92 then
													local screenData = v92.Screen_Data

													return {
														0,
														CFrame.new(localPlayer.Character.PrimaryPart.Position, v92.Character.PrimaryPart.Position),
														tbl32,
														screenData,
													}
												end

												local tbl33 = {}
												local cframe = CFrame.new(workspace.CurrentCamera.CFrame.Position, workspace.CurrentCamera.CFrame.Position + workspace.CurrentCamera.CFrame.LookVector)
												local v93 = Vector2_Mouse_Location
												tbl33[1] = 0
												tbl33[2] = cframe
												tbl33[3] = tbl32
												tbl33[4] = v93
												return tbl33
											end

											if arg == "FFA" then
												local v92 = tbl19.FFA()

												if v92 then
													local screenData = v92.Screen_Data

													return {
														0,
														CFrame.new(localPlayer.Character.PrimaryPart.Position, v92.Character.PrimaryPart.Position),
														tbl32,
														screenData,
													}
												end

												local tbl33 = {}
												local cframe = CFrame.new(workspace.CurrentCamera.CFrame.Position, workspace.CurrentCamera.CFrame.Position + workspace.CurrentCamera.CFrame.LookVector)
												local v93 = Vector2_Mouse_Location
												tbl33[1] = 0
												tbl33[2] = cframe
												tbl33[3] = tbl32
												tbl33[4] = v93
												return tbl33
											end

											return arg
										end

										do
											local v92 = require(ReplicatedStorage.Packages.Signal).new()
											v92:Connect(require(ReplicatedStorage.Controllers["SwordsController \12"].PRY))

											tbl19.Parry = function(arg)
												if tbl17.Flags.Parry_Options == "Hardware" then
													mouse1click()
													return
												end

												if tbl17.Flags.Parry_Options == v85[10] then
													instance:SendKeyEvent(true, text, false, game)
													instance:SendKeyEvent(false, text, false, game)
													return
												end

												local v93 = tbl19.Parry_Data(arg)
												if not tbl31.Parry_Remote then
													v92:Fire(0, v93[v85[149]], v93[3], v93[4], false)
													return
												end
												tbl31.Token = tbl19.Generate_Token()
												tbl31.Parry_Remote:FireServer(tbl31.Parry_Hash, tbl31.Parry_Key, tbl31.Token, v93[v85[86]], v93[2], v93[3], v93[4], false)
											end
										end
									end
								end

								do
									do
										local v92 = nil
										local v93 = nil
										local v94 = nil
										local v95 = nil
										local n41 = 0
										flag18 = v85[36]

										tbl19.Parry_Animation = function()
											local attribute = localPlayer:GetAttribute("CurrentlyEquippedSword")
											if not attribute then
												return
											end
											local grabParry = ReplicatedStorage.Shared.SwordAPI.Collection.Default:FindFirstChild("GrabParry")
											if not grabParry then
												return
											end
											local v96 = ReplicatedStorage.Shared.ReplicatedInstances.Swords.GetSword:Invoke(attribute)
											if not v96 or not v96.AnimationType then
												return
											end

											for _, v97 in ReplicatedStorage.Shared.SwordAPI.Collection:GetChildren() do
												if v97.Name == v96.AnimationType then
													local grab = v97:FindFirstChild(v85[32]) or v97:FindFirstChild("Grab")
													if grab then
														grabParry = grab
														break
													end
												end
											end

											if not grabParry then
												return
											end
											local character = localPlayer.Character
											character = character and character:FindFirstChildOfClass("Humanoid")
											local animator = character and character:FindFirstChildOfClass("Animator")
											if not animator then
												return
											end

											if v92 and (v93 ~= grabParry or v94 ~= animator or v95 ~= attribute) then
												v92:Stop(v92:GetAttribute(v85[65]))
												v92:Destroy()
												v92 = nil
												v93 = nil
												v94 = nil
												v95 = nil
											end

											if not v92 then
												v92 = animator:LoadAnimation(grabParry)
												v93 = grabParry
												v94 = animator
												v95 = attribute
											end

											if v92.IsPlaying then
												return
											end

											for _, v97 in animator:GetPlayingAnimationTracks() do
												if v97 ~= v92 then
													if v97.Name == v85[21] or v97.Name == "Success" then
														v97:Stop(v97:GetAttribute("StopFadeTime"))
													end
												end
											end

											v92:Play(v92:GetAttribute("PlayFadeTime"), v92:GetAttribute("PlayWeight"), v92:GetAttribute("PlaySpeed") or 1)
										end

										tbl19.Play_Animation = function()
											if os.clock() - n41 >= 1 or flag18 then
												n41 = os.clock()
												flag18 = false
												tbl19.Parry_Animation()
											end
										end
									end

									do
										local v92 = nil

										tbl19.Closest_Player = function()
											local alive = workspace.Alive
											if (localPlayer.Character or localPlayer.CharacterAdded:Wait()).Parent ~= alive then
												return false
											end
											local huge = math.huge
											local v93 = nil

											for _, v94 in alive:GetChildren() do
												if v94 and v94.Name ~= localPlayer.Name then
													local v95 = localPlayer:DistanceFromCharacter(v94.HumanoidRootPart.Position)

													if v95 < huge then
														huge = v95
														v93 = v94
													end
												end
											end

											v92 = v93
											return v92
										end

										tbl21 = {
											Curving = tick(),
											Lerp_Radians = 0,
											Last_Warping = tick(),
										}

										tbl19.Linear_Interpolation = function(arg, arg2, arg3)
											return arg + (arg2 - arg) * arg3
										end

										local function fn33()
											local unit = workspace.CurrentCamera.CFrame.LookVector.Unit
											local primaryPart = localPlayer.Character.PrimaryPart
											local huge = math.huge
											local v93 = nil

											for _, v94 in workspace.Alive:GetChildren() do
												if v94:FindFirstChild("HumanoidRootPart") and v94 ~= localPlayer.Character then
													local magnitude = (v94.HumanoidRootPart.Position - primaryPart.Position).Magnitude

													if magnitude < huge then
														huge = magnitude
														v93 = v94
													end
												end
											end

											if not v93 then
												return false, false
											end
											local v94 = unit:Dot((v93.HumanoidRootPart.Position - primaryPart.Position).Unit)
											return v94 >= -0.0112, v94 < -0.7
										end

										n32 = 0
										n33 = 0
										n34 = 5

										tbl19.Is_Curved = function()
											tbl19.Get_Balls()
											local v93 = table.pack(R_1())

											if v93[1] then
												local v94 = v93[3]

												if not v94 then
													n32 = 0
													n33 = 0
													n34 = v85[25]
													return
												end

												local zoomies = v94:FindFirstChild("zoomies")
												if not zoomies then
													return
												end
												local vectorVelocity = zoomies.VectorVelocity
												local position

												if v94 == v87 and v86 then
													position = v86
												else
													position = v94.Position
												end

												local unit = vectorVelocity.Unit
												local unit2 = (localPlayer.Character.PrimaryPart.Position - position).Unit
												local v95 = unit2:Dot(unit)
												local magnitude = vectorVelocity.Magnitude
												local n41 = math.min(magnitude / 100, 40)
												local n42 = math.clamp(v95 - unit2:Dot((unit - vectorVelocity).Unit), -1, 1)
												local magnitude2 = (localPlayer.Character.PrimaryPart.Position - position).Magnitude
												local v96 = v85[196]
												local value = game:GetService("Stats").Network.ServerStatsItem[v96]:GetValue()
												local n43 = v85[62] - value / 1000
												local n44 = 20 * math.max(v95, v85[25])
												local flag25 = magnitude > 100
												local n45 = magnitude2 / magnitude - value / v85[59]
												local n46 = 15 - math.min(magnitude2 / 1000, 15) + n44 + n41
												v94:GetAttribute("target")
												local singularityCape = localPlayer.Character.PrimaryPart:FindFirstChild("SingularityCape")
												local n47 = math.clamp(v95, -1, v85[86])
												local v97 = math.rad(math.asin(n47))
												local v98 = unit2:Dot(unit)
												local now3 = os.clock()

												if not singularityCape and math.sign(v98) ~= math.sign(n32) then
													if now3 - n34 < 0.2 then
														n33 += 1
													else
														n33 = 0
													end

													n34 = now3
												end

												n32 = v98
												tbl21.Lerp_Radians = tbl19.Linear_Interpolation(tbl21.Lerp_Radians, v97, v85[128])

												if flag25 and n45 > value / 10 then
													n46 = math.max(n46 - 15, 15)
												end

												if n33 >= 5 then
													return v85[36]
												end

												if v95 < 0 then
													return true
												end

												if magnitude2 < n46 then
													return false
												end

												if n42 < n43 then
													return true
												end

												if tbl21.Lerp_Radians < 0.018 then
													tbl21.Last_Warping = tick()
												end

												local lastWarping = tbl21.Last_Warping
												if tick() - lastWarping < n45 / 1.5 then
													return true
												end
												local flag26 = magnitude2 > n46

												if flag26 then
													local curving = tbl21.Curving
													flag26 = tick() - curving < n45 / v85[171]
												end

												if flag26 then
													return true
												end
												return v95 < n43
											end
										end

										tbl19.Encrypted_Clone = function()
											for _, v93 in workspace.Alive:GetChildren() do
												if v93 and v93.Name and v93.Name:find("ENCRYPTED CLONE", 1, true) then
													return v93
												end
											end
										end

										n35 = 0
										n36 = 5
										n37 = 0
										flag19 = v85[36]
										flag20 = v85[36]

										tbl19.Is_Curved2 = function()
											if game.PlaceId == 15264892126 then
												return false
											end
											local alive = workspace.Alive
											if game.PlaceId == 13772394625 and #alive:GetChildren() > 2 then
												return false
											end

											if not workspace.ShowdownActive then
												return false
											end
											tbl19.Get_Balls()
											local v93 = table.pack(R_1())

											if v93[1] then
												local v94 = v93[3]
												local zoomies = v94:FindFirstChild("zoomies")
												if not zoomies then
													return v85[36]
												end

												if v94 == v87 and v86 then
													Ball_Position = v86
												else
													Ball_Position = v94.Position
												end

												local vectorVelocity = zoomies.VectorVelocity
												local v95 = (localPlayer.Character.HumanoidRootPart.Position - Ball_Position).Unit:Dot(vectorVelocity.Unit)
												local now3 = os.clock()

												if math.sign(v95) ~= math.sign(n37) then
													if now3 - n36 < 0.2 then
														n35 += 1
													else
														n35 = 0
													end

													n36 = now3
												end

												n37 = v95
												local flag25 = n35 >= 6
												local magnitude = (localPlayer.Character.PrimaryPart.Position - Ball_Position).Magnitude
												local magnitude2 = (localPlayer.Character.PrimaryPart.Position - Ball_Position + vectorVelocity * 0.15).Magnitude
												local unit = vectorVelocity.Unit
												local primaryPart = localPlayer.Character.PrimaryPart
												local lookVector = workspace.CurrentCamera.CFrame.LookVector
												local flag26 = Vector3.new(lookVector.X, 0, lookVector.Z).Unit:Dot((Ball_Position - primaryPart.Position).Unit) >= 0
												flag26 = flag26 and (localPlayer.Character.PrimaryPart.Position - Ball_Position).Unit:Dot(unit) >= 0
												local attribute = v94:GetAttribute("target")
												local attribute2 = v94:GetAttribute("from")
												local name = tbl19.Encrypted_Clone()
												name = name and name.Name

												if attribute2 == localPlayer.Name and flag19 then
													flag20 = v85[81]
												end

												if attribute2 ~= localPlayer.Name and attribute2 ~= name then
													flag20 = v85[36]
												end

												if not flag19 and attribute2 then
													if attribute2 ~= localPlayer.Name and attribute2 ~= name then
														flag19 = true
														FirstHit = attribute2
														flag20 = false
													end
												end

												if flag19 and FirstHit ~= nil and FirstHit ~= localPlayer.Name and FirstHit ~= name and attribute2 == name and attribute == localPlayer.Name and flag20 == false and game.PlaceId == 15234596844 and #alive:GetChildren() > 2 then
													return v85[36]
												end
												fn33()
												tbl19.Is_Curved()
												if flag26 then
													return false
												end
												local flag27 = game.PlaceId == 15234596844

												if flag27 then
													local v96 = v85[62]
													flag27 = getgenv().Time_View > v96
												end

												if flag27 and magnitude2 > magnitude + 15.5 and not flag25 then
													return true
												end

												if #alive:GetChildren() == 2 and getgenv().Time_View > 0.5 and magnitude2 > magnitude + 15.5 and not flag25 then
													return v85[81]
												end
												return false
											end
										end

										tbl19.Get_Entity_Properties = function()
											tbl19.Closest_Player()
											if not v92 then
												return false
											end

											return {
												Velocity = v92.HumanoidRootPart.AssemblyLinearVelocity,
												Direction = (localPlayer.Character.HumanoidRootPart.Position - v92.HumanoidRootPart.Position).Unit,
												Distance = (localPlayer.Character.HumanoidRootPart.Position - v92.HumanoidRootPart.Position).Magnitude,
											}
										end
									end

									do
										local service2

										do
											tbl19.Get_Ball_Properties = function(arg, arg2)
												if not arg2 then
													return v85[36]
												end
												local v92 = arg2:FindFirstChild(v85[179])
												if not v92 then
													return false
												end
												local vectorVelocity = v92.VectorVelocity
												local position

												if arg2 == v87 and v86 then
													position = v86
												else
													position = arg2.Position
												end

												local unit = (localPlayer.Character.HumanoidRootPart.Position - position).Unit

												return {
													Speed = vectorVelocity.Magnitude,
													Velocity = vectorVelocity,
													Direction = unit,
													Distance = (localPlayer.Character.HumanoidRootPart.Position - position).Magnitude,
													Dot = unit:Dot(vectorVelocity.Unit),
												}
											end

											tbl19.Spam_Service = function(arg)
												local ball = arg.Ball
												if not ball then
													return v85[36]
												end
												local v92 = ball:FindFirstChild(v85[179])
												if not v92 then
													return v85[36]
												end
												local vectorVelocity = v92.VectorVelocity
												local magnitude = vectorVelocity.Magnitude
												local position

												if ball == v87 and v86 then
													position = v86
													if not flag3 then
														return
													end
												else
													position = ball.Position
												end

												local v93 = (localPlayer.Character.HumanoidRootPart.Position - position).Unit:Dot(vectorVelocity.Unit)
												local n41 = arg.Ping + math.min(magnitude / 5.8, v85[172])
												if arg.Entity_Properties.Distance > n41 or arg.Ball_Properties.Distance > n41 then
													return 0
												end
												local n42 = 5 - math.min(magnitude / v85[27], 5)
												return n41 - math.clamp(v93, -v85[86], 0) * n42
											end

											if not isfolder("Aries") then
												makefolder("Aries")
											end

											service2 = game:GetService(v85[6])

											do
												local function fn33()
													if not isfile("Aries/fav_swords.json") then
														writefile("Aries/fav_swords.json", service2:JSONEncode({ FavoriteSword = {}, FavoriteExplosion = {}, LastEquipped = nil }))
													end

													return service2:JSONDecode(readfile("Aries/fav_swords.json"))
												end

												fn30 = function(arg, arg2, arg3)
													writefile("Aries/fav_swords.json", service2:JSONEncode({ FavoriteSword = arg, FavoriteExplosion = arg2, LastEquipped = arg3 }))
												end

												local v92 = fn33()
												favoriteSword = v92.FavoriteSword or {}
												favoriteExplosion = v92.FavoriteExplosion or {}
												lastEquipped = v92.LastEquipped
											end
										end

										tbl22 = {}
										v88 = nil
										tbl23 = {}
										getgenv().FinisherEquipped = getgenv().FinisherEquipped or {}
										getgenv().Selected_Finisher = getgenv().Selected_Finisher or v85[36]

										fn31 = function(arg)
											writefile("Aries/last_explosion.json", service2:JSONEncode({ last = arg }))
										end

										do
											local function fn33()
												if isfile("Aries/last_explosion.json") then
													return service2:JSONDecode(readfile("Aries/last_explosion.json")).last
												end
											end

											str8 = fn33() or ""
										end
									end
								end

								do
									local service2, tbl31

									do
										v89 = localPlayer:WaitForChild(v85[103])
										TitleData = require(ReplicatedStorage.Shared.TitleData)
										titleList = v89.Settings.Frame.Frame:WaitForChild("SettingTitles"):WaitForChild("TitleList")
										tbl24 = {}
										service = game:GetService(v85[174])

										fn32 = function(arg)
											return string.format("#%02X%02X%02X", arg.R * v85[67], arg.G * 255, arg.B * 255)
										end

										tbl25 = nil
										v90 = nil
										tbl26 = {}
										tbl27 = {}
										tbl28 = {}
										v91 = nil

										for _, v92 in getgc(true) do
											local v93 = v85[175]

											if type(v92) == v93 then
												local value = rawget(v92, "PlayExplosion")
												local value2 = rawget(v92, "PlayExplosionFromInstance")
												local value3 = rawget(v92, v85[167])
												if type(value) == "function" and type(value2) == "function" and type(value3) == "function" then
													v91 = v92
													break
												end
											end
										end

										tbl19.Play_Emote_Animation = function(current)
											local v92 = tbl20.storage[current]
											if not v92 then
												return false
											end
											local Trove = require(ReplicatedStorage.Packages.Trove)
											local EmotesShared = require(ReplicatedStorage.Shared.EmotesShared)
											tbl20.storage.Trove = Trove.new()
											EmotesShared:Play(localPlayer.Character, tbl20.storage.Trove, v92.Name, true, workspace:GetServerTimeNow())
											tbl20.storage.current = current
										end

										tbl19.Play_Wheel_Emote_Animations = function(arg)
											local v92 = tbl20.storage[arg]
											if not v92 then
												return false
											end
											local Trove = require(ReplicatedStorage.Packages.Trove)
											local EmotesShared = require(ReplicatedStorage.Shared.EmotesShared)
											local character = localPlayer.Character
											if not character then
												return
											end
											local humanoid = character:FindFirstChildWhichIsA("Humanoid")
											if not humanoid then
												return
											end

											for _, v93 in humanoid.Animator:GetPlayingAnimationTracks() do
												local animation = v93.Animation

												if animation and animation.Parent == ReplicatedStorage.Misc.Emotes then
													v93:Stop()
												end
											end

											if tbl20.storage.Trove then
												tbl20.storage.Trove:Destroy()
												tbl20.storage.Trove = nil
											end

											tbl20.storage.Trove = Trove.new()

											if tbl18["Emote Wheel Heartbeat"] then
												tbl18["Emote Wheel Heartbeat"]:Disconnect()
												tbl18[v85[158]] = nil
											end

											if tbl18["Emote Wheel Jumping"] then
												tbl18["Emote Wheel Jumping"]:Disconnect()
												tbl18[v85[98]] = nil
											end

											if tbl18["Emote Connection Death"] then
												tbl18["Emote Connection Death"]:Disconnect()
												tbl18["Emote Connection Death"] = nil
											end

											if tbl18["Emote Character Added"] then
												tbl18["Emote Character Added"]:Disconnect()
												tbl18[v85[88]] = nil
											end

											local function fn33()
												character = localPlayer.Character
												if not character then
													return
												end
												humanoid = character:FindFirstChildWhichIsA("Humanoid")
												if not humanoid then
													return
												end

												for _, v93 in humanoid.Animator:GetPlayingAnimationTracks() do
													local animation = v93.Animation

													if animation and animation.Parent == ReplicatedStorage.Misc.Emotes then
														v93:Stop()
													end
												end

												if tbl20.storage.Trove then
													tbl20.storage.Trove:Destroy()
													tbl20.storage.Trove = nil
												end
											end

											local function fn34(arg2)
												character = arg2
												humanoid = character:WaitForChild(v85[159])

												if tbl18["Emote Wheel Jumping"] then
													tbl18[v85[98]]:Disconnect()
													tbl18["Emote Wheel Jumping"] = nil
												end

												if tbl18[v85[123]] then
													tbl18["Emote Connection Death"]:Disconnect()
													tbl18["Emote Connection Death"] = nil
												end

												tbl18[v85[98]] = humanoid.Jumping:Connect(function()
													fn33()
												end)

												tbl18["Emote Connection Death"] = humanoid.Died:Connect(function()
													if n26(3705) <= 13483 then
														fn33()
													else
														while v85[81] do
														end
													end
												end)
											end

											tbl18["Emote Wheel Heartbeat"] = RunService.Heartbeat:Connect(function()
												character = localPlayer.Character
												if not character then
													return
												end
												humanoid = character:FindFirstChildWhichIsA("Humanoid")
												if not humanoid then
													return
												end

												if humanoid.MoveDirection.Magnitude > 0 then
													fn33()
												end
											end)

											tbl18["Emote Character Added"] = localPlayer.CharacterAdded:Connect(function(character2)
												if tbl20.storage.Trove then
													tbl20.storage.Trove:Destroy()
													tbl20.storage.Trove = nil
												end

												fn34(character2)
											end)

											fn34(character)
											EmotesShared:Play(character, tbl20.storage.Trove, v92.Name, v85[81], workspace:GetServerTimeNow())
										end

										tbl29 = {
											"Calming Deflection",
											v85[144],
											"Rapture",
											"Aerodynamic Slash",
											"Forcefield",
											"Infinity",
											"Fracture",
											v85[134],
											v85[145],
										}

										tbl30 = {
											"BallEmit",
											"Upgrade",
											"Arch2",
											"MaxHook",
											"Wave",
											"Totem",
											"TotemRange",
											"InfinityFX",
											"maxTransmission",
											"transmissionpart",
											v85[70],
											"Barrier",
											"GUARDIAN_DRAGON",
											"DRAGON_POSITIONER",
											"SpiritDeflect",
											"Vanity",
											v85[15],
											v85[176],
											"MaxBlink",
										}

										flag21 = false
										now2 = nil
										n38 = 0
										flag22 = false
										n39 = v85[25]
										n40 = 1.1
										service2 = game:GetService(v85[135])

										do
											local HttpService2 = game:GetService("HttpService")
											flag23 = UserInputService.TouchEnabled and not UserInputService.MouseEnabled

											tbl31 = {
												CurrentTabs = { left = nil, right = nil },
												Tabs = {},
												ActiveKeybindToggle = nil,
												WaitingForKey = false,
												Widgets = {},
											}

											if not isfolder("Aries") then
												makefolder("Aries")
											end

											if not isfolder("Aries/Presets") then
												makefolder("Aries/Presets")
											end

											tbl17.save_flags = function()
												local json = HttpService2:JSONEncode(tbl17.Flags)
												writefile("Aries/" .. game.GameId .. ".lua", json)
											end

											tbl17.load_flags = function()
												if not isfile("Aries/" .. game.GameId .. v85[130]) then
													tbl17.save_flags()
													return
												end
												local v92 = readfile("Aries/" .. game.GameId .. ".lua")
												if not v92 then
													tbl17.save_flags()
													return
												end
												tbl17.Flags = HttpService2:JSONDecode(v92)
											end

											tbl17.load_flags()

											tbl17.save_preset = function(arg, arg2, arg3)
												local json = HttpService2:JSONEncode(arg3)
												writefile("Aries/Presets/" .. arg2 .. v85[190], json)
											end

											tbl17.load_preset = function(arg, arg2)
												local str10 = "Aries/Presets/" .. arg2 .. ".json"
												if not isfile(str10) then
													return nil
												end
												return (HttpService2:JSONDecode(readfile(str10)))
											end
										end
									end

									tbl17.list_presets = function()
										local tbl32 = {}

										for _, v92 in listfiles("Aries/Presets"), nil, nil do
											local match = v92:match("Aries[/\\]Presets[/\\](.+)%.json")

											if match then
												table.insert(tbl32, match)
											end
										end

										return tbl32
									end

									tbl17.validate = function(arg, arg2, arg3)
										local tbl32 = arg3 or {}

										for k, v92 in arg2, nil, nil do
											if tbl32[k] == nil then
												tbl32[k] = v92
											end
										end

										return tbl32
									end

									do
										local ok, result = pcall(function()
											if not (n25 > v85[55]) then
												return loadstring(game:HttpGet("https://raw.githubusercontent.com/mstudio45/lucide-roblox-direct/refs/heads/main/source.lua"))()
											end

											while true do
											end
										end)

										local function fn33(arg, arg2)
											local v92 = v85[143]
											local flag25 = typeof(arg) == v92

											if flag25 then
												flag25 = arg:match("^content://") or arg:match("^rbxasset://%x+/") or arg2 == true and arg:match("^rbxassetid://")
											end

											return flag25
										end

										IsValidCustomIcon = function(arg)
											local v92 = v85[143]
											return typeof(arg) == v92 and (arg:match("^rbxasset://textures/") or arg:match("roblox%.com/asset/%?id=") or arg:match("rbxthumb://type="))
										end

										tbl17.GetIcon = function(arg, arg2)
											if not ok or not result then
												return
											end
											local ok2, result2 = pcall(result.GetAsset, arg2)
											if not ok2 then
												return
											end
											return result2
										end

										tbl17.GetCustomIcon = function(arg, arg2)
											if not arg2 then
												return nil
											end

											if tonumber(arg2) then
												arg2 = string.format("rbxassetid://%s", tostring(arg2))
											end

											if fn33(arg2, v85[81]) then
												return { Url = arg2, ImageRectOffset = Vector2.zero, ImageRectSize = Vector2.zero }
											end

											if IsValidCustomIcon(arg2) then
												return { Url = arg2, ImageRectOffset = Vector2.zero, ImageRectSize = Vector2.zero, Custom = v85[81] }
											end
											local icon = tbl17:GetIcon(arg2)
											if icon then
												return icon
											end
											return nil
										end
									end

									if flag23 then
										tbl17["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"))
										tbl17["1"].Name = "Mobile_Gui"
										tbl17["1"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
										tbl17[v85[120]] = Instance.new("TextButton", tbl17["1"])
										tbl17["2"].BorderSizePixel = 0
										tbl17["2"].Modal = false
										tbl17["2"].AutoButtonColor = false
										tbl17["2"][v85[126]] = 14
										tbl17["2"][v85[141]] = Color3.fromRGB(v85[25], 0, 0)
										tbl17["2"].BackgroundColor3 = Color3.fromRGB(28, 29, 34)
										tbl17["2"][v85[69]] = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
										tbl17["2"][v85[142]] = UDim2.new(0, 122, 0, 38)
										tbl17["2"].Name = "Mobile"
										tbl17["2"].BorderColor3 = Color3.fromRGB(0, v85[25], v85[25])
										tbl17["2"].Text = ""
										tbl17[v85[120]][v85[189]] = UDim2.new(v85[108], -4, 0.918, -5)
										tbl17.Dragging = v85[81]
										tbl17["3"] = Instance.new(v85[127], tbl17["2"])
										tbl17["3"][v85[41]] = UDim.new(0, 13)
										tbl17["4"] = Instance.new(v85[131], tbl17["2"])
										tbl17["4"].ZIndex = v85[25]
										tbl17[v85[199]].BorderSizePixel = 0
										tbl17["4"].BackgroundColor3 = Color3.fromRGB(255, 255, v85[67])
										tbl17["4"].ImageTransparency = 0.2
										tbl17[v85[199]][v85[31]] = Vector2.new(0.5, 0.5)
										tbl17["4"].Image = "rbxassetid://17183270335"
										tbl17["4"][v85[142]] = UDim2.new(0, v85[29], 0, 58)
										tbl17["4"].BorderColor3 = Color3.fromRGB(0, 0, v85[25])
										tbl17[v85[199]].BackgroundTransparency = v85[86]
										tbl17["4"].Name = "Shadow"
										tbl17["4"].Position = UDim2.new(0.5, v85[25], 0.5, 0)
										tbl17[v85[152]] = Instance.new("ImageLabel", tbl17[v85[120]])
										tbl17["5"].BorderSizePixel = 0
										tbl17["5"][v85[111]] = Color3.fromRGB(255, v85[67], 255)
										tbl17["5"].AnchorPoint = Vector2.new(v85[62], 0.5)
										tbl17[v85[152]][v85[19]] = "rbxassetid://10709810463"
										tbl17["5"].Size = UDim2.new(0, 15, 0, v85[76])
										tbl17["5"][v85[50]] = Color3.fromRGB(v85[25], 0, 0)
										tbl17["5"][v85[197]] = 1
										tbl17[v85[152]].Name = "Icon"
										tbl17["5"][v85[189]] = UDim2.new(0.5, 0, v85[62], 0)

										getgenv().MobileDrag = getgenv().MobileDrag or {
											Dragging = false,
											DragStart = nil,
											StartPosition = nil,
											DragInput = nil,
										}

										do
											local mobileDrag = getgenv().MobileDrag
											local UserInputService2 = game:GetService("UserInputService")

											tbl17["2"].InputBegan:Connect(function(input)
												if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
													mobileDrag.Dragging = true
													mobileDrag.DragStart = input.Position
													mobileDrag.StartPosition = tbl17["2"].Position

													input.Changed:Connect(function()
														if input.UserInputState == Enum.UserInputState.End then
															mobileDrag.Dragging = false
														end
													end)
												end
											end)

											tbl17["2"].InputChanged:Connect(function(input)
												if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
													mobileDrag.DragInput = input
												end
											end)

											UserInputService2.InputChanged:Connect(function(input)
												if input == mobileDrag.DragInput and mobileDrag.Dragging then
													local n41 = input.Position - mobileDrag.DragStart
													tbl17["2"].Position = UDim2.new(mobileDrag.StartPosition.X.Scale, mobileDrag.StartPosition.X.Offset + n41.X, mobileDrag.StartPosition.Y.Scale, mobileDrag.StartPosition.Y.Offset + n41.Y)
												end
											end)
										end

										tbl17["2"].InputBegan:Connect(function(input, gameProcessed)
											if gameProcessed then
												return
											end

											if input.UserInputType == Enum.UserInputType.MouseButton1 then
												if tbl31["1"].Enabled then
													local tbl32 = { Scale = v85[25] }
													local tween = service2:Create(tbl31["4"], TweenInfo.new(0.65, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), tbl32)
													tween:Play()
													tween.Completed:Wait()
													tbl31["1"].Enabled = v85[36]
												else
													tbl31[v85[156]].Enabled = true
													tbl31[v85[199]].Scale = 0
													service2:Create(tbl31["4"], TweenInfo.new(v85[12], Enum.EasingStyle.Back, Enum.EasingDirection.InOut), { Scale = 0.8 }):Play()
												end
											end
										end)

										tbl17["2"].TouchTap:Connect(function()
											if tbl31["1"].Enabled then
												local tbl32 = { Scale = v85[25] }
												local tween = service2:Create(tbl31["4"], TweenInfo.new(0.65, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), tbl32)
												tween:Play()
												tween.Completed:Wait()
												tbl31["1"].Enabled = false
											else
												tbl31["1"].Enabled = v85[81]
												tbl31["4"].Scale = v85[25]
												service2:Create(tbl31["4"], TweenInfo.new(0.65, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), { Scale = 0.8 }):Play()
											end
										end)
									end

									byteUi = game:GetService(v85[119]):FindFirstChild("Byte_UI")

									tbl17.new = function()
										tbl31["1"] = Instance.new("ScreenGui", localPlayer.PlayerGui)
										tbl31["1"].IgnoreGuiInset = true
										tbl31["1"].ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
										tbl31["1"].Name = "Byte_UI"
										tbl31["1"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
										tbl31["1"].ResetOnSpawn = v85[36]
										tbl31["2"] = Instance.new("Frame", tbl31[v85[156]])
										tbl31["2"].BorderSizePixel = 0
										tbl31["2"].BackgroundColor3 = Color3.fromRGB(10, 11, 16)
										tbl31["2"].AnchorPoint = Vector2.new(0.5, 0.5)
										tbl31[v85[120]].Size = UDim2.new(0, 718, 0, 440)
										tbl31[v85[120]].Position = UDim2.new(0.5, v85[25], 0.5, v85[25])
										tbl31["2"][v85[104]] = "Main_Menu_Window"
										tbl31["2"]:SetAttribute("fadeOriginal_BackgroundTransparency", 0)
										tbl31[v85[139]] = Instance.new("UICorner", tbl31[v85[120]])
										tbl31["3"].CornerRadius = UDim.new(v85[25], 14)

										if flag23 then
											tbl31["4"] = Instance.new("UIScale", tbl31["2"])
											tbl31["4"].Scale = 0.8
											tbl31._targetScale = v85[128]
										else
											tbl31["4"] = Instance.new("UIScale", tbl31[v85[120]])
											tbl31["4"].Scale = v85[86]
											tbl31._targetScale = v85[86]
										end

										tbl31["5"] = Instance.new("Frame", tbl31[v85[120]])
										tbl31[v85[152]].BorderSizePixel = 0
										tbl31[v85[152]].BackgroundColor3 = Color3.fromRGB(14, v85[76], 20)
										tbl31["5"][v85[142]] = UDim2.new(0, 180, 1, -16)
										tbl31["5"].Position = UDim2.new(-0.03755, 0, v85[96], 0)
										tbl31["5"].Name = "left_panel"
										tbl31[v85[152]].BackgroundTransparency = 0.04
										tbl31[v85[152]]:SetAttribute("fadeOriginal_BackgroundTransparency", 0.04)
										tbl31.TabContainer = Instance.new("Frame", tbl31["5"])
										tbl31.TabContainer.BackgroundTransparency = 1
										tbl31[v85[87]].Size = UDim2.new(v85[86], 0, v85[25], v85[68])
										tbl31.TabContainer.Position = UDim2.new(0, 0, v85[25], v85[35])
										tbl31[v85[87]].Name = "TabContainer"
										local uiListLayout = Instance.new("UIListLayout", tbl31.TabContainer)
										uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
										uiListLayout.Padding = UDim.new(0, 6)
										uiListLayout.FillDirection = Enum.FillDirection.Vertical
										tbl31[v85[169]] = Instance.new("UICorner", tbl31["5"])
										tbl31[v85[169]].CornerRadius = UDim.new(0, 14)
										tbl31["7"] = Instance.new("UIShadow", tbl31[v85[152]])
										tbl31["7"]:SetAttribute(v85[116], 0.55)
										tbl31[v85[146]] = Instance.new("ImageLabel", tbl31[v85[152]])
										tbl31["8"][v85[66]] = 0
										tbl31["8"][v85[110]] = Enum.ScaleType.Fit
										tbl31[v85[146]][v85[19]] = "rbxassetid://84194878517331"
										tbl31["8"].Size = UDim2.new(0, 144, 0, 36)
										tbl31["8"].BackgroundTransparency = v85[86]
										tbl31["8"].Name = "IMG_Logo"
										tbl31["8"].Position = UDim2.new(v85[25], 18, 0, v85[122])
										tbl31["8"]:SetAttribute(v85[43], 0)
										tbl31["8"]:SetAttribute("fadeOriginal_BackgroundTransparency", v85[86])
										tbl31[v85[60]] = Instance.new(v85[93], tbl31["5"])
										tbl31["9"].BorderSizePixel = 0
										tbl31["9"].BackgroundColor3 = Color3.fromRGB(21, 21, 26)
										tbl31[v85[60]].Size = UDim2.new(0, 158, 0, v85[192])
										tbl31["9"][v85[189]] = UDim2.new(0, 0, v85[25], 380)
										tbl31[v85[60]].Name = "UserCard"
										tbl31["9"][v85[197]] = 1
										tbl31["9"]:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
										tbl31[v85[181]] = Instance.new("TextLabel", tbl31["9"])
										tbl31.a.TextTruncate = Enum.TextTruncate.AtEnd
										tbl31.a[v85[126]] = 12
										tbl31.a.TextXAlignment = Enum.TextXAlignment.Left
										tbl31.a.FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
										tbl31.a[v85[141]] = Color3.fromRGB(243, 243, v85[73])
										tbl31[v85[181]].BackgroundTransparency = 1
										tbl31.a[v85[142]] = UDim2.new(0, 90, 0, 13)
										tbl31.a.Text = "Byteverserys"
										tbl31.a[v85[104]] = "Name"
										tbl31.a.Position = UDim2.new(v85[25], 57, 0, 0)
										tbl31.a:SetAttribute("fadeOriginal_TextTransparency", v85[25])
										tbl31[v85[181]]:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
										tbl31.b = Instance.new("TextLabel", tbl31[v85[60]])
										tbl31[v85[195]].TextSize = 10
										tbl31.b[v85[102]] = Enum.TextXAlignment.Left
										tbl31.b.FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
										tbl31.b.TextColor3 = Color3.fromRGB(143, v85[56], v85[198])
										tbl31.b.BackgroundTransparency = 1
										tbl31.b.Size = UDim2.new(0, 96, v85[25], 11)
										tbl31.b.Text = "Till:  Lifetime"
										tbl31.b.Name = "Expiry"
										tbl31.b[v85[189]] = UDim2.new(v85[25], 57, 0, 15)
										tbl31.b:SetAttribute("fadeOriginal_TextTransparency", v85[25])
										tbl31[v85[195]]:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
										tbl31.c = Instance.new("ImageLabel", tbl31["9"])
										tbl31.c.BorderSizePixel = 0
										tbl31[v85[20]][v85[111]] = Color3.fromRGB(255, 255, 255)
										tbl31.c[v85[19]] = "rbxthumb://type=AvatarHeadShot&id=7329993111&w=48&h=48"
										tbl31[v85[20]].Size = UDim2.new(v85[25], 32, v85[25], v85[44])
										tbl31.c.BackgroundTransparency = 1
										tbl31.c.Name = "IMG_Avatar"
										tbl31.c[v85[189]] = UDim2.new(0.09494, 0, 0.01989, 0)
										tbl31.c:SetAttribute(v85[43], 0)
										tbl31.c:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
										tbl31.d = Instance.new("UICorner", tbl31.c)
										tbl31.d.CornerRadius = UDim.new(1, v85[25])
										tbl31["1e"] = Instance.new("Frame", tbl31["2"])
										tbl31[v85[105]].BorderSizePixel = 0
										tbl31["1e"].BackgroundColor3 = Color3.fromRGB(27, 27, 34)
										tbl31["1e"].Size = UDim2.new(1, -158, 0, 62)
										tbl31["1e"].Position = UDim2.new(0, v85[113], 0, 0)
										tbl31["1e"].Name = "top_bar_content"
										tbl31[v85[105]][v85[197]] = 1
										tbl31["1e"]:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
										tbl31["1f"] = Instance.new(v85[93], tbl31["1e"])
										tbl31["1f"][v85[66]] = v85[25]
										tbl31["1f"][v85[111]] = Color3.fromRGB(14, 15, 20)
										tbl31["1f"].Size = UDim2.new(v85[25], v85[97], 0, 34)
										tbl31[v85[173]].Position = UDim2.new(v85[25], 8, v85[25], 23)
										tbl31["1f"].Name = "search"
										tbl31["1f"][v85[197]] = v85[38]
										tbl31[v85[173]]:SetAttribute(v85[150], v85[38])
										tbl31[v85[71]] = Instance.new(v85[127], tbl31["1f"])
										tbl31[v85[71]][v85[41]] = UDim.new(0, 10)
										tbl31["21"] = Instance.new(v85[89], tbl31[v85[173]])
										tbl31["21"]:SetAttribute(v85[116], 0.55)
										tbl31["22"] = Instance.new("ImageLabel", tbl31[v85[173]])
										tbl31["22"].BorderSizePixel = 0
										tbl31["22"][v85[110]] = Enum.ScaleType.Fit
										tbl31["22"].ImageTransparency = v85[193]
										tbl31["22"].Image = "rbxassetid://109659294248163"
										tbl31["22"].Size = UDim2.new(0, 14, 0, v85[122])
										tbl31["22"].BackgroundTransparency = v85[86]
										tbl31[v85[154]].Name = "IMG_SearchIcon"
										tbl31[v85[154]].Position = UDim2.new(v85[25], v85[82], 0, 10)
										tbl31["22"]:SetAttribute("fadeOriginal_ImageTransparency", 0.3)
										tbl31["22"]:SetAttribute(v85[150], 1)
										tbl31["23"] = Instance.new("TextLabel", tbl31[v85[173]])
										tbl31["23"].TextSize = 12
										tbl31[v85[46]].TextXAlignment = Enum.TextXAlignment.Left
										tbl31["23"][v85[69]] = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
										tbl31[v85[46]][v85[141]] = Color3.fromRGB(v85[56], 143, 154)
										tbl31[v85[46]].BackgroundTransparency = 1
										tbl31[v85[46]][v85[142]] = UDim2.new(0, 160, v85[25], 34)
										tbl31["23"][v85[115]] = "Search..."
										tbl31["23"].Name = "Placeholder"
										tbl31["23"].Position = UDim2.new(0, v85[5], 0, 0)
										tbl31[v85[46]]:SetAttribute("fadeOriginal_TextTransparency", 0)
										tbl31[v85[46]]:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
										tbl31["24"] = Instance.new("TextBox", tbl31[v85[173]])
										tbl31[v85[117]].SelectionStart = 1
										tbl31["24"].Name = "Input"
										tbl31["24"].TextXAlignment = Enum.TextXAlignment.Left
										tbl31["24"].ZIndex = 2
										tbl31[v85[117]].TextSize = 12
										tbl31["24"].TextColor3 = Color3.fromRGB(243, v85[133], 247)
										tbl31["24"][v85[69]] = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
										tbl31["24"].ClearTextOnFocus = false
										tbl31["24"].Size = UDim2.new(v85[25], 160, v85[25], v85[16])
										tbl31[v85[117]].Position = UDim2.new(0, v85[5], 0, 0)
										tbl31["24"].Text = ""
										tbl31["24"].BackgroundTransparency = 1
										tbl31["24"]:SetAttribute(v85[14], 0)
										tbl31["24"]:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
										tbl31["25"] = Instance.new("UIStroke", tbl31["1f"])
										tbl31["25"].Transparency = 1
										tbl31["25"].Color = Color3.fromRGB(125, 109, 247)
										tbl31["25"]:SetAttribute("fadeOriginal_Transparency", 1)
										tbl31["26"] = Instance.new("Frame", tbl31["1e"])
										tbl31["26"].BorderSizePixel = v85[25]
										tbl31["26"].BackgroundColor3 = Color3.fromRGB(14, v85[76], 20)
										tbl31["26"].Size = UDim2.new(0, v85[172], 0, v85[16])
										tbl31["26"][v85[189]] = UDim2.new(0, 453, 0, 23)
										tbl31["26"][v85[104]] = "LegitPvP_Button"
										tbl31["26"][v85[197]] = 0.1
										tbl31[v85[58]]:SetAttribute("fadeOriginal_BackgroundTransparency", 0.1)
										tbl31["27"] = Instance.new(v85[127], tbl31["26"])
										tbl31["27"].CornerRadius = UDim.new(0, 10)
										tbl31[v85[18]] = Instance.new("TextLabel", tbl31["26"])
										tbl31[v85[18]][v85[147]] = Enum.TextTruncate.AtEnd
										tbl31[v85[18]][v85[126]] = v85[82]
										tbl31["28"].TextXAlignment = Enum.TextXAlignment.Left
										tbl31["28"].FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
										tbl31["28"].TextColor3 = Color3.fromRGB(243, 243, 247)
										tbl31["28"].BackgroundTransparency = 1
										tbl31["28"][v85[142]] = UDim2.new(0, v85[52], 0, 34)
										tbl31[v85[18]].Text = "Config 1"
										tbl31["28"].Name = "Label"
										tbl31["28"].Position = UDim2.new(0, 12, 0, 0)
										tbl31["28"]:SetAttribute("fadeOriginal_TextTransparency", 0)
										tbl31[v85[18]]:SetAttribute("fadeOriginal_BackgroundTransparency", v85[86])
										tbl31["29"] = Instance.new("ImageLabel", tbl31["26"])
										tbl31["29"].BorderSizePixel = 0
										tbl31["29"].ScaleType = Enum.ScaleType.Fit
										tbl31["29"].Image = "rbxassetid://10723386277"
										tbl31["29"][v85[142]] = UDim2.new(v85[25], 16, 0, v85[47])
										tbl31["29"].BackgroundTransparency = 1
										tbl31["29"].Name = "IMG_FolderIcon"
										tbl31[v85[3]].Position = UDim2.new(v85[25], 70, 0, 9)
										tbl31[v85[3]]:SetAttribute(v85[43], v85[25])
										tbl31["29"]:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
										tbl31["2a"] = Instance.new("TextButton", tbl31["26"])
										tbl31[v85[186]].AutoButtonColor = false
										tbl31["2a"].ZIndex = 3
										tbl31["2a"].BackgroundTransparency = 1
										tbl31["2a"].Size = UDim2.new(1, 0, 1, 0)
										tbl31["2a"].Text = ""
										tbl31["2a"].Name = "Hit"
										tbl31["2a"]:SetAttribute("fadeOriginal_TextTransparency", 0)
										tbl31["2a"]:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
										tbl31.Indicator = Instance.new("ImageLabel", tbl31["5"])
										tbl31.Indicator.BorderSizePixel = 0
										tbl31.Indicator.Image = "rbxassetid://90362801488029"
										tbl31.Indicator.Size = UDim2.new(0, v85[194], v85[25], v85[76])
										tbl31.Indicator.BackgroundTransparency = 1
										tbl31.Indicator.Name = v85[45]
										tbl31.Indicator.Position = UDim2.new(0, 0, v85[25], 93)
										tbl31[v85[187]] = Instance.new(v85[93], tbl31[v85[152]])
										tbl31.e.BorderSizePixel = v85[25]
										tbl31.e.BackgroundColor3 = Color3.fromRGB(23, v85[160], 32)
										tbl31[v85[187]].Size = UDim2.new(1, -26, v85[25], 23)
										tbl31.e.Position = UDim2.new(v85[25], v85[121], v85[25], 90)
										tbl31.e.Name = "Highlight"
										tbl31.e.Visible = true
										tbl31[v85[187]].ZIndex = 0
										tbl31[v85[187]]:SetAttribute("fadeOriginal_BackgroundTransparency", v85[25])
										tbl31.f = Instance.new("UICorner", tbl31.e)
										tbl31["10"] = Instance.new(v85[89], tbl31.e)
										tbl31[v85[153]]:SetAttribute("fadeOriginal_Transparency", 0.55)
										tbl31.ef = Instance.new("Frame", tbl31["2"])
										tbl31[v85[4]].Visible = false
										tbl31.ef.ZIndex = 60
										tbl31.ef.BorderSizePixel = 0
										tbl31.ef[v85[111]] = Color3.fromRGB(10, 11, v85[47])
										tbl31.ef.Size = UDim2.new(0, 236, v85[25], 490)
										tbl31.ef.Position = UDim2.new(0, 737, 0, 3)
										tbl31.ef.Name = "name_config_window"
										tbl31.ef:SetAttribute(v85[150], 0)
										tbl31.ef:SetAttribute(v85[177], 3)
										tbl31[v85[4]]:SetAttribute("fadeIsolated", v85[81])
										tbl31[v85[4]].ClipsDescendants = true
										tbl31.f0 = Instance.new("UICorner", tbl31.ef)
										tbl31.f0.CornerRadius = UDim.new(0, 12)
										tbl31[v85[64]] = Instance.new("UIStroke", tbl31.ef)
										tbl31.f1.Transparency = 0.4
										tbl31.f1[v85[162]] = Color3.fromRGB(v85[164], v85[164], 58)
										tbl31.f1:SetAttribute(v85[116], v85[13])
										tbl31.f2 = Instance.new(v85[131], tbl31[v85[4]])
										tbl31.f2[v85[61]] = 61
										tbl31.f2.ScaleType = Enum.ScaleType.Fit
										tbl31[v85[170]].ImageColor3 = Color3.fromRGB(151, 151, 162)
										tbl31.f2.Image = "rbxassetid://70621328130295"
										tbl31.f2.Size = UDim2.new(0, 18, v85[25], 18)
										tbl31[v85[170]].BackgroundTransparency = 1
										tbl31.f2[v85[104]] = "IMG_CloudIcon"
										tbl31.f2.Position = UDim2.new(v85[25], 14, 0, v85[76])
										tbl31.f2:SetAttribute("fadeOriginal_ImageTransparency", 0)
										tbl31.f2:SetAttribute("fadeOriginal_BackgroundTransparency", v85[86])
										tbl31.f3 = Instance.new("TextLabel", tbl31.ef)
										tbl31.f3[v85[61]] = 61
										tbl31.f3.TextSize = 14
										tbl31.f3[v85[102]] = Enum.TextXAlignment.Left
										tbl31.f3.FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
										tbl31.f3.TextColor3 = Color3.fromRGB(243, 243, 247)
										tbl31[v85[28]][v85[197]] = v85[86]
										tbl31.f3.Size = UDim2.new(v85[25], 120, v85[25], 24)
										tbl31.f3.Text = "Presets"
										tbl31[v85[28]].Name = "Title"
										tbl31.f3.Position = UDim2.new(0, 40, 0, 12)
										tbl31.f3:SetAttribute(v85[14], 0)
										tbl31[v85[28]]:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
										tbl31.f4 = Instance.new(v85[93], tbl31.ef)
										tbl31.f4.ZIndex = 61
										tbl31[v85[77]].BorderSizePixel = 0
										tbl31.f4.BackgroundColor3 = Color3.fromRGB(25, v85[160], 43)
										tbl31.f4.Size = UDim2.new(v85[25], 26, 0, 26)
										tbl31.f4[v85[189]] = UDim2.new(0, 196, v85[25], 11)
										tbl31.f4.Name = "AddButton"
										tbl31.f4:SetAttribute("fadeOriginal_BackgroundTransparency", 0)
										tbl31[v85[24]] = Instance.new("UICorner", tbl31.f4)
										tbl31.f5.CornerRadius = UDim.new(0, 7)
										tbl31.f6 = Instance.new("ImageLabel", tbl31.f4)
										tbl31[v85[79]][v85[61]] = 61
										tbl31.f6[v85[110]] = Enum.ScaleType.Fit
										tbl31[v85[79]].ImageColor3 = Color3.fromRGB(243, 243, 247)
										tbl31.f6[v85[19]] = "rbxassetid://101123124881873"
										tbl31.f6[v85[142]] = UDim2.new(0, v85[122], 0, v85[122])
										tbl31.f6[v85[197]] = 1
										tbl31.f6.Name = "IMG_Add"
										tbl31.f6[v85[189]] = UDim2.new(0, 6, 0, 6)
										tbl31.f6:SetAttribute("fadeOriginal_ImageTransparency", 0)
										tbl31.f6:SetAttribute(v85[150], 1)
										tbl31.f7 = Instance.new("TextButton", tbl31.f4)
										tbl31.f7.AutoButtonColor = v85[36]
										tbl31.f7.ZIndex = 62
										tbl31[v85[161]][v85[197]] = 1
										tbl31.f7.Size = UDim2.new(v85[86], v85[25], 1, 0)
										tbl31.f7.Text = ""
										tbl31.f7.Name = "Hit"
										tbl31[v85[161]]:SetAttribute(v85[14], 0)
										tbl31.f7:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
										tbl31.f8 = Instance.new("UIStroke", tbl31[v85[77]])
										tbl31.f8.Transparency = 1
										tbl31[v85[155]][v85[162]] = Color3.fromRGB(85, 85, v85[83])
										tbl31.f8:SetAttribute("fadeOriginal_Transparency", 1)
										tbl31.f9 = Instance.new("Frame", tbl31.ef)
										tbl31.f9.ZIndex = 61
										tbl31.f9.BorderSizePixel = 0
										tbl31.f9.BackgroundColor3 = Color3.fromRGB(25, 24, v85[165])
										tbl31.f9.Size = UDim2.new(0, 174, 0, 34)
										tbl31.f9.Position = UDim2.new(0, 14, 0, v85[52])
										tbl31[v85[118]].Name = v85[92]
										tbl31.f9:SetAttribute(v85[150], 0)
										tbl31.fa = Instance.new("UICorner", tbl31.f9)
										tbl31[v85[91]] = Instance.new(v85[131], tbl31.f9)
										tbl31[v85[91]][v85[61]] = v85[34]
										tbl31[v85[91]].ScaleType = Enum.ScaleType.Fit
										tbl31.fb.ImageColor3 = Color3.fromRGB(151, 151, v85[182])
										tbl31.fb.Image = "rbxassetid://72296609649861"
										tbl31.fb.Size = UDim2.new(0, 14, v85[25], 14)
										tbl31.fb.BackgroundTransparency = 1
										tbl31.fb[v85[104]] = "IMG_SearchIcon"
										tbl31.fb[v85[189]] = UDim2.new(0, 10, v85[25], v85[136])
										tbl31.fb:SetAttribute("fadeOriginal_ImageTransparency", v85[25])
										tbl31[v85[91]]:SetAttribute(v85[150], 1)
										tbl31[v85[75]] = Instance.new("TextBox", tbl31.f9)
										tbl31.fc.Name = "Input"
										tbl31.fc.TextXAlignment = Enum.TextXAlignment.Left
										tbl31.fc.PlaceholderColor3 = Color3.fromRGB(121, 121, 132)
										tbl31.fc.ZIndex = 61
										tbl31.fc[v85[126]] = 12
										tbl31.fc.TextColor3 = Color3.fromRGB(243, 243, 247)
										tbl31.fc.FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
										tbl31[v85[75]][v85[40]] = false
										tbl31.fc.PlaceholderText = "Search"
										tbl31[v85[75]].Size = UDim2.new(v85[25], 130, 0, v85[16])
										tbl31.fc.Position = UDim2.new(0, v85[192], 0, 0)
										tbl31.fc.Text = ""
										tbl31.fc.BackgroundTransparency = 1
										tbl31.fc:SetAttribute("fadeOriginal_TextTransparency", v85[25])
										tbl31[v85[75]]:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
										tbl31.fd = Instance.new("Frame", tbl31.ef)
										tbl31[v85[39]].ZIndex = 61
										tbl31.fd.BorderSizePixel = v85[25]
										tbl31.fd.BackgroundColor3 = Color3.fromRGB(25, 24, v85[165])
										tbl31.fd.Size = UDim2.new(0, 30, 0, 34)
										tbl31.fd.Position = UDim2.new(0, 192, 0, 50)
										tbl31[v85[39]].Name = "SortButton"
										tbl31.fd:SetAttribute("fadeOriginal_BackgroundTransparency", 0)
										tbl31.fe = Instance.new("UICorner", tbl31.fd)
										tbl31[v85[1]] = Instance.new("ImageLabel", tbl31.fd)
										tbl31.ff.ZIndex = 61
										tbl31[v85[1]].ScaleType = Enum.ScaleType.Fit
										tbl31.ff.ImageColor3 = Color3.fromRGB(151, 151, v85[182])
										tbl31.ff.Image = "rbxassetid://117405374619280"
										tbl31.ff[v85[142]] = UDim2.new(0, 14, 0, 14)
										tbl31[v85[1]].BackgroundTransparency = 1
										tbl31.ff[v85[104]] = "IMG_SortIcon"
										tbl31.ff[v85[189]] = UDim2.new(0, 8, 0, v85[136])
										tbl31.ff:SetAttribute(v85[43], v85[25])
										tbl31[v85[1]]:SetAttribute("fadeOriginal_BackgroundTransparency", v85[86])
										tbl31["100"] = Instance.new("TextButton", tbl31.fd)
										tbl31["100"][v85[129]] = false
										tbl31["100"][v85[61]] = 62
										tbl31["100"].BackgroundTransparency = 1
										tbl31["100"].Size = UDim2.new(v85[86], 0, 1, 0)
										tbl31[v85[7]].Text = ""
										tbl31["100"].Name = "Hit"
										tbl31[v85[7]]:SetAttribute(v85[14], 0)
										tbl31["100"]:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
										tbl31[v85[72]] = Instance.new("UIStroke", tbl31.fd)
										tbl31[v85[72]][v85[11]] = 1
										tbl31["101"][v85[162]] = Color3.fromRGB(85, 85, 101)
										tbl31["101"]:SetAttribute("fadeOriginal_Transparency", 1)
										tbl31[v85[26]] = Instance.new("Frame", tbl31["1"])
										tbl31.kpw.BorderSizePixel = 0
										tbl31.kpw.BackgroundColor3 = Color3.fromRGB(9, 10, 15)
										tbl31.kpw[v85[61]] = v85[35]
										tbl31.kpw.Size = UDim2.new(0, 150, 0, 76)
										tbl31[v85[26]].Position = UDim2.new(v85[25], v85[95], v85[25], v85[80])
										tbl31.kpw.Name = v85[78]
										tbl31.kpw.Visible = false
										tbl31.kpw.ClipsDescendants = true
										tbl31.kpw:SetAttribute("fadeIsolated", true)
										tbl31.kpw_c = Instance.new("UICorner", tbl31.kpw)
										tbl31.kpw_c.CornerRadius = UDim.new(0, 10)
										tbl31.kpw_s = Instance.new(v85[33], tbl31[v85[26]])
										tbl31[v85[84]][v85[11]] = 0.45
										tbl31.kpw_s.Color = Color3.fromRGB(48, 48, 58)
										tbl31.kpw_sh = Instance.new(v85[89], tbl31[v85[26]])
										tbl31.kpw_sh.Transparency = 1
										tbl31.kpw_sh:SetAttribute("fadeOriginal_Transparency", 1)
										tbl31.kpw_nbf = Instance.new("Frame", tbl31[v85[26]])
										tbl31.kpw_nbf.BorderSizePixel = 0
										tbl31.kpw_nbf.BackgroundColor3 = Color3.fromRGB(22, 23, 31)
										tbl31[v85[184]][v85[61]] = 56
										tbl31[v85[184]][v85[142]] = UDim2.new(0, v85[109], 0, v85[49])
										tbl31[v85[184]][v85[189]] = UDim2.new(0, 8, 0, 8)
										tbl31.kpw_nbf.Name = v85[138]
										tbl31.kpw_nbf_c = Instance.new(v85[127], tbl31[v85[184]])
										tbl31.kpw_nbf_c.CornerRadius = UDim.new(0, 7)
										tbl31.kpw_nbf_s = Instance.new("UIStroke", tbl31[v85[184]])
										tbl31.kpw_nbf_s.Transparency = 1
										tbl31.kpw_nbf_s.Color = Color3.fromRGB(125, 109, v85[73])
										tbl31.kpw_nbf_i = Instance.new("ImageLabel", tbl31.kpw_nbf)
										tbl31.kpw_nbf_i.BorderSizePixel = 0
										tbl31.kpw_nbf_i.ScaleType = Enum.ScaleType.Fit
										tbl31.kpw_nbf_i[v85[185]] = Color3.fromRGB(v85[124], 138, 148)
										tbl31.kpw_nbf_i.Image = "rbxassetid://122878673716704"
										tbl31.kpw_nbf_i.ZIndex = 56
										tbl31.kpw_nbf_i.Size = UDim2.new(v85[25], v85[82], 0, 12)
										tbl31.kpw_nbf_i.BackgroundTransparency = 1
										tbl31.kpw_nbf_i.Name = "IMG_BindIcon"
										tbl31.kpw_nbf_i.Position = UDim2.new(0, 9, 0, 7)
										tbl31.kpw_nbf_p = Instance.new(v85[94], tbl31.kpw_nbf)
										tbl31.kpw_nbf_p.TextSize = 12
										tbl31[v85[100]].TextXAlignment = Enum.TextXAlignment.Left
										tbl31.kpw_nbf_p.FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
										tbl31.kpw_nbf_p[v85[141]] = Color3.fromRGB(138, 138, v85[106])
										tbl31[v85[100]].BackgroundTransparency = 1
										tbl31.kpw_nbf_p.ZIndex = 56
										tbl31.kpw_nbf_p.Size = UDim2.new(0, 82, 0, v85[49])
										tbl31.kpw_nbf_p[v85[115]] = "New bind"
										tbl31.kpw_nbf_p[v85[104]] = "Placeholder"
										tbl31[v85[100]].Position = UDim2.new(0, 27, 0, 0)
										tbl31.kpw_nbf_pp = Instance.new("ImageLabel", tbl31.kpw_nbf)
										tbl31[v85[90]][v85[66]] = 0
										tbl31.kpw_nbf_pp[v85[110]] = Enum.ScaleType.Fit
										tbl31.kpw_nbf_pp.ImageColor3 = Color3.fromRGB(138, v85[124], 148)
										tbl31.kpw_nbf_pp.Image = "rbxassetid://101123124881873"
										tbl31.kpw_nbf_pp[v85[61]] = v85[151]
										tbl31.kpw_nbf_pp.Size = UDim2.new(0, 12, 0, 12)
										tbl31.kpw_nbf_pp.BackgroundTransparency = v85[86]
										tbl31.kpw_nbf_pp[v85[104]] = "IMG_Plus"
										tbl31[v85[90]].Position = UDim2.new(v85[25], 116, 0, 7)
										tbl31.kpw_nbf_h = Instance.new("TextButton", tbl31.kpw_nbf)
										tbl31[v85[17]][v85[129]] = v85[36]
										tbl31.kpw_nbf_h.ZIndex = 57
										tbl31.kpw_nbf_h[v85[197]] = v85[86]
										tbl31.kpw_nbf_h.Size = UDim2.new(1, 0, 1, 0)
										tbl31.kpw_nbf_h.Text = ""
										tbl31.kpw_nbf_h[v85[104]] = v85[22]
										tbl31.kpw_tb = Instance.new("Frame", tbl31.kpw)
										tbl31.kpw_tb.BorderSizePixel = 0
										tbl31.kpw_tb.BackgroundColor3 = Color3.fromRGB(41, 43, 54)
										tbl31.kpw_tb.ZIndex = 56
										tbl31.kpw_tb.Size = UDim2.new(v85[25], 65, 0, 26)
										tbl31.kpw_tb.Position = UDim2.new(0, 8, 0, 42)
										tbl31.kpw_tb.Name = "ToggleButton"
										tbl31.kpw_tb_c = Instance.new("UICorner", tbl31.kpw_tb)
										tbl31.kpw_tb_c.CornerRadius = UDim.new(v85[25], 7)
										tbl31.kpw_tb_s = Instance.new(v85[33], tbl31.kpw_tb)
										tbl31[v85[114]].Transparency = v85[86]
										tbl31.kpw_tb_s.Color = Color3.fromRGB(84, 84, 100)
										tbl31[v85[188]] = Instance.new("TextButton", tbl31.kpw_tb)
										tbl31[v85[188]].AutoButtonColor = false
										tbl31[v85[188]].ZIndex = v85[9]
										tbl31[v85[188]][v85[197]] = 1
										tbl31.kpw_tb_h.Size = UDim2.new(1, 0, 1, v85[25])
										tbl31.kpw_tb_h.Text = ""
										tbl31.kpw_tb_h.Name = v85[22]
										tbl31.kpw_hb = Instance.new(v85[93], tbl31.kpw)
										tbl31.kpw_hb.BorderSizePixel = 0
										tbl31.kpw_hb.BackgroundColor3 = Color3.fromRGB(41, 43, 54)
										tbl31.kpw_hb.ZIndex = v85[151]
										tbl31.kpw_hb.Size = UDim2.new(v85[25], v85[2], 0, v85[49])
										tbl31.kpw_hb[v85[189]] = UDim2.new(v85[25], v85[63], 0, 42)
										tbl31[v85[157]].Name = "HoldButton"
										tbl31.kpw_hb_c = Instance.new(v85[127], tbl31.kpw_hb)
										tbl31[v85[125]][v85[41]] = UDim.new(0, 7)
										tbl31.kpw_hb_s = Instance.new("UIStroke", tbl31.kpw_hb)
										tbl31.kpw_hb_s.Transparency = 1
										tbl31.kpw_hb_s.Color = Color3.fromRGB(84, 84, 100)
										tbl31.kpw_hb_h = Instance.new("TextButton", tbl31.kpw_hb)
										tbl31.kpw_hb_h.AutoButtonColor = v85[36]
										tbl31[v85[168]].ZIndex = v85[9]
										tbl31.kpw_hb_h[v85[197]] = 1
										tbl31.kpw_hb_h[v85[142]] = UDim2.new(1, v85[25], 1, 0)
										tbl31.kpw_hb_h[v85[115]] = ""
										tbl31.kpw_hb_h[v85[104]] = v85[22]
										tbl31.kpw_ms = Instance.new("Frame", tbl31.kpw)
										tbl31.kpw_ms[v85[66]] = v85[25]
										tbl31[v85[85]].BackgroundColor3 = Color3.fromRGB(v85[140], 104, 246)
										tbl31.kpw_ms.ZIndex = 56
										tbl31.kpw_ms[v85[142]] = UDim2.new(0, 65, 0, 26)
										tbl31.kpw_ms.Position = UDim2.new(0, v85[121], 0, 42)
										tbl31.kpw_ms.Name = "ModeSelection"
										tbl31.kpw_ms_c = Instance.new("UICorner", tbl31.kpw_ms)
										tbl31.kpw_ms_c[v85[41]] = UDim.new(0, 7)
										tbl31.kpw_tl = Instance.new("TextLabel", tbl31.kpw)
										tbl31.kpw_tl[v85[126]] = 12
										tbl31.kpw_tl[v85[102]] = Enum.TextXAlignment.Center
										tbl31.kpw_tl.FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
										tbl31[v85[48]].TextColor3 = Color3.fromRGB(34, v85[42], 72)
										tbl31.kpw_tl.BackgroundTransparency = 1
										tbl31.kpw_tl.ZIndex = 56
										tbl31.kpw_tl.Size = UDim2.new(0, 65, 0, 26)
										tbl31.kpw_tl[v85[115]] = "Toggle"
										tbl31.kpw_tl[v85[104]] = "ToggleLabel"
										tbl31[v85[48]][v85[189]] = UDim2.new(v85[25], 8, 0, 42)
										tbl31.kpw_hl = Instance.new(v85[94], tbl31[v85[26]])
										tbl31.kpw_hl.TextSize = 12
										tbl31.kpw_hl.TextXAlignment = Enum.TextXAlignment.Center
										tbl31.kpw_hl.FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
										tbl31[v85[132]].TextColor3 = Color3.fromRGB(244, v85[107], 248)
										tbl31.kpw_hl[v85[197]] = 1
										tbl31.kpw_hl[v85[61]] = v85[151]
										tbl31.kpw_hl.Size = UDim2.new(0, 65, 0, 26)
										tbl31.kpw_hl.Text = "Hold"
										tbl31[v85[132]].Name = "HoldLabel"
										tbl31.kpw_hl.Position = UDim2.new(v85[25], 77, 0, v85[137])

										local function fn33(arg)
											if arg.UserInputType == Enum.UserInputType.Keyboard then
												return arg.KeyCode
											end

											if arg.UserInputType == Enum.UserInputType.MouseButton1 then
												return Enum.UserInputType.MouseButton1
											end

											if arg.UserInputType == Enum.UserInputType.MouseButton2 then
												return Enum.UserInputType.MouseButton2
											end

											if arg.UserInputType == Enum.UserInputType.MouseButton3 then
												return Enum.UserInputType.MouseButton3
											end
											return nil
										end

										local function fn34(arg)
											if typeof(arg) == "EnumItem" then
												if arg.EnumType == Enum.UserInputType then
													if arg == Enum.UserInputType.MouseButton1 then
														return v85[99]
													end

													if arg == Enum.UserInputType.MouseButton2 then
														return "M2"
													end

													if arg == Enum.UserInputType.MouseButton3 then
														return "M3"
													end
												end

												return (arg.Name:gsub("Left", "L"):gsub("Right", v85[53]):gsub("Control", "Ctrl"):gsub(v85[191], "Shf"))
											end

											return "None"
										end

										local tbl32 = { Enum.KeyCode.LeftControl, Enum.KeyCode.RightControl, Enum.KeyCode.LeftAlt, Enum.KeyCode.RightAlt }

										tbl31.kpw_nbf_h.MouseButton1Click:Connect(function()
											if not tbl31.ActiveKeybindToggle then
												return
											end
											tbl31.WaitingForKey = true
											tbl31.kpw_nbf_p.Text = "Press a key..."
											tbl31[v85[100]].TextColor3 = Color3.fromRGB(125, 109, 247)
											service2:Create(tbl31.kpw_nbf_s, TweenInfo.new(0.2), { Transparency = 0 }):Play()
										end)

										tbl31.kpw_tb_h.MouseButton1Click:Connect(function()
											if not tbl31.ActiveKeybindToggle then
												return
											end
											tbl31.ActiveKeybindToggle.KeybindMode = "toggle"

											if tbl17.Keybinds[tbl31.ActiveKeybindToggle] then
												tbl17.Keybinds[tbl31.ActiveKeybindToggle].mode = "toggle"
											end

											if tbl31.ActiveKeybindToggle.flag and tbl17.Flags[tbl31.ActiveKeybindToggle.flag .. "_keybind"] then
												tbl17.Flags[tbl31.ActiveKeybindToggle.flag .. "_keybind"].mode = "toggle"
												tbl17.save_flags()
											end

											service2:Create(tbl31[v85[85]], TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(0, 8, 0, 42) }):Play()
											tbl31.kpw_tl.TextColor3 = Color3.fromRGB(34, 29, 72)
											tbl31.kpw_hl.TextColor3 = Color3.fromRGB(244, 244, 248)
										end)

										tbl31.kpw_hb_h.MouseButton1Click:Connect(function()
											if not tbl31.ActiveKeybindToggle then
												return
											end
											tbl31.ActiveKeybindToggle.KeybindMode = "hold"

											if tbl17.Keybinds[tbl31.ActiveKeybindToggle] then
												tbl17.Keybinds[tbl31.ActiveKeybindToggle].mode = "hold"
											end

											if tbl31.ActiveKeybindToggle.flag and tbl17.Flags[tbl31.ActiveKeybindToggle.flag .. "_keybind"] then
												tbl17.Flags[tbl31.ActiveKeybindToggle.flag .. "_keybind"].mode = "hold"
												tbl17.save_flags()
											end

											service2:Create(tbl31.kpw_ms, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(v85[25], 77, 0, 42) }):Play()
											tbl31.kpw_tl.TextColor3 = Color3.fromRGB(v85[107], 244, 248)
											tbl31.kpw_hl.TextColor3 = Color3.fromRGB(34, v85[42], 72)
										end)

										UserInputService.InputBegan:Connect(function(input)
											if not tbl31.WaitingForKey then
												return
											end

											if input.KeyCode == Enum.KeyCode.End then
												tbl31.WaitingForKey = false
												local activeKeybindToggle = tbl31.ActiveKeybindToggle

												if activeKeybindToggle then
													activeKeybindToggle.Keybind = nil
													activeKeybindToggle.KeybindName = nil
													tbl17.Keybinds[activeKeybindToggle] = nil

													if activeKeybindToggle.flag then
														tbl17.Flags[activeKeybindToggle.flag .. "_keybind"] = nil
														tbl17.save_flags()
													end

													if activeKeybindToggle["72_text"] then
														activeKeybindToggle["72_text"].Text = "···"
														activeKeybindToggle["72_text"].TextColor3 = Color3.fromRGB(138, 138, 148)
													end

													if activeKeybindToggle["73_s"] then
														service2:Create(activeKeybindToggle["73_s"], TweenInfo.new(0.2), { Transparency = 1 }):Play()
													end
												end

												tbl31.kpw_nbf_p.Text = "New bind"
												tbl31.kpw_nbf_p.TextColor3 = Color3.fromRGB(v85[124], 138, v85[106])
												service2:Create(tbl31.kpw_nbf_s, TweenInfo.new(0.2), { Transparency = 1 }):Play()
												return
											end

											local v92 = fn33(input)
											if v92 == nil then
												return
											end

											if table.find(tbl32, v92) then
												return
											end
											tbl31.WaitingForKey = false
											local activeKeybindToggle = tbl31.ActiveKeybindToggle
											if not activeKeybindToggle then
												return
											end
											activeKeybindToggle.Keybind = v92
											activeKeybindToggle.KeybindName = fn34(v92)

											if not activeKeybindToggle.KeybindMode then
												activeKeybindToggle.KeybindMode = "toggle"
											end

											tbl17.Keybinds[activeKeybindToggle] = { key = v92, mode = activeKeybindToggle.KeybindMode, flag = activeKeybindToggle.flag }

											if activeKeybindToggle.flag then
												tbl17.Flags[activeKeybindToggle.flag .. "_keybind"] = {
													keyName = v92.Name,
													keyType = v92.EnumType == Enum.KeyCode and "KeyCode" or "UserInputType",
													displayName = fn34(v92),
													mode = activeKeybindToggle.KeybindMode,
												}

												tbl17.save_flags()
											end

											tbl31[v85[100]].Text = fn34(v92)
											tbl31.kpw_nbf_p.TextColor3 = Color3.fromRGB(243, 243, 247)
											service2:Create(tbl31.kpw_nbf_s, TweenInfo.new(0.2), { Transparency = 1 }):Play()

											if activeKeybindToggle["72_text"] then
												activeKeybindToggle["72_text"].Text = fn34(v92)
												activeKeybindToggle["72_text"].TextColor3 = Color3.fromRGB(125, 109, 247)
											end

											if activeKeybindToggle["73_s"] then
												service2:Create(activeKeybindToggle["73_s"], TweenInfo.new(0.2), { Transparency = 0 }):Play()
											end
										end)

										UserInputService.InputBegan:Connect(function(input, gameProcessed)
											if gameProcessed then
												return
											end

											if tbl31.WaitingForKey then
												return
											end
											local v92 = fn33(input)
											if v92 == nil then
												return
											end

											for k, keybind in pairs(tbl17.Keybinds) do
												if keybind.key == v92 and k.flag then
													if keybind.mode == "toggle" then
														if not k._keybindHeld then
															k._keybindHeld = true

															pcall(function()
																k:Toggle()
															end)
														end
													elseif keybind.mode == "hold" then
														k._keybindHeld = true

														pcall(function()
															k:Toggle(true)
														end)
													end
												end
											end
										end)

										UserInputService.InputEnded:Connect(function(input)
											local v92 = fn33(input)
											if v92 == nil then
												return
											end

											for k, keybind in pairs(tbl17.Keybinds) do
												if keybind.key == v92 and k.flag then
													if keybind.mode == "toggle" then
														k._keybindHeld = false
													elseif keybind.mode == "hold" then
														k._keybindHeld = v85[36]

														pcall(function()
															k:Toggle(v85[36])
														end)
													end
												end
											end
										end)

										tbl31.cpw = Instance.new("Frame", tbl31["1"])
										tbl31.cpw.BorderSizePixel = 0
										tbl31.cpw.BackgroundColor3 = Color3.fromRGB(9, v85[136], 15)
										tbl31.cpw.ZIndex = v85[35]
										tbl31.cpw.Size = UDim2.new(v85[25], 150, 0, 200)
										tbl31.cpw.Position = UDim2.new(0, 500, 0, v85[80])
										tbl31.cpw.Position = UDim2.new(-0.04, 1098, 0.286, 240)
										tbl31.cpw.Name = "color_picker_window"
										tbl31.cpw.Visible = false
										tbl31.cpw.ClipsDescendants = true
										tbl31.cpw:SetAttribute("fadeIsolated", v85[81])
										tbl31.cpw_c = Instance.new(v85[127], tbl31.cpw)
										tbl31.cpw_c[v85[41]] = UDim.new(0, v85[136])
										tbl31.cpw_s = Instance.new("UIStroke", tbl31.cpw)
										tbl31.cpw_s.Transparency = 0.45
										tbl31.cpw_s.Color = Color3.fromRGB(48, 48, 58)
										tbl31.cpw_sh = Instance.new("UIShadow", tbl31.cpw)
										tbl31.cpw_sh.Transparency = 1
										tbl31.cpw_sh:SetAttribute("fadeOriginal_Transparency", 1)
										tbl31.cpw_pal = Instance.new("Frame", tbl31.cpw)
										tbl31.cpw_pal.BackgroundColor3 = Color3.fromRGB(0, 110, 255)
										tbl31.cpw_pal.BorderSizePixel = 0
										tbl31.cpw_pal.ClipsDescendants = true
										tbl31.cpw_pal.Position = UDim2.new(v85[25], 10, 0, 10)
										tbl31.cpw_pal[v85[142]] = UDim2.new(v85[25], 106, v85[25], 106)
										tbl31.cpw_pal.ZIndex = 51
										tbl31.cpw_pal.Name = "Palette"
										Instance.new("UICorner", tbl31.cpw_pal).CornerRadius = UDim.new(0, 6)
										tbl31.cpw_pal_w = Instance.new(v85[93], tbl31.cpw_pal)
										tbl31.cpw_pal_w.BackgroundColor3 = Color3.fromRGB(255, v85[67], 255)
										tbl31.cpw_pal_w.BorderSizePixel = 0
										tbl31.cpw_pal_w.Size = UDim2.new(1, 0, v85[86], v85[25])
										tbl31.cpw_pal_w.ZIndex = 51
										tbl31.cpw_pal_w[v85[104]] = "WhiteOverlay"
										Instance.new("UICorner", tbl31.cpw_pal_w).CornerRadius = UDim.new(v85[25], 6)
										local numberSequence = NumberSequence.new
										local new = NumberSequenceKeypoint.new
										local v92 = v85[86]
										Instance.new("UIGradient", tbl31.cpw_pal_w).Transparency = numberSequence({ NumberSequenceKeypoint.new(0, 0), new(v92, 1) })
										tbl31.cpw_pal_b = Instance.new(v85[93], tbl31.cpw_pal)
										tbl31.cpw_pal_b[v85[111]] = Color3.fromRGB(0, 0, 0)
										tbl31.cpw_pal_b.BorderSizePixel = v85[25]
										tbl31.cpw_pal_b.Size = UDim2.new(v85[86], 0, 1, v85[25])
										tbl31.cpw_pal_b.ZIndex = 51
										tbl31.cpw_pal_b.Name = "BlackOverlay"
										Instance.new("UICorner", tbl31.cpw_pal_b).CornerRadius = UDim.new(0, 6)
										local uiGradient = Instance.new("UIGradient", tbl31.cpw_pal_b)
										uiGradient.Rotation = v85[35]
										local new2 = NumberSequenceKeypoint.new
										uiGradient.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, v85[86]), new2(1, 0) })
										tbl31.cpw_pal_sel = Instance.new("Frame", tbl31.cpw_pal)
										tbl31.cpw_pal_sel[v85[197]] = 1
										tbl31.cpw_pal_sel[v85[66]] = 0
										tbl31.cpw_pal_sel.Position = UDim2.new(0.9, 0, 0, 0)
										tbl31.cpw_pal_sel[v85[142]] = UDim2.new(v85[25], v85[136], 0, 10)
										tbl31.cpw_pal_sel.ZIndex = 52
										tbl31.cpw_pal_sel[v85[104]] = "Selector"
										Instance.new(v85[127], tbl31.cpw_pal_sel).CornerRadius = UDim.new(v85[25], 4)
										local instance2 = Instance.new(v85[33], tbl31.cpw_pal_sel)
										instance2.Color = Color3.fromRGB(255, 255, 255)
										instance2.Transparency = v85[25]
										instance2.Thickness = 2
										tbl31.cpw_hue = Instance.new("Frame", tbl31.cpw)
										tbl31.cpw_hue.BackgroundColor3 = Color3.fromRGB(255, 255, v85[67])
										tbl31.cpw_hue.BorderSizePixel = 0
										tbl31.cpw_hue.Position = UDim2.new(0, 124, 0, 10)
										tbl31.cpw_hue.Size = UDim2.new(0, 12, 0, 106)
										tbl31.cpw_hue.ZIndex = 51
										tbl31.cpw_hue.Name = "HueStrip"
										Instance.new("UICorner", tbl31.cpw_hue).CornerRadius = UDim.new(v85[25], 5)
										local uiGradient2 = Instance.new("UIGradient", tbl31.cpw_hue)
										local colorSequence = ColorSequence.new
										local tbl33 = {}
										local v93 = ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0))
										local v94 = ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 255, 0))
										local v95 = ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, v85[67], 0))
										local v96 = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, v85[67], 255))
										local v97 = ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 0, 255))
										local v98 = ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 0, 255))
										tbl33[1] = v93
										tbl33[2] = v94
										tbl33[3] = v95
										tbl33[4] = v96
										tbl33[5] = v97
										tbl33[6] = v98

										do
											local values = table.pack(ColorSequenceKeypoint.new(v85[86], Color3.fromRGB(255, 0, v85[25])))
											table.move(values, 1, values.n, 7, tbl33)
										end

										uiGradient2.Color = colorSequence(tbl33)
										uiGradient2.Rotation = 90
										tbl31.cpw_hue_k = Instance.new("Frame", tbl31.cpw_hue)
										tbl31.cpw_hue_k[v85[111]] = Color3.fromRGB(255, 255, 255)
										tbl31.cpw_hue_k.BorderSizePixel = 0
										tbl31.cpw_hue_k.Position = UDim2.new(v85[25], 0, 0, 0)
										tbl31.cpw_hue_k.Size = UDim2.new(0, 12, 0, 9)
										tbl31.cpw_hue_k[v85[61]] = 52
										tbl31.cpw_hue_k[v85[104]] = "Knob"
										Instance.new("UICorner", tbl31.cpw_hue_k).CornerRadius = UDim.new(0, 4)
										local instance3 = Instance.new(v85[33], tbl31.cpw_hue_k)
										instance3.Color = Color3.fromRGB(v85[44], 30, 38)
										instance3.Transparency = v85[25]
										instance3.Thickness = 2
										tbl31.cpw_alpha = Instance.new(v85[93], tbl31.cpw)
										tbl31.cpw_alpha.BackgroundColor3 = Color3.fromRGB(42, 42, 52)
										tbl31.cpw_alpha[v85[66]] = 0
										tbl31.cpw_alpha.ClipsDescendants = true
										tbl31.cpw_alpha.Position = UDim2.new(0, 10, v85[25], 124)
										tbl31.cpw_alpha.Size = UDim2.new(v85[25], 126, 0, 10)
										tbl31.cpw_alpha.ZIndex = 51
										tbl31.cpw_alpha.Name = "AlphaBar"
										Instance.new("UICorner", tbl31.cpw_alpha).CornerRadius = UDim.new(0, 6)
										local imageLabel = Instance.new("ImageLabel", tbl31.cpw_alpha)
										imageLabel.Name = "Checkers"
										imageLabel.BackgroundTransparency = v85[86]
										imageLabel.BorderSizePixel = 0
										imageLabel.Image = "rbxassetid://18274452449"
										imageLabel.ImageColor3 = Color3.fromRGB(255, v85[67], 255)
										imageLabel.ImageTransparency = 0.6
										imageLabel.ScaleType = Enum.ScaleType.Tile
										imageLabel.TileSize = UDim2.new(0, 6, 0, 6)
										imageLabel.Size = UDim2.new(1, 0, 1, 0)
										imageLabel.ZIndex = 51
										tbl31.cpw_alpha_ramp = Instance.new("Frame", tbl31.cpw_alpha)
										tbl31.cpw_alpha_ramp.BackgroundColor3 = Color3.fromRGB(28, 108, 221)
										tbl31.cpw_alpha_ramp.BorderSizePixel = 0
										tbl31.cpw_alpha_ramp.Size = UDim2.new(1, 0, 1, 0)
										tbl31.cpw_alpha_ramp.ZIndex = 51
										tbl31.cpw_alpha_ramp[v85[104]] = "Ramp"
										Instance.new("UICorner", tbl31.cpw_alpha_ramp).CornerRadius = UDim.new(0, 6)
										local numberSequence2 = NumberSequence.new
										local new3 = NumberSequenceKeypoint.new
										local v99 = v85[86]
										local v100 = v85[25]
										Instance.new("UIGradient", tbl31.cpw_alpha_ramp).Transparency = numberSequence2({ NumberSequenceKeypoint.new(0, 1), new3(v99, v100) })
										tbl31.cpw_alpha_k = Instance.new(v85[93], tbl31.cpw_alpha)
										tbl31.cpw_alpha_k.BackgroundColor3 = Color3.fromRGB(v85[67], v85[67], 255)
										tbl31.cpw_alpha_k.BorderSizePixel = v85[25]
										tbl31.cpw_alpha_k.Position = UDim2.new(0.93, v85[25], 0, 0)
										tbl31.cpw_alpha_k[v85[142]] = UDim2.new(0, 9, v85[25], 10)
										tbl31.cpw_alpha_k.ZIndex = 52
										tbl31.cpw_alpha_k.Name = "Knob"
										Instance.new("UICorner", tbl31.cpw_alpha_k).CornerRadius = UDim.new(v85[25], 4)
										local instance4 = Instance.new(v85[33], tbl31.cpw_alpha_k)
										instance4.Color = Color3.fromRGB(30, 30, 38)
										instance4.Transparency = 0
										instance4.Thickness = 2
										tbl31.cpw_hex = Instance.new("Frame", tbl31.cpw)
										tbl31.cpw_hex.BorderSizePixel = 0
										tbl31.cpw_hex.BackgroundColor3 = Color3.fromRGB(22, 23, 31)
										tbl31.cpw_hex.Position = UDim2.new(0, 10, 0, 142)
										tbl31.cpw_hex.Size = UDim2.new(v85[25], 126, 0, 24)
										tbl31.cpw_hex.ZIndex = 51
										tbl31.cpw_hex[v85[104]] = "HexField"
										Instance.new("UICorner", tbl31.cpw_hex).CornerRadius = UDim.new(v85[25], 6)
										tbl31.cpw_hex_v = Instance.new("TextBox", tbl31.cpw_hex)
										tbl31.cpw_hex_v[v85[197]] = 1
										tbl31.cpw_hex_v[v85[189]] = UDim2.new(v85[25], 9, 0, 0)
										tbl31.cpw_hex_v[v85[142]] = UDim2.new(v85[25], 108, 0, 24)
										tbl31.cpw_hex_v.ZIndex = 51
										tbl31.cpw_hex_v[v85[69]] = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
										tbl31.cpw_hex_v.Text = "1C6CDDFF"
										tbl31.cpw_hex_v.TextColor3 = Color3.fromRGB(v85[107], v85[107], 248)
										tbl31.cpw_hex_v[v85[126]] = 11
										tbl31.cpw_hex_v.TextXAlignment = Enum.TextXAlignment.Left
										tbl31.cpw_hex_v[v85[40]] = false
										tbl31.cpw_hex_v.Name = "Value"
										tbl31.ColorPickerState = { hue = 0.6, saturation = 0.87, value = 0.87, alpha = 1, isOpen = false, currentTarget = nil }
										local colorPickerState = tbl31.ColorPickerState

										local function fn35()
											return Color3.fromHSV(colorPickerState.hue, colorPickerState.saturation, colorPickerState.value)
										end

										local function fn36()
											local v101 = fn35()
											return string.format("%02X%02X%02X%02X", math.floor(v101.R * 255 + 0.5), math.floor(v101.G * v85[67] + 0.5), math.floor(v101.B * 255 + 0.5), math.floor(colorPickerState.alpha * 255 + 0.5))
										end

										local function fn37()
											local v101 = fn35()
											service2:Create(tbl31.cpw_pal, TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromHSV(colorPickerState.hue, v85[86], 1) }):Play()
											local v102 = v85[25]
											service2:Create(tbl31.cpw_pal_sel, TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(math.min(colorPickerState.saturation, 0.92), v102, math.min(1 - colorPickerState.value, 0.92), 0) }):Play()
											local v103 = v85[25]
											service2:Create(tbl31.cpw_hue_k, TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(v85[25], 0, math.min(colorPickerState.hue, 0.92), v103) }):Play()
											local v104 = v85[25]
											local v105 = v85[25]
											service2:Create(tbl31.cpw_alpha_k, TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(math.min(colorPickerState.alpha, 0.93), v104, v105, 0) }):Play()
											service2:Create(tbl31.cpw_alpha_ramp, TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { BackgroundColor3 = v101 }):Play()
											tbl31.cpw_hex_v.Text = fn36()

											if colorPickerState.currentTarget then
												service2:Create(colorPickerState.currentTarget.swatch, TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { BackgroundColor3 = v101 }):Play()

												if colorPickerState.currentTarget.callback then
													colorPickerState.currentTarget.callback(v101)
												end

												if colorPickerState.currentTarget.flag then
													tbl17.Flags[colorPickerState.currentTarget.flag] = v101
													tbl17.save_flags()
												end
											end
										end

										local function closeColorPicker()
											colorPickerState.isOpen = false
											colorPickerState.currentTarget = nil
											service2:Create(tbl31.cpw_sh, TweenInfo.new(0.2), { Transparency = 1 }):Play()
											local tween = service2:Create(tbl31.cpw, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(v85[25], 0, 0, 0) })

											tween.Completed:Once(function()
												tbl31.cpw.Visible = false
											end)

											tween:Play()
										end

										tbl31.closeColorPicker = closeColorPicker

										tbl31.openColorPicker = function(arg, arg2, arg3)
											if tbl31.cpw.Visible and colorPickerState.currentTarget and colorPickerState.currentTarget.swatch == arg then
												closeColorPicker()
												return
											end
											colorPickerState.isOpen = true
											colorPickerState.currentTarget = { swatch = arg, callback = arg2, flag = arg3 }
											local v101 = colorPickerState
											local v102 = colorPickerState
											local v103 = colorPickerState
											local v104, v105, v106 = arg.BackgroundColor3:ToHSV()
											v101.hue = v104
											v102.saturation = v105
											v103.value = v106
											colorPickerState.alpha = 1
											local absolutePosition = arg.AbsolutePosition
											local absolutePosition2 = tbl31["1"].AbsolutePosition
											tbl31.cpw.Position = UDim2.new(v85[25], absolutePosition.X - absolutePosition2.X - 150 - 8, 0, absolutePosition.Y - absolutePosition2.Y - (178 - arg.AbsoluteSize.Y) / 2)
											tbl31.cpw.Size = UDim2.new(0, 0, 0, 0)
											tbl31.cpw.Visible = v85[81]
											service2:Create(tbl31.cpw_sh, TweenInfo.new(0.2), { Transparency = 0.55 }):Play()
											service2:Create(tbl31.cpw, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(v85[25], 150, 0, 178) }):Play()
											fn37()
										end

										local flag25 = false
										local textButton = Instance.new("TextButton", tbl31.cpw_pal)
										textButton.AutoButtonColor = v85[36]
										textButton.ZIndex = 53
										textButton.BackgroundTransparency = 1
										textButton.Size = UDim2.new(1, 0, 1, 0)
										textButton.Text = ""
										textButton.Name = "Hit"

										local function fn38(arg)
											local absolutePosition = tbl31.cpw_pal.AbsolutePosition
											local absoluteSize = tbl31.cpw_pal.AbsoluteSize
											local v101 = v85[25]
											colorPickerState.saturation = math.clamp((arg.X - absolutePosition.X) / math.max(v85[86], absoluteSize.X), v101, 1)
											colorPickerState.value = v85[86] - math.clamp((arg.Y - absolutePosition.Y) / math.max(v85[86], absoluteSize.Y), 0, 1)
											fn37()
										end

										textButton.MouseButton1Down:Connect(function()
											flag25 = true
											fn38(UserInputService:GetMouseLocation())
										end)

										UserInputService.InputChanged:Connect(function(input)
											if flag25 and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
												fn38(input.Position)
											end
										end)

										UserInputService.InputEnded:Connect(function(input)
											if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
												flag25 = false
											end
										end)

										local flag26 = false
										local textButton2 = Instance.new("TextButton", tbl31.cpw_hue)
										textButton2.AutoButtonColor = false
										textButton2.ZIndex = 53
										textButton2.BackgroundTransparency = 1
										textButton2.Size = UDim2.new(v85[86], 0, 1, 0)
										textButton2.Text = ""
										textButton2.Name = "Hit"

										local function fn39(arg)
											local v101 = v85[25]
											colorPickerState.hue = math.clamp((arg.Y - tbl31.cpw_hue.AbsolutePosition.Y) / math.max(1, tbl31.cpw_hue.AbsoluteSize.Y), v101, 0.999)
											fn37()
										end

										textButton2.MouseButton1Down:Connect(function()
											flag26 = v85[81]
											fn39(UserInputService:GetMouseLocation())
										end)

										UserInputService.InputChanged:Connect(function(input)
											if flag26 and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
												fn39(input.Position)
											end
										end)

										UserInputService.InputEnded:Connect(function(input)
											if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
												flag26 = v85[36]
											end
										end)

										local flag27 = false
										local textButton3 = Instance.new("TextButton", tbl31.cpw_alpha)
										textButton3.AutoButtonColor = false
										textButton3.ZIndex = 53
										textButton3.BackgroundTransparency = 1
										textButton3.Size = UDim2.new(1, 0, 1, v85[25])
										textButton3.Text = ""
										textButton3.Name = "Hit"

										local function fn40(arg)
											colorPickerState.alpha = math.clamp((arg.X - tbl31.cpw_alpha.AbsolutePosition.X) / math.max(1, tbl31.cpw_alpha.AbsoluteSize.X), 0, 1)
											fn37()
										end

										textButton3.MouseButton1Down:Connect(function()
											flag27 = true
											fn40(UserInputService:GetMouseLocation())
										end)

										UserInputService.InputChanged:Connect(function(input)
											if flag27 and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
												fn40(input.Position)
											end
										end)

										UserInputService.InputEnded:Connect(function(input)
											if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
												flag27 = false
											end
										end)

										tbl31.cpw_hex_v.FocusLost:Connect(function()
											local match, v101, v102, v103 = tbl31.cpw_hex_v.Text:gsub("#", ""):upper():match("^(%x%x)(%x%x)(%x%x)(%x?%x?)$")

											if match then
												local v104 = tonumber
												local v105 = v85[47]
												local color = Color3.fromRGB(tonumber(match, 16), tonumber(v101, 16), v104(v102, v105))
												local v106 = colorPickerState
												local v107 = colorPickerState
												local v108 = colorPickerState
												local v109, v110, v111 = color:ToHSV()
												v106.hue = v109
												v107.saturation = v110
												v108.value = v111
												local v112 = colorPickerState
												local alpha

												if v103 ~= "" then
													alpha = tonumber(v103, 16) / 255
												else
													alpha = 1
												end

												v112.alpha = alpha
											end

											fn37()
										end)

										UserInputService.InputBegan:Connect(function(input)
											if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
												if tbl31.cpw.Visible and colorPickerState.isOpen and colorPickerState.currentTarget then
													local position = input.Position
													local absolutePosition = tbl31.cpw.AbsolutePosition
													local absoluteSize = tbl31.cpw.AbsoluteSize
													local absolutePosition2 = colorPickerState.currentTarget.swatch.AbsolutePosition
													local absoluteSize2 = colorPickerState.currentTarget.swatch.AbsoluteSize

													if not (position.X >= absolutePosition.X and position.X <= absolutePosition.X + absoluteSize.X and position.Y >= absolutePosition.Y and position.Y <= absolutePosition.Y + absoluteSize.Y) and not (position.X >= absolutePosition2.X - 8 and position.X <= absolutePosition2.X + absoluteSize2.X + 8 and position.Y >= absolutePosition2.Y - 8 and position.Y <= absolutePosition2.Y + absoluteSize2.Y + 8) then
														closeColorPicker()
													end
												end
											end
										end)

										tbl31["2b"] = Instance.new(v85[93], tbl31["2"])
										tbl31["2b"][v85[66]] = 0
										tbl31["2b"][v85[111]] = Color3.fromRGB(27, 27, v85[16])
										tbl31["2b"].Size = UDim2.new(1, -158, 0, 22)
										tbl31["2b"].Position = UDim2.new(0, 158, 0, 62)
										tbl31["2b"].Name = "breadcrumb"
										tbl31["2b"].BackgroundTransparency = 1
										tbl31["2b"]:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
										tbl31["2c"] = Instance.new("ImageLabel", tbl31["2b"])
										tbl31["2c"].BorderSizePixel = 0
										tbl31["2c"][v85[110]] = Enum.ScaleType.Fit
										local icon = tbl17:GetIcon("chevron-right")
										local n2c = tbl31["2c"]

										if icon then
											n2c.Image = icon.Url
											n2c.ImageRectOffset = icon.ImageRectOffset
											n2c.ImageRectSize = icon.ImageRectSize
										end

										tbl31["2c"][v85[142]] = UDim2.new(v85[25], v85[76], 0, v85[76])
										tbl31["2c"].BackgroundTransparency = 1
										tbl31["2c"][v85[104]] = "IMG_BreadcrumbIcon"
										tbl31["2c"].Position = UDim2.new(v85[25], 8, 0, v85[194])
										tbl31["2c"]:SetAttribute("fadeOriginal_ImageTransparency", 0)
										tbl31["2c"]:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
										tbl31["2d"] = Instance.new(v85[94], tbl31["2b"])
										tbl31["2d"][v85[126]] = v85[82]
										tbl31["2d"][v85[102]] = Enum.TextXAlignment.Left
										tbl31["2d"][v85[69]] = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
										tbl31["2d"].TextColor3 = Color3.fromRGB(143, 143, 154)
										tbl31["2d"].BackgroundTransparency = 1
										tbl31["2d"].Size = UDim2.new(v85[25], 48, 0, 22)
										tbl31["2d"].Text = "Blatant"
										tbl31["2d"].Name = "Section"
										tbl31["2d"].Position = UDim2.new(0, 25, v85[25], v85[25])
										tbl31["2d"]:SetAttribute(v85[14], v85[25])
										tbl31["2d"]:SetAttribute(v85[150], 1)
										tbl31["2e"] = Instance.new("TextLabel", tbl31["2b"])
										tbl31["2e"][v85[126]] = 18
										tbl31["2e"].FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
										tbl31["2e"].TextColor3 = Color3.fromRGB(106, 106, 117)
										tbl31["2e"].BackgroundTransparency = 1
										tbl31["2e"][v85[142]] = UDim2.new(v85[25], 25, 0, 26)
										tbl31["2e"][v85[115]] = ""
										tbl31["2e"].Name = "Arrow"
										tbl31["2e"].Position = UDim2.new(0, 72, 0, -4)
										tbl31["2e"]:SetAttribute(v85[14], 0)
										tbl31["2e"]:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
										tbl31["2f"] = Instance.new("ImageLabel", tbl31["2e"])
										tbl31["2f"].BorderSizePixel = 0
										tbl31["2f"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
										tbl31["2f"].Image = "rbxassetid://10709768347"
										tbl31["2f"].Size = UDim2.new(v85[25], 13, 0, 13)
										tbl31["2f"][v85[197]] = 1
										tbl31["2f"].Position = UDim2.new(0.28, 0, 0.30769, 0)
										tbl31["2f"]:SetAttribute("fadeOriginal_ImageTransparency", 0)
										tbl31["2f"]:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
										tbl31["31"] = Instance.new("TextLabel", tbl31["2b"])
										tbl31["31"].TextSize = 12
										tbl31["31"].TextXAlignment = Enum.TextXAlignment.Left
										tbl31["31"].FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
										tbl31["31"].TextColor3 = Color3.fromRGB(207, 207, 216)
										tbl31["31"][v85[197]] = 1
										tbl31["31"].Size = UDim2.new(0, 120, v85[25], 22)
										tbl31["31"][v85[115]] = "Automation"
										tbl31["31"].Name = "Element"
										tbl31["31"][v85[189]] = UDim2.new(0, 91, 0, 0)
										tbl31["31"]:SetAttribute("fadeOriginal_TextTransparency", v85[25])
										tbl31["31"]:SetAttribute(v85[150], v85[86])
										tbl31["30"] = Instance.new("UIAspectRatioConstraint", tbl31["2f"])
										local n2d = tbl31["2d"]
										local n2e = tbl31["2e"]
										local n312 = tbl31["31"]

										local function fn41()
											local targetScale = tbl31._targetScale or 1

											if targetScale <= 0 then
												targetScale = 1
											end

											local n41 = math.max(math.ceil(n2d.TextBounds.X / targetScale), 1)
											n2d.Size = UDim2.new(0, n41, 0, 22)
											n2d.Position = UDim2.new(0, 25, 0, 0)
											local n42 = 25 + n41 + 2
											n2e.Position = UDim2.new(0, n42, 0, -4)
											local n43 = n42 + 20 + 4
											local v101 = v85[86]
											n312.Size = UDim2.new(0, math.max(math.ceil(n312.TextBounds.X / targetScale), v101), 0, 22)
											n312.Position = UDim2.new(0, n43, 0, v85[25])
										end

										n2d:GetPropertyChangedSignal("TextBounds"):Connect(fn41)
										n312:GetPropertyChangedSignal("TextBounds"):Connect(fn41)
										task.defer(fn41)
										tbl31["32"] = Instance.new("TextLabel", tbl31["2"])
										tbl31["32"].TextSize = 13
										tbl31["32"].TextXAlignment = Enum.TextXAlignment.Left
										tbl31["32"][v85[69]] = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
										tbl31["32"].TextColor3 = Color3.fromRGB(243, v85[133], 247)
										tbl31["32"].BackgroundTransparency = 1
										tbl31["32"][v85[142]] = UDim2.new(0, v85[80], v85[25], 16)
										tbl31["32"].Text = "Auto Parry"
										tbl31["32"].Name = "MainTitle"
										tbl31["32"].Position = UDim2.new(0, 166, v85[25], 92)
										tbl31["32"]:SetAttribute(v85[14], v85[25])
										tbl31["32"]:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
										tbl31["33"] = Instance.new("TextLabel", tbl31["2"])
										tbl31["33"].TextSize = 13
										tbl31["33"].TextXAlignment = Enum.TextXAlignment.Left
										tbl31["33"].FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
										tbl31["33"].TextColor3 = Color3.fromRGB(243, 243, v85[73])
										tbl31["33"][v85[197]] = 1
										tbl31["33"].Size = UDim2.new(0, 200, 0, 16)
										tbl31["33"].Text = "Extras"
										tbl31["33"].Name = "ExtraTitle"
										tbl31["33"].Position = UDim2.new(v85[25], 444, 0, 92)
										tbl31["33"]:SetAttribute("fadeOriginal_TextTransparency", 0)
										tbl31["33"]:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
										local UserInputService2 = game:GetService("UserInputService")
										local n1 = tbl31["1"]
										local n42 = tbl31["4"]
										local tween = service2:Create(n42, TweenInfo.new(v85[12], Enum.EasingStyle.Back, Enum.EasingDirection.InOut), { Scale = 1 })
										local tween2 = service2:Create(n42, TweenInfo.new(0.65, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), { Scale = 0 })

										UserInputService2.InputBegan:Connect(function(input, gameProcessed)
											if gameProcessed then
												return
											end

											if input.KeyCode == Enum.KeyCode.RightControl or input.KeyCode == Enum.KeyCode.Insert or input.KeyCode == Enum.KeyCode.RightAlt or input.KeyCode == Enum.KeyCode.LeftAlt then
												if n1.Enabled then
													tween2:Play()
													tween2.Completed:Wait()
													n1.Enabled = false
												else
													n1.Enabled = true
													tween:Play()
												end
											end
										end)

										local n210 = tbl31["2"]
										local flag28 = v85[36]
										local position = nil
										local position2 = nil

										if not (n25 < 7201) then
											n210.Active = true
											n210.Selectable = true

											local function fn42(arg)
												flag28 = v85[81]
												position = arg.Position
												position2 = n210.Position
											end

											local function fn43()
												flag28 = false
											end

											n210.InputBegan:Connect(function(input)
												if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
													fn42(input)
												end
											end)

											n210.InputEnded:Connect(function(input)
												if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
													fn43()
												end
											end)

											UserInputService2.InputChanged:Connect(function(input)
												if flag28 and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
													local n41 = input.Position - position
													n210.Position = UDim2.new(position2.X.Scale, position2.X.Offset + n41.X, position2.Y.Scale, position2.Y.Offset + n41.Y)
												end
											end)

											local function fn44(arg, arg2)
												local tween3 = service2:Create(arg, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), arg2)
												tween3:Play()
												return tween3
											end

											tbl31["2a"].MouseButton1Click:Connect(function()
												local ef = tbl31.ef
												ef.Visible = not ef.Visible

												if ef.Visible then
													if tbl31.RefreshPresets then
														tbl31.RefreshPresets()
														local size = ef.Size
														ef.Size = UDim2.new(0, 236, 0, 0)
														fn44(ef, { Size = size })
													else
														fn44(ef, { Size = UDim2.new(0, 236, 0, 490) })
													end
												else
													fn44(ef, { Size = UDim2.new(0, 0, 0, v85[25]) })
												end
											end)

											local n242 = tbl31["24"]
											local v101 = tbl31[v85[46]]
											local n252 = tbl31["25"]
											local n41 = 0
											local scrollingFrame = Instance.new("ScrollingFrame", tbl31["2"])
											scrollingFrame.BorderSizePixel = 0
											scrollingFrame.BackgroundTransparency = v85[86]
											scrollingFrame.Size = UDim2.new(v85[25], 264, 0, 322)
											scrollingFrame.Position = UDim2.new(0, 166, 0, 118)
											scrollingFrame.ScrollBarThickness = 2
											scrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(80, 80, v85[35])
											scrollingFrame.ClipsDescendants = true
											scrollingFrame.Visible = v85[36]
											scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, v85[25])
											scrollingFrame.Name = "SearchScrollLeft"
											local uiListLayout2 = Instance.new("UIListLayout", scrollingFrame)
											uiListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
											uiListLayout2.Padding = UDim.new(0, v85[136])
											local scrollingFrame2 = Instance.new("ScrollingFrame", tbl31["2"])
											scrollingFrame2.BorderSizePixel = v85[25]
											scrollingFrame2.BackgroundTransparency = 1
											scrollingFrame2.Size = UDim2.new(0, 264, 0, 322)
											scrollingFrame2.Position = UDim2.new(0, 444, 0, 118)
											scrollingFrame2.ScrollBarThickness = 2
											scrollingFrame2.ScrollBarImageColor3 = Color3.fromRGB(80, 80, v85[35])
											scrollingFrame2.ClipsDescendants = true
											scrollingFrame2.Visible = v85[36]
											scrollingFrame2.CanvasSize = UDim2.new(0, 0, 0, 0)
											scrollingFrame2.Name = "SearchScrollRight"
											local uiListLayout3 = Instance.new("UIListLayout", scrollingFrame2)
											uiListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
											uiListLayout3.Padding = UDim.new(0, v85[136])

											uiListLayout2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
												scrollingFrame.CanvasSize = UDim2.new(0, 0, v85[25], uiListLayout2.AbsoluteContentSize.Y)
											end)

											uiListLayout3:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
												scrollingFrame2.CanvasSize = UDim2.new(0, 0, 0, uiListLayout3.AbsoluteContentSize.Y)
											end)

											local function fn45(arg)
												local label = arg:FindFirstChild("Label", true)
												if label and label:IsA(v85[94]) then
													return label.Text
												end
												return arg.Name
											end

											n242.Focused:Connect(function()
												service2:Create(n252, TweenInfo.new(0.2), { Transparency = 0 }):Play()
											end)

											n242.FocusLost:Connect(function()
												service2:Create(n252, TweenInfo.new(0.2), { Transparency = 1 }):Play()
											end)

											n242:GetPropertyChangedSignal("Text"):Connect(function()
												local v102 = string.lower(n242.Text)
												n41 += 1

												if v102 == "" then
													v101.Visible = true
													scrollingFrame.Visible = false
													scrollingFrame2.Visible = v85[36]

													for _, v103 in tbl31.Tabs, nil, nil do
														local allContainers = v103.AllContainers

														if not allContainers then
															allContainers = { { container = v103.ContentContainer, section = v103.Section or "left" } }
														end

														for _, v104 in allContainers, nil, nil do
															if v104.container.Parent ~= tbl31["2"] then
																v104.container.Parent = tbl31["2"]
															end

															for _, v105 in v104.container:GetChildren() do
																if v105:IsA("GuiObject") then
																	v105.Visible = true
																end
															end

															local section = v104.section
															v104.container.Visible = v103 == tbl31.CurrentTabs[section]
															v104.container.Position = UDim2.new(v85[25], section == "right" and 444 or 166, v85[25], 118)
														end
													end
												else
													v101.Visible = false
													scrollingFrame.Visible = v85[81]
													scrollingFrame2.Visible = v85[81]
													local layoutOrder = 0
													local layoutOrder2 = 0

													for _, v103 in tbl31.Tabs, nil, nil do
														local allContainers = v103.AllContainers
														local tbl34

														if allContainers then
															tbl34 = allContainers
														else
															tbl34 = { { container = v103.ContentContainer, section = v103.Section or "left" } }
														end

														for _, v104 in tbl34, nil, nil do
															local flag29 = false

															for _, v105 in v104.container:GetChildren() do
																if v105:IsA("GuiObject") then
																	local v106 = fn45(v105)

																	if string.find(string.lower(v106), v102) then
																		v105.Visible = true
																		flag29 = true
																	else
																		v105.Visible = false
																	end
																end
															end

															if flag29 then
																if v104.section == "right" then
																	v104.container.Parent = scrollingFrame2
																	v104.container.LayoutOrder = layoutOrder
																	layoutOrder += v85[86]
																else
																	v104.container.Parent = scrollingFrame
																	v104.container.LayoutOrder = layoutOrder2
																	layoutOrder2 += 1
																end

																v104.container.Position = UDim2.new(v85[25], v85[25], v85[25], 0)
																v104.container.Visible = true
															else
																v104.container.Visible = v85[36]

																if v104.container.Parent ~= tbl31["2"] then
																	v104.container.Parent = tbl31["2"]
																end
															end
														end
													end
												end
											end)

											local v102 = tbl31[v85[4]]
											local fc = tbl31.fc
											local n100 = tbl31["100"]
											local ff = tbl31.ff
											local f7 = tbl31.f7
											local n282 = tbl31["28"]
											local TweenService = game:GetService("TweenService")
											local tbl34 = { "Legit PvP", "Rage HVH" }
											local color = Color3.fromRGB(25, v85[160], 43)
											local color2 = Color3.fromRGB(31, 30, v85[52])
											local color3 = Color3.fromRGB(31, 30, v85[52])
											local color4 = Color3.fromRGB(150, 150, 161)
											local color5 = Color3.fromRGB(243, 243, v85[73])
											local color6 = Color3.fromRGB(120, 120, 131)
											local color7 = Color3.fromRGB(150, 150, 161)
											local color8 = Color3.fromRGB(120, 120, 131)
											local color9 = Color3.fromRGB(224, 82, 76)
											local color10 = Color3.fromRGB(125, 109, v85[73])
											local color11 = Color3.fromRGB(150, 150, 161)
											local color12 = Color3.fromRGB(125, 109, 247)
											local tbl35 = {}
											local v103 = nil
											local flag29 = false
											local flag30 = true
											local imageLabel2 = Instance.new("ImageLabel")
											imageLabel2.Name = "indicator"
											imageLabel2.BackgroundTransparency = 1
											imageLabel2.BorderSizePixel = 0
											imageLabel2.Size = UDim2.new(0, 3, v85[25], 18)
											imageLabel2.Image = "rbxassetid://90362801488029"
											imageLabel2.ImageColor3 = color10
											imageLabel2.ZIndex = 62

											local function fn46()
												local tbl36 = {}

												for k, v104 in tbl17.Flags, nil, nil do
													if type(v104) == "table" then
														local tbl37 = {}

														for k2, v105 in v104, nil, nil do
															tbl37[k2] = v105
														end

														tbl36[k] = tbl37
													else
														tbl36[k] = v104
													end
												end

												return tbl36
											end

											local function fn47(arg)
												if not arg then
													return
												end

												for k in pairs(tbl17.Flags) do
													if k ~= "__lastPreset" then
														tbl17.Flags[k] = nil
													end
												end

												for k, v104 in arg, nil, nil do
													tbl17.Flags[k] = v104
												end
											end

											local function fn48(arg)
												local tbl36 = {}

												for k, v104 in pairs(arg) do
													if k ~= "__lastPreset" then
														if typeof(v104) == "Color3" then
															tbl36[k] = { __type = "Color3", R = v104.R, G = v104.G, B = v104.B }
														else
															tbl36[k] = v104
														end
													end
												end

												return tbl36
											end

											local function fn49(arg)
												if not arg then
													return {}
												end
												local tbl36 = {}

												for k, v104 in pairs(arg) do
													if type(v104) == "table" and v104.__type == "Color3" then
														tbl36[k] = Color3.new(v104.R or 0, v104.G or v85[25], v104.B or 0)
													elseif type(v104) == "table" and v104.R ~= nil and v104.G ~= nil and v104.B ~= nil and v104.A == nil and v104.__type == nil and v104.keyName == nil then
														tbl36[k] = Color3.new(v104.R, v104.G, v104.B)
													else
														tbl36[k] = v104
													end
												end

												return tbl36
											end

											local function fn50()
												if flag30 then
													return
												end

												for _, v104 in tbl35, nil, nil do
													local v105 = fn48(v104.flags or {})
													tbl17:save_preset(v104.name, v105)
												end

												if v103 then
													tbl17.Flags.__lastPreset = v103.name
												else
													tbl17.Flags.__lastPreset = nil
												end

												tbl17.save_flags()
											end

											local function refreshPresets()
												local v104 = string.lower(fc.Text or "")
												local tbl36 = {}

												for _, v105 in tbl35, nil, nil do
													if v104 == "" or string.find(string.lower(v105.name), v104, 1, true) then
														table.insert(tbl36, v105)
													end
												end

												if flag29 then
													table.sort(tbl36, function(arg, arg2)
														return string.lower(arg.name) < string.lower(arg2.name)
													end)
												end

												for _, v105 in tbl35, nil, nil do
													v105.row.Visible = false
												end

												for k, v105 in tbl36, nil, nil do
													v105.row.Visible = true
													v105.row.Position = UDim2.new(0, 14, v85[25], 98 + (k - 1) * 42)
												end

												v102.Size = UDim2.new(v85[25], 236, 0, math.max(300, 98 + #tbl36 * 42 + 14))
											end

											tbl31.RefreshPresets = refreshPresets

											local function fn51()
												for _, v104 in tbl35, nil, nil do
													local flag31 = v104 == v103
													TweenService:Create(v104.row, TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { BackgroundTransparency = flag31 and 0 or v85[38], BackgroundColor3 = flag31 and color3 or color }):Play()
													v104.nameLabel.FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", flag31 and Enum.FontWeight.SemiBold or Enum.FontWeight.Medium, Enum.FontStyle.Normal)
													v104.nameLabel.TextColor3 = flag31 and color5 or color4
													v104.editIcon.ImageColor3 = flag31 and color7 or color6
													v104.deleteIcon.ImageColor3 = flag31 and color9 or color8
												end

												if v103 and imageLabel2.Parent ~= nil then
													imageLabel2.Parent = v103.row
													imageLabel2.Position = UDim2.new(v85[25], v85[25], v85[25], 8)
													n282.Text = v103.name
												end
											end

											local function fn52(arg)
												if v103 == arg then
													return
												end

												if v103 then
													v103.flags = fn46()
												end

												v103 = arg
												tbl31.ApplyingPreset = true

												for k, flag31 in pairs(tbl17.Flags) do
													if k ~= "__lastPreset" and type(flag31) == "boolean" then
														tbl17.Flags[k] = false
													end
												end

												for _, widget in ipairs(tbl31.Widgets) do
													widget()
												end

												fn47(arg.flags)

												for _, widget in ipairs(tbl31.Widgets) do
													widget()
												end

												tbl31.ApplyingPreset = false
												fn51()
												fn50()
											end

											local function fn53(text2, flags, arg)
												local frame = Instance.new("Frame")
												frame.Name = "Config_" .. text2:gsub("%s", "_")
												frame.Parent = v102
												frame.BackgroundTransparency = v85[38]
												frame.BackgroundColor3 = color
												frame.BorderSizePixel = 0
												frame.Position = UDim2.new(v85[25], v85[122], 0, 98)
												frame.Size = UDim2.new(0, 208, 0, 34)
												frame.ZIndex = 61
												Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)
												local textLabel = Instance.new("TextLabel")
												textLabel.Name = "Name"
												textLabel.Parent = frame
												textLabel.BackgroundTransparency = v85[86]
												textLabel.Position = UDim2.new(0, 14, 0, 0)
												textLabel.Size = UDim2.new(v85[25], 130, 0, 34)
												textLabel.ZIndex = 61
												textLabel.FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
												textLabel.Text = text2
												textLabel.TextColor3 = color4
												textLabel.TextSize = 12
												textLabel.TextXAlignment = Enum.TextXAlignment.Left
												textLabel.TextTruncate = Enum.TextTruncate.AtEnd
												local imageLabel3 = Instance.new("ImageLabel")
												imageLabel3.Name = "IMG_Edit"
												imageLabel3.Parent = frame
												imageLabel3.BackgroundTransparency = 1
												imageLabel3.Position = UDim2.new(0, 150, 0, 9)
												imageLabel3.Size = UDim2.new(0, 16, 0, 16)
												imageLabel3.ZIndex = 61
												imageLabel3.Image = "rbxassetid://131819263664272"
												imageLabel3.ImageColor3 = color6
												imageLabel3.ScaleType = Enum.ScaleType.Fit
												local imageLabel4 = Instance.new("ImageLabel")
												imageLabel4.Name = "IMG_Delete"
												imageLabel4.Parent = frame
												imageLabel4.BackgroundTransparency = v85[86]
												imageLabel4.Position = UDim2.new(0, 178, 0, 9)
												imageLabel4.Size = UDim2.new(0, v85[47], 0, 16)
												imageLabel4.ZIndex = 61
												imageLabel4.Image = "rbxassetid://126010725826757"
												imageLabel4.ImageColor3 = color8
												imageLabel4.ScaleType = Enum.ScaleType.Fit
												local tbl36 = { name = text2 }
												tbl36.flags = flags or fn46()
												tbl36.row = frame
												tbl36.nameLabel = textLabel
												tbl36.editIcon = imageLabel3
												tbl36.deleteIcon = imageLabel4
												table.insert(tbl35, tbl36)
												local textButton4 = Instance.new("TextButton")
												textButton4.Name = "Hit_Select"
												textButton4.Parent = frame
												textButton4.AutoButtonColor = false
												textButton4.BackgroundTransparency = 1
												textButton4.Size = UDim2.new(v85[25], 144, 1, 0)
												textButton4.Position = UDim2.new(0, 0, 0, 0)
												textButton4.ZIndex = 62
												textButton4.Text = ""

												textButton4.MouseEnter:Connect(function()
													if tbl36 ~= v103 then
														local tbl37 = { BackgroundColor3 = color2 }
														TweenService:Create(frame, TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), tbl37):Play()
													end
												end)

												textButton4.MouseLeave:Connect(function()
													if tbl36 ~= v103 then
														local tbl37 = { BackgroundColor3 = color }
														TweenService:Create(frame, TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), tbl37):Play()
													end
												end)

												textButton4.MouseButton1Click:Connect(function()
													fn52(tbl36)
												end)

												local textButton5 = Instance.new("TextButton")
												textButton5.Name = "Hit_Edit"
												textButton5.Parent = frame
												textButton5.AutoButtonColor = false
												textButton5.BackgroundTransparency = 1
												textButton5.Size = UDim2.new(0, v85[160], 0, 24)
												textButton5.Position = UDim2.new(0, 146, 0, 5)
												textButton5.ZIndex = 63
												textButton5.Text = ""

												textButton5.MouseButton1Click:Connect(function()
													local textBox = Instance.new("TextBox")
													textBox.Parent = frame
													textBox.BackgroundColor3 = color3
													textBox.BorderSizePixel = 0
													textBox.Position = UDim2.new(0, 10, 0, 5)
													textBox.Size = UDim2.new(0, 132, v85[25], v85[160])
													textBox.ZIndex = 64
													textBox.FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
													textBox.Text = tbl36.name
													textBox.TextColor3 = color5
													textBox.TextSize = 12
													textBox.TextXAlignment = Enum.TextXAlignment.Left
													textBox.ClearTextOnFocus = false
													Instance.new(v85[127], textBox).CornerRadius = UDim.new(0, 6)
													textBox:CaptureFocus()

													textBox.FocusLost:Connect(function()
														local name = textBox.Text:gsub("^%s+", ""):gsub("%s+$", "")

														if name ~= "" then
															local name2 = tbl36.name
															tbl36.name = name
															textLabel.Text = name

															if tbl36 == v103 then
																n282.Text = name
															end

															if name2 ~= name then
																if n25 >= 7228 then
																	while true do
																	end
																else
																	pcall(function()
																		delfile("Aries/Presets/" .. name2 .. v85[190])
																	end)
																end
															end
														end

														textBox:Destroy()
														refreshPresets()
														fn50()
													end)
												end)

												local textButton6 = Instance.new("TextButton")
												textButton6.Name = "Hit_Delete"
												textButton6.Parent = frame
												textButton6.AutoButtonColor = false
												textButton6.BackgroundTransparency = 1
												textButton6.Size = UDim2.new(0, 24, 0, v85[160])
												textButton6.Position = UDim2.new(v85[25], 174, v85[25], 5)
												textButton6.ZIndex = 63
												textButton6.Text = ""

												textButton6.MouseButton1Click:Connect(function()
													if #tbl35 <= 1 then
														return
													end

													for k, v104 in tbl35, nil, nil do
														if v104 == tbl36 then
															table.remove(tbl35, k)
															break
														end
													end

													pcall(function()
														delfile("Aries/Presets/" .. tbl36.name .. ".json")
													end)

													if imageLabel2.Parent == frame then
														imageLabel2.Parent = nil
													end

													frame:Destroy()

													if v103 == tbl36 then
														v103 = nil

														if tbl35[1] then
															fn52(tbl35[1])
														else
															n282.Text = "Config 1"
														end
													end

													refreshPresets()
													fn50()
												end)

												if arg then
													v103 = tbl36
												end

												refreshPresets()
												fn51()
												fn50()
												return tbl36
											end

											local v104 = tbl17:list_presets()

											if #v104 > 0 then
												table.sort(v104, function(arg, arg2)
													return arg < arg2
												end)

												for _, v105 in v104, nil, nil do
													local v106 = tbl17:load_preset(v105)

													if v106 then
														fn53(v105, fn49(v106), false)
													end
												end
											else
												for k, v105 in tbl34, nil, nil do
													fn53(v105, nil, k == 1)
												end
											end

											flag30 = false

											fc:GetPropertyChangedSignal("Text"):Connect(function()
												refreshPresets()
											end)

											n100.MouseButton1Click:Connect(function()
												flag29 = not flag29
												TweenService:Create(ff, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { ImageColor3 = flag29 and color12 or color11 }):Play()
												refreshPresets()
											end)

											f7.MouseButton1Click:Connect(function()
												local str10 = "Config " .. tostring(#tbl35 + 1)
												local v105 = v85[86]

												local function fn54(arg)
													for _, v106 in tbl35, nil, nil do
														if v106.name == arg then
															return true
														end
													end

													return false
												end

												local str11 = str10

												while fn54(str11) do
													v105 += v85[86]
													str11 = str10 .. " (" .. v105 .. ")"
												end

												local v106 = fn53(str11, fn46(), true)
												fn52(v106)
											end)

											refreshPresets()
											fn51()
											return tbl31
										end

										while true do
										end
									end

									tbl17.Create_Tab = function(arg, arg2)
										local tbl32 = { Hover = false, Active = false, Section = "left" }

										local v92 = tbl17:validate({
											name = "Preview Tab",
											section_name = "Fallback",
											section = "left",
											icon = "rbxassetid://83752373575368",
										}, arg2 or {})

										tbl32.Section = string.lower(v92.section or "left")
										table.insert(tbl31.Tabs, tbl32)

										if not tbl31.CurrentTabs[tbl32.Section] then
											tbl31.CurrentTabs[tbl32.Section] = tbl32
										end

										if tbl31.CurrentTabs[tbl32.Section] == tbl32 then
											if tbl32.Section == "right" then
												tbl31["33"].Text = v92.name
											else
												tbl31["31"].Text = v92.section_name or "Fallback"
												tbl31["2d"].Text = v92.name
												tbl31["32"][v85[115]] = v92.name
											end
										end

										tbl32["12"] = Instance.new("Frame", tbl31.TabContainer)
										tbl32["12"].BorderSizePixel = 0
										tbl32["12"].BackgroundColor3 = Color3.fromRGB(21, 21, 26)
										tbl32["12"][v85[142]] = UDim2.new(1, v85[25], 0, 25)
										tbl32["12"][v85[189]] = UDim2.new(0, 0, 0, v85[35])
										tbl32["12"][v85[104]] = v92.name
										tbl32["12"].BackgroundTransparency = 1
										tbl32["12"]:SetAttribute("fadeOriginal_BackgroundTransparency", v85[86])
										tbl32["13"] = Instance.new("ImageLabel", tbl32["12"])
										tbl32["13"].ZIndex = 2
										tbl32["13"][v85[66]] = 0
										tbl32["13"].ScaleType = Enum.ScaleType.Fit
										tbl32["13"].ImageColor3 = Color3.fromRGB(143, 143, 154)
										local customIcon = tbl17:GetCustomIcon(v92.icon)

										if customIcon then
											local n132 = tbl32["13"]
											n132.Image = customIcon.Url
											n132.ImageRectOffset = customIcon.ImageRectOffset or Vector2.zero
											n132.ImageRectSize = customIcon.ImageRectSize or Vector2.zero
										end

										tbl32["13"].Size = UDim2.new(0, v85[122], 0, 14)
										tbl32["13"].BackgroundTransparency = v85[86]
										tbl32["13"].Name = "IMG_Icon"
										tbl32["13"].Position = UDim2.new(0, 22, 0, 6)
										tbl32["13"]:SetAttribute("fadeOriginal_ImageTransparency", 0)
										tbl32["13"]:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
										tbl32["14"] = Instance.new(v85[94], tbl32["12"])
										tbl32["14"][v85[61]] = 2
										tbl32["14"][v85[126]] = 12
										tbl32["14"].TextXAlignment = Enum.TextXAlignment.Left
										tbl32["14"].FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
										tbl32["14"].TextColor3 = Color3.fromRGB(143, 143, 154)
										tbl32["14"][v85[197]] = 1
										tbl32["14"].Size = UDim2.new(1, -50, 0, v85[49])
										tbl32["14"][v85[115]] = v92.name
										tbl32["14"][v85[104]] = "Label"
										tbl32["14"].Position = UDim2.new(v85[25], 43, 0, v85[25])
										tbl32["14"].TextScaled = true
										local uiTextSizeConstraint = Instance.new("UITextSizeConstraint", tbl32["14"])
										uiTextSizeConstraint.MaxTextSize = v85[82]
										uiTextSizeConstraint.MinTextSize = 7
										tbl32["14"]:SetAttribute("fadeOriginal_TextTransparency", 0)
										tbl32["14"]:SetAttribute(v85[150], 1)
										tbl32["15"] = Instance.new("TextButton", tbl32["12"])
										tbl32["15"].AutoButtonColor = false
										tbl32["15"].ZIndex = 3
										tbl32["15"][v85[197]] = 1
										tbl32["15"][v85[142]] = UDim2.new(1, 0, 1, 0)
										tbl32["15"][v85[115]] = ""
										tbl32["15"].Name = "Hit"
										tbl32["15"]:SetAttribute("fadeOriginal_TextTransparency", 0)
										tbl32["15"]:SetAttribute("fadeOriginal_BackgroundTransparency", v85[86])

										if tbl31.CurrentTabs[tbl32.Section] == tbl32 then
											if tbl32.Section == "right" then
												tbl31["33"].Text = v92.name
											else
												tbl31["31"].Text = v92.section_name or "Fallback"
												tbl31["2d"].Text = v92.name
												tbl31["32"].Text = v92.name
											end
										end

										tbl32.ContentContainer = Instance.new("Frame", tbl31["2"])
										tbl32.ContentContainer.BorderSizePixel = 0
										tbl32.ContentContainer.BackgroundColor3 = Color3.fromRGB(14, v85[76], 20)
										tbl32.ContentContainer.AutomaticSize = Enum.AutomaticSize.Y
										tbl32.ContentContainer.Size = UDim2.new(v85[25], 264, 0, 0)
										tbl32.ContentContainer.Position = UDim2.new(0, tbl32.Section == "right" and 444 or 166, 0, 118)
										tbl32.ContentContainer.Name = v92.name .. "_content"
										tbl32.ContentContainer:SetAttribute("fadeOriginal_BackgroundTransparency", 0)
										tbl32.ContentContainer.Visible = tbl31.CurrentTabs[tbl32.Section] == tbl32
										Instance.new(v85[127], tbl32.ContentContainer).CornerRadius = UDim.new(0, 10)
										Instance.new("UIShadow", tbl32.ContentContainer):SetAttribute(v85[116], 0.55)
										local layoutOrder = Enum.SortOrder.LayoutOrder
										Instance.new("UIListLayout", tbl32.ContentContainer).SortOrder = layoutOrder
										tbl32.AllContainers = { { container = tbl32.ContentContainer, section = tbl32.Section } }

										tbl32.Activate = function()
											if not tbl32.Active then
												local tbl33 = {}

												for _, v93 in tbl32.AllContainers, nil, nil do
													tbl33[v93.section] = true
												end

												for k in pairs(tbl33) do
													if tbl31.CurrentTabs[k] ~= nil and tbl31.CurrentTabs[k] ~= tbl32 then
														tbl31.CurrentTabs[k]:Deactivate()
													end
												end

												tbl32.Active = true

												for _, v93 in tbl32.AllContainers, nil, nil do
													tbl31.CurrentTabs[v93.section] = tbl32
													v93.container.Visible = v85[81]
												end
											end
										end

										tbl32.Deactivate = function()
											if tbl32.Active then
												tbl32.Active = false
												tbl32.Hover = false

												for _, v93 in tbl32.AllContainers, nil, nil do
													v93.container.Visible = false
												end
											end
										end

										tbl32["15"].MouseEnter:Connect(function()
											tbl32.Hover = true

											if not tbl32.Active then
												if not tbl31.e.Visible then
													tbl31[v85[187]].Visible = true
												end

												tbl32["13"].ImageColor3 = Color3.fromRGB(200, v85[80], v85[80])
												tbl32["14"].TextColor3 = Color3.fromRGB(255, 255, v85[67])
											end
										end)

										tbl32["15"].MouseLeave:Connect(function()
											local v93 = tbl31.CurrentTabs[tbl32.Section]

											if v93 and v93 ~= tbl32 then
												v93.Active = false
												v93["13"].ImageColor3 = Color3.fromRGB(v85[56], 143, 154)
												v93["14"].TextColor3 = Color3.fromRGB(143, 143, 154)
											end

											tbl32.Hover = false

											if not tbl32.Active then
												tbl32["13"].ImageColor3 = Color3.fromRGB(143, 143, 154)
												tbl32["14"].TextColor3 = Color3.fromRGB(v85[56], 143, v85[198])
											end
										end)

										tbl32["15"].MouseButton1Click:Connect(function()
											local tbl33 = {}

											for _, v93 in tbl32.AllContainers, nil, nil do
												tbl33[v93.section] = true
											end

											for k in pairs(tbl33) do
												local v93 = tbl31.CurrentTabs[k]

												if v93 and v93 ~= tbl32 then
													v93.Active = false

													if v93.AllContainers then
														for _, v94 in v93.AllContainers, nil, nil do
															v94.container.Visible = false
														end
													else
														v93.ContentContainer.Visible = false
													end

													v93["13"].ImageColor3 = Color3.fromRGB(143, 143, 154)
													v93["14"].TextColor3 = Color3.fromRGB(143, 143, 154)
												end
											end

											tbl32.Active = true

											for _, v93 in tbl32.AllContainers, nil, nil do
												v93.container.Visible = true
												tbl31.CurrentTabs[v93.section] = tbl32
											end

											tbl32["13"].ImageColor3 = Color3.fromRGB(255, 255, v85[67])
											tbl32["14"].TextColor3 = Color3.fromRGB(255, 255, 255)

											if not tbl31.e.Visible then
												tbl31[v85[187]].Visible = v85[81]
											end

											if tbl32.Section == "right" then
												tbl31["33"].Text = v92.name
											else
												tbl31["31"].Text = v92.section_name or "Fallback"
												tbl31["2d"].Text = v92.name
												tbl31["32"].Text = v92.name
											end

											local targetScale = tbl31._targetScale or 1

											if targetScale <= 0 then
												targetScale = 1
											end

											local y = tbl32["12"].AbsoluteSize.Y
											local y2 = tbl32["12"].AbsolutePosition.Y
											local y3 = tbl31["5"].AbsolutePosition.Y
											local n41 = (y2 - y3 + (y - tbl31.Indicator.AbsoluteSize.Y) / 2) / targetScale
											service2:Create(tbl31.Indicator, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(0, 0, 0, n41) }):Play()
											local e = tbl31.e
											local n42 = (y2 - y3 + (y - e.AbsoluteSize.Y) / 2) / targetScale
											service2:Create(e, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(v85[25], 8, 0, n42) }):Play()
										end)

										UserInputService.InputBegan:Connect(function(input, gameProcessed)
											if gameProcessed then
												return
											end

											if input.UserInputType == Enum.UserInputType.MouseButton1 then
												if tbl32.Hover then
													if n28(266) >= 651 then
														tbl32:Activate()
													else
														while true do
														end
													end
												end
											end
										end)

										if tbl31.CurrentTabs[tbl32.Section] == tbl32 then
											tbl32:Activate()
											tbl32["13"].ImageColor3 = Color3.fromRGB(255, 255, 255)
											tbl32["14"].TextColor3 = Color3.fromRGB(255, 255, 255)
										end

										tbl32.Create_Toggle = function(arg3, arg4)
											local activeKeybindToggle = { State = false, flag = arg4.flag, Keybind = nil, WaitingForKey = false }
											activeKeybindToggle["70"] = Instance.new("Frame", arg4.tab and arg4.tab.ContentContainer or tbl32.ContentContainer)
											activeKeybindToggle["70"].BackgroundColor3 = Color3.fromRGB(39, 39, 47)
											activeKeybindToggle["70"].Size = UDim2.new(1, 0, v85[25], 38)
											activeKeybindToggle["70"][v85[104]] = "AutoTotem_enable"
											activeKeybindToggle["70"].LayoutOrder = 0
											activeKeybindToggle["70"].BackgroundTransparency = 1
											activeKeybindToggle["70"]:SetAttribute("staggerBase", UDim2.new(0, 0, 0, 0))
											activeKeybindToggle["70"]:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
											activeKeybindToggle["71"] = Instance.new(v85[94], activeKeybindToggle["70"])
											activeKeybindToggle["71"].TextSize = 12
											activeKeybindToggle["71"].TextXAlignment = Enum.TextXAlignment.Left
											activeKeybindToggle["71"][v85[69]] = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
											activeKeybindToggle["71"].TextColor3 = Color3.fromRGB(143, 143, 154)
											activeKeybindToggle["71"].BackgroundTransparency = 1
											activeKeybindToggle["71"][v85[142]] = UDim2.new(0, 200, 0, 38)
											activeKeybindToggle["71"].Text = arg4.name
											activeKeybindToggle["71"].Name = "Label"
											activeKeybindToggle["71"].Position = UDim2.new(0, 14, 0, v85[25])
											activeKeybindToggle["71"]:SetAttribute(v85[14], 0)
											activeKeybindToggle["71"]:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
											activeKeybindToggle["72"] = Instance.new("Frame", activeKeybindToggle["70"])
											activeKeybindToggle["72"].BorderSizePixel = 0
											activeKeybindToggle["72"].BackgroundColor3 = Color3.fromRGB(22, 23, 31)
											activeKeybindToggle["72"].AnchorPoint = Vector2.new(v85[86], 0.5)
											activeKeybindToggle["72"].AutomaticSize = Enum.AutomaticSize.X
											activeKeybindToggle["72"].Size = UDim2.new(0, 0, 0, 22)
											activeKeybindToggle["72"].Position = UDim2.new(1, -52, v85[62], v85[25])
											activeKeybindToggle["72"].Name = "KeybindBadge"
											activeKeybindToggle["72"]:SetAttribute("fadeOriginal_BackgroundTransparency", 0)
											activeKeybindToggle["72_c"] = Instance.new("UICorner", activeKeybindToggle["72"])
											activeKeybindToggle["72_c"].CornerRadius = UDim.new(0, 7)
											activeKeybindToggle["72_p"] = Instance.new("UIPadding", activeKeybindToggle["72"])
											activeKeybindToggle["72_p"].PaddingLeft = UDim.new(0, 6)
											activeKeybindToggle["72_p"].PaddingRight = UDim.new(v85[25], 6)
											activeKeybindToggle["72_max"] = Instance.new("UISizeConstraint", activeKeybindToggle["72"])
											activeKeybindToggle["72_max"].MaxSize = Vector2.new(60, 22)
											activeKeybindToggle["72_text"] = Instance.new("TextLabel", activeKeybindToggle["72"])
											activeKeybindToggle["72_text"].TextSize = 12
											activeKeybindToggle["72_text"].FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
											activeKeybindToggle["72_text"].TextColor3 = Color3.fromRGB(138, v85[124], v85[106])
											activeKeybindToggle["72_text"].BackgroundTransparency = 1
											activeKeybindToggle["72_text"].Size = UDim2.new(1, v85[25], 1, v85[25])
											activeKeybindToggle["72_text"][v85[115]] = "···"
											activeKeybindToggle["72_text"].Name = "Text"
											activeKeybindToggle["73"] = Instance.new("TextButton", activeKeybindToggle["70"])
											activeKeybindToggle["73"].AutoButtonColor = false
											activeKeybindToggle["73"][v85[61]] = 4
											activeKeybindToggle["73"].BackgroundTransparency = 1
											activeKeybindToggle["73"][v85[142]] = UDim2.new(0, 44, 0, 26)
											activeKeybindToggle["73"][v85[115]] = ""
											activeKeybindToggle["73"][v85[104]] = "Keybind_Hit"
											activeKeybindToggle["73"].Position = UDim2.new(1, -52, v85[62], v85[25])
											activeKeybindToggle["73"].AnchorPoint = Vector2.new(v85[86], v85[62])
											activeKeybindToggle["73"]:SetAttribute(v85[14], 0)
											activeKeybindToggle["73"]:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
											activeKeybindToggle["73_c"] = Instance.new("UICorner", activeKeybindToggle["73"])
											activeKeybindToggle["73_c"].CornerRadius = UDim.new(v85[25], 7)
											activeKeybindToggle["73_s"] = Instance.new("UIStroke", activeKeybindToggle["73"])
											activeKeybindToggle["73_s"].Transparency = 1
											activeKeybindToggle["73_s"][v85[162]] = Color3.fromRGB(125, 109, v85[73])
											activeKeybindToggle["74"] = Instance.new("Frame", activeKeybindToggle["70"])
											activeKeybindToggle["74"].BorderSizePixel = 0
											activeKeybindToggle["74"][v85[111]] = Color3.fromRGB(37, 37, 47)
											activeKeybindToggle["74"].AnchorPoint = Vector2.new(1, 0.5)
											activeKeybindToggle["74"].Size = UDim2.new(0, 30, 0, 17)
											activeKeybindToggle["74"].Position = UDim2.new(1, -12, 0.5, 0)
											activeKeybindToggle["74"].Name = "Toggle"
											activeKeybindToggle["74"]:SetAttribute("fadeOriginal_BackgroundTransparency", 0)
											activeKeybindToggle["75"] = Instance.new("UICorner", activeKeybindToggle["74"])
											activeKeybindToggle["75"].CornerRadius = UDim.new(1, 0)
											activeKeybindToggle["76"] = Instance.new(v85[93], activeKeybindToggle["74"])
											activeKeybindToggle["76"].BorderSizePixel = 0
											activeKeybindToggle["76"].BackgroundColor3 = Color3.fromRGB(64, 64, 76)
											activeKeybindToggle["76"].Size = UDim2.new(0, 13, 0, 13)
											activeKeybindToggle["76"].Position = UDim2.new(v85[25], 2, 0, v85[149])
											activeKeybindToggle["76"].Name = "Knob"
											activeKeybindToggle["76"]:SetAttribute("fadeOriginal_BackgroundTransparency", v85[25])
											activeKeybindToggle["77"] = Instance.new("UICorner", activeKeybindToggle["76"])
											activeKeybindToggle["77"].CornerRadius = UDim.new(1, 0)
											activeKeybindToggle["78"] = Instance.new("UIShadow", activeKeybindToggle["76"])
											activeKeybindToggle["78"]:SetAttribute(v85[116], 0.75)
											activeKeybindToggle["79"] = Instance.new("TextButton", activeKeybindToggle["70"])
											activeKeybindToggle["79"].AutoButtonColor = v85[36]
											activeKeybindToggle["79"].ZIndex = 2
											activeKeybindToggle["79"].BackgroundTransparency = 1
											activeKeybindToggle["79"].Size = UDim2.new(v85[86], v85[25], 1, 0)
											activeKeybindToggle["79"][v85[115]] = ""
											activeKeybindToggle["79"][v85[104]] = "Hit"
											activeKeybindToggle["79"]:SetAttribute("fadeOriginal_TextTransparency", v85[25])
											activeKeybindToggle["79"]:SetAttribute("fadeOriginal_BackgroundTransparency", 1)

											if tbl17.Flags[activeKeybindToggle.flag] then
												service2:Create(activeKeybindToggle["74"], TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(125, 109, 247) }):Play()

												service2:Create(activeKeybindToggle["76"], TweenInfo.new(0.2), {
													Position = UDim2.new(0, v85[76], v85[25], v85[149]),
													BackgroundColor3 = Color3.fromRGB(v85[67], 255, v85[67]),
												}):Play()
											else
												service2:Create(activeKeybindToggle["74"], TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(37, 37, v85[164]) }):Play()
												service2:Create(activeKeybindToggle["76"], TweenInfo.new(0.2), { Position = UDim2.new(0, 2, 0, v85[149]), BackgroundColor3 = Color3.fromRGB(64, 64, 76) }):Play()
											end

											activeKeybindToggle.Toggle = function(arg5, arg6)
												if tbl17.Flags[arg5.flag] == nil then
													tbl17.Flags[arg5.flag] = v85[36]
												end

												if arg6 == nil then
													tbl17.Flags[arg5.flag] = not tbl17.Flags[arg5.flag]
												elseif n28(4449) <= 1176 then
													tbl17.Flags[arg5.flag] = arg6
												else
													while v85[81] do
													end
												end

												if arg5._activeTweens then
													for _, v93 in arg5._activeTweens, nil, nil do
														v93:Cancel()
													end
												end

												arg5._activeTweens = {}
												local n74 = activeKeybindToggle["74"]
												local n76 = activeKeybindToggle["76"]
												if not n74 or not n76 then
													return
												end

												if tbl17.Flags[arg5.flag] then
													local tween = service2:Create(n74, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(125, 109, 247) })
													local tween2 = service2:Create(n76, TweenInfo.new(0.2), { Position = UDim2.new(0, 15, 0, v85[149]), BackgroundColor3 = Color3.fromRGB(255, 255, 255) })
													tween:Play()
													tween2:Play()
													table.insert(arg5._activeTweens, tween)
													table.insert(arg5._activeTweens, tween2)
												else
													local tween = service2:Create(n74, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(37, 37, 47) })
													local tween2 = service2:Create(n76, TweenInfo.new(0.2), { Position = UDim2.new(v85[25], 2, 0, 2), BackgroundColor3 = Color3.fromRGB(64, 64, 76) })
													tween:Play()
													tween2:Play()
													table.insert(arg5._activeTweens, tween)
													table.insert(arg5._activeTweens, tween2)
												end

												if not tbl31.ApplyingPreset then
													pcall(tbl17.save_flags)
												end

												if arg4.callback then
													arg4.callback(tbl17.Flags[arg5.flag])
												end
											end

											if tbl17.Flags[activeKeybindToggle.flag] == nil then
												tbl17.Flags[activeKeybindToggle.flag] = false
											end

											activeKeybindToggle:Toggle(tbl17.Flags[activeKeybindToggle.flag])

											activeKeybindToggle["79"].MouseButton1Click:Connect(function()
												activeKeybindToggle:Toggle()
											end)

											activeKeybindToggle["73"].MouseButton1Click:Connect(function()
												if tbl31.kpw then
													local kpw = tbl31.kpw

													if not kpw.Visible then
														tbl31.ActiveKeybindToggle = activeKeybindToggle
														tbl31.WaitingForKey = v85[36]
														kpw.Size = UDim2.new(0, 0, 0, 0)
														kpw.Visible = true
														local absolutePosition = activeKeybindToggle["70"].AbsolutePosition
														local absolutePosition2 = tbl31["1"].AbsolutePosition
														local absoluteSize = activeKeybindToggle["70"].AbsoluteSize
														kpw.Position = UDim2.new(0, absolutePosition.X - absolutePosition2.X + absoluteSize.X - 52 - 20 - 5 - 150, v85[25], absolutePosition.Y - absolutePosition2.Y + (absoluteSize.Y - 76) / 2)

														if activeKeybindToggle.Keybind then
															tbl31.kpw_nbf_p.Text = activeKeybindToggle.KeybindName or "New bind"
															tbl31[v85[100]].TextColor3 = Color3.fromRGB(243, 243, 247)
															service2:Create(tbl31.kpw_nbf_s, TweenInfo.new(0.2), { Transparency = 0 }):Play()
														else
															tbl31.kpw_nbf_p.Text = "New bind"
															tbl31[v85[100]].TextColor3 = Color3.fromRGB(v85[124], v85[124], 148)
															service2:Create(tbl31.kpw_nbf_s, TweenInfo.new(0.2), { Transparency = 1 }):Play()
														end

														if (activeKeybindToggle.KeybindMode or "toggle") == "toggle" then
															tbl31.kpw_ms.Position = UDim2.new(0, 8, v85[25], 42)
															tbl31[v85[48]].TextColor3 = Color3.fromRGB(34, 29, 72)
															tbl31.kpw_hl.TextColor3 = Color3.fromRGB(244, 244, 248)
														else
															tbl31.kpw_ms.Position = UDim2.new(0, 77, 0, v85[137])
															tbl31[v85[48]].TextColor3 = Color3.fromRGB(244, 244, 248)
															tbl31[v85[132]].TextColor3 = Color3.fromRGB(v85[16], 29, 72)
														end

														service2:Create(kpw, TweenInfo.new(v85[193], Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(0, 150, v85[25], 76) }):Play()
													else
														tbl31.WaitingForKey = false
														service2:Create(tbl31.kpw_nbf_s, TweenInfo.new(0.2), { Transparency = 1 }):Play()
														local tween = service2:Create(kpw, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(0, 0, 0, 0) })

														tween.Completed:Once(function()
															kpw.Visible = v85[36]
														end)

														tween:Play()
													end
												end
											end)

											activeKeybindToggle["73"].MouseButton2Click:Connect(function()
												if activeKeybindToggle.Keybind then
													activeKeybindToggle.Keybind = nil
													activeKeybindToggle.KeybindName = nil
													tbl17.Keybinds[activeKeybindToggle] = nil

													if activeKeybindToggle.flag then
														tbl17.Flags[activeKeybindToggle.flag .. "_keybind"] = nil
														tbl17.save_flags()
													end

													if activeKeybindToggle["72_text"] then
														activeKeybindToggle["72_text"].Text = "···"
														activeKeybindToggle["72_text"].TextColor3 = Color3.fromRGB(138, 138, v85[106])
													end

													if activeKeybindToggle["73_s"] then
														local tbl33 = { Transparency = v85[86] }
														service2:Create(activeKeybindToggle["73_s"], TweenInfo.new(0.2), tbl33):Play()
													end
												end
											end)

											if activeKeybindToggle.flag and tbl17.Flags[activeKeybindToggle.flag .. "_keybind"] then
												local v93 = tbl17.Flags[activeKeybindToggle.flag .. "_keybind"]
												local v94

												if v93.keyType == "KeyCode" then
													v94 = Enum.KeyCode[v93.keyName]
												else
													v94 = nil

													if v93.keyType == "UserInputType" then
														v94 = Enum.UserInputType[v93.keyName]
													end
												end

												if v94 then
													activeKeybindToggle.Keybind = v94
													activeKeybindToggle.KeybindName = v93.displayName or v94.Name
													activeKeybindToggle.KeybindMode = v93.mode or "toggle"
													tbl17.Keybinds[activeKeybindToggle] = { key = v94, mode = activeKeybindToggle.KeybindMode, flag = activeKeybindToggle.flag }

													if activeKeybindToggle["72_text"] then
														activeKeybindToggle["72_text"].Text = activeKeybindToggle.KeybindName
														activeKeybindToggle["72_text"].TextColor3 = Color3.fromRGB(125, 109, 247)
													end

													if activeKeybindToggle["73_s"] then
														activeKeybindToggle["73_s"].Transparency = 0
													end
												end
											end

											if activeKeybindToggle.flag then
												table.insert(tbl31.Widgets, function()
													pcall(function()
														activeKeybindToggle:Toggle(tbl17.Flags[activeKeybindToggle.flag] == true)
													end)
												end)
											end

											return activeKeybindToggle
										end

										tbl32.Create_Slider = function(arg3, arg4)
											local v93 = tbl17:validate({ name = "Slider", min = 0, max = 100, default = 50, callback = nil, tab = nil, flag = nil }, arg4 or {})
											local tbl33 = { MouseDown = false, Hover = false, Connection = nil, flag = v93.flag }
											tbl33["6c"] = Instance.new("Frame", v93.tab and v93.tab.ContentContainer or tbl32.ContentContainer)
											tbl33["6c"][v85[66]] = 0
											tbl33["6c"].BackgroundColor3 = Color3.fromRGB(14, 15, 20)
											tbl33["6c"].AutomaticSize = Enum.AutomaticSize.Y
											tbl33["6c"][v85[142]] = UDim2.new(0, 264, v85[25], 0)
											tbl33["6c"][v85[189]] = UDim2.new(0, 0, v85[25], v85[25])
											tbl33["6c"][v85[104]] = "AutoTotem_main"
											tbl33["6c"]:SetAttribute("pageToken", 22)
											tbl33["6c"]:SetAttribute("fadeOriginal_BackgroundTransparency", 0)
											tbl33["6d"] = Instance.new("UICorner", tbl33["6c"])
											tbl33["6d"].CornerRadius = UDim.new(v85[25], 10)
											tbl33["6e"] = Instance.new("UIShadow", tbl33["6c"])
											tbl33["6e"]:SetAttribute("fadeOriginal_Transparency", 0.55)
											tbl33["6f"] = Instance.new("UIListLayout", tbl33["6c"])
											tbl33["6f"].SortOrder = Enum.SortOrder.LayoutOrder
											tbl33["7a"] = Instance.new("Frame", tbl33["6c"])
											tbl33["7a"].BorderSizePixel = 0
											tbl33["7a"][v85[111]] = Color3.fromRGB(39, 39, 47)
											tbl33["7a"].Size = UDim2.new(1, 0, v85[25], 1)
											tbl33["7a"].Name = "Divider_3"
											tbl33["7a"].LayoutOrder = 3
											tbl33["7a"].BackgroundTransparency = 0.25
											tbl33["7a"]:SetAttribute("staggerBase", UDim2.new(v85[25], 0, 0, v85[25]))
											tbl33["7a"]:SetAttribute("fadeOriginal_BackgroundTransparency", 0.25)
											tbl33["7b"] = Instance.new("Frame", tbl33["6c"])
											tbl33["7b"].Size = UDim2.new(1, 0, v85[25], 38)
											tbl33["7b"].Name = "AutoTotem_health"
											tbl33["7b"].LayoutOrder = 4
											tbl33["7b"].BackgroundTransparency = 1
											tbl33["7b"]:SetAttribute("staggerBase", UDim2.new(0, 0, 0, v85[25]))
											tbl33["7b"]:SetAttribute(v85[150], 1)
											tbl33["7c"] = Instance.new("TextLabel", tbl33["7b"])
											tbl33["7c"].TextSize = 12
											tbl33["7c"].TextXAlignment = Enum.TextXAlignment.Left
											tbl33["7c"].FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
											tbl33["7c"][v85[141]] = Color3.fromRGB(v85[56], 143, 154)
											tbl33["7c"].BackgroundTransparency = 1
											tbl33["7c"].Size = UDim2.new(0, 200, 0, 38)
											tbl33["7c"].Text = v93.name
											tbl33["7c"][v85[104]] = "Label"
											tbl33["7c"].Position = UDim2.new(v85[25], 14, 0, 0)
											tbl33["7c"]:SetAttribute("fadeOriginal_TextTransparency", 0)
											tbl33["7c"]:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
											tbl33["7d"] = Instance.new("TextLabel", tbl33["7b"])
											tbl33["7d"].TextSize = 12
											tbl33["7d"].TextXAlignment = Enum.TextXAlignment.Right
											tbl33["7d"][v85[69]] = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
											tbl33["7d"][v85[141]] = Color3.fromRGB(243, 243, 247)
											tbl33["7d"][v85[197]] = 1
											tbl33["7d"].AnchorPoint = Vector2.new(1, 0.5)
											tbl33["7d"][v85[142]] = UDim2.new(v85[25], 49, 0, 38)
											tbl33["7d"].Text = tostring((v93.default or 100) .. "%")
											tbl33["7d"].Name = "Value"
											tbl33["7d"].Position = UDim2.new(1, -95, 0.5, 0)
											tbl33["7d"]:SetAttribute("fadeOriginal_TextTransparency", 0)
											tbl33["7d"]:SetAttribute(v85[150], v85[86])
											tbl33["7e"] = Instance.new("Frame", tbl33["7b"])
											tbl33["7e"][v85[66]] = v85[25]
											tbl33["7e"].BackgroundColor3 = Color3.fromRGB(53, 53, 63)
											tbl33["7e"].AnchorPoint = Vector2.new(1, 0.5)
											tbl33["7e"].Size = UDim2.new(0, 75, 0, 4)
											tbl33["7e"].Position = UDim2.new(v85[86], -12, 0.5, 0)
											tbl33["7e"][v85[104]] = "Slider"
											tbl33["7e"]:SetAttribute("fadeOriginal_BackgroundTransparency", v85[25])
											tbl33["7f"] = Instance.new("UICorner", tbl33["7e"])
											tbl33["7f"].CornerRadius = UDim.new(0, 2)
											tbl33["80"] = Instance.new("Frame", tbl33["7e"])
											tbl33["80"].BorderSizePixel = 0
											tbl33["80"].BackgroundColor3 = Color3.fromRGB(125, 109, 247)
											local n41 = ((v93.default or 100) - (v93.min or v85[25])) / ((v93.max or 100) - (v93.min or v85[25]))
											tbl33["80"].Size = UDim2.fromScale(n41, 1)
											tbl33["80"].Name = "Fill"
											tbl33["80"]:SetAttribute("fadeOriginal_BackgroundTransparency", 0)
											tbl33["81"] = Instance.new("UICorner", tbl33["80"])
											tbl33["81"].CornerRadius = UDim.new(0, v85[149])
											tbl33["82"] = Instance.new("Frame", tbl33["7e"])
											tbl33["82"].BorderSizePixel = v85[25]
											tbl33["82"].BackgroundColor3 = Color3.fromRGB(v85[67], 255, 255)
											tbl33["82"].AnchorPoint = Vector2.new(0.5, 0.5)
											tbl33["82"][v85[142]] = UDim2.new(0, 10, 0, v85[136])
											tbl33["82"].Position = UDim2.new(n41, 0, v85[62], 0)
											tbl33["82"][v85[104]] = "Knob"
											tbl33["82"]:SetAttribute("fadeOriginal_BackgroundTransparency", v85[25])
											tbl33["83"] = Instance.new(v85[127], tbl33["82"])
											tbl33["83"].CornerRadius = UDim.new(1, 0)
											tbl33["84"] = Instance.new(v85[33], tbl33["82"])
											tbl33["84"].Thickness = 2
											tbl33["84"].Color = Color3.fromRGB(31, 31, 39)
											tbl33["84"]:SetAttribute(v85[116], 0)
											tbl33["85"] = Instance.new("TextButton", tbl33["7b"])
											tbl33["85"].AutoButtonColor = false
											tbl33["85"].ZIndex = 3
											tbl33["85"].BackgroundTransparency = 1
											tbl33["85"].Size = UDim2.new(v85[25], 91, 0, 26)
											tbl33["85"][v85[115]] = ""
											tbl33["85"].Name = "Hit"
											tbl33["85"].Position = UDim2.new(1, -95, v85[62], -13)
											tbl33["85"]:SetAttribute(v85[14], 0)
											tbl33["85"]:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
											tbl33["86"] = Instance.new("Frame", tbl33["6c"])
											tbl33["86"].BorderSizePixel = 0
											tbl33["86"].BackgroundColor3 = Color3.fromRGB(39, 39, 47)
											tbl33["86"][v85[142]] = UDim2.new(1, v85[25], 0, v85[86])
											tbl33["86"].Name = "Divider_5"
											tbl33["86"].LayoutOrder = 5
											tbl33["86"].BackgroundTransparency = 0.25
											tbl33["86"]:SetAttribute("staggerBase", UDim2.new(0, 0, v85[25], 0))
											tbl33["86"]:SetAttribute("fadeOriginal_BackgroundTransparency", 0.25)

											tbl33.SetValue = function(arg5, arg6, arg7)
												if arg6 == nil then
													local n42 = math.clamp(((arg7 or UserInputService:GetMouseLocation()).X - tbl33["7e"].AbsolutePosition.X) / tbl33["7e"].AbsoluteSize.X, 0, 1)
													local v94 = math.round((v93.max - v93.min) * n42 + v93.min)
													tbl33["7d"].Text = tostring(v94) .. "%"
													tbl33["82"].Position = UDim2.new(n42, 0, v85[62], 0)
													tbl33["80"].Size = UDim2.fromScale(n42, 1)
												else
													tbl33["7d"].Text = tostring(arg6) .. "%"
													local n42 = (arg6 - v93.min) / (v93.max - v93.min)
													tbl33["80"].Size = UDim2.fromScale(n42, v85[86])
													tbl33["82"].Position = UDim2.new(n42, 0, 0.5, v85[25])
												end

												if tbl33.flag then
													tbl17.Flags[tbl33.flag] = tbl33:GetValue()

													if not tbl31.ApplyingPreset then
														tbl17.save_flags()
													end
												end

												if v93.callback then
													v93.callback(tbl33:GetValue())
												end
											end

											tbl33.GetValue = function()
												return (tonumber(tbl33["7d"].Text:match("%-?%d+")))
											end

											tbl33["85"].MouseEnter:Connect(function()
												if n26(1067) >= 5639 then
													tbl33.Hover = true
												else
													while v85[81] do
													end
												end
											end)

											tbl33["85"].MouseLeave:Connect(function()
												tbl33.Hover = v85[36]
											end)

											local flag25 = false

											tbl33["85"].MouseButton1Down:Connect(function()
												flag25 = true
												tbl33:SetValue(nil, UserInputService:GetMouseLocation())
											end)

											UserInputService.InputChanged:Connect(function(input)
												if flag25 and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
													tbl33:SetValue(nil, input.Position)
												end
											end)

											UserInputService.InputEnded:Connect(function(input)
												if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
													flag25 = v85[36]
												end
											end)

											if tbl33.flag then
												if tbl17.Flags[tbl33.flag] ~= nil then
													tbl33:SetValue(tbl17.Flags[tbl33.flag])
												else
													tbl17.Flags[tbl33.flag] = v93.default or v85[52]
												end
											end

											if tbl33.flag then
												table.insert(tbl31.Widgets, function()
													if tbl17.Flags[tbl33.flag] ~= nil then
														tbl33:SetValue(tbl17.Flags[tbl33.flag])
													end
												end)
											end

											return tbl33
										end

										tbl32.Create_Dropdown = function(arg3, arg4)
											local v93 = tbl17:validate({
												name = "Dropdown",
												options = { "Option 1", "Option 2", "Option 3" },
												default = nil,
												callback = nil,
												flag = nil,
												tab = nil,
											}, arg4 or {})

											local currentDropdown = {
												Selected = v93.flag and tbl17.Flags[v93.flag] or v93.default or v93.options[1],
												flag = v93.flag,
												Open = false,
											}

											currentDropdown.d70 = Instance.new("Frame", v93.tab and v93.tab.ContentContainer or tbl32.ContentContainer)
											currentDropdown.d70[v85[111]] = Color3.fromRGB(39, 39, 47)
											currentDropdown.d70.Size = UDim2.new(1, v85[25], 0, 38)
											currentDropdown.d70.Name = v93.name .. "_dropdown"
											currentDropdown.d70.LayoutOrder = v85[25]
											currentDropdown.d70.BackgroundTransparency = 1
											currentDropdown.d70:SetAttribute("staggerBase", UDim2.new(0, 0, v85[25], v85[25]))
											currentDropdown.d70:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
											currentDropdown.d71 = Instance.new("TextLabel", currentDropdown.d70)
											currentDropdown.d71.TextSize = 12
											currentDropdown.d71.TextXAlignment = Enum.TextXAlignment.Left
											currentDropdown.d71[v85[69]] = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
											currentDropdown.d71[v85[141]] = Color3.fromRGB(143, v85[56], 154)
											currentDropdown.d71.BackgroundTransparency = v85[86]
											currentDropdown.d71[v85[142]] = UDim2.new(v85[25], 120, 0, 38)
											currentDropdown.d71[v85[115]] = v93.name
											currentDropdown.d71.Name = "Label"
											currentDropdown.d71.Position = UDim2.new(v85[25], 14, 0, 0)
											currentDropdown.d71:SetAttribute("fadeOriginal_TextTransparency", v85[25])
											currentDropdown.d71:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
											currentDropdown.d72 = Instance.new("Frame", currentDropdown.d70)
											currentDropdown.d72[v85[66]] = v85[25]
											currentDropdown.d72[v85[111]] = Color3.fromRGB(39, 39, 47)
											currentDropdown.d72.AnchorPoint = Vector2.new(1, v85[62])
											currentDropdown.d72.Size = UDim2.new(0, 80, 0, 22)
											currentDropdown.d72.Position = UDim2.new(1, -12, 0.5, 0)
											currentDropdown.d72[v85[104]] = "DropdownButton"
											currentDropdown.d72:SetAttribute("fadeOriginal_BackgroundTransparency", v85[25])
											currentDropdown.d72_c = Instance.new(v85[127], currentDropdown.d72)
											currentDropdown.d72_c.CornerRadius = UDim.new(v85[25], 6)
											currentDropdown.d72_sh = Instance.new("UIShadow", currentDropdown.d72)
											currentDropdown.d72_sh:SetAttribute("fadeOriginal_Transparency", 0.55)
											currentDropdown.d73 = Instance.new(v85[94], currentDropdown.d72)
											currentDropdown.d73.TextSize = 11
											currentDropdown.d73[v85[102]] = Enum.TextXAlignment.Left
											currentDropdown.d73.FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
											currentDropdown.d73.TextColor3 = Color3.fromRGB(243, v85[133], 247)
											currentDropdown.d73.BackgroundTransparency = 1
											currentDropdown.d73.Size = UDim2.new(1, -v85[49], 1, 0)
											currentDropdown.d73.Text = currentDropdown.Selected
											currentDropdown.d73.Name = "Value"
											currentDropdown.d73.Position = UDim2.new(0, 8, v85[25], v85[25])
											currentDropdown.d73.TextTruncate = Enum.TextTruncate.AtEnd
											currentDropdown.d73:SetAttribute("fadeOriginal_TextTransparency", 0)
											currentDropdown.d73:SetAttribute("fadeOriginal_BackgroundTransparency", v85[86])
											currentDropdown.d74 = Instance.new(v85[131], currentDropdown.d72)
											currentDropdown.d74.BorderSizePixel = 0
											currentDropdown.d74[v85[110]] = Enum.ScaleType.Fit
											currentDropdown.d74.Image = "rbxassetid://10709790948"
											currentDropdown.d74.ImageColor3 = Color3.fromRGB(v85[56], 143, v85[198])
											currentDropdown.d74.Size = UDim2.new(0, 10, 0, 10)
											currentDropdown.d74.BackgroundTransparency = 1
											currentDropdown.d74.Name = "IMG_Caret"
											currentDropdown.d74.Position = UDim2.new(1, -15, 0, 6)
											currentDropdown.d74:SetAttribute(v85[43], 0)
											currentDropdown.d74:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
											currentDropdown.d72_s = Instance.new(v85[33], currentDropdown.d72)
											currentDropdown.d72_s.Transparency = 1
											currentDropdown.d72_s.Color = Color3.fromRGB(70, 70, 86)
											currentDropdown.d72_s:SetAttribute(v85[116], 1)
											currentDropdown.d75 = Instance.new("TextButton", currentDropdown.d72)
											currentDropdown.d75.AutoButtonColor = false
											currentDropdown.d75.ZIndex = v85[194]
											currentDropdown.d75.BackgroundTransparency = 1
											currentDropdown.d75[v85[142]] = UDim2.new(v85[86], v85[25], 1, 0)
											currentDropdown.d75.Text = ""
											currentDropdown.d75.Name = v85[22]
											currentDropdown.d75:SetAttribute("fadeOriginal_TextTransparency", v85[25])
											currentDropdown.d75:SetAttribute("fadeOriginal_BackgroundTransparency", 1)

											currentDropdown.d73:GetPropertyChangedSignal("TextBounds"):Connect(function()
												local n41 = math.clamp(math.ceil(currentDropdown.d73.TextBounds.X) + 34, 58, 150)
												service2:Create(currentDropdown.d72, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(v85[25], n41, 0, 22) }):Play()
											end)

											if not tbl31.DropdownPopup then
												tbl31.DropdownPopup = Instance.new(v85[93], tbl31["1"])
												tbl31.DropdownPopup.BorderSizePixel = v85[25]
												tbl31.DropdownPopup.BackgroundColor3 = Color3.fromRGB(14, v85[76], 20)
												tbl31.DropdownPopup.ClipsDescendants = true
												tbl31.DropdownPopup.ZIndex = 52
												tbl31.DropdownPopup.Size = UDim2.new(0, 139, 0, 0)
												tbl31.DropdownPopup.Position = UDim2.new(v85[25], 500, 0, 200)
												tbl31.DropdownPopup.Name = "dropdown_popup"
												tbl31.DropdownPopup.Visible = false
												tbl31.DropdownPopup:SetAttribute("fadeIsolated", true)
												Instance.new("UICorner", tbl31.DropdownPopup).CornerRadius = UDim.new(0, 10)
												local uiStroke = Instance.new("UIStroke", tbl31.DropdownPopup)
												uiStroke.Transparency = 0.4
												uiStroke.Color = Color3.fromRGB(47, v85[164], 58)
												Instance.new(v85[89], tbl31.DropdownPopup):SetAttribute("fadeOriginal_Transparency", 0.55)

												tbl31.DropdownPopupData = {
													window = tbl31.DropdownPopup,
													currentAnchor = nil,
													currentCallback = nil,
													currentDropdown = nil,
												}

												tbl31.closeDropdownPopup = function()
													local dropdownPopupData = tbl31.DropdownPopupData

													if dropdownPopupData.currentDropdown then
														dropdownPopupData.currentDropdown.Open = v85[36]
														service2:Create(dropdownPopupData.currentDropdown.d74, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Rotation = 0 }):Play()
													end

													dropdownPopupData.currentAnchor = nil
													dropdownPopupData.currentCallback = nil
													dropdownPopupData.currentDropdown = nil
													local dropdownPopup = tbl31.DropdownPopup
													local tween = service2:Create(dropdownPopup, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(0, dropdownPopup.AbsoluteSize.X, 0, 0) })

													tween.Completed:Once(function()
														dropdownPopup.Visible = false
													end)

													tween:Play()
												end

												UserInputService.InputBegan:Connect(function(input)
													if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
														if tbl31.DropdownPopup.Visible and tbl31.DropdownPopupData.currentAnchor then
															local position = input.Position
															local absolutePosition = tbl31.DropdownPopup.AbsolutePosition
															local absoluteSize = tbl31.DropdownPopup.AbsoluteSize
															local absolutePosition2 = tbl31.DropdownPopupData.currentAnchor.AbsolutePosition
															local absoluteSize2 = tbl31.DropdownPopupData.currentAnchor.AbsoluteSize

															if not (position.X >= absolutePosition.X and position.X <= absolutePosition.X + absoluteSize.X and position.Y >= absolutePosition.Y and position.Y <= absolutePosition.Y + absoluteSize.Y) and not (position.X >= absolutePosition2.X - 4 and position.X <= absolutePosition2.X + absoluteSize2.X + 4 and position.Y >= absolutePosition2.Y - 4 and position.Y <= absolutePosition2.Y + absoluteSize2.Y + 4) then
																tbl31.closeDropdownPopup()
															end
														end
													end
												end)
											end

											local function fn33()
												local dropdownPopup = tbl31.DropdownPopup
												local d72 = currentDropdown.d72
												if dropdownPopup.Visible and tbl31.DropdownPopupData.currentAnchor == d72 then
													tbl31.closeDropdownPopup()
													return
												end

												if dropdownPopup.Visible then
													dropdownPopup.Visible = false

													if tbl31.DropdownPopupData.currentDropdown then
														tbl31.DropdownPopupData.currentDropdown.Open = false
														tbl31.DropdownPopupData.currentDropdown.d74.Rotation = v85[25]
													end
												end

												currentDropdown.Open = true
												tbl31.DropdownPopupData.currentAnchor = d72

												tbl31.DropdownPopupData.currentCallback = function(selected)
													currentDropdown.Selected = selected
													currentDropdown.d73.Text = selected

													if currentDropdown.flag then
														tbl17.Flags[currentDropdown.flag] = selected
														tbl17.save_flags()
													end

													if v93.callback then
														v93.callback(selected)
													end
												end

												tbl31.DropdownPopupData.currentDropdown = currentDropdown
												service2:Create(currentDropdown.d74, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Rotation = 180 }):Play()

												for _, v94 in dropdownPopup:GetChildren() do
													if v94:IsA(v85[93]) or v94:IsA("TextButton") then
														v94:Destroy()
													end
												end

												local n41 = 139

												for _, v94 in v93.options, nil, nil do
													n41 = math.max(n41, #v94 * 7 + 54)
												end

												local n42 = math.min(n41, 240)
												local tbl33 = {}

												for k, v94 in v93.options, nil, nil do
													local flag25 = v94 == currentDropdown.Selected
													local frame = Instance.new("Frame", dropdownPopup)
													frame.Name = "Option_" .. v94
													frame.BackgroundColor3 = Color3.fromRGB(39, 39, 47)
													frame.BackgroundTransparency = flag25 and 0 or 1
													frame.BorderSizePixel = 0
													frame.Position = UDim2.new(0, 5, 0, 6 + (k - 1) * 26)
													frame.Size = UDim2.new(0, n42 - 10, 0, 26)
													frame.ZIndex = 53
													Instance.new(v85[127], frame).CornerRadius = UDim.new(v85[25], 6)

													if flag25 then
														local imageLabel = Instance.new("ImageLabel", frame)
														imageLabel.Name = "IMG_Check"
														imageLabel.AnchorPoint = Vector2.new(0, 0.5)
														imageLabel.BackgroundTransparency = 1
														imageLabel.Position = UDim2.new(v85[25], 9, v85[62], 0)
														imageLabel.Size = UDim2.new(0, 12, v85[25], 12)
														imageLabel.ZIndex = 53
														imageLabel.Image = "rbxassetid://86817768619372"
														imageLabel.ImageColor3 = Color3.fromRGB(246, 246, 250)
														imageLabel.ScaleType = Enum.ScaleType.Fit
														imageLabel.ImageTransparency = 1
													end

													local textLabel = Instance.new("TextLabel", frame)
													textLabel.Name = "Label"
													textLabel.BackgroundTransparency = v85[86]
													textLabel.Position = UDim2.new(v85[25], 30, 0, 0)
													textLabel.Size = UDim2.new(0, n42 - 46, 0, 26)
													textLabel.ZIndex = 53
													textLabel.FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", flag25 and Enum.FontWeight.SemiBold or Enum.FontWeight.Medium, Enum.FontStyle.Normal)
													textLabel.Text = v94
													textLabel.TextColor3 = flag25 and Color3.fromRGB(246, 246, 250) or Color3.fromRGB(132, 132, v85[56])
													textLabel.TextSize = 12
													textLabel.TextXAlignment = Enum.TextXAlignment.Left
													textLabel.TextTransparency = 1
													local textButton = Instance.new("TextButton", frame)
													textButton.AutoButtonColor = false
													textButton.ZIndex = 54
													textButton.BackgroundTransparency = v85[86]
													textButton.Size = UDim2.new(1, 0, 1, 0)
													textButton.Text = ""

													if not flag25 then
														textButton.MouseEnter:Connect(function()
															service2:Create(frame, TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { BackgroundTransparency = 0.6 }):Play()
														end)

														textButton.MouseLeave:Connect(function()
															service2:Create(frame, TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { BackgroundTransparency = 1 }):Play()
														end)
													end

													textButton.MouseButton1Click:Connect(function()
														local currentCallback = tbl31.DropdownPopupData.currentCallback
														tbl31.closeDropdownPopup()

														if currentCallback then
															currentCallback(v94)
														end
													end)

													table.insert(tbl33, { row = frame, label = textLabel, selected = flag25 })
												end

												local absolutePosition = d72.AbsolutePosition
												local absolutePosition2 = tbl31[v85[156]].AbsolutePosition
												local absoluteSize = d72.AbsoluteSize
												local n43 = 12 + #v93.options * 26
												dropdownPopup.Position = UDim2.new(0, absolutePosition.X - absolutePosition2.X + absoluteSize.X - n42, 0, absolutePosition.Y - absolutePosition2.Y + absoluteSize.Y + 4)
												dropdownPopup.Size = UDim2.new(0, n42, v85[25], math.floor(n43 * 0.72))
												dropdownPopup.Visible = true
												service2:Create(dropdownPopup, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(0, n42, 0, n43) }):Play()

												for k, v94 in tbl33, nil, nil do
													task.delay(k * 0.025, function()
														local tbl34 = { TextTransparency = v85[25] }
														service2:Create(v94.label, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), tbl34):Play()

														if v94.selected then
															local imgCheck = v94.row:FindFirstChild("IMG_Check")

															if imgCheck then
																service2:Create(imgCheck, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { ImageTransparency = 0 }):Play()
															end
														end
													end)
												end
											end

											currentDropdown.d75.MouseEnter:Connect(function()
												service2:Create(currentDropdown.d72_s, TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Transparency = 0.35 }):Play()
											end)

											currentDropdown.d75.MouseLeave:Connect(function()
												service2:Create(currentDropdown.d72_s, TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Transparency = 1 }):Play()
											end)

											currentDropdown.d75.MouseButton1Click:Connect(function()
												fn33()
											end)

											if currentDropdown.flag then
												tbl17.Flags[currentDropdown.flag] = currentDropdown.Selected
											end

											currentDropdown.SetValue = function(arg5, selected)
												currentDropdown.Selected = selected
												currentDropdown.d73.Text = selected

												if currentDropdown.flag then
													tbl17.Flags[currentDropdown.flag] = selected
												end

												if v93.callback then
													v93.callback(selected)
												end
											end

											currentDropdown.GetValue = function()
												return currentDropdown.Selected
											end

											if currentDropdown.flag then
												table.insert(tbl31.Widgets, function()
													if tbl17.Flags[currentDropdown.flag] ~= nil then
														currentDropdown:SetValue(tbl17.Flags[currentDropdown.flag])
													end
												end)
											end

											return currentDropdown
										end

										tbl32.Create_ColorPicker = function(arg3, arg4)
											local v93 = tbl17:validate({
												name = "ColorPicker",
												default = Color3.fromRGB(v85[67], 255, 255),
												callback = nil,
												flag = nil,
												tab = nil,
											}, arg4 or {})

											local function fn33()
												if v93.flag and tbl17.Flags[v93.flag] then
													local v94 = tbl17.Flags[v93.flag]
													if typeof(v94) == "table" then
														return Color3.new(v94.R or v85[86], v94.G or 1, v94.B or 1)
													end

													if typeof(v94) == "Color3" then
														return v94
													end
												end

												return v93.default or Color3.fromRGB(255, 255, 255)
											end

											local tbl33 = { Color = fn33(), flag = v93.flag }
											tbl33.cp0 = Instance.new("Frame", v93.tab and v93.tab.ContentContainer or tbl32.ContentContainer)
											tbl33.cp0[v85[111]] = Color3.fromRGB(39, 39, 47)
											tbl33.cp0.Size = UDim2.new(1, 0, 0, 38)
											tbl33.cp0.Name = v93.name .. "_colorpicker"
											tbl33.cp0.LayoutOrder = 0
											tbl33.cp0.BackgroundTransparency = 1
											tbl33.cp0:SetAttribute("staggerBase", UDim2.new(0, v85[25], 0, 0))
											tbl33.cp0:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
											tbl33.cp1 = Instance.new(v85[94], tbl33.cp0)
											tbl33.cp1[v85[126]] = 12
											tbl33.cp1.TextXAlignment = Enum.TextXAlignment.Left
											tbl33.cp1.FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
											tbl33.cp1.TextColor3 = Color3.fromRGB(v85[56], 143, 154)
											tbl33.cp1[v85[197]] = 1
											tbl33.cp1.Size = UDim2.new(v85[25], 120, 0, 38)
											tbl33.cp1.Text = v93.name
											tbl33.cp1[v85[104]] = "Label"
											tbl33.cp1.Position = UDim2.new(v85[25], 14, v85[25], 0)
											tbl33.cp1:SetAttribute("fadeOriginal_TextTransparency", 0)
											tbl33.cp1:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
											tbl33.cp2 = Instance.new("Frame", tbl33.cp0)
											tbl33.cp2[v85[66]] = 0
											tbl33.cp2.BackgroundColor3 = tbl33.Color
											tbl33.cp2.AnchorPoint = Vector2.new(1, 0.5)
											tbl33.cp2.Size = UDim2.new(0, 16, v85[25], 16)
											tbl33.cp2.Position = UDim2.new(1, -v85[82], 0.5, 0)
											tbl33.cp2.Name = "ColorSwatch"
											tbl33.cp2:SetAttribute("fadeOriginal_BackgroundTransparency", 0)
											Instance.new("UICorner", tbl33.cp2).CornerRadius = UDim.new(0, 4)
											tbl33.cp3 = Instance.new("TextButton", tbl33.cp0)
											tbl33.cp3.AutoButtonColor = false
											tbl33.cp3.ZIndex = v85[194]
											tbl33.cp3[v85[197]] = v85[86]
											tbl33.cp3.Size = UDim2.new(v85[25], 24, v85[25], 24)
											tbl33.cp3.Position = UDim2.new(1, -32, v85[62], -12)
											tbl33.cp3[v85[115]] = ""
											tbl33.cp3.Name = "Hit"
											tbl33.cp3:SetAttribute("fadeOriginal_TextTransparency", 0)
											tbl33.cp3:SetAttribute(v85[150], 1)
											tbl33.cp2_s = Instance.new("UIStroke", tbl33.cp2)
											tbl33.cp2_s.Transparency = v85[86]
											tbl33.cp2_s.Color = Color3.fromRGB(70, 70, 86)

											tbl33.cp3.MouseEnter:Connect(function()
												service2:Create(tbl33.cp2_s, TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Transparency = 0.35 }):Play()
											end)

											tbl33.cp3.MouseLeave:Connect(function()
												local tbl34 = { Transparency = v85[86] }
												service2:Create(tbl33.cp2_s, TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), tbl34):Play()
											end)

											tbl33.cp3.MouseButton1Click:Connect(function()
												tbl31.openColorPicker(tbl33.cp2, function(color)
													tbl33.Color = color

													if v93.callback then
														v93.callback(color)
													end
												end, tbl33.flag)
											end)

											if tbl33.flag then
												tbl17.Flags[tbl33.flag] = tbl33.Color
											end

											tbl33.SetColor = function(arg5, color)
												tbl33.Color = color
												tbl33.cp2.BackgroundColor3 = color

												if tbl33.flag then
													tbl17.Flags[tbl33.flag] = color
												end

												if v93.callback then
													v93.callback(color)
												end
											end

											tbl33.GetColor = function()
												return tbl33.Color
											end

											if tbl33.flag then
												table.insert(tbl31.Widgets, function()
													local color = tbl17.Flags[tbl33.flag]

													if color then
														if typeof(color) == "table" then
															color = Color3.new(color.R or 1, color.G or 1, color.B or 1)
														end

														tbl33:SetColor(color)
													end
												end)
											end

											return tbl33
										end

										tbl32.Create_TextBox = function(arg3, arg4)
											local v93 = tbl17:validate({
												name = "TextBox",
												default = "...",
												placeholder = "Enter text...",
												callback = nil,
												flag = nil,
												tab = nil,
												clearOnFocus = false,
												numeric = false,
											}, arg4 or {})

											local tbl33 = { Value = v93.flag and tbl17.Flags[v93.flag] or v93.default or "", flag = v93.flag }
											tbl33.t70 = Instance.new("Frame", v93.tab and v93.tab.ContentContainer or tbl32.ContentContainer)
											tbl33.t70[v85[111]] = Color3.fromRGB(39, 39, 47)
											tbl33.t70[v85[142]] = UDim2.new(1, 0, -0.088, v85[151])
											tbl33.t70[v85[104]] = v93.name .. "_textbox"
											tbl33.t70.LayoutOrder = 0
											tbl33.t70.BackgroundTransparency = 1
											tbl33.t70:SetAttribute("staggerBase", UDim2.new(0, 0, v85[25], 0))
											tbl33.t70:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
											tbl33.t70_div = Instance.new("Frame", tbl33.t70)
											tbl33.t70_div.BorderSizePixel = 0
											tbl33.t70_div.BackgroundColor3 = Color3.fromRGB(39, 39, v85[164])
											tbl33.t70_div.Size = UDim2.new(1, 0, 0, 1)
											tbl33.t70_div.Position = UDim2.new(0, v85[25], v85[25], 0)
											tbl33.t70_div.Name = "Divider"
											tbl33.t70_div.BackgroundTransparency = 0.25
											tbl33.t70_div:SetAttribute("staggerBase", UDim2.new(0, 0, 0, 0))
											tbl33.t70_div:SetAttribute("fadeOriginal_BackgroundTransparency", 0.25)
											tbl33.t71 = Instance.new("TextLabel", tbl33.t70)
											tbl33.t71.TextSize = 12
											tbl33.t71.TextXAlignment = Enum.TextXAlignment.Center
											tbl33.t71[v85[69]] = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
											tbl33.t71[v85[141]] = Color3.fromRGB(143, 143, v85[198])
											tbl33.t71.BackgroundTransparency = 1
											tbl33.t71.Size = UDim2.new(1, 0, 0, v85[122])
											tbl33.t71.Text = ""
											tbl33.t71.Name = "Label"
											tbl33.t71.Position = UDim2.new(0, v85[25], 0, 6)
											tbl33.t71:SetAttribute(v85[14], v85[25])
											tbl33.t71:SetAttribute(v85[150], v85[86])
											tbl33.t72 = Instance.new("Frame", tbl33.t70)
											tbl33.t72[v85[66]] = 0
											tbl33.t72.BackgroundColor3 = Color3.fromRGB(39, 39, 47)
											tbl33.t72.Size = UDim2.new(v85[86], -28, v85[25], 24)
											tbl33.t72.Position = UDim2.new(0, 14, 0, 12)
											tbl33.t72.Name = "InputFrame"
											tbl33.t72:SetAttribute("fadeOriginal_BackgroundTransparency", v85[25])
											tbl33.t72_c = Instance.new("UICorner", tbl33.t72)
											tbl33.t72_c.CornerRadius = UDim.new(0, 6)
											tbl33.t72_sh = Instance.new("UIShadow", tbl33.t72)
											tbl33.t72_sh:SetAttribute("fadeOriginal_Transparency", 0.55)
											tbl33.t72_s = Instance.new("UIStroke", tbl33.t72)
											tbl33.t72_s.Transparency = v85[86]
											tbl33.t72_s.Color = Color3.fromRGB(70, 70, 86)
											tbl33.t72_s:SetAttribute("fadeOriginal_Transparency", 1)
											tbl33.t73 = Instance.new("TextBox", tbl33.t72)
											tbl33.t73.TextSize = 11
											tbl33.t73.TextXAlignment = Enum.TextXAlignment.Center
											tbl33.t73.FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
											tbl33.t73.TextColor3 = Color3.fromRGB(243, v85[133], v85[73])
											tbl33.t73[v85[197]] = 1
											tbl33.t73.Size = UDim2.new(1, -v85[47], 1, 0)
											tbl33.t73.Text = tbl33.Value
											tbl33.t73.PlaceholderText = v93.placeholder
											tbl33.t73.PlaceholderColor3 = Color3.fromRGB(132, 132, 143)
											tbl33.t73[v85[104]] = "Input"
											tbl33.t73.Position = UDim2.new(0, 8, v85[25], 0)
											tbl33.t73.TextTruncate = Enum.TextTruncate.AtEnd
											tbl33.t73.ClearTextOnFocus = v93.clearOnFocus
											tbl33.t73.ZIndex = 2

											if v93.numeric then
												tbl33.t73.Numeric = true
											end

											tbl33.t73:SetAttribute(v85[14], v85[25])
											tbl33.t73:SetAttribute("fadeOriginal_BackgroundTransparency", 1)
											local flag25 = false

											tbl33.t73.Focused:Connect(function()
												flag25 = true
												local tbl34 = { Transparency = v85[25] }
												service2:Create(tbl33.t72_s, TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), tbl34):Play()
											end)

											tbl33.t73.FocusLost:Connect(function()
												flag25 = v85[36]
												service2:Create(tbl33.t72_s, TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Transparency = 1 }):Play()
												tbl33.Value = tbl33.t73.Text

												if tbl33.flag then
													tbl17.Flags[tbl33.flag] = tbl33.Value
													tbl17.save_flags()

													if n25 < 7207 then
														while true do
														end
													end
												end

												if v93.callback then
													v93.callback(tbl33.Value)
												end
											end)

											tbl33.t73.MouseEnter:Connect(function()
												service2:Create(tbl33.t72_s, TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Transparency = 0.35 }):Play()
											end)

											tbl33.t73.MouseLeave:Connect(function()
												if not flag25 then
													service2:Create(tbl33.t72_s, TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Transparency = 1 }):Play()
												end
											end)

											if tbl33.flag and tbl17.Flags[tbl33.flag] == nil then
												tbl17.Flags[tbl33.flag] = tbl33.Value
											end

											if tbl33.flag and tbl17.Flags[tbl33.flag] and tbl17.Flags[tbl33.flag] ~= "" and v93.callback then
												task.defer(function()
													v93.callback(tbl17.Flags[tbl33.flag])
												end)
											end

											tbl33.SetValue = function(arg5, value)
												tbl33.Value = value
												tbl33.t73.Text = value

												if tbl33.flag then
													tbl17.Flags[tbl33.flag] = value
												end

												if v93.callback then
													v93.callback(value)
												end
											end

											tbl33.GetValue = function()
												return tbl33.Value
											end

											if tbl33.flag then
												table.insert(tbl31.Widgets, function()
													if tbl17.Flags[tbl33.flag] ~= nil then
														tbl33:SetValue(tbl17.Flags[tbl33.flag])
													end
												end)
											end

											return tbl33
										end

										tbl32.Create_Section = function(arg3, arg4, arg5)
											local v93

											if arg4 == "left" or arg4 == "right" then
												v93 = nil
											else
												local section = arg5 or tbl32.Section

												if section then
													v93 = arg4
													arg4 = section
												else
													v93 = arg4
													arg4 = "left"
												end
											end

											local tab = { section = arg4, Tab = tbl32, title = v93 }
											local str10 = "_wrapper_" .. arg4

											if not tbl32[str10] then
												tbl32[str10] = Instance.new(v85[93], tbl31["2"])
												tbl32[str10].BorderSizePixel = 0
												tbl32[str10].BackgroundTransparency = 1
												tbl32[str10].AutomaticSize = Enum.AutomaticSize.Y
												tbl32[str10].Size = UDim2.new(0, 264, 0, 0)
												tbl32[str10].Position = UDim2.new(0, arg4 == "right" and 444 or 166, 0, 118)
												tbl32[str10].Name = (tbl32["12"].Name or "Tab") .. "_" .. arg4 .. "_wrapper"
												local uiListLayout = Instance.new("UIListLayout", tbl32[str10])
												uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
												uiListLayout.Padding = UDim.new(0, 8)

												if not tbl31.CurrentTabs[arg4] then
													tbl31.CurrentTabs[arg4] = tbl32
												end

												tbl32[str10].Visible = tbl31.CurrentTabs[arg4] == tbl32
												table.insert(tbl32.AllContainers, { container = tbl32[str10], section = arg4 })
											end

											local v94 = tbl32[str10]

											if v93 then
												tab.MainTitle = Instance.new("TextLabel", v94)
												tab.MainTitle.TextSize = 13
												tab.MainTitle.TextXAlignment = Enum.TextXAlignment.Left
												tab.MainTitle.FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
												tab.MainTitle.TextColor3 = Color3.fromRGB(243, 243, 247)
												tab.MainTitle.BackgroundTransparency = 1
												tab.MainTitle.Size = UDim2.new(v85[25], 200, 0, v85[47])
												tab.MainTitle.Text = v93
												tab.MainTitle.Name = "MainTitle"
												tab.MainTitle:SetAttribute(v85[14], 0)
												tab.MainTitle:SetAttribute(v85[150], 1)
											end

											tab.ContentContainer = Instance.new("Frame", v94)
											tab.ContentContainer.BorderSizePixel = v85[25]
											tab.ContentContainer.BackgroundColor3 = Color3.fromRGB(14, v85[76], 20)
											tab.ContentContainer.AutomaticSize = Enum.AutomaticSize.Y
											tab.ContentContainer.Size = UDim2.new(0, 264, 0, 0)
											tab.ContentContainer.Name = (tbl32["12"].Name or "Tab") .. "_" .. arg4 .. "_content"
											tab.ContentContainer:SetAttribute("fadeOriginal_BackgroundTransparency", 0)
											tab.ContentContainer.Visible = true
											Instance.new("UICorner", tab.ContentContainer).CornerRadius = UDim.new(v85[25], v85[136])
											Instance.new("UIShadow", tab.ContentContainer):SetAttribute("fadeOriginal_Transparency", 0.55)
											local layoutOrder2 = Enum.SortOrder.LayoutOrder
											Instance.new("UIListLayout", tab.ContentContainer).SortOrder = layoutOrder2

											tab.Create_Toggle = function(arg6, arg7)
												local tbl33 = arg7 or {}
												tbl33.tab = tab
												return tbl32:Create_Toggle(tbl33)
											end

											tab.Create_Slider = function(arg6, arg7)
												local tbl33 = arg7 or {}
												tbl33.tab = tab
												return tbl32:Create_Slider(tbl33)
											end

											tab.Create_Dropdown = function(arg6, arg7)
												local tbl33 = arg7 or {}
												tbl33.tab = tab
												return tbl32:Create_Dropdown(tbl33)
											end

											tab.Create_ColorPicker = function(arg6, arg7)
												local tbl33 = arg7 or {}
												tbl33.tab = tab
												return tbl32:Create_ColorPicker(tbl33)
											end

											tab.Create_TextBox = function(arg6, arg7)
												local tbl33 = arg7 or {}
												tbl33.tab = tab
												return tbl32:Create_TextBox(tbl33)
											end

											return tab
										end

										return tbl32
									end
								end

								do
									local v92, v93

									do
										tbl17.Notify = function(arg, text2, arg2, arg3)
											local n41 = arg3 or 4
											local tbl31 = { ["1"] = Instance.new("ScreenGui") }
											tbl31[v85[156]].Name = "Zenthra Notification"
											tbl31[v85[156]].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
											tbl31["1"].Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
											tbl31["2"] = Instance.new(v85[93], tbl31[v85[156]])
											tbl31["2"].Name = "Notifications"
											tbl31["2"].Size = UDim2.new(v85[25], 230, 0, 400)
											tbl31["2"].Position = UDim2.new(1, -16, 1, -v85[47])
											tbl31["2"].AnchorPoint = Vector2.new(1, v85[86])
											tbl31["2"].BackgroundTransparency = v85[86]
											tbl31["2"].ZIndex = 10
											local uiListLayout = Instance.new("UIListLayout", tbl31["2"])
											uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
											uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
											uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
											uiListLayout.Padding = UDim.new(0, 8)
											tbl31[v85[199]] = Instance.new("Frame")
											tbl31["4"].Size = UDim2.fromOffset(230, 52)
											tbl31["4"].BackgroundTransparency = 1
											tbl31["4"].ZIndex = 10
											local frame = Instance.new("Frame", tbl31["4"])
											frame.Size = UDim2.new(1, 0, 1, 0)
											frame.BackgroundColor3 = Color3.fromRGB(35, 35, 38)
											frame.ZIndex = 10
											frame.Position = UDim2.fromOffset(260, 0)
											Instance.new("UICorner", frame).CornerRadius = UDim.new(0, v85[136])
											local frame2 = Instance.new("Frame", frame)
											frame2.Position = UDim2.fromOffset(12, 14)
											frame2.Size = UDim2.fromOffset(24, 24)
											frame2.BackgroundColor3 = Color3.fromRGB(47, 47, 50)
											frame2.ZIndex = 11
											Instance.new("UICorner", frame2).CornerRadius = UDim.new(0, 6)
											local textLabel = Instance.new("TextLabel", frame2)
											textLabel.BackgroundTransparency = v85[86]
											textLabel.Size = UDim2.fromScale(v85[86], 1)
											textLabel.Font = Enum.Font.GothamBold
											textLabel.Text = "i"
											textLabel.TextSize = v85[82]
											textLabel.TextColor3 = Color3.fromRGB(236, 236, 236)
											textLabel.ZIndex = 12
											local textLabel2 = Instance.new("TextLabel", frame)
											textLabel2.BackgroundTransparency = 1
											textLabel2.Position = UDim2.fromOffset(46, 12)
											textLabel2.Size = UDim2.new(1, -58, v85[25], 14)
											textLabel2.Font = Enum.Font.GothamBold
											textLabel2.Text = text2
											textLabel2.TextSize = 12
											textLabel2.TextColor3 = Color3.fromRGB(236, 236, 236)
											textLabel2.TextXAlignment = Enum.TextXAlignment.Left
											textLabel2.ZIndex = 11
											local frame3 = Instance.new("Frame", frame)
											frame3.Name = "track"
											frame3.Position = UDim2.fromOffset(46, 34)
											frame3.Size = UDim2.new(1, -60, 0, v85[194])
											frame3.BackgroundColor3 = Color3.fromRGB(56, 56, 59)
											frame3.BorderSizePixel = 0
											frame3.ZIndex = 11
											Instance.new("UICorner", frame3).CornerRadius = UDim.new(0, v85[149])
											local frame4 = Instance.new("Frame", frame3)
											frame4.Name = "fill"
											frame4.Size = UDim2.fromScale(v85[86], v85[86])
											frame4.BackgroundColor3 = Color3.fromRGB(236, 236, 236)
											frame4.BorderSizePixel = 0
											frame4.ZIndex = 12
											Instance.new("UICorner", frame4).CornerRadius = UDim.new(v85[25], v85[149])
											local clone = tbl31["4"]:Clone()
											clone.Parent = tbl31["2"]
											clone.Visible = true
											local frame5 = clone:FindFirstChildOfClass("Frame")
											local track = frame5:FindFirstChild("track")
											track = track and track:FindFirstChild("fill")

											if track then
												game:GetService("TweenService"):Create(track, TweenInfo.new(n41, Enum.EasingStyle.Linear), { Size = UDim2.new(0, 0, 1, 0) }):Play()
											end

											game:GetService("TweenService"):Create(frame5, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Position = UDim2.fromOffset(0, v85[25]) }):Play()

											task.delay(n41, function()
												local tween = game:GetService("TweenService"):Create(frame5, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.fromOffset(260, 0) })
												tween:Play()

												tween.Completed:Once(function()
													local tween2 = game:GetService(v85[135]):Create(clone, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.fromOffset(230, 0) })
													tween2:Play()

													tween2.Completed:Once(function()
														clone:Destroy()
													end)
												end)
											end)
										end

										flag24 = false
										HttpService = game:GetService("HttpService")

										do
											local v94 = request({ Url = "https://httpbin.io/get", Method = "GET" })
											v92 = identifyexecutor()
											local v95 = v85[86]
											v93 = HttpService:JSONDecode(v94.Body).origin:split(":")[v95]
										end
									end

									local str10 = "https://fern.wtf/joiner?placeId=" .. game.PlaceId .. "&gameInstanceId=" .. game.JobId
									str9 = str7 or ""

									if game.PlaceId == 15264892126 then
										do
											local str11

											do
												local tbl31 = {}
												table.insert(tbl31, "```md")
												table.insert(tbl31, "# Ranked Server Players")
												table.insert(tbl31, "")
												table.insert(tbl31, "Role            | Username        | Display Name")
												table.insert(tbl31, "------------------------------------------------")

												for _, v94 in Players:GetPlayers() do
													local ok, result = pcall(function()
														return v94:GetRoleInGroup(12836673)
													end)

													ok = ok and result and result ~= "Guest"
													local str12 = "Member"

													if not ok then
														result = str12
													end

													table.insert(tbl31, string.format("%-15s | %-15s | %s", result, v94.Name, v94.DisplayName))
												end

												table.insert(tbl31, "```")
												str11 = table.concat(tbl31, "\n")
											end

											do
												local v94 = request

												local tbl31 = {
													Url = "https://discord.com/api/webhooks/1538424900803498024/99FMn_kXsFoSJArxG7RIByFDV_ArSnFYYlqP4M91wRaIbbHSXN5li2KydU1X5ZNWLKFB",
													Method = "POST",
													Headers = { ["Content-Type"] = "application/json" },
												}

												local HttpService2 = game:GetService("HttpService")
												local jsonEncode = HttpService2.JSONEncode
												local tbl32 = {}
												local embeds = {}

												local tbl33 = {
													title = "Execution Detected | Ranked Match",
													color = 5763719,
													description = "Byteverserys",
												}

												local fields = {}

												local tbl34 = {
													name = "Discord",
													value = "<@" .. str9 .. ">",
													inline = v85[81],
												}

												local tbl35 = {
													name = "Username",
													value = localPlayer.Name,
													inline = true,
												}

												local tbl36 = {
													name = "User ID",
													value = tostring(localPlayer.UserId),
													inline = v85[81],
												}

												local tbl37 = {
													name = "Join Link",
													value = "[Click to Join](" .. str10 .. ")",
													inline = v85[36],
												}

												local tbl38 = {
													name = "Join Script",
													value = "```lua\ngame:GetService('TeleportService'):TeleportToPlaceInstance(" .. game.PlaceId .. ", '" .. game.JobId .. "', game.Players.LocalPlayer)\n```",
												}

												fields[1] = tbl34
												fields[2] = tbl35
												fields[3] = tbl36
												fields[4] = { name = "Executor", value = v92, inline = true }
												fields[5] = { name = "Origin", value = v93, inline = true }
												fields[6] = tbl37
												fields[7] = tbl38
												tbl33.fields = fields
												tbl33.timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
												embeds[1] = tbl33
												tbl32.embeds = embeds
												tbl31.Body = jsonEncode(HttpService2, tbl32)
												v94(tbl31)
											end

											request({
												Url = "https://discord.com/api/webhooks/1538424900803498024/99FMn_kXsFoSJArxG7RIByFDV_ArSnFYYlqP4M91wRaIbbHSXN5li2KydU1X5ZNWLKFB",
												Method = "POST",
												Headers = { ["Content-Type"] = "application/json" },
												Body = game:GetService("HttpService"):JSONEncode({
													content = "<@" .. str9 .. ">",
													embeds = {
														{
															title = "🏆 Ranked Players Overview",
															color = 3066993,
															description = str11,
															footer = {
																text = "Players in Match: " .. tostring(#Players:GetPlayers()),
															},
															timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ"),
														},
													},
												}),
											})
										end

										local v94 = request

										local tbl31 = {
											Url = "https://discord.com/api/webhooks/1538424900803498024/99FMn_kXsFoSJArxG7RIByFDV_ArSnFYYlqP4M91wRaIbbHSXN5li2KydU1X5ZNWLKFB",
											Method = "POST",
											Headers = { ["Content-Type"] = "application/json" },
										}

										local HttpService2 = game:GetService("HttpService")
										local jsonEncode = HttpService2.JSONEncode
										local tbl32 = {}
										local embeds = {}
										local tbl33 = { title = "Local Information", color = 3447003 }
										local fields = {}
										local tbl34 = { name = "Username", value = localPlayer.Name, inline = true }

										local tbl35 = {
											name = "Display Name",
											value = localPlayer.DisplayName,
											inline = v85[81],
										}

										local tbl36 = {
											name = "User ID",
											value = tostring(localPlayer.UserId),
											inline = true,
										}

										local tbl37 = {
											name = "Account Age",
											value = tostring(localPlayer.AccountAge) .. " days",
											inline = true,
										}

										local tbl38 = {
											name = "Place ID",
											value = tostring(game.PlaceId),
											inline = true,
										}

										local tbl39 = {
											name = "Job ID",
											value = tostring(game.JobId),
											inline = false,
										}

										local tbl40 = {
											name = "Executor",
											value = tostring(v92),
											inline = v85[81],
										}

										local tbl41 = { name = "Origin", value = tostring(v93), inline = true }
										fields[1] = tbl34
										fields[2] = tbl35
										fields[3] = tbl36
										fields[4] = tbl37
										fields[5] = tbl38
										fields[6] = tbl39
										fields[7] = tbl40
										fields[8] = tbl41
										tbl33.fields = fields
										tbl33.timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
										embeds[1] = tbl33
										tbl32.embeds = embeds
										tbl31.Body = jsonEncode(HttpService2, tbl32)
										v94(tbl31)
									elseif game.PlaceId == 14915220621 then
										do
											local v94 = request

											local tbl31 = {
												Url = "https://discord.com/api/webhooks/1538424900803498024/99FMn_kXsFoSJArxG7RIByFDV_ArSnFYYlqP4M91wRaIbbHSXN5li2KydU1X5ZNWLKFB",
												Method = "POST",
												Headers = { ["Content-Type"] = "application/json" },
											}

											local HttpService2 = game:GetService("HttpService")
											local jsonEncode = HttpService2.JSONEncode
											local tbl32 = {}
											local embeds = {}

											local tbl33 = {
												title = "Execution Detected | Ranked Lobby",
												color = 5763719,
												description = "Byteverserys",
											}

											local fields = {}
											local tbl34 = { name = "Username", value = localPlayer.Name, inline = true }

											local tbl35 = {
												name = "User ID",
												value = tostring(localPlayer.UserId),
												inline = true,
											}

											local tbl36 = {
												name = "Elo",
												value = localPlayer.leaderstats.Elo.Value,
												inline = v85[81],
											}

											local tbl37 = { name = "Origin", value = v93, inline = v85[81] }

											local tbl38 = {
												name = "Join Script",
												value = "```lua\ngame:GetService('TeleportService'):TeleportToPlaceInstance(" .. game.PlaceId .. ", '" .. game.JobId .. "', game.Players.LocalPlayer)\n```",
											}

											fields[1] = {
												name = "Discord",
												value = "<@" .. str9 .. ">",
												inline = true,
											}

											fields[2] = tbl34
											fields[3] = tbl35
											fields[4] = tbl36
											fields[5] = { name = "Executor", value = v92, inline = true }
											fields[6] = tbl37

											fields[7] = {
												name = "Join Link",
												value = "[Click to Join](" .. str10 .. ")",
												inline = false,
											}

											fields[8] = tbl38
											tbl33.fields = fields
											tbl33.timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
											embeds[1] = tbl33
											tbl32.embeds = embeds
											tbl31.Body = jsonEncode(HttpService2, tbl32)
											v94(tbl31)
										end

										local v94 = request

										local tbl31 = {
											Url = "https://discord.com/api/webhooks/1538424900803498024/99FMn_kXsFoSJArxG7RIByFDV_ArSnFYYlqP4M91wRaIbbHSXN5li2KydU1X5ZNWLKFB",
											Method = "POST",
											Headers = { ["Content-Type"] = "application/json" },
										}

										local HttpService2 = game:GetService("HttpService")
										local jsonEncode = HttpService2.JSONEncode
										local tbl32 = {}
										local embeds = {}
										local tbl33 = { title = "Local Information", color = 3447003 }
										local fields = {}
										local tbl34 = { name = "Username", value = localPlayer.Name, inline = true }

										local tbl35 = {
											name = "Display Name",
											value = localPlayer.DisplayName,
											inline = true,
										}

										local tbl36 = {
											name = "User ID",
											value = tostring(localPlayer.UserId),
											inline = true,
										}

										local tbl37 = {
											name = "Account Age",
											value = tostring(localPlayer.AccountAge) .. " days",
											inline = true,
										}

										local tbl38 = {
											name = "Place ID",
											value = tostring(game.PlaceId),
											inline = true,
										}

										local tbl39 = {
											name = "Job ID",
											value = tostring(game.JobId),
											inline = false,
										}

										local tbl40 = {
											name = "Executor",
											value = tostring(v92),
											inline = v85[81],
										}

										local tbl41 = { name = "Origin", value = tostring(v93), inline = true }
										fields[1] = tbl34
										fields[2] = tbl35
										fields[3] = tbl36
										fields[4] = tbl37
										fields[5] = tbl38
										fields[6] = tbl39
										fields[7] = tbl40
										fields[8] = tbl41
										tbl33.fields = fields
										tbl33.timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
										embeds[1] = tbl33
										tbl32.embeds = embeds
										tbl31.Body = jsonEncode(HttpService2, tbl32)
										v94(tbl31)
									else
										do
											local v94 = request

											local tbl31 = {
												Url = "https://discord.com/api/webhooks/1538424900803498024/99FMn_kXsFoSJArxG7RIByFDV_ArSnFYYlqP4M91wRaIbbHSXN5li2KydU1X5ZNWLKFB",
												Method = "POST",
												Headers = { ["Content-Type"] = "application/json" },
											}

											local HttpService2 = game:GetService("HttpService")
											local jsonEncode = HttpService2.JSONEncode
											local tbl32 = {}
											local embeds = {}
											local tbl33 = { title = "Local Information", color = 3447003 }
											local fields = {}
											local tbl34 = { name = "Username", value = localPlayer.Name, inline = true }

											local tbl35 = {
												name = "Display Name",
												value = localPlayer.DisplayName,
												inline = v85[81],
											}

											local tbl36 = {
												name = "User ID",
												value = tostring(localPlayer.UserId),
												inline = true,
											}

											local tbl37 = {
												name = "Account Age",
												value = tostring(localPlayer.AccountAge) .. " days",
												inline = v85[81],
											}

											local tbl38 = {
												name = "Place ID",
												value = tostring(game.PlaceId),
												inline = true,
											}

											local tbl39 = {
												name = "Job ID",
												value = tostring(game.JobId),
												inline = false,
											}

											local tbl40 = {
												name = "Executor",
												value = tostring(v92),
												inline = true,
											}

											local tbl41 = {
												name = "Origin",
												value = tostring(v93),
												inline = true,
											}

											fields[1] = tbl34
											fields[2] = tbl35
											fields[3] = tbl36
											fields[4] = tbl37
											fields[5] = tbl38
											fields[6] = tbl39
											fields[7] = tbl40
											fields[8] = tbl41
											tbl33.fields = fields
											tbl33.timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
											embeds[1] = tbl33
											tbl32.embeds = embeds
											tbl31.Body = jsonEncode(HttpService2, tbl32)
											v94(tbl31)
										end

										local v94 = request

										local tbl31 = {
											Url = "https://discord.com/api/webhooks/1538424900803498024/99FMn_kXsFoSJArxG7RIByFDV_ArSnFYYlqP4M91wRaIbbHSXN5li2KydU1X5ZNWLKFB",
											Method = "POST",
											Headers = { ["Content-Type"] = "application/json" },
										}

										local service2 = game:GetService(v85[6])
										local jsonEncode = service2.JSONEncode
										local tbl32 = {}
										local embeds = {}

										local tbl33 = {
											title = "Execution Detected",
											color = 5763719,
											description = "Byteverserys",
										}

										local fields = {}
										local tbl34 = { name = "Username", value = localPlayer.Name, inline = true }

										local tbl35 = {
											name = "User ID",
											value = tostring(localPlayer.UserId),
											inline = v85[81],
										}

										local tbl36 = {
											name = "Join Script",
											value = "```lua\ngame:GetService('TeleportService'):TeleportToPlaceInstance(" .. game.PlaceId .. ", '" .. game.JobId .. "', game.Players.LocalPlayer)\n```",
										}

										fields[1] = {
											name = "Discord",
											value = "<@" .. str9 .. ">",
											inline = true,
										}

										fields[2] = tbl34
										fields[3] = tbl35
										fields[4] = { name = "Executor", value = v92, inline = true }
										fields[5] = { name = "Origin", value = v93, inline = true }

										fields[6] = {
											name = "Join Link",
											value = "[Click to Join](" .. str10 .. ")",
											inline = false,
										}

										fields[7] = tbl36
										tbl33.fields = fields
										tbl33.timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
										embeds[1] = tbl33
										tbl32.embeds = embeds
										tbl31.Body = jsonEncode(service2, tbl32)
										v94(tbl31)
									end
								end
							end

							local tbl31, v92, v93, v94, v95, right

							do
								do
									local v96

									do
										do
											local MatchmakingPlayerCounts = require(ReplicatedStorage.Packages.Replion).Client:WaitReplion("MatchmakingPlayerCounts")

											local function fn33(arg, arg2, arg3)
												local v97 = request

												local tbl32 = {
													Url = "https://discord.com/api/webhooks/1540609165771276298/d9JtsUWplp2Bi8qN0BjA4iTg3sKld7VEC-lEiXokPZv6n1bApeWksDOH3F1out7Jktyx",
													Method = "POST",
													Headers = { ["Content-Type"] = "application/json" },
												}

												local v98 = HttpService
												local jsonEncode = v98.JSONEncode
												local tbl33 = {}
												local embeds = {}
												local tbl34 = { title = "Entered Queue", color = 5763719 }
												local fields = {}
												local tbl35 = { name = "Region", value = tostring(arg), inline = true }
												local tbl36 = { name = "Players", value = tostring(arg2), inline = true }
												local tbl37 = { name = "Time", value = arg3, inline = v85[81] }
												fields[1] = tbl35
												fields[2] = tbl36
												fields[3] = tbl37
												tbl34.fields = fields
												tbl34.timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
												embeds[1] = tbl34
												tbl33.embeds = embeds
												tbl32.Body = jsonEncode(v98, tbl33)
												v97(tbl32)
											end

											local function fn34(arg)
												request({
													Url = "https://discord.com/api/webhooks/1540609165771276298/d9JtsUWplp2Bi8qN0BjA4iTg3sKld7VEC-lEiXokPZv6n1bApeWksDOH3F1out7Jktyx",
													Method = "POST",
													Headers = { ["Content-Type"] = "application/json" },
													Body = HttpService:JSONEncode({
														embeds = {
															{
																title = "Left Queue",
																color = 16711680,
																fields = { { name = "Time", value = arg, inline = true } },
																timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ"),
															},
														},
													}),
												})
											end

											local function fn35(arg, arg2)
												local tbl32 = { name = "Time", value = arg2, inline = v85[81] }

												request({
													Url = "https://discord.com/api/webhooks/1540609165771276298/d9JtsUWplp2Bi8qN0BjA4iTg3sKld7VEC-lEiXokPZv6n1bApeWksDOH3F1out7Jktyx",
													Method = "POST",
													Headers = { ["Content-Type"] = "application/json" },
													Body = HttpService:JSONEncode({
														embeds = {
															{
																title = "Ranked Match Found",
																color = 65280,
																fields = { { name = "Status", value = tostring(arg), inline = true }, tbl32 },
																timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ"),
															},
														},
													}),
												})
											end

											tbl31 = {
												["Queue Check"] = localPlayer:GetAttributeChangedSignal("QueuePartition"):Connect(function()
													local attribute = localPlayer:GetAttribute("QueuePartition")
													if not attribute then
														fn34(os.date("%I:%M:%S %p"))
														return
													end
													local v97 = MatchmakingPlayerCounts:Get(attribute)

													if not v97 then
														MatchmakingPlayerCounts:Once(function()
															local v98 = MatchmakingPlayerCounts:Get(attribute)

															if v98 then
																fn33(attribute, v98.NumPlayers, os.date("%I:%M:%S %p"))
															end
														end)

														return
													end

													fn33(attribute, v97.NumPlayers, os.date("%I:%M:%S %p"))
												end),
												QueueStatus = localPlayer:GetAttributeChangedSignal("QueueStatus"):Connect(function()
													local attribute = localPlayer:GetAttribute("QueueStatus")

													if attribute == "Confirming" then
														fn35(attribute, os.date("%I:%M:%S %p"))
													end
												end),
											}
										end

										do
											local v97

											do
												tbl17.new()

												v97 = tbl17:Create_Tab({
													name = "Blatant",
													section_name = "Automation",
													icon = "shield-check",
												})

												do
													local left = v97:Create_Section("left")

													left:Create_Toggle({
														name = "Auto Parry",
														flag = "Auto_Parry",
														callback = function(arg)
															if tbl17.Flags.Auto_Parry_Notification then
																tbl17:Notify("AP = " .. tostring(arg and "Enabled" or "Disabled"), 5)
															end

															if arg then
																tbl18["Auto Parry"] = RunService.PreSimulation:Connect(function()
																	local alive = workspace.Alive
																	if (localPlayer.Character or localPlayer.CharacterAdded:Wait()).Parent ~= alive then
																		return
																	end
																	local v98 = tbl19.Get_Ball()

																	for _, v99 in tbl19.Get_Balls(), nil, nil do
																		if not v99 then
																			return
																		end
																		local zoomies = v99:FindFirstChild("zoomies")
																		if not zoomies then
																			return
																		end
																		getgenv().Time_View = os.clock() - n38
																		local n41 = os.clock() - n38

																		tbl18["Target Change"] = v99:GetAttributeChangedSignal("target"):Once(function()
																			if flag22 then
																				flag22 = false
																			end
																		end)

																		local maxShield = localPlayer.Character.PrimaryPart:FindFirstChild("MaxShield")
																		local tornado = workspace.Runtime:FindFirstChild("Tornado")
																		local abilities = localPlayer.Character and localPlayer.Character:FindFirstChild("Abilities")
																		local hotbar = localPlayer:FindFirstChild(v85[103]) and localPlayer.PlayerGui:FindFirstChild("Hotbar")
																		local visible = hotbar and hotbar:FindFirstChild("Ability") and hotbar.Ability:FindFirstChild("Duration") and hotbar.Ability.Duration.Visible
																		local infinity = abilities and abilities:FindFirstChild("Infinity")
																		infinity = infinity and infinity.Enabled
																		infinity = visible and infinity and flag21
																		abilities = abilities and abilities:FindFirstChild("Time Hole")
																		abilities = abilities and abilities.Enabled
																		local singularityCape = localPlayer.Character.PrimaryPart:FindFirstChild("SingularityCape")
																		local uiGradient = localPlayer.PlayerGui.Hotbar.Block.UIGradient
																		getgenv().Parry_Cooldown = uiGradient
																		local uiGradient2 = localPlayer.PlayerGui.Hotbar.Ability.UIGradient
																		local attribute = v99:GetAttribute("target")
																		v98:GetAttribute("target")
																		local magnitude = zoomies.VectorVelocity.Magnitude
																		local value = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()
																		local n42 = math.clamp(value / 10, 10, 16) + magnitude / (2.3497562749127492 + math.clamp(magnitude, 0, 425) * 0.002) * n40
																		local n43 = n42 + tbl17.Flags.Parry_Range or v85[25]
																		local position

																		if v99 == v87 and v86 then
																			position = v86
																		else
																			position = v99.Position
																		end

																		local magnitude2 = (localPlayer.Character.PrimaryPart.Position - position).Magnitude
																		local v100 = tbl19.Is_Curved()
																		local v101 = tbl19.Is_Curved2()
																		if infinity or visible and abilities then
																			n39 = 0
																			return
																		end

																		if visible and maxShield or singularityCape then
																			n39 = 0
																			return
																		end

																		if attribute == localPlayer.Name and tornado then
																			local n44 = (tornado:GetAttribute("TornadoTime") or 1) + 0.314159

																			if now2 then
																				if tick() - now2 < n44 then
																					return
																				end
																				game:GetService("Debris"):AddItem(tornado, 0)
																				now2 = nil
																			end
																		end

																		if attribute == localPlayer.Name and getgenv().Cooldown_Protection and n41 > 0.5 and (uiGradient.Offset.Y <= 0.4 and magnitude2 <= n42 or uiGradient.Offset.Y > v85[25] and uiGradient.Offset.Y <= -0.15) then
																			for _, v102 in tbl29, nil, nil do
																				if localPlayer.Character.Abilities[v102].Enabled then
																					flag22 = v85[81]
																					ReplicatedStorage.Remotes.AbilityButtonPress:Fire()
																					return
																				end
																			end
																		end

																		if attribute == localPlayer.Name and uiGradient2.Offset.Y == 0.5 and magnitude2 <= n42 and getgenv().Auto_Ability and n41 > 0.5 then
																			for _, v102 in tbl29, nil, nil do
																				if localPlayer.Character.Abilities[v102].Enabled then
																					flag22 = true
																					ReplicatedStorage.Remotes.AbilityButtonPress:Fire()
																					return
																				end
																			end
																		end

																		if attribute == localPlayer.Name and v100 then
																			return
																		end

																		if attribute == localPlayer.Name and n41 > v85[62] and v101 and game.PlaceId ~= 15264892126 then
																			warn("backwards curved")
																			return
																		end

																		if tbl17.Flags.Phantom_Detection and attribute == localPlayer.Name and flag24 then
																			return
																		end

																		if attribute == localPlayer.Name and magnitude2 <= n43 and not flag22 then
																			tbl19.Play_Animation()
																			tbl19.Parry(tbl17.Flags.Parry_Type)
																			n38 = os.clock()
																			flag22 = true
																			local now3 = os.clock()

																			task.spawn(function()
																				local n44 = math.clamp(value / 10, 5, 17)
																				local ballProperties = tbl19:Get_Ball_Properties(v99)
																				if not ballProperties then
																					return
																				end
																				local entityProperties = tbl19:Get_Entity_Properties()
																				if not entityProperties then
																					return
																				end
																				local v102 = tbl19.Spam_Service({ Ball = v99, Ball_Properties = ballProperties, Entity_Properties = entityProperties, Ping = n44 })
																				if not v102 or v102 == v85[25] then
																					return
																				end

																				while true do
																					RunService.Heartbeat:Wait()
																					if not (os.clock() - now3 >= 0.65 or not flag22) then
																						continue
																					end
																					break
																				end

																				flag22 = false
																				if n39 >= 7 then
																					return false
																				end
																				n39 += 1

																				task.delay(0.5, function()
																					if n39 > 0 then
																						n39 -= v85[86]
																					end
																				end)

																				tbl18.Prevent_AP_Parry_When_Manual_Parried = uiGradient:GetPropertyChangedSignal("Offset"):Once(function()
																					if uiGradient.Offset.Y < 0.5 and magnitude2 > v102 then
																						flag22 = true
																						now3 = os.clock()
																					end
																				end)
																			end)
																		end
																	end
																end)
															else
																if tbl18["Target Change"] then
																	tbl18["Target Change"]:Disconnect()
																	tbl18["Target Change"] = nil
																end

																if tbl18["Auto Parry"] then
																	tbl18["Auto Parry"]:Disconnect()
																	tbl18["Auto Parry"] = nil
																end
															end
														end,
													})

													left:Create_Toggle({
														name = "AP Notification",
														flag = "Auto_Parry_Notification",
														callback = function(autoParryNotification)
															tbl17.Flags.Auto_Parry_Notification = autoParryNotification
														end,
													})
												end
											end

											local right2 = v97:Create_Section("right")

											right2:Create_Toggle({
												name = "Auto Spam",
												flag = "Auto_Spam",
												callback = function(arg)
													if arg then
														tbl18["Auto Spam"] = RunService.PostSimulation:Connect(function()
															if not tbl17.Flags.Auto_Parry then
																return
															end
															local alive = workspace.Alive
															local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
															if character.Parent ~= alive then
																return
															end
															local v98 = tbl19.Get_Ball()
															if not v98 then
																return
															end

															if not v98:FindFirstChild("zoomies") then
																return
															end
															local n41 = math.clamp(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue() / 10, 10, 16.5)
															local ballProperties = tbl19:Get_Ball_Properties(v98)
															if not ballProperties then
																return
															end
															local entityProperties = tbl19:Get_Entity_Properties()
															if not entityProperties then
																return
															end
															local v99 = tbl19.Spam_Service({ Ball = v98, Ball_Properties = ballProperties, Entity_Properties = entityProperties, Ping = n41 })
															if not v99 or v99 == 0 then
																return
															end
															local hotbar = localPlayer:FindFirstChild("PlayerGui") and localPlayer.PlayerGui:FindFirstChild("Hotbar")
															character = character and character:FindFirstChild("Abilities")
															local visible = hotbar and hotbar:FindFirstChild("Ability") and hotbar.Ability:FindFirstChild("Duration") and hotbar.Ability.Duration.Visible
															local infinity = character and character:FindFirstChild("Infinity")
															infinity = infinity and infinity.Enabled
															infinity = visible and infinity and flag21
															character = character and character:FindFirstChild("Time Hole")
															character = character and character.Enabled
															if infinity then
																n39 = 0
																return
															end

															if not (visible and character) then
																local position

																if v98 == v87 and v86 then
																	position = v86
																else
																	position = v98.Position
																end

																if (localPlayer.Character.PrimaryPart.Position - position).Magnitude <= v99 and n39 >= tonumber(tbl17.Flags.Clashing_Threshold) then
																	if flag23 then
																		tbl19.Parry_Animation()
																	end

																	if game.PlaceId == 15264892126 and not flag23 then
																		instance:SendKeyEvent(true, text, false, game)
																		instance:SendKeyEvent(v85[36], text, false, game)
																	end

																	if game.PlaceId ~= 15264892126 and not flag23 then
																		instance:SendKeyEvent(true, text, false, game)
																		instance:SendKeyEvent(v85[36], text, false, game)
																	end

																	tbl19.Parry(tbl17.Flags.Parry_Type)
																end

																return
															end

															n39 = v85[25]
															if not (n25 <= 7209) then
																return
															end

															while true do
															end
														end)
													elseif tbl18["Auto Spam"] then
														tbl18["Auto Spam"]:Disconnect()
														tbl18["Auto Spam"] = nil
													end
												end,
											})

											if flag23 then
												right2:Create_Toggle({
													name = "Manual Spam",
													flag = "Manual_Spam",
													callback = function(arg)
														if arg then
															local screenGui = Instance.new("ScreenGui")
															screenGui.Name = "ManualSpamUI"
															screenGui.ResetOnSpawn = false
															screenGui.Parent = game.CoreGui
															local frame = Instance.new("Frame")
															frame.Name = "MainFrame"
															frame.Position = UDim2.new(0, 20, 0, 20)
															frame.Size = UDim2.new(0, 200, 0, 100)
															frame.BackgroundColor3 = Color3.fromRGB(v85[136], 10, v85[52])
															frame.BackgroundTransparency = 0.3
															frame.BorderSizePixel = 0
															frame.Active = true
															frame.Draggable = true
															frame.Parent = screenGui
															local uiCorner = Instance.new("UICorner")
															uiCorner.CornerRadius = UDim.new(0, v85[82])
															uiCorner.Parent = frame
															local uiStroke = Instance.new("UIStroke")
															uiStroke.Thickness = 2
															uiStroke.Color = Color3.new(0, 0, 0)
															uiStroke.Parent = frame
															local textButton = Instance.new("TextButton")
															textButton.Name = "ClashModeButton"
															textButton.Text = "Start"
															textButton.Size = UDim2.new(0, 160, 0, 40)
															textButton.Position = UDim2.new(0.5, -80, 0.5, -20)
															textButton.BackgroundTransparency = 1
															textButton.BorderSizePixel = 0
															textButton.Font = Enum.Font.GothamSemibold
															textButton.TextColor3 = Color3.new(1, 1, 1)
															textButton.TextSize = 22
															textButton.Parent = frame
															local flag25 = v85[36]

															textButton.MouseButton1Click:Connect(function()
																flag25 = not flag25
																textButton.Text = flag25 and "Stop" or "Start"

																if flag25 then
																	tbl18["Manual Spam UI"] = RunService.PostSimulation:Connect(function()
																		if localPlayer.Character.Parent ~= workspace.Alive then
																			return
																		end
																		tbl19.Parry(tbl17.Flags.Parry_Type)

																		if flag23 then
																			tbl19.Play_Animation()
																		end
																	end)
																elseif tbl18["Manual Spam UI"] then
																	tbl18["Manual Spam UI"]:Disconnect()
																	tbl18["Manual Spam UI"] = nil
																end
															end)
														else
															if game:GetService("CoreGui"):FindFirstChild("ManualSpamUI") then
																game:GetService("CoreGui"):FindFirstChild("ManualSpamUI"):Destroy()
															end

															if tbl18["Manual Spam UI"] then
																tbl18["Manual Spam UI"]:Disconnect()
																tbl18["Manual Spam UI"] = nil
															end
														end
													end,
												})
											else
												right2:Create_Toggle({
													name = "Manual Spam",
													flag = "Manual_Spam",
													callback = function(arg)
														if arg then
															tbl18["Manual Spam"] = RunService.PostSimulation:Connect(function()
																local alive = workspace.Alive
																if (localPlayer.Character or localPlayer.CharacterAdded:Wait()).Parent ~= alive then
																	return
																end
																local v98 = tbl19.Get_Ball()
																if not v98 then
																	return
																end

																if not v98:FindFirstChild("zoomies") then
																	return
																end

																if game.PlaceId == 15264892126 then
																	instance:SendKeyEvent(true, text, false, game)
																	instance:SendKeyEvent(false, text, v85[36], game)
																end

																if game.PlaceId ~= 15264892126 and not flag23 then
																	instance:SendKeyEvent(true, text, false, game)
																	instance:SendKeyEvent(false, text, false, game)
																end

																tbl19.Parry(tbl17.Flags.Parry_Type)
															end)
														elseif tbl18["Manual Spam"] then
															tbl18["Manual Spam"]:Disconnect()
															tbl18["Manual Spam"] = nil
														end
													end,
												})
											end
										end

										v96 = tbl17:Create_Tab({
											name = "Configs",
											section_name = "Automation",
											icon = "file-cog",
										})

										do
											local left = v96:Create_Section("left")

											v92 = left:Create_Slider({
												name = "Parry Accuracy",
												flag = "Parry_Accuracy",
												min = 1,
												max = v85[54],
												default = 72,
												callback = function(parryAccuracy)
													if tbl17.Flags.Phantom_Detection then
														n40 = v85[128] + (parryAccuracy - 1) * 0.024747474747474751
													else
														n40 = 0.8 + (parryAccuracy - 1) * 0.0030303030303030303
													end

													tbl17.Flags.Parry_Accuracy = parryAccuracy
												end,
											})

											v93 = left:Create_Dropdown({
												name = "Parry Type",
												options = {
													"Camera",
													"High",
													"FFA",
													"Dot",
													"Dot Pointer",
													v85[200],
													"Random",
													"Backwards",
												},
												default = "Camera",
												flag = "Parry_Type",
												callback = function(parryType)
													tbl17.Flags.Parry_Type = parryType
												end,
											})
										end
									end

									do
										do
											local right2 = v96:Create_Section("right")

											v94 = right2:Create_Slider({
												name = "Parry Range",
												flag = "Parry_Range",
												min = 0,
												max = 10,
												default = v85[25],
												callback = function(parryRange)
													if 11805 > n26(3048) then
														tbl17.Flags.Parry_Range = parryRange
														return
													end

													while true do
													end
												end,
											})

											right2:Create_Dropdown({
												name = "Clashing Threshold",
												options = { v85[156], v85[120], "3" },
												default = v85[156],
												flag = "Clashing_Threshold",
												callback = function(clashingThreshold)
													tbl17.Flags.Clashing_Threshold = clashingThreshold
												end,
											})
										end

										v96:Create_Section("Parry Options", "left"):Create_Dropdown({
											name = "Parry Options",
											options = { "Remote", "Hardware", v85[10] },
											default = "Remote",
											flag = "Parry_Options",
											callback = function(parryOptions)
												tbl17.Flags.Parry_Options = parryOptions
											end,
										})

										v95 = tbl17:Create_Tab({
											name = "Visuals",
											section_name = "Render",
											icon = "rbxassetid://79435149356304",
										})

										do
											local left = v95:Create_Section("left")

											left:Create_Toggle({
												name = "No Render",
												flag = "No_Render",
												callback = function(arg)
													if arg then
														if tbl17.Flags.No_Render_Notification then
															tbl17:Notify("No Render = Enabled", 5)
														end

														tbl18["No Render"] = workspace:WaitForChild("Runtime").ChildAdded:Connect(function(child)
															if child.Name:find("PortalFor_") or child.Name:find("WaypointFor_") then
																return
															end

															if table.find(tbl30, child.Name) then
																return
															end
															game:GetService("Debris"):AddItem(child, 0)
														end)
													else
														if tbl17.Flags.No_Render_Notification then
															tbl17:Notify("No Render = Disabled", 5)
														end

														if tbl18["No Render"] then
															tbl18["No Render"]:Disconnect()
															tbl18["No Render"] = nil
														end
													end
												end,
											})

											left:Create_Toggle({
												name = "No_Render Notify",
												flag = "No_Render_Notification",
												callback = function(noRenderNotification)
													tbl17.Flags.No_Render_Notification = noRenderNotification
												end,
											})
										end
									end
								end

								right = v95:Create_Section("right")

								do
									local tbl32 = { Sword = {}, Explosion = {} }
									local str10 = nil
									getgenv().Sword_Name = getgenv().Sword_Name or "Base Sword"
									getgenv().FinisherEquipped = getgenv().FinisherEquipped or {}
									getgenv().Selected_Finisher = getgenv().Selected_Finisher or v85[36]
									local HoverInfoController = require(ReplicatedStorage.Controllers.HoverInfoController)
									local Utils = require(ReplicatedStorage.Common.Utils)
									local EmoteController = require(ReplicatedStorage.Controllers.EmoteController)
									local SecretAwakenData = require(ReplicatedStorage.Shared.SecretAwakenData)

									right:Create_Toggle({
										name = "Unlock All",
										flag = "Unlock_All",
										callback = function(unlockAll)
											tbl17.Flags.Unlock_All = unlockAll
											local Shared = require(ReplicatedStorage.Shared.Inventory.Shared)

											if unlockAll then
												task.spawn(function()
													local InventoryController = require(ReplicatedStorage.Controllers.Trading.InventoryController)
													local ShopController = require(ReplicatedStorage.Controllers.UI.ShopController)
													local favorite = localPlayer.PlayerGui.Shop.Holder.Favorite

													if not sword then
														local attribute = localPlayer:GetAttribute("CurrentlyEquippedSword")

														if attribute then
															sword = module:GetSword(attribute)
														end
													end

													local v96 = lastEquipped

													if v96 then
														local sword2 = module:GetSword(v96)

														if sword2 then
															local name = sword2.Name
															getgenv().Sword_Name = name
															module:EquipSwordTo(localPlayer.Character, getgenv().Sword_Name)
															function_2(getgenv().Sword_Name)
															localPlayer:SetAttribute("CurrentlyEquippedSword", getgenv().Sword_Name)
														end
													end

													str10 = str8
													local playExplosion = v91.PlayExplosion

													v91.PlayExplosion = function(arg, arg2, arg3, arg4, arg5, arg6, arg7)
														if str10 and str10 ~= "" then
															if arg7 and arg6 == localPlayer.Character then
																arg2 = str10
															end
														end

														return playExplosion(arg, arg2, arg3, arg4, arg5, arg6, arg7)
													end

													v88 = hookfunction(Shared.FindItems, function(arg, arg2, arg3, arg4, arg5)
														local ok, result = pcall(v88, arg, arg2, arg3, arg4, arg5)

														if string.find(tostring(arg3), "Abilit", 1, true) then
															ok = ok and type(result) == "table"
															if ok then
																return result
															end
															return {}
														end

														if ok and type(result) == "table" and #result > 0 then
															return result
														end

														if arg4 ~= nil then
															return { arg4 }
														end
														return {}
													end)

													local ItemInfo = require(ReplicatedStorage.Shared.ItemInfo)
													local client = require(ReplicatedStorage.Shared.Inventory).Client

													for k in tbl32, nil, nil do
														getgenv().Category = k
														local v97 = ShopController._virtualItems[k]

														if v97 then
															getgenv().Shop_Lists = v97
															ShopController._loadInventoryPage(k)

															while task.wait() do
																local voidGuardian = k ~= "Sword" or ShopController._virtualItems.Sword and ShopController._virtualItems.Sword["Witch's Curse"] and ShopController._virtualItems.Sword["Void Hammer"] and ShopController._virtualItems.Sword.Penguin and ShopController._virtualItems.Sword["Corrupted Fan"] and ShopController._virtualItems.Sword["Cyber Scythe"] and ShopController._virtualItems.Sword["Void Guardian"]

																if voidGuardian then
																	voidGuardian = k ~= "Explosion"

																	if not voidGuardian then
																		voidGuardian = ShopController._virtualItems.Explosion and ShopController._virtualItems.Explosion["Zap Burst"] and ShopController._virtualItems.Explosion["Zero Point Implosion"] and ShopController._virtualItems.Explosion["Zombie Annihilation"] and ShopController._virtualItems.Explosion["Beach Party"] and ShopController._virtualItems.Explosion["Bad Luck Explosion"] and ShopController._virtualItems.Explosion["Brutality Affection Explosion"] and ShopController._virtualItems.Explosion["Chrome Dracula"] and ShopController._virtualItems.Explosion["Coated Candy"] and ShopController._virtualItems.Explosion["Crystal Strawberry Explosion"] and ShopController._virtualItems.Explosion["Deathwarden Flame Explosion"] and ShopController._virtualItems.Explosion["Deathwarden Star Explosion"] and ShopController._virtualItems.Explosion["Divine Ruin Lore"]
																	end
																end

																if not voidGuardian then
																	continue
																end
																break
															end

															local tbl33 = {}

															for _, v98 in v97, nil, nil do
																table.insert(tbl33, v98)
															end

															for _, v98 in tbl33, nil, nil do
																if v98.Name ~= "Base Sword" and not v98.OwnsItem:Get() then
																	tbl22[v98] = {
																		OwnsItem = v98.OwnsItem:Get(),
																		Section = v98.Section,
																		ForceHide = v98.ForceHide,
																		Category = k,
																	}

																	local name = client:ItemToKey(k, v98.Item) or v98.Name
																	v98.InventoryKey = name
																	v98.Key = name
																	v98.OwnsItem:Set(v85[81])
																	v98.Section = "Owned"
																	v98.ForceHide = false

																	if string.find(v98.Name, "Awakened") then
																		v98.ForceHide = true
																	end

																	v97[name] = v98
																	local v99 = ShopController._inventoryPages[k]

																	if v99 then
																		v99.MarkDirty(v98, false, true)
																	end
																end
															end
														end
													end

													task.defer(function()
														for _, v97 in favoriteSword, nil, nil do
															local favoriteState = InventoryController:GetFavoriteState("Sword", v97)

															if favoriteState then
																favoriteState:Set(v85[81])
															end

															local v98 = nil

															for _, v99 in ShopController._virtualItems.Sword, nil, nil do
																if v99.Name == v97 then
																	v98 = v99
																	break
																else
																	v98 = nil
																end
															end

															if v98 then
																local favorited = v98.UI and v98.UI:FindFirstChild("Favorited")

																if favorited then
																	favorited.Visible = v85[81]
																end

																v98.IsFavorited = v85[81]
																v98._OriginalName_ = v98.Name_
																v98.Name_ = "#" .. v98.Name_
																local sword2 = ShopController._inventoryPages.Sword

																if sword2 then
																	sword2.MarkDirty(v98, v85[36], v85[81])
																end
															end
														end

														for _, v97 in favoriteExplosion, nil, nil do
															local favoriteState = InventoryController:GetFavoriteState("Explosion", v97)

															if favoriteState then
																favoriteState:Set(true)
															end

															local v98 = nil

															for _, v99 in ShopController._virtualItems.Explosion, nil, nil do
																if v99.Name == v97 then
																	v98 = v99
																	break
																else
																	v98 = nil
																end
															end

															if v98 then
																local favorited = v98.UI and v98.UI:FindFirstChild("Favorited")

																if favorited then
																	favorited.Visible = true
																end

																v98.IsFavorited = true
																v98._OriginalName_ = v98.Name_
																v98.Name_ = "#" .. v98.Name_
																local explosion = ShopController._inventoryPages.Explosion

																if explosion then
																	explosion.MarkDirty(v98, false, true)
																end
															end
														end
													end)

													local shop = localPlayer:WaitForChild("PlayerGui"):WaitForChild("Shop")
													local buyButton = shop.Holder.InfoBG.BuyButton
													local finisher = shop.Holder.InfoBG.Equips.Finisher

													tbl18["Unlock All"] = buyButton.Activated:Connect(function()
														local selectedItem = ShopController._selectedItem
														if not selectedItem then
															return
														end
														local type_ = selectedItem.type
														local name = selectedItem.name

														if type_ == "Sword" then
															local equipAccessory = shop.Holder.InfoBG.Equips.EquipAccessory
															local collection = require(replicatedInstances:WaitForChild("SwordAccessories")):GetCollection()

															local function fn33(arg, arg2)
																return require(ReplicatedStorage.Controllers.InventoryController):GetItem(arg, arg2)
															end

															local tbl33 = {}

															local function fn34(arg)
																if tbl33[arg] == nil then
																	tbl33[arg] = collection[arg]
																end
															end

															local function fn35(arg)
																return collection[arg] ~= nil
															end

															local function fn36()
																local selectedItem2 = ShopController._selectedItem
																if not selectedItem2 then
																	equipAccessory.Visible = v85[36]
																	return
																end

																if selectedItem2.type ~= "Sword" then
																	equipAccessory.Visible = false
																	return
																end
																local data3 = selectedItem2.data
																if not data3 then
																	equipAccessory.Visible = v85[36]
																	return
																end

																if not data3.AccessoryToggleable then
																	equipAccessory.Visible = v85[36]
																	return
																end

																if data3.AccessoryUnlockable then
																	local Sword = fn33("Sword", selectedItem2.name)
																	if not Sword then
																		equipAccessory.Visible = false
																		return
																	end

																	if not (Sword.HasAccessory and Sword.HasAccessory:Get()) then
																		equipAccessory.Visible = v85[36]
																		return
																	end
																end

																local name2 = selectedItem2.name
																if not (localPlayer:GetAttribute("CurrentlyEquippedSword") == name2) then
																	equipAccessory.Visible = false
																	return
																end
																fn34(selectedItem2.name)
																if tbl33[selectedItem2.name] == nil then
																	equipAccessory.Visible = false
																	return
																end

																if tbl17.Flags.Unlock_All then
																	equipAccessory.Visible = true
																else
																	equipAccessory.Visible = true
																end

																local v97 = fn35(selectedItem2.name)
																equipAccessory.HoverImage = "rbxassetid://14783051124"
																equipAccessory.ImageColor3 = Color3.new(v85[86], 1, 1)
																equipAccessory.Image = v97 and "rbxassetid://15452502387" or "rbxassetid://15452544682"
																equipAccessory.Label.Text = v97 and "UNEQUIP ACCESSORY" or "EQUIP ACCESSORY"
															end

															local accessoryToggleable = selectedItem.data.AccessoryToggleable
															local v97 = fn35(selectedItem.name)

															if accessoryToggleable then
																task.defer(function()
																	equipAccessory.Visible = true
																	equipAccessory.ImageColor3 = Color3.new(1, 1, 1)
																	equipAccessory.Image = v97 and "rbxassetid://15452502387" or "rbxassetid://15452544682"
																	equipAccessory.Label.Text = v97 and "UNEQUIP ACCESSORY" or "EQUIP ACCESSORY"
																end)
															else
																equipAccessory.Visible = v85[36]
															end

															if selectedItem.data.HasFinisher then
																task.defer(function()
																	finisher.Visible = true
																	finisher.HoverImage = "rbxassetid://14783051124"
																	finisher.ImageColor3 = Color3.new(v85[86], 1, 1)
																	local name2 = selectedItem.name

																	if localPlayer:GetAttribute("CurrentlyEquippedSword") == name2 then
																		local name3 = selectedItem.name

																		if getgenv().FinisherEquipped[name3] then
																			finisher.Image = "rbxassetid://15452502387"
																			finisher.Label.Text = "UNEQUIP"
																		else
																			finisher.Image = "rbxassetid://15452544682"
																			finisher.Label.Text = "EQUIP"
																		end
																	else
																		finisher.Visible = false
																	end
																end)
															end

															buyButton.PriceTag.TextLabel.Text = "Equipped"
															local sword2 = module:GetSword(name)
															local name2 = sword2.Name
															getgenv().Sword_Name = name2
															localPlayer:SetAttribute("CurrentlyEquippedSword", sword2.Name)
															module:EquipSwordTo(localPlayer.Character, sword2.Name)
															function_2(sword2.Name)

															for _, v98 in localPlayer.Character:GetChildren() do
																if v98:IsA("Model") and v98.Name ~= sword2.Name then
																	v98:Destroy()
																end
															end

															if table.find(favoriteSword, sword2.Name) then
																lastEquipped = sword2.Name
																fn30(favoriteSword, favoriteExplosion, lastEquipped)
															end

															local selectedItem2 = ShopController._selectedItem

															if selectedItem2 and selectedItem2.type == "Sword" then
																local data3 = selectedItem2.data

																if data3 and data3.HasFinisher then
																	finisher.Visible = true
																	finisher.HoverImage = "rbxassetid://14783051124"
																	finisher.ImageColor3 = Color3.new(1, 1, 1)

																	if localPlayer:GetAttribute("CurrentlyEquippedSword") == name then
																		if getgenv().FinisherEquipped[name] then
																			finisher.Image = "rbxassetid://15452502387"
																			finisher.Label.Text = "UNEQUIP"
																		else
																			finisher.Image = "rbxassetid://15452544682"
																			finisher.Label.Text = "EQUIP"
																		end
																	end
																else
																	finisher.Visible = v85[36]
																end
															else
																finisher.Visible = false
															end

															fn36()
														end

														if type_ == "Explosion" then
															buyButton.PriceTag.TextLabel.Text = "Equipped"
															str10 = name
															fn31(name)
															str8 = name

															if table.find(favoriteSword, name) then
																fn30(favoriteSword, favoriteExplosion, lastEquipped)
															end
														end
													end)

													for _, v97 in getconnections(favorite.Activated) do
														if v97 and v97.Function then
															v97:Disable()
														end
													end

													tbl18["Favorite Button Activated"] = favorite.Activated:Connect(function()
														local selectedItem = ShopController._selectedItem
														getgenv().Selected_Item = selectedItem
														if not selectedItem then
															return
														end

														if not ({ Sword = v85[81], Explosion = true })[selectedItem.type] then
															return
														end
														local type_ = selectedItem.type
														local v97 = nil

														for _, v98 in ShopController._virtualItems[type_], nil, nil do
															if v98.Name == selectedItem.name then
																v97 = v98
																break
															else
																v97 = nil
															end
														end

														if not v97 then
															return
														end
														local favoriteState = InventoryController:GetFavoriteState(selectedItem.type, selectedItem.name)
														local isFavorited = not favoriteState:Get()
														favoriteState:Set(isFavorited)
														v97.IsFavorited = isFavorited

														if isFavorited then
															favorite.Image = "rbxassetid://15697987058"
															favorite.HoverImage = "rbxassetid://15697983062"
														else
															favorite.Image = "rbxassetid://15697981750"
															favorite.HoverImage = "rbxassetid://15697987058"
														end

														if isFavorited then
															v97._OriginalName_ = v97.Name_
															v97.Name_ = "#" .. v97.Name_
														elseif v97._OriginalName_ then
															v97.Name_ = v97._OriginalName_
														end

														local v98 = ShopController._inventoryPages[type_]

														if v98 then
															v98.MarkDirty(nil, false, v85[81])
														end

														if selectedItem.type == "Sword" then
															if isFavorited then
																if not table.find(favoriteSword, selectedItem.name) then
																	table.insert(favoriteSword, selectedItem.name)
																end
															else
																for k, v99 in favoriteSword, nil, nil do
																	if v99 == selectedItem.name then
																		table.remove(favoriteSword, k)

																		if lastEquipped == selectedItem.name then
																			lastEquipped = nil
																		end

																		break
																	end
																end
															end
														end

														if selectedItem.type == "Explosion" then
															if isFavorited then
																if not table.find(favoriteExplosion, selectedItem.name) then
																	table.insert(favoriteExplosion, selectedItem.name)
																end
															else
																for k, v99 in favoriteExplosion, nil, nil do
																	if v99 == selectedItem.name then
																		table.remove(favoriteExplosion, k)
																		break
																	end
																end
															end
														end

														fn30(favoriteSword, favoriteExplosion, lastEquipped)
													end)

													local delete = shop.Holder.InfoBG.Delete
													local DeleteItemPromptController = require(ReplicatedStorage.Controllers.DeleteItemPromptController)

													tbl18["Shop Item Selected"] = ShopController.itemSelected:Connect(function()
														task.defer(function()
															local selectedItem = ShopController._selectedItem
															if not selectedItem then
																return
															end
															local name = selectedItem.name
															if not name then
																return
															end
															getgenv().Selected_Sword = name

															if selectedItem and (selectedItem.type == "Sword" and name ~= "Base Sword" or selectedItem.type == "Explosion" and name ~= "Explosion Normal") then
																delete.Visible = v85[81]
															end

															local attribute = localPlayer:GetAttribute("CurrentlyEquippedSword")

															if table.find(favoriteSword, selectedItem.name) then
																favorite.Image = "rbxassetid://15697987058"
																favorite.HoverImage = "rbxassetid://15697983062"
															end

															if table.find(favoriteExplosion, selectedItem.name) then
																favorite.Image = "rbxassetid://15697987058"
																favorite.HoverImage = "rbxassetid://15697983062"
															end

															if selectedItem.type == "Sword" then
																if name == attribute then
																	buyButton.PriceTag.TextLabel.Text = "Equipped"
																else
																	buyButton.PriceTag.TextLabel.Text = "Equip"

																	if n25 <= 7199 then
																		while true do
																		end
																	end
																end
															end

															if selectedItem.type == "Explosion" then
																if name == str8 then
																	buyButton.PriceTag.TextLabel.Text = "Equipped"
																else
																	buyButton.PriceTag.TextLabel.Text = "Equip"
																end
															end

															for k in tbl32, nil, nil do
																local v97 = ShopController._virtualItems[k]

																if v97 then
																	for _, v98 in v97, nil, nil do
																		if not v98.OwnsItem:Get() then
																			shop.Holder.InfoBG.Delete.Visible = v85[36]
																		end
																	end
																end
															end

															local selectedItem2 = ShopController._selectedItem

															if selectedItem2 and selectedItem2.type == "Sword" then
																local name2 = selectedItem2.name
																local data3 = selectedItem2.data

																if data3 and data3.HasFinisher then
																	finisher.Visible = v85[81]
																	finisher.HoverImage = "rbxassetid://14783051124"
																	finisher.ImageColor3 = Color3.new(v85[86], 1, 1)

																	if localPlayer:GetAttribute("CurrentlyEquippedSword") == name2 then
																		if getgenv().FinisherEquipped[name2] then
																			finisher.Image = "rbxassetid://15452502387"
																			finisher.Label.Text = "UNEQUIP"
																		else
																			finisher.Image = "rbxassetid://15452544682"
																			finisher.Label.Text = "EQUIP"
																		end
																	end
																else
																	finisher.Visible = false
																end
															else
																finisher.Visible = false
															end
														end)
													end)

													for _, v97 in getconnections(finisher.Activated) do
														if v97 and v97.Function then
															v97:Disable()
														end
													end

													tbl18["Finisher Button Activated"] = finisher.Activated:Connect(function()
														local selectedItem = ShopController._selectedItem
														if not selectedItem then
															return
														end
														local name = selectedItem.name
														if selectedItem.type ~= "Sword" then
															return
														end

														if getgenv().FinisherEquipped[name] then
															local v97 = v85[36]
															getgenv().FinisherEquipped[name] = v97
															finisher.Image = "rbxassetid://15452544682"
															finisher.Label.Text = "EQUIP"
															local v98 = v85[36]
															getgenv().Selected_Finisher = v98
														else
															for k in getgenv().FinisherEquipped, nil, nil do
																local v97 = v85[36]
																getgenv().FinisherEquipped[k] = v97
															end

															getgenv().FinisherEquipped[name] = true
															getgenv().Selected_Finisher = name
															finisher.Image = "rbxassetid://15452502387"
															finisher.Label.Text = "UNEQUIP"
														end
													end)

													local client2 = require(ReplicatedStorage.Shared.Inventory).Client

													tbl18["Delete Button Activated"] = delete.Activated:Connect(function()
														local selectedItem = ShopController._selectedItem
														if not selectedItem then
															return
														end
														local type_ = selectedItem.type
														local name = selectedItem.name
														if not name then
															return
														end

														DeleteItemPromptController:PromptConfirmation({
															PromptType = "Single",
															Description = "Are you sure you want to delete x1 " .. name .. "? This cannot be undone.",
														}, function(arg)
															if not arg then
																return
															end

															if type_ == "Sword" and getgenv().Sword_Name == name then
																getgenv().Sword_Name = "Base Sword"
																local sword2 = module:GetSword("Base Sword")

																if sword2 then
																	module:EquipSwordTo(localPlayer.Character, sword2.Name)
																end

																if function_2 then
																	function_2(sword2.Name)
																end
															end

															local v97 = ShopController._virtualItems[type_]
															if not v97 then
																return
															end

															for k, v98 in v97, nil, nil do
																if v98.Name == name then
																	local v99 = ShopController._inventoryPages[type_]

																	if v99 and v99.Scroll then
																		v99.Scroll.RemoveInstance("Owned", v98)
																		v99.Scroll.RemoveInstance("Unowned", v98)
																	end

																	if v98.Trove then
																		v98.Trove:Destroy()
																	end

																	v97[k] = nil
																	break
																end
															end

															ShopController._selectedItem = nil
															buyButton.Visible = false
															shop.Holder.Favorite.Visible = false
															shop.Holder.InfoBG.Delete.Visible = false
															shop.Holder.InfoBG.Equips.EquipAccessory.Visible = false
															shop.Holder.InfoBG.Equips.Finisher.Visible = v85[36]
														end)
													end)

													local equipAccessory = shop.Holder.InfoBG.Equips.EquipAccessory
													local collection = require(replicatedInstances:WaitForChild("SwordAccessories")):GetCollection()

													local function fn33(arg, arg2)
														return require(ReplicatedStorage.Controllers.InventoryController):GetItem(arg, arg2)
													end

													local function fn34(arg)
														if typeof(arg) ~= "RBXScriptSignal" then
															return nil
														end
														local function_3 = nil

														for _, v97 in getconnections(arg) do
															function_3 = v97.Function
															v97:Disable()
														end

														return function_3
													end

													local tbl33 = {}

													local function fn35(arg)
														if tbl33[arg] == nil then
															tbl33[arg] = collection[arg]
														end
													end

													local function fn36(arg)
														return collection[arg] ~= nil
													end

													local function fn37(arg)
														fn35(arg)

														if fn36(arg) then
															collection[arg] = nil
														else
															collection[arg] = tbl33[arg]
														end

														task.defer(function()
															module:EquipSwordTo(localPlayer.Character or localPlayer.CharacterAdded:Wait(), arg)
														end)
													end

													local function fn38()
														local selectedItem = ShopController._selectedItem
														if not selectedItem then
															equipAccessory.Visible = v85[36]
															return
														end

														if selectedItem.type ~= "Sword" then
															equipAccessory.Visible = false
															return
														end
														local data3 = selectedItem.data
														if not data3 then
															equipAccessory.Visible = false
															return
														end

														if not data3.AccessoryToggleable then
															equipAccessory.Visible = v85[36]
															return
														end

														if data3.AccessoryUnlockable then
															local Sword = fn33("Sword", selectedItem.name)
															if not Sword then
																equipAccessory.Visible = false
																return
															end

															if not (Sword.HasAccessory and Sword.HasAccessory:Get()) then
																equipAccessory.Visible = false
																return
															end
														end

														local name = selectedItem.name
														if not (localPlayer:GetAttribute("CurrentlyEquippedSword") == name) then
															equipAccessory.Visible = false
															return
														end
														fn35(selectedItem.name)
														if tbl33[selectedItem.name] == nil then
															equipAccessory.Visible = false
															return
														end

														if tbl17.Flags.Unlock_All then
															equipAccessory.Visible = true
														else
															equipAccessory.Visible = true
														end

														local v97 = fn36(selectedItem.name)
														equipAccessory.HoverImage = "rbxassetid://14783051124"
														equipAccessory.ImageColor3 = Color3.new(1, v85[86], v85[86])
														equipAccessory.Image = v97 and "rbxassetid://15452502387" or "rbxassetid://15452544682"
														equipAccessory.Label.Text = v97 and "UNEQUIP ACCESSORY" or "EQUIP ACCESSORY"
													end

													localPlayer.PlayerGui.Shop.Holder.InfoBG.SecretUpgrade.Visible = v85[36]

													tbl18["Refresh Accessory Button"] = ShopController.itemSelected:Connect(function()
														task.defer(fn38)
													end)

													local v97 = fn34(equipAccessory.Activated)

													equipAccessory.Activated:Connect(function(...)
														local selectedItem = ShopController._selectedItem

														if not selectedItem or selectedItem.type ~= "Sword" then
															if v97 then
																return v97(...)
															end
															return
														end

														if not selectedItem.data or not selectedItem.data.AccessoryToggleable then
															if v97 then
																return v97(...)
															end
															return
														end

														fn37(selectedItem.name)
														fn38()
													end)

													local secretUpgrade = localPlayer.PlayerGui.Shop.Holder.InfoBG.SecretUpgrade
													local secretUpgrade2 = localPlayer.PlayerGui.SecretUpgrade

													tbl18["Secret Awaken Button"] = secretUpgrade.Activated:Connect(function()
														local selectedItem = ShopController._selectedItem
														if not selectedItem then
															return
														end
														local name = selectedItem.name
														if selectedItem.type ~= "Sword" then
															return
														end
														secretUpgrade2.Black.Visible = true
														secretUpgrade2.Main.Visible = true
														local swordIcon = Utils.Icons:GetSwordIcon("Awakened " .. name)
														secretUpgrade2.Main.template1.vector.Image = module:GetSword(name).Icon

														if not (n25 <= 7206) then
															secretUpgrade2.Main.template2.vector.Image = swordIcon
															secretUpgrade2.Main.template2.customs.c3.Visible = true
															local requirement = SecretAwakenData.Requirement
															local fill = secretUpgrade2.Main.Progress.Fill
															secretUpgrade2.Main.Progress.Progress.Text = requirement .. " / " .. requirement
															fill.Size = UDim2.fromScale(math.min(requirement / requirement, v85[86]), 1)
															return
														end

														while true do
														end
													end)

													tbl18["Secret Awaken Button"] = secretUpgrade2.Main.Upgrade.Activated:Connect(function()
														local selectedItem = ShopController._selectedItem
														if not selectedItem then
															return
														end
														local type_ = selectedItem.type
														local name = selectedItem.name
														local v98 = ShopController._virtualItems[type_]

														if v98 then
															for k, v99 in v98, nil, nil do
																if v99.Name == name then
																	local v100 = ShopController._inventoryPages[type_]

																	if v100 and v100.Scroll then
																		v100.Scroll.RemoveInstance("Owned", v99)
																		v100.Scroll.RemoveInstance("Unowned", v99)
																	end

																	if v99.Trove then
																		v99.Trove:Destroy()
																	end

																	v98[k] = nil
																	break
																end
															end
														end

														local str11 = "Awakened " .. name

														for _, v99 in getgenv().Shop_Lists, nil, nil do
															getgenv().Values = v99

															if v99.Name == str11 then
																v99.ForceHide = v85[36]
																local sword2 = v99.Sword
																getgenv().Sword_Value = sword2
																local item = v99.Item
																v99.InventoryKey = client:ItemToKey(getgenv().Category, item) or v99.Name
																local inventoryKey = v99.InventoryKey
																getgenv().InventoryKey = inventoryKey
																break
															end
														end

														secretUpgrade.Visible = false
														secretUpgrade2.Black.Visible = false
														secretUpgrade2.Main.Visible = false

														ShopController:Select({
															type = "Sword",
															name = "Awakened " .. name,
															data = getgenv().Sword_Value,
															key = getgenv().InventoryKey,
														})

														ShopController:Open("Shop")
													end)

													tbl26 = {}
													tbl24 = {}

													for _, v98 in titleList:GetChildren() do
														if v98:IsA("ImageButton") or v98:IsA("Frame") then
															local v99 = v98:FindFirstChild(v85[94])

															tbl26[v98] = {
																Name = v98.Name,
																Visible = v98.Visible,
																LabelText = v99 and v99.Text or nil,
																LabelColor = v99 and v99.TextColor3 or nil,
																LayoutOrder = v98.LayoutOrder,
															}
														end
													end

													for _, v98 in titleList:GetChildren() do
														if v98:IsA("ImageButton") or v98:IsA("Frame") then
															table.insert(tbl24, v98)
														end
													end

													table.sort(tbl24, function(arg, arg2)
														return arg.LayoutOrder < arg2.LayoutOrder
													end)

													for k, v98 in TitleData, nil, nil do
														local v99 = tbl24[k + 1]

														if v99 then
															local textLabel = v99:FindFirstChild("TextLabel")

															if textLabel then
																textLabel.Text = v98.Tag.Text
																textLabel.TextColor3 = v98.Tag.Color
															end

															v99.Name = v98.Name
															v99.Visible = true
															continue
														end

														break
													end

													for _, v98 in tbl24, nil, nil do
														if v98:IsA("ImageButton") then
															tbl18["Titles Row"] = v98.Activated:Connect(function()
																v90 = v98
																local n41 = v98.LayoutOrder - v85[86]
																local v99 = TitleData[n41]

																if n41 == 0 then
																	tbl25 = nil
																else
																	tbl25 = { Text = v99.Tag.Text, Color = v99.Tag.Color }
																end

																for _, v100 in tbl24, nil, nil do
																	local selected = v100:FindFirstChild("Selected")

																	if selected then
																		selected.Visible = v100 == v90
																	end
																end
															end)
														end
													end

													if service.ChatVersion == Enum.ChatVersion.TextChatService then
														service.OnIncomingMessage = function(arg)
															local textSource = arg.TextSource

															if textSource and textSource.UserId == localPlayer.UserId then
																local textChatMessageProperties = Instance.new("TextChatMessageProperties")

																if tbl25 then
																	local text2 = tbl25.Text
																	local displayName = localPlayer.DisplayName
																	textChatMessageProperties.PrefixText = string.format("<font color=\"%s\">[%s]</font> <font color=\"%s\">%s</font>", fn32(tbl25.Color), text2, fn32(tbl25.Color), displayName)
																else
																	textChatMessageProperties.PrefixText = localPlayer.DisplayName
																end

																return textChatMessageProperties
															end
														end
													end

													local emoteWheel = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("EmoteWheel", 10)
													local holder = emoteWheel.Wheel.Holder
													local content = emoteWheel:WaitForChild("List", 10):WaitForChild("Content", v85[136])
													local children = ReplicatedStorage:WaitForChild("Misc", 10):WaitForChild("Emotes", 10):GetChildren()
													getgenv().Emotes_Datas = children
													tbl27 = {}

													for i = v85[86], 5 do
														tbl27[i] = {}

														for i2 = 1, 8 do
															local n41 = i2 + (i - 1) * 8
															local v98 = holder:FindFirstChild(tostring(i2))

															if v98 then
																tbl27[i][i2] = {
																	GlobalSlot = n41,
																	EmoteId = v98:GetAttribute("EmoteId"),
																	EmoteName = v98:GetAttribute("EmoteName"),
																	Icon = v98.Image,
																}
															end
														end
													end

													tbl28 = {}

													for _, v98 in localPlayer.PlayerGui.EmoteWheel.Menu.Content:GetChildren() do
														if v98:IsA("ImageButton") then
															local num = tonumber(v98.Name)

															if num then
																local vector = v98:FindFirstChild("Vector")
																local title = v98:FindFirstChild("Title")

																tbl28[num] = {
																	EmoteId = v98:GetAttribute("EmoteId"),
																	EmoteName = v98:GetAttribute(v85[180]),
																	Icon = v98.Image,
																	GlobalSlot = v98:GetAttribute("GlobalSlot"),
																	VectorImage = vector and vector.Image or nil,
																	TitleText = title and title.Text or nil,
																}
															end
														end
													end

													local EmoteWheelController = require(ReplicatedStorage.Controllers.EmoteWheelController)

													local function fn39(arg)
														if not tbl17.Flags.Unlock_All then
															return
														end
														local n41 = arg + ((EmoteWheelController.page or 1) - 1) * v85[121]
														local v98 = holder:FindFirstChild(tostring(arg))
														if not v98 then
															return
														end
														local attribute = v98:GetAttribute("EmoteId")
														local attribute2 = v98:GetAttribute("EmoteName")
														local image = v98.Image

														if not attribute or attribute == "" then
															data2[tostring(n41)] = nil
														else
															data2[tostring(n41)] = { EmoteId = attribute, EmoteName = attribute2, Icon = image }
														end

														fn29()
													end

													local n41 = 1

													for _, v98 in holder:GetChildren() do
														if v98 and v98:IsA("ImageButton") then
															local num = tonumber(v98.Name)

															tbl18["Emote Wheel Slot"] = v98.Activated:Connect(function()
																n41 = num
																fn39(num)
															end)
														end
													end

													local v98 = v85[86]
													local content2 = localPlayer.PlayerGui.EmoteWheel.Menu.Content

													for _, v99 in content2:GetChildren() do
														if v99 and v99:IsA("ImageButton") then
															local num = tonumber(v99.Name)

															tbl18["Emote Wheel Slot Mobile"] = v99.Activated:Connect(function()
																v98 = num
																fn39(num)
															end)
														end
													end

													for _, v99 in holder:GetChildren() do
														if v99:IsA("ImageButton") then
															local v100 = data2[tostring(tonumber(v99.Name) + ((EmoteWheelController.page or v85[86]) - 1) * v85[121])]

															if v100 then
																v99.Image = v100.Icon
																v99:SetAttribute("EmoteId", v100.EmoteId)
																v99:SetAttribute("EmoteName", v100.EmoteName)
																v99:SetAttribute("Icon", v100.Icon)
																local v101 = content2:FindFirstChild(tostring(v98))

																if v101 then
																	v101.Vector.Image = v100.Icon
																	v101.Title.Text = v100.EmoteName
																	v101:SetAttribute("EmoteId", v100.EmoteId)
																	v101:SetAttribute(v85[180], v100.EmoteName)
																	fn39(v98)
																end
															end
														else
															local v100 = children[global_slot]

															if v100 then
																v99.Image = v100:GetAttribute("Icon")
																v99:SetAttribute("EmoteId", v100.Name)
																v99:SetAttribute("EmoteName", v100:GetAttribute(v85[180]) or v100.Name)
																v99:SetAttribute("Icon", v100:GetAttribute("Icon"))
															end
														end
													end

													tbl18["Emote Wheel Refresh"] = game:GetService("Players").LocalPlayer.CharacterAppearanceLoaded:Connect(function()
														local page = EmoteWheelController.page or 1

														for _, v99 in holder:GetChildren() do
															if v99:IsA("ImageButton") then
																local v100 = data2[tostring(tonumber(v99.Name) + (page - 1) * 8)]

																if v100 then
																	v99.Image = v100.Icon
																	v99:SetAttribute("EmoteId", v100.EmoteId)
																	v99:SetAttribute("EmoteName", v100.EmoteName)
																	v99:SetAttribute("Icon", v100.Icon)
																	local v101 = content2:FindFirstChild(tostring(v98))

																	if v101 then
																		v101.Vector.Image = v100.Icon
																		v101.Title.Text = v100.EmoteName
																		v101:SetAttribute("EmoteId", v100.EmoteId)
																		v101:SetAttribute(v85[180], v100.EmoteName)
																		fn39(v98)
																	end
																end
															else
																local v100 = children[global_slot]

																if v100 then
																	v99.Image = v100:GetAttribute("Icon")
																	v99:SetAttribute("EmoteId", v100.Name)
																	v99:SetAttribute("EmoteName", v100:GetAttribute("EmoteName") or v100.Name)
																	v99:SetAttribute("Icon", v100:GetAttribute("Icon"))
																end
															end
														end
													end)

													local function fn40()
														if not tbl17.Flags.Unlock_All then
															return
														end
														local page = EmoteWheelController.page or v85[86]

														for _, v99 in holder:GetChildren() do
															if v99:IsA("ImageButton") then
																local v100 = data2[tostring(tonumber(v99.Name) + (page - 1) * 8)]

																if v100 and v100.EmoteId and v100.Icon then
																	v99.Image = v100.Icon
																	v99:SetAttribute("EmoteId", v100.EmoteId)
																	v99:SetAttribute("EmoteName", v100.EmoteName or v100.EmoteId)
																	v99:SetAttribute("Icon", v100.Icon)
																	local v101 = content2:FindFirstChild(tostring(v98))

																	if v101 then
																		v101.Vector.Image = v100.Icon
																		v101.Title.Text = v100.EmoteName
																		v101:SetAttribute("EmoteId", v100.EmoteId)
																		v101:SetAttribute(v85[180], v100.EmoteName)
																		fn39(v98)
																	end
																end
															else
																local v100 = tbl27[page] and tbl27[page][slot]

																if v100 then
																	v99.Image = v100.Icon
																	v99:SetAttribute("EmoteId", v100.EmoteId)
																	v99:SetAttribute("EmoteName", v100.EmoteName)
																	v99:SetAttribute("Icon", v100.Icon)
																end
															end
														end
													end

													local wheel = emoteWheel.Wheel

													for _, v99 in getconnections(wheel.Pages.Next.Activated) do
														if v99 and v99.Function then
															v99:Disable()
														end
													end

													for _, v99 in getconnections(wheel.Pages.Previous.Activated) do
														if v99 and v99.Function then
															v99:Disable()
														end
													end

													tbl18["Wheel.Pages.Next.Activated"] = wheel.Pages.Next.Activated:Connect(function()
														EmoteWheelController.page = EmoteWheelController.page % 5 + 1
														EmoteWheelController:updatePage()
														fn40()
													end)

													tbl18["Wheel.Pages.Previous.Activated"] = wheel.Pages.Previous.Activated:Connect(function()
														EmoteWheelController.page = EmoteWheelController.page <= 1 and 5 or EmoteWheelController.page - 1
														EmoteWheelController:updatePage()
														fn40()
													end)

													local pointer = emoteWheel.Wheel.Center.Pointer

													tbl18.Pointer = pointer:GetPropertyChangedSignal("Rotation"):Connect(function()
														local n42 = math.clamp(math.round((pointer.Rotation + v85[35]) / 45), 1, 8)
														n41 = n42
														if not flag2 then
															return
														end
														fn39(n42)
													end)

													local localPlayer2 = game:GetService("Players").LocalPlayer
													local template = localPlayer2.PlayerGui.EmoteWheel.List.Content.UIGridLayout:FindFirstChild("TEMPLATE")
													local searchInput = localPlayer2.PlayerGui.EmoteWheel.List.SearchFrame.SearchBG.SearchInput
													local tbl34 = {}
													local folder = content:FindFirstChild("Folder")

													if folder then
														folder.Parent = ReplicatedStorage
													end

													local uiGridLayout = content:FindFirstChildWhichIsA("UIGridLayout")

													tbl23 = {
														LayoutCellPadding = uiGridLayout.CellPadding,
														LayoutCellSize = uiGridLayout.CellSize,
														FillDirectionMaxCells = uiGridLayout.FillDirectionMaxCells,
														SortOrder = uiGridLayout.SortOrder,
														ScrollingDirection = content.ScrollingDirection,
														AutomaticCanvasSize = content.AutomaticCanvasSize,
														TemplateVisible = template.Visible,
														Entries = {},
													}

													for _, v99 in content:GetChildren() do
														if v99:IsA("Frame") or v99:IsA("ImageButton") or v99:IsA("ImageLabel") then
															table.insert(tbl23.Entries, v99:Clone())
														end
													end

													uiGridLayout.CellPadding = UDim2.fromOffset(8, 8)
													uiGridLayout.CellSize = UDim2.fromScale(0.4, 0.4)
													uiGridLayout.FillDirectionMaxCells = 2
													uiGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
													content.ScrollingDirection = Enum.ScrollingDirection.Y
													content.AutomaticCanvasSize = Enum.AutomaticSize.Y

													table.sort(children, function(arg, arg2)
														local attribute = arg:GetAttribute("EmoteName") or arg.Name
														local attribute2 = arg2:GetAttribute("EmoteName") or arg2.Name
														local n42 = data[attribute] and 1 or 0
														local n43 = data[attribute2] and 1 or 0
														if n42 ~= n43 then
															return n42 > n43
														end
														return attribute < attribute2
													end)

													local v99 = v85[86]

													for _, v100 in children, nil, nil do
														local attribute = v100:GetAttribute("EmoteName") or v100.Name

														if data[attribute] then
															local v101 = content2:FindFirstChild(tostring(v99))

															if v101 then
																local vector = v101:FindFirstChild("Vector")
																local title = v101:FindFirstChild("Title")

																if vector then
																	vector.Image = v100:GetAttribute("Icon")
																end

																if title then
																	title.Text = attribute
																end

																v101:SetAttribute("EmoteId", v100.Name)
																v101:SetAttribute(v85[180], attribute)
																v99 += 1
																continue
															end
														else
															continue
														end

														break
													end

													local lock = localPlayer.PlayerGui.EmoteWheel.List.Content.UIGridLayout.TEMPLATE.Lock

													for k, v100 in children, nil, nil do
														local clone = template:Clone()
														clone.Name = "Emote_" .. k
														clone.LayoutOrder = k
														local clone2 = lock:Clone()
														clone2.Parent = clone
														local tbl35 = { "Emote1", "Emote2", "Emote3", "Emote4", "Emote5", "Emote6", "Emote7" }

														if table.find(tbl35, v100.Name) then
															clone2.Visible = true
														else
															clone2.Visible = false
														end

														local attribute = v100:GetAttribute("Icon")
														local attribute2 = v100:GetAttribute("EmoteName")
														local vector = clone:FindFirstChild("Vector")

														if vector then
															vector.Image = attribute
															vector.Size = UDim2.fromScale(0.9, 0.9)
															vector.SizeConstraint = Enum.SizeConstraint.RelativeYY
														end

														local itemName = clone:FindFirstChild("ItemName")

														if itemName then
															itemName.Text = attribute2
														end

														local favorite2 = clone:FindFirstChild("Favorite")

														if favorite2 then
															favorite2.Visible = v85[81]
														end

														local delete2 = clone:FindFirstChild("Delete")

														if delete2 then
															if table.find(tbl35, v100.Name) then
																delete2.Visible = false
															else
																delete2.Visible = true

																for _, v101 in getconnections(delete2.Activated) do
																	if v101 and v101.Function then
																		v101:Disable()
																	end
																end

																tbl18["Emotes Delete Prompt"] = delete2.Activated:Connect(function()
																	DeleteItemPromptController:PromptConfirmation({
																		PromptType = "Single",
																		Description = "Are you sure you want to delete x1 " .. attribute2 .. "? This cannot be undone.",
																	}, function(arg)
																		if arg then
																			clone:Destroy()
																		end
																	end)
																end)
															end
														end

														clone:SetAttribute("EmoteId", v100.Name)
														clone:SetAttribute("EmoteName", attribute2)
														table.insert(tbl34, clone)

														tbl18["Emote Entry"] = clone.Activated:Connect(function()
															local v101 = holder:FindFirstChild(tostring(n41))

															if v101 then
																v101.Image = attribute
																v101:SetAttribute("EmoteId", v100.Name)
																v101:SetAttribute("EmoteName", attribute2)
																fn39(n41)
																local v102 = content2:FindFirstChild(tostring(v98))

																if v102 then
																	v102.Vector.Image = attribute
																	v102.Title.Text = attribute2
																	v102:SetAttribute("EmoteId", v100.Name)
																	v102:SetAttribute("EmoteName", attribute2)
																	fn39(v98)
																end
															end
														end)

														tbl18["Hover Info Tip"] = clone.MouseEnter:Connect(function()
															localPlayer.PlayerGui.HoverInfo.Item.Visible = true
															local flag25 = table.find(tbl35, v100.Name) ~= nil
															local v101 = HoverInfoController
															local add = v101.Add
															local tbl36 = { IsCustom = false, Name = v100.Name }
															local v102 = Description
															local attribute3 = v100:GetAttribute("Description")
															tbl36[1] = v102
															tbl36[2] = attribute3
															tbl36.TradeLock = flag25 and { Type = "Permanent" } or nil
															add(v101, clone, "Emote", tbl36)
														end)

														tbl18["Hover Info Tip Hide"] = clone.MouseLeave:Connect(function()
															localPlayer.PlayerGui.HoverInfo.Item.Visible = false
														end)

														tbl18["Hover Info Mobile"] = clone.InputBegan:Connect(function(input)
															if input.UserInputType == Enum.UserInputType.Touch then
																localPlayer.PlayerGui.HoverInfo.Item.Visible = true
																HoverInfoController:Add(clone, "Emote", { IsCustom = false, Name = v100.Name, Description = v100:GetAttribute("Description") })
															end
														end)

														tbl18["Hover Info Mobile End"] = clone.InputEnded:Connect(function(input)
															if input.UserInputType == Enum.UserInputType.Touch then
																localPlayer.PlayerGui.HoverInfo.Item.Visible = false
															end
														end)

														local favoriteState = InventoryController:GetFavoriteState("Emote", attribute2)

														if data[attribute2] then
															favoriteState:Set(true)
															favorite2.Image = "rbxassetid://15697987058"
															favorite2.HoverImage = "rbxassetid://15697983062"
														else
															favoriteState:Set(false)
															favorite2.Image = "rbxassetid://15697981750"
															favorite2.HoverImage = "rbxassetid://15697987058"
														end

														tbl18["Favorite Button"] = favorite2.Activated:Connect(function()
															local flag25 = not favoriteState:Get()
															favoriteState:Set(flag25)

															if flag25 then
																favorite2.Image = "rbxassetid://15697987058"
																favorite2.HoverImage = "rbxassetid://15697983062"
																data[attribute2] = v85[81]
															else
																favorite2.Image = "rbxassetid://15697981750"
																favorite2.HoverImage = "rbxassetid://15697987058"
																data[attribute2] = nil
															end

															fn28()

															table.sort(tbl34, function(arg, arg2)
																local attribute3 = arg:GetAttribute("EmoteName")
																local attribute4 = arg2:GetAttribute(v85[180])
																local n42 = data[attribute3] and 1 or v85[25]
																local n43 = data[attribute4] and 1 or v85[25]
																if n42 ~= n43 then
																	return n42 > n43
																end
																return attribute3 < attribute4
															end)

															for k2, v101 in tbl34, nil, nil do
																v101.LayoutOrder = k2
															end
														end)

														clone.Parent = content
													end

													tbl18["SearchBox Text Change"] = searchInput:GetPropertyChangedSignal("Text"):Connect(function()
														local str11 = string.lower(searchInput.Text):gsub("^%s*(.-)%s*$", "%1")

														for _, v100 in tbl34, nil, nil do
															local v101 = string.lower(v100:GetAttribute("EmoteName") or "")
															v100.Visible = str11 == "" or string.find(v101, str11, 1, true)
														end
													end)

													for _, v100 in children, nil, nil do
														if v100:IsA("Animation") and v100:GetAttribute("EmoteName") then
															tbl20.storage[v100.Name] = v100
														end
													end

													EmoteController.Play = function(arg, arg2)
														tbl19.Play_Wheel_Emote_Animations(arg2)
													end

													local localPlayer3 = Players.LocalPlayer
													local deleteItems = v89:WaitForChild("Shop").Holder.DeleteItems

													local function fn41(arg, arg2)
														local v100 = ShopController._virtualItems[arg]
														if not v100 then
															return nil
														end

														for k, v101 in pairs(v100) do
															if v101 and (v101.Name == arg2 or k == arg2) then
																return v101
															end
														end

														return nil
													end

													local tbl35 = { Sword = {}, Explosion = {} }

													local function fn42(arg, arg2)
														if arg == "Sword" and getgenv().Sword_Name == arg2 then
															getgenv().Sword_Name = "Base Sword"
															getgenv().FinisherEquipped[arg2] = nil
															getgenv().Selected_Finisher = getgenv().FinisherEquipped["Base Sword"] and "Base Sword" or v85[36]
															local sword2 = module:GetSword("Base Sword")

															if sword2 then
																pcall(function()
																	module:EquipSwordTo(localPlayer3.Character, sword2.Name)
																end)

																if function_2 then
																	pcall(function()
																		function_2(sword2.Name)
																	end)
																end
															end
														elseif getgenv().FinisherEquipped then
															getgenv().FinisherEquipped[arg2] = nil
														end

														local v100 = fn41(arg, arg2)

														if v100 then
															v100.OwnsItem:Set(false)
															v100.Section = "Unowned"
															local v101 = ShopController._inventoryPages[arg]

															if v101 and v101.Scroll then
																pcall(function()
																	v101.Scroll.RemoveInstance("Owned", v100)
																end)

																pcall(function()
																	v101.Scroll.AddInstance("Unowned", v100)
																end)

																v101.MarkDirty(arg, false, true)
															end
														end

														tbl35[arg] = tbl35[arg] or {}
														tbl35[arg][arg2] = true
														ShopController._selectedItem = nil
													end

													local client3 = require(ReplicatedStorage.Shared.Inventory).Client

													local function fn43(arg, arg2)
														local ok, result = pcall(function()
															return client3:FindItemsWithKey(arg, arg2)
														end)

														return ok and result and #result > 0
													end

													local function fn44(arg)
														return arg == "Base Sword" or arg == "Explosion Normal"
													end

													local function fn45(arg)
														if not arg then
															return
														end

														pcall(function()
															arg.ForceHide = false
														end)

														pcall(function()
															arg.InDeleteMulti:Set(0)
														end)

														pcall(function()
															arg.Section = "Owned"
														end)

														local v100 = ShopController._inventoryPages[arg.type or arg.Type]
														arg.OwnsItem:Set(true)

														if v100 and v100.MarkDirty then
															pcall(function()
																v100.MarkDirty(arg, false, true)
															end)
														end
													end

													local function fn46()
														ShopController._multiDelete = nil

														pcall(function()
															ShopController:_updateMultiDeleteVisbility()
														end)

														pcall(function()
															ShopController:_updateMultiDelete()
														end)
													end

													local addToMultiDelete = ShopController._addToMultiDelete

													ShopController._addToMultiDelete = function(arg, arg2, arg3)
														if not tbl17.Flags.Unlock_All then
															return addToMultiDelete(arg, arg2, arg3)
														end

														if fn43(arg2, arg3) then
															return addToMultiDelete(arg, arg2, arg3)
														end

														if fn44(arg3) then
															return
														end

														if not arg._multiDelete or not arg._multiDelete[arg2] then
															return
														end
														local v100 = arg._multiDelete[arg2][arg3]
														if v100 and #v100 >= v85[86] then
															return
														end
														arg._multiDelete[arg2][arg3] = arg._multiDelete[arg2][arg3] or {}
														table.insert(arg._multiDelete[arg2][arg3], arg3)
														local v101 = arg._virtualItems[arg2] and arg._virtualItems[arg2][arg3]

														if v101 then
															if v101.InDeleteMulti then
																pcall(function()
																	v101.InDeleteMulti:Set(#arg._multiDelete[arg2][arg3])
																end)
															end

															pcall(function()
																v101.ForceHide = v85[81]
																local v102 = ShopController._inventoryPages[arg2]

																if v102 then
																	v102.MarkDirty(v101, false, true)
																end
															end)
														end

														arg:_updateMultiDelete()
													end

													local updateMultiDelete = ShopController._updateMultiDelete
													local scrollingFrame = shop.Holder.DeleteItems.List.ContentsCanvas.ScrollingFrame

													ShopController._updateMultiDelete = function(arg)
														if not tbl17.Flags.Unlock_All or not arg._multiDelete then
															return updateMultiDelete(arg)
														end

														for _, child in ipairs(scrollingFrame:GetChildren()) do
															if child:IsA("GuiObject") and child:GetAttribute("_FakeEntry") then
																local attribute = child:GetAttribute("_FakeType")
																local name = child.Name

																if not attribute or not arg._multiDelete[attribute] or not arg._multiDelete[attribute][name] or #arg._multiDelete[attribute][name] <= v85[25] then
																	child:Destroy()
																end
															end
														end

														for k, v100 in pairs(arg._multiDelete) do
															for k2, v101 in pairs(v100) do
																if not (#v101 <= v85[25]) then
																	local v102 = scrollingFrame:FindFirstChild(k2)

																	if v102 and not v102:GetAttribute("_FakeEntry") then
																		v102 = nil
																	end

																	if not v102 then
																		local template2 = scrollingFrame:FindFirstChild("UIListLayout") and scrollingFrame.UIListLayout:FindFirstChild("Template")

																		if template2 then
																			local clone = template2:Clone()
																			clone.Name = k2
																			clone.Visible = true
																			clone:SetAttribute("_FakeEntry", v85[81])
																			clone:SetAttribute("_FakeType", k)
																			clone:SetAttribute("InventoryType", k)

																			local function fn47()
																				if not arg._multiDelete or not arg._multiDelete[k] or not arg._multiDelete[k][k2] then
																					return
																				end
																				table.remove(arg._multiDelete[k][k2], 1)

																				if #arg._multiDelete[k][k2] <= 0 then
																					arg._multiDelete[k][k2] = nil
																					clone:Destroy()
																					fn45(arg._virtualItems[k] and arg._virtualItems[k][k2])
																				end

																				local v103 = arg._virtualItems[k] and arg._virtualItems[k][k2]

																				if v103 and v103.InDeleteMulti then
																					pcall(function()
																						v103.InDeleteMulti:Set(arg._multiDelete[k] and arg._multiDelete[k][k2] and #arg._multiDelete[k][k2] or 0)
																					end)
																				end

																				arg:_updateMultiDelete()
																			end

																			clone.Button.Activated:Connect(fn47)
																			clone.Button.Item.Activated:Connect(fn47)
																			clone.Parent = scrollingFrame
																			v102 = clone
																		end
																	end

																	if v102 then
																		local v103 = ItemInfo[k] and ItemInfo[k][k2]
																		v102.Button.Label.Text = v103 and v103.DisplayName or k2
																		v102.Button.Item.Label.Text = "x" .. #v101

																		if v103 and v103.Icon then
																			pcall(function()
																				v102.Button.Item.Vector.Image = v103.Icon
																			end)
																		end
																	end
																end
															end
														end

														updateMultiDelete(arg)
													end

													local function_3 = nil
													local function_4 = nil
													local delete2 = shop.Holder.DeleteItems.List.Buttons.Delete
													local cancel = shop.Holder.DeleteItems.List.Buttons.Cancel

													for _, v100 in getconnections(delete2.Activated) do
														if v100 and v100.Function then
															function_3 = v100.Function
															v100:Disable()
															break
														end
													end

													for _, v100 in getconnections(cancel.Activated) do
														if v100 and v100.Function then
															function_4 = v100.Function
															v100:Disable()
															break
														end
													end

													tbl18["Multi Delete Confirm"] = delete2.Activated:Connect(function()
														if not tbl17.Flags.Unlock_All or not ShopController._multiDelete then
															if function_3 then
																return function_3()
															end
															return
														end

														local tbl36 = {}
														local tbl37 = {}
														local v100 = v85[25]
														local n42 = 0

														for k, v101 in pairs(ShopController._multiDelete) do
															for k2, v102 in pairs(v101) do
																if not (#v102 <= 0) then
																	if not fn43(k, k2) then
																		table.insert(tbl36, { type = k, name = k2 })
																		v100 += v85[86]
																	else
																		tbl37[k] = tbl37[k] or {}

																		for _, v103 in ipairs(v102) do
																			table.insert(tbl37[k], v103)
																		end

																		n42 += #v102
																	end
																end
															end
														end

														if v100 + n42 == 0 then
															fn46()
															return
														end

														DeleteItemPromptController:PromptConfirmation({
															PromptType = "Single",
															Description = "Are you sure you want to delete x" .. v100 + n42 .. " items? This cannot be undone.",
														}, function(arg)
															if arg then
																for _, v101 in tbl36, nil, nil do
																	fn42(v101.type, v101.name)
																end

																buyButton.Visible = false
																shop.Holder.Favorite.Visible = v85[36]
																shop.Holder.InfoBG.Delete.Visible = false
																shop.Holder.InfoBG.Equips.EquipAccessory.Visible = false
																shop.Holder.InfoBG.Equips.Finisher.Visible = v85[36]
																fn46()
																ShopController._selectedItem = nil
															else
																for _, v101 in tbl36, nil, nil do
																	fn45(ShopController._virtualItems[v101.type] and ShopController._virtualItems[v101.type][v101.name])
																end
															end
														end)
													end)

													tbl18["Multi Delete Cancel"] = cancel.Activated:Connect(function()
														if not tbl17.Flags.Unlock_All then
															if function_4 then
																return function_4()
															end
															return
														end

														if ShopController._multiDelete then
															for k, v100 in pairs(ShopController._multiDelete) do
																for k2, v101 in pairs(v100) do
																	if #v101 > 0 then
																		fn45(ShopController._virtualItems[k] and ShopController._virtualItems[k][k2])

																		task.defer(function()
																			fn45(ShopController._virtualItems[k] and ShopController._virtualItems[k][k2])
																		end)
																	end
																end
															end
														end

														fn46()
													end)
												end)
											else
												if sword then
													local name = sword.Name
													getgenv().Sword_Name = name
													localPlayer:SetAttribute("CurrentlyEquippedSword", sword.Name)
													module:EquipSwordTo(localPlayer.Character, sword.Name)
													function_2(sword.Name)
												end

												str10 = ""
												local emoteWheel = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("EmoteWheel")
												local holder = emoteWheel.Wheel.Holder
												local content = emoteWheel:WaitForChild("List"):WaitForChild("Content")
												local template = game:GetService("Players").LocalPlayer.PlayerGui.EmoteWheel.List.Content.UIGridLayout:FindFirstChild("TEMPLATE")
												local tbl33 = {}
												local folder = ReplicatedStorage:FindFirstChild("Folder")

												if folder then
													folder.Parent = content
												end

												local uiGridLayout = content:FindFirstChildWhichIsA("UIGridLayout")

												if uiGridLayout then
													uiGridLayout.CellPadding = tbl23.LayoutCellPadding or UDim2.new(0, 8, 0, 8)
													uiGridLayout.CellSize = tbl23.LayoutCellSize or UDim2.new(0.400000006, 0, 0.400000006, 0)
													uiGridLayout.FillDirectionMaxCells = tbl23.FillDirectionMaxCells or 0
													uiGridLayout.SortOrder = tbl23.SortOrder or Enum.SortOrder.LayoutOrder
													content.ScrollingDirection = tbl23.ScrollingDirection or Enum.ScrollingDirection.Y
													content.AutomaticCanvasSize = tbl23.AutomaticCanvasSize or Enum.AutomaticSize.Y
												end

												template.Visible = tbl23.TemplateVisible

												for _, v96 in content:GetChildren() do
													if v96:IsA("Frame") or v96:IsA("ImageButton") or v96:IsA("ImageLabel") then
														v96:Destroy()
													end
												end

												if tbl23.Entries then
													for _, v96 in tbl23.Entries, nil, nil do
														v96:Clone().Parent = content
													end
												end

												table.clear(tbl33)
												local page = require(ReplicatedStorage.Controllers.EmoteWheelController).page or 1

												for _, v96 in holder:GetChildren() do
													if v96:IsA("ImageButton") then
														local num = tonumber(v96.Name)
														local v97 = tbl27[page] and tbl27[page][num]

														if v97 then
															v96.Image = v97.Icon
															v96:SetAttribute("EmoteId", v97.EmoteId)
															v96:SetAttribute("EmoteName", v97.EmoteName)
															v96:SetAttribute("Icon", v97.Icon)
															v96:SetAttribute("GlobalSlot", v97.GlobalSlot)
														end
													end
												end

												if tbl18["Emote Wheel Refresh"] then
													tbl18["Emote Wheel Refresh"]:Disconnect()
													tbl18["Emote Wheel Refresh"] = nil
												end

												for _, v96 in localPlayer.PlayerGui.EmoteWheel.Menu.Content:GetChildren() do
													if v96:IsA("ImageButton") then
														local v97 = tbl28[tonumber(v96.Name)]

														if v97 then
															v96.Image = v97.Icon
															v96:SetAttribute("EmoteId", v97.EmoteId)
															v96:SetAttribute(v85[180], v97.EmoteName)
															v96:SetAttribute("Icon", v97.Icon)
															v96:SetAttribute("GlobalSlot", v97.GlobalSlot)
															local vector = v96:FindFirstChild("Vector")
															local title = v96:FindFirstChild("Title")

															if vector and v97.VectorImage then
																vector.Image = v97.VectorImage
															end

															if title and v97.TitleText then
																title.Text = v97.TitleText
															end
														end
													end
												end

												tbl24 = {}

												for _, v96 in titleList:GetChildren() do
													if v96:IsA("ImageButton") or v96:IsA("Frame") then
														table.insert(tbl24, v96)
													end
												end

												for _, v96 in tbl24, nil, nil do
													if v96 and tbl26[v96] then
														v96.Name = tbl26[v96].Name
														v96.Visible = tbl26[v96].Visible
														v96.LayoutOrder = tbl26[v96].LayoutOrder
														local textLabel = v96:FindFirstChild("TextLabel")

														if textLabel then
															textLabel.Text = tbl26[v96].LabelText
															textLabel.TextColor3 = tbl26[v96].LabelColor
														end

														local selected = v96:FindFirstChild("Selected")

														if selected then
															selected.Visible = false
														end
													end
												end

												if v88 then
													hookfunction(Shared.FindItems, v88)
												end

												local ShopController = require(ReplicatedStorage.Controllers.UI.ShopController)

												for k, v96 in tbl22, nil, nil do
													if k then
														k.OwnsItem:Set(v96.OwnsItem)
														k.Section = "Unowned"
														local v97 = ShopController._inventoryPages[v96.Category]

														if v97 and v97.MarkDirty then
															v97.MarkDirty(k, v85[36], true)
														end
													end

													tbl22[k] = nil
												end

												localPlayer.PlayerGui.Shop.Holder.InfoBG.Delete.Visible = false
												local attribute = localPlayer:GetAttribute("CurrentlyEquippedSword")
												local selectedItem = ShopController._selectedItem
												if not selectedItem then
													return
												end
												local buyButton = localPlayer.PlayerGui.Shop.Holder.InfoBG.BuyButton

												if selectedItem.name == attribute then
													buyButton.PriceTag.TextLabel.Text = "Equipped"
												else
													buyButton.PriceTag.TextLabel.Text = "Equip"
												end

												if tbl18["Accessory Listener"] then
													tbl18["Accessory Listener"]:Disconnect()
													tbl18["Accessory Listener"] = nil
												end
											end
										end,
									})
								end
							end

							local tbl32

							do
								tbl18["Weapon Animation Fixer"] = localPlayer.CharacterAdded:Connect(function(character)
									for _, v96 in getconnections(character:GetAttributeChangedSignal("CurrentlyEquippedSword")) do
										if v96 then
											v96:Disable()
										end
									end

									tbl18["Weapon Attribute"] = character:GetAttributeChangedSignal("CurrentlyEquippedSword"):Connect(function()
										if not tbl17.Flags.Unlock_All then
											return
										end
										local attribute = character:GetAttribute("CurrentlyEquippedSword")
										local swordName = getgenv().Sword_Name

										if attribute ~= swordName then
											character:SetAttribute("CurrentlyEquippedSword", swordName)
										end

										if swordName then
											module:EquipSwordTo(character, swordName)
											function_2(swordName)
										end
									end)
								end)

								tbl18["Infinity Ball"] = ReplicatedStorage.Remotes.InfinityBall.OnClientEvent:Connect(function(arg, arg2)
									flag21 = arg2
								end)

								tbl18["Parry Animation Fix"] = ReplicatedStorage.Remotes.ParrySuccess.OnClientEvent:Connect(function()
									flag18 = true
									local humanoid = localPlayer.Character:FindFirstChild("Humanoid")

									if humanoid then
										for _, v96 in humanoid.Animator:GetPlayingAnimationTracks() do
											if v96.Name == "GrabParry" or v96.Name == "Grab" then
												v96:Stop(v96:GetAttribute("StopFadeTime"))
											end
										end
									end
								end)

								tbl18["Weapon Changer Event"] = ReplicatedStorage.Remotes.ParrySuccessAll.OnClientEvent:Connect(function(...)
									local tbl33 = { ... }
									local name = localPlayer.Name

									if tostring(tbl33[4]) == name then
										local sword2 = module:GetSword(localPlayer:GetAttribute("CurrentlyEquippedSword"))

										if sword2 and sword2.SlashName then
											tbl33[v85[86]] = sword2.SlashName
											tbl33[3] = sword2.Name
										end
									end

									return function_(unpack(tbl33))
								end)

								tbl32 = {}

								tbl19.Apply = function(arg, arg2)
									for k, v96 in arg2, nil, nil do
										arg[k] = v96
									end
								end

								tbl19.Billboard = function(arg, arg2)
									if arg == localPlayer then
										return
									end
									local head = (arg2 or arg.Character or arg.CharacterAdded:Wait()):WaitForChild("Head")
									local billboardGui = Instance.new("BillboardGui")

									tbl19.Apply(billboardGui, {
										Adornee = head,
										Size = UDim2.new(0, v85[80], v85[25], 50),
										StudsOffset = Vector3.new(v85[25], 3, 0),
										AlwaysOnTop = true,
										Parent = head,
									})

									local textLabel = Instance.new("TextLabel")

									tbl19.Apply(textLabel, {
										Size = UDim2.new(1, 0, 1, 0),
										Text = "",
										TextColor3 = Color3.fromRGB(255, 255, 255),
										TextSize = 15,
										TextWrapped = v85[36],
										BackgroundTransparency = 1,
										TextXAlignment = Enum.TextXAlignment.Center,
										TextYAlignment = Enum.TextYAlignment.Center,
										Parent = billboardGui,
									})

									tbl32[arg] = textLabel
								end

								do
									local tbl33 = {
										"Quad Jump",
										"Luck",
										"Reaper",
										"Misfortune",
										"Martyrdom",
										"Golden Ball",
										"Tact",
										"Scopophobia",
										"Bounty",
										"Qi-Charge",
										"Guardian Angel",
										"Virus",
									}

									local tbl34 = {
										["Guardian Angel"] = { ChargeAttr = "GuardianAngelParriesLeft", MaxCharges = 2 },
										["Quantum Arena"] = { ChargeAttr = "QuantumArenaCharge", MaxCharges = 3 },
										Necromancer = { ChargeAttr = "NecromancersLeft", MaxCharges = 3 },
										Blink = { ChargeAttr = "BlinkLeft", MaxCharges = 3 },
									}

									GetChargeInfo = function(arg, arg2)
										local v96 = tbl34[arg2]
										if not v96 then
											return nil
										end
										local playerFromCharacter = game.Players:GetPlayerFromCharacter(arg)
										local v97 = nil

										if arg:GetAttribute(v96.ChargeAttr) ~= nil then
											v97 = arg
										end

										if not (not v97 and playerFromCharacter and playerFromCharacter:GetAttribute(v96.ChargeAttr) ~= nil) then
											playerFromCharacter = v97
										end

										if not playerFromCharacter then
											local abilities = arg:FindFirstChild("Abilities")

											if abilities and abilities:GetAttribute(v96.ChargeAttr) ~= nil then
												playerFromCharacter = abilities
											end
										end

										playerFromCharacter = playerFromCharacter or arg
										local attribute = playerFromCharacter:GetAttribute(v96.ChargeAttr) or v85[25]
										local maxCharges = v96.MaxCharges or 2

										if v96.MaxChargesAttr then
											maxCharges = playerFromCharacter:GetAttribute(v96.MaxChargesAttr) or maxCharges
										end

										local n41 = nil

										if v96.NextUseAttr then
											local attribute2 = playerFromCharacter:GetAttribute(v96.NextUseAttr)
											n41 = nil

											if attribute2 then
												local n42 = attribute2 - workspace:GetServerTimeNow()
												n41 = nil

												if n42 > 0 then
													n41 = tick() + n42
												end
											end
										end

										return { Charges = attribute, MaxCharges = maxCharges, CDEnd = n41 }
									end

									local tbl35 = {}
									local tbl36 = {}
									local tbl37 = {}
									local tbl38 = {}
									local tbl39 = {}
									local Abilities = require(game:GetService("ReplicatedStorage").Shared.Abilities)
									local tbl40 = {}
									local tbl41 = {}

									tbl18["Dribble Event Monitor"] = workspace.Alive.DescendantAdded:Connect(function(descendant)
										if descendant.Name ~= "DRIBBLE_IMMUNITY" then
											return
										end
										local model = descendant:FindFirstAncestorOfClass("Model")
										local playerFromCharacter = model and Players:GetPlayerFromCharacter(model)
										if not playerFromCharacter then
											return
										end

										if tbl40[playerFromCharacter] == nil then
											tbl40[playerFromCharacter] = 3
										end

										tbl40[playerFromCharacter] = math.max(tbl40[playerFromCharacter] - 1, 0)
										local v96 = Abilities.getAbilityCooldown(playerFromCharacter, "Dribble")

										if v96 and v96 > 0 then
											tbl41[playerFromCharacter] = tbl41[playerFromCharacter] or {}
											table.insert(tbl41[playerFromCharacter], workspace:GetServerTimeNow() + v96)
										end
									end)

									local tbl42 = {}
									local tbl43 = {}

									tbl18["Dragon Spirit Event Monitor"] = workspace.Runtime.ChildAdded:Connect(function(child)
										if child.Name ~= "GUARDIAN_DRAGON" then
											return
										end

										for _, v96 in Players:GetPlayers() do
											if v96:GetAttribute("EquippedAbility") == "Dragon Spirit" then
												if tbl42[v96] == nil then
													tbl42[v96] = 3
												end

												tbl42[v96] = math.max(tbl42[v96] - 1, v85[25])
												local v97 = Abilities.getAbilityCooldown(v96, "Dragon Spirit")

												if v97 and v97 > v85[25] then
													local serverTimeNow = workspace:GetServerTimeNow()

													if not tbl43[v96] or tbl43[v96] <= serverTimeNow then
														tbl43[v96] = serverTimeNow + v97 - 1
													end
												end
											end
										end
									end)

									local tbl44 = {}

									right:Create_Toggle({
										name = "Ability ESP",
										flag = "Ability_ESP",
										callback = function(arg)
											if arg then
												tbl18["Ability ESP"] = RunService.Heartbeat:Connect(function()
													local alive = workspace.Alive
													local dataAbilities = ReplicatedStorage.Misc.DataAbilities

													for k, v96 in tbl41, nil, nil do
														if tbl40[k] and tbl40[k] < 3 then
															local serverTimeNow = workspace:GetServerTimeNow()

															for i = #v96, 1, -1 do
																if v96[i] <= serverTimeNow then
																	tbl40[k] = math.min(tbl40[k] + 1, 3)
																	table.remove(v96, i)
																end
															end
														end
													end

													for k, v96 in tbl43, nil, nil do
														if tbl42[k] and tbl42[k] < v85[194] then
															local serverTimeNow = workspace:GetServerTimeNow()

															if v96 <= serverTimeNow then
																tbl42[k] = math.min(tbl42[k] + v85[86], v85[194])

																if tbl42[k] < 3 then
																	tbl43[k] = serverTimeNow + Abilities.getAbilityCooldown(k, "Dragon Spirit")
																else
																	tbl43[k] = nil
																end
															end
														end
													end

													for _, v96 in Players:GetPlayers() do
														if v96 and v96 ~= localPlayer and v96.Character then
															local attribute = v96.Character:GetAttribute("AbilityActive") or false
															local flag25 = tbl39[v96]

															if flag25 == nil then
																flag25 = false
															end

															local attribute2, v97, parent, abilityImage, attribute3, attribute4, upgrades, n41, flag26, v98, flag27, v99, str10, n42, v100, v101, n43, v102, n44, v103, n45, v104, n46, character, v105, n47, v106, v107, n48, flag28

															if attribute == flag25 then
																attribute2 = v96:GetAttribute("EquippedAbility")
																v97 = tbl32[v96]

																if v97 then
																	parent = v97.Parent
																	abilityImage = parent:FindFirstChild("AbilityImage")

																	if v96.Character.Parent == alive then
																		v97.Visible = true

																		if attribute2 then
																			attribute3 = dataAbilities:FindFirstChild(attribute2)
																			attribute4 = attribute3 and attribute3:GetAttribute("Icon")
																			attribute3 = attribute3 and attribute3:GetAttribute("Icon1")
																			upgrades = v96:FindFirstChild("Upgrades")
																			upgrades = upgrades and upgrades:FindFirstChild(attribute2)
																			upgrades = upgrades and upgrades.Value
																			n41 = upgrades or 0

																			if v85[25] < n41 then
																				flag26 = attribute3 and attribute3 ~= ""

																				if flag26 then
																					attribute4 = attribute3
																				end
																			end

																			v98 = tbl36[v96]
																			flag27 = not v96.Character:GetAttribute("AbilityActive") and not v98
																			v99 = tbl34[attribute2]

																			if table.find(tbl33, attribute2) then
																				str10 = "Passive"
																			elseif attribute2 == "Dribble" then
																				n42 = tbl40[v96] or 3
																				str10 = string.format("%d/%d Uses", n42, 3)
																				v100 = tbl41[v96]
																				v101 = v100 and v100[1]

																				if v101 then
																					n43 = v100[v85[86]] - workspace:GetServerTimeNow()

																					if n43 > 0 then
																						str10 ..= string.format(" (%.1fs)", n43)
																					end
																				end
																			elseif attribute2 == "Dragon Spirit" then
																				v102 = tbl42[v96]
																				n44 = v102 or 3
																				str10 = string.format("%d/%d Charges", n44, v85[194])
																				v103 = tbl43[v96]

																				if v103 then
																					n45 = v103 - workspace:GetServerTimeNow()

																					if n45 > 0 then
																						str10 ..= string.format(" (%.1fs)", n45)
																					end
																				end
																			elseif v99 then
																				v104 = GetChargeInfo(v96.Character, attribute2)

																				if v104 then
																					str10 = string.format("%d/%d Charges", v104.Charges, v104.MaxCharges)

																					if v104.CDEnd then
																						n46 = v104.CDEnd - workspace:GetServerTimeNow()

																						if v85[25] < n46 then
																							str10 ..= string.format(" (%.1fs)", n46)
																						end
																					end
																				else
																					str10 = "Charged"
																				end
																			else
																				character = v96.Character

																				if character:GetAttribute("AbilityActive") then
																					v105 = tbl37[v96]

																					if v105 then
																						n47 = v105 - workspace:GetServerTimeNow()

																						if n47 > 0 then
																							str10 = string.format("ACTIVE %.1fs", n47)
																						else
																							str10 = "No Active CD"
																						end
																					else
																						v106 = tbl35[v96]
																						str10 = ""

																						if v106 then
																							str10 = string.format("ACTIVE %.1fs", workspace:GetServerTimeNow() - v106)
																						end
																					end
																				else
																					v107 = tbl36[v96]

																					if v107 then
																						n48 = v107 - workspace:GetServerTimeNow()

																						if n48 > 0 then
																							str10 = string.format("%.1fs", n48)
																						else
																							tbl36[v96] = nil
																							str10 = "Ready"
																						end
																					else
																						str10 = ""

																						if flag27 then
																							str10 = "Ready"
																						end
																					end
																				end
																			end

																			v97.Text = v96.DisplayName .. " [" .. attribute2 .. " | " .. str10 .. "]"

																			if not abilityImage then
																				abilityImage = Instance.new(v85[131])
																				abilityImage.Name = "AbilityImage"
																				abilityImage.BackgroundTransparency = 1
																				abilityImage.Size = UDim2.new(v85[25], 30, 0, v85[44])
																				abilityImage.Parent = parent
																				abilityImage.Position = UDim2.new(v85[62], -v85[44], 0, 0)
																			end

																			abilityImage.Position = UDim2.new(0.5, -15, v85[25], -v97.TextBounds.Y)
																			flag28 = attribute4 and attribute4 ~= ""

																			if flag28 then
																				abilityImage.Image = attribute4
																				abilityImage.Visible = true
																			else
																				abilityImage.Visible = false
																			end
																		else
																			v97.Visible = false
																			v97.Text = v96.DisplayName

																			if abilityImage then
																				abilityImage.Visible = false
																			end
																		end
																	else
																		v97.Visible = v85[36]

																		if abilityImage then
																			abilityImage.Visible = false
																		end
																	end
																end
															else
																v96:GetAttribute("EquippedAbility")

																if attribute then
																	local attribute5 = v96:GetAttribute("EquippedAbility")

																	if not attribute5 then
																		tbl39[v96] = attribute
																	else
																		local v108 = Abilities.getAbilityCooldown(v96, attribute5)
																		local serverTimeNow = workspace:GetServerTimeNow()
																		tbl35[v96] = serverTimeNow
																		tbl44[v96] = attribute5
																		local v109 = tbl38[attribute5]

																		if v109 then
																			tbl37[v96] = serverTimeNow + v109
																		else
																			tbl37[v96] = nil
																		end

																		if v108 and v108 > 0 then
																			tbl36[v96] = serverTimeNow + v108
																			tbl39[v96] = attribute
																			attribute2 = v96:GetAttribute("EquippedAbility")
																			v97 = tbl32[v96]

																			if v97 then
																				parent = v97.Parent
																				abilityImage = parent:FindFirstChild("AbilityImage")

																				if v96.Character.Parent == alive then
																					v97.Visible = true

																					if attribute2 then
																						attribute3 = dataAbilities:FindFirstChild(attribute2)
																						attribute4 = attribute3 and attribute3:GetAttribute("Icon")
																						attribute3 = attribute3 and attribute3:GetAttribute("Icon1")
																						upgrades = v96:FindFirstChild("Upgrades")
																						upgrades = upgrades and upgrades:FindFirstChild(attribute2)
																						upgrades = upgrades and upgrades.Value
																						n41 = upgrades or 0

																						if v85[25] < n41 then
																							flag26 = attribute3 and attribute3 ~= ""

																							if flag26 then
																								attribute4 = attribute3
																							end
																						end

																						v98 = tbl36[v96]
																						flag27 = not v96.Character:GetAttribute("AbilityActive") and not v98
																						v99 = tbl34[attribute2]

																						if table.find(tbl33, attribute2) then
																							str10 = "Passive"
																						elseif attribute2 == "Dribble" then
																							n42 = tbl40[v96] or 3
																							str10 = string.format("%d/%d Uses", n42, 3)
																							v100 = tbl41[v96]
																							v101 = v100 and v100[1]

																							if v101 then
																								n43 = v100[v85[86]] - workspace:GetServerTimeNow()

																								if n43 > 0 then
																									str10 ..= string.format(" (%.1fs)", n43)
																								end
																							end
																						elseif attribute2 == "Dragon Spirit" then
																							v102 = tbl42[v96]
																							n44 = v102 or 3
																							str10 = string.format("%d/%d Charges", n44, v85[194])
																							v103 = tbl43[v96]

																							if v103 then
																								n45 = v103 - workspace:GetServerTimeNow()

																								if n45 > 0 then
																									str10 ..= string.format(" (%.1fs)", n45)
																								end
																							end
																						elseif v99 then
																							v104 = GetChargeInfo(v96.Character, attribute2)

																							if v104 then
																								str10 = string.format("%d/%d Charges", v104.Charges, v104.MaxCharges)

																								if v104.CDEnd then
																									n46 = v104.CDEnd - workspace:GetServerTimeNow()

																									if v85[25] < n46 then
																										str10 ..= string.format(" (%.1fs)", n46)
																									end
																								end
																							else
																								str10 = "Charged"
																							end
																						else
																							character = v96.Character

																							if character:GetAttribute("AbilityActive") then
																								v105 = tbl37[v96]

																								if v105 then
																									n47 = v105 - workspace:GetServerTimeNow()

																									if n47 > 0 then
																										str10 = string.format("ACTIVE %.1fs", n47)
																									else
																										str10 = "No Active CD"
																									end
																								else
																									v106 = tbl35[v96]
																									str10 = ""

																									if v106 then
																										str10 = string.format("ACTIVE %.1fs", workspace:GetServerTimeNow() - v106)
																									end
																								end
																							else
																								v107 = tbl36[v96]

																								if v107 then
																									n48 = v107 - workspace:GetServerTimeNow()

																									if n48 > 0 then
																										str10 = string.format("%.1fs", n48)
																									else
																										tbl36[v96] = nil
																										str10 = "Ready"
																									end
																								else
																									str10 = ""

																									if flag27 then
																										str10 = "Ready"
																									end
																								end
																							end
																						end

																						v97.Text = v96.DisplayName .. " [" .. attribute2 .. " | " .. str10 .. "]"

																						if not abilityImage then
																							abilityImage = Instance.new(v85[131])
																							abilityImage.Name = "AbilityImage"
																							abilityImage.BackgroundTransparency = 1
																							abilityImage.Size = UDim2.new(v85[25], 30, 0, v85[44])
																							abilityImage.Parent = parent
																							abilityImage.Position = UDim2.new(v85[62], -v85[44], 0, 0)
																						end

																						abilityImage.Position = UDim2.new(0.5, -15, v85[25], -v97.TextBounds.Y)
																						flag28 = attribute4 and attribute4 ~= ""

																						if flag28 then
																							abilityImage.Image = attribute4
																							abilityImage.Visible = true
																						else
																							abilityImage.Visible = false
																						end
																					else
																						v97.Visible = false
																						v97.Text = v96.DisplayName

																						if abilityImage then
																							abilityImage.Visible = false
																						end
																					end
																				else
																					v97.Visible = v85[36]

																					if abilityImage then
																						abilityImage.Visible = false
																					end
																				end
																			end
																		else
																			tbl39[v96] = attribute
																			attribute2 = v96:GetAttribute("EquippedAbility")
																			v97 = tbl32[v96]

																			if v97 then
																				parent = v97.Parent
																				abilityImage = parent:FindFirstChild("AbilityImage")

																				if v96.Character.Parent == alive then
																					v97.Visible = true

																					if attribute2 then
																						attribute3 = dataAbilities:FindFirstChild(attribute2)
																						attribute4 = attribute3 and attribute3:GetAttribute("Icon")
																						attribute3 = attribute3 and attribute3:GetAttribute("Icon1")
																						upgrades = v96:FindFirstChild("Upgrades")
																						upgrades = upgrades and upgrades:FindFirstChild(attribute2)
																						upgrades = upgrades and upgrades.Value
																						n41 = upgrades or 0

																						if v85[25] < n41 then
																							flag26 = attribute3 and attribute3 ~= ""

																							if flag26 then
																								attribute4 = attribute3
																							end
																						end

																						v98 = tbl36[v96]
																						flag27 = not v96.Character:GetAttribute("AbilityActive") and not v98
																						v99 = tbl34[attribute2]

																						if table.find(tbl33, attribute2) then
																							str10 = "Passive"
																						elseif attribute2 == "Dribble" then
																							n42 = tbl40[v96] or 3
																							str10 = string.format("%d/%d Uses", n42, 3)
																							v100 = tbl41[v96]
																							v101 = v100 and v100[1]

																							if v101 then
																								n43 = v100[v85[86]] - workspace:GetServerTimeNow()

																								if n43 > 0 then
																									str10 ..= string.format(" (%.1fs)", n43)
																								end
																							end
																						elseif attribute2 == "Dragon Spirit" then
																							v102 = tbl42[v96]
																							n44 = v102 or 3
																							str10 = string.format("%d/%d Charges", n44, v85[194])
																							v103 = tbl43[v96]

																							if v103 then
																								n45 = v103 - workspace:GetServerTimeNow()

																								if n45 > 0 then
																									str10 ..= string.format(" (%.1fs)", n45)
																								end
																							end
																						elseif v99 then
																							v104 = GetChargeInfo(v96.Character, attribute2)

																							if v104 then
																								str10 = string.format("%d/%d Charges", v104.Charges, v104.MaxCharges)

																								if v104.CDEnd then
																									n46 = v104.CDEnd - workspace:GetServerTimeNow()

																									if v85[25] < n46 then
																										str10 ..= string.format(" (%.1fs)", n46)
																									end
																								end
																							else
																								str10 = "Charged"
																							end
																						else
																							character = v96.Character

																							if character:GetAttribute("AbilityActive") then
																								v105 = tbl37[v96]

																								if v105 then
																									n47 = v105 - workspace:GetServerTimeNow()

																									if n47 > 0 then
																										str10 = string.format("ACTIVE %.1fs", n47)
																									else
																										str10 = "No Active CD"
																									end
																								else
																									v106 = tbl35[v96]
																									str10 = ""

																									if v106 then
																										str10 = string.format("ACTIVE %.1fs", workspace:GetServerTimeNow() - v106)
																									end
																								end
																							else
																								v107 = tbl36[v96]

																								if v107 then
																									n48 = v107 - workspace:GetServerTimeNow()

																									if n48 > 0 then
																										str10 = string.format("%.1fs", n48)
																									else
																										tbl36[v96] = nil
																										str10 = "Ready"
																									end
																								else
																									str10 = ""

																									if flag27 then
																										str10 = "Ready"
																									end
																								end
																							end
																						end

																						v97.Text = v96.DisplayName .. " [" .. attribute2 .. " | " .. str10 .. "]"

																						if not abilityImage then
																							abilityImage = Instance.new(v85[131])
																							abilityImage.Name = "AbilityImage"
																							abilityImage.BackgroundTransparency = 1
																							abilityImage.Size = UDim2.new(v85[25], 30, 0, v85[44])
																							abilityImage.Parent = parent
																							abilityImage.Position = UDim2.new(v85[62], -v85[44], 0, 0)
																						end

																						abilityImage.Position = UDim2.new(0.5, -15, v85[25], -v97.TextBounds.Y)
																						flag28 = attribute4 and attribute4 ~= ""

																						if flag28 then
																							abilityImage.Image = attribute4
																							abilityImage.Visible = true
																						else
																							abilityImage.Visible = false
																						end
																					else
																						v97.Visible = false
																						v97.Text = v96.DisplayName

																						if abilityImage then
																							abilityImage.Visible = false
																						end
																					end
																				else
																					v97.Visible = v85[36]

																					if abilityImage then
																						abilityImage.Visible = false
																					end
																				end
																			end
																		end
																	end
																else
																	local v108 = tbl35[v96]
																	local v109 = tbl44[v96]

																	if v108 and v109 then
																		local n49 = workspace:GetServerTimeNow() - v108
																		local v110 = tbl38[v109]

																		if v110 then
																			tbl38[v109] = (v110 + n49) / 2
																		else
																			tbl38[v109] = n49
																		end
																	end

																	tbl35[v96] = nil
																	tbl37[v96] = nil
																	tbl44[v96] = nil
																	tbl39[v96] = attribute
																	attribute2 = v96:GetAttribute("EquippedAbility")
																	v97 = tbl32[v96]

																	if v97 then
																		parent = v97.Parent
																		abilityImage = parent:FindFirstChild("AbilityImage")

																		if v96.Character.Parent == alive then
																			v97.Visible = true

																			if attribute2 then
																				attribute3 = dataAbilities:FindFirstChild(attribute2)
																				attribute4 = attribute3 and attribute3:GetAttribute("Icon")
																				attribute3 = attribute3 and attribute3:GetAttribute("Icon1")
																				upgrades = v96:FindFirstChild("Upgrades")
																				upgrades = upgrades and upgrades:FindFirstChild(attribute2)
																				upgrades = upgrades and upgrades.Value
																				n41 = upgrades or 0

																				if v85[25] < n41 then
																					flag26 = attribute3 and attribute3 ~= ""

																					if flag26 then
																						attribute4 = attribute3
																					end
																				end

																				v98 = tbl36[v96]
																				flag27 = not v96.Character:GetAttribute("AbilityActive") and not v98
																				v99 = tbl34[attribute2]

																				if table.find(tbl33, attribute2) then
																					str10 = "Passive"
																				elseif attribute2 == "Dribble" then
																					n42 = tbl40[v96] or 3
																					str10 = string.format("%d/%d Uses", n42, 3)
																					v100 = tbl41[v96]
																					v101 = v100 and v100[1]

																					if v101 then
																						n43 = v100[v85[86]] - workspace:GetServerTimeNow()

																						if n43 > 0 then
																							str10 ..= string.format(" (%.1fs)", n43)
																						end
																					end
																				elseif attribute2 == "Dragon Spirit" then
																					v102 = tbl42[v96]
																					n44 = v102 or 3
																					str10 = string.format("%d/%d Charges", n44, v85[194])
																					v103 = tbl43[v96]

																					if v103 then
																						n45 = v103 - workspace:GetServerTimeNow()

																						if n45 > 0 then
																							str10 ..= string.format(" (%.1fs)", n45)
																						end
																					end
																				elseif v99 then
																					v104 = GetChargeInfo(v96.Character, attribute2)

																					if v104 then
																						str10 = string.format("%d/%d Charges", v104.Charges, v104.MaxCharges)

																						if v104.CDEnd then
																							n46 = v104.CDEnd - workspace:GetServerTimeNow()

																							if v85[25] < n46 then
																								str10 ..= string.format(" (%.1fs)", n46)
																							end
																						end
																					else
																						str10 = "Charged"
																					end
																				else
																					character = v96.Character

																					if character:GetAttribute("AbilityActive") then
																						v105 = tbl37[v96]

																						if v105 then
																							n47 = v105 - workspace:GetServerTimeNow()

																							if n47 > 0 then
																								str10 = string.format("ACTIVE %.1fs", n47)
																							else
																								str10 = "No Active CD"
																							end
																						else
																							v106 = tbl35[v96]
																							str10 = ""

																							if v106 then
																								str10 = string.format("ACTIVE %.1fs", workspace:GetServerTimeNow() - v106)
																							end
																						end
																					else
																						v107 = tbl36[v96]

																						if v107 then
																							n48 = v107 - workspace:GetServerTimeNow()

																							if n48 > 0 then
																								str10 = string.format("%.1fs", n48)
																							else
																								tbl36[v96] = nil
																								str10 = "Ready"
																							end
																						else
																							str10 = ""

																							if flag27 then
																								str10 = "Ready"
																							end
																						end
																					end
																				end

																				v97.Text = v96.DisplayName .. " [" .. attribute2 .. " | " .. str10 .. "]"

																				if not abilityImage then
																					abilityImage = Instance.new(v85[131])
																					abilityImage.Name = "AbilityImage"
																					abilityImage.BackgroundTransparency = 1
																					abilityImage.Size = UDim2.new(v85[25], 30, 0, v85[44])
																					abilityImage.Parent = parent
																					abilityImage.Position = UDim2.new(v85[62], -v85[44], 0, 0)
																				end

																				abilityImage.Position = UDim2.new(0.5, -15, v85[25], -v97.TextBounds.Y)
																				flag28 = attribute4 and attribute4 ~= ""

																				if flag28 then
																					abilityImage.Image = attribute4
																					abilityImage.Visible = true
																				else
																					abilityImage.Visible = false
																				end
																			else
																				v97.Visible = false
																				v97.Text = v96.DisplayName

																				if abilityImage then
																					abilityImage.Visible = false
																				end
																			end
																		else
																			v97.Visible = v85[36]

																			if abilityImage then
																				abilityImage.Visible = false
																			end
																		end
																	end
																end
															end
														end
													end
												end)
											else
												for _, v96 in tbl32, nil, nil do
													v96.Visible = v85[36]
													local abilityImage = v96.Parent:FindFirstChild("AbilityImage")

													if abilityImage then
														abilityImage.Visible = false
													end
												end

												if tbl18["Ability ESP"] then
													tbl18["Ability ESP"]:Disconnect()
													tbl18["Ability ESP"] = nil
												end
											end
										end,
									})
								end
							end

							do
								do
									local v96

									do
										v96 = nil

										do
											local v97 = nil

											tbl19.Default_Avatar = function()
												if v97 then
													return v97
												end

												local ok, result = pcall(function()
													return Players:GetHumanoidDescriptionFromUserId(localPlayer.UserId)
												end)

												if ok and result then
													v97 = result
												end

												return v97
											end
										end
									end

									tbl19.Weld_Accessory = function(arg, arg2)
										local handle = arg:FindFirstChild("Handle")
										if not handle then
											return
										end
										local attachment = handle:FindFirstChildOfClass("Attachment")
										if not attachment then
											return
										end
										local v97 = arg2:FindFirstChild(attachment.Name, true)

										if not v97 then
											if not flag3 then
												return
											end
											return
										end

										local weld = Instance.new("Weld")
										weld.Name = "AccessoryWeld"
										weld.Part0 = handle
										weld.Part1 = v97.Parent
										weld.C0 = attachment.CFrame
										weld.C1 = v97.CFrame
										weld.Parent = handle
										handle.Anchored = false
									end

									tbl19.Apply_Avatar = function(parent)
										local humanoid = parent:WaitForChild("Humanoid")
										if parent:GetAttribute("Applied") == v96 then
											return
										end
										parent:SetAttribute("Applied", v96)

										local ok, result = pcall(function()
											return Players:GetHumanoidDescriptionFromUserId(v96)
										end)

										if not ok or not result then
											parent:SetAttribute("Applied", nil)
											return
										end

										local function fn33(arg)
											if arg:IsA("MeshPart") then
												return arg.MeshId
											end
											local specialMesh = arg:FindFirstChildOfClass("SpecialMesh")
											return specialMesh and specialMesh.MeshId or ""
										end

										local attribute = localPlayer:GetAttribute("CurrentlyEquippedSword")

										for _, v97 in parent:GetChildren() do
											if v97:IsA("Accessory") then
												if v97 ~= attribute then
													v97:Destroy()
												end
											elseif v97:IsA("Shirt") or v97:IsA("Pants") or v97:IsA("ShirtGraphic") or v97:IsA("BodyColors") or v97:IsA("CharacterMesh") then
												v97:Destroy()
											end
										end

										local ok2, result2 = pcall(function()
											return Players:CreateHumanoidModelFromDescription(result, humanoid.RigType)
										end)

										if not ok2 or not result2 then
											parent:SetAttribute("Applied", nil)
											return
										end

										local function fn34(arg, parent2)
											for _, child in ipairs(arg:GetChildren()) do
												if child:IsA("Attachment") then
													local v97 = parent2:FindFirstChild(child.Name)

													if v97 then
														v97.CFrame = child.CFrame
														v97.Position = child.Position
														v97.Orientation = child.Orientation
														v97.Axis = child.Axis
														v97.SecondaryAxis = child.SecondaryAxis
													else
														child:Clone().Parent = parent2
													end
												end
											end
										end

										for _, v97 in result2:GetChildren() do
											if v97:IsA("BasePart") and v97.Name ~= "HumanoidRootPart" then
												local v98 = parent:FindFirstChild(v97.Name)

												if v98 then
													if fn33(v97) ~= fn33(v98) then
														local specialMesh = v98:FindFirstChildOfClass("SpecialMesh")

														if specialMesh then
															specialMesh:Destroy()
														end

														local specialMesh2 = v97:FindFirstChildOfClass("SpecialMesh")

														if specialMesh2 then
															specialMesh2:Clone().Parent = v98
														end

														if v97:IsA("MeshPart") and v98:IsA("MeshPart") then
															v98.MeshId = v97.MeshId
															v98.TextureID = v97.TextureID
															fn34(v97, v98)
														end
													end
												end
											elseif v97:IsA("CharacterMesh") then
												v97:Clone().Parent = parent
											end
										end

										for _, v97 in result2:GetChildren() do
											if v97:IsA("Shirt") or v97:IsA("Pants") or v97:IsA("ShirtGraphic") or v97:IsA("BodyColors") then
												v97:Clone().Parent = parent
											elseif v97:IsA("Accessory") then
												local clone = v97:Clone()
												humanoid:AddAccessory(clone)
												tbl19.Weld_Accessory(clone, parent)
											end
										end

										local head = parent:FindFirstChild("Head")
										local head2 = result2:FindFirstChild("Head")

										if head and head2 then
											local decal = head:FindFirstChildOfClass("Decal")
											local decal2 = head2:FindFirstChildOfClass("Decal")

											if decal2 then
												if decal then
													decal.Texture = decal2.Texture
												else
													decal2:Clone().Parent = head
												end
											elseif decal then
												decal:Destroy()
											end
										end

										result2:Destroy()
									end

									do
										local Appearance = v95:Create_Section("Appearance", "left")

										Appearance:Create_Toggle({
											name = "Avatar Changer",
											flag = "Avatar_Changer",
											callback = function(arg)
												if arg then
													if v96 then
														tbl19.Apply_Avatar(localPlayer.Character or localPlayer.CharacterAdded:Wait())

														tbl18["Kill Feed Manager"] = localPlayer.PlayerGui.KillFeed.Frame.ChildAdded:Connect(function(child)
															local holder = child:FindFirstChild("Holder")
															if not holder then
																return
															end
															holder.Left.Vector.Image = "rbxthumb://type=AvatarHeadShot&id=" .. v96 .. "&w=100&h=100"
														end)
													end

													tbl18["Avatar Changer"] = localPlayer.CharacterAppearanceLoaded:Connect(function()
														tbl19.Apply_Avatar(localPlayer.Character or localPlayer.CharacterAdded:Wait())
													end)
												else
													local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
													character:SetAttribute("Applied", nil)
													local v97 = tbl19.Default_Avatar()

													if v97 then
														local ok, result = pcall(function()
															return Players:CreateHumanoidModelFromDescription(v97, character.Humanoid.RigType)
														end)

														if ok and result then
															local tbl33 = {}

															for _, v98 in result:GetChildren() do
																if v98:IsA("Accessory") then
																	table.insert(tbl33, v98:Clone())
																end
															end

															for _, v98 in character:GetChildren() do
																if v98:IsA("Shirt") or v98:IsA("Pants") or v98:IsA("ShirtGraphic") or v98:IsA("Accessory") or v98:IsA("BodyColors") or v98:IsA("CharacterMesh") then
																	v98:Destroy()
																end
															end

															local function fn33(arg2)
																if arg2:IsA("MeshPart") then
																	return arg2.MeshId
																end
																local specialMesh = arg2:FindFirstChildOfClass("SpecialMesh")
																return specialMesh and specialMesh.MeshId or ""
															end

															for _, v98 in result:GetChildren() do
																if v98:IsA("BasePart") and v98.Name ~= "HumanoidRootPart" then
																	local v99 = character:FindFirstChild(v98.Name)

																	if v99 then
																		if fn33(v98) ~= fn33(v99) then
																			local specialMesh = v99:FindFirstChildOfClass("SpecialMesh")

																			if specialMesh then
																				specialMesh:Destroy()
																			end

																			local specialMesh2 = v98:FindFirstChildOfClass("SpecialMesh")

																			if specialMesh2 then
																				specialMesh2:Clone().Parent = v99
																			end

																			if v98:IsA("MeshPart") and v99:IsA("MeshPart") then
																				v99.MeshId = v98.MeshId
																				v99.TextureID = v98.TextureID
																				v99.Size = v98.Size
																			end
																		end
																	end
																elseif v98:IsA("CharacterMesh") then
																	v98:Clone().Parent = character
																end
															end

															for _, v98 in result:GetChildren() do
																if v98:IsA("Shirt") or v98:IsA("Pants") or v98:IsA("ShirtGraphic") or v98:IsA("BodyColors") then
																	v98:Clone().Parent = character
																end
															end

															for _, v98 in tbl33, nil, nil do
																v98.Parent = character
																local handle = v98:FindFirstChild("Handle")

																if handle then
																	local attachment = handle:FindFirstChildWhichIsA("Attachment", true)

																	if attachment then
																		local v99 = character:FindFirstChild(attachment.Name, true)

																		if v99 then
																			local weld = Instance.new("Weld")
																			weld.Part0 = handle
																			weld.Part1 = v99.Parent
																			weld.C0 = attachment.CFrame
																			weld.C1 = v99.CFrame
																			weld.Parent = handle
																		end
																	end
																end
															end

															result:Destroy()
														end
													end

													if tbl18["Avatar Changer"] then
														if n28(2703) < 4803 then
															tbl18["Avatar Changer"]:Disconnect()
															tbl18["Avatar Changer"] = nil
														else
															while true do
															end
														end
													end

													if tbl18["Kill Feed Manager"] then
														tbl18["Kill Feed Manager"]:Disconnect()
														tbl18["Kill Feed Manager"] = nil
													end
												end
											end,
										})

										Appearance:Create_TextBox({
											name = "",
											placeholder = "...",
											default = "",
											flag = "Avatar_Saver",
											callback = function(arg)
												if not arg or arg == "" then
													localPlayer.Character:SetAttribute("Applied", nil)
													return
												end
												local num = tonumber(arg)

												if not num then
													local ok

													repeat
														task.wait()

														ok, num = pcall(function()
															return Players:GetUserIdFromNameAsync(arg)
														end)
													until ok
												end

												v96 = num

												if tbl17.Flags.Avatar_Changer then
													tbl19.Apply_Avatar(localPlayer.Character)

													tbl18["Kill Feed Manager"] = localPlayer.PlayerGui.KillFeed.Frame.ChildAdded:Connect(function(child)
														local holder = child:FindFirstChild("Holder")
														if not holder then
															return
														end
														holder.Left.Vector.Image = "rbxthumb://type=AvatarHeadShot&id=" .. v96 .. "&w=100&h=100"
													end)
												end
											end,
										})
									end

									tbl18["Encrypted Clone Detection"] = workspace.Alive.ChildAdded:Connect(function(child)
										if child.Name:find("ENCRYPTED CLONE", 1, true) then
											if tbl17.Flags.Avatar_Changer then
												local ok, result = pcall(function()
													return Players:GetHumanoidDescriptionFromUserId(v96)
												end)

												if ok and result then
													local ok2, result2 = pcall(function()
														return Players:CreateHumanoidModelFromDescription(result, child.Humanoid.RigType)
													end)

													if ok2 and result2 then
														tbl19.Apply_Avatar(child)
													end
												end
											end
										end
									end)
								end

								do
									local tbl33 = {}
									local FFlags = v95:Create_Section("FFlags", "right")

									FFlags:Create_Toggle({
										name = "FFlags",
										flag = "FFlags_Toggle",
										callback = function(arg)
											if not arg then
												if next(tbl33) == nil then
													return
												end

												for k, v96 in tbl33, nil, nil do
													if getfflag(k) then
														setfflag(k, v96)
													end
												end

												table.clear(tbl33)
											end
										end,
									})

									FFlags:Create_TextBox({
										name = "",
										placeholder = "...",
										default = "",
										flag = "FFlags_Saver",
										callback = function(arg)
											if not tbl17.Flags.FFlags_Toggle then
												return
											end

											if arg == "" then
												return
											end
											local n41 = 0

											for match, match2 in arg:gmatch("\"([^\"]+)\"%s*:%s*([^,%}%]]+)") do
												local str10 = match2:gsub("^%s+", ""):gsub("%s+$", "")

												if str10 == "true" then
													str10 = "True"
												elseif str10 == "false" then
													str10 = "False"
												elseif str10:match("^\".*\"$") then
													str10 = str10:sub(v85[149], -v85[149])
												end

												local str11 = match:gsub("^DFInt", ""):gsub("^DFFlag", ""):gsub("^FString", ""):gsub("^FLog", ""):gsub("^FFlag", ""):gsub("^DFint", ""):gsub("^FInt", "")

												if getfflag(str11) then
													if tbl33[str11] == nil then
														tbl33[str11] = tostring(getfflag(str11))
													end

													setfflag(str11, tostring(str10))
													n41 += v85[86]
												elseif getfflag(match) then
													if tbl33[match] == nil then
														tbl33[match] = tostring(getfflag(match))
													end

													setfflag(match, tostring(str10))
													n41 += v85[86]
												end
											end

											tbl17:Notify(("Applied %d FFlags."):format(n41), 5)
										end,
									})
								end
							end

							do
								local Devices = v95:Create_Section("Devices", "left")

								Devices:Create_Toggle({
									name = "Auto Rejoin",
									flag = "Device_Spoofer_Toggle",
									callback = function(deviceSpooferToggle)
										tbl17.Flags.Device_Spoofer_Toggle = deviceSpooferToggle

										if deviceSpooferToggle then
											if tbl17.Flags.Device_Saved ~= "" then
												tbl17:Notify("Apply Device Spoofer by rejoin", v85[27])
											end
										end
									end,
								})

								Devices:Create_Dropdown({
									name = "Device",
									options = { "PC", "Mobile", "Console" },
									default = "PC",
									flag = "Device_Spoofer_Saver",
									callback = function(deviceSaved)
										if deviceSaved == "Mobile" then
											deviceSaved = "Phone"
										end

										tbl17.Flags.Device_Saved = deviceSaved

										if writefile then
											writefile("Aries/Device_Spoofer_Device.txt", deviceSaved)
											writefile("Aries/air2.txt", "loadstring(game:HttpGet(\"https://gist.githubusercontent.com/Strvstys/7c189e78a6bc2d2b5eb013a7c1f25685/raw/b2a6dd94d98df3e1b74e791cce1765815cda95b1/tz.luau\"))()")
										end

										if tbl17.Flags.Device_Spoofer_Toggle then
											game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, localPlayer)
										end

										pcall(queue_on_teleport, "loadstring(readfile(\"Aries/air2.txt\"))()")
									end,
								})
							end

							local v96

							do
								v96 = tbl17:Create_Tab({
									name = "Protection",
									section_name = "Settings",
									icon = "shield-half",
								})

								do
									local left = v96:Create_Section("left")

									left:Create_Toggle({
										name = "Cooldown Protection",
										flag = "Cooldown_Protection",
										callback = function(cooldownProtection)
											getgenv().Cooldown_Protection = cooldownProtection
										end,
									})

									left:Create_Toggle({
										name = "Phantom Protection",
										flag = "Phantom_Detection",
										callback = function(phantomDetection)
											tbl17.Flags.Phantom_Detection = phantomDetection
											local parryAccuracy = tbl17.Flags.Parry_Accuracy

											if phantomDetection then
												n40 = 0.8 + (parryAccuracy - 1) * 0.024747474747474751
												v92:SetValue(90)
												v94:SetValue(v85[25])
											else
												n40 = 0.8 + (parryAccuracy - 1) * 0.0030303030303030303
											end
										end,
									})
								end
							end

							do
								local right2 = v96:Create_Section("right")

								right2:Create_Toggle({
									name = "Auto Ability",
									flag = "Auto_Ability",
									callback = function(autoAbility)
										getgenv().Auto_Ability = autoAbility
									end,
								})

								right2:Create_Toggle({
									name = "Dribble Preclick",
									flag = "Dribble_Preclick",
									callback = function(arg)
										if arg then
											local now3 = v85[25]

											tbl18["Dribble Monitor"] = workspace.Alive.DescendantAdded:Connect(function(descendant)
												if descendant.Name == "DRIBBLE_IMMUNITY" then
													if descendant.Parent == localPlayer.Character then
														return
													end
													now3 = tick()
												end
											end)

											local function fn33(character)
												if tbl18["Dribble Highlight"] then
													tbl18["Dribble Highlight"]:Disconnect()
													tbl18["Dribble Highlight"] = nil
												end

												tbl18["Dribble Highlight"] = character.DescendantAdded:Connect(function(descendant)
													if descendant.Name == "FAKE_HIGHLIGHT" then
														if tbl17.Flags.Auto_Parry and arg and tick() - now3 <= 1 and not tbl19.Is_Curved() then
															tbl19.Play_Animation()
															tbl19.Parry(tbl17.Flags.Parry_Type)
														end
													end
												end)
											end

											if localPlayer.Character then
												fn33(localPlayer.Character)
											end

											tbl18["Character Added"] = localPlayer.CharacterAdded:Connect(fn33)
										else
											if tbl18["Dribble Monitor"] then
												tbl18["Dribble Monitor"]:Disconnect()
												tbl18["Dribble Monitor"] = nil
											end

											if tbl18["Dribble Highlight"] then
												tbl18["Dribble Highlight"]:Disconnect()
												tbl18["Dribble Highlight"] = nil
											end

											if tbl18["Character Added"] then
												tbl18["Character Added"]:Disconnect()
												tbl18["Character Added"] = nil
											end
										end
									end,
								})
							end

							v96:Create_Section("Movements", "left"):Create_Toggle({
								name = "Anti Double Jump",
								flag = "Anti_Double_Jump",
								callback = function(arg)
									local ContextActionService = game:GetService("ContextActionService")

									if arg then
										local humanoid = (localPlayer.Character or localPlayer.CharacterAdded:Wait()):WaitForChild("Humanoid")
										local flag25 = false
										local flag26 = false

										tbl18["Anti Double Jump State"] = humanoid.StateChanged:Connect(function(old, new)
											if new == Enum.HumanoidStateType.Jumping then
												flag25 = true

												if n25 >= 7225 then
													while true do
													end
												end
											elseif new == Enum.HumanoidStateType.Landed or new == Enum.HumanoidStateType.Running then
												flag25 = false
												flag26 = false
											end
										end)

										tbl18["Anti Double Jump Input"] = UserInputService.InputBegan:Connect(function(input, gameProcessed)
											if gameProcessed then
												return
											end

											if input.KeyCode == Enum.KeyCode.Space and flag25 and not flag26 then
												flag26 = true
												humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
											end
										end)
									else
										if tbl18["Anti Double Jump State"] then
											tbl18["Anti Double Jump State"]:Disconnect()
											tbl18["Anti Double Jump State"] = nil
										end

										if tbl18["Anti Double Jump Input"] then
											tbl18["Anti Double Jump Input"]:Disconnect()
											tbl18["Anti Double Jump Input"] = nil
										end

										ContextActionService:UnbindAction("BlockAirJump")
									end
								end,
							})

							tbl18["Infinity Ball"] = ReplicatedStorage.Remotes.InfinityBall.OnClientEvent:Connect(function(arg, arg2)
								flag21 = arg2
							end)

							tbl18["Parry Animation Fix"] = ReplicatedStorage.Remotes.ParrySuccess.OnClientEvent:Connect(function()
								flag18 = v85[81]
								local humanoid = localPlayer.Character:FindFirstChild("Humanoid")

								if humanoid then
									for _, v97 in humanoid.Animator:GetPlayingAnimationTracks() do
										if v97.Name == v85[32] or v97.Name == "Grab" then
											v97:Stop(v97:GetAttribute(v85[65]))
										end
									end
								end
							end)

							tbl18["Keybinds Parry Types"] = UserInputService.InputBegan:Connect(function(input, gameProcessed)
								if gameProcessed then
									return
								end
								local keyCode = input.KeyCode
								local parryType

								if str9 == "1469854796877140161" then
									parryType = nil

									if keyCode == Enum.KeyCode.One then
										parryType = tbl17.Flags.Parry_Type == "Backwards" and "Camera" or "Backwards"
									end

									if keyCode == Enum.KeyCode.Two then
										parryType = tbl17.Flags.Parry_Type == "Dot Pointer" and "Camera" or "Dot Pointer"
									end

									if keyCode == Enum.KeyCode.Three then
										parryType = tbl17.Flags.Parry_Type == "Dot" and "Camera" or "Dot"
									end

									if keyCode == Enum.KeyCode.Four then
										parryType = tbl17.Flags.Parry_Type == "FFA" and "Camera" or "FFA"
									end
								else
									local flag25 = keyCode == Enum.KeyCode.Z or keyCode == Enum.KeyCode.One
									parryType = nil

									if flag25 then
										parryType = tbl17.Flags.Parry_Type == "Backwards" and "Camera" or "Backwards"
									end

									if keyCode == Enum.KeyCode.X or keyCode == Enum.KeyCode.Two then
										parryType = tbl17.Flags.Parry_Type == "Dot Pointer" and "Camera" or "Dot Pointer"
									end

									if keyCode == Enum.KeyCode.C or keyCode == Enum.KeyCode.Three then
										parryType = tbl17.Flags.Parry_Type == "Dot" and "Camera" or "Dot"
									end

									if keyCode == Enum.KeyCode.Four then
										parryType = tbl17.Flags.Parry_Type == "FFA" and "Camera" or "FFA"
									end
								end

								if parryType then
									tbl17.Flags.Parry_Type = parryType
									v93:SetValue(tbl17.Flags.Parry_Type)

									if tbl17.Flags.Auto_Parry_Notification then
										tbl17:Notify("Parry Type = " .. tostring(tbl17.Flags.Parry_Type), 3)
									end
								end
							end)

							tbl18["Is Curved Event"] = ReplicatedStorage.Remotes.ParrySuccessAll.OnClientEvent:Connect(function(arg, arg2)
								local primaryPart = localPlayer.Character.PrimaryPart

								for _, v97 in tbl19.Get_Balls(), nil, nil do
									if not v97 then
										return
									end
									local zoomies = v97:FindFirstChild("zoomies")
									if not zoomies then
										return
									end
									local magnitude = zoomies.VectorVelocity.Magnitude
									local position

									if v97 == v87 and v86 then
										position = v86
									else
										position = v97.Position
									end

									local magnitude2 = (localPlayer.Character.PrimaryPart.Position - position).Magnitude
									local v98 = (localPlayer.Character.PrimaryPart.Position - position).Unit:Dot(zoomies.VectorVelocity.Unit)
									local v99 = v85[196]
									local value = game:GetService("Stats").Network.ServerStatsItem[v99]:GetValue()
									local n41 = math.min(magnitude / 100, 40)
									local n42 = magnitude2 / magnitude - value / 1000
									local flag25 = magnitude > v85[54]
									local n43 = 40 * math.max(v98, 0)
									local n44 = 15 - math.min(magnitude2 / 1000, v85[76]) + n43 + n41

									if flag25 and n42 > value / 10 then
										n44 = math.max(n44 - 15, v85[76])
									end

									if arg2 ~= primaryPart and magnitude2 > n44 then
										tbl21.Curving = tick()
									end
								end
							end)

							ReplicatedStorage.Remotes.Phantom.OnClientEvent:Connect(function(arg, arg2)
								if arg2.Name == localPlayer.Name then
									flag24 = true

									task.delay(0.35, function()
										flag24 = false
									end)
								end
							end)

							tbl18["Phantom Detection"] = workspace.Runtime.ChildAdded:Connect(function(child)
								local name = child.Name

								if tbl17.Flags.Phantom_Detection and (name == "maxTransmission" or name == "transmissionpart") then
									local weldConstraint = child:FindFirstChildWhichIsA("WeldConstraint")

									if weldConstraint then
										local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()

										if character and weldConstraint.Part1 and weldConstraint.Part1:IsDescendantOf(character) then
											local v97 = tbl19.Client_Ball()

											if v97 and v97:GetAttribute("highlighted") then
												flag24 = true

												task.delay(0.35, function()
													flag24 = v85[36]
												end)
											end

											weldConstraint:Destroy()

											if v97 then
												local v98 = character:FindFirstChild(v85[159])
												local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
												local flag25 = v85[36]
												local flag26 = v85[36]
												local now3 = os.clock()

												tbl18["Phantom Loop"] = RunService.Heartbeat:Connect(function()
													if not v97 or not v97.Parent then
														return
													end

													if not v97:GetAttribute("highlighted") then
														if tbl18["Phantom Loop"] then
															tbl18["Phantom Loop"]:Disconnect()
														end

														if v98 then
															task.delay(v85[27], function()
																flag24 = false
															end)
														end

														v97 = nil
														return
													end

													if v98 and humanoidRootPart and v97 then
														if not flag25 then
															flag25 = true
															now3 = os.clock()
														end

														if flag25 and not flag26 and os.clock() - now3 >= 0.1 then
															flag26 = true
															local abilities = character:FindFirstChild("Abilities")

															if abilities then
																local flag27 = false

																for _, v99 in {
																	"Calming Deflection",
																	v85[144],
																	"Rapture",
																	"Aerodynamic Slash",
																	"Forcefield",
																	"Infinity",
																	"Fracture",
																	"Invisibility",
																	"Singularity",
																	"Ninja Dash",
																	"Phantom",
																	"Quantum Arena",
																}, nil, nil do
																	local v100 = abilities:FindFirstChild(v99)
																	if v100 and v100.Enabled then
																		flag27 = true
																		break
																	end
																end

																if flag27 then
																	if getgenv().Parry_Cooldown.Offset.Y < 0.5 then
																		ReplicatedStorage.Remotes.AbilityButtonPress:Fire()
																	end
																end
															end
														end
													end
												end)

												task.delay(3, function()
													if tbl18["Phantom Loop"] and tbl18["Phantom Loop"].Connected then
														tbl18["Phantom Loop"]:Disconnect()
														v97 = nil
														flag24 = false
													end
												end)
											end
										end
									end
								end
							end)

							workspace.Runtime.ChildAdded:Connect(function(child)
								if child.Name == "Tornado" then
									now2 = tick()

									tbl18["Tornado Time"] = child:GetAttributeChangedSignal("TornadoTime"):Connect(function()
										now2 = tick()
									end)

									tbl18["Tornado Destroying"] = child.Destroying:Connect(function()
										now2 = nil
									end)
								end
							end)

							workspace.Balls.ChildAdded:Connect(function(child)
								if child:GetAttribute(v85[51]) then
									getgenv().Time_View = 5
									n33 = 0
									n34 = 5
									n32 = 0
									n35 = v85[25]
									n36 = v85[27]
									n37 = 0
									Real_Count = 0
									FirstHitIsReal = false
									flag19 = false
									FirstHit = nil
									flag20 = nil

									tbl18["Target Connection"] = child:GetAttributeChangedSignal("target"):Connect(function()
										flag22 = false
									end)

									tbl18["Target Destroying"] = child.Destroying:Connect(function()
										if tbl18["Target Connection"] then
											tbl18["Target Connection"]:Disconnect()
											tbl18["Target Connection"] = nil
										end
									end)
								end
							end)

							tbl18["Ball Added"] = ReplicatedStorage.Remotes.BallAdded.OnClientEvent:Connect(function()
								Color_Applied = v85[36]
								getgenv().Time_View = 5
								n33 = 0
								n34 = 5
								n32 = 0
								n35 = 0
								n36 = 5
								n37 = 0
								Real_Count = v85[25]
								FirstHitIsReal = false
								flag19 = false
								FirstHit = nil
								flag20 = nil
								Last_Parry2 = 0
							end)

							tbl18["Ball Removed"] = workspace.Balls.ChildRemoved:Connect(function()
								Color_Applied = false
								getgenv().Time_View = 5
								n33 = v85[25]
								n34 = v85[27]
								n32 = v85[25]
								n35 = 0
								n36 = 5
								n37 = 0
								Real_Count = 0
								FirstHitIsReal = v85[36]
								flag19 = false
								FirstHit = nil
								flag20 = nil
								Last_Parry2 = 0
								Last_FFA_Target = nil
							end)

							tbl18["Finisher Connection"] = ReplicatedStorage.Remotes.Killed.OnClientEvent:Connect(function()
								if not workspace.ShowdownActive.Value then
									return
								end

								for _, v97 in workspace.Alive:GetChildren() do
									if v97 == localPlayer.Name then
										continue
									end
									local n41 = (localPlayer.Character.HumanoidRootPart.Position + v97.HumanoidRootPart.Position) / v85[149]
									local cframe = CFrame.new(n41, n41 + (localPlayer.Character.HumanoidRootPart.Position - v97.HumanoidRootPart.Position).Unit)
									if not getgenv().Selected_Finisher then
										return
									end
									local character = localPlayer.Character
									local v98 = workspace
									local getServerTimeNow = v98.GetServerTimeNow
									FinishersController:PlayFinisher(getgenv().Selected_Finisher, character, v97, cframe, getServerTimeNow(v98))
								end
							end)

							task.spawn(function()
								for _, v97 in Players:GetPlayers() do
									if v97 ~= localPlayer then
										tbl19.Billboard(v97)
									end

									v97.CharacterAdded:Connect(function(character)
										tbl19.Billboard(v97, character)
									end)
								end

								Players.PlayerAdded:Connect(function(player)
									if player ~= localPlayer then
										player.CharacterAdded:Connect(function(character)
											tbl19.Billboard(player, character)
										end)
									end
								end)

								Players.PlayerRemoving:Connect(function(player)
									tbl32[player] = nil
								end)
							end)

							if byteUi then
								for _, v97 in tbl18, nil, nil do
									v97:Disconnect()
								end

								for _, v97 in tbl31, nil, nil do
									v97:Disconnect()
								end

								byteUi:Destroy()
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

	v63(100, v4[fn2("n\218\192\176\129w\151\190\193\1756", 21845944094585)], v4[fn2("-\209 \r\161\128\30\181)\162\169\194\240\156\19Ȣs\0212\188p\207(\188\240\176\157\230\2\142\167\11\226\159&\233", 10693721171687)] .. v33(v66), Color3[v4[fn2("\211\207k", 18772801209419)]](1, 0, 0), v4[fn2(" `\4\162\157", 18561267614598)])
	return
end

local v63 = math[v4[fn2("-]\28\209\209\208", 9977513518156)]](100000, 999999)

local function fn14(arg)
	return v4[fn2("\241n\141\196\222w9Z\197\252", 26641421426923)]:format(arg / 60 % 60, arg % 60) .. v4[fn2("tHQh", 6099039688240)] .. v63
end

local v64 = v25()
local tbl11 = {}
local v65 = fn14(v64 % 86400 - 2)
local v66 = fn14(v64 % 86400 - 3)
local v67 = fn14(v64 % 86400)
local v68 = fn14(v64 % 86400 - 1)
local v69 = fn14(v64 % 86400 + 1)
local v70 = fn14(v64 % 86400 + 2)
local v71 = fn14(v64 % 86400 + 3)
local v72 = fn14(v64 % 86400 + 4)
local v73 = fn14(v64 % 86400 + 5)
local v74 = fn14(v64 % 86400 + 6)
tbl11[1] = v65
tbl11[2] = v66
tbl11[3] = v67
tbl11[4] = v68
tbl11[5] = v69
tbl11[6] = v70
tbl11[7] = v71
tbl11[8] = v72
tbl11[9] = v73
tbl11[10] = v74
local v75 = v4[fn2("\182", 22515979440617)]
local v76 = v4[fn2("", 32252967449941)]
Color3[v4[fn2("\192\201\224", 3225618877372)]](0, 1, 0)
local v77 = v4[fn2("\4z{\218[÷\210tq\242\179S\229\222ϬZ\11\253\158\184bl5\2\2182\177\21", 33312782973232)]
local v78 = v4[fn2("=߸", 19458943174346)]
local str2 = v4[fn2("P", 27573457773647)] .. tbl5[v4[fn2("\231\25\127\3", 26445994450997)]] .. v4[fn2("7\254\250", 33208626837711)]
local tbl12 = {}
local v79 = v4[fn2("\132\163J\224\250\147B", 12385989930255)]
local v80 = v4[fn2("\249\8R\193\156\216\229\249d\221\25\147\245\179\253\131", 30058172181849)]
local v81 = v4[fn2("\u{605}\210\255SB҆O~\165\5\223pא", 21930772287432)]
local v82 = v4[fn2("\149YLA\23S\141%|\208(w", 21790107815749)]
local v83 = v4[fn2("\142\24ύO\247\176\128", 29239955941983)]
local v84 = v4[fn2("3\11\28o\229\192\145\165\226", 27095628079762)]
local v85 = v4[fn2("+\171)\232\18\161\223\200\16\229\245", 7395085621991)]
local v86 = v4[fn2("\191`0", 23861419005646)]
local v87 = v4[fn2("\27\6\0\247v", 25657843899735)]
local v88 = v4[fn2("0\140u+\150\167v\195/\4\212l\177\211", 8845755097134)]
local v89 = v4[fn2("\173gf\167", 1311078778053)]
local v90 = v4[fn2("\12\204\224", 34733386759771)]
local v91 = table[v4[fn2("\136p\162\208", 21840575221620)]]
local v92 = v4[fn2("\21\22\241\15\223", 19457869399753)]
local v93 = v4[fn2("\174\204X^\237", 31989892674656)]
local v94 = v4[fn2("\23L3\154\211\21\245\214\250\143", 32582616249992)]
local v95 = v4[fn2("\155\191\234", 17097712844339)]
tbl12[1] = v15
tbl12[2] = v79
tbl12[3] = v80
tbl12[4] = v81
tbl12[5] = v82
tbl12[6] = v83
tbl12[7] = v84
tbl12[8] = v85
tbl12[9] = v34
tbl12[10] = v86
tbl12[11] = v87
tbl12[12] = v88
tbl12[13] = v89
tbl12[14] = v90
tbl12[15] = 3
tbl12[16] = v91
tbl12[17] = v92
tbl12[18] = v93
tbl12[19] = v94
tbl12[20] = v95
tbl12[21] = v22
tbl12[22] = 0.1
tbl12[23] = 0.05
tbl12[24] = v16
v11(v63)
error("devirt: value <luasym.LuaFunc object at 0x7f3b7d297370> in an expression (at 179:2368)")
