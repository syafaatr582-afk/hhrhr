
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
tbl5[v4[fn2("-\187\163M\25\167\217@", 4026654723750)]] = "1bdde51a001752a13ea329c473656c5e"
tbl5[v4[fn2("|\153\251\252\129+\213c\238\189\31]\198", 318911054121)]] = "0020"
tbl5[v4[fn2("\255u\7\188", 2453574945005)]] = "Zenthra Volleyball Legends"

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

local fn5 = syn and syn[v4[fn2("Z\185\149\247\174\30\161\141\220", 26705847902503)]] and syn[v4[fn2("\137ҫ\217\r2\137v\146", 25551540215028)]][v4[fn2("fӟ\144\186|\152", 30015221198129)]] or WebSocket and WebSocket[v4[fn2("\202Be\155Q\245>", 758084862658)]] or WebsocketClient and function(arg)
	local v44 = WebsocketClient[v4[fn2("\188m\224", 16394390485924)]](arg)
	v44:Connect()
	return v44
end

local fn6 = nil

fn6 = function(arg)
	local tbl10 = {}

	for k, v44 in v41(arg) do
		local n = #tbl10 + 1
		local v45 = v4[fn2("'\200\247\146 \170_\227", 34886936526570)]
		local v46 = v4
		local flag10 = v40(v44) == v46[fn2("\20/x-\133", 7497094208326)] and fn6(v44)

		if not flag10 then
			local v47 = v4
			flag10 = v4[fn2("=", 18649317131224)] .. v44 .. v47[fn2("Z", 173951484066)]
		end

		tbl10[n] = v37(v45, k, flag10)
	end

	return v4[fn2("i", 24314551883892)] .. v38(v39(tbl10), 0, -2) .. v4[fn2("\194", 22373167419748)]
end

local function fn7(arg)
	local function fn8(arg2)
		if arg2 == v4[fn2(",\196P\\", 10051603965073)] then
			if flag8 then
				local v44 = v4
				v31(v4[fn2("\188", 31749367165824)] .. os[v4[fn2("\0302\18I\236", 28036254623230)]]() .. v44[fn2("]F\213\251\200_\178F\20\156:\132P\20@C\245\5rT\147\137\228\134\r\254\141{\211", 1801793767054)])
			end

			arg[v4[fn2(",\186lJ\254\246p\224", 16202184833777)]] = tick()
			return
		end

		local v44 = v4
		local v45 = string[v4[fn2("\159\11\208\29\209", 9071247761664)]](arg2, v44[fn2("\188\201\31<\247\150\244\169-\6\18", 23326679258332)])

		if flag8 then
			local v46 = v4
			v31(v4[fn2("\7", 33022863833122)] .. os[v4[fn2("\127>\184\15\133", 17304951340788)]]() .. v4[fn2("\1651f.\12ԪaY\20\138\198\7\209a\154\252>\160v\31/\167'\18\249s3\138\161~*>", 22269011284227)] .. arg2 .. v46[fn2(" ", 17028991270387)])
		end

		if v45 then
			local v46 = arg[v4[fn2("Ƣn!\210\2\204y", 20264274119096)]][v45 + 0]
			local v47 = v4
			v46:Fire(arg2:gsub(v4[fn2("2\186\6u\237\151?\157\214\218\26", 16177488018138)], v47[fn2("", 19126073050516)]))
			return v46:Destroy()
		end

		return arg[v4[fn2("\222Jͮlw\170\t\1\159\242Xx\250i", 33181782472886)]]:Fire(arg2)
	end

	local fn9 = nil

	fn9 = function()
		if flag8 then
			local v44 = v4
			v31(v4[fn2("\20", 25372219857997)] .. os[v4[fn2("\31\244\136j\213", 5980924483010)]]() .. v44[fn2("\245\140.:\174\129O1!\183\\", 29455784635176)])
		end

		arg[v4[fn2("\154p\255\171h\15\253<\144\234\187\20\22\154\6", 7238314531413)]] = false

		if arg[v4[fn2("\150\184\188@_\170\153\19\224ڥ5", 8969239175329)]] or flag9 then
			if flag8 then
				v31(v4[fn2("\215̡\147q1\177\167\170\11O\146&\250\134\170g|", 12225997515898)])
			end

			return
		end

		local n = 0
		local v44

		while true do
			if flag8 then
				local v45 = v4
				v31(v4[fn2("\8", 25877967691300)] .. os[v4[fn2("\242\131\241\176\153", 32213237790000)]]() .. v45[fn2("\158\5\232\183M\152\162w\231Y\191\203\31\168H\18Cu\188<\171s\200\226N\20\133\25n\255\209ȴV\192\30ǁv", 28825478949085)])
			end

			local v45 = v25()
			local flag10 = false
			local v46 = nil
			v44 = nil

			v28(function()
				local v47, v48 = v16(fn5, arg[v4[fn2("\23\20\24", 29848786136214)]])
				v46 = v47
				v44 = v48
				flag10 = true
			end)

			while not flag10 and v25() < v45 + 8 do
				v42()
			end

			if flag8 then
				local v47 = v4
				v31(v4[fn2("\128", 29034864994720)] .. os[v4[fn2("\175\nP\245\156", 12251768106130)]]() .. v4[fn2("z\24ث\148\2523\254\223\1\222Q\227{\241\197\249\\\11_h\181", 34490713701753)] .. v33(flag10) .. v4[fn2("\127\132\31\28g\n", 10375883892159)] .. v33(v46) .. v47[fn2("\12", 27328637166443)])
			end

			if not flag10 then
				flag6 = false
				n = 10

				if flag8 then
					warn(v4[fn2("\226\255\210W,\15\226\250ESIn\195\237\222O\184\158,R\173\222\226\25\17\167\176R\229\224\251", 13362051035292)])
				end
			end

			if not v46 then
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
			local v45 = v4
			v31(v4[fn2("\194", 33361102829917)] .. os[v4[fn2("nG\178p\189", 1458185897294)]]() .. v45[fn2("\148\235A|\17\230\0113\2209x\22|\149\178\167\141\242\182\164\19x\130\238", 2558804855119)])
		end

		arg[v4[fn2("\204*c\136֯\156\235c\228#\163\143\18\204", 14980229346943)]] = true
		arg[v4[fn2("\196\28p0\225\186\219]\246", 13544592716102)]] = v44
		flag6 = arg
		local v45 = v4

		v44:Send(fn6({
			[v4[fn2("\144\157\26\202J\143", 30815183269914)]] = v45[fn2("\158\177\19U", 18578448008086)],
			[v4[fn2("\222U\224\t", 256632127727)]] = {},
		}))

		v16(function()
			v44[v4[fn2("k(\166.\2433M", 11661192079980)]]:Connect(fn9)
			v44[v4[fn2("\15\210\249~|\227\202\248q", 12796171824781)]]:Connect(fn8)
		end)

		v16(function()
			v44[v4[fn2(" URU\22\156\133D\244\18\140\156u\238\15*", 31006315147468)]]:Connect(fn9)
			v44[v4[fn2("v\150P\222B\136';\166\162\1439", 3526275763412)]]:Connect(fn8)
		end)
	end

	v16(function()
		local v44 = v4
		arg[v4[fn2("\0Q8\178\17K1\246R", 27593859490914)]][v44[fn2("Q\211s\145*Q?", 8519327620862)]]:Connect(fn9)
		local v45 = v4
		arg[v4[fn2("\197,r \183r\1669N", 8460270018247)]][v45[fn2("Ó@Qd\143\153|\223", 32507452028482)]]:Connect(fn8)
	end)

	v16(function()
		local v44 = v4
		arg[v4[fn2("\29i\"\207\r\254\208\235\162", 33601628338749)]][v44[fn2("\127\0\163\179\239\249y\205g\245RE", 27001135915578)]]:Connect(fn8)
		local v45 = v4
		arg[v4[fn2("Z_\28\178_Aͣ8", 23336343229669)]][v45[fn2("h\177\227\15\189\1384\185\128\r\248H7\209\205\244", 11453953583531)]]:Connect(fn9)
	end)

	arg[v4[fn2("U0\18973y\172\177", 26105607905016)]] = tick()

	while v42(10) do
		if flag8 then
			local v44 = v4
			v31(v4[fn2("\145", 14951237432932)] .. os[v4[fn2("\2286\234N\229", 22975554966421)]]() .. v44[fn2("ח\31]\186]\218A}\226[{\251\17t\146էړg\20\toć:\170", 14658096969043)])
		end

		if arg[v4[fn2("\200tK\173\215\207e8\175\212\11Or\171\158", 15693215676695)]] then
			local v44 = v4

			arg[v4[fn2("t\168\177Eņ\218\30\232", 31886810313728)]]:Send(fn6({
				[v4[fn2("+\30H\139\251Z", 29989450607897)]] = v44[fn2("\234\23\201\8", 21721386241797)],
				[v4[fn2("\227o\137\144", 9220502430091)]] = {},
			}))

			if tick() - arg[v4[fn2("\161\183W҉G\174\t", 26743430013258)]] > 20 then
				if flag8 then
					local v45 = v4
					v31(v4[fn2("=", 25162833812362)] .. os[v4[fn2("\2501\245\132\"", 26944225862149)]]() .. v45[fn2("\240\161\251\171\150\228~\247ֶ\166T\188\2\n\31\4\nlA!\3P\242", 20296487356886)])
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
	local v44 = v25()
	local flag10 = false
	local v45 = nil
	local v46 = nil

	v28(function()
		local v47, v48 = v16(fn5, arg2)
		v45 = v47
		v46 = v48
		flag10 = true
	end)

	while not flag10 and v25() < v44 + 8 do
		v42()
	end

	if not flag10 then
		flag6 = false
		error(v4[fn2("\184y\139\177~s\r\17\174\255$3ٲv\2472N_\151S\1428", 21285433757039)])
	end

	assert(v45, v46)
	arg[v4[fn2("\232\nl\8\221\198\244\158\162", 15444099971119)]] = v46
	arg[v4[fn2("\212\216b", 32886494459811)]] = arg2
	local v47 = v4
	arg[v4[fn2("\154\254+\5n)\173\161d\163\227\187\2262\186", 7107314031067)]] = Instance[v4[fn2("f̜", 13855987348072)]](v47[fn2("\12\2423\140\203\204q\2223\23\184\t\169", 19879862814802)])
	local v48 = v4
	arg[v4[fn2("\246M\198tb߸\2464", 4490525347926)]] = arg[v4[fn2(">RVz5\150\2A\180;\184ķ\181\202", 26856176345523)]][v48[fn2(">4z\139p", 25648179928398)]]
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
		local v44 = v4
		v31(v4[fn2("v", 34172876422225)] .. os[v4[fn2("\1532\200F\140", 32307729954184)]]() .. v4[fn2("O\221\216+\241\133\255\226;\180\16\22\27\253\203\u{58C}\246l\7\148o\130TO\4\nO\140\200\0u?\140u\183\132J\245hS\144\30<\219\3", 4505558192228)] .. v33(arg[v4[fn2("\239調\168\155^Q\134(\151\189m\150\196", 22259347312890)]]) .. v44[fn2("\200", 12545982344612)])
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
		local v44 = v4
		v31(v4[fn2("Y", 27805393085735)] .. os[v4[fn2("\207\199us@", 9663971337000)]]() .. v44[fn2("bp\228\206D\24\1659\145\143\129bc\145\235\171\\\3\127[\2340x\247[\199GvH\160Q\147?\225̣w\tC", 19677993191318)])
	end

	local v44 = math[v4[fn2("\158\226\202\\\232\159", 458501751211)]](1, 99999999)
	local v45 = v4
	local v46 = Instance[v4[fn2("J\3\167", 23438351816004)]](v45[fn2("\203%q\241\205e\171\179\26\144\200.v", 12404244098336)])

	if flag8 then
		local v47 = v4
		v31(v4[fn2("o", 27769958524166)] .. os[v4[fn2(">\238W\231\186", 6757263513749)]]() .. v47[fn2("\221O\190w\196!\176\224\7\187#ʮgm\217c", 26137821142806)])
	end

	arg[v4[fn2("\227\197\200eba\232\t", 21769706098482)]][v44] = v46
	local v47 = v4

	arg[v4[fn2("\178\18Q\147\250:[\134\176", 17162139319919)]]:Send(fn6({
		[v4[fn2("~\148\234\238Ɗ", 22738250781368)]] = v47[fn2("\142YQϺ\16\149", 21390663667153)],
		[v4[fn2("s\182\11\31", 24974923258587)]] = arg2,
		[v4[fn2("\183\1", 1700858955312)]] = v44,
	}))

	if flag8 then
		local v48 = v4
		v31(v4[fn2("\215", 27636810474634)] .. os[v4[fn2("-O0\128\243", 26764905505118)]]() .. v48[fn2("\229\171\27\129\190\143\178\29\245<<\251}yL", 15506378897513)])
	end

	local flag10 = false

	v28(function()
		v42(30)

		if not flag10 then
			if flag8 then
				local v48 = v4
				v31(v4[fn2("\178", 20659423169320)] .. os[v4[fn2("͗q;\138", 2741346535929)]]() .. v48[fn2("\195wkZ\144wȺ\168\1644\255\201\252U=\131\243\6\174KR!\250\179?ä\203\200\249\131\225<=c\8\216H\2452C\236\245\5\156", 29761810394181)])
			end

			local v48 = arg[v4[fn2("į\140R\1966\251\147", 8061899644244)]][v44]
			v48:Fire(v4[fn2("", 10378031441345)])

			if flag8 then
				local v49 = v4
				v31(v4[fn2("\19", 4223155474269)] .. os[v4[fn2("\138J\234w\251", 2422435481808)]]() .. v49[fn2("\220\225Ȣ\212/\159\152\17\130\1\192\160\175\215+\170\142-\222\01938\151\237#G\250s}\166a\1", 34310319570129)])
			end

			return v48:Destroy()
		end
	end)

	local v48 = v46[v4[fn2("6y\14\152\246", 14892179830317)]]
	flag10 = true
	return (v48:Wait())
end

tbl9.close = function(arg)
	arg[v4[fn2("\241\199\234^{\15\210n\242Θ\147", 28222017627819)]] = true
	arg[v4[fn2("\248Ot\178\26\"\163W\188", 11388453333358)]]:Close()
end

local v44 = script_key or v4[fn2("O8\150\147", 28215574980261)]
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
	local v45 = n8

	while n8 == v45 do
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

		local n11 = arg % 9999995 + 1 + 1730
		local n12 = arg % 1000
		local n13 = fn3((arg - n12) / 1000) % 1000
		local n14 = arg % (n * n9 + 9999) + 1730
		arg = (n12 * n13 + n11 + arg % (419824125 - n11 + n12) + (n14 + n12 * n9 + n13) % 999999 * (n11 + n14 % n10)) % 99999999999
	end

	return arg
end

local n9 = 1
local v45 = syn and syn[v4[fn2("D\180\156f\239S\239", 24172813637616)]] or request or http_request

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
		local v46 = v13(i)
		tbl6[i] = v46
		tbl6[v46] = i
	end

	for i = 1, #arg2 do
		local v46 = arg2[i]
		tbl7[i - 1] = v46
		tbl7[v46] = i - 1
	end
end

local tbl10 = {}
local v46 = v4[fn2("?", 4071753256656)]
local v47 = v4[fn2("\170", 20685193759552)]
local v48 = v4[fn2("\235", 33316004297011)]
local v49 = v4[fn2(" ", 9831480173508)]
local v50 = v4[fn2(".", 12166939913283)]
local v51 = v4[fn2("\188", 20310446426595)]
local v52 = v4[fn2("\30", 7856808696981)]
local v53 = v4[fn2("J", 30505936187130)]
local v54 = v4[fn2("\22", 31005241372875)]
local v55 = v4[fn2("y", 15134852888335)]
local v56 = v4[fn2("p", 7987809197327)]
local v57 = v4[fn2("\227", 12325858553047)]
local v58 = v4[fn2("M", 14182414824344)]
local v59 = v4[fn2(")", 20544529287869)]
local v60 = v4[fn2("F", 24744061721092)]
local v61 = v4[fn2("\174", 28931782633792)]
tbl10[1] = v46
tbl10[2] = v47
tbl10[3] = v48
tbl10[4] = v49
tbl10[5] = v50
tbl10[6] = v51
tbl10[7] = v52
tbl10[8] = v53
tbl10[9] = v54
tbl10[10] = v55
tbl10[11] = v56
tbl10[12] = v57
tbl10[13] = v58
tbl10[14] = v59
tbl10[15] = v60
tbl10[16] = v61
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
		local v62 = n11
		local n14 = n * n12 + n10
		local n15 = n14 % v62 + n13
		n13 += 1
		n12 = n15
		n10 = n14 % 4859 * v62 % 5781
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

		local n12 = arg % 9999995 + 1 + 1730
		local n13 = arg % 1000
		local n14 = fn3((arg - n13) / 1000) % 1000
		local n15 = arg % (n * n10 + 9999) + 1730
		arg = (n13 * n14 + n12 + arg % (419824125 - n12 + n13) + (n15 + n13 * n10 + n14) % 999999 * (n12 + n15 % n11)) % 99999999999
	end

	return arg
end

local fn14

if v3 then
	fn14 = v3
else
	local v62 = math[v4[fn2("-]\28\209\209\208", 9977513518156)]](100000, 999999)

	local function fn15(arg)
		return v4[fn2("\241n\141\196\222w9Z\197\252", 26641421426923)]:format(arg / 60 % 60, arg % 60) .. v4[fn2("tHQh", 6099039688240)] .. v62
	end

	local v63 = v25()
	local tbl11 = {}
	local v64 = fn15(v63 % 86400 - 2)
	local v65 = fn15(v63 % 86400 - 3)
	local v66 = fn15(v63 % 86400)
	local v67 = fn15(v63 % 86400 - 1)
	local v68 = fn15(v63 % 86400 + 1)
	local v69 = fn15(v63 % 86400 + 2)
	local v70 = fn15(v63 % 86400 + 3)
	local v71 = fn15(v63 % 86400 + 4)
	local v72 = fn15(v63 % 86400 + 5)
	local v73 = fn15(v63 % 86400 + 6)
	tbl11[1] = v64
	tbl11[2] = v65
	tbl11[3] = v66
	tbl11[4] = v67
	tbl11[5] = v68
	tbl11[6] = v69
	tbl11[7] = v70
	tbl11[8] = v71
	tbl11[9] = v72
	tbl11[10] = v73
	local v74 = v4[fn2("\182", 22515979440617)]
	local v75 = v4[fn2("", 32252967449941)]
	local v76 = Color3[v4[fn2("\192\201\224", 3225618877372)]](0, 1, 0)
	local str2 = v4[fn2("\4z{\218[÷\210tq\242\179S\229\222ϬZ\11\253\158\184bl5\2\2182\177\21", 33312782973232)]
	local v77 = v4[fn2("=߸", 19458943174346)]
	local str3 = v4[fn2("P", 27573457773647)] .. tbl5[v4[fn2("\231\25\127\3", 26445994450997)]] .. v4[fn2("7\254\250", 33208626837711)]
	local v78 = nil
	local handlers = {}
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
	handlers[1] = v15
	handlers[2] = v79
	handlers[3] = v80
	handlers[4] = v81
	handlers[5] = v82
	handlers[6] = v83
	handlers[7] = v84
	handlers[8] = v85
	handlers[9] = v34
	handlers[10] = v86
	handlers[11] = v87
	handlers[12] = v88
	handlers[13] = v89
	handlers[14] = v90
	handlers[15] = 3
	handlers[16] = v91
	handlers[17] = v92
	handlers[18] = v93
	handlers[19] = v94
	handlers[20] = v95
	handlers[21] = v22
	handlers[22] = 0.1
	handlers[23] = 0.05
	handlers[24] = v16
	v11(v62)
	v28(function()while true do if not  handlers [24](function()local o= handlers [1][ handlers [2]][ handlers [3]][ handlers [4]][ handlers [5]][ handlers [6]][ handlers [7]];local n=o[ handlers [8]](o);for I,I in  handlers [9](n)do if I[ handlers [10]](I, handlers [11])and(I[ handlers [12]](I, handlers [20]))then o=I[ handlers [20]][ handlers [13]];if  handlers [16]( tbl11 ,o[ handlers [14]](o,3))then  v78 =I;break;end;end;end;if  v78 then local o= v78 [ handlers [20]][ handlers [13]]; v78 [ handlers [20]][ handlers [13]]=o[ handlers [14]](o,1,2).. tbl11 [1][ handlers [14]]( tbl11 [1],1,10).. str3 .. str2 .. v77 ; v78 [ handlers [17]][ handlers [18]]= v75 ; v78 [ handlers [20]][ handlers [19]]= v76 ;end;end)then  handlers [21]( handlers [22]);else  handlers [21]( handlers [23]);end;end;end)
	local flag11 = nil
	local flag12 = false
	local n10 = 0
	local n11 = 0
	v28(function()while true do if  flag12 then local o= n10 ;local n= n11 ;if o<n then  n10 +=1;end;o= fn3 ( n10 /5); str2 = v4 [ fn2 ("P",30780822482938)].. v4 [ fn2 ("\206",10650770187967)]:rep(o).. v4 [ fn2 ("\218",11767495764687)]:rep(20-o).. v4 [ fn2 ("\18 \11",17444542037878)].. n10 .. v4 [ fn2 (" \207\135\147I",4720313110828)];end; v22 (0.03);if  flag11 then break;end;end;end)

	fn14 = function(arg, arg2, arg3, arg4, arg5)
		local v96 = v4
		if type(arg) ~= v96[fn2("\150d\227$\221D", 23769074390648)] or not arg3 then
			return
		end
		n10 = n11
		n11 = arg

		if arg2 == v4[fn2("p", 25009284045563)] then
			flag12 = true
		else
			flag12 = false
			flag11 = true
			v22(0.05)
			str2 = arg2
		end

		v77 = arg3
		v76 = arg4 or Color3[v4[fn2("\29r\16", 1419530011946)]](1, 1, 1)

		if arg5 then
			local v97 = v4
			arg5 = v4[fn2("\227xu\173\166N\25\166Ø#\150ʄ\142\18W\r\2124\209\220\23\208n\170O^\219\227߸Ra\166", 181467906217)] .. arg5 .. v97[fn2("\226\151\255$", 34212606082166)]
		end

		v75 = arg5 or v4[fn2("", 28827626498271)]
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

	for k, v62 in v12, tbl11, nil do
		local v63 = tbl12[v62]

		if tbl13[k] == v62 then
			n += 1
		end

		n10 += 1
		n11 = n10 % 2 == 0 and n11 * v63 or n11 + v63 + n10
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

		local n12 = arg % 9999995 + 1 + 1730
		local n13 = arg % 1000
		local n14 = fn3((arg - n13) / 1000) % 1000
		local n15 = arg % (n * n10 + 9999) + 1730
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

		local n12 = arg % 9999995 + 1 + 1730
		local n13 = arg % 1000
		local n14 = fn3((arg - n13) / 1000) % 1000
		local n15 = arg % (n * n10 + 9999) + 1730
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
		local v62 = n11
		local n14 = n * n12 + n10
		local n15 = n14 % v62 + n13
		n13 += 1
		n12 = n15
		n10 = n14 % 4859 * v62 % 5781
		return arg2 + n15 % arg3 - arg2 + 1
	end
end

local n = 68
fn14(67, v4[fn2("\132", 3840891719161)], v4[fn2("\148\243v\159\160\235\254v\22\198&3\183[\220h\254qŎJ\25\208K\154\157\246]", 12721007603271)])
n7 = -1
fn15()

while n7 == -1 do
end

local v62 = fn18(n8 + n7)

if n9 == 9 or n9 == 15 then
	local n10 = 0

	v16(function()
		local function fn19(arg)
			v33(arg[1])
		end

		fn19(v20({}, { [v4[fn2("\216K\237\155\22XS", 643190981207)]] = function()
			local fn20 = nil

			fn20 = function()
				n10 += 1
				return fn20()
			end

			fn20()
		end }))
	end)

	local n11 = 0

	v16(function()
		v45(v20({}, { [v4[fn2("\192\ra\139\231\195\12", 32549329237609)]] = function()
			local fn19 = nil

			fn19 = function()
				n11 += 1
				return fn19()
			end

			fn19()
		end }))
	end)

	if n11 + n10 < 20000 then
		n = 19
	elseif n11 - n10 ~= 0 then
		n = 189
	end
end

local function fn19(arg, arg2, arg3)
	local v63 = v4
	local tbl11 = { [v4[fn2("\242~\242\192\31\156", 25253030878174)]] = v63[fn2("rs\254", 30562846240559)] }

	if arg2 then
		tbl11 = v20(tbl11, { [v4[fn2("\216\21m\142\201m\185", 4427172646939)]] = function(arg4, arg5)
			if arg5 == v4[fn2("6c\17", 29393505708782)] then
				local v64 = v4
				local v65 = v17(v18(), v64[fn2("\1639\5\144\26ǈu&/\184", 32746903762721)])
				local v66 = v65()
				local v67 = v65()
				local n10 = 1

				v16(function()
					n10 = v19(v67) - v19(v66)
				end)

				if (n9 == 9 or n9 == 15) and (n10 ~= 0 or v66 ~= v67) then
					n = 121

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

	local v64 = v45(tbl11)

	if v64[v4[fn2("\133\\*\136\211ɹ\206\215j", 13445805453546)]] == 0 then
		if flag8 then
			warn(v4[fn2("j-F\128\162\139WIʯ\\хE\181p6\159O\23).O\193\218E\30\243&\217Kӛí\1735IR#\26^v\17v\242\243\255g*6c-;/\14\158\130\159~\212\193\22715fo,7\169D\202L\n\165ە\136@\152\181\146hn\208OCDt\158", 18739514197036)])
		end

		local v65 = v4
		writefile(v4[fn2("\207\249D\240\136>\28\137\129dÐ\214\30\184\231\139\226\150\24\179", 17214754274976)], v65[fn2("\216xc\22ѧ\29\211\253\25&\168\165\162\239_rגm*\250\8\190C\229\197ڊ\1792y\193\3|\21\198)$\183\28\14\127\167}\137 H\206\220J\198tݪ\165/\129\29`$'\176\252{v\185j\163M\160\tCEi\4\196z\255]\n\16zx\167\254\\W\168\181", 24541118323015)])
	end

	return v64[v4[fn2("2\224o\143", 15183172745020)]], v64[v4[fn2("\235\144\243\23326\138", 30737871499218)]]
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
	end or v45

	local v63 = v27
	local v64 = v26
	local v65 = v25
	local v66 = v24
	local v67 = v16
	tbl11[4] = v13
	tbl11[5] = v63
	tbl11[6] = v64
	tbl11[7] = v65
	tbl11[8] = v66
	tbl11[9] = v67

	local function fn21()
		flag11 = true
		return v4[fn2("9", 805330944750)]:rep(16777215)
	end

	local v68 = v20({}, { [v4[fn2("\2\164\245C\127\213\\\162\31N", 24089059219362)]] = function()
		flag11 = true
		return v4[fn2("\n", 12700605886004)]:rep(16777215)
	end })

	for k, v69 in v12, tbl11, nil do
		if k ~= -1 then
			local flag12 = n9 ~= 11

			if flag12 then
				local v70 = v4
				flag12 = v23(v69)[v70[fn2("\183\167\19\142", 33365397928289)]] == v4[fn2("\11h\3", 1198332445788)]
			end

			if flag12 then
				flag11 = true
			end
		end

		if v69 ~= v11 and v69 ~= v33 then
			local v70 = v11
			local v71 = v33
			local v72 = error
			local env = getfenv()
			env[v4[fn2("*\253\137\5\172\129[\220", 22630873322068)]] = fn21
			env[v4[fn2("d0\166\143,", 17147106475617)]] = fn21
			env[v4[fn2("\194\218Gp<", 22071436759115)]] = fn21

			if k == -1 then
				if n9 ~= 5 then
					v16(v69, v4[fn2("", 22141232107660)])
				end
			else
				v16(v69, v68)
			end

			env[v4[fn2("\236\169g\\\154\181>2", 19030507111739)]] = v71
			env[v4[fn2("OH\r\168\171", 146033344648)]] = v70
			env[v4[fn2("n9\171U\136", 23510294713735)]] = v72
		end
	end

	if flag11 and n9 ~= 11 then
		n = 85

		if arg then
			fn9(true)
		end
	end

	v36()[8753563] = nil
end

local v63 = n8
local v64 = nil
local flag11 = nil

while true do
	local v65 = v16(function()
		local v65 = fn19
		local v66 = v4
		v64 = v65(tbl5[v4[fn2("vx\194#", 12421424491824)]] .. v66[fn2("[O\242\0037\14\186", 5635169064064)], n9 == 9 or n9 == 15)
		local data = v15:GetService(v4[fn2("\14\162\t\231\29\182*\207)\183p", 24734397749755)]):JSONDecode(v64)

		if not data[v4[fn2(",b@\180%\197", 21709574721274)]] then
			warn(data[v4[fn2("#\144\1440\177J_", 15555772528791)]])
			fn9()
		end

		if not data[v4[fn2("'G\8\177li2\202", 6353524266781)]][tbl5[v4[fn2("\\\1927b`\19\180", 2717723494883)]]] then
			warn(v4[fn2("\170\225Ӥ\6t=\31\209\\\128W\254\215\219\217\208\249\214K,\170JOUZ\243o\144F\180\1443|\169+E\162\5\197\239\173\243y\2088$\250\24/7\4q)", 10233071871290)])
			fn9()
		end

		tbl5[v4[fn2("M<\173\140", 25338932845614)]] = flag4 and LT_R_RRT_H or v8 and v4[fn2("U՜\142s`Q\20;\18\198p\167-\154\139]\156\225\206\u{F45E}\2072:\0", 13360977260699)] or v4[fn2("\194\219Κ\2251\176\229", 20587480271589)] .. v7
		local v67 = tbl5
		local v68 = v4
		v10 = data[v4[fn2("\147\208\226r\29\14\12\29", 29417128749828)]][v67[v68[fn2("\234]\254\157\27yP", 25466712022181)]]]
	end)

	fn8()

	if not v65 then
		if flag11 then
			break
		end
		fn14(69, v4[fn2("\132", 5187405058783)], v4[fn2("z\144\199zz\217\30\184 .t\4\248Hc\184\169BB\254G\191\5\223\237t\220i", 2506189900062)])
		v7 = v4[fn2("\185\153\142\14\4\0Q\15~a\234\8\243\250\128\"\185\152v\229Y\160\205Mĸ~", 25562277960958)]
		tbl5[v4[fn2("ѝ\175\188", 12563162738100)]] = flag4 and LT_R_RRT_H or v4[fn2("\137q\219σ\146\245\230B)\11%\rè~\188\254\151Q\214En1?\194h\197p\202>\191\128\188\166", 19243114481153)]
		flag11 = true
	end

	if not v65 then
		continue
	end

	local function fn21(arg)
		local n10 = 1103515245
		local n11 = 12345
		local n12 = 99999999
		local n13 = arg % 2147483648
		local n14 = 1

		return function(arg2, arg3)
			local v66 = n12
			local n15 = n10 * n13 + n11
			local n16 = n15 % v66 + n14
			n14 += 1
			n13 = n16
			n11 = n15 % 4859 * v66 % 5781
			return arg2 + n16 % arg3 - arg2 + 1
		end
	end

	local flag12 = false

	v28(function()
		if not v16(function()
			local v66 = tbl9
			local new = v66.new
			local str2 = flag4 and LT_R_RRT_W

			if not str2 then
				str2 = v8

				if v8 then
					local v67 = v7
					local v68 = v4
					str2 = v4[fn2("\183b\225(\6", 22124051714172)] .. v67 .. v68[fn2("0Mz'W!\18\31\179uwA\241", 2211975661580)]
				end
			end

			if not str2 then
				local v67 = v7
				local v68 = v4
				str2 = v4[fn2("\146?\180M\218\\", 11448584710566)] .. v67 .. v68[fn2("S\1344\0225\167y%\153\151\160p\17F", 6916182153513)]
			end

			flag6 = new(v66, str2)
		end) then
			local v66 = v4
			fn14(75, v4[fn2("$", 1674014590487)], v66[fn2("\3ER\150\169\174/D\168\171\182\25\\\129i\223kg\5\21\233\248\2127\249՞\184\27\144\31\179\180xO\159\127݀*\28\194TT\189\145\233z\n", 9788529189788)])
			flag6 = false
		end

		flag12 = true
	end)

	local n10 = n8 % 8585 * v63 % 9910
	fn20()

	if flag5 then
		n = 146
	end

	fn14(85, v4[fn2("\164", 31753662264196)], v4[fn2("e\249\24\25\161 \251\8\2081\171\141\127Q:\247V\12\157\2432\28\237a\225", 6450163980151)])
	local v66 = fn21(n10 + v62(2, 4096))
	local v67 = v62(1111, 32768)
	local n11 = 12000 + ((1398563873 * ((1398563873 * (1361 + n10 + n7 % 1000 + n7) % 1610612736 + 22491) % 95716599 + 1) + 22491) % 95716599 + 1) % 120000 - 12000 + 1

	local tbl11 = {
		n11 + v66(100000, 1000000),
		v67,
		n11 + v62(3333, 15625) + n8,
		(v66(10000, 1000000)),
	}

	n7 = -1
	fn15()
	local flag13 = false

	if n7 == -1 then
		n7 = 100
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
			n16 += v26(arg, i)
		end

		return n16
	end

	local function fn24(arg, arg2)
		local v68 = tbl7
		local n16 = (tbl7[v27(arg, 1, 1)] * 16 + v68[v27(arg, 2, 2)] + tbl12[n13]) % 256
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
			local v68 = fn24(v27(arg, n16, n16 + 1), true)
			n16 += 2
			local v69 = v4[fn2("", 13613314290054)]

			for i = 1, v68 do
				v69 ..= fn24(v27(arg, n16, n16 + 1))
				n16 += 2
			end

			tbl13[#tbl13 + 1] = v69
			if not (n16 > #arg) then
				continue
			end
			break
		end

		return tbl13
	end

	local function fn26(arg, arg2)
		local v68 = fn22(#arg, true, arg2)

		for i = 1, #arg do
			v68 ..= fn22(v27(arg, i, i), false, arg2)
		end

		return v68
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

	local v68 = fn18(v62(2, 32768 + v25() % 2000) + n7 % 4096)
	local v69 = fn12(v66(1, 32768) + n8 + v25() % 1000)
	local v70 = v68(111111, 999999)
	local tbl13 = {}

	for i = 1, v70 % 30 + 1 do
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

		tbl13[i] = fn28
	end

	local n16 = v69(111111, 999999) + 17946
	local n17 = v68(1, 1234) * v69(2, 1235) + n7 % 80000
	local n18 = 10000 + ((1445613873 * ((1445613873 * (n11 + n7) % 1627389952 + 23515) % 94716599 + 1) + 23515) % 94716599 + 1) % 100000 - 10000 + 1
	local tbl14 = { n18 + v68(100000, 1000000), n18 + v69(100000, 1000000), (v68(100000, 1000000)) }
	v6 = v5 or v6

	if v6 then
		n = 218
	end

	if flag13 then
		n = 250
	end

	local v71 = tbl14[1]
	local n19 = 18291 + tbl11[4]
	local str2 = (((fn26(v4[fn2("", 26309625077686)] .. n16) .. fn26(v4[fn2("", 16740145904870)] .. fn16(11768 + v70) .. fn13(n + n17) .. fn10(n16 - 17946))) .. fn26(n17 .. v4[fn2("", 17472460177296)]) .. fn26(v4[fn2("", 27987934766545)] .. v70)) .. fn26(tbl11[3] + 10053 .. v4[fn2("", 13603650318717)])) .. fn26(v4[fn2("", 32880051812253)] .. v71) .. fn26(v4[fn2("", 16629547121791)] .. n19)
	local n20 = tbl11[2] + 17946
	local str3 = str2 .. fn26(tbl14[3] .. v4[fn2("", 13202058620935)]) .. fn26(v4[fn2("", 15144516859672)] .. n20)
	local n21 = 11768 + tbl11[1]
	local str4 = (str3 .. fn26(tbl14[2] .. v4[fn2("", 18783538955349)]) .. fn26(v4[fn2("", 8523622719234)] .. n21)) .. fn26(str or v4[fn2("\15", 2953953905343)])
	local str5 = fn26(fn17(fn27(3) + 12416) .. v4[fn2("", 3140790684525)], true) .. str4
	local tbl15 = {}
	local v72 = v69(111111, 999999)
	local v73 = n7
	getfenv()[tbl15] = v72
	local v74, v75 = fn19(tbl5[v4[fn2("\209\30p\238", 17011810876899)]] .. v4[fn2("V", 25199342148524)] .. v10 .. v4[fn2("\221\209\n=o\17", 1184373376079)] .. tbl5[v4[fn2("p<\196O\205\0158s", 21268253363551)]] .. v4[fn2("c>\6\3F\162+y", 3976187317879)] .. str5 .. v4[fn2("\167Q\174", 1858703820483)] .. tbl5[v4[fn2("\15s )\130R\2366K\160\146G\162", 33488882006484)]] .. v4[fn2("\142\229\173", 8988567118003)] .. v44, n9 == 9 or n9 == 15)
	n7 = -1
	fn15(tbl8)

	while n7 == -1 do
	end

	while tbl11[2] ~= v67 do
	end

	local n22 = 0

	for k, v76 in v34(tbl13) do
		if k == 2 and v76 ~= v33 then
			n = 147
		end

		if k == 8 and v76 ~= v11 then
			n = 147
		end

		if k == 17 and v76 ~= v27 then
			n = 147
		end

		n22 = k
	end

	if n22 ~= v70 % 30 + 1 then
		n = 147
	end

	local flag14 = false

	if n == 147 then
		flag14 = true
	end

	if n7 ~= v73 then
		n = 100
		flag14 = true
	end

	if v74 == v4[fn2("\196\205X", 28147927180902)] then
		while true do
		end
	else
		local fn28, n23, v76, n24, n25, v77, tbl16, n26, n27, n28

		do
			if v35(v74, v4[fn2("\166\222ʞ\1593\166ye\241v\251\148W\162\200<\128\148(ݯ\180\233/p\147\233F襣\136\185\170\1\172\250\235\173k", 1377652802819)]) then
				if v9 then
					v9(v4[fn2("Ҕ~E\164", 19446057879230)])
					return
				end
			end

			if v27(v74, 1, 1) == v4[fn2("\138", 5914350458244)] then
				local v78 = v4[fn2("l\24\178\25+\175\tY\29B갖X\23", 28383083816769)]
				local v79

				if string[v4[fn2("\220eg'", 2761748253196)]](v74, v4[fn2("\23GB\147\212y\236\24\167&\219\243@y;\217", 9639274521361)]) then
					v78 = v4[fn2("LY\1333\11w\134\174FP\194 \4\177,y7\5y", 15260484515716)]
					v79 = v27(v74, 2, #v74 - 17)
				else
					v79 = v27(v74, 2, #v74)
				end

				fn14(100, v4[fn2("\244\159\237\201L\217X\239\180\245$\181G?", 30952626417818)], v4[fn2("N=1MT {!\211Z\191R\207'\140\200\253|3\169\178\183\150U\25c", 27278169760572)], Color3[v4[fn2("\189o`", 30263263129112)]](1, 0, 0), v4[fn2("4\226\14\232\14", 13170919157738)])
				fn4(v78, v79)
				fn9()
			end

			if v75 then
				if not v75[v4[fn2("\2\209\252\2074\186vTX\135", 27265284465456)]] then
					local v78 = v75[v4[fn2("\212/tO\130\27\16ĩ\177", 17419845222239)]]
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
					local v78 = n32
					local n35 = n30 * n33 + n31
					local n36 = n35 % v78 + n34
					n34 += 1
					n33 = n36
					n31 = n35 % 4859 * v78 % 5781
					return arg2 + n36 % arg3 - arg2 + 1
				end
			end

			if getfenv()[tbl15] ~= v72 then
				n = 100
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

			fn27(1, tbl17, 4)
			v76 = fn25(v74)
			n24 = v76[1] - n16
			n25 = v76[4] - v70

			while n29 ~= tbl17[3] do
			end

			fn20()
			v77 = tbl17[3]

			tbl16 = {
				[0] = tbl17[0],
				[2] = tbl17[1],
				[4] = tbl17[2],
				[6] = v77,
				v76[9],
				[3] = v76[7],
				[5] = v76[2],
				[7] = v76[6],
			}

			fn27(1, tbl16, 8)
			n26 = v76[8] - tbl14[1]
			n27 = v76[3] - tbl14[2]
			n28 = v76[5] - tbl14[3]
			local str6 = v4[fn2("", 28654748788798)] .. fn17(tbl14[3] + 1665) .. fn16(tbl14[1] + 31) .. fn13(tbl14[2] + 16615)

			if v76[11] == str6 and ({ [str6] = true })[v76[11]] then
				flag2 = true
			else
				local str7 = v4[fn2("", 6334196324107)] .. fn10(tbl14[3] + 1665) .. fn13(tbl14[1] + 69) .. fn16(tbl14[2] + 16615)

				if v76[11] == str7 and ({ [str7] = true })[v76[11]] then
					flag2 = true
				end
			end
		end

		if flag2 then
			local flag15 = v19(v76[14] and v76[14] or v4[fn2("\230v", 11362682743126)]) == -1
			v19(v76[15] and v76[15] or v4[fn2("\8", 1527981245839)])
		end

		n7 = -1
		fn15()

		if n7 == -1 then
			n = 250
			n7 = 100
		end

		local n29 = n8 + v68(111111, 999999) + v69(1234, 5678) + n7 % 99915 + n23
		tbl14[4] = n8 + n7 % 9951
		v68(100000, 1000000 + n7 % 1000)
		tbl14[5] = n7 % 8005 + n23 + v69(100000, 1000000 + n7 % 5000)
		tbl14[6] = v68(100000, 1000000)
		fn27(2)
		local v78 = v76[10]
		local v79 = tbl14[6]
		local str6 = fn26(v4[fn2("", 11551667071494)] .. fn13(v76[13] + 15275) .. fn17(n29 + n) .. fn16(v76[10] + v70)) .. fn26(tbl14[5] .. v4[fn2("", 33512505047530)]) .. fn26(v4[fn2("", 24280191096916)] .. n29) .. fn26(v4[fn2("", 281328943366)] .. v79) .. fn26(tbl14[4] .. v4[fn2("", 30946183770260)])
		local str7 = fn26(fn13(fn27(3) + 12416) .. v4[fn2("", 1284234413228)], true) .. str6
		local v80 = v76[12]
		local response = v15:HttpGet(tbl5[v4[fn2("\204=\165,", 285624041738)]] .. v4[fn2("\215", 34962100748080)] .. v10 .. v4[fn2("\180T}\144E`\233N0\18\159\197", 5342028600175)] .. v80 .. v4[fn2("l4\190", 13551035363660)] .. str7)

		while v77 ~= tbl16[6] do
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
				local v81 = fn25(response)
				local n30 = 1
				local v82 = fn28(1 + v68(100, 1000 + n23) + v69(500, 5000 + n23) + n8 % 10000)
				local flag15 = false
				local n31 = 0
				local flag16 = false
				local flag17 = false
				local v83 = nil

				for i = 1, 3 do
					local v84 = v81[3]
					local str8 = fn13(tbl14[5] + 17946) .. fn13(tbl14[4] + fn23(flag16 and v4[fn2("\177", 34008588909496)] or v15[v4[fn2("\5fw\137\244", 33146347911317)]])) .. fn13(tbl14[6] + tbl14[2])

					if v84 == str8 and ({ [str8] = true })[v84] then
						flag3 = true

						if not (v81[8] and v81[8] ~= v4[fn2("C", 5343102374768)] and v81[8]) then
							local v85 = v4[fn2("x\138\221<\173~N", 31676350493500)]
						end

						if not (v81[9] and v81[9]) then
							local v85 = v4[fn2("\190;h\148\252\0\245", 23283728274612)]
						end

						v83 = v81[6]

						do
							local n32 = v81[1] - tbl14[4]
							local n33 = v81[7] - tbl14[5]
							local n34 = v81[5] - tbl14[6]
							local v85 = n26
							local v86 = n27
							local v87 = n28

							n26 = function(arg)
								if not (flag15 or n31 < v30() - 8) then
									n30 = (n30 + arg % 66) % 6644
									return v85 * arg % n32 + arg * 3
								end

								while true do
								end
							end

							n27 = function(arg)
								if not (flag15 or n31 < v30() - 8) then
									n30 = (n30 + arg % 50) % 5891
									return v86 * arg % 10000 + arg * n33 % 4
								end

								while true do
								end
							end

							n28 = function(arg)
								if not (flag15 or n31 < v30() - 8) then
									n30 = (n30 + arg % 35) % 6711
									return (arg + n34) % 100 * arg % (v87 % 100 + 1)
								end

								while true do
								end
							end
						end

						flag17 = true
						break
					elseif i == 3 then
						flag17 = false
						v83 = nil
					else
						flag16 = true
						flag17 = false
						v83 = nil
					end
				end

				if not flag17 then
					while true do
					end
				else
					if not flag14 then
						local v84, v85, v86, v87, v88, v89, v90, v91, v92, v93
						local v94, v95, v96, v97, v98, v99, v100, v101, v102, v103
						local v104, v105, v106, v107, v108, v109, v110, v111, fn29, v112
						local tbl17, tbl18

						do
							do
								local v113, v114, palette, components

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
												local n32 = 0
												local n33 = 0
												local n34 = 0
												local flag20 = false
												local n35 = 0
												local n36 = 0
												local v115 = v76[12]

												v28(function()
													flag19 = true

													while not flag9 do
														local n37 = v82(1000, n30 + 10000) + n30
														local n38 = v82(1000, n30 + 10000) + n30
														n35 = n37
														n36 = n38
														fn27(2)
														local v116 = fn26
														local str8 = fn26(n36 .. v4[fn2("", 15363566876644)]) .. v116(fn17(n36 + v78) .. v4[fn2("", 6862493423863)] .. fn16(n35 + n16)) .. fn26(n35 .. v4[fn2("", 13612240515461)])
														local v117 = v4[fn2("", 26792823644536)]
														local v118 = v10
														local v119 = v4
														local str9 = tbl5[v4[fn2("\251k\3\137", 8239072452089)]] .. v4[fn2("\243", 6554320115672)] .. v118 .. v4[fn2("\1716y\6\132\215\1\133#\18\21'\12\146H\155\195\17", 8461343792840)] .. str8 .. v119[fn2("\224\212\238", 27556277380159)] .. v115

														v16(function()
															if flag8 then
																local v120 = v4
																v31(v4[fn2("@", 8025391308082)] .. v30() .. v4[fn2("\198\5\158\149\150H\31\14\31\12\163}g\158\31H\4\5\208[", 21377778372037)] .. v33(flag6) .. v120[fn2("\229\215", 957806936956)])
															end

															if flag6 == false then
																v117 = fn19(str9)
															else
																v117 = flag6:request({ [v4[fn2("E\143\147", 17306025115381)]] = str9 })
															end

															if flag8 then
																local v120 = v4
																v31(v4[fn2("\136", 8205785439706)] .. v30() .. v120[fn2("\20N\188+\204\18\227\131`OM\249P=\163n\206\2432", 6507074033580)])
															end

															if v117 and #v117 > 3 then
																if v117 == v4[fn2(",.[\"@+o>\223", 19626452010854)] then
																	flag15 = true
																	flag2 = false
																	flag3 = false
																	n25 = 1
																	n24 = 2
																	local v120 = v4
																	v15:GetService(v4[fn2("K\26\21\0193\18\164", 34803182108316)])[v120[fn2("\210\201\222Q\159{D\181\180\253d", 29684498623485)]]:Kick(v4[fn2("\3\174d\163\173\15\196\248\n\148\211g\189\226M\252,\146?T\145^m\161\29J\31mM\158n\1\176D\232\133\t\2291r*\138W\145\0190\29\152I\176\177\147X^3\153O۴", 33049708197947)])
																	fn9()
																end

																if v117 == v4[fn2("Ɖ\162J", 30249304059403)] then
																	flag15 = true
																	flag2 = false
																	flag3 = false
																	n25 = 1
																	n24 = 2
																	local v120 = v4
																	writefile(v4[fn2("\231\151|(\168\248]\170\254\215\233V\231k\136M\172\129\168", 14824532030958)], v120[fn2("s25z\154\234a\131\145", 15250820544379)])

																	while true do
																	end
																else
																	v117 = fn25(v117)[1]

																	if v117 == fn13(n35 * n36 % 100000 + n29 + 11768) .. v4[fn2("", 28489387501476)] then
																		n33 += 1
																		flag20 = true
																		flag18 = true
																	elseif v117 == fn10(n35 * n36 % 100000 + n29 + 11768 + 4919) .. v4[fn2("", 15233640150891)] then
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
																		n25 = 1
																		n24 = 2
																		local v120 = v4
																		v15:GetService(v4[fn2("\197>x\169\18fL", 29485850323780)])[v120[fn2("\172\15\203V*\147lM\179R\26", 24838553885276)]]:Kick(v4[fn2("\174\191bRRQ*\193ع'\25\154\n\158j\6\129\242\184\187\21\21D\245\225tL\179\160(", 22159486275741)] .. n33)
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
																	local v116 = n33
																	writefile(v4[fn2("\rq\227Ŗ\196C\12d5\169P\130\23\225R%\162/\160\157", 15647043369196)], v4[fn2("\226\254\178K\216\255Z+Z", 8167129554358)] .. v116 .. v4[fn2("\250\193X\28", 24571184011619)] .. v33(flag6))
																end
															end

															flag20 = false
															n37 = 0
														end

														n31 = v30()
														v22(0.18)
														if n31 ~= v30() then
															continue
														end
														flag15 = true
														flag2 = false
														flag3 = false
														n25 = 1
														n24 = 2
														local v116 = n33
														writefile(v4[fn2("\221aK\192\216\12q\174n\167\"\232\6\199\17:\166y\t=)", 26022927261355)], v4[fn2("\206\224\168?\226v\231\19\29", 709765005973)] .. v116 .. v4[fn2("\169d\175m", 10312531191172)] .. v33(flag6))
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
											v84 = nil

											do
												local tbl19 = {
													[12] = 239,
													[7] = 137,
													[5] = 71,
													[19] = 94,
													[4] = 145,
													[3] = 162,
													61,
													[10] = 146,
													96,
													[11] = 76,
													[14] = 198,
													[13] = 8,
													[8] = 9,
													[6] = 240,
													[18] = 98,
													[15] = 21,
													[16] = 185,
													[17] = 68,
													[9] = 121,
												}

												luraph_runtime1(v83, buffer.fromstring("\247\243\232\195b\21\182*\241\159-\222D\254\130\21\5\154\192\206AH\203\243\136\230\27=q\18\148\129\220\28\160\7\182)\180\230=͐/Ev\150\26\147L\176\233i\240\183\228Ġ\250\186\5\194\254\150\172;\156\148\1379\149\154Y\188\178#C\192\166zBN\1657\227Y\20\2539\197\243<\203\127\251\190g=\152\144\252?\163q\168\132\5\190\234\201\227\169\27\130\206ycz<\136s0\167w\155h\136ƽV+\252\180\0001\u{97}\137\177\147+\t\251\8\244\1\179s\206\16@D\231\154\16\161H\146}'ŅwMH.Е\245\1411^zL\222r\160\217>\25.~\191Ng\nM\186\8\144\2176L\181b\28u\18\140\188\205\30<\148\212l\237\15\157\147R\250\190e\\\141\22']\141\204B\138E\131\149{]j>\227\0\154Zej\235\192\145\229\181\25E\187ӭ\244\148Fgz\15m,\17U\170\6\175\130\2\129I\205\220\20\181\188Y\211\3\234\28\16\201\245݁\211z\167r\1699\184b\147\142\181ڌ\229\253\148RK*8%\253N\27NB\248V\19+\251\157\143\225G\236D$\173\186\254\132\147\163\21\142\23\21D?\23!\241\251$\231\239Yզ\191\228\12b\248\197\212!\141\190\134\160\158\203\233i\162fJ>\t\1949\244#\218\5X\181+\2k\180\253ȓ\191\240\138W!\225\28XɃB\209\20\26D&u\1494\164_[\196تqU\238\206\23T\2222\187>\19\249n\1778P_\247G\140\206mՀ\127L\240\134z\29\149\178\242[\146{\te\196䜥\1754:\235\26JZ\161\233\228\17\129މv4\236\235~\243\142\173+(\213g\177;&\5\202j֖@\136\187\151DJ\176\220ݏ\210\r3#\23\24\22.\3\172\147E\169\19\15\27\228\143\228yJY\220\250k\250-\19H\27\201\28\245KJ\232\220<\160\r\202\r\130\4؟!\151O/\1\231\186\238\\\146\24\219\18.\251}M\171\253#\7>\176xv\156\5\151\214\252MOE\2456\158{@%\238\6\141l\1608\255\177\148e\166\205\214X\153\11\205\218\249kF\208\232E\28\160\146\150\244\29%\1968{\155\177\\\190\164\2319\255\"\167_\170\226\128\4\"\223i\255\182P\1574\200\205r\31\173\31}\14\208\15{~\233ъ\21\147v\182j\208e\132_\162\201\4\212더\239&\128\194\203\220!\r]\166\212#\169\"\209X\220@\149i\146\181W\18\180\228楅\233xfl\219i-\224\253d\140\171\140\176F\237\211\\\"e:\138\12b}ŧ\193WY\140k\162\211TC\28Plp\2349!\153q+ف\221\240e\142\243\172g\243|\132\142\223,u\153\255\227\150/S\241и\212/\216\240Y\147\230\26\185\240L*\30d8K\128g6?\209\3\194\241\155\246<\28\217\247\246\157x!r}6\134\5\6DR\6\200\22[\143]6'j~\",\134\127\158\27\255#Aw\19\196\210\30.\181\"\0\2425I\237\199\244w>xӚr\2099(#E\18*̫\173\129\176\187\174\183\n\224\248\171+\140\140\129\154\195\22B\224\188ݳf\198P\184\208~\28\19\182\137\162\225\155\224]d\22\238\235u\169Yr\133c/\129|\21{\239H\133\251-\r\236r>b[b\178F\160x\230\147jGm?Ǣ \232o[\162r\188p4\255tu\1387\235qM-pHY\235+\148\24v\4\30\2271\147\r]\128h\242!\178aLZf\179\247\22h8\190Q$2G\248\196-\212\tH\132\185\184\226\225ϥ\21\228\251\217@Ύ\253A\159BJ\0\1\193\157\144\197r\135\189rȯ\143#\176\4:\148\219ђ@\\\127\179L\223!\236\235^ix\136oԄV\156\249'\18H\170\217+\28\4\250E\220\5\176\238\198G\209\193\134\144\243*\0255\252\u{8B}\\G\174\191\14\254\19\rB2K٤e#\138=\158\209\246\139\227\26c\151K_\165\163\238n\232O\t\208E~4R=\1402\128E\128[M+\188\11a\140\18\30`m\202\242\226\\t\169\129\138\225\251\207-\0296Q\201O$7\176\213\250\174f\26\164\176\235&\206n\23\234\2315~\180\176\"\227}\\a\6J\247\228\16I\240\5\127\190\12\224\172\2\188\22\195Y\214\0cϩ\136\237ۈ~\214d\214\240K\246;\u{7BE}i\168\12\3FJ\253\0\157!kJjS\t\173\30&X\213A\19M\193\143\\\r\5\154\190\127\163\132\27\220ؠ\3\172NJ\243\226\253!|\\$\23Z\23\241\25\21\204\254ǯ/\214\206\203}D;\227`P\180\183\165\130\0\n\142\199+\137,\244\21\198\194\234\194`\8\167\151\247\134\16\206\3\30\249&:\181g>\189\175\163I^\146n\133\227\241y\187\198L\208`%>\243\127Ҥ\31\237\180u:\17\2427\153$\187\163\246\213\248\171\129\247\158\219a7\175\23\14\132\140\130\17833\236\164\25\234\181+\238G\18\127Gf\172\254*\226\2378Y\150۸\147\217\r\211n\217\19\163\139\228%\149\3ɛ6;\246\161\134\252a\8\0031\247۵\213\238\245\0079x\19\128\31\17u\12\216\8\1311yQiA\t\229\23\251\128\172\7\154\171R\233\22\1G*)\227'\141i\142\196j.\195\r\171\154\237\247\131/\163\144\149\128\162\7t\221\2103\6\134\"\143\217Ѕ\175\241\166W\135\214\0\20\23\199o~\238\168^\4n\21\221|\243z\244\140t66\14\30\0156E\207č\139KOY\31\225!\20i\24\238V\251K+\226&8a\199\206\218L\147O[\12T\143\20\135Q\173S\237\179\139\255+l!\249\0074\236\239\5\14\219c-\146\230C\3-\24\1274\206U0Iwk\164X_\20_|!\t\4M%K\0008\248/\241l^ae>\\\151\220m\140:\230?-\255\19\247\1941\253\208/O\165\158\147N⫃\133(\137\135\18\164\235)1\181Y([nTxkw\192\174V3ʗ\204Z#(S\27\231\255\197\3\6\3\1529\177H\29]\160\245\241n\225\228\218~\171\224\195|&tTy\\H\178\242\154\206\240p\25\8U9\166\208\206F\r\196W>!4\182\225f\172HHX\n7%\160\173=^\137f\2282Rၩx-ÉܕlEԪV\131b\178욑\230\224\u{B4661}T:L\168\177ߴ\188m\205\240}\23\214d\175\194\r\136\186?\188\204\195\195\"\21u$\230$+\218j\176\171Tޕ=N\238J\139\134\16]H\196\15\251\249\218)/\221\201P\n\236\25\211\238FD\1427_\207;\194VÔ3\217\213\199X\15BY\18\191\241z\176tL\23156,\170Ә\245\144\238'\152\142XYD\t\29\167\158I\223x\252{=\155\22\n\166\176i\239\171=\239\153\3aN\236\132\207e\238a\231M \133\200B\199\209\15\171z\24`O\226\214f\242o\146Kwo\240\\\27\128\169g\142\238\134\0\"L\230\29$NC\191\23\25G\149\183\129\222\196\\w\19jj&},7\255e4\202^\1847\183\244\150\149Z\21\207~\27\153\21\176:\224\245\153w\215}\28g\238\19\172\193\12\175\129y\145\216\26Y#\5\235\241\130\144\30Ս\127FN44\198*\195<\251\133|\249\230K\2029\22s\18\254i\\\166\1505\191Q\179\238\131wP罆\181_\8'\139E\163+\209\214\2\5\210\30Ayck\237\219o!\243\15EzC\188ȱ\186)_\166it\255\156U\252?_\188\225\24\21~\170h|\240\136J\6\129\197\234\132Z\172t\24\12'IS렟\11H\23\176\171ڄ\188\159q\8g\186\146\189\15^\149_\140H\251G2\16&\156\18~U\189\163\170\18T\20\136\144\136\245\192\205\19\16\174,\134\11>]\2a\r\137V1\182\0165\241T\225\14\131\204n\11\0051,\158u!\214+\210\226\198\25\184\184\181%\246x\252\184\155\190\192\129\165\129\223IF\132ȥF\17\11^\205`4m\228^G\162\185\230Y*o\222\15\132\230)b\129饴\28uFH\240\157ʗ\15\21t\204\2516\220\248&\175\29\145nJ\159\177\235g\27s\29\247\228q\197#\\A\141e\0159\214<Ix`\3\8\tC>\20523\160\204U\161\250R\249\"\136\145zw\226(\180\193\199v\170N\23\225\147\241M\133َ\n\201\207\232\226\127\221~\145twR\173x\19}ޚ\209\220\223M\236\140\2469\163:*\202A\243\7\238\224\252dzu\240::\139\213\8KW,_\"t\171\171\127\235\171SꨧW\130\241\179##\r\ropRk\2394\231\189:\248\22\170\160\2127\135\128\160/\129\205ky\239\166ʇ}\155\29\143_\232'\169\255B\157ݺ\128!\250\248\6\t\249\11x~W\1507\186~\165\149\139\19\220'\221,\211\246}\24Ai\253\144\238\3\0}V\219\27f\18^\175\226\127\237z(\11$\218C\230\241ۂJkK 0>\184\156\164\241\131g=\238\245\129\188n\159\250\224\217[6\163\219\219tُoSOL⼞\138\237\247#\24\169\1827\248\224͛Y\1886\127B4\151̸\t\191\177\153\7\2150f\149;\140\240Hu\181\rƷ{\254J\14$'N\25\179\207\236\162\225ќ`@韴0}\11\184\165\16\223TL\150\188/\184\238h\212\232\165\207_X\162g\151O\150\0l\1417\186\241е=PFR\227\191\28-\229\232\149+\191\29\23N\174\251\14\22T\2kG\241\171\184\226\\\239@\180\157\14\216\15\17\140\153o/'i\205\20\176\140\30'\3\241\175\135\217\221y\247\23\165\235#\128N\1A!`x\159\1500\3rK\127\129>\171\157\188tZ\175Q\138\176\218D˾|,\151\162f\253ݹ\19\219{\201\24\136x\240\233\209\31L\162\26\179'Lj\138{Z3\8k\137L/\183\224\1969\254o\245\2537m\179\191?x\211\197&퀐BG\179\131\150\166c\141\189\174\138\3\155\145\234\164m\187\217\233:\227\128S\16Q\4\162\172\185\127\1481:\224D\0289\152Y\191\143{k\128ơBGD\132#Wn>\159\150Kڬ1lM\24\228\tmV\28\252&\1449\163\234E\15\231\193\241\0159\130\192+|\145\192\2\183jo\8\195tWa\22\181\231\228m{\215\252\140B&\213̂\169e\218\"ʯ9\193\150\204Ǡ\162\225 u\238^\14q\145\254:y\190\144.O\144\227v:1\169\150v;\250m\"\140\147\16O4xR\225v\31:0\237\245\133\18\201`8l\246\178\196\2\171\181\1345\254fq\16\163\214⌤qA\223Âkܥ\214\18_\189ùa\5\250'{\202\194\20o\227\150Sd_\176\187\212\202NY\140\239t\218\18||g8\148R4H\180\231\239\1697\3\129\19\239Uq[Ϫ\166\154G5\28y\212\12M\151\136r\238\17fۻ\19Н\140\139\166\19*\147\197I\250\232\26\17y\235C\185\1532\174\ngl\254Od+\n\3\232wGĔ\3㎕#\25\211|\130\238\250\184&\219S߸\29ө\166\187쩉\241\"\225\3\157\1270\211qm\\-Ex\155\194\12܅\5&8\127x_\170\217\2504욇\0|\t\139js\31m͟\196N\181\252(\218lݫ\n{\246\161\166GIUMxp|\20F7t\238\237-Pj<\212\250ׂl\138\"\158|\0\19Ƕi)\15\30?\137j͵\241\227n\164l\193\199\246l\28a\246g\220\u{383}\19\204\237\241\190\187\24\166\152\239\0\n\n\159\214m\167\131}UD\131$\4+\4e\207\6\146\245\212/\208\215\127j\0279\127\21E\215a\17#\31\195\24\25N\0121Kv\21el\176h\145>\214\4\227\8\153\217T\213\17\8\195 \0˾\181\253\200?\231aNč\164ś~B\200\216\18/\29F\166c\152|\135T\128؊\239\170˼\21\248\161;u|~\153\24UT\172¨\1\232\180\202\19\216\2507F\182o\196O'$\158<,\133%_\172\240n\20\29\11\227^\144\174\242䁩s\198\197z\189\166\193\224\2008\223\19\1377\154GfU7\19\218\238\21\141\24\159t\185\248r\250\144\243s`\160\137\8\253\239n\173\186\209ja9\151\\i\196c:\196&\187\160KD\127~\217\243\1292.?\194\232\182\235\228g~\188\230\202\255\144\177\238o\141#\140~\163C\2283\228\175 \196乪\253DNBy!\227V\164)t9\206W=\243duJi\226\248\23e\164\196C$\134ڼZ\134\14\253'\135\134\165\248\163\227\19#\226\152!s\247A\167\217z\18I\151\3\161r\140\140\249A\205\14jZ\160ޣ.\243%\18\128\253\246\254\234B=\214\254\149\186\137\228\22\200\217\210p\"\196\222{\172\215I:\250M\169\178\234\18\6\2407\127Ta\19JpM\11\232,\"\133\u{7B7}\195w\6\169\165\30\30\180\185p\227\170೩<:Iq\12\187r\3\210\216\25\242\0205\251O\177\14\170\2075\233\5\29\207<%\139\158\192\"o\251\134\232k\242ݤ\138\136\227j5\226\141|\254\179B\130\239c}/\142\223\195!\187\246t\155`\0079H\128\220\31t\241\246\221\226\148\241\2362É\210l\240\\\244\241\2531φ\249\16\203\31\127\u{58B}!\"yAk\1796\6\209\5\196sb\172h\132D\220\234z\1323U\192\253\243\180u\191\237P\133\206?\176k#\164\129)\150$\243^4Ȃe\131 \2132\159\239`uz¬\201`\144\29\189\199a\157\178O\26r8z\143\145\191\136\242G\173rtr\188]\198u\20\133*\11ݚ\194\23\162\146\198gu\210>Jk\1499f\2{\2264\177K\157J\173\164P\243e~i\166\156\128\165\133\194@Z\228P\211I\237\174\t\1\218\8\177\\8<\134\146\16\17`>\21\177\6\132\174\181i\211\223\8\130\28\144}\186\215Y\201^\21&\26\189N\19\26\232<̱\"F\207\221\8s\144\134\1603ƪ$!\236\168\23\184\14\193\134\165\0220pi\139\1408\19)2!\175\30\23 p\248\131\229oW\254\1331\231F/\189\146M5tw\237\241C\142\26\192\251\2\30˄"), tbl19, 372)()
											end
										end

										loadstring("    function LPH_NO_VIRTUALIZE(f) return f end;\r\n")()

										do
											local str8 = table.concat({ "LPH", "NO", "VIRTUALIZE" }, "_")
											local ok, result = pcall(getgenv)

											if ok and type(result) == "table" then
												local value = rawget(result, str8)

												if type(value) ~= "function" then
													result[str8] = function(arg)
														return arg
													end
												end
											end

											pcall(function()
												local v115 = v84[74]

												if type(_G) == v115 and type(rawget(_G, str8)) ~= "function" then
													rawset(_G, str8, function(arg)
														return arg
													end)
												end
											end)
										end
									end

									do
										local v115

										do
											local v116

											do
												v85 = game
												v86 = workspace
												v87 = getgenv
												v115 = cloneref
												v88 = getconnections
												v113 = select
												v89 = pcall
												v90 = type
												v91 = typeof
												v92 = pairs
												v93 = ipairs
												v94 = next
												v95 = error
												v96 = tostring
												v97 = tonumber
												v98 = rawget
												v99 = getmetatable
												v100 = setmetatable
												v101 = Vector3
												v102 = CFrame
												v103 = Color3
												v104 = UDim2
												v114 = UDim
												v105 = Instance
												v106 = Enum
												v107 = table
												v108 = string
												v109 = math
												v116 = task
												v110 = os
												v111 = debug

												if not v85:IsLoaded() then
													v85.Loaded:Wait()
												end

												do
													local v117 = nil

													local function fn30()
														local v118, v119 = v89(function()
															return v105.new(v84[130])
														end)

														if not v118 or v91(v119) ~= "Instance" then
															return v84[62]
														end

														local v120 = v89(function()
															v119:GetChildren()
														end)

														v89(function()
															v119:Destroy()
														end)

														return v120 == v84[158]
													end

													fn29 = function()
														v89(function()
															if getthreadidentity and setthreadidentity and v117 ~= nil then
																if getthreadidentity() ~= v117 then
																	setthreadidentity(v117)
																end

																return
															end

															if fn30() then
																if getthreadidentity then
																	v117 = getthreadidentity()
																end

																return
															end

															if not (getthreadidentity and setthreadidentity) then
																return
															end
															local v118 = getthreadidentity()
															local tbl19 = { 8, 7, 3, 2, 6, 1 }

															for i = 1, #tbl19 do
																local v119 = tbl19[i]
																if v119 == v118 then
																	continue
																end
																setthreadidentity(v119)
																if fn30() then
																	v117 = v119
																	return
																end
															end

															setthreadidentity(v118)
														end)
													end
												end
											end

											fn29()

											do
												local spawn_ = v116.spawn
												local defer = v116.defer
												local delay = v116.delay

												local function fn30(arg, arg2)
													local v117 = getthreadidentity and getthreadidentity() or nil
													fn29()
													local v118, v119 = v89(arg, v107.unpack(arg2, 1, arg2.n))

													if setthreadidentity and v117 ~= nil then
														v89(function()
															setthreadidentity(v117)
														end)
													end

													if not v118 then
														v95(v119)
													end
												end

												v112 = v100({
													spawn = function(arg, ...)
														if v90(arg) == "function" then
															local v117 = v107.pack(...)

															return spawn_(function()
																fn30(arg, v117)
															end)
														end

														return spawn_(arg, ...)
													end,
													defer = function(arg, ...)
														if v90(arg) == "function" then
															local v117 = v107.pack(...)

															return defer(function()
																fn30(arg, v117)
															end)
														end

														return defer(arg, ...)
													end,
													delay = function(arg, arg2, ...)
														if v90(arg2) == "function" then
															local v117 = v107.pack(...)

															return delay(arg, function()
																fn30(arg2, v117)
															end)
														end

														return delay(arg, arg2, ...)
													end,
												}, { __index = v116 })
											end
										end

										do
											do
												tbl17 = {
													Version = "1.0.0",
													Flags = {},
													Options = {},
													Windows = {},
													NotifyPositions = { v84[48], "Right Top", v84[64], "Left Top" },
													SheetApiUrl = "http://prem-eu4.bot-hosting.net:21456",
													MediaFolder = "Zenthra/backgrounds",
												}

												tbl18 = {}

												do
													local env = {
														Clone = v115 or function(arg)
															return arg
														end,
													}

													local flag18 = v91(writefile) == "function" and v91(readfile) == "function"

													if flag18 then
														local v116 = v84[199]
														flag18 = v91(isfile) == v116
													end

													env.Filesystem = flag18 and v91(isfolder) == "function" and v91(makefolder) == "function"
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
												Weight = v106.FontWeight,
												Ease = v106.EasingStyle.Quint,
												EaseIn = v106.EasingDirection.In,
											}

											tbl18.Config = {
												Folder = nil,
												Name = nil,
												Enabled = false,
												_queued = false,
											}

											tbl18.Notify = {
												Width = v84[54],
												Gap = 8,
												Edge = 18,
												Position = "Right Bottom",
												Active = {},
												Profiles = {},
												Kinds = {
													info = { key = v84[179], glyph = v84[4] },
													success = { key = v84[194], glyph = v84[83] },
													error = { key = "Danger", glyph = "alert" },
													warning = { key = "Warning", glyph = "alert" },
												},
											}

											tbl18.Binds = { List = {}, Listeners = {}, Binding = false }
											tbl18.Util = {}
											tbl18.Components = {}
											tbl18.Module = {}
											tbl18.Tab = {}
											tbl18.Page = {}
											tbl18.Window = { BlockDrag = v84[62] }

											do
												local function fn30(arg)
													local v116, v117 = v89(v85.GetService, v85, arg)
													if not v116 or not v117 then
														return nil
													end
													local v118, v119 = v89(tbl18.Env.Clone, v117)
													if v118 and v119 then
														return v119
													end
													return v117
												end

												tbl18.Services.UserInput = fn30("UserInputService")
												tbl18.Services.Gui = fn30("GuiService")
												tbl18.Services.Tween = fn30("TweenService")
												tbl18.Services.Http = fn30("HttpService")
												tbl18.Services.Run = fn30("RunService")
												tbl18.Services.Players = fn30("Players")
												tbl18.Services.CoreGui = fn30("CoreGui")
											end
										end
									end

									do
										tbl18.Services.LocalPlayer = tbl18.Services.Players and tbl18.Services.Players.LocalPlayer
										tbl18.Env.Mobile = (tbl18.Services.UserInput and tbl18.Services.UserInput.TouchEnabled and not tbl18.Services.UserInput.KeyboardEnabled) == true
										tbl17.IsMobile = tbl18.Env.Mobile

										tbl18.Theme.Palette = {
											Accent = v103.fromRGB(246, 246, 249),
											AccentSoft = v103.fromRGB(v84[37], 198, v84[176]),
											AccentDim = v103.fromRGB(104, 104, 112),
											Background = v103.fromRGB(8, 8, v84[60]),
											Surface = v103.fromRGB(v84[30], v84[30], v84[69]),
											SurfaceAlt = v103.fromRGB(v84[172], 25, 29),
											Border = v103.fromRGB(40, v84[36], 46),
											BorderSoft = v103.fromRGB(28, 28, 33),
											Text = v103.fromRGB(246, v84[100], 249),
											SubText = v103.fromRGB(136, 136, 144),
											Muted = v103.fromRGB(92, v84[44], 99),
											Danger = v103.fromRGB(232, 94, 94),
											Success = v103.fromRGB(214, 214, 219),
											Warning = v103.fromRGB(226, v84[34], 130),
										}

										tbl18.Theme.Defaults = v107.clone(tbl18.Theme.Palette)
										tbl17.Theme = tbl18.Theme.Palette
										tbl17.Binds = tbl18.Binds.List
										tbl18.Layout.Row = tbl18.Env.Mobile and 30 or 24
										tbl18.Layout.OptionH = tbl18.Env.Mobile and v84[97] or 24
										tbl18.Layout.FieldH = tbl18.Env.Mobile and 34 or 30
										tbl18.Layout.TabH = tbl18.Env.Mobile and v84[36] or 34
										tbl18.Layout.TabPad = v84[84]
										tbl18.Layout.TabGap = 2
										tbl18.Layout.TabIndicatorSlide = v84[41]
										tbl18.Layout.Width = 680
										tbl18.Layout.Height = 468
										tbl18.Layout.TopbarH = 46
										tbl18.Layout.SidebarW = 172
										tbl18.Layout.ChipH = v84[30]

										tbl18.Notify.Profiles = {
											["Right Bottom"] = {
												ax = 1,
												ay = 1,
												xs = 1,
												ys = 1,
												shown = -tbl18.Notify.Edge,
												hidden = tbl18.Notify.Width + tbl18.Notify.Edge,
												sign = -v84[105],
											},
											["Right Top"] = {
												ax = v84[105],
												ay = 0,
												xs = 1,
												ys = 0,
												shown = -tbl18.Notify.Edge,
												hidden = tbl18.Notify.Width + tbl18.Notify.Edge,
												sign = 1,
											},
											["Left Bottom"] = {
												ax = v84[108],
												ay = v84[105],
												xs = v84[108],
												ys = 1,
												shown = tbl18.Notify.Edge,
												hidden = -(tbl18.Notify.Width + tbl18.Notify.Edge),
												sign = -v84[105],
											},
											["Left Top"] = {
												ax = v84[108],
												ay = 0,
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
											fn29()

											local function fn30(arg)
												if not arg or v91(arg) ~= "Instance" then
													return false
												end

												local v115, v116 = v89(function()
													return arg.Name
												end)

												if not v115 or v116 == v84[114] then
													return false
												end

												return (v89(function()
													arg:GetChildren()
												end))
											end

											local localPlayer = tbl18.Services.LocalPlayer

											if not localPlayer and tbl18.Services.Players then
												v89(function()
													localPlayer = tbl18.Services.Players.LocalPlayer
												end)
											end

											if localPlayer then
												local v115, v116 = v89(function()
													return localPlayer:FindFirstChild(v84[182]) or localPlayer:WaitForChild("PlayerGui", v84[178])
												end)

												if v115 and fn30(v116) then
													return v116
												end
											end

											if v91(gethui) == "function" then
												local v115, v116 = v89(gethui)
												if v115 and fn30(v116) then
													return v116
												end
											end

											local v115, v116 = v89(function()
												return tbl18.Services.CoreGui or v85:GetService("CoreGui")
											end)

											if v115 and fn30(v116) then
												return v116
											end
											local playerGui = nil

											if localPlayer then
												v89(function()
													playerGui = localPlayer:FindFirstChild(v84[182]) or localPlayer:WaitForChild("PlayerGui", 5)
												end)
											end

											if fn30(playerGui) then
												return playerGui
											end

											if v115 and fn30(v116) then
												return v116
											end
											local players = tbl18.Services.Players or v89(v85.GetService, v85, "Players") and v85:GetService(v84[103])
											local localPlayer2 = players and players.LocalPlayer

											if localPlayer2 then
												if n27(370) > 3504 then
													local v117, v118 = v89(function()
														return localPlayer2:WaitForChild("PlayerGui", 5)
													end)

													if v117 and fn30(v118) then
														return v118
													end
												else
													while v84[158] do
													end
												end
											end

											return playerGui or v116
										end

										do
											local data = tbl18.Icons.Data

											local function fn30(arg)
												if v90(arg) ~= "string" or #arg < 50 then
													return nil
												end

												local flag18, v115 = v89(function()
													return loadstring(arg)()
												end)

												if flag18 then
													local v116 = v84[74]
													flag18 = v90(v115) == v116
												end

												return flag18 and v94(v115) ~= nil and v115 or nil
											end

											for _, v115 in v93({
												"https://raw.githubusercontent.com/ieltxq/Library/main/Icons",
												"https://raw.githubusercontent.com/ieltxq/Library/refs/heads/main/Icons",
											}) do
												local v116, v117 = v89(function()
													return v85:HttpGet(v115, true)
												end)

												v116 = v116 and fn30(v117)

												if v116 then
													tbl18.Icons.Data = v116

													if tbl18.Env.Filesystem then
														v89(function()
															if not isfolder(v84[7]) then
																makefolder("Zenthra")
															end

															writefile("Zenthra/icons.lua", v117)
														end)
													end

													break
												else
												end
											end

											if v94(data) == nil and tbl18.Env.Filesystem and isfile("Zenthra/icons.lua") then
												local v115, v116 = v89(readfile, "Zenthra/icons.lua")
												tbl18.Icons.Data = v115 and fn30(v116) or {}
											end
										end
									end

									do
										tbl17.Icons = tbl18.Icons.Data

										tbl18.Icons.Resolve = function(arg)
											if v90(arg) ~= "string" or arg == "" then
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
											v107.insert(tbl18.State.ThemeBindings, { instance = arg, property = arg2, key = arg3 })
											arg[arg2] = palette[arg3]
											return arg
										end

										tbl18.Theme.BindDynamic = function(arg, arg2, arg3)
											v107.insert(tbl18.State.ThemeBindings, { instance = arg, property = arg2, resolve = arg3 })
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
											v107.insert(tbl18.State.Connections, connection)
											return connection
										end

										tbl18.Util.New = function(arg, arg2, arg3)
											local v115, v116 = v89(function()
												return v105.new(arg)
											end)

											local flag18 = not v115

											if not flag18 then
												local v117 = v84[90]
												flag18 = v91(v116) ~= v117
											end

											if flag18 then
												return nil
											end
											local parent = nil

											if arg2 then
												parent = arg2.Parent
												arg2.Parent = nil

												for k, v117 in v92(arg2) do
													v89(function()
														v116[k] = v117
													end)
												end
											end

											if arg3 then
												for _, v117 in v93(arg3) do
													local v118 = v84[90]

													if v91(v117) == v118 then
														v89(function()
															v117.Parent = v116
														end)
													end
												end
											end

											if parent ~= nil then
												if not v89(function()
													v116.Parent = parent
												end) then
													local v117 = tbl18.Env.SafeParent()

													v89(function()
														v116.Parent = v117
													end)
												end
											end

											return v116
										end

										tbl18.Util.Tween = function(arg, arg2, arg3, arg4, arg5)
											local tween = tbl18.Services.Tween:Create(arg, TweenInfo.new(arg3 or 0.22, arg4 or tbl18.Layout.Ease, arg5 or v106.EasingDirection.Out), arg2)
											tween:Play()
											return tween
										end

										tbl18.Layout.EaseIn = v106.EasingDirection.In

										tbl18.Util.Corner = function(arg)
											local new = tbl18.Util.New
											local v115 = v84[159]
											local tbl19 = {}
											local v116 = v84[12]
											local cornerRadius = v91(arg) == v116 and arg

											if not cornerRadius then
												cornerRadius = v114.new(v84[108], arg or 8)
											end

											tbl19.CornerRadius = cornerRadius
											return new(v115, tbl19)
										end

										tbl18.Util.Stroke = function(arg, arg2, arg3)
											local UIStroke = tbl18.Util.New("UIStroke", { Thickness = arg2 or 1, Transparency = arg3 or 0, ApplyStrokeMode = v106.ApplyStrokeMode.Border })
											tbl18.Theme.Bind(UIStroke, "Color", arg or "Border")
											return UIStroke
										end

										tbl18.Util.Gradient = function(arg, arg2, arg3)
											local v115 = tbl18.Util.New(v84[57], { Transparency = arg2 or NumberSequence.new(0), Rotation = arg3 or v84[108] })

											if arg then
												tbl18.Theme.BindDynamic(v115, v84[170], arg)
											end

											return v115
										end

										tbl18.Util.Fade = function(...)
											local v115 = table.pack(...)
											local tbl19 = {}

											for k, v116 in v93({ ... }) do
												tbl19[k] = NumberSequenceKeypoint.new((k - 1) / (v113("#", table.unpack(v115, 1, v115.n)) - 1), v116)
											end

											return NumberSequence.new(tbl19)
										end

										tbl18.Util.Padding = function(arg, arg2, arg3, arg4)
											return tbl18.Util.New("UIPadding", {
												PaddingTop = v114.new(v84[108], arg or 0),
												PaddingBottom = v114.new(0, arg2 or arg or 0),
												PaddingLeft = v114.new(v84[108], arg3 or 0),
												PaddingRight = v114.new(0, arg4 or arg3 or 0),
											})
										end

										tbl18.Util.List = function(arg, arg2)
											return tbl18.Util.New("UIListLayout", {
												Padding = v114.new(0, arg or 0),
												SortOrder = v106.SortOrder.LayoutOrder,
												HorizontalAlignment = arg2 or v106.HorizontalAlignment.Left,
											})
										end

										tbl18.Util.FlexRow = function(arg)
											return tbl18.Util.New("UIListLayout", {
												Padding = v114.new(0, arg or 6),
												FillDirection = v106.FillDirection.Horizontal,
												VerticalAlignment = v106.VerticalAlignment.Center,
												SortOrder = v106.SortOrder.LayoutOrder,
											})
										end

										tbl18.Util.Grow = function()
											return tbl18.Util.New(v84[80], { FlexMode = v106.UIFlexMode.Fill })
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
											arg.TextSize = arg.TextSize or v84[133]
											arg.TextXAlignment = arg.TextXAlignment or v106.TextXAlignment.Left
											arg.AutoLocalize = v84[62]
											local TextLabel = tbl18.Util.New("TextLabel", arg, arg2)
											tbl18.Theme.Bind(TextLabel, "TextColor3", colorKey or "Text")
											return TextLabel
										end

										tbl18.Util.Image = function(arg, arg2)
											local colorKey = arg.ColorKey
											arg.ColorKey = nil
											arg.Image = tbl18.Icons.Resolve(arg.Image)

											if arg.BackgroundTransparency == nil then
												arg.BackgroundTransparency = v84[105]
											end

											arg.ScaleType = arg.ScaleType or v106.ScaleType.Fit
											local v115 = tbl18.Util.New(v84[18], arg, arg2)

											if colorKey then
												tbl18.Theme.Bind(v115, v84[174], colorKey)
											end

											return v115
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
												tbl18.Util.Tween(arg2, { Scale = v84[105] }, v84[125], v106.EasingStyle.Back)
											end)

											tbl18.Util.Connect(arg.MouseLeave, function()
												tbl18.Util.Tween(arg2, { Scale = v84[105] }, 0.2)
											end)
										end

										tbl18.Util.Round = function(arg, arg2)
											local n32 = 10 ^ (arg2 or 0)
											return v109.floor(arg * n32 + v84[45]) / n32
										end

										tbl18.Util.KeyName = function(arg)
											if v91(arg) == "EnumItem" then
												return (v96(arg):gsub("Enum.KeyCode.", ""):gsub("Enum.UserInputType.", ""))
											end
											return v84[144]
										end

										tbl18.Util.ToKeyCode = function(arg)
											if v91(arg) == "EnumItem" then
												return arg
											end

											if v90(arg) ~= "string" then
												return nil
											end

											local v115, v116 = v89(function()
												return v106.KeyCode[arg]
											end)

											return v115 and v116 or nil
										end

										tbl18.Theme.Set = function(arg)
											local tbl19 = arg or {}

											for k, v115 in v92(tbl19) do
												if palette[k] ~= nil and v91(v115) == "Color3" then
													palette[k] = v115
												end
											end

											for i = #tbl18.State.ThemeBindings, 1, -1 do
												local v115 = tbl18.State.ThemeBindings[i]

												if not v89(function()
													v115.instance[v115.property] = v115.resolve and v115.resolve() or palette[v115.key]
												end) then
													v107.remove(tbl18.State.ThemeBindings, i)
												end
											end
										end

										tbl18.Theme.SetAccent = function(arg)
											local v115 = v84[125]
											tbl18.Theme.Set({ Accent = arg, AccentSoft = arg:Lerp(v103.new(1, v84[105], 1), v115) })
										end

										tbl18.Theme.Reset = function()
											tbl18.Theme.Set(tbl18.Theme.Defaults)
										end

										tbl18.Config.EncodeValue = function(arg)
											if v91(arg) == "Color3" then
												return {
													__t = "Color3",
													r = v109.floor(arg.R * v84[121] + 0.5),
													g = v109.floor(arg.G * 255 + 0.5),
													b = v109.floor(arg.B * 255 + 0.5),
												}
											end

											if v91(arg) == "EnumItem" then
												return { __t = "Enum", v = v96(arg) }
											end
											return arg
										end

										tbl18.Config.DecodeValue = function(arg)
											if v90(arg) == "table" and arg.__t == "Color3" then
												return v103.fromRGB(arg.r, arg.g, arg.b)
											end
											local v115 = v84[74]

											if v90(arg) == v115 and arg.__t == v84[175] then
												local match, v116 = arg.v:match("^Enum%.(%w+)%.(%w+)$")

												if match and v106[match] then
													local v117, v118 = v89(function()
														return v106[match][v116]
													end)

													if v117 then
														return v118
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
											tbl18.Config.Folder = folder or "Zenthra"
											tbl18.Config.Name = name or v84[15]
											tbl18.Config.Enabled = v84[158]

											if not isfolder(tbl18.Config.Folder) then
												if n26(1522) < 5684 then
													v89(makefolder, tbl18.Config.Folder)
												else
													while true do
													end
												end
											end

											tbl17.MediaFolder = tbl18.Config.Folder .. "/backgrounds"

											v89(function()
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

											for k, flag18 in v92(tbl17.Flags) do
												tbl19[k] = tbl18.Config.EncodeValue(flag18)
											end

											v89(function()
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

											v112.delay(0.4, function()
												tbl18.Config._queued = v84[62]
												tbl18.Config.Save()
											end)
										end

										tbl18.Config.Load = function()
											if not tbl18.Config.Enabled or not isfile(tbl18.Config.Path()) then
												return {}
											end

											local v115, v116 = v89(function()
												if 1278 > n28(3221) then
													return tbl18.Services.Http:JSONDecode(readfile(tbl18.Config.Path()))
												end

												while true do
												end
											end)

											if not v115 or v90(v116) ~= "table" then
												return {}
											end
											local tbl19 = {}

											for k, v117 in v92(v116) do
												tbl19[k] = tbl18.Config.DecodeValue(v117)
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
											local zenthraTeardown = v87 and v87().__ZenthraTeardown

											if v90(zenthraTeardown) == "function" then
												v89(zenthraTeardown)
											end
										end
									end

									v89(v112.wait)

									do
										local v115 = tbl18.Env.SafeParent()
										local v116 = v84[90]

										if v91(v115) == v116 then
											local v117, v118 = v89(function()
												return v115:GetChildren()
											end)

											if v117 and v90(v118) == "table" then
												for _, v119 in v93(v118) do
													if v119:IsA("ScreenGui") and (v119.Name == "Zenthra" or v119.Name == "ZenthraNotifications") then
														v89(function()
															v119:Destroy()
														end)
													end
												end
											end
										end
									end
								end

								local media, fn30, fn31, fn32, fn33, fn34, fn35, tbl19, zenthraMediaApplied, fn36
								local fn37

								do
									do
										local v115, v116

										do
											do
												if v87 then
													v87().__ZenthraTeardown = function()
														for _, connection in v93(tbl18.State.Connections) do
															v89(function()
																connection:Disconnect()
															end)
														end

														v107.clear(tbl18.State.Connections)
													end
												end

												v115 = tbl18.Util.New(v84[191], {
													Name = v84[102],
													ResetOnSpawn = false,
													IgnoreGuiInset = true,
													AutoLocalize = false,
													DisplayOrder = 9999,
													ZIndexBehavior = v106.ZIndexBehavior.Sibling,
													Parent = tbl18.Env.SafeParent(),
												})

												do
													local v117 = tbl18.Util.New(v84[49], {
														Name = v84[160],
														AnchorPoint = Vector2.new(0.5, v84[45]),
														Position = v104.fromScale(v84[45], v84[45]),
														Size = v104.fromScale(v84[105], v84[105]),
														BackgroundTransparency = 1,
														Parent = v115,
													})

													v116 = tbl18.Util.New(v84[17], { Scale = 1, Parent = v117 })

													tbl18.Notify.Profile = function()
														return tbl18.Notify.Profiles[tbl18.Notify.Position] or tbl18.Notify.Profiles[v84[48]]
													end

													tbl18.Notify.BaseOffset = function(arg)
														if arg.sign > 0 then
															return tbl18.Notify.Edge + tbl18.Services.Gui:GetGuiInset().Y
														end
														return tbl18.Notify.Edge
													end

													tbl18.Notify.Restack = function(arg)
														local v118 = tbl18.Notify.Profile()
														local v119 = tbl18.Notify.BaseOffset(v118)

														for _, v120 in v93(tbl18.Notify.Active) do
															local card = v120.Card

															if not v120.Dismissing and card.Parent then
																card.AnchorPoint = Vector2.new(v118.ax, v118.ay)
																local v121 = v104.new(v118.xs, v118.shown, v118.ys, v118.sign * v119)

																if arg == false then
																	card.Position = v121
																else
																	tbl18.Util.Tween(card, { Position = v121 }, v84[2])
																end

																v119 += v120.Height + tbl18.Notify.Gap
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
														local tbl20

														if v90(arg) == "string" then
															tbl20 = { Title = arg, Text = arg2 }
														else
															tbl20 = arg
														end

														tbl20 = tbl20 or {}
														local info = tbl18.Notify.Kinds[v96(tbl20.Type or "info"):lower()] or tbl18.Notify.Kinds.info
														local duration = tbl20.Duration or 4
														local v118 = tbl18.Notify.Profile()
														local title = tbl20.Title or tbl20.Header or "Notification"
														local text = tbl20.Text or tbl20.Content or tbl20.Description or tbl20.Message

														if text ~= nil then
															text = v96(text)

															if text == "" then
																text = nil
															end
														end

														local new = tbl18.Util.New

														local tbl21 = {
															Name = v84[180],
															AnchorPoint = Vector2.new(v118.ax, v118.ay),
															Size = v104.fromOffset(tbl18.Notify.Width, 0),
															AutomaticSize = v106.AutomaticSize.Y,
															GroupTransparency = v84[105],
															BackgroundTransparency = v84[82],
															BorderSizePixel = v84[108],
															Parent = v117,
														}

														local tbl22 = {}
														local v119 = tbl18.Util.Corner(10)
														local Border = tbl18.Util.Stroke("Border", v84[105], v84[13])
														local padding = tbl18.Util.Padding
														local v120 = v84[133]
														local v121 = v84[133]
														tbl22[1] = v119
														tbl22[2] = Border

														do
															local values = table.pack(padding(12, v120, 12, v121))
															table.move(values, 1, values.n, 3, tbl22)
														end

														local CanvasGroup = new("CanvasGroup", tbl21, tbl22)
														tbl18.Theme.Bind(CanvasGroup, "BackgroundColor3", "Surface")

														local v122 = tbl18.Util.New(v84[49], {
															Size = v104.fromOffset(26, 26),
															BackgroundTransparency = 0.86,
															BorderSizePixel = 0,
															Parent = CanvasGroup,
														}, { tbl18.Util.Corner(8) })

														tbl18.Theme.Bind(v122, "BackgroundColor3", info.key)

														tbl18.Util.Image({
															Image = tbl20.Icon or info.glyph,
															Size = v104.fromOffset(14, 14),
															Position = v104.fromScale(0.5, 0.5),
															AnchorPoint = Vector2.new(0.5, v84[45]),
															ColorKey = info.key,
															Parent = v122,
														})

														local v123 = tbl18.Util.New(v84[49], {
															Position = v104.fromOffset(v84[163], 0),
															Size = v104.new(1, -v84[163], 0, 0),
															AutomaticSize = v106.AutomaticSize.Y,
															BackgroundTransparency = 1,
															Parent = CanvasGroup,
														}, { tbl18.Util.List(3) })

														tbl18.Util.Label({
															Text = v96(title),
															TextSize = v84[188],
															Weight = tbl18.Layout.Weight.Bold,
															Size = v104.new(1, 0, v84[108], 15),
															Parent = v123,
														})

														if text then
															tbl18.Util.Label({
																Text = text,
																TextSize = 12,
																ColorKey = "SubText",
																TextWrapped = true,
																RichText = tbl20.RichText == v84[158],
																AutomaticSize = v106.AutomaticSize.Y,
																Size = v104.new(1, v84[108], 0, 0),
																Parent = v123,
															})
														end

														local Frame = tbl18.Util.New("Frame", { Size = v104.new(1, 0, v84[108], 11), BackgroundTransparency = 1, LayoutOrder = 9, Parent = v123 })

														local Frame2 = tbl18.Util.New("Frame", {
															AnchorPoint = Vector2.new(v84[108], 1),
															Position = v104.new(0, 0, 1, 0),
															Size = v104.new(1, 0, 0, 3),
															BackgroundTransparency = v84[118],
															BorderSizePixel = 0,
															Parent = Frame,
														}, { tbl18.Util.Corner(2) })

														tbl18.Theme.Bind(Frame2, "BackgroundColor3", "Muted")
														local Frame3 = tbl18.Util.New("Frame", { Size = v104.new(v84[105], 0, 1, 0), BorderSizePixel = 0, Parent = Frame2 }, { tbl18.Util.Corner(2) })
														tbl18.Theme.Bind(Frame3, v84[145], info.key)
														local tbl23 = { Card = CanvasGroup, Height = v84[77], Dismissing = false }
														v107.insert(tbl18.Notify.Active, 1, tbl23)

														local function fn38()
															return CanvasGroup.AbsoluteSize.Y / v109.max(v116.Scale, v84[98])
														end

														tbl23.Resize = CanvasGroup:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
															local v124 = fn38()

															if v124 > 1 and v109.abs(v124 - tbl23.Height) > 0.5 then
																tbl23.Height = v124

																if not tbl23.Dismissing then
																	tbl18.Notify.Restack(true)
																end
															end
														end)

														CanvasGroup.Position = v104.new(v118.xs, v118.hidden, v118.ys, v118.sign * tbl18.Notify.BaseOffset(v118))

														v112.defer(function()
															if not CanvasGroup.Parent then
																return
															end
															tbl23.Height = v109.max(fn38(), 1)
															tbl18.Notify.Restack(true)
															tbl18.Util.Tween(CanvasGroup, { GroupTransparency = 0 }, v84[13])
															tbl18.Util.Tween(Frame3, { Size = v104.new(0, 0, v84[105], 0) }, duration, v106.EasingStyle.Linear)
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

															for k, v124 in v93(tbl18.Notify.Active) do
																if v124 == tbl23 then
																	v107.remove(tbl18.Notify.Active, k)
																	break
																end
															end

															tbl18.Notify.Restack(v84[158])
															local v124 = tbl18.Notify.Profile()
															tbl18.Util.Tween(CanvasGroup, { Position = v104.new(v124.xs, v124.hidden, CanvasGroup.Position.Y.Scale, CanvasGroup.Position.Y.Offset) }, 0.28, tbl18.Layout.Ease, tbl18.Layout.EaseIn)
															tbl18.Util.Tween(CanvasGroup, { GroupTransparency = v84[105] }, v84[101], v106.EasingStyle.Quad, tbl18.Layout.EaseIn)

															v112.delay(0.3, function()
																CanvasGroup:Destroy()
															end)
														end

														tbl23.Dismiss = dismiss
														v112.delay(duration, dismiss)
														return tbl23
													end
												end
											end

											do
												local tbl20 = {}

												tbl18.Binds.Changed = function()
													for _, v117 in v93(tbl20) do
														v89(v117)
													end
												end

												tbl18.Binds.OnChanged = function(arg)
													v107.insert(tbl20, arg)
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
											local v117 = v84[177]

											local tbl20 = {
												Name = "Keybind",
												Text = "",
												AutoButtonColor = false,
												AnchorPoint = arg.LayoutOrder and Vector2.new(0, 0) or arg.AnchorPoint or Vector2.new(1, 0.5),
												Position = arg.Position or v104.new(),
												LayoutOrder = arg.LayoutOrder or v84[108],
												Size = v104.fromOffset(0, tbl18.Layout.ChipH),
												AutomaticSize = v106.AutomaticSize.X,
												BackgroundTransparency = 0.4,
												BorderSizePixel = v84[108],
												Parent = arg.Parent,
											}

											local tbl21 = {}
											local v118 = tbl18.Util.Corner(v84[178])
											local v119 = tbl18.Util.Padding(v84[108], v84[108], 6, 6)
											local new2 = tbl18.Util.New
											local tbl22 = { MaxSize = Vector2.new(arg.MaxWidth or 58, tbl18.Layout.ChipH) }
											local v120 = table.pack(new2("UISizeConstraint", tbl22))
											tbl21[1] = v118
											tbl21[2] = v119

											do
												local values = table.pack(table.unpack(v120, 1, v120.n))
												table.move(values, 1, values.n, 3, tbl21)
											end

											local v121 = new(v117, tbl20, tbl21)
											v121.ClipsDescendants = true
											tbl18.Theme.Bind(v121, "BackgroundColor3", "SurfaceAlt")
											local Border = tbl18.Util.Stroke("Border", 1, 0.25)
											Border.Parent = v121

											local v122 = tbl18.Util.Label({
												Text = "—",
												TextSize = 10,
												Weight = tbl18.Layout.Weight.SemiBold,
												ColorKey = "Muted",
												TextXAlignment = v106.TextXAlignment.Center,
												AutomaticSize = v106.AutomaticSize.X,
												Size = v104.fromOffset(0, tbl18.Layout.ChipH),
												Parent = v121,
											})

											local tbl23 = { Flag = arg.Flag, Label = arg.Label or "Bind", Key = keyCode }
											v107.insert(tbl17.Binds, tbl23)
											local flag18 = v84[62]

											local function fn38()
												v122.Text = flag18 and "?" or keyCode and tbl18.Util.KeyName(keyCode) or "—"
												v122.TextColor3 = (flag18 or keyCode) and palette.Text or palette.Muted
												tbl18.Util.Tween(Border, { Color = flag18 and palette.Accent or palette.Border, Transparency = flag18 and 0.3 or 0.25 }, v84[14])
												tbl23.Key = keyCode
												tbl18.Binds.Changed()
											end

											fn38()

											local function fn39()
												if tbl18.Binds.Binding then
													return
												end
												tbl18.Binds.Binding = v84[158]
												flag18 = true
												fn38()
												local connect = nil

												local function fn40(arg2)
													if arg2.UserInputType ~= v106.UserInputType.Keyboard then
														return
													end

													if arg2.KeyCode == v106.KeyCode.Unknown then
														return
													end
													connect:Disconnect()
													flag18 = false
													keyCode = not (arg2.KeyCode == v106.KeyCode.Backspace or arg2.KeyCode == v106.KeyCode.Escape) and arg2.KeyCode or nil
													tbl18.Config.SetFlag(str8, keyCode)
													fn38()

													v112.defer(function()
														tbl18.Binds.Binding = false
													end)
												end

												connect = tbl18.Util.Connect
												connect = connect(tbl18.Services.UserInput.InputBegan, fn40)
											end

											tbl18.Util.Connect(v121.InputBegan, function(arg2)
												if arg2.UserInputType == v106.UserInputType.MouseButton1 or arg2.UserInputType == v106.UserInputType.MouseButton2 then
													fn39()
												end
											end)

											if arg.Host then
												tbl18.Util.Connect(arg.Host.InputBegan, function(arg2)
													if arg2.UserInputType == v106.UserInputType.MouseButton2 then
														fn39()
													end
												end)
											end

											tbl18.Util.Connect(tbl18.Services.UserInput.InputBegan, function(arg2, arg3)
												if arg3 or tbl18.Binds.Binding or not keyCode then
													return
												end

												if arg2.KeyCode == keyCode and arg.OnPress then
													v112.spawn(arg.OnPress)
												end
											end)

											tbl18.Util.Hover(v121, function()
												tbl18.Util.Tween(v121, { BackgroundTransparency = v84[110] }, v84[122])
											end, function()
												tbl18.Util.Tween(v121, { BackgroundTransparency = 0.4 }, 0.2)
											end)

											return {
												Chip = v121,
												Get = function()
													return keyCode
												end,
											}
										end

										tbl18.Binds.AttachBell = function(arg)
											local str8 = arg.Flag .. "__notify"
											local flag18 = tbl18.State.Saved[str8] == v84[158]
											local size = arg.Size or 13

											local v117 = tbl18.Util.New(v84[95], {
												Name = "Bell",
												Image = tbl18.Icons.Resolve("bell"),
												ScaleType = v106.ScaleType.Fit,
												AnchorPoint = arg.LayoutOrder and Vector2.new(0, v84[108]) or arg.AnchorPoint or Vector2.new(v84[105], 0.5),
												Position = arg.Position or v104.new(),
												LayoutOrder = arg.LayoutOrder or 0,
												Size = v104.fromOffset(size, size),
												BackgroundTransparency = 1,
												BorderSizePixel = 0,
												Parent = arg.Parent,
											})

											tbl18.Theme.BindDynamic(v117, v84[174], function()
												return flag18 and palette.Accent or palette.SubText
											end)

											v117.ImageTransparency = flag18 and 0.05 or v84[45]

											tbl18.Util.Connect(v117.MouseButton1Click, function()
												flag18 = not flag18
												tbl18.Config.SetFlag(str8, flag18)
												tbl18.Util.Tween(v117, { ImageColor3 = flag18 and palette.Accent or palette.SubText, ImageTransparency = flag18 and 0.05 or 0.5 }, 0.26)
											end)

											return {
												Bell = v117,
												IsOn = function()
													return flag18
												end,
												Announce = function(arg2, arg3)
													if not flag18 then
														return
													end
													local flag19 = v90(arg3) == "boolean"

													tbl17:Notify({
														Title = arg2,
														Text = flag19 and (arg3 and "Enabled" or "Disabled") or v96(arg3),
														Type = flag19 and arg3 and "success" or "info",
														Duration = 2.5,
													})
												end,
											}
										end

										tbl18.Components.OptionRoot = function(arg, arg2, arg3)
											return tbl18.Util.New("Frame", {
												Name = "Option",
												Size = v104.new(v84[105], 0, 0, arg2),
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

											local v117 = tbl18.Components.OptionRoot(arg, tbl18.Layout.Row, arg3)

											local TextButton = tbl18.Util.New("TextButton", {
												Text = "",
												AutoButtonColor = v84[62],
												BackgroundTransparency = 1,
												Size = v104.fromScale(1, v84[105]),
												Parent = v117,
											}, { tbl18.Util.FlexRow(7) })

											local v118 = tbl18.Util.Label({
												Text = arg2.Title or v84[43],
												TextSize = 12,
												ColorKey = "SubText",
												TextTruncate = v106.TextTruncate.AtEnd,
												Size = v104.new(0, 0, 1, 0),
												LayoutOrder = 1,
												Parent = TextButton,
											}, { tbl18.Util.Grow() })

											local tbl20 = { Type = "Toggle", Value = flag18, Root = v117 }

											if arg2.Keybind ~= false and arg2.Flag then
												tbl18.Binds.AttachKeybind({
													Parent = TextButton,
													Host = TextButton,
													LayoutOrder = 2,
													Flag = arg2.Flag,
													Label = arg2.Title or "Toggle",
													MaxWidth = v84[40],
													OnPress = function()
														tbl20:Set(not tbl20.Value)
													end,
												})
											end

											local v119 = nil

											if arg2.Notify and arg2.Flag then
												v119 = tbl18.Binds.AttachBell({ Parent = TextButton, LayoutOrder = v84[195], Flag = arg2.Flag })
											end

											local stroke = tbl18.Util.Stroke
											local v120 = v84[28]
											local v121 = v84[105]

											local Frame = tbl18.Util.New("Frame", {
												Size = v104.fromOffset(30, v84[30]),
												BackgroundTransparency = 0.5,
												BorderSizePixel = 0,
												LayoutOrder = 4,
												Parent = TextButton,
											}, { tbl18.Util.Corner(v114.new(1, v84[108])), stroke(v120, v121, 0.2) })

											tbl18.Theme.Bind(Frame, "BackgroundColor3", "SurfaceAlt")

											local v122 = tbl18.Util.New(v84[49], {
												AnchorPoint = Vector2.new(0, 0.5),
												Position = v104.new(0, 3, v84[45], v84[108]),
												Size = v104.fromOffset(10, 10),
												BorderSizePixel = 0,
												Parent = Frame,
											}, { tbl18.Util.Corner(v114.new(v84[105], 0)) })

											tbl18.Theme.Bind(v122, "BackgroundColor3", "Muted")

											tbl20.Set = function(arg4, arg5, arg6)
												local value = arg5 == true
												arg4.Value = value
												tbl18.Config.SetFlag(arg2.Flag, value)

												tbl18.Util.Tween(Frame, {
													BackgroundColor3 = value and palette.Accent or palette.SurfaceAlt,
													BackgroundTransparency = value and 0.06 or 0.5,
												}, 0.24)

												tbl18.Util.Tween(v122, {
													Position = value and v104.new(1, -13, 0.5, v84[108]) or v104.new(v84[108], v84[195], v84[45], 0),
													BackgroundColor3 = value and palette.Background or palette.Muted,
												}, 0.3)

												tbl18.Util.Tween(v118, { TextColor3 = value and palette.Text or palette.SubText }, 0.24)

												if not arg6 then
													if arg2.Callback then
														v112.spawn(arg2.Callback, value)
													end

													if v119 then
														v119.Announce(arg2.Title or "Toggle", value)
													end
												end
											end

											tbl20.Get = function(arg4)
												return arg4.Value
											end

											tbl18.Util.Connect(TextButton.MouseButton1Click, function()
												tbl20:Set(not tbl20.Value)
											end)

											tbl18.Util.Hover(TextButton, function()
												if not tbl20.Value then
													tbl18.Util.Tween(v118, { TextColor3 = palette.Text }, 0.16)
												end
											end, function()
												if not tbl20.Value then
													tbl18.Util.Tween(v118, { TextColor3 = palette.SubText }, 0.2)
												end
											end)

											tbl20:Set(flag18, true)

											if flag18 and arg2.Callback then
												v112.spawn(arg2.Callback, flag18)
											end

											return tbl20
										end

										tbl18.Components.Slider = function(arg, arg2, arg3)
											local min = arg2.Min or 0
											local max = arg2.Max or 100
											local decimals = arg2.Decimals or 0
											local suffix = arg2.Suffix or ""
											local default = arg2.Default or min

											if v90(tbl18.State.Saved[arg2.Flag]) == "number" then
												default = tbl18.State.Saved[arg2.Flag]
											end

											local v117 = v109.clamp(tbl18.Util.Round(default, decimals), min, max)
											local v118 = tbl18.Components.OptionRoot(arg, tbl18.Env.Mobile and 38 or 32, arg3)

											local v119 = tbl18.Util.Label({
												Text = arg2.Title or v84[192],
												TextSize = 12,
												ColorKey = "SubText",
												Size = v104.new(1, -60, v84[108], v84[73]),
												Parent = v118,
											})

											local v120 = tbl18.Util.Label({
												Text = v96(v117) .. suffix,
												TextSize = v84[134],
												ColorKey = "Text",
												TextXAlignment = v106.TextXAlignment.Right,
												AnchorPoint = Vector2.new(1, 0),
												Position = v104.new(1, 0, 0, 0),
												Size = v104.fromOffset(60, 14),
												Parent = v118,
											})

											local stroke = tbl18.Util.Stroke

											local Frame = tbl18.Util.New("Frame", {
												AnchorPoint = Vector2.new(0, 1),
												Position = v104.new(0, 0, v84[105], -2),
												Size = v104.new(v84[105], 0, 0, v84[178]),
												BackgroundTransparency = 0.35,
												BorderSizePixel = 0,
												Parent = v118,
											}, { tbl18.Util.Corner(v114.new(v84[105], 0)), stroke("BorderSoft", 1, 0.3) })

											tbl18.Theme.Bind(Frame, v84[145], "SurfaceAlt")
											local gradient = tbl18.Util.Gradient

											local v121 = tbl18.Util.New(v84[49], { Size = v104.fromScale(0, 1), BorderSizePixel = 0, Parent = Frame }, {
												tbl18.Util.Corner(v114.new(1, v84[108])),
												gradient(function()
													local colorSequence = ColorSequence.new
													local tbl20 = {}
													local v121 = ColorSequenceKeypoint.new(0, palette.AccentDim)
													local v122 = ColorSequenceKeypoint.new(v84[29], palette.AccentSoft)
													local new = ColorSequenceKeypoint.new
													local accent = palette.Accent
													tbl20[1] = v121
													tbl20[2] = v122

													do
														local values = table.pack(new(1, accent))
														table.move(values, 1, values.n, 3, tbl20)
													end

													return colorSequence(tbl20)
												end),
											})

											tbl18.Theme.Bind(v121, "BackgroundColor3", v84[179])

											local Frame2 = tbl18.Util.New("Frame", {
												AnchorPoint = Vector2.new(v84[45], 0.5),
												Position = v104.new(v84[105], 0, v84[45], 0),
												Size = v104.fromOffset(9, 9),
												BorderSizePixel = 0,
												ZIndex = v84[117],
												Parent = v121,
											}, { tbl18.Util.Corner(v114.new(1, v84[108])) })

											tbl18.Theme.Bind(Frame2, "BackgroundColor3", "AccentSoft")

											local TextButton = tbl18.Util.New("TextButton", {
												Text = "",
												AutoButtonColor = v84[62],
												BackgroundTransparency = 1,
												AnchorPoint = Vector2.new(v84[108], 1),
												Position = v104.new(0, 0, 1, 0),
												Size = v104.new(1, 0, 0, tbl18.Env.Mobile and 26 or v84[30]),
												Parent = v118,
											})

											local tbl20 = {
												Type = "Slider",
												Value = v117,
												Root = v118,
												Set = function(arg4, arg5, arg6, arg7)
													local v122 = v109.clamp(tbl18.Util.Round(v97(arg5) or min, decimals), min, max)
													arg4.Value = v122
													tbl18.Config.SetFlag(arg2.Flag, v122)
													local n32 = max > min and (v122 - min) / (max - min) or 0
													v120.Text = v96(v122) .. suffix

													if arg7 then
														v121.Size = v104.fromScale(n32, 1)
													else
														tbl18.Util.Tween(v121, { Size = v104.fromScale(n32, 1) }, 0.16)
													end

													if not arg6 and arg2.Callback then
														v112.spawn(arg2.Callback, v122)
													end
												end,
												Get = function(arg4)
													return arg4.Value
												end,
											}

											local flag18 = false

											local function fn38(arg4)
												local x = Frame.AbsoluteSize.X
												if x < 1 then
													return
												end
												tbl20:Set(min + (max - min) * v109.clamp((arg4.X - Frame.AbsolutePosition.X) / x, 0, v84[105]), false, v84[158])
											end

											tbl18.Util.Connect(TextButton.InputBegan, function(arg4)
												if arg4.UserInputType ~= v106.UserInputType.MouseButton1 and arg4.UserInputType ~= v106.UserInputType.Touch then
													return
												end
												flag18 = true
												tbl18.Window.BlockDrag = true
												tbl18.Util.Tween(Frame2, { Size = v104.fromOffset(12, v84[133]) }, 0.18)
												fn38(arg4.Position)
											end)

											tbl18.Util.Connect(tbl18.Services.UserInput.InputChanged, function(arg4)
												if not flag18 then
													return
												end

												if arg4.UserInputType == v106.UserInputType.MouseMovement or arg4.UserInputType == v106.UserInputType.Touch then
													fn38(arg4.Position)
												end
											end)

											tbl18.Util.Connect(tbl18.Services.UserInput.InputEnded, function(arg4)
												if not flag18 then
													return
												end

												if arg4.UserInputType ~= v106.UserInputType.MouseButton1 and arg4.UserInputType ~= v106.UserInputType.Touch then
													return
												end
												flag18 = false
												tbl18.Window.BlockDrag = v84[62]
												tbl18.Util.Tween(Frame2, { Size = v104.fromOffset(9, 9) }, 0.24)
												tbl18.Config.Queue()
											end)

											tbl18.Util.Hover(TextButton, function()
												tbl18.Util.Tween(v119, { TextColor3 = palette.Text }, 0.16)
											end, function()
												if not flag18 then
													tbl18.Util.Tween(v119, { TextColor3 = palette.SubText }, 0.2)
												end
											end)

											tbl20:Set(v117, true, v84[158])

											if arg2.Callback then
												v112.spawn(arg2.Callback, v117)
											end

											return tbl20
										end

										tbl18.Components.Dropdown = function(arg, arg2, arg3)
											local flag18 = arg2.Multi == true
											local options = arg2.Options or {}
											local maxVisible = arg2.MaxVisible or 6
											local flag19 = arg2.Search == true or arg2.Searchable == true or #options > 8
											local tbl20 = flag18 and {} or nil

											if flag18 then
												local default = arg2.Default or {}

												for _, v117 in v93(default) do
													tbl20[v117] = true
												end
											else
												tbl20 = arg2.Default
											end

											if tbl18.State.Saved[arg2.Flag] ~= nil then
												tbl20 = tbl18.State.Saved[arg2.Flag]
											end

											local v117 = tbl18.Util.New(v84[49], {
												Name = "Option",
												Size = v104.new(1, 0, v84[108], v84[108]),
												AutomaticSize = v106.AutomaticSize.Y,
												BackgroundTransparency = 1,
												LayoutOrder = arg3,
												Parent = arg,
											}, { tbl18.Util.List(v84[178]) })

											local Frame = tbl18.Util.New("Frame", { Size = v104.new(1, 0, 0, 14), BackgroundTransparency = v84[105], Parent = v117 }, { tbl18.Util.FlexRow(6) })

											tbl18.Util.Label({
												Text = arg2.Title or v84[136],
												TextSize = 12,
												ColorKey = "SubText",
												TextTruncate = v106.TextTruncate.AtEnd,
												Size = v104.new(0, 0, 1, 0),
												LayoutOrder = 1,
												Parent = Frame,
											}, { tbl18.Util.Grow() })

											local v118 = nil

											if arg2.Notify and arg2.Flag then
												v118 = tbl18.Binds.AttachBell({ Parent = Frame, LayoutOrder = 2, Flag = arg2.Flag })
											end

											local new = tbl18.Util.New

											local tbl21 = {
												Text = "",
												AutoButtonColor = false,
												Size = v104.new(1, 0, 0, tbl18.Layout.FieldH),
												BackgroundTransparency = v84[47],
												BorderSizePixel = 0,
												Parent = v117,
											}

											local tbl22 = {}
											local v119 = tbl18.Util.Corner(v84[147])
											local v120 = tbl18.Util.Stroke(v84[28], 1, v84[10])
											tbl22[1] = v119
											tbl22[2] = v120

											do
												local values = table.pack(tbl18.Util.Padding(0, 0, 10, 10))
												table.move(values, 1, values.n, 3, tbl22)
											end

											local TextButton = new("TextButton", tbl21, tbl22)
											tbl18.Theme.Bind(TextButton, "BackgroundColor3", "SurfaceAlt")
											local v121 = TextButton:FindFirstChildOfClass(v84[39])

											local v122 = tbl18.Util.Label({
												Text = "None",
												TextSize = 12,
												ColorKey = v84[116],
												TextTruncate = v106.TextTruncate.AtEnd,
												Size = v104.new(1, -18, v84[105], 0),
												Parent = TextButton,
											})

											local v123 = tbl18.Util.Image({
												Image = "chevronDown",
												Size = v104.fromOffset(v84[133], 12),
												AnchorPoint = Vector2.new(1, v84[45]),
												Position = v104.new(1, v84[108], 0.5, 0),
												ColorKey = "Muted",
												Parent = TextButton,
											})

											local Frame2 = tbl18.Util.New("Frame", {
												Size = v104.new(1, 0, 0, v84[108]),
												BackgroundTransparency = 1,
												ClipsDescendants = true,
												Parent = v117,
											}, { tbl18.Util.List(4) })

											local TextBox = nil

											if flag19 then
												local new2 = tbl18.Util.New

												local tbl23 = {
													Size = v104.new(1, 0, 0, v84[96]),
													BackgroundTransparency = 0.45,
													BorderSizePixel = 0,
													LayoutOrder = 1,
													Parent = Frame2,
												}

												local tbl24 = {}
												local v124 = tbl18.Util.Corner(v84[32])
												local v125 = tbl18.Util.Stroke(v84[104], 1, 0.25)
												local padding = tbl18.Util.Padding
												tbl24[1] = v124
												tbl24[2] = v125

												do
													local values = table.pack(padding(0, 0, 8, 8))
													table.move(values, 1, values.n, 3, tbl24)
												end

												local Frame3 = new2("Frame", tbl23, tbl24)
												tbl18.Theme.Bind(Frame3, v84[145], "Surface")

												TextBox = tbl18.Util.New("TextBox", {
													Text = "",
													PlaceholderText = "Search...",
													ClearTextOnFocus = false,
													BackgroundTransparency = 1,
													FontFace = tbl18.Util.Font(tbl18.Layout.Weight.Medium),
													TextSize = 11.5,
													TextXAlignment = v106.TextXAlignment.Left,
													Size = v104.new(v84[105], 0, 1, 0),
													Parent = Frame3,
												})

												tbl18.Theme.Bind(TextBox, "TextColor3", "Text")
												tbl18.Theme.Bind(TextBox, "PlaceholderColor3", "Muted")
											end

											local new2 = tbl18.Util.New

											local tbl23 = {
												Size = v104.new(1, v84[108], v84[108], 0),
												BackgroundTransparency = v84[47],
												BorderSizePixel = 0,
												ScrollBarThickness = 2,
												ScrollBarImageTransparency = 0.4,
												AutomaticCanvasSize = v106.AutomaticSize.Y,
												CanvasSize = v104.new(),
												ScrollingDirection = v106.ScrollingDirection.Y,
												LayoutOrder = 2,
												Parent = Frame2,
											}

											local tbl24 = {}
											local v124 = tbl18.Util.Corner(v84[147])
											local v125 = tbl18.Util.Stroke(v84[28], 1, 0.25)
											local v126 = tbl18.Util.Padding(4, 4, 4, 4)
											local list = tbl18.Util.List
											tbl24[1] = v124
											tbl24[2] = v125
											tbl24[3] = v126

											do
												local values = table.pack(list(2))
												table.move(values, 1, values.n, 4, tbl24)
											end

											local ScrollingFrame = new2("ScrollingFrame", tbl23, tbl24)
											tbl18.Theme.Bind(ScrollingFrame, "BackgroundColor3", "SurfaceAlt")
											tbl18.Theme.Bind(ScrollingFrame, "ScrollBarImageColor3", "Muted")
											local tbl25 = {}
											local flag20 = false
											local tbl26 = { Type = "Dropdown", Value = tbl20, Options = options, Root = v117 }

											local function fn38(arg4)
												if flag18 then
													return tbl26.Value[arg4] == true
												end
												return tbl26.Value == arg4
											end

											local function fn39()
												if flag18 then
													local tbl27 = {}

													for _, option in v93(tbl26.Options) do
														if tbl26.Value[option] then
															v107.insert(tbl27, option)
														end
													end

													v122.Text = #tbl27 > 0 and v107.concat(tbl27, ", ") or "None"
													v122.TextColor3 = #tbl27 > 0 and palette.Text or palette.Muted
												else
													v122.Text = tbl26.Value and v96(tbl26.Value) or "None"
													v122.TextColor3 = tbl26.Value and palette.Text or palette.Muted
												end

												for k, v127 in v92(tbl25) do
													local v128 = fn38(k)
													tbl18.Util.Tween(v127.text, { TextColor3 = v128 and palette.Text or palette.SubText }, v84[122])
													tbl18.Util.Tween(v127.frame, { BackgroundTransparency = v128 and 0.86 or 1 }, 0.16)
													tbl18.Util.Tween(v127.tick, { ImageTransparency = v128 and 0 or v84[105] }, 0.16)
												end
											end

											local function fn40(arg4)
												local str8 = (arg4 or ""):lower():gsub("^%s+", ""):gsub("%s+$", "")
												local v127 = v84[108]

												for k, v128 in v92(tbl25) do
													local visible = str8 == ""

													if not visible then
														visible = v96(k):lower():find(str8, 1, true) ~= nil
													end

													v128.frame.Visible = visible

													if visible then
														v127 += v84[105]
													end
												end

												return v127
											end

											local function fn41()
												local n32 = 0

												for _, v127 in v92(tbl25) do
													if v127.frame.Visible then
														n32 += 1
													end
												end

												local v127 = v109.clamp(n32, 1, maxVisible)
												local n33 = v127 * tbl18.Layout.OptionH + (v127 - v84[105]) * v84[117] + 8
												ScrollingFrame.Size = v104.new(v84[105], v84[108], 0, n33)
												local n34 = flag20

												if flag20 then
													n34 = n33 + (flag19 and 28 or v84[108])
												end

												return n34 or v84[108]
											end

											local function fn42(arg4)
												flag20 = arg4

												if flag20 and TextBox then
													TextBox.Text = ""
													fn40("")
												end

												local v127 = fn41()
												tbl18.Util.Tween(Frame2, { Size = v104.new(1, v84[108], 0, v127) }, 0.28)
												tbl18.Util.Tween(v123, { Rotation = flag20 and 180 or 0 }, 0.28)
												tbl18.Util.Tween(v121, { Color = flag20 and palette.Accent or palette.Border, Transparency = flag20 and v84[115] or 0.25 }, v84[41])
											end

											if TextBox then
												tbl18.Util.Connect(TextBox:GetPropertyChangedSignal("Text"), function()
													fn40(TextBox.Text)

													if flag20 then
														local v127 = fn41()
														tbl18.Util.Tween(Frame2, { Size = v104.new(1, v84[108], 0, v127) }, 0.2)
													end
												end)
											end

											local function fn43(arg4)
												if flag18 then
													local v127 = v107.clone(tbl26.Value)
													v127[arg4] = not v127[arg4] or nil
													tbl26:Set(v127)
												else
													tbl26:Set(arg4)
													fn42(v84[62])
												end
											end

											tbl26.Set = function(arg4, value, arg5)
												if flag18 then
													local value2 = {}
													local v127 = v84[74]

													if v90(value) == v127 then
														if v84[108] < #value then
															for _, v128 in v93(value) do
																value2[v128] = true
															end
														else
															for k, v128 in v92(value) do
																if v128 then
																	value2[k] = v84[158]
																end
															end
														end
													end

													arg4.Value = value2
												else
													arg4.Value = value
												end

												tbl18.Config.SetFlag(arg2.Flag, arg4.Value)
												fn39()

												if not arg5 then
													if arg2.Callback then
														v112.spawn(arg2.Callback, arg4.Value)
													end

													if v118 then
														v118.Announce(arg2.Title or v84[136], v122.Text)
													end
												end
											end

											tbl26.Get = function(arg4)
												return arg4.Value
											end

											tbl26.SetOptions = function(arg4, options2)
												arg4.Options = options2 or {}

												for _, v127 in v92(tbl25) do
													v127.frame:Destroy()
												end

												tbl25 = {}

												for k, option in v93(arg4.Options) do
													local new3 = tbl18.Util.New

													local tbl27 = {
														Text = "",
														AutoButtonColor = false,
														Size = v104.new(1, 0, 0, tbl18.Layout.OptionH),
														BackgroundTransparency = v84[105],
														BorderSizePixel = 0,
														LayoutOrder = k,
														Parent = ScrollingFrame,
													}

													local tbl28 = {}
													local v127 = tbl18.Util.Corner(v84[178])
													local flexRow = tbl18.Util.FlexRow
													local v128 = tbl18.Util.Padding(0, 0, 8, 8)
													tbl28[1] = v127
													tbl28[2] = v128

													do
														local values = table.pack(flexRow(6))
														table.move(values, 1, values.n, 3, tbl28)
													end

													local TextButton2 = new3("TextButton", tbl27, tbl28)
													tbl18.Theme.Bind(TextButton2, "BackgroundColor3", "Accent")

													local v129 = tbl18.Util.Label({
														Text = v96(option),
														TextSize = v84[139],
														ColorKey = "SubText",
														TextTruncate = v106.TextTruncate.AtEnd,
														Size = v104.new(0, v84[108], 1, 0),
														LayoutOrder = 1,
														Parent = TextButton2,
													}, { tbl18.Util.Grow() })

													if arg2.Keybind and arg2.Flag then
														tbl18.Binds.AttachKeybind({
															Parent = TextButton2,
															Host = TextButton2,
															LayoutOrder = v84[117],
															Flag = arg2.Flag .. "__" .. v96(option),
															Label = (arg2.Title or "Dropdown") .. ": " .. v96(option),
															MaxWidth = v84[79],
															OnPress = function()
																fn43(option)
															end,
														})
													end

													tbl25[option] = {
														frame = TextButton2,
														text = v129,
														tick = tbl18.Util.Image({
															Image = "check",
															Size = v104.fromOffset(11, v84[134]),
															ImageTransparency = 1,
															ColorKey = "Accent",
															LayoutOrder = 3,
															Parent = TextButton2,
														}),
													}

													tbl18.Util.Connect(TextButton2.MouseButton1Click, function()
														fn43(option)
													end)

													tbl18.Util.Hover(TextButton2, function()
														if not fn38(option) then
															tbl18.Util.Tween(TextButton2, { BackgroundTransparency = v84[113] }, 0.14)
														end
													end, function()
														if not fn38(option) then
															tbl18.Util.Tween(TextButton2, { BackgroundTransparency = 1 }, 0.18)
														end
													end)
												end

												if flag18 then
													local value = {}
													local tbl27 = arg4.Value or {}

													for k, v127 in v92(tbl27) do
														v127 = v127 and tbl25[k]

														if v127 then
															value[k] = true
														end
													end

													arg4.Value = value
												elseif arg4.Value ~= nil and not tbl25[arg4.Value] then
													arg4.Value = nil
												end

												fn39()

												if flag20 then
													fn42(true)
												end
											end

											tbl18.Util.Connect(TextButton.MouseButton1Click, function()
												fn42(not flag20)
											end)

											tbl18.Util.Hover(TextButton, function()
												if not flag20 then
													tbl18.Util.Tween(v121, { Transparency = 0.05 }, 0.16)
												end
											end, function()
												if not flag20 then
													tbl18.Util.Tween(v121, { Transparency = v84[10] }, 0.2)
												end
											end)

											tbl26:SetOptions(options)
											tbl26:Set(tbl26.Value, true)

											if arg2.Callback then
												v112.spawn(arg2.Callback, tbl26.Value)
											end

											return tbl26
										end

										tbl18.Components.Keybind = function(arg, arg2, arg3)
											local default = arg2.Default

											if tbl18.State.Saved[arg2.Flag] ~= nil then
												default = tbl18.State.Saved[arg2.Flag]
											end

											local v117 = tbl18.Util.ToKeyCode(default)
											local v118 = tbl18.Components.OptionRoot(arg, tbl18.Layout.Row, arg3)

											tbl18.Util.Label({
												Text = arg2.Title or "Keybind",
												TextSize = 12,
												ColorKey = "SubText",
												Size = v104.new(1, -v84[141], 1, 0),
												Parent = v118,
											})

											local stroke = tbl18.Util.Stroke

											local TextButton = tbl18.Util.New("TextButton", {
												Text = "",
												AutoButtonColor = v84[62],
												AnchorPoint = Vector2.new(v84[105], 0.5),
												Position = v104.new(1, 0, 0.5, 0),
												Size = v104.fromOffset(v84[77], 20),
												BackgroundTransparency = 0.4,
												BorderSizePixel = 0,
												Parent = v118,
											}, { tbl18.Util.Corner(6), stroke("Border", 1, 0.25) })

											tbl18.Theme.Bind(TextButton, "BackgroundColor3", "SurfaceAlt")

											local v119 = tbl18.Util.Label({
												Text = tbl18.Util.KeyName(v117),
												TextSize = 11,
												ColorKey = v117 and "Text" or "Muted",
												TextXAlignment = v106.TextXAlignment.Center,
												Size = v104.fromScale(v84[105], 1),
												Parent = TextButton,
											})

											local flag18 = false
											local tbl20 = { Type = "Keybind", Value = v117, Root = v118 }
											local tbl21 = { Flag = arg2.Flag, Label = arg2.Title or "Keybind", Key = v117 }
											v107.insert(tbl17.Binds, tbl21)

											tbl20.Set = function(arg4, value, arg5)
												arg4.Value = value
												v119.Text = tbl18.Util.KeyName(value)
												v119.TextColor3 = value and palette.Text or palette.Muted
												tbl18.Config.SetFlag(arg2.Flag, value)
												tbl21.Key = value
												tbl18.Binds.Changed()

												if not arg5 and arg2.Changed then
													v112.spawn(arg2.Changed, value)
												end
											end

											tbl20.Get = function(arg4)
												return arg4.Value
											end

											tbl18.Util.Connect(TextButton.MouseButton1Click, function()
												if flag18 then
													return
												end
												flag18 = v84[158]
												tbl18.Binds.Binding = true
												v119.Text = "..."
												v119.TextColor3 = palette.Accent
											end)

											tbl18.Util.Connect(tbl18.Services.UserInput.InputBegan, function(arg4, arg5)
												if flag18 then
													if arg4.UserInputType == v106.UserInputType.Keyboard then
														flag18 = false
														tbl18.Binds.Binding = false

														if arg4.KeyCode == v106.KeyCode.Escape or arg4.KeyCode == v106.KeyCode.Backspace then
															tbl20:Set(nil)
														else
															tbl20:Set(arg4.KeyCode)
														end
													end

													return
												end

												if arg5 or not tbl20.Value then
													return
												end

												if arg4.KeyCode == tbl20.Value and arg2.Callback then
													v112.spawn(arg2.Callback)
												end
											end)

											tbl18.Util.Hover(TextButton, function()
												if not flag18 then
													tbl18.Util.Tween(TextButton, { BackgroundTransparency = 0.15 }, 0.16)
												end
											end, function()
												tbl18.Util.Tween(TextButton, { BackgroundTransparency = 0.4 }, 0.2)
											end)

											tbl20:Set(v117, true)
											return tbl20
										end

										tbl18.Components.Input = function(arg, arg2, arg3)
											local default = arg2.Default or ""

											if v90(tbl18.State.Saved[arg2.Flag]) == "string" then
												default = tbl18.State.Saved[arg2.Flag]
											end

											local Frame = tbl18.Util.New("Frame", {
												Name = "Option",
												Size = v104.new(1, 0, 0, v84[108]),
												AutomaticSize = v106.AutomaticSize.Y,
												BackgroundTransparency = 1,
												LayoutOrder = arg3,
												Parent = arg,
											}, { tbl18.Util.List(5) })

											if arg2.Title then
												tbl18.Util.Label({
													Text = arg2.Title,
													TextSize = 12,
													ColorKey = "SubText",
													Size = v104.new(1, 0, 0, v84[73]),
													Parent = Frame,
												})
											end

											local new = tbl18.Util.New
											local v117 = v84[49]

											local tbl20 = {
												Size = v104.new(1, v84[108], 0, tbl18.Layout.FieldH - v84[117]),
												BackgroundTransparency = v84[47],
												BorderSizePixel = 0,
												ClipsDescendants = v84[158],
												Parent = Frame,
											}

											local tbl21 = {}
											local v118 = tbl18.Util.Corner(7)
											local padding = tbl18.Util.Padding
											local v119 = v84[60]
											local Border = tbl18.Util.Stroke("Border", 1, 0.25)
											tbl21[1] = v118
											tbl21[2] = Border

											do
												local values = table.pack(padding(0, 0, v119, 10))
												table.move(values, 1, values.n, 3, tbl21)
											end

											local v120 = new(v117, tbl20, tbl21)
											tbl18.Theme.Bind(v120, "BackgroundColor3", "SurfaceAlt")
											local v121 = v120:FindFirstChildOfClass(v84[39])

											local TextBox = tbl18.Util.New("TextBox", {
												Text = default,
												PlaceholderText = arg2.Placeholder or "",
												ClearTextOnFocus = false,
												BackgroundTransparency = 1,
												ClipsDescendants = true,
												TextWrapped = v84[62],
												TextTruncate = v106.TextTruncate.AtEnd,
												FontFace = tbl18.Util.Font(tbl18.Layout.Weight.Medium),
												TextSize = 12,
												TextXAlignment = v106.TextXAlignment.Left,
												Size = v104.new(1, 0, 1, 0),
												Parent = v120,
											})

											tbl18.Theme.Bind(TextBox, "TextColor3", "Text")
											tbl18.Theme.Bind(TextBox, "PlaceholderColor3", "Muted")

											local tbl22 = {
												Type = "Input",
												Value = default,
												Root = Frame,
												Set = function(arg4, arg5, arg6)
													arg4.Value = v96(arg5 or "")
													TextBox.Text = arg4.Value
													tbl18.Config.SetFlag(arg2.Flag, arg4.Value)

													if not arg6 and arg2.Callback then
														v112.spawn(arg2.Callback, arg4.Value)
													end
												end,
												Get = function(arg4)
													return arg4.Value
												end,
											}

											tbl18.Util.Connect(TextBox.Focused, function()
												tbl18.Util.Tween(v121, { Color = palette.Accent, Transparency = v84[47] }, 0.18)
											end)

											tbl18.Util.Connect(TextBox.FocusLost, function(arg4)
												tbl18.Util.Tween(v121, { Color = palette.Border, Transparency = 0.25 }, 0.2)

												if arg2.ClearOnEnter and arg4 then
													local text = TextBox.Text
													tbl22:Set("", true)

													if arg2.Callback then
														v112.spawn(arg2.Callback, text)
													end
												else
													tbl22:Set(TextBox.Text)
												end
											end)

											tbl22:Set(default, true)
											return tbl22
										end

										tbl18.Components.Button = function(arg, arg2, arg3)
											local v117 = tbl18.Components.OptionRoot(arg, tbl18.Layout.FieldH, arg3)
											local new = tbl18.Util.New

											local tbl20 = {
												Text = "",
												AutoButtonColor = false,
												Size = v104.fromScale(1, 1),
												BackgroundTransparency = 0.35,
												BorderSizePixel = 0,
												Parent = v117,
											}

											local tbl21 = {}
											local v118 = tbl18.Util.Corner(7)
											local Border = tbl18.Util.Stroke("Border", v84[105], v84[10])
											local new2 = tbl18.Util.New
											tbl21[1] = v118
											tbl21[2] = Border

											do
												local values = table.pack(new2("UIScale", { Scale = 1 }))
												table.move(values, 1, values.n, 3, tbl21)
											end

											local TextButton = new("TextButton", tbl20, tbl21)
											tbl18.Theme.Bind(TextButton, v84[145], "SurfaceAlt")

											local v119 = tbl18.Util.Label({
												Text = arg2.Title or v84[135],
												TextSize = 12,
												Weight = tbl18.Layout.Weight.SemiBold,
												ColorKey = "SubText",
												TextXAlignment = v106.TextXAlignment.Center,
												Size = v104.fromScale(1, 1),
												Parent = TextButton,
											})

											tbl18.Util.Hover(TextButton, function()
												tbl18.Util.Tween(TextButton, { BackgroundTransparency = 0.1 }, 0.16)
												tbl18.Util.Tween(v119, { TextColor3 = palette.Text }, 0.16)
											end, function()
												tbl18.Util.Tween(TextButton, { BackgroundTransparency = 0.35 }, 0.2)
												tbl18.Util.Tween(v119, { TextColor3 = palette.SubText }, 0.2)
											end)

											tbl18.Util.Press(TextButton, TextButton:FindFirstChildOfClass("UIScale"))

											tbl18.Util.Connect(TextButton.MouseButton1Click, function()
												if arg2.Callback then
													v112.spawn(arg2.Callback)
												end
											end)

											return {
												Type = "Button",
												Root = v117,
												SetTitle = function(arg4, text)
													v119.Text = text
												end,
											}
										end

										tbl18.Components.Colorpicker = function(arg, arg2, arg3)
											local default = arg2.Default or v103.fromRGB(v84[121], v84[121], 255)
											local v117 = v84[153]

											if v91(tbl18.State.Saved[arg2.Flag]) == v117 then
												default = tbl18.State.Saved[arg2.Flag]
											end

											local n32, v118, n33 = default:ToHSV()

											local Frame = tbl18.Util.New("Frame", {
												Name = v84[53],
												Size = v104.new(v84[105], v84[108], 0, 0),
												AutomaticSize = v106.AutomaticSize.Y,
												BackgroundTransparency = v84[105],
												LayoutOrder = arg3,
												Parent = arg,
											}, { tbl18.Util.List(v84[32]) })

											local TextButton = tbl18.Util.New("TextButton", {
												Text = "",
												AutoButtonColor = false,
												Size = v104.new(1, v84[108], 0, tbl18.Layout.Row),
												BackgroundTransparency = v84[105],
												Parent = Frame,
											})

											local v119 = tbl18.Util.Label({
												Text = arg2.Title or v84[170],
												TextSize = 12,
												ColorKey = v84[126],
												Size = v104.new(1, -50, 1, 0),
												Parent = TextButton,
											})

											local stroke = tbl18.Util.Stroke

											local v120 = tbl18.Util.New(v84[49], {
												AnchorPoint = Vector2.new(1, 0.5),
												Position = v104.new(v84[105], v84[108], v84[45], 0),
												Size = v104.fromOffset(v84[87], 18),
												BackgroundColor3 = default,
												BorderSizePixel = 0,
												Parent = TextButton,
											}, { tbl18.Util.Corner(6), stroke("Border", 1, 0.15) })

											local Frame2 = tbl18.Util.New("Frame", {
												Size = v104.new(v84[105], v84[108], v84[108], 0),
												BackgroundTransparency = 1,
												ClipsDescendants = true,
												Parent = Frame,
											})

											local new = tbl18.Util.New

											local tbl20 = {
												Size = v104.new(1, 0, v84[108], 167),
												BackgroundTransparency = v84[47],
												BorderSizePixel = 0,
												Parent = Frame2,
											}

											local tbl21 = {}
											local v121 = tbl18.Util.Corner(8)
											local Border = tbl18.Util.Stroke("Border", 1, 0.25)
											local v122 = tbl18.Util.Padding(8, 8, 8, 8)
											tbl21[1] = v121
											tbl21[2] = Border
											tbl21[3] = v122

											do
												local values = table.pack(tbl18.Util.List(7))
												table.move(values, 1, values.n, 4, tbl21)
											end

											local Frame3 = new("Frame", tbl20, tbl21)
											tbl18.Theme.Bind(Frame3, "BackgroundColor3", "SurfaceAlt")
											local new2 = tbl18.Util.New

											local tbl22 = {
												Size = v104.new(1, v84[108], 0, 78),
												BackgroundColor3 = v103.fromHSV(n32, 1, 1),
												BorderSizePixel = 0,
												Parent = Frame3,
											}

											local tbl23 = {}
											local v123 = tbl18.Util.Corner(6)
											local new3 = tbl18.Util.New
											local tbl24 = { Size = v104.fromScale(1, 1), BackgroundColor3 = v103.new(1, 1, v84[105]), BorderSizePixel = 0 }
											local tbl25 = {}
											local v124 = tbl18.Util.Corner(6)
											local new4 = tbl18.Util.New
											local tbl26 = { Color = ColorSequence.new(v103.new(1, 1, 1)), Transparency = NumberSequence.new(0, 1) }
											tbl25[1] = v124

											do
												local values = table.pack(new4("UIGradient", tbl26))
												table.move(values, 1, values.n, 2, tbl25)
											end

											local Frame4 = new3("Frame", tbl24, tbl25)
											local new5 = tbl18.Util.New

											local tbl27 = {
												Size = v104.fromScale(1, 1),
												BackgroundColor3 = v103.new(0, 0, 0),
												BorderSizePixel = v84[108],
												ZIndex = v84[117],
											}

											local tbl28 = {}
											local v125 = tbl18.Util.Corner(6)
											local new6 = tbl18.Util.New
											local tbl29 = { Rotation = 90, Transparency = NumberSequence.new(v84[105], 0) }
											tbl28[1] = v125

											do
												local values = table.pack(new6("UIGradient", tbl29))
												table.move(values, 1, values.n, 2, tbl28)
											end

											tbl23[1] = v123
											tbl23[2] = Frame4

											do
												local values = table.pack(new5("Frame", tbl27, tbl28))
												table.move(values, 1, values.n, 3, tbl23)
											end

											local Frame5 = new2("Frame", tbl22, tbl23)
											local new7 = tbl18.Util.New

											local tbl30 = {
												AnchorPoint = Vector2.new(0.5, 0.5),
												Size = v104.fromOffset(v84[138], 9),
												BackgroundTransparency = 1,
												ZIndex = 4,
												Parent = Frame5,
											}

											local tbl31 = {}
											local v126 = tbl18.Util.Corner(v114.new(1, v84[108]))
											local new8 = tbl18.Util.New
											local v127 = v84[39]
											local tbl32 = { Color = v103.new(1, 1, 1), Thickness = 2 }
											tbl31[1] = v126

											do
												local values = table.pack(new8(v127, tbl32))
												table.move(values, 1, values.n, 2, tbl31)
											end

											local Frame6 = new7("Frame", tbl30, tbl31)
											local new9 = tbl18.Util.New
											local tbl33 = { Size = v104.new(1, v84[108], 0, 10), BorderSizePixel = 0, Parent = Frame3 }
											local tbl34 = {}
											local v128 = tbl18.Util.Corner(v114.new(1, v84[108]))
											local new10 = tbl18.Util.New
											local tbl35 = {}
											local colorSequence = ColorSequence.new
											local tbl36 = {}
											local v129 = ColorSequenceKeypoint.new(v84[108], v103.fromRGB(v84[121], 0, v84[108]))
											local v130 = ColorSequenceKeypoint.new(v84[120], v103.fromRGB(255, 255, 0))
											local v131 = ColorSequenceKeypoint.new(0.33, v103.fromRGB(v84[108], 255, 0))
											local v132 = ColorSequenceKeypoint.new(v84[45], v103.fromRGB(0, 255, 255))
											local v133 = ColorSequenceKeypoint.new(0.67, v103.fromRGB(0, v84[108], 255))
											local v134 = ColorSequenceKeypoint.new(v84[112], v103.fromRGB(v84[121], 0, 255))
											local new11 = ColorSequenceKeypoint.new
											local fromRGB = v103.fromRGB
											tbl36[1] = v129
											tbl36[2] = v130
											tbl36[3] = v131
											tbl36[4] = v132
											tbl36[5] = v133
											tbl36[6] = v134

											do
												local values = table.pack(new11(1, fromRGB(255, 0, 0)))
												table.move(values, 1, values.n, 7, tbl36)
											end

											tbl35.Color = colorSequence(tbl36)
											tbl34[1] = v128

											do
												local values = table.pack(new10("UIGradient", tbl35))
												table.move(values, 1, values.n, 2, tbl34)
											end

											local Frame7 = new9("Frame", tbl33, tbl34)

											local Frame8 = tbl18.Util.New("Frame", {
												AnchorPoint = Vector2.new(v84[45], 0.5),
												Position = v104.new(n32, v84[108], 0.5, 0),
												Size = v104.fromOffset(v84[32], 14),
												BackgroundColor3 = v103.new(v84[105], 1, 1),
												BorderSizePixel = 0,
												ZIndex = 2,
												Parent = Frame7,
											}, { tbl18.Util.Corner(3) })

											local stroke2 = tbl18.Util.Stroke
											local v135 = v84[104]

											local TextBox = tbl18.Util.New("TextBox", {
												Text = "#FFFFFF",
												ClearTextOnFocus = false,
												BackgroundTransparency = v84[45],
												FontFace = tbl18.Util.Font(tbl18.Layout.Weight.Medium),
												TextSize = 11,
												TextXAlignment = v106.TextXAlignment.Center,
												Size = v104.new(1, 0, 0, 22),
												BorderSizePixel = 0,
												Parent = Frame3,
											}, { tbl18.Util.Corner(6), stroke2(v135, 1, 0.3) })

											tbl18.Theme.Bind(TextBox, "BackgroundColor3", "Surface")
											tbl18.Theme.Bind(TextBox, "TextColor3", "SubText")

											local v136 = tbl18.Util.New(v84[177], {
												Text = "",
												AutoButtonColor = false,
												Size = v104.new(1, 0, v84[108], v84[86]),
												BackgroundTransparency = 1,
												Parent = Frame3,
											})

											local v137 = tbl18.Util.Label({
												Text = v84[154],
												TextSize = 11,
												ColorKey = v84[126],
												Size = v104.new(1, -34, 1, 0),
												Parent = v136,
											})

											local stroke3 = tbl18.Util.Stroke
											local v138 = v84[28]

											local Frame9 = tbl18.Util.New("Frame", {
												AnchorPoint = Vector2.new(1, 0.5),
												Position = v104.new(1, 0, 0.5, 0),
												Size = v104.fromOffset(28, 15),
												BackgroundTransparency = v84[45],
												BorderSizePixel = 0,
												Parent = v136,
											}, { tbl18.Util.Corner(v114.new(v84[105], v84[108])), stroke3(v138, 1, 0.2) })

											tbl18.Theme.Bind(Frame9, "BackgroundColor3", v84[71])

											local Frame10 = tbl18.Util.New("Frame", {
												AnchorPoint = Vector2.new(0, v84[45]),
												Position = v104.new(0, v84[195], 0.5, v84[108]),
												Size = v104.fromOffset(9, v84[138]),
												BorderSizePixel = 0,
												Parent = Frame9,
											}, { tbl18.Util.Corner(v114.new(1, 0)) })

											tbl18.Theme.Bind(Frame10, "BackgroundColor3", v84[75])
											local flag18 = false
											local flag19 = false
											local v139 = nil
											local tbl37 = { Type = v84[25], Value = default, Root = Frame }

											local function fn38(arg4, arg5)
												local v140 = v103.fromHSV(n32, v118, n33)
												tbl37.Value = v140
												v120.BackgroundColor3 = v140
												Frame5.BackgroundColor3 = v103.fromHSV(n32, 1, 1)
												Frame6.Position = v104.fromScale(v118, 1 - n33)
												Frame8.Position = v104.new(n32, v84[108], 0.5, 0)
												local floor2 = v109.floor
												local n34 = v140.B * 255 + 0.5
												TextBox.Text = v108.format("#%02X%02X%02X", v109.floor(v140.R * 255 + v84[45]), v109.floor(v140.G * 255 + 0.5), floor2(n34))

												if arg2.Flag then
													tbl17.Flags[arg2.Flag] = v140

													if not arg5 then
														tbl18.Config.Queue()
													end
												end

												if not arg4 and arg2.Callback then
													v112.spawn(arg2.Callback, v140)
												end
											end

											tbl37.SetRainbow = function(arg4, arg5)
												local flag20 = arg5 == true
												if flag20 == flag19 then
													return
												end
												flag19 = flag20
												tbl18.Config.SetFlag((arg2.Flag or "") .. "__rainbow", flag20)

												tbl18.Util.Tween(Frame9, {
													BackgroundColor3 = flag20 and palette.Accent or palette.Surface,
													BackgroundTransparency = flag20 and 0.06 or 0.5,
												}, 0.24)

												tbl18.Util.Tween(Frame10, {
													Position = flag20 and v104.new(v84[105], -12, 0.5, 0) or v104.new(0, 3, 0.5, 0),
													BackgroundColor3 = flag20 and palette.Background or palette.Muted,
												}, v84[13])

												tbl18.Util.Tween(v137, { TextColor3 = flag20 and palette.Text or palette.SubText }, 0.24)

												if v139 then
													v139:Disconnect()
													v139 = nil
												end

												if flag20 then
													v118 = v84[105]
													n33 = 1

													v139 = tbl18.Util.Connect(tbl18.Services.Run.RenderStepped, function(arg6)
														n32 = (n32 + arg6 * (arg2.RainbowSpeed or 0.15)) % 1
														fn38(false, true)
													end)
												else
													tbl18.Config.Queue()
												end
											end

											tbl37.Set = function(arg4, arg5, arg6)
												local v140 = v84[153]
												if v91(arg5) ~= v140 then
													return
												end
												arg4:SetRainbow(false)
												local v141, v142, v143 = arg5:ToHSV()
												n32 = v141
												v118 = v142
												n33 = v143
												fn38(arg6)
											end

											tbl37.Get = function(arg4)
												return arg4.Value
											end

											tbl18.Util.Connect(v136.MouseButton1Click, function()
												tbl37:SetRainbow(not flag19)
											end)

											local function fn39(arg4)
												flag18 = arg4
												tbl18.Util.Tween(Frame2, { Size = v104.new(1, v84[108], v84[108], flag18 and 167 or 0) }, 0.3)
											end

											tbl18.Util.Connect(TextButton.MouseButton1Click, function()
												fn39(not flag18)
											end)

											tbl18.Util.Hover(TextButton, function()
												tbl18.Util.Tween(v119, { TextColor3 = palette.Text }, 0.16)
											end, function()
												tbl18.Util.Tween(v119, { TextColor3 = palette.SubText }, 0.2)
											end)

											local function fn40(arg4, arg5)
												local flag20 = v84[62]

												tbl18.Util.Connect(arg4.InputBegan, function(arg6)
													if arg6.UserInputType ~= v106.UserInputType.MouseButton1 and arg6.UserInputType ~= v106.UserInputType.Touch then
														return
													end
													flag20 = v84[158]
													tbl18.Window.BlockDrag = v84[158]
													arg5(arg6.Position)
												end)

												tbl18.Util.Connect(tbl18.Services.UserInput.InputChanged, function(arg6)
													if not flag20 then
														return
													end

													if arg6.UserInputType == v106.UserInputType.MouseMovement or arg6.UserInputType == v106.UserInputType.Touch then
														arg5(arg6.Position)
													end
												end)

												tbl18.Util.Connect(tbl18.Services.UserInput.InputEnded, function(arg6)
													if not flag20 then
														return
													end

													if arg6.UserInputType ~= v106.UserInputType.MouseButton1 and arg6.UserInputType ~= v106.UserInputType.Touch then
														return
													end
													flag20 = false
													tbl18.Window.BlockDrag = v84[62]
													tbl18.Config.Queue()
												end)
											end

											fn40(Frame5, function(arg4)
												tbl37:SetRainbow(v84[62])
												local absoluteSize = Frame5.AbsoluteSize
												local absolutePosition = Frame5.AbsolutePosition
												local v140 = v84[108]
												v118 = v109.clamp((arg4.X - absolutePosition.X) / v109.max(absoluteSize.X, 1), v140, 1)
												n33 = 1 - v109.clamp((arg4.Y - absolutePosition.Y) / v109.max(absoluteSize.Y, 1), 0, 1)
												fn38()
											end)

											fn40(Frame7, function(arg4)
												tbl37:SetRainbow(false)
												local v140 = v84[108]
												local v141 = v84[105]
												n32 = v109.clamp((arg4.X - Frame7.AbsolutePosition.X) / v109.max(Frame7.AbsoluteSize.X, 1), v140, v141)
												fn38()
											end)

											tbl18.Util.Connect(TextBox.FocusLost, function()
												local str8 = TextBox.Text:gsub("#", "")

												if #str8 == 6 and v97(str8, 16) then
													tbl37:Set(v103.fromHex(str8))
												else
													fn38(v84[158])
												end
											end)

											fn38(true)
											local rainbow = arg2.Rainbow

											if not rainbow then
												rainbow = tbl18.State.Saved[(arg2.Flag or "") .. "__rainbow"] == true
											end

											if rainbow then
												tbl37:SetRainbow(v84[158])
											end

											if arg2.Callback then
												v112.spawn(arg2.Callback, tbl37.Value)
											end

											return tbl37
										end

										tbl18.Components.Paragraph = function(arg, arg2, arg3)
											local Frame = tbl18.Util.New("Frame", {
												Name = "Option",
												Size = v104.new(1, 0, 0, v84[108]),
												AutomaticSize = v106.AutomaticSize.Y,
												BackgroundTransparency = v84[105],
												LayoutOrder = arg3,
												Parent = arg,
											}, { tbl18.Util.List(3) })

											local v117 = nil

											if arg2.Title then
												v117 = tbl18.Util.Label({
													Text = arg2.Title,
													TextSize = 12,
													Weight = tbl18.Layout.Weight.SemiBold,
													Size = v104.new(v84[105], 0, 0, v84[73]),
													Parent = Frame,
												})
											end

											local v118 = tbl18.Util.Label({
												Text = arg2.Text or "",
												TextSize = v84[139],
												ColorKey = "SubText",
												TextWrapped = true,
												AutomaticSize = v106.AutomaticSize.Y,
												Size = v104.new(1, 0, 0, 0),
												Parent = Frame,
											})

											return {
												Type = "Paragraph",
												Root = Frame,
												Set = function(arg4, text)
													v118.Text = text
												end,
												SetTitle = function(arg4, text)
													if v117 then
														v117.Text = text
													end
												end,
											}
										end

										tbl18.Components.Divider = function(arg, arg2, arg3)
											local v117 = tbl18.Components.OptionRoot(arg, 9, arg3)

											tbl18.Theme.Bind(tbl18.Util.New("Frame", {
												AnchorPoint = Vector2.new(0, 0.5),
												Position = v104.new(0, 0, 0.5, 0),
												Size = v104.new(1, 0, 0, 1),
												BackgroundTransparency = 0.4,
												BorderSizePixel = v84[108],
												Parent = v117,
											}), "BackgroundColor3", "Border")

											return { Type = "Divider", Root = v117 }
										end

										do
											local index = {}
											index.__index = index
											local n32 = tbl18.Env.Mobile and 36 or 30

											tbl18.Module.Create = function(tab, config)
												local v117 = v100({}, index)
												v117.Tab = tab
												v117.Config = config
												v117.Title = config.Title or "Module"
												v117.Flag = config.Flag
												v117.Toggleable = config.Toggleable ~= false and config.Flag ~= nil
												v117.Enabled = v84[62]
												v117.Expanded = false
												v117.Order = v84[108]
												v117.Keyword = (v117.Title .. " " .. (config.Description or "")):lower()
												local flag18 = config.Description ~= nil and config.Description ~= ""
												local flag19 = v117.Toggleable and config.Keybind ~= false and v117.Flag ~= nil and not tbl18.Env.Mobile
												local flag20 = v117.Toggleable and config.Notify == true and v117.Flag ~= nil
												local n33 = flag19 and 46 + n32 or 46
												local n34 = flag19 and v84[132] + n32 / 2 or v84[131]
												local flag21 = v117.Toggleable and not flag19
												local n35 = 26

												if flag21 then
													n35 = 34 + (flag20 and v84[131] or v84[108]) + 25
												end

												v117.Side = (config.Side or v84[56]):lower()
												v117.Column = v117.Side == "right" and tab.Right or tab.Left
												local layoutOrder = 0

												if v117.Column then
													local v118, v119 = v89(function()
														return v117.Column:GetChildren()
													end)

													if v118 and v90(v119) == "table" then
														layoutOrder = #v119
													end
												end

												v117.LayoutOrder = layoutOrder
												local new = tbl18.Util.New

												local tbl20 = {
													Name = "Module",
													Size = v104.new(v84[105], 0, 0, v84[108]),
													AutomaticSize = v106.AutomaticSize.Y,
													BackgroundTransparency = 0.15,
													BorderSizePixel = 0,
													ClipsDescendants = true,
													LayoutOrder = v117.LayoutOrder,
													Parent = v117.Column,
												}

												local tbl21 = {}
												local v118 = tbl18.Util.Corner(10)
												local list = tbl18.Util.List
												local v119 = tbl18.Util.Stroke(v84[28], 1, 0.3)
												tbl21[1] = v118
												tbl21[2] = v119

												do
													local values = table.pack(list(0))
													table.move(values, 1, values.n, 3, tbl21)
												end

												local Frame = new("Frame", tbl20, tbl21)
												tbl18.Theme.Bind(Frame, "BackgroundColor3", "Surface")
												v117.Frame = Frame
												v117.Stroke = Frame:FindFirstChildOfClass("UIStroke")

												local TextButton = tbl18.Util.New("TextButton", {
													Name = v84[107],
													Text = "",
													AutoButtonColor = false,
													Size = v104.new(1, 0, 0, n33),
													BackgroundTransparency = 1,
													Parent = Frame,
												})

												v117.Header = TextButton

												local v120 = tbl18.Util.Label({
													Text = v117.Title,
													TextSize = 13,
													Weight = tbl18.Layout.Weight.SemiBold,
													TextTruncate = v106.TextTruncate.AtEnd,
													Position = v104.new(0, 13, 0, flag18 and 10 or 0),
													Size = v104.new(1, -n35, 0, flag18 and 15 or 46),
													Parent = TextButton,
												})

												if flag18 then
													tbl18.Util.Label({
														Text = config.Description,
														TextSize = 11,
														ColorKey = "Muted",
														TextTruncate = v106.TextTruncate.AtEnd,
														Position = v104.new(0, v84[188], 0, 26),
														Size = v104.new(1, -n35, v84[108], v84[188]),
														Parent = TextButton,
													})
												end

												local Frame2 = tbl18.Util.New("Frame", {
													Name = v84[3],
													Size = v104.new(1, 0, v84[108], v84[108]),
													BackgroundTransparency = 1,
													ClipsDescendants = v84[158],
													LayoutOrder = 2,
													Parent = Frame,
												})

												v117.Body = Frame2

												local Frame3 = tbl18.Util.New("Frame", {
													Size = v104.new(1, 0, 0, 0),
													AutomaticSize = v106.AutomaticSize.Y,
													BackgroundTransparency = v84[105],
													Parent = Frame2,
												}, { tbl18.Util.Padding(10, 13, v84[188], 13), tbl18.Util.List(9) })

												v117.Content = Frame3
												local uiListLayout = Frame3:FindFirstChildOfClass("UIListLayout")

												tbl18.Theme.Bind(tbl18.Util.New("Frame", {
													Size = v104.new(v84[105], -26, 0, 1),
													Position = v104.new(0, 13, 0, v84[108]),
													BackgroundTransparency = 0.5,
													BorderSizePixel = 0,
													Parent = Frame2,
												}), "BackgroundColor3", "Border")

												local function fn38()
													local scale = tab.Window.Scale.Scale
													local rootScale = tab.Window.RootScale

													if rootScale then
														scale *= rootScale.Scale
													end

													return uiListLayout.AbsoluteContentSize.Y / v109.max(scale, 0.01) + v84[131]
												end

												v117.Resize = function(arg, arg2)
													if not v117.Expanded then
														return
													end
													local v121 = fn38()

													if arg2 == v84[62] then
														Frame2.Size = v104.new(1, 0, v84[108], v121)
													else
														tbl18.Util.Tween(Frame2, { Size = v104.new(v84[105], 0, v84[108], v121) }, 0.3)
													end
												end

												tbl18.Util.Connect(uiListLayout:GetPropertyChangedSignal(v84[183]), function()
													v117:Resize(v84[158])
												end)

												v117.SetExpanded = function(arg, expanded, arg2)
													if #Frame3:GetChildren() <= 2 then
														expanded = false
													end

													v117.Expanded = expanded
													expanded = expanded and fn38() or 0

													if arg2 == v84[62] then
														Frame2.Size = v104.new(v84[105], v84[108], 0, expanded)
													else
														tbl18.Util.Tween(Frame2, { Size = v104.new(v84[105], 0, 0, expanded) }, 0.34)
													end
												end

												local Frame4 = nil
												local Frame5 = nil
												local v121 = nil

												if v117.Toggleable then
													if flag19 then
														local v122 = v84[145]

														tbl18.Theme.Bind(tbl18.Util.New("Frame", {
															Position = v104.new(v84[108], 13, 0, v84[132]),
															Size = v104.new(1, -26, v84[108], 1),
															BackgroundTransparency = 0.6,
															BorderSizePixel = 0,
															Parent = TextButton,
														}), v122, "Border")
													end

													local Frame6 = tbl18.Util.New("Frame", {
														AnchorPoint = Vector2.new(v84[105], 0.5),
														Position = v104.new(1, -13, 0, n34),
														Size = v104.fromOffset(0, 20),
														AutomaticSize = v106.AutomaticSize.X,
														BackgroundTransparency = 1,
														Parent = TextButton,
													}, { tbl18.Util.FlexRow(9) })

													if flag20 then
														v121 = tbl18.Binds.AttachBell({ Parent = Frame6, LayoutOrder = v84[105], Flag = v117.Flag, Size = 14 })
													end

													local new2 = tbl18.Util.New

													local tbl22 = {
														Size = v104.fromOffset(v84[87], 18),
														BackgroundTransparency = v84[70],
														BorderSizePixel = 0,
														LayoutOrder = 2,
														Parent = Frame6,
													}

													local stroke = tbl18.Util.Stroke
													Frame4 = new2("Frame", tbl22, { tbl18.Util.Corner(v114.new(1, 0)), stroke("Border", 1, 0.2) })
													tbl18.Theme.Bind(Frame4, "BackgroundColor3", "SurfaceAlt")

													Frame5 = tbl18.Util.New("Frame", {
														AnchorPoint = Vector2.new(0, v84[45]),
														Position = v104.new(0, v84[195], 0.5, 0),
														Size = v104.fromOffset(12, 12),
														BorderSizePixel = 0,
														Parent = Frame4,
													}, { tbl18.Util.Corner(v114.new(1, v84[108])) })

													tbl18.Theme.Bind(Frame5, "BackgroundColor3", v84[75])

													tbl18.Util.Connect(tbl18.Util.New("TextButton", {
														Text = "",
														AutoButtonColor = false,
														BackgroundTransparency = v84[105],
														AnchorPoint = Vector2.new(0.5, 0.5),
														Position = v104.fromScale(0.5, v84[45]),
														Size = v104.new(1, tbl18.Env.Mobile and 24 or v84[133], 1, tbl18.Env.Mobile and 18 or 8),
														Parent = Frame4,
													}).MouseButton1Click, function()
														v117:SetEnabled(not v117.Enabled)
													end)
												end

												v117.SetEnabled = function(arg, arg2, arg3, arg4)
													local enabled = arg2 == true
													v117.Enabled = enabled
													tbl18.Config.SetFlag(v117.Flag, enabled)

													if Frame4 then
														tbl18.Util.Tween(Frame4, {
															BackgroundColor3 = enabled and palette.Accent or palette.SurfaceAlt,
															BackgroundTransparency = enabled and 0.05 or 0.45,
														}, v84[88])

														tbl18.Util.Tween(Frame5, {
															Position = enabled and v104.new(1, -15, 0.5, 0) or v104.new(0, 3, 0.5, v84[108]),
															BackgroundColor3 = enabled and palette.Background or palette.Muted,
														}, 0.32)
													end

													tbl18.Util.Tween(v117.Stroke, { Color = enabled and palette.Accent or palette.Border, Transparency = enabled and 0.55 or 0.3 }, 0.3)
													tbl18.Util.Tween(v120, { TextColor3 = (enabled or not v117.Toggleable) and palette.Text or palette.SubText }, 0.26)

													if v117.Toggleable then
														v117:SetExpanded(enabled, not arg4)
													end

													if not arg3 then
														if config.Callback then
															v112.spawn(config.Callback, enabled)
														end

														if v121 then
															v121.Announce(v117.Title, enabled)
														end
													end
												end

												v117.Get = function()
													return v117.Enabled
												end

												if flag19 then
													tbl18.Binds.AttachKeybind({
														Parent = TextButton,
														Host = TextButton,
														AnchorPoint = Vector2.new(0, v84[45]),
														Position = v104.new(0, 13, v84[108], n34),
														Flag = v117.Flag,
														Label = v117.Title,
														MaxWidth = 84,
														OnPress = function()
															v117:SetEnabled(not v117.Enabled)
														end,
													})
												end

												tbl18.Util.Connect(TextButton.MouseButton1Click, function()
													if not v117.Toggleable then
														return
													end
													v117:SetEnabled(not v117.Enabled)
												end)

												tbl18.Util.Hover(TextButton, function()
													if not v117.Enabled then
														tbl18.Util.Tween(v117.Stroke, { Color = palette.Muted, Transparency = 0.55 }, 0.18)
													end

													tbl18.Util.Tween(v120, { TextColor3 = palette.Text }, 0.18)
												end, function()
													if not v117.Enabled then
														tbl18.Util.Tween(v117.Stroke, { Color = palette.Border, Transparency = 0.3 }, 0.22)

														if v117.Toggleable then
															tbl18.Util.Tween(v120, { TextColor3 = palette.SubText }, v84[41])
														end
													end

													if not (n24 > 4061) then
														return
													end

													while true do
													end
												end)

												v117:SetEnabled(tbl18.State.Saved[v117.Flag] == true, true, true)

												if v117.Enabled and config.Callback then
													v112.spawn(config.Callback, true)
												end

												v107.insert(tab.Modules, v117)
												return v117
											end

											for k, component in v92(components) do
												index[k] = function(arg, arg2)
													local tbl20 = arg2 or {}
													arg.Order = arg.Order + 1
													local v117 = component(arg.Content, tbl20, arg.Order)

													if tbl20.Flag then
														tbl17.Options[tbl20.Flag] = v117
													end

													arg.Keyword = arg.Keyword .. " " .. (tbl20.Title or ""):lower()

													if not arg.Expanded and (arg.Enabled or not arg.Toggleable) then
														arg:SetExpanded(true, false)
													end

													return v117
												end
											end

											index.Label = function(arg, arg2)
												return arg:Paragraph({ Text = v90(arg2) == "table" and arg2.Text or arg2 })
											end
										end

										tbl18.Page.Create = function(arg)
											local CanvasGroup = tbl18.Util.New("CanvasGroup", {
												Name = "Page",
												Size = v104.fromScale(v84[105], 1),
												BackgroundTransparency = 1,
												GroupTransparency = 1,
												Visible = false,
												Parent = arg,
											})

											local ScrollingFrame = tbl18.Util.New("ScrollingFrame", {
												Size = v104.fromScale(1, 1),
												BackgroundTransparency = 1,
												BorderSizePixel = 0,
												ScrollBarThickness = 3,
												ScrollBarImageTransparency = v84[70],
												AutomaticCanvasSize = v106.AutomaticSize.Y,
												CanvasSize = v104.new(),
												ScrollingDirection = v106.ScrollingDirection.Y,
												TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png",
												BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png",
												Parent = CanvasGroup,
											})

											tbl18.Theme.Bind(ScrollingFrame, "ScrollBarImageColor3", v84[75])
											local new = tbl18.Util.New

											local tbl20 = {
												Size = v104.new(v84[105], 0, 0, 0),
												AutomaticSize = v106.AutomaticSize.Y,
												BackgroundTransparency = v84[105],
												Parent = ScrollingFrame,
											}

											local tbl21 = {}
											local v117 = tbl18.Util.Padding(14, 16, 15, v84[60])
											local new2 = tbl18.Util.New

											local tbl22 = {
												Padding = v114.new(0, v84[133]),
												FillDirection = v106.FillDirection.Horizontal,
												SortOrder = v106.SortOrder.LayoutOrder,
											}

											tbl21[1] = v117

											do
												local values = table.pack(new2("UIListLayout", tbl22))
												table.move(values, 1, values.n, 2, tbl21)
											end

											local Frame = new("Frame", tbl20, tbl21)

											local function fn38(arg2)
												return tbl18.Util.New("Frame", {
													Name = "Column",
													Size = v104.new(v84[45], -6, 0, 0),
													AutomaticSize = v106.AutomaticSize.Y,
													BackgroundTransparency = 1,
													LayoutOrder = arg2,
													Parent = Frame,
												}, { tbl18.Util.List(10) })
											end

											return CanvasGroup, ScrollingFrame, fn38(1), fn38(2)
										end

										tbl18.Tab.IndicatorPosition = function(arg, arg2)
											local tbl20 = {}

											for _, tab in v93(arg.Tabs) do
												v107.insert(tbl20, tab)
											end

											v107.sort(tbl20, function(arg3, arg4)
												return arg3.Button.LayoutOrder < arg4.Button.LayoutOrder
											end)

											local tabPad = tbl18.Layout.TabPad

											for _, v117 in v93(tbl20) do
												if v117 == arg2 then
													return v104.fromOffset(tbl18.Layout.TabPad, tabPad)
												end
												tabPad += tbl18.Layout.TabH + tbl18.Layout.TabGap
											end

											return v104.fromOffset(tbl18.Layout.TabPad, tbl18.Layout.TabPad)
										end

										tbl18.Tab.SlideIndicator = function(arg, arg2, arg3)
											local indicator = arg.Indicator
											if not indicator or not arg2 then
												return
											end
											local v117 = tbl18.Tab.IndicatorPosition(arg, arg2)
											indicator.Visible = true
											indicator.Size = v104.new(v84[105], -(tbl18.Layout.TabPad * 2), v84[108], tbl18.Layout.TabH)

											if arg.TabIndicatorTween then
												arg.TabIndicatorTween:Cancel()
												arg.TabIndicatorTween = nil
											end

											if not arg3 then
												indicator.Position = v117
												return
											end
											arg.TabIndicatorTween = tbl18.Util.Tween(indicator, { Position = v117 }, tbl18.Layout.TabIndicatorSlide)
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
												Size = v104.new(v84[105], 0, 0, tbl18.Layout.TabH),
												BackgroundTransparency = 1,
												ZIndex = 2,
												LayoutOrder = activeTab.Internal and 9999 or activeTab.Index,
												Parent = arg.TabHolder,
											})

											activeTab.Button = TextButton
											local padding = tbl18.Util.Padding
											local Frame = tbl18.Util.New("Frame", { Size = v104.fromScale(1, 1), BackgroundTransparency = 1, Parent = TextButton }, { tbl18.Util.FlexRow(v84[138]), padding(0, 0, 12, 12) })
											local v117 = nil

											if arg2.Icon then
												v117 = tbl18.Util.Image({
													Image = arg2.Icon,
													Size = v104.fromOffset(15, 15),
													ImageTransparency = 0.35,
													ColorKey = "SubText",
													LayoutOrder = 1,
													Parent = Frame,
												})
											end

											local v118 = tbl18.Util.Label({
												Text = activeTab.Title,
												TextSize = 12.5,
												Weight = tbl18.Layout.Weight.Medium,
												ColorKey = "SubText",
												AutomaticSize = v106.AutomaticSize.X,
												Size = v104.new(0, 0, 1, v84[108]),
												LayoutOrder = v84[117],
												Parent = Frame,
											})

											local v119, v120, v121, v122 = tbl18.Page.Create(arg.Content)
											activeTab.Page = v119
											activeTab.Scroller = v120
											activeTab.Left = v121
											activeTab.Right = v122

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
													tbl18.Util.Tween(activeTab2.Page, { GroupTransparency = v84[105] }, flag18 and 0.16 or 0)

													v112.delay(flag18 and 0.16 or 0, function()
														if arg.ActiveTab ~= activeTab2 then
															activeTab2.Page.Visible = false
														end
													end)

													tbl18.Util.Tween(activeTab2.Text, { TextColor3 = palette.SubText }, flag18 and v84[155] or v84[108])

													if activeTab2.Glyph then
														tbl18.Util.Tween(activeTab2.Glyph, { ImageColor3 = palette.SubText, ImageTransparency = v84[47] }, flag18 and 0.2 or 0)
													end
												end

												v119.Visible = v84[158]

												if flag18 then
													v119.GroupTransparency = v84[105]
													v119.Position = v104.fromOffset(0, 8)
													tbl18.Util.Tween(v119, { GroupTransparency = 0, Position = v104.fromOffset(0, 0) }, v84[13])
													tbl18.Util.Tween(v118, { TextColor3 = palette.Text }, 0.22)

													if v117 then
														tbl18.Util.Tween(v117, { ImageColor3 = palette.Accent, ImageTransparency = 0 }, v84[41])
													end
												else
													v119.GroupTransparency = 0
													v119.Position = v104.fromOffset(v84[108], 0)
													v118.TextColor3 = palette.Text

													if v117 then
														v117.ImageColor3 = palette.Accent
														v117.ImageTransparency = v84[108]
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

											activeTab.Text = v118
											activeTab.Glyph = v117

											tbl18.Util.Connect(TextButton.MouseButton1Click, function()
												activeTab:Select()
											end)

											tbl18.Util.Hover(TextButton, function()
												if arg.ActiveTab ~= activeTab then
													tbl18.Util.Tween(v118, { TextColor3 = palette.Text }, 0.16)

													if v117 then
														tbl18.Util.Tween(v117, { ImageTransparency = 0.1 }, 0.16)
													end
												end
											end, function()
												if arg.ActiveTab ~= activeTab then
													tbl18.Util.Tween(v118, { TextColor3 = palette.SubText }, 0.2)

													if v117 then
														tbl18.Util.Tween(v117, { ImageTransparency = 0.35 }, v84[155])
													end
												end
											end)

											v107.insert(arg.Tabs, activeTab)

											if not activeTab.Internal and (arg.ActiveTab == nil or arg.ActiveTab.Internal) then
												activeTab:Select(true)
											end

											v112.defer(function()
												if arg.ActiveTab == activeTab then
													activeTab:SyncIndicator(false)
												end
											end)

											return activeTab
										end

										tbl18.Window.Open = function(arg)
											local tbl20 = arg or {}

											if tbl20.ConfigFolder ~= false then
												tbl18.Config.Setup(tbl20.ConfigFolder or "Zenthra", tbl20.ConfigName or "config")
												tbl18.State.Saved = tbl18.Config.Load()

												if v90(tbl18.State.Saved.zenthra_notify_position) == "string" then
													tbl18.Notify.SetPosition(tbl18.State.Saved.zenthra_notify_position)
												end
											end

											local tbl21 = { Tabs = {}, ActiveTab = nil, Open = v84[158], ToggleKey = tbl20.ToggleKey or v106.KeyCode.RightShift }

											if tbl20.Accent then
												tbl17:SetAccent(tbl20.Accent)
											end

											if tbl20.Theme then
												tbl17:SetTheme(tbl20.Theme)
											end

											local ScreenGui = tbl18.Util.New("ScreenGui", {
												Name = "Zenthra",
												ResetOnSpawn = false,
												IgnoreGuiInset = true,
												AutoLocalize = false,
												DisplayOrder = v84[162],
												ZIndexBehavior = v106.ZIndexBehavior.Sibling,
												Parent = tbl18.Env.SafeParent(),
											})

											tbl21.Screen = ScreenGui

											local Frame = tbl18.Util.New("Frame", {
												Name = "Layer",
												AnchorPoint = Vector2.new(0.5, 0.5),
												Position = v104.fromScale(v84[45], 0.5),
												Size = v104.fromScale(1, 1),
												BackgroundTransparency = 1,
												Parent = ScreenGui,
											})

											local UIScale = tbl18.Util.New("UIScale", { Scale = 1, Parent = Frame })
											tbl21.Scale = UIScale

											local function fn38()
												local viewportSize = v86.CurrentCamera and v86.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
												local n32 = tbl18.Env.Mobile and 30 or 90
												UIScale.Scale = v109.clamp(v109.min(viewportSize.X / (tbl18.Layout.Width + n32), viewportSize.Y / (tbl18.Layout.Height + n32)), 0.4, 1)
												v116.Scale = UIScale.Scale
											end

											fn38()

											if v86.CurrentCamera then
												tbl18.Util.Connect(v86.CurrentCamera:GetPropertyChangedSignal("ViewportSize"), fn38)
											end

											local Frame2 = tbl18.Util.New("Frame", {
												Name = "Holder",
												AnchorPoint = Vector2.new(0.5, 0.5),
												Position = v104.fromScale(v84[45], 0.5),
												Size = v104.fromOffset(tbl18.Layout.Width, tbl18.Layout.Height),
												BackgroundTransparency = 1,
												Visible = false,
												Parent = Frame,
											}, { tbl18.Util.New(v84[17], { Scale = 0.94 }) })

											tbl21.Holder = Frame2
											tbl21.RootScale = Frame2:FindFirstChildOfClass("UIScale")

											local ImageLabel = tbl18.Util.New("ImageLabel", {
												Name = "Shadow",
												AnchorPoint = Vector2.new(0.5, 0.5),
												Position = v104.fromScale(0.5, 0.5),
												Size = v104.new(1, 97, v84[105], 111),
												BackgroundTransparency = 1,
												Image = "rbxassetid://17290899982",
												ImageColor3 = v103.new(0, 0, 0),
												ImageTransparency = 1,
												Parent = Frame2,
											})

											local stroke = tbl18.Util.Stroke
											local v117 = v84[81]

											local v118 = tbl18.Util.New(v84[93], {
												Name = "Root",
												Size = v104.fromScale(v84[105], 1),
												BackgroundTransparency = 0,
												BorderSizePixel = 0,
												GroupTransparency = 1,
												Parent = Frame2,
											}, { tbl18.Util.Corner(13), stroke("Border", v117, 0.35) })

											tbl18.Theme.Bind(v118, "BackgroundColor3", "Background")
											tbl21.Root = v118

											local CanvasGroup = tbl18.Util.New("CanvasGroup", {
												Name = "VLBackground",
												Size = v104.fromScale(v84[105], 1),
												BackgroundTransparency = 1,
												BorderSizePixel = 0,
												GroupTransparency = 0,
												Visible = v84[62],
												ZIndex = v84[108],
												Parent = v118,
											}, { tbl18.Util.Corner(13) })

											tbl21.BgCanvas = CanvasGroup

											tbl21.BgVideo = tbl18.Util.New(v84[42], {
												Name = v84[9],
												Size = v104.fromScale(1, 1),
												BackgroundTransparency = 1,
												BorderSizePixel = 0,
												Visible = v84[62],
												Looped = true,
												Volume = v84[108],
												ZIndex = 1,
												Parent = CanvasGroup,
											})

											tbl21.Wallpaper = tbl18.Util.New("ImageLabel", {
												Name = v84[161],
												Size = v104.fromScale(1, v84[105]),
												BackgroundTransparency = 1,
												BorderSizePixel = 0,
												Image = "",
												ImageTransparency = 1,
												ScaleType = v106.ScaleType.Stretch,
												Visible = v84[158],
												ZIndex = 2,
												Parent = CanvasGroup,
											})

											tbl18.Theme.Bind(tbl18.Util.New("Frame", {
												Name = "TopGlow",
												Size = v104.new(1, 0, 0, 74),
												BackgroundTransparency = 0.94,
												BorderSizePixel = 0,
												ZIndex = 3,
												Parent = v118,
											}, { tbl18.Util.Gradient(nil, tbl18.Util.Fade(v84[108], 0.45, 1, 1), 90) }), "BackgroundColor3", "Accent")

											local Frame3 = tbl18.Util.New("Frame", {
												Name = "Topbar",
												Size = v104.new(v84[105], 0, 0, tbl18.Layout.TopbarH),
												BackgroundTransparency = v84[105],
												Active = true,
												ZIndex = 4,
												Parent = v118,
											})

											local Frame4 = tbl18.Util.New("Frame", {
												Position = v104.new(0, 18, 0.5, 0),
												AnchorPoint = Vector2.new(v84[108], 0.5),
												Size = v104.fromOffset(0, v84[186]),
												AutomaticSize = v106.AutomaticSize.X,
												BackgroundTransparency = v84[105],
												Parent = Frame3,
											}, {
												tbl18.Util.New("UIListLayout", {
													Padding = v114.new(0, 7),
													FillDirection = v106.FillDirection.Horizontal,
													VerticalAlignment = v106.VerticalAlignment.Center,
													SortOrder = v106.SortOrder.LayoutOrder,
												}),
											})

											local v119 = tbl18.Util.Label({
												Text = tbl20.Title or "Zenthra",
												TextSize = 14,
												Weight = tbl18.Layout.Weight.Bold,
												AutomaticSize = v106.AutomaticSize.X,
												Size = v104.fromOffset(0, 16),
												LayoutOrder = 1,
												Parent = Frame4,
											})

											local v120 = nil

											if tbl20.Subtitle then
												v120 = tbl18.Util.Label({
													Text = tbl20.Subtitle,
													TextSize = v84[134],
													ColorKey = "Muted",
													AutomaticSize = v106.AutomaticSize.X,
													Size = v104.fromOffset(0, 14),
													LayoutOrder = v84[117],
													Parent = Frame4,
												})
											end

											local function fn39(arg2, arg3, arg4)
												local TextButton = tbl18.Util.New("TextButton", {
													Text = "",
													AutoButtonColor = false,
													AnchorPoint = Vector2.new(1, v84[45]),
													Position = v104.new(v84[105], -arg2, 0.5, 0),
													Size = v104.fromOffset(v84[16], v84[16]),
													BackgroundTransparency = 1,
													BorderSizePixel = 0,
													Parent = Frame3,
												}, { tbl18.Util.Corner(7) })

												tbl18.Theme.Bind(TextButton, v84[145], "SurfaceAlt")

												local v121 = tbl18.Util.Image({
													Image = arg3,
													Size = v104.fromOffset(13, 13),
													AnchorPoint = Vector2.new(0.5, v84[45]),
													Position = v104.fromScale(0.5, v84[45]),
													ImageTransparency = 0.25,
													ColorKey = "SubText",
													Parent = TextButton,
												})

												tbl18.Util.Hover(TextButton, function()
													tbl18.Util.Tween(TextButton, { BackgroundTransparency = 0.25 }, 0.16)
													tbl18.Util.Tween(v121, { ImageColor3 = palette[arg4 or "Text"], ImageTransparency = 0 }, 0.16)
												end, function()
													tbl18.Util.Tween(TextButton, { BackgroundTransparency = 1 }, 0.2)
													tbl18.Util.Tween(v121, { ImageColor3 = palette.SubText, ImageTransparency = v84[10] }, 0.2)
												end)

												return TextButton
											end

											local v121 = fn39(v84[73], "minus")
											local stroke2 = tbl18.Util.Stroke

											local Frame5 = tbl18.Util.New("Frame", {
												AnchorPoint = Vector2.new(v84[105], 0.5),
												Position = v104.new(1, -48, 0.5, v84[108]),
												Size = v104.fromOffset(150, 27),
												BackgroundTransparency = 0.45,
												BorderSizePixel = 0,
												ClipsDescendants = true,
												Parent = Frame3,
											}, { tbl18.Util.Corner(7), stroke2("BorderSoft", 1, 0.25) })

											tbl18.Theme.Bind(Frame5, "BackgroundColor3", v84[71])

											tbl18.Util.Image({
												Image = v84[111],
												Size = v104.fromOffset(12, 12),
												AnchorPoint = Vector2.new(v84[108], 0.5),
												Position = v104.new(0, 9, 0.5, 0),
												ImageTransparency = 0.2,
												ColorKey = v84[75],
												Parent = Frame5,
											})

											local TextBox = tbl18.Util.New("TextBox", {
												Text = "",
												PlaceholderText = v84[187],
												ClearTextOnFocus = false,
												BackgroundTransparency = v84[105],
												ClipsDescendants = v84[158],
												TextWrapped = v84[62],
												TextTruncate = v106.TextTruncate.AtEnd,
												FontFace = tbl18.Util.Font(tbl18.Layout.Weight.Medium),
												TextSize = 11.5,
												TextXAlignment = v106.TextXAlignment.Left,
												Position = v104.new(0, 27, 0, 0),
												Size = v104.new(1, -v84[87], 1, 0),
												Parent = Frame5,
											})

											tbl18.Theme.Bind(TextBox, "TextColor3", "Text")
											tbl18.Theme.Bind(TextBox, "PlaceholderColor3", "Muted")

											tbl18.Theme.Bind(tbl18.Util.New("Frame", {
												Position = v104.new(0, 0, 0, tbl18.Layout.TopbarH),
												Size = v104.new(v84[105], v84[108], 0, 1),
												BackgroundTransparency = 0.55,
												BorderSizePixel = 0,
												ZIndex = 4,
												Parent = v118,
											}), "BackgroundColor3", "Border")

											local v122 = tbl18.Util.New(v84[49], {
												Name = "Sidebar",
												Position = v104.new(0, 0, v84[108], tbl18.Layout.TopbarH + 1),
												Size = v104.new(0, tbl18.Layout.SidebarW, v84[105], -(tbl18.Layout.TopbarH + 1)),
												BackgroundTransparency = 0.35,
												BorderSizePixel = 0,
												ZIndex = 4,
												Parent = v118,
											}, { tbl18.Util.Gradient(nil, tbl18.Util.Fade(0.1, 0.4, v84[150]), 90) })

											tbl18.Theme.Bind(v122, "BackgroundColor3", "Surface")
											tbl21.Sidebar = v122

											tbl18.Theme.Bind(tbl18.Util.New("Frame", {
												AnchorPoint = Vector2.new(1, 0),
												Position = v104.new(v84[105], 0, 0, v84[108]),
												Size = v104.new(0, 1, 1, 0),
												BackgroundTransparency = 0.55,
												BorderSizePixel = 0,
												Parent = v122,
											}), "BackgroundColor3", "Border")

											local ScrollingFrame = tbl18.Util.New("ScrollingFrame", {
												Position = v104.new(0, 12, v84[108], v84[133]),
												Size = v104.new(v84[105], -24, 1, -24),
												BackgroundTransparency = 1,
												BorderSizePixel = 0,
												ScrollBarThickness = 0,
												AutomaticCanvasSize = v106.AutomaticSize.Y,
												CanvasSize = v104.new(),
												ScrollingDirection = v106.ScrollingDirection.Y,
												Parent = v122,
											})

											local new = tbl18.Util.New

											local tbl22 = {
												Name = "Indicator",
												Size = v104.new(v84[105], -(tbl18.Layout.TabPad * 2), 0, tbl18.Layout.TabH),
												BackgroundTransparency = 0.82,
												BorderSizePixel = 0,
												Visible = false,
												ZIndex = 1,
												Parent = ScrollingFrame,
											}

											local tbl23 = {}
											local v123 = tbl18.Util.Corner(7)
											local gradient = tbl18.Util.Gradient
											local v124 = tbl18.Util.Fade(0.1, v84[29], 1)
											local v125 = v84[108]
											tbl23[1] = v123

											do
												local values = table.pack(gradient(nil, v124, v125))
												table.move(values, 1, values.n, 2, tbl23)
											end

											local Frame6 = new("Frame", tbl22, tbl23)
											tbl18.Theme.Bind(Frame6, "BackgroundColor3", v84[179])
											tbl21.Indicator = Frame6
											tbl21.TabIndicatorTween = nil

											tbl18.Theme.Bind(tbl18.Util.New("Frame", {
												AnchorPoint = Vector2.new(0, v84[45]),
												Position = v104.new(v84[108], 0, 0.5, 0),
												Size = v104.fromOffset(2, 16),
												BorderSizePixel = 0,
												Parent = Frame6,
											}, { tbl18.Util.Corner(2) }), "BackgroundColor3", "Accent")

											local padding = tbl18.Util.Padding
											local tabPad = tbl18.Layout.TabPad
											local tabPad2 = tbl18.Layout.TabPad
											local tabPad3 = tbl18.Layout.TabPad

											tbl21.TabHolder = tbl18.Util.New("Frame", {
												Size = v104.new(v84[105], 0, 0, v84[108]),
												AutomaticSize = v106.AutomaticSize.Y,
												BackgroundTransparency = 1,
												ZIndex = 2,
												Parent = ScrollingFrame,
											}, { tbl18.Util.List(tbl18.Layout.TabGap), padding(tabPad, 0, tabPad2, tabPad3) })

											tbl21.TabScroll = ScrollingFrame

											local Frame7 = tbl18.Util.New("Frame", {
												Name = "Content",
												Position = v104.new(0, tbl18.Layout.SidebarW + v84[105], v84[108], tbl18.Layout.TopbarH + 1),
												Size = v104.new(1, -(tbl18.Layout.SidebarW + 1), 1, -(tbl18.Layout.TopbarH + v84[105])),
												BackgroundTransparency = 1,
												ZIndex = 4,
												Parent = v118,
											})

											tbl21.Content = Frame7
											local flag18 = false
											local position = nil
											local position2 = nil
											local flag19 = v84[62]

											tbl18.Util.Connect(Frame3.InputBegan, function(arg2)
												if tbl18.Window.BlockDrag then
													return
												end

												if arg2.UserInputType ~= v106.UserInputType.MouseButton1 and arg2.UserInputType ~= v106.UserInputType.Touch then
													return
												end
												flag18 = true
												flag19 = false
												position = arg2.Position
												position2 = Frame2.Position
											end)

											tbl18.Util.Connect(tbl18.Services.UserInput.InputChanged, function(arg2)
												if not flag18 then
													return
												end

												if arg2.UserInputType ~= v106.UserInputType.MouseMovement and arg2.UserInputType ~= v106.UserInputType.Touch then
													return
												end
												local n32 = arg2.Position - position

												if n32.Magnitude > 4 then
													flag19 = true
												end

												Frame2.Position = v104.new(position2.X.Scale, position2.X.Offset + n32.X / UIScale.Scale, position2.Y.Scale, position2.Y.Offset + n32.Y / UIScale.Scale)
											end)

											tbl18.Util.Connect(tbl18.Services.UserInput.InputEnded, function(arg2)
												if arg2.UserInputType ~= v106.UserInputType.MouseButton1 and arg2.UserInputType ~= v106.UserInputType.Touch then
													return
												end
												local flag20 = flag18 and not flag19
												flag18 = v84[62]

												if flag20 and tbl21.CompactPillActive and tbl21.CompactPillActive() then
													tbl21:Toggle()
												end
											end)

											local v126, v127, v128, v129 = tbl18.Page.Create(Frame7)
											tbl21.SearchBox = TextBox

											local v130 = tbl18.Util.Label({
												Text = "No modules found",
												TextSize = v84[133],
												ColorKey = v84[75],
												TextXAlignment = v106.TextXAlignment.Center,
												Position = v104.fromScale(0, 0.32),
												Size = v104.new(v84[105], 0, v84[108], 16),
												Visible = false,
												Parent = v126,
											})

											local flag20 = false

											tbl18.Util.Connect(TextBox:GetPropertyChangedSignal("Text"), function()
												local str8 = TextBox.Text:lower():gsub("^%s+", ""):gsub("%s+$", "")
												local flag21 = str8 ~= ""
												local layoutOrder = 0

												for _, tab in v93(tbl21.Tabs) do
													for _, module in v93(tab.Modules) do
														local flag22 = flag21 and module.Keyword:find(str8, v84[105], true) ~= nil
														local column = module.Column

														if flag22 then
															layoutOrder += v84[105]
															module.Frame.LayoutOrder = layoutOrder
															column = layoutOrder % 2 == 1 and v128 or v129
														else
															module.Frame.LayoutOrder = module.LayoutOrder
														end

														if module.Frame.Parent ~= column then
															module.Frame.Parent = column
														end
													end
												end

												v130.Visible = flag21 and layoutOrder == 0
												if flag21 == flag20 then
													return
												end
												flag20 = flag21

												if flag21 then
													if tbl21.ActiveTab then
														tbl21.ActiveTab.Page.Visible = false
													end

													v126.Visible = true
													v126.GroupTransparency = 1
													tbl18.Util.Tween(v126, { GroupTransparency = 0 }, 0.22)
												else
													v126.Visible = false

													if tbl21.ActiveTab then
														tbl21.ActiveTab.Page.Visible = true
														tbl21.ActiveTab.Page.GroupTransparency = 0
													end
												end
											end)

											local flag21 = false

											local function fn40()
												return tbl17.Flags.zenthra_hide_minimized == true
											end

											local function fn41()
												return tbl17.Flags.zenthra_compact_minimized == true
											end

											local function fn42()
												local scale = UIScale.Scale
												local scale2 = tbl21.RootScale and tbl21.RootScale.Scale or 1
												local width = tbl18.Layout.Width
												return v109.clamp(v109.floor(v119.AbsoluteSize.X / v109.max(scale * scale2, 0.01) + v84[36]), 110, width)
											end

											local function fn43()
												if not flag21 then
													return v104.fromOffset(tbl18.Layout.Width, tbl18.Layout.Height)
												end
												return v104.fromOffset(fn41() and fn42() or tbl18.Layout.Width, tbl18.Layout.TopbarH)
											end

											local function fn44()
												return v104.new(1, v84[148], 1, v84[127])
											end

											local function fn45()
												local v131 = flag21 and fn41()
												local visible = not v131
												Frame5.Visible = visible
												v121.Visible = visible

												if v120 then
													v120.Visible = not v131
												end

												Frame4.AnchorPoint = v131 and Vector2.new(0.5, 0.5) or Vector2.new(0, 0.5)
												Frame4.Position = v131 and v104.fromScale(0.5, v84[45]) or v104.new(v84[108], 18, 0.5, 0)
											end

											local function fn46(arg2)
												flag21 = arg2
												fn45()
												tbl18.Util.Tween(Frame2, { Size = fn43() }, 0.4)
												tbl18.Util.Tween(ImageLabel, { ImageTransparency = arg2 and 1 or 0.45 }, arg2 and 0.22 or v84[70])
											end

											tbl21.CompactPillActive = function()
												return flag21 and fn41()
											end

											tbl21.RefreshMinimized = function()
												if not flag21 then
													return
												end
												fn45()
												tbl18.Util.Tween(Frame2, { Size = fn43() }, v84[13])
											end

											tbl21.Toggle = function()
												if fn40() then
													if tbl21.Open and Frame2.Visible then
														tbl21:SetVisible(false)
													else
														flag21 = false
														tbl21:SetVisible(true)
													end

													return
												end

												if not tbl21.Open or not Frame2.Visible then
													flag21 = false
													tbl21:SetVisible(true)
													return
												end

												fn46(not flag21)
											end

											tbl18.Util.Connect(v121.MouseButton1Click, function()
												tbl21:Toggle()
											end)

											local v131 = nil
											local v132 = nil
											local v133 = nil

											tbl21.SetVisible = function(arg2, arg3)
												local open = arg3 == true
												tbl21.Open = open

												if v131 then
													v131:Cancel()
													v131 = nil
												end

												if v132 then
													v132:Cancel()
													v132 = nil
												end

												if v133 then
													v133:Cancel()
													v133 = nil
												end

												if open then
													if flag21 then
														flag21 = false
														fn45()
													end

													Frame2.Visible = true
													ImageLabel.Visible = v84[158]
													Frame2.Size = fn43()
													ImageLabel.Size = fn44()
													tbl21.RootScale.Scale = 0.78
													v118.GroupTransparency = v84[105]
													ImageLabel.ImageTransparency = 1
													v133 = tbl18.Util.Tween(tbl21.RootScale, { Scale = 0.94 }, v84[78])
													v131 = tbl18.Util.Tween(v118, { GroupTransparency = 0 }, 0.28)
													v132 = tbl18.Util.Tween(ImageLabel, { ImageTransparency = 0.45 }, 0.32)
												else
													v133 = tbl18.Util.Tween(tbl21.RootScale, { Scale = 0.86 }, v84[41], tbl18.Layout.Ease, tbl18.Layout.EaseIn)
													v131 = tbl18.Util.Tween(v118, { GroupTransparency = 1 }, 0.2, tbl18.Layout.Ease, tbl18.Layout.EaseIn)
													v132 = tbl18.Util.Tween(ImageLabel, { ImageTransparency = 1 }, v84[155], tbl18.Layout.Ease, tbl18.Layout.EaseIn)

													v112.delay(0.22, function()
														if not tbl21.Open then
															Frame2.Visible = false
															ImageLabel.Visible = v84[62]
															tbl21.RootScale.Scale = 0.94
														end
													end)
												end
											end

											tbl21.Destroy = function()
												tbl18.Config.Save()

												for _, connection in v93(tbl18.State.Connections) do
													v89(function()
														connection:Disconnect()
													end)
												end

												v107.clear(tbl18.State.Connections)
												v107.clear(tbl17.Options)

												for k, window in v93(tbl17.Windows) do
													if window == tbl21 then
														v107.remove(tbl17.Windows, k)
														break
													end
												end

												if v87 then
													v87().__ZenthraTeardown = nil
												end

												tbl18.Util.Tween(v118, { GroupTransparency = 1 }, 0.2)
												tbl18.Util.Tween(tbl21.RootScale, { Scale = 0.9 }, v84[155])

												v112.delay(0.24, function()
													ScreenGui:Destroy()
													v115:Destroy()
												end)
											end

											tbl21.Tab = function(arg2, arg3)
												return tbl18.Tab.Create(tbl21, arg3 or {})
											end

											tbl21.Notify = function(...)
												return tbl17:Notify(select(2, ...))
											end

											tbl18.Util.Connect(tbl18.Services.UserInput.InputBegan, function(arg2, arg3)
												if arg3 or tbl18.Binds.Binding then
													return
												end

												if arg2.KeyCode == tbl21.ToggleKey then
													tbl21:Toggle()
												end
											end)

											if tbl18.Env.Mobile then
												local stroke3 = tbl18.Util.Stroke
												local v134 = v84[13]

												local v135 = tbl18.Util.New(v84[177], {
													Name = "Handle",
													Text = "",
													AutoButtonColor = v84[62],
													AnchorPoint = Vector2.new(v84[108], 0.5),
													Position = v104.new(v84[108], 16, 0.28, v84[108]),
													Size = v104.fromOffset(46, v84[132]),
													BackgroundTransparency = 0.05,
													BorderSizePixel = 0,
													Parent = ScreenGui,
												}, { tbl18.Util.Corner(v114.new(v84[105], 0)), stroke3("Border", 1, v134) })

												tbl18.Theme.Bind(v135, "BackgroundColor3", "Surface")

												tbl18.Util.Image({
													Image = tbl20.Icon or v84[35],
													Size = v104.fromOffset(v84[86], 20),
													AnchorPoint = Vector2.new(0.5, 0.5),
													Position = v104.fromScale(v84[45], v84[45]),
													ColorKey = "Accent",
													Parent = v135,
												})

												local flag22 = nil
												local position3 = nil
												local position4 = nil
												local flag23 = nil

												tbl18.Util.Connect(v135.InputBegan, function(arg2)
													if arg2.UserInputType ~= v106.UserInputType.Touch then
														return
													end
													flag22 = true
													flag23 = false
													position3 = arg2.Position
													position4 = v135.Position
												end)

												tbl18.Util.Connect(tbl18.Services.UserInput.InputChanged, function(arg2)
													if not flag22 or arg2.UserInputType ~= v106.UserInputType.Touch then
														return
													end
													local n32 = arg2.Position - position3

													if n32.Magnitude > 6 then
														flag23 = true
													end

													v135.Position = v104.new(position4.X.Scale, position4.X.Offset + n32.X, position4.Y.Scale, position4.Y.Offset + n32.Y)
												end)

												tbl18.Util.Connect(tbl18.Services.UserInput.InputEnded, function(arg2)
													if not flag22 or arg2.UserInputType ~= v106.UserInputType.Touch then
														return
													end
													flag22 = false

													if not flag23 then
														tbl21:Toggle()
													end
												end)
											end

											local new2 = tbl18.Util.New
											local v134 = v84[93]

											local tbl24 = {
												Name = "KeybindList",
												AnchorPoint = Vector2.new(0, 0.5),
												Position = v104.new(0, -v84[167], 0.5, 0),
												Size = v104.new(0, 194, v84[108], 0),
												AutomaticSize = v106.AutomaticSize.Y,
												BackgroundTransparency = 0.02,
												GroupTransparency = 1,
												BorderSizePixel = 0,
												Visible = v84[62],
												Parent = Frame,
											}

											local tbl25 = {}
											local v135 = tbl18.Util.Corner(10)
											local Border = tbl18.Util.Stroke("Border", v84[105], 0.32)
											local list = tbl18.Util.List
											local v136 = tbl18.Util.Padding(10, 11, v84[133], 12)
											tbl25[1] = v135
											tbl25[2] = Border
											tbl25[3] = v136

											do
												local values = table.pack(list(5))
												table.move(values, 1, values.n, 4, tbl25)
											end

											local v137 = new2(v134, tbl24, tbl25)
											tbl18.Theme.Bind(v137, v84[145], "Surface")

											tbl18.Util.Label({
												Text = v84[184],
												TextSize = 10,
												Weight = tbl18.Layout.Weight.Bold,
												ColorKey = v84[75],
												Size = v104.new(1, v84[108], 0, 12),
												LayoutOrder = v84[108],
												Parent = v137,
											})

											local v138 = tbl18.Util.Label({
												Text = "Nothing bound yet",
												TextSize = 11,
												ColorKey = "Muted",
												Size = v104.new(1, 0, 0, v84[30]),
												LayoutOrder = 1,
												Parent = v137,
											})

											local tbl26 = {}
											local flag22 = false

											local function fn47()
												for _, v139 in v93(tbl26) do
													v139:Destroy()
												end

												v107.clear(tbl26)
												local n32 = 0

												for _, bind in v93(tbl17.Binds) do
													if bind.Key then
														n32 += 1

														local Frame8 = tbl18.Util.New("Frame", {
															Size = v104.new(1, 0, 0, 18),
															BackgroundTransparency = 1,
															LayoutOrder = n32 + v84[105],
															Parent = v137,
														}, { tbl18.Util.FlexRow(v84[32]) })

														tbl18.Util.Label({
															Text = bind.Label,
															TextSize = 11.5,
															ColorKey = "SubText",
															TextTruncate = v106.TextTruncate.AtEnd,
															Size = v104.new(0, 0, 1, 0),
															LayoutOrder = 1,
															Parent = Frame8,
														}, { tbl18.Util.Grow() })

														local new3 = tbl18.Util.New
														local v139 = v84[49]

														local tbl27 = {
															Size = v104.fromOffset(v84[108], v84[30]),
															AutomaticSize = v106.AutomaticSize.X,
															BackgroundTransparency = 0.4,
															BorderSizePixel = v84[108],
															LayoutOrder = 2,
															Parent = Frame8,
														}

														local tbl28 = {}
														local v140 = tbl18.Util.Corner(5)
														local Border2 = tbl18.Util.Stroke("Border", 1, 0.25)
														local padding2 = tbl18.Util.Padding
														tbl28[1] = v140
														tbl28[2] = Border2

														do
															local values = table.pack(padding2(0, 0, 6, 6))
															table.move(values, 1, values.n, 3, tbl28)
														end

														local v141 = new3(v139, tbl27, tbl28)
														tbl18.Theme.Bind(v141, "BackgroundColor3", "SurfaceAlt")

														tbl18.Util.Label({
															Text = tbl18.Util.KeyName(bind.Key),
															TextSize = 10,
															Weight = tbl18.Layout.Weight.SemiBold,
															TextXAlignment = v106.TextXAlignment.Center,
															AutomaticSize = v106.AutomaticSize.X,
															Size = v104.fromOffset(0, v84[30]),
															Parent = v141,
														})

														v107.insert(tbl26, Frame8)
													end
												end

												v138.Visible = n32 == 0
											end

											local function fn48(arg2)
												flag22 = arg2

												if arg2 then
													fn47()
													v137.Visible = v84[158]
													tbl18.Util.Tween(v137, { Position = v104.new(0, 18, 0.5, v84[108]), GroupTransparency = 0 }, 0.34)
												else
													tbl18.Util.Tween(v137, { Position = v104.new(0, -194, v84[45], 0), GroupTransparency = 1 }, 0.28, tbl18.Layout.Ease, tbl18.Layout.EaseIn)

													v112.delay(0.3, function()
														if not flag22 then
															v137.Visible = false
														end
													end)
												end
											end

											tbl17:OnBindsChanged(function()
												if flag22 then
													fn47()
												end
											end)

											local v139 = tbl18.Tab.Create(tbl21, { Title = "Gui", Icon = "settings", Internal = true })
											tbl21.GuiTab = v139
											local v140 = v139:Module({ Title = "Interface", Description = "Window behavior", Side = v84[56], Toggleable = false })

											v140:Toggle({
												Title = v84[124],
												Flag = "zenthra_hide_minimized",
												Default = false,
												Keybind = false,
												Callback = function(arg2)
													if arg2 and flag21 then
														fn46(false)
													end
												end,
											})

											v140:Toggle({ Title = "Start minimized", Flag = "zenthra_start_minimized", Default = v84[62], Keybind = false })

											v140:Toggle({
												Title = v84[27],
												Flag = v84[123],
												Default = false,
												Keybind = false,
												Callback = function()
													tbl21:RefreshMinimized()
												end,
											})

											v140:Toggle({ Title = "Keybind list", Flag = v84[46], Default = false, Keybind = false, Callback = fn48 })

											local v141 = v140:Keybind({
												Title = "Toggle key",
												Flag = "zenthra_toggle_key",
												Default = tbl21.ToggleKey,
												Changed = function(toggleKey)
													tbl21.ToggleKey = toggleKey
												end,
											})

											if v141.Value then
												tbl21.ToggleKey = v141.Value
											end

											local v142 = v139:Module({ Title = "Notifications", Description = "Where toasts appear", Side = v84[76], Toggleable = false })

											v142:Dropdown({
												Title = "Position",
												Flag = "zenthra_notify_position",
												Options = tbl17.NotifyPositions,
												Default = tbl18.Notify.GetPosition(),
												Callback = function(arg2)
													tbl18.Notify.SetPosition(arg2)
												end,
											})

											v142:Button({
												Title = v84[6],
												Callback = function()
													tbl17:Notify({ Title = v84[7], Text = "Sample notification in the selected corner.", Type = v84[181] })
												end,
											})

											v142:Button({
												Title = "Preview (Content)",
												Callback = function()
													tbl17:Notify({ Title = "Zenthra", Content = "Same toast using Content instead of Text.", Type = "info" })
												end,
											})

											local flag23 = tbl18.State.Saved.zenthra_start_minimized == true

											v112.defer(function()
												if flag23 then
													tbl21.Open = v84[62]
													Frame2.Visible = false
													ImageLabel.Visible = v84[62]
												else
													tbl21:SetVisible(true)
												end
											end)

											v107.insert(tbl17.Windows, tbl21)
											return tbl21
										end
									end

									media = { Seq = 0, Active = v84[62], Opacity = 0.5 }

									fn30 = function()
										return v96(tbl17.MediaFolder or "Zenthra/backgrounds")
									end

									fn31 = function()
										return tbl18.Env.Filesystem and v91(listfiles) == "function"
									end

									fn32 = function()
										if not tbl18.Env.Filesystem then
											return false
										end
										local v115 = fn30()
										local match = v115:match("^([^/\\]+)")

										v89(function()
											if match and not isfolder(match) then
												makefolder(match)
											end

											if not isfolder(v115) then
												makefolder(v115)
											end
										end)

										return isfolder(v115)
									end

									fn33 = function(arg)
										if v90(arg) ~= "string" then
											return ""
										end

										return (arg:gsub("[^%w%-_%.~]", function(arg2)
											return v108.format("%%%02X", v108.byte(arg2))
										end))
									end

									fn34 = function()
										if v91(request) == "function" then
											return request
										end

										if v91(http_request) == "function" then
											return http_request
										end

										if syn and v91(syn.request) == "function" then
											return syn.request
										end
										return nil
									end

									do
										local function fn38(arg)
											if v91(getcustomasset) == "function" then
												return getcustomasset(arg)
											end

											if v91(getsynasset) == "function" then
												return getsynasset(arg)
											end
											return nil
										end

										local tbl20 = nil

										local function fn39(arg)
											if v90(arg) ~= "string" then
												return nil
											end

											if crypt and v91(crypt.base64decode) == "function" then
												return crypt.base64decode(arg)
											end

											if crypt and crypt.base64 and v91(crypt.base64.decode) == "function" then
												return crypt.base64.decode(arg)
											end

											if not tbl20 then
												tbl20 = {}

												for i = 1, 64 do
													local n32 = i - v84[105]
													tbl20[v108.byte("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", i)] = n32
												end
											end

											local str8 = arg:gsub("[^%w%+/=]", "")
											local tbl21 = {}
											local v115 = v84[108]
											local n32 = 1

											while n32 <= #str8 do
												local v116 = tbl20[v108.byte(str8, n32)]
												local v117 = tbl20[v108.byte(str8, n32 + v84[105])]

												if not (not v116 or not v117) then
													local v118 = v108.byte(str8, n32 + 2) and tbl20[v108.byte(str8, n32 + 2)]
													local v119 = v108.byte(str8, n32 + v84[195]) and tbl20[v108.byte(str8, n32 + 3)]
													v115 += 1
													tbl21[v115] = v108.char(v116 * 4 + v109.floor(v117 / 16))

													if v118 then
														v115 += 1
														tbl21[v115] = v108.char(v117 % 16 * v84[30] + v109.floor(v118 / 4))

														if v119 then
															v115 += v84[105]
															tbl21[v115] = v108.char(v118 % v84[68] * 64 + v119)
														end
													end

													n32 += 4
													continue
												end

												break
											end

											return v107.concat(tbl21)
										end

										fn35 = function(arg)
											local v115 = v84[21]
											if v90(arg) ~= v115 then
												return nil
											end
											local flag18 = crypt

											if flag18 then
												local v116 = v84[199]
												flag18 = v91(crypt.base64encode) == v116
											end

											if flag18 then
												return crypt.base64encode(arg)
											end

											if crypt and crypt.base64 and v91(crypt.base64.encode) == "function" then
												return crypt.base64.encode(arg)
											end
											local tbl21 = {}

											for i = v84[105], #arg, 3 do
												local v116, v117, v118 = v108.byte(arg, i, i + 2)
												local n32 = v116 * 65536 + (v117 or v84[108]) * 256 + (v118 or 0)
												local n33 = #tbl21
												tbl21[n33 + 1] = ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"):sub(v109.floor(n32 / 262144) % 64 + 1, v109.floor(n32 / v84[129]) % 64 + 1)
												tbl21[n33 + 2] = ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"):sub(v109.floor(n32 / v84[171]) % 64 + 1, v109.floor(n32 / v84[171]) % 64 + 1)
												tbl21[n33 + 3] = v117 and ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"):sub(v109.floor(n32 / v84[77]) % 64 + 1, v109.floor(n32 / 64) % 64 + 1) or "="
												tbl21[n33 + 4] = v118 and ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"):sub(n32 % 64 + 1, n32 % 64 + 1) or "="
											end

											return v107.concat(tbl21)
										end

										tbl19 = {}

										if v87 then
											local v115 = v87()

											if v90(v115.__ZenthraMediaApplied) ~= "table" then
												v115.__ZenthraMediaApplied = {}
											end

											zenthraMediaApplied = v115.__ZenthraMediaApplied
										else
											zenthraMediaApplied = {}
										end

										fn36 = function(arg)
											local str8 = fn30() .. "/" .. arg
											if not tbl19[arg] then
												return fn38(str8)
											end
											tbl19[arg] = nil
											local v115, v116 = v89(readfile, str8)
											if not v115 or v90(v116) ~= "string" or #v116 == 0 then
												return fn38(str8)
											end
											local n32 = #v116 % v84[151]

											for i = 1, #v116, v109.max(1, v109.floor(#v116 / 64)) do
												n32 = (n32 * 31 + v116:byte(i)) % 16777213
											end

											local str9 = fn30() .. "/.cache"
											local str10 = str9 .. "/" .. v108.format("%x", n32) .. "." .. (arg:match("%.(%w+)$") or "png")

											return fn38(v89(function()
												if not isfolder(str9) then
													makefolder(str9)
												end

												if not isfile(str10) then
													writefile(str10, v116)
												end
											end) and str10 or str8)
										end

										media.ApiBase = function()
											local str8 = v96(v87 and v87().ZENTHRA_SHEET_API or tbl17.SheetApiUrl or ""):gsub("^%s+", ""):gsub("%s+$", ""):gsub("/+$", "")
											if not str8:match("^https?://") then
												return nil
											end
											return str8
										end

										fn37 = function(arg)
											local v115, v116 = v89(function()
												return tbl18.Services.Http:JSONDecode(arg)
											end)

											if not v115 or v90(v116) ~= "table" then
												return nil, "Bad API response"
											end

											if not v116.ok then
												return nil, v96(v116.error or "API error")
											end
											local flag18 = not v116.multi

											if not flag18 then
												local v117 = v84[74]
												flag18 = v90(v116.images) ~= v117
											end

											if flag18 or #v116.images == 0 then
												return nil, v84[22]
											end
											local tbl21 = {}

											for k, image in v93(v116.images) do
												local v117 = fn39(image)
												if v90(v117) ~= "string" or #v117 == 0 then
													return nil, "Could not decode page " .. k
												end
												tbl21[k] = v117
											end

											return tbl21, {
												cols = v116.cols,
												cellW = v116.cellW,
												cellH = v116.cellH,
												count = v116.count,
												counts = v116.counts,
												delayMs = v116.delayMs or 100,
												ext = (v116.ext == "jpg" or v116.ext == "png") and v116.ext or "jpg",
											}
										end
									end
								end

								do
									local fn38, fn39

									do
										fn38 = function(arg, arg2, arg3, arg4)
											local v115 = fn34()

											if v115 then
												local v116, v117 = v89(v115, { Url = arg, Method = arg2 or v84[85], Headers = arg3, Body = arg4 })
												if v116 and v90(v117) == "table" and v90(v117.Body) == "string" and #v117.Body > 0 then
													return v117.Body, v117.StatusCode or v117.Status
												end
											end

											if (arg2 or "GET") == "GET" and not arg4 then
												local flag18, v116 = v89(function()
													return v85:HttpGet(arg, true)
												end)

												if flag18 then
													local v117 = v84[21]
													flag18 = v90(v116) == v117
												end

												if flag18 and v116 ~= "" then
													return v116, 200
												end
											end

											return nil, nil
										end

										fn39 = function(arg)
											local get, v115 = fn38(arg, "GET", {
												["User-Agent"] = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36",
												Accept = "image/avif,image/webp,image/apng,image/*,video/*,*/*;q=0.8",
												Referer = (arg:match("^(https?://[^/]+)") or "") .. "/",
											})

											if v90(get) ~= "string" or #get < 32 then
												return nil
											end

											if v115 and v115 ~= 200 then
												return nil
											end
											local str8 = get:sub(1, 200):lower()
											if str8:find("<!doctype", v84[105], v84[158]) or str8:find("<html", 1, true) or str8:find("just a moment", 1, true) then
												return nil
											end
											return get
										end

										do
											local function fn40(arg)
												local str8 = v96(arg or ""):lower()
												return str8:find("cloudflare", 1, true) or str8:find("403", v84[105], true) or str8:find(v84[168], 1, true) or str8:find(v84[142], 1, true) or str8:find("challenge", 1, v84[158]) or str8:find("avif", 1, true)
											end

											media.Fetch = function(arg)
												local v115 = media.ApiBase()
												if not v115 then
													return nil, "API URL must start with http"
												end

												if v90(arg) ~= "string" or arg == "" then
													return nil, "Enter a media URL"
												end
												local v116 = v113(1, fn38(v115 .. "/sheet?url=" .. fn33(arg) .. "&multi=1&quality=original&fmt=jpg&format=json", "GET"))
												local str8 = "Request failed, is the API up?"

												if v116 then
													local v117
													v117, str8 = fn37(v116)
													if v117 then
														return v117, str8
													end

													if not fn40(str8) then
														return nil, str8
													end
												end

												local v117 = fn39(arg)
												if not v117 then
													return nil, str8
												end
												local v118 = fn35(v117)
												if v90(v118) ~= "string" or v118 == "" then
													return nil, v84[197]
												end
												local json = tbl18.Services.Http:JSONEncode({ data = v118, name = arg:match("([^/\\?]+)%.[%w]+$") or arg:match("([^/\\?]+)$") or v84[185] })
												local v119 = v113(1, fn38(v115 .. "/sheet?" .. ("&multi=1&quality=original&fmt=jpg&format=json"):sub(2), "POST", { ["Content-Type"] = "application/json" }, json))
												if not v119 then
													return nil, "Upload to API failed — is the API up and recent?"
												end
												return fn37(v119)
											end
										end
									end

									do
										local function fn40(arg)
											if v90(arg) ~= "string" or #arg < 12 then
												return nil
											end

											if arg:sub(1, 8) == "\137PNG\r\n\26\n" then
												return "png"
											end

											if arg:byte(1) == 255 and arg:byte(2) == 216 then
												return "jpg"
											end

											if arg:sub(1, 4) == "GIF8" then
												return "gif"
											end

											if not (arg:sub(v84[105], 4) == "RIFF" and arg:sub(9, 12) == "WEBP") then
												if arg:sub(v84[105], 2) == "BM" then
													return v84[59]
												end

												if arg:sub(5, 8) == "ftyp" then
													local str8 = arg:sub(v84[138], 12):lower()
													if str8:find(v84[99], 1, v84[158]) or str8:find("avis", v84[105], true) then
														return "avif"
													end

													if str8:find("heic", 1, v84[158]) or str8:find("heif", 1, v84[158]) or str8:find("mif1", v84[105], v84[158]) then
														return "heic"
													end

													if str8:find("mp4", 1, true) or str8:find(v84[166], 1, true) or str8:find("iso2", v84[105], v84[158]) then
														return "mp4"
													end
												end

												local v115 = v84[16]
												if arg:byte(1) == v115 and arg:byte(2) == 69 then
													return "webm"
												end
												return nil
											end

											if not (n24 < 4036) then
												return "webp"
											end

											while true do
											end
										end

										local tbl20 = {
											png = true,
											jpg = v84[158],
											jpeg = true,
											webp = true,
											bmp = true,
										}

										local function fn41(arg)
											for _, v115 in v93({ "png", v84[55], "jpeg", "webp", "bmp", "gif", "mp4", "webm", "mov", "avif" }) do
												v89(delfile, fn30() .. "/" .. arg .. "." .. v115)
												local str8 = "/" .. arg .. "." .. v115 .. v84[165]
												v89(delfile, fn30() .. str8)
												local n32 = 2

												while true do
													local flag18 = v91(isfile) == "function"

													if flag18 then
														local str9 = "/" .. arg .. ".p" .. n32 .. v84[33] .. v115
														flag18 = isfile(fn30() .. str9)
													end

													if flag18 then
														v89(delfile, fn30() .. "/" .. arg .. ".p" .. n32 .. "." .. v115)
														n32 += 1
														continue
													end

													break
												end
											end
										end

										local function fn42(arg, arg2, arg3)
											local str8 = v96(arg3 or ""):gsub("[%\\/:%*%?\"<>|]", ""):gsub("^%s+", ""):gsub("%s+$", ""):gsub("%.%w+$", "")

											if str8 == "" then
												str8 = "media_" .. v96(v110.time())
											end

											local str9 = str8 .. "." .. arg2

											if not v89(function()
												fn32()
												fn41(str8)
												local str10 = "/" .. str9
												writefile(fn30() .. str10, arg)
											end) then
												return v84[62], v84[156]
											end

											tbl19[str9] = true
											zenthraMediaApplied[str9] = nil
											return true, str9
										end

										local function fn43(arg, arg2)
											local v115 = media.ApiBase()
											if not v115 then
												return nil, v84[128]
											end
											local v116 = fn35(arg)
											local v117 = v84[21]
											if v90(v116) ~= v117 or v116 == "" then
												return nil, "Could not encode media for upload"
											end
											local json = tbl18.Services.Http:JSONEncode({ data = v116, name = arg2 })
											local v118 = v113(v84[105], fn38(v115 .. "/sheet?multi=1&quality=original&fmt=png&format=json", "POST", { ["Content-Type"] = "application/json" }, json))
											if not v118 then
												return nil, "Upload to API failed — is the API up and recent?"
											end
											local v119, v120 = fn37(v118)
											if not v119 then
												return nil, v120
											end
											return v119, v120
										end

										media.Save = function(arg, arg2)
											if not fn31() then
												return v84[62], v84[61]
											end
											local v115 = fn39(arg)
											local v116 = v115 and fn40(v115)
											if v115 and v116 and tbl20[v116] then
												return fn42(v115, v116 == "jpeg" and v84[55] or v116, arg2)
											end

											if v115 and (v116 == "avif" or v116 == "heic") then
												local v117, v118 = fn43(v115, "upload." .. v116)
												if not v117 then
													return false, v118
												end
												arg2 = arg2 or ""
												local str8 = v96(arg2):gsub("[%\\/:%*%?\"<>|]", ""):gsub("^%s+", ""):gsub("%s+$", ""):gsub("%.%w+$", "")

												if str8 == "" then
													str8 = "media_" .. v96(v110.time())
												end

												local str9 = str8 .. "." .. ((v118.ext == v84[152] or v118.ext == "jpg") and v118.ext or "png")

												if not v89(function()
													fn32()
													fn41(str8)
													local str10 = "/" .. str9
													writefile(fn30() .. str10, v117[v84[105]])
												end) then
													return v84[62], "Could not write the files"
												end

												tbl19[str9] = true
												zenthraMediaApplied[str9] = nil
												return true, str9
											end

											local v117, v118 = media.Fetch(arg)
											if not v117 then
												return v84[62], v118
											end
											local str8 = v96(arg2 or ""):gsub("[%\\/:%*%?\"<>|]", ""):gsub("^%s+", ""):gsub("%s+$", ""):gsub("%.%w+$", "")

											if str8 == "" then
												str8 = "media_" .. v96(v110.time())
											end

											local flag18 = #v117 == 1

											if flag18 then
												flag18 = (v118.count or 1) <= 1
											end

											if flag18 then
												local str9 = str8 .. "." .. ((v118.ext == v84[152] or v118.ext == v84[55]) and v118.ext or "jpg")

												if not v89(function()
													fn32()
													fn41(str8)
													local str10 = "/" .. str9
													writefile(fn30() .. str10, v117[1])
												end) then
													return false, "Could not write the files"
												end

												tbl19[str9] = v84[158]
												zenthraMediaApplied[str9] = nil
												return true, str9
											end

											local tbl21 = { str8 .. "." .. v118.ext }

											for i = v84[117], #v117 do
												tbl21[i] = str8 .. ".p" .. i .. "." .. v118.ext
											end

											if not v89(function()
												fn32()
												fn41(str8)

												for k, v119 in v93(v117) do
													local str9 = "/" .. tbl21[k]
													writefile(fn30() .. str9, v119)
												end

												local str9 = "/" .. tbl21[1] .. ".json"

												writefile(fn30() .. str9, tbl18.Services.Http:JSONEncode({
													cols = v118.cols,
													cellW = v118.cellW,
													cellH = v118.cellH,
													count = v118.count,
													counts = v118.counts,
													delayMs = v118.delayMs,
													pages = tbl21,
													ext = v118.ext,
												}))
											end) then
												return false, "Could not write the files"
											end

											for i = 1, #tbl21 do
												tbl19[tbl21[i]] = true
												zenthraMediaApplied[tbl21[i]] = nil
											end

											zenthraMediaApplied[tbl21[v84[105]]] = nil
											return true, tbl21[1]
										end
									end
								end

								do
									media.List = function()
										local tbl20 = { v84[144] }
										if not fn31() or not isfolder(fn30()) then
											return tbl20
										end
										local v115, v116 = v89(listfiles, fn30())
										if not v115 or v90(v116) ~= "table" then
											return tbl20
										end

										for _, v117 in v93(v116) do
											local match = v117:match("([^/\\]+)$")

											if match and not match:lower():match("%.p%d+%.%w+$") and not match:lower():match("%.json$") and match ~= v84[92] then
												local match2 = match:match("%.(%w+)$")

												if match2 then
													local v118 = v108.lower(match2)

													if v118 == "png" or v118 == "jpg" or v118 == "jpeg" or v118 == "webp" or v118 == "bmp" or v118 == "gif" or v118 == "mp4" or v118 == "webm" or v118 == "mov" then
														v107.insert(tbl20, match)
													end
												end
											end
										end

										return tbl20
									end

									media.Delete = function(arg)
										if v90(arg) ~= "string" or arg == "" or arg == v84[144] then
											return false, "Select a media file first"
										end

										if v91(delfile) ~= "function" then
											return v84[62], v84[143]
										end

										if arg:find("rbxassetid://") or arg:find("http") then
											return false, "Cannot delete remote/asset backgrounds"
										end
										local str8 = fn30() .. "/" .. arg

										local v115, v116 = v89(function()
											if v91(isfile) == "function" and not isfile(str8) then
												v95("File not found")
											end

											delfile(str8)
											v89(delfile, str8 .. v84[165])
											local str9 = str8:gsub("%.png$", ""):gsub("%.jpe?g$", ""):gsub("%.webm$", ""):gsub("%.mp4$", ""):gsub("%.gif$", "")

											if str9 ~= str8 then
												for _, v115 in v93({ "png", "jpg", "jpeg" }) do
													local n32 = 2

													while v91(isfile) == "function" and isfile(str9 .. ".p" .. n32 .. "." .. v115) do
														v89(delfile, str9 .. ".p" .. n32 .. "." .. v115)
														n32 += 1
													end
												end
											end
										end)

										if not v115 then
											return v84[62], v96(v116)
										end
										zenthraMediaApplied[arg] = nil
										return true, arg
									end

									do
										local function fn38(arg)
											local v115 = arg or tbl17.Windows[1]
											if not v115 then
												return nil
											end
											return v115.BgCanvas, v115.Wallpaper, v115.BgVideo
										end

										media.Stop = function(arg)
											media.Seq = media.Seq + 1
											media.Active = false
											local v115, v116, v117 = fn38(arg)

											if v117 then
												v89(function()
													v117:Pause()
												end)

												v117.Visible = false

												v89(function()
													v117.Video = ""
												end)
											end

											if v116 then
												v116.Image = ""
												v116.ImageTransparency = v84[105]
												v116.ImageRectOffset = Vector2.zero
												v116.ImageRectSize = Vector2.zero
												local preload = v116:FindFirstChild("Preload")

												if preload then
													preload:Destroy()
												end
											end

											if v115 then
												v115.Visible = false
											end
										end

										media.SetOpacity = function(arg, arg2)
											media.Opacity = v109.clamp(v97(arg) or 0.5, 0, 1)
											local v115, v116, v117 = fn38(arg2)
											if not v115 then
												return
											end

											if v116 and v116.Image ~= "" then
												v116.ImageTransparency = 1 - media.Opacity
											end

											v115.GroupTransparency = v117 and v117.Visible and v84[105] - media.Opacity or 0

											if media.Active then
												v115.Visible = media.Opacity > 0.004
											end
										end

										media.ShowStatic = function(image, arg)
											media.Stop(arg)
											local v115, v116 = fn38(arg)
											local flag18 = not v115 or not v116

											if not flag18 then
												local v117 = v84[21]
												flag18 = v90(image) ~= v117
											end

											if flag18 or image == "" then
												return
											end
											v115.Visible = true
											v116.Visible = true
											v116.ImageRectOffset = Vector2.zero
											v116.ImageRectSize = Vector2.zero
											v116.Image = image
											v116.ScaleType = v106.ScaleType.Stretch
											media.Active = true
											media.SetOpacity(media.Opacity, arg)
										end

										media.PlayPages = function(arg, arg2, arg3)
											media.Stop(arg3)
											media.Seq = media.Seq + 1
											local seq = media.Seq
											local v115, v116 = fn38(arg3)
											local flag18 = not v115 or not v116 or not arg2

											if not flag18 then
												flag18 = (arg2.count or 0) < 1
											end

											if flag18 then
												return
											end
											local cellW = arg2.cellW
											local cellH = arg2.cellH
											local cols = arg2.cols
											local v117 = v107.create(arg2.count)
											local v118 = v84[108]

											for k, v119 in v93(arg) do
												local counts = arg2.counts and arg2.counts[k] or arg2.count

												for i = 0, counts - 1 do
													v118 += 1
													local tbl20 = {}
													local n32 = v109.floor(i / cols) * cellH
													tbl20[1] = v119
													tbl20[2] = i % cols * cellW
													tbl20[3] = n32
													v117[v118] = tbl20
													if not (arg2.count <= v118) then
														continue
													end
													break
												end

												if not (v118 >= arg2.count) then
													continue
												end
												break
											end

											if v118 == 0 then
												return
											end
											local Folder = v105.new("Folder")
											Folder.Name = "Preload"
											Folder.Parent = v116
											local tbl20 = {}

											for _, v119 in v93(arg) do
												local v120 = v105.new(v84[18])
												v120.Size = v104.fromOffset(1, 1)
												v120.BackgroundTransparency = v84[105]
												v120.ImageTransparency = 0.996
												v120.Image = v119
												v120.Parent = Folder
												tbl20[v119] = v120
											end

											v115.Visible = true
											v116.Visible = true
											v116.Image = v117[1][v84[105]]
											v116.ImageRectSize = Vector2.new(cellW, cellH)
											v116.ImageRectOffset = Vector2.new(v117[1][v84[117]], v117[v84[105]][3])
											v116.ScaleType = v106.ScaleType.Stretch
											media.Active = true
											media.SetOpacity(media.Opacity, arg3)
											if v118 == 1 then
												return
											end
											local v119 = v109.max(0.016666666666666666, (v97(arg2.delayMs) or v84[8]) / v84[89])

											v112.spawn(function()
												local v120 = v84[117]
												local n32 = v110.clock() + v120

												while true do
													if seq == media.Seq and v116.Parent and v110.clock() < n32 then
														local flag19 = true

														for _, v121 in v92(tbl20) do
															if not v121.IsLoaded then
																flag19 = v84[62]
																break
															end
														end

														if not flag19 then
															v112.wait(0.05)
															continue
														end
													end

													break
												end

												if seq ~= media.Seq then
													return
												end
												local n33 = v110.clock() + 3
												local v121 = v84[105]
												local v122 = v117[v84[105]][1]

												while true do
													if seq == media.Seq and v116.Parent then
														v112.wait(v119)

														if seq == media.Seq then
															local n34 = v121 % v118 + v84[105]
															local v123 = v117[n34]
															local v124 = tbl20[v123[1]]

															if not (v123[1] ~= v122 and v124 and not v124.IsLoaded and v110.clock() < n33) then
																if v123[1] ~= v122 then
																	v122 = v123[v84[105]]
																	v116.Image = v122
																end

																v116.ImageRectOffset = Vector2.new(v123[2], v123[3])
																v121 = n34
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
									local seq = media.Seq

									if v90(arg) == "table" then
										arg = arg[1]
									end

									if v90(arg) ~= "string" or arg == "" or arg == v84[144] then
										media.Stop(arg2)
										return
									end

									if arg:find("rbxassetid://") then
										media.ShowStatic(arg, arg2)
										return
									end
									local v115 = zenthraMediaApplied[arg]

									if v115 then
										if v115.kind == v84[157] then
											media.PlayPages(v115.assets, v115.meta, arg2)
										else
											media.ShowStatic(v115.asset, arg2)
										end

										return
									end

									v112.spawn(function()
										if seq ~= media.Seq then
											return
										end
										local str8 = "/" .. arg .. v84[165]
										local str9 = fn30() .. str8

										if v91(isfile) == "function" and isfile(str9) then
											local count, v116 = v89(function()
												return tbl18.Services.Http:JSONDecode(readfile(str9))
											end)

											count = count and v90(v116) == "table" and v116.count

											if count then
												local v117 = v84[74]
												count = v90(v116.pages) == v117
											end

											if count then
												local tbl20 = {}

												for k, page in v93(v116.pages) do
													if seq ~= media.Seq then
														return
													end
													local v117 = fn36(page)
													if not v117 or v117 == "" then
														media.Stop(arg2)
														return
													end
													tbl20[k] = v117
													v112.wait()
												end

												if seq ~= media.Seq then
													return
												end
												zenthraMediaApplied[arg] = { kind = "pages", assets = tbl20, meta = v116 }
												media.PlayPages(tbl20, v116, arg2)
												return
											end
										end

										if seq ~= media.Seq then
											return
										end
										local v116 = fn36(arg)
										if not v116 or v116 == "" then
											media.Stop(arg2)
											return
										end
										zenthraMediaApplied[arg] = { kind = v84[200], asset = v116 }
										media.ShowStatic(v116, arg2)
									end)
								end

								tbl17.Media = media
								tbl18.Media = media
							end

							do
								local function fn30(arg)
									return function(arg2, ...)
										if arg2 == tbl17 then
											return arg(...)
										end
										return arg(arg2, ...)
									end
								end

								tbl17.Window = fn30(function(arg)
									return tbl18.Window.Open(arg)
								end)

								tbl17.Notify = fn30(function(arg, arg2)
									return tbl18.Notify.Push(arg, arg2)
								end)

								tbl17.SetTheme = fn30(function(arg)
									return tbl18.Theme.Set(arg)
								end)

								tbl17.SetAccent = fn30(function(arg)
									return tbl18.Theme.SetAccent(arg)
								end)

								tbl17.ResetTheme = fn30(function()
									return tbl18.Theme.Reset()
								end)

								tbl17.SetNotifyPosition = fn30(function(arg)
									return tbl18.Notify.SetPosition(arg)
								end)

								tbl17.GetNotifyPosition = fn30(function()
									return tbl18.Notify.GetPosition()
								end)

								tbl17.OnBindsChanged = fn30(function(arg)
									return tbl18.Binds.OnChanged(arg)
								end)

								tbl17.SaveConfig = fn30(function()
									tbl18.Config.Save()
								end)

								tbl17.GetFlag = fn30(function(arg)
									return tbl17.Flags[arg]
								end)
							end
						end

						local vl, fn30, fn31, fn32, fn33, fn34, fn35

						do
							local fn36

							do
								local fn37

								do
									do
										do
											do
												vl = {
													Services = {},
													Modules = {},
													Ball = {},
													Court = {},
													Predict = {},
													Render = {},
													Features = {},
													Connections = {},
												}

												do
													local function fn38(arg)
														local v113, v114 = v89(v85.GetService, v85, arg)
														if not v113 or not v114 then
															return nil
														end
														local v115, v116 = v89(tbl18.Env.Clone, v114)

														if v115 and v116 then
															if v89(function()
																return v116.ClassName
															end) then
																return v116
															end
														end

														return v114
													end

													local services = vl.Services
													services.Players = fn38("Players")
													services.Run = fn38(v84[38])
													services.Replicated = fn38("ReplicatedStorage")
													services.Input = fn38(v84[173])
													services.Http = fn38(v84[149])
													services.Lighting = fn38("Lighting")
													services.Workspace = fn38(v84[189])
													services.LocalPlayer = services.Players and services.Players.LocalPlayer
												end
											end

											do
												local function fn38(arg)
													fn29()
													local v113, v114 = v89(arg)
													if v113 then
														return v114
													end
													return nil
												end

												vl.Modules.Physics = fn38(function()
													return require(vl.Services.Replicated.Common.Physics)
												end)

												vl.Modules.Game = fn38(function()
													return require(vl.Services.Replicated.Configuration.Game)
												end)

												vl.Modules.State = fn38(function()
													return require(vl.Services.Replicated.Common.State)
												end)

												vl.Modules.BallClass = fn38(function()
													return require(v85:GetService(v84[196]).Controllers.BallController.Ball)
												end)

												vl.Modules.Knit = fn38(function()
													return require(vl.Services.Replicated.Packages.Knit)
												end)

												vl.Modules.Handlers = fn38(function()
													return require(v85:GetService("ReplicatedFirst").Controllers.GameController.Handlers)
												end)

												vl.Modules.DoMove = fn38(function()
													return require(v85:GetService("ReplicatedFirst").Controllers.GameController.Actions.Binding.Registry.DoMove)
												end)

												vl.Modules.Hitbox = fn38(function()
													return require(vl.Services.Replicated.Tools.Hitbox)
												end)

												vl.Modules.Components = fn38(function()
													return require(v85:GetService("ReplicatedFirst").Controllers.GameController.Components)
												end)

												vl.Modules.Toss = fn38(function()
													return require(v85:GetService("ReplicatedFirst").Controllers.GameController.Actions.Binding.Registry.Toss)
												end)

												vl.Modules.Jump = fn38(function()
													return require(v85:GetService("ReplicatedFirst").Controllers.GameController.Actions.Binding.Registry.Jump)
												end)

												vl.Modules.JumpPhysics = fn38(function()
													return require(v85:GetService("ReplicatedFirst").Controllers.GameController.Actions.Move.Jump.Physics)
												end)

												vl.Modules.Item = fn38(function()
													return require(vl.Services.Replicated.Content.Item)
												end)

												vl.Modules.Promise = fn38(function()
													return require(vl.Services.Replicated.Packages.Promise)
												end)

												vl.Modules.Ranks = fn38(function()
													return require(vl.Services.Replicated.Configuration.Ranks)
												end)

												vl.Modules.Style = fn38(function()
													return require(vl.Services.Replicated.Content.Style)
												end)

												vl.Modules.Rarity = fn38(function()
													return require(vl.Services.Replicated.Configuration.Rarity)
												end)
											end
										end

										do
											do
												vl.Ball.Pool = function()
													local ballClass = vl.Modules.BallClass
													local flag18

													if ballClass then
														local v113 = v84[74]
														flag18 = v90(ballClass.All) == v113
													else
														flag18 = ballClass
													end

													if flag18 then
														return ballClass.All
													end
													local knit = vl.Modules.Knit

													if knit then
														local v113, v114 = v89(function()
															return knit.GetController("BallController")
														end)

														if v113 and v90(v114) == "table" and v90(v114.ActiveBalls) == "table" then
															return v114.ActiveBalls
														end
													end

													return nil
												end

												vl.Ball.Radius = function()
													local game_ = vl.Modules.Game
													local radius = game_ and game_.Physics and game_.Physics.Radius or 1.2835
													local state = vl.Modules.State

													if state then
														local ballSizeMultiplier, v113 = v89(state.get, vl.Services.Replicated, state.Id.Modifier, "BallSizeMultiplier", 1)

														if ballSizeMultiplier and v90(v113) == "number" and v113 > v84[108] then
															radius *= v113
														end
													end

													return radius
												end

												do
													local function fn38(arg)
														local primaryPart = arg.Ball.PrimaryPart
														local velocity = arg.Velocity
														local v113 = v84[198]

														if v91(velocity) ~= v113 then
															velocity = v101.zero
														end

														local game_ = vl.Modules.Game
														local v114 = v101.new(v84[108], -(game_ and game_.Physics and game_.Physics.Gravity or v84[106]) * (v97(arg.GravityMultiplier) or v84[105]), 0)

														if v91(arg.Acceleration) == "Vector3" then
															v114 += arg.Acceleration
														end

														return {
															Object = arg,
															Model = arg.Ball,
															Part = primaryPart,
															Position = primaryPart.Position,
															Velocity = velocity,
															Acceleration = v114,
															Jerk = v91(arg.Jerk) == "Vector3" and arg.Jerk or v101.zero,
															Speed = velocity.Magnitude,
														}
													end

													vl.Ball.Resolve = function()
														local v113 = vl.Ball.Pool()
														if not v113 then
															return nil
														end
														local v114 = vl.Character.Root()
														local position = nil

														if v114 then
															position = v114.Position
														end

														local v115 = nil
														local v116 = nil

														for _, v117 in v92(v113) do
															if v90(v117) == "table" then
																local ball = v117.Ball

																if v91(ball) == "Instance" and ball.Parent and ball.PrimaryPart then
																	if not position then
																		return fn38(v117)
																	end
																	local magnitude = (ball.PrimaryPart.Position - position).Magnitude

																	if not v115 or magnitude < v115 then
																		v115 = magnitude
																		v116 = v117
																	end
																end
															end
														end

														if v116 then
															return fn38(v116)
														end
														return nil
													end
												end
											end

											vl.Ball.OurServeSequence = function()
												local team = vl.Services.LocalPlayer.Team
												if not team then
													return false
												end
												local replicated = vl.Services.Replicated
												local stateValue = vl.Move and vl.Move.StateValue

												if stateValue then
													local v113 = v84[158]
													stateValue = vl.Move.StateValue(v84[63]) == v113
												end

												if stateValue then
													if not flag3 then
														return
													end
													return true
												end

												local attribute = replicated:GetAttribute("ServedByTeam")
												local attribute2 = replicated:GetAttribute("LastHitTeam")
												local attribute3 = replicated:GetAttribute("LastHitType")
												local flag18 = attribute2 == team.Name and v90(attribute3) == "string"

												if flag18 then
													local v113 = v84[158]
													flag18 = v108.find(v108.lower(attribute3), "serve", 1, v113)
												end

												if flag18 then
													return true
												end
												local attribute4 = replicated:GetAttribute("ServedByPlayer")
												local flag19

												if v90(attribute) == "string" and attribute ~= "" then
													flag19 = attribute == team.Name
												else
													local flag20 = v90(attribute4) == "string" and attribute4 ~= ""
													flag19 = false

													if flag20 then
														local v113 = vl.Services.Players:FindFirstChild(attribute4)
														flag19 = v113 ~= nil and v113.Team == team
													end
												end

												if not flag19 then
													return false
												end
												local serveWatch = vl.Ball._serveWatch

												if not serveWatch then
													serveWatch = { key = nil, hitStamp = nil, broken = false }
													vl.Ball._serveWatch = serveWatch
												end

												local attribute5 = replicated:GetAttribute(v84[5])
												local attribute6 = replicated:GetAttribute("ServesInRow")
												local concat = v107.concat
												local tbl19 = {}
												local v113 = v96(attribute4 or "")
												local v114 = v96(attribute or "")
												local v115 = v96(attribute5 or "")
												attribute6 = attribute6 or ""
												local v116 = table.pack(v96(attribute6))
												tbl19[1] = v113
												tbl19[2] = v114
												tbl19[3] = v115

												do
													local values = table.pack(table.unpack(v116, 1, v116.n))
													table.move(values, 1, values.n, 4, tbl19)
												end

												local v117 = concat(tbl19, "|")

												if v117 ~= serveWatch.key then
													serveWatch.key = v117
													serveWatch.hitStamp = replicated:GetAttribute(v84[11])
													serveWatch.broken = false
												end

												if serveWatch.broken then
													return false
												end
												local attribute7 = replicated:GetAttribute(v84[11])
												local flag20 = v90(attribute7) == "number"

												if flag20 then
													local v118 = v84[66]
													flag20 = v90(serveWatch.hitStamp) ~= v118 or attribute7 > serveWatch.hitStamp + 0.0001
												end

												if flag20 then
													local attribute8 = replicated:GetAttribute(v84[58])
													local v118 = v84[21]

													if v90(attribute8) == v118 and attribute8 ~= "" then
														local v119 = vl.Services.Players:FindFirstChild(attribute8)
														if v119 and v119.Team and v119.Team ~= team then
															serveWatch.broken = true
															return false
														end
													end

													local flag21 = v90(attribute2) == "string" and attribute2 ~= "" and attribute2 ~= team.Name and v90(attribute3) == "string"

													if flag21 then
														local v119 = v84[158]
														flag21 = not v108.find(v108.lower(attribute3), "serve", 1, v119)
													end

													if flag21 then
														serveWatch.broken = v84[158]
														return false
													end
												end

												return v84[158]
											end

											vl.Ball.IsIncoming = function()
												local team = vl.Services.LocalPlayer.Team
												if not team then
													return true
												end

												if vl.Ball.OurServeSequence() then
													return v84[62]
												end
												local attribute = vl.Services.Replicated:GetAttribute(v84[109])

												if v90(attribute) == "string" and attribute ~= "" then
													if attribute ~= team.Name then
														return true
													end
													local replicated = vl.Services.Replicated
													local v113 = v84[67]
													return replicated:GetAttribute("LastHitType") == v113
												end

												return true
											end

											vl.Rally = { FrozenUntil = 0, _hooked = false }

											vl.Rally.FreezeTime = function()
												local game_ = vl.Modules.Game
												game_ = game_ and game_.Gamemode
												if v90(game_) ~= "table" then
													return 5
												end
												local handlers = vl.Modules.Handlers
												local gamemode = handlers and handlers.States and handlers.States.Gamemode
												local flag18 = v90(gamemode) == "table" and v90(gamemode.get) == "function"
												local classic = nil

												if flag18 then
													local flag19
													flag19, classic = v89(gamemode.get, gamemode)
													flag19 = flag19 and v90(classic) == "string"
													local v113 = nil

													if not flag19 then
														classic = v113
													end
												end

												classic = classic and game_[classic] or game_.Classic or game_.Casual or game_.Pro
												local flag19 = v90(classic) == "table"

												if flag19 then
													local v113 = v84[66]
													flag19 = v90(classic.FreezeTime) == v113
												end

												if flag19 then
													return classic.FreezeTime
												end
												return v84[178]
											end

											vl.Rally.MarkPoint = function(arg)
												local v113 = v97(arg)

												if not v113 or v113 <= 0 then
													v113 = vl.Rally.FreezeTime()
												end

												local rally = vl.Rally
												local max = v109.max
												local frozenUntil = vl.Rally.FrozenUntil or 0
												local v114 = v84[119]
												rally.FrozenUntil = max(frozenUntil, v110.clock() + v113 + v114)
											end

											vl.Rally.IsFrozen = function()
												if vl.Move and vl.Move.StateValue and vl.Move.StateValue(v84[63]) == true then
													vl.Rally.FrozenUntil = 0
													return false
												end
												return v110.clock() < (vl.Rally.FrozenUntil or 0)
											end

											vl.Rally.Install = function()
												if vl.Rally._hooked then
													return true
												end
												local knit = vl.Modules.Knit
												if not knit or v90(knit.GetService) ~= "function" then
													return false
												end

												local v113, v114 = v89(function()
													return knit.GetService("BallService")
												end)

												if not v113 or v90(v114) ~= "table" then
													return false
												end
												local hitGround = v114.HitGround
												local connect = hitGround and (hitGround.Connect or v99(hitGround) and v99(hitGround).Connect)
												local v115 = v84[199]
												if v90(connect) ~= v115 then
													return v84[62]
												end

												local v116, v117 = v89(connect, hitGround, function(arg, arg2, arg3, arg4)
													vl.Rally.MarkPoint(arg4)
												end)

												if not v116 or not v117 then
													return false
												end
												vl.Rally._hooked = true
												v107.insert(vl.Connections, v117)
												return true
											end

											vl.Character = { _root = nil }

											vl.Character.Root = function()
												local character = vl.Services.LocalPlayer.Character
												if not character or not character.Parent then
													return nil
												end
												local root = vl.Character._root
												if root and root.Parent == character then
													return root
												end
												local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
												vl.Character._root = humanoidRootPart
												return humanoidRootPart
											end

											vl.Court.Net = function()
												local map = v86:FindFirstChild("Map")
												if not map then
													return nil
												end
												local v113 = map:FindFirstChild(v84[169])
												if not v113 then
													return nil
												end
												return v113:FindFirstChild(v84[190])
											end

											vl.Court.FloorAt = function(arg)
												local physics = vl.Modules.Physics
												if not physics then
													return nil
												end
												local flag18, v113 = v89(physics.calculateFloorHeight, arg, v84[158])

												if flag18 then
													local v114 = v84[66]
													flag18 = v90(v113) == v114
												end

												if flag18 then
													return v113
												end
												return nil
											end

											vl.Court.Lines = function()
												local tagged = v85:GetService("CollectionService"):GetTagged(v84[26])

												for _, v113 in v93(tagged) do
													if v113:IsA("BasePart") and v113:IsDescendantOf(v86) then
														return v113
													end
												end

												return nil
											end

											vl.Court.InCourt = function(arg)
												local physics = vl.Modules.Physics
												if not physics then
													return false
												end
												local v113, v114 = v89(physics.isPositionInCourt, arg, nil, v84[105])
												return v113 and v114 == true
											end

											vl.Court.StrictInCourt = function(arg)
												local physics = vl.Modules.Physics
												if not physics or not arg then
													return false
												end
												local v113, v114 = v89(physics.isPositionInCourt, arg, nil, 0)
												return v113 and v114 == true
											end

											vl.Court.IsEnemyScoreSpot = function(arg, arg2)
												local v113 = v97(arg2) or v84[84]
												local physics = vl.Modules.Physics
												local v114 = vl.Court.Lines()
												local localPlayer = vl.Services.LocalPlayer
												if not physics or not v114 or not localPlayer or not arg then
													return v84[62]
												end
												local v115, v116 = v89(physics.isPositionInCourt, arg, nil, 0)
												if not (v115 and v116 == true) then
													return false
												end
												local n32 = v114.Size * 0.5
												local position = v114.Position
												if n32.X - v113 < v109.abs(arg.X - position.X) then
													return false
												end

												if n32.Z - v113 < v109.abs(arg.Z - position.Z) then
													return false
												end
												local v117, v118 = v89(physics.isPointOnTeamSide, localPlayer, arg)
												if not v117 or v118 == true then
													return false
												end
												return v84[158]
											end

											vl.Court.AttackDir = function()
												local v113 = vl.Court.Lines()
												local v114 = vl.Court.Net()
												if not v113 or not v114 then
													return nil
												end
												local z = v114.Position.Z
												local position = v113.Position
												local physics = vl.Modules.Physics
												local localPlayer = vl.Services.LocalPlayer

												if physics and localPlayer and localPlayer.Team and v90(physics.isPointOnTeamSide) == "function" then
													local v115 = v101.new(position.X, position.Y, z + v84[60])
													local v116 = v101.new(position.X, position.Y, z - 10)
													local v117, v118 = v89(physics.isPointOnTeamSide, localPlayer, v115)
													local v119, v120 = v89(physics.isPointOnTeamSide, localPlayer, v116)
													if v117 and v119 and v118 ~= v120 then
														return v118 and -1 or v84[105]
													end
												end

												local v115 = vl.Character.Root()
												local resolve = vl.Ball and vl.Ball.Resolve and vl.Ball.Resolve()
												local z2

												if resolve then
													z2 = resolve.Position.Z
												elseif v115 and v109.abs(v115.Position.Z - z) > 6 then
													vl.Court._homeZ = v115.Position.Z
													z2 = v115.Position.Z
												else
													z2 = vl.Court._homeZ
												end

												if z2 == nil and v115 then
													local z3 = v115.CFrame.LookVector.Z
													if v109.abs(z3) > 0.2 then
														return z3 > 0 and 1 or -1
													end
													z2 = v115.Position.Z
												end

												if z2 == nil then
													return 1
												end
												return z2 < z and 1 or -v84[105]
											end

											vl.Court.EnemyHalf = function(arg)
												local n32 = v97(arg) or 1.5
												local v113 = vl.Court.Lines()
												local v114 = vl.Court.Net()
												local v115 = vl.Character.Root()
												local v116 = vl.Court.AttackDir()
												if not v113 or not v114 or not v115 or not v116 then
													return nil
												end
												local n33 = v113.Size * 0.5
												local position = v113.Position
												local n34 = position.Z + v116 * n33.Z

												return {
													center = position,
													half = n33,
													y = position.Y,
													toEnemy = v116,
													netZ = v114.Position.Z,
													farZ = n34,
													leftEdge = position.X - n33.X,
													rightEdge = position.X + n33.X,
													leftX = position.X - n33.X + n32,
													rightX = position.X + n33.X - n32,
													backZ = n34 - v116 * n32,
													inset = n32,
												}
											end

											vl.Court.ReachFrom = function(arg)
												local localPlayer = vl.Services.LocalPlayer
												if not localPlayer.Character then
													return nil
												end
												local v113, v114 = v89(localPlayer.DistanceFromCharacter, localPlayer, arg)
												if v113 and v90(v114) == "number" then
													return v114
												end
												return nil
											end

											vl.Predict.PositionAt = function(arg, arg2)
												local physics = vl.Modules.Physics
												if physics then
													return physics.calculateProjectilePosition(arg.Position, arg.Velocity, arg.Acceleration, arg2, arg.Jerk)
												end
												return arg.Position + arg.Velocity * arg2 + arg.Acceleration * 0.5 * arg2 * arg2
											end

											do
												local function fn38(arg, arg2, arg3, arg4)
													local v113 = v84[108]
													local v114 = arg4

													while v114 <= arg3 do
														if vl.Predict.PositionAt(arg, v114).Y <= arg2 then
															for i = 1, v84[186] do
																local n32 = (v113 + v114) * 0.5

																if not (vl.Predict.PositionAt(arg, n32).Y <= arg2) then
																	v113 = n32
																else
																	v114 = n32
																end
															end

															return v114
														end

														v113 = v114
														v114 += arg4
													end

													return nil
												end

												vl.Predict.TimeToHeight = function(arg, arg2, arg3)
													if not arg or v91(arg2) ~= "number" then
														return nil
													end
													arg3 = arg3 or 3
													if arg.Position.Y <= arg2 and arg.Velocity.Y <= 0 then
														return nil
													end
													return fn38(arg, arg2, arg3, 0.04)
												end

												vl.Predict.Landing = function(arg, arg2)
													local n32 = arg2 or 3
													local v113 = vl.Court.FloorAt(arg.Position)
													if not v113 then
														return nil
													end
													local v114 = vl.Ball.Radius()
													local n33 = v113 + v114
													if arg.Position.Y <= n33 and arg.Velocity.Y <= v84[108] then
														return nil
													end
													local v115 = fn38(arg, n33, n32, v84[146])
													if not v115 then
														return nil
													end
													local v116 = vl.Predict.PositionAt(arg, v115)
													local v117 = vl.Court.FloorAt(v101.new(v116.X, arg.Position.Y + 1, v116.Z))

													if v117 and v109.abs(v117 - v113) > 0.5 then
														local v118 = fn38(arg, v117 + v114, n32, 0.04)

														if v118 then
															v116 = vl.Predict.PositionAt(arg, v118)
															v113 = v117
															v115 = v118
														end
													end

													return { Position = v116, Time = v115, FloorY = v113, InCourt = vl.Court.InCourt(v116) }
												end
											end
										end

										vl.Predict.DigContact = function(arg, arg2, arg3)
											local n32 = arg3 or 3
											arg2 = arg2 or 2.6
											local v113 = vl.Court.FloorAt(arg.Position)
											if not v113 then
												return nil
											end
											local v114 = vl.Ball.Radius()
											local v115 = vl.Predict.TimeToHeight(arg, v113 + v109.max(arg2, v114 + 0.4), n32)
											if not v115 then
												return vl.Predict.Landing(arg, n32)
											end
											local v116 = vl.Predict.PositionAt(arg, v115)
											local v117 = vl.Court.FloorAt(v101.new(v116.X, arg.Position.Y + v84[105], v116.Z))

											if v117 and v109.abs(v117 - v113) > 0.5 then
												local v118 = vl.Predict.TimeToHeight(arg, v117 + v109.max(arg2, v114 + 0.4), n32)

												if v118 then
													v116 = vl.Predict.PositionAt(arg, v118)
													v115 = v118
													v113 = v117
												end
											end

											return { Position = v116, Time = v115, FloorY = v113, InCourt = vl.Court.InCourt(v116) }
										end

										vl.Predict.SpikeContact = function(arg, arg2)
											local v113 = arg2 or v84[94]
											if not arg then
												return nil
											end
											local v114 = vl.Court.FloorAt(arg.Position)
											if not v114 then
												return nil
											end
											local n32 = v114 + v109.clamp(vl.Serve.JumpHeight() * 0.72, 7.5, 14)
											local v115 = vl.Predict.TimeToHeight(arg, n32, v113)

											if not v115 then
												if arg.Position.Y <= n32 + v84[105] then
													local v116 = vl.Predict.PositionAt(arg, 0.08)
													return { Position = v101.new(v116.X, v114, v116.Z), Time = 0.08, FloorY = v114, ContactY = n32 }
												end
												return nil
											end

											local v116 = vl.Predict.PositionAt(arg, v115)
											return { Position = v101.new(v116.X, v114, v116.Z), Time = v115, FloorY = v114, ContactY = n32 }
										end

										vl.Predict.Arc = function(arg, arg2, arg3)
											local n32 = arg3 or 24
											local v113 = v107.create(n32 + 1)

											for i = 0, n32 do
												v113[i + v84[105]] = vl.Predict.PositionAt(arg, arg2 * i / n32)
											end

											return v113
										end

										do
											local render = vl.Render
											local v113 = v84[74]
											render.Available = v91(Drawing) == v113 or v91(Drawing) == "userdata"
										end
									end

									do
										do
											do
												vl.Render.Registry = {}

												do
													local index = {}
													index.__index = index

													index.new = function(arg, arg2)
														return v100({ Kind = arg, Defaults = arg2 or {}, Items = {}, Used = 0 }, index)
													end

													index.Begin = function(arg)
														arg.Used = 0
													end

													index.Next = function(arg)
														if n28(1312) >= -17 then
															arg.Used = arg.Used + 1
															local v113 = arg.Items[arg.Used]

															if not v113 then
																v113 = Drawing.new(arg.Kind)

																for k, default in v92(arg.Defaults) do
																	v113[k] = default
																end

																arg.Items[arg.Used] = v113
																v107.insert(vl.Render.Registry, v113)
															end

															return v113
														end

														while true do
														end
													end

													index.Finish = function(arg)
														for i = arg.Used + 1, #arg.Items do
															arg.Items[i].Visible = false
														end
													end

													index.HideAll = function(arg)
														for _, item in v93(arg.Items) do
															item.Visible = false
														end

														arg.Used = 0
													end

													vl.Render.Pools = {
														Lines = index.new(v84[19], {
															Thickness = 1,
															Transparency = 1,
															Visible = v84[62],
														}),
														Texts = index.new(v84[116], {
															Size = 13,
															Center = true,
															Outline = true,
															Transparency = 1,
															Visible = false,
														}),
													}
												end
											end

											vl.Render.Project = function(arg)
												local currentCamera = v86.CurrentCamera
												if not currentCamera then
													return nil
												end
												local v113 = currentCamera:WorldToViewportPoint(arg)
												if v113.Z <= 0 then
													return nil
												end
												return Vector2.new(v113.X, v113.Y)
											end

											vl.Render.Polyline = function(arg, color, thickness)
												local lines = vl.Render.Pools.Lines
												local v113 = nil

												for _, v114 in v93(arg) do
													local v115 = vl.Render.Project(v114)

													if v113 and v115 then
														local v116 = lines:Next()
														v116.From = v113
														v116.To = v115
														v116.Color = color
														v116.Thickness = thickness or 1
														v116.Visible = true
														v113 = v115
													else
														v113 = v115
													end
												end
											end

											do
												local function fn38(arg, arg2, arg3)
													local v113 = v107.create(arg3 + 1)

													for i = 0, arg3 do
														local n32 = i / arg3 * v109.pi * 2
														v113[i + v84[105]] = arg + v101.new(v109.cos(n32) * arg2, 0, v109.sin(n32) * arg2)
													end

													return v113
												end

												vl.Render.GroundRing = function(arg, arg2, arg3, arg4, arg5)
													vl.Render.Polyline(fn38(arg, arg2, arg5 or 28), arg3, arg4)
												end
											end
										end

										vl.Render.Label = function(arg, text, color)
											local v113 = vl.Render.Project(arg)
											if not v113 then
												return
											end
											local v114 = vl.Render.Pools.Texts:Next()
											v114.Text = text
											v114.Position = v113
											v114.Color = color
											v114.Visible = v84[158]
										end

										fn30 = function(arg, arg2)
											local flags = tbl17.Flags

											if v87 then
												local v113 = v98(v87(), "__ZenthraFlags")
												local v114 = v84[74]

												if v90(v113) == v114 then
													flags = v113
												end
											end

											local value = flags[arg]
											local v113 = v84[74]

											if v90(value) == v113 and value.Value ~= nil then
												value = value.Value
											end

											if value == nil then
												return arg2
											end
											return value
										end

										vl.Features.Prediction = function(arg)
											local n32 = v97(fn30("vl_pred_horizon", 3)) or 3
											local v113 = vl.Predict.Landing(arg, n32)
											local vlPredColorIn = v113 ~= nil and v113.InCourt and fn30("vl_pred_color_in", v103.fromRGB(90, v84[193], 120)) or fn30("vl_pred_color_out", v103.fromRGB(235, v84[137], v84[137]))

											if fn30("vl_pred_arc", v84[158]) then
												vl.Render.Polyline(vl.Predict.Arc(arg, v113 and v113.Time or n32, 24), vlPredColorIn, 1)
											end

											if not v113 then
												return
											end

											if fn30(v84[65], true) then
												local v114 = v101.new(v113.Position.X, v113.FloorY + 0.1, v113.Position.Z)
												vl.Render.GroundRing(v114, v84[91], vlPredColorIn, v84[117])
												vl.Render.GroundRing(v114, 1, vlPredColorIn, 1, 16)
											end

											if fn30("vl_pred_readout", v84[158]) then
												local v114 = vl.Court.ReachFrom(v113.Position)
												local v115 = v108.format("%.2fs", v113.Time)

												if v114 then
													v115 ..= v108.format("  |  %.0f studs", v114)
												end

												if not v113.InCourt then
													v115 ..= "  |  OUT"
												end

												vl.Render.Label(v113.Position + v101.new(0, 3, 0), v115, vlPredColorIn)
											end
										end

										vl.Reach = { Normal = 20, Dive = 30 }
										vl.Move = {}

										do
											local function stateValue(arg)
												local handlers = vl.Modules.Handlers
												if not handlers then
													return nil
												end
												local v113 = handlers.States[arg]

												if v90(v113) ~= "table" or v90(v113.get) ~= "function" then
													if n24 >= 4072 then
														while v84[158] do
														end
													end

													return nil
												end

												local v114, v115 = v89(v113.get, v113)
												if v114 then
													return v115
												end
												return nil
											end

											vl.Move.StateValue = stateValue

											vl.Move.Request = function(arg, arg2, arg3)
												local doMove = vl.Modules.DoMove
												local flag18 = not doMove

												if not flag18 then
													local v113 = v84[199]
													flag18 = v90(doMove.onMoveRequest) ~= v113
												end

												if flag18 then
													return v84[62]
												end
												return (v89(doMove.onMoveRequest, { ActionName = arg, IsAerial = arg2, InputState = arg3, Metadata = {} }))
											end

											vl.Move.Perform = function(arg, arg2, arg3)
												if not vl.Move.Request(arg, arg2, v106.UserInputState.Begin) then
													return false
												end

												v112.delay(arg3 or 0.06, function()
													vl.Move.Request(arg, arg2, v106.UserInputState.End)
												end)

												return true
											end

											vl.Move.Ready = function(arg, arg2)
												if stateValue("IsPlaying") ~= true then
													return false
												end

												if stateValue("IsStunned") == true then
													return false
												end
												local flag18 = not arg2

												if flag18 then
													local v113 = v84[158]
													flag18 = stateValue(v84[72]) == v113
												end

												if flag18 then
													return false
												end

												if stateValue("IsServing") == true then
													return false
												end
												return stateValue("IsJumping") == arg
											end

											vl.Move.SetPower = function(arg, arg2)
												local v113 = v97(arg)
												if not v113 then
													return false
												end
												arg2 = arg2 or vl.Services.LocalPlayer.Character
												if not arg2 or v90(arg2.SetAttribute) ~= "function" then
													return false
												end
												return v89(arg2.SetAttribute, arg2, "Power", v109.clamp(v113, 0, 1))
											end

											vl.Move.Force = function(arg, arg2, arg3)
												local knit = vl.Modules.Knit
												if not knit then
													return false
												end

												local v113, v114 = v89(function()
													return knit.GetController("GameController")
												end)

												if not v113 or v90(v114) ~= "table" or v90(v114.DoMove) ~= "function" then
													return false
												end

												local function fn38(arg4)
													v89(function()
														v114:DoMove({ ActionName = arg, IsAerial = arg2, InputState = arg4, Metadata = {}, IsForce = true })
													end)
												end

												v112.spawn(function()
													if arg3 ~= nil then
														vl.Move.SetPower(arg3)
													end

													fn38(v106.UserInputState.Begin)
													v112.wait(0.06)
													fn38(v106.UserInputState.End)
												end)

												return true
											end

											vl.Move.TouchedLast = function()
												local attribute = vl.Services.Replicated:GetAttribute("LastHitter")
												if attribute == nil or attribute == "" then
													return false
												end

												if attribute ~= vl.Services.LocalPlayer.Name then
													return false
												end
												local replicated = vl.Services.Replicated
												local v113 = v84[67]
												return replicated:GetAttribute("LastHitType") ~= v113
											end

											vl.Move.Allowed = function(arg, arg2)
												local physics = vl.Modules.Physics
												if not physics then
													return false
												end

												if vl.Move.TouchedLast() then
													return v84[62]
												end
												local v113, v114 = v89(physics.canInteract, vl.Services.LocalPlayer, arg, arg2)
												return v113 and v114 ~= false
											end

											vl.Rec = { LastAttempt = 0 }

											vl.Rec.IsDeadBall = function(arg)
												if vl.Rally.IsFrozen() then
													return true
												end

												if not arg then
													return true
												end
												local v113 = vl.Predict.Landing(arg, v84[91])
												if v113 and v113.InCourt == false then
													return true
												end
												return false
											end

											vl.Rec.CanReceive = function(arg)
												if not arg then
													return false
												end

												if vl.Rally.IsFrozen() then
													return false
												end

												if vl.Ball.OurServeSequence() then
													return false
												end
												local v113 = v84[158]
												if fn30("vl_rec_ignore_dead", true) == v113 and vl.Rec.IsDeadBall(arg) then
													return false
												end
												local v114 = v84[158]
												if fn30("vl_rec_incoming_only", true) == v114 and not vl.Ball.IsIncoming() then
													return false
												end
												local team = vl.Services.LocalPlayer.Team
												local attribute = vl.Services.Replicated:GetAttribute(v84[109])
												local attribute2 = vl.Services.Replicated:GetAttribute(v84[1])

												if team and attribute == team.Name and v90(attribute2) == "string" then
													if v108.find(v108.lower(attribute2), "serve", v84[105], true) then
														return v84[62]
													end
												end

												return true
											end

											vl.Rec.Choose = function(arg)
												local vlRecMove = fn30("vl_rec_move", "Auto")
												if vlRecMove == "Bump" or vlRecMove == "Set" then
													return vlRecMove
												end

												if v84[50] <= arg.Speed then
													return "Bump"
												end
												local v113 = vl.Court.FloorAt(arg.Position)
												if (v113 and arg.Position.Y - v113 or v109.huge) <= 6 then
													return "Bump"
												end
												return "Set"
											end

											vl.Rec.FaceForMove = function(arg)
												if (arg == v84[23] or arg == v84[164]) and fn30("vl_set_aim", false) == true then
													vl.Aim.Face(fn30("vl_set_aim_mode", "Teammate"))
												end
											end

											vl.Rec.TryJumpSet = function(arg)
												local v113 = v84[158]
												if fn30("vl_rec_jump_set", true) ~= v113 then
													return v84[62]
												end
												local v114 = v84[158]
												if vl.Move.StateValue(v84[140]) ~= v114 then
													return false
												end

												if vl.Dive.OwnsBall(arg) then
													return v84[62]
												end

												if not vl.Rec.CanReceive(arg) then
													return false
												end
												local attribute = vl.Services.Replicated:GetAttribute(v84[1])
												local attribute2 = vl.Services.Replicated:GetAttribute("LastHitTeam")
												local team = vl.Services.LocalPlayer.Team
												if team and attribute2 == team.Name and (attribute == "Set" or attribute == v84[164]) then
													return false
												end
												local v115 = vl.Court.FloorAt(arg.Position)
												if (v115 and arg.Position.Y - v115 or 0) < 7 then
													return false
												end

												if v84[50] <= arg.Speed then
													return false
												end
												local v116 = vl.Court.ReachFrom(arg.Position)
												local v117 = v109.min(v97(fn30("vl_rec_range", 14)) or v84[73], vl.Reach.Normal)
												if not v116 or v116 > v117 then
													return false
												end

												if not vl.Move.Ready(true, true) then
													return v84[62]
												end

												if not vl.Move.Allowed("JumpSet", arg.Position) then
													return v84[62]
												end
												vl.Rec.FaceForMove("JumpSet")
												if vl.Move.Force("JumpSet", true) then
													vl.Rec.LastAttempt = v110.clock()
													return true
												end
												return v84[62]
											end

											vl.Rec.Step = function(arg)
												local v113 = v110.clock()
												if v113 - vl.Rec.LastAttempt < v84[13] then
													return
												end

												if vl.Dive.OwnsBall(arg) then
													return
												end

												if not vl.Rec.CanReceive(arg) then
													return
												end

												if arg.Speed < (v97(fn30("vl_rec_min_speed", 8)) or v84[84]) then
													return
												end

												if vl.Move.StateValue("IsJumping") == true then
													vl.Rec.TryJumpSet(arg)
													return
												end
												local v114 = vl.Court.ReachFrom(arg.Position)
												local v115 = v109.min(v97(fn30("vl_rec_range", 14)) or 14, vl.Reach.Normal)
												if not v114 or v114 > v115 then
													return
												end

												if not vl.Move.Ready(false) then
													return
												end
												local v116 = vl.Rec.Choose(arg)
												if not vl.Move.Allowed(v116, arg.Position) then
													return
												end
												vl.Rec.FaceForMove(v116)

												if vl.Move.Perform(v116, false) then
													vl.Rec.LastAttempt = v113
												end
											end

											vl.Aim = {}

											vl.Aim.FacePoint = function(arg)
												local v113 = vl.Character.Root()
												if not v113 or not arg then
													return
												end
												local v114 = v101.new(arg.X - v113.Position.X, 0, arg.Z - v113.Position.Z)
												if v114.Magnitude < 0.1 then
													return
												end
												v113.CFrame = v102.lookAt(v113.Position, v113.Position + v114.Unit)
											end

											vl.Aim.Antennas = function()
												local tbl19 = {}
												local v113 = v86:FindFirstChild(v84[31])
												if not v113 then
													return tbl19
												end

												for _, descendant in v93(v113:GetDescendants()) do
													if descendant:IsA(v84[24]) and v108.lower(descendant.Name) == "antenna" then
														v107.insert(tbl19, descendant)
													end
												end

												return tbl19
											end

											vl.Aim.ClosestAntenna = function()
												local v113 = vl.Character.Root()
												if not v113 then
													return nil
												end
												local huge = v109.huge
												local position = nil

												for _, v114 in v93(vl.Aim.Antennas()) do
													local magnitude = v101.new(v114.Position.X - v113.Position.X, v84[108], v114.Position.Z - v113.Position.Z).Magnitude

													if magnitude < huge then
														position = v114.Position
														huge = magnitude
													end
												end

												return position
											end

											vl.Aim.SideTarget = function(arg)
												local v113 = vl.Character.Root()
												local v114 = vl.Court.Net()
												local v115 = vl.Court.Lines()
												if not v113 or not v114 then
													return nil
												end
												local v116 = vl.Aim.Antennas()

												if #v116 >= 2 then
													v107.sort(v116, function(arg2, arg3)
														return arg2.Position.X < arg3.Position.X
													end)

													return (arg == "Left" and v116[v84[105]] or v116[#v116]).Position
												end

												if v115 then
													local n32 = v115.Size * 0.5
													return v101.new(arg == "Left" and v115.Position.X - n32.X or v115.Position.X + n32.X, v113.Position.Y, v114.Position.Z)
												end
												return v101.new(v114.Position.X + (arg == v84[56] and -1 or 1) * 18, v113.Position.Y, v114.Position.Z)
											end

											vl.Aim.TeammateTarget = function()
												local v113 = vl.Character.Root()
												local v114 = vl.Court.Net()
												local team = vl.Services.LocalPlayer.Team
												if not v113 or not v114 or not team then
													return nil
												end
												local huge = v109.huge
												local position = nil

												for _, player in v93(team:GetPlayers()) do
													if player ~= vl.Services.LocalPlayer then
														local character = player.Character
														character = character and character.PrimaryPart

														if character then
															local n32 = v109.abs(character.Position.Z - v114.Position.Z) + v109.abs(character.Position.X - v114.Position.X) * 0.15

															if n32 < huge then
																position = character.Position
																huge = n32
															end
														end
													end
												end

												return position
											end

											vl.Aim.Target = function(arg)
												local str8 = arg or "Teammate"
												if str8 == v84[20] then
													return vl.Aim.ClosestAntenna() or vl.Aim.SideTarget("Right")
												end

												if str8 == v84[56] or str8 == "Right" then
													return vl.Aim.SideTarget(str8)
												end
												return vl.Aim.TeammateTarget() or vl.Aim.ClosestAntenna() or vl.Aim.SideTarget(v84[76])
											end

											vl.Aim.Face = function(arg)
												local v113 = vl.Aim.Target(arg)

												if v113 then
													vl.Aim.FacePoint(v113)
												else
													vl.AutoPlay.FaceNet()
												end
											end

											vl.Aim.ClosestSideline = function()
												local v113 = vl.Character.Root()
												local v114 = vl.Court.EnemyHalf(1.5)
												if not v113 or not v114 then
													return nil
												end
												local n32 = v114.netZ + (v114.farZ - v114.netZ) * v84[52]
												local v115

												if v114.toEnemy > 0 then
													v115 = v109.min(n32, v114.backZ)
												else
													v115 = v109.max(n32, v114.backZ)
												end

												local v116 = v101.new(v114.leftX, v114.y, v115)
												local v117 = v101.new(v114.rightX, v114.y, v115)
												local y = v114.y
												local backZ = v114.backZ
												local v118 = v101.new(v109.clamp(v113.Position.X, v114.leftX, v114.rightX), y, backZ)
												local n33 = v114.rightEdge - v114.leftEdge
												local n34 = v84[45]

												if n33 > 1 then
													n34 = (v113.Position.X - v114.leftEdge) / n33
												end

												if n34 <= v84[2] then
													return v116
												end

												if v84[51] <= n34 then
													return v117
												end
												return v118
											end

											vl.Aim.ClosestCutLine = function()
												local v113 = vl.Character.Root()
												local v114 = vl.Court.EnemyHalf(1.5)
												if not v113 or not v114 then
													return nil
												end
												local n32 = v114.netZ + (v114.farZ - v114.netZ) * 0.3
												local n33 = v114.rightEdge - v114.leftEdge
												local n34 = 0.5

												if n33 > 1 then
													n34 = (v113.Position.X - v114.leftEdge) / n33
												end

												if n34 <= v84[45] then
													return v101.new(v114.leftX, v114.y, n32)
												end
												return v101.new(v114.rightX, v114.y, n32)
											end

											vl.Aim.LineShotActive = false
											vl.Aim.LineShotResetAt = 0
											vl.Aim.HoldMode = nil
											vl.Aim._wasPlaying = v84[62]

											vl.Aim.ResetLineShot = function()
												vl.Aim.LineShotActive = false
												vl.Aim.LineShotResetAt = v84[108]
												vl.Aim.HoldMode = nil
												vl.Aim.HoldS = nil

												if vl.Spike then
													vl.Spike.AimTarget = nil
												end

												local character = vl.Services.LocalPlayer.Character
												character = character and character:FindFirstChildOfClass("Humanoid")

												if character then
													character.AutoRotate = v84[158]
												end
											end

											vl.Aim.ScheduleLineShotReset = function(arg)
												vl.Aim.LineShotActive = true
												vl.Aim.LineShotResetAt = v110.clock() + (v97(arg) or 0.15)
												local character = vl.Services.LocalPlayer.Character
												character = character and character:FindFirstChildOfClass("Humanoid")

												if character then
													character.AutoRotate = false
												end
											end

											vl.Aim.HoldSpikeAim = function()
												if vl.Aim.LineShotActive ~= v84[158] then
													return
												end
												local aimTarget = vl.Spike and vl.Spike.AimTarget
												if not aimTarget then
													return
												end

												if vl.Aim.HoldMode == "s_corner" and vl.PerfectCorner and v90(vl.PerfectCorner.Solve) == "function" then
													vl.PerfectCorner.Solve(aimTarget)
												end

												vl.Serve.FaceTarget(aimTarget)
												vl.Aim.ApplyLineShotTilt(aimTarget, vl.Aim.HoldMode)
											end

											vl.Aim.CourtInward = function(arg)
												local v113 = vl.Court.EnemyHalf(1.5)
												if not v113 or not arg then
													return v101.new()
												end
												local n32 = (v113.leftX + v113.rightX) * 0.5 - arg.X
												if v109.abs(n32) < 0.5 then
													return v101.new()
												end
												return v101.new(n32 > 0 and v84[105] or -v84[105], 0, v84[108])
											end

											vl.Aim.BackTiltScale = function()
												local v113 = vl.Character.Root()
												local v114 = vl.Court.Net()
												if not v113 or not v114 then
													return 1
												end
												return v109.clamp((v109.abs(v113.Position.Z - v114.Position.Z) - 6) / 16, v84[108], 1)
											end

											vl.Aim.WasdMove = function(arg, arg2)
												local v113 = vl.Character.Root()
												if not v113 or not arg then
													return nil
												end
												local v114 = v101.new(arg.X - v113.Position.X, v84[108], arg.Z - v113.Position.Z)
												if v114.Magnitude < v84[110] then
													return nil
												end
												local unit = v114.Unit
												arg2 = arg2 or "s_in"
												local v115 = vl.Aim.CourtInward(arg)
												local v116 = v101.new(-v115.X, v84[108], v84[108])
												local v117 = vl.Aim.BackTiltScale()

												if arg2 ~= "w" then
													if arg2 == "w_side" then
														unit += v116 * v84[47]
													elseif arg2 == "s_side" then
														unit = -unit * v117 + v116 * v84[70]
													elseif arg2 == "s_corner" then
														local holdS = vl.Aim.HoldS

														if v90(holdS) == "number" then
															v117 = holdS
														end

														local v118 = v109.clamp(v117, -v84[105], 1)

														if v118 >= 0 then
															unit = -unit * v118
														else
															unit *= -v118
														end
													else
														unit = -unit * v117 + v115 * 0.28 * v117
													end
												end

												if unit.Magnitude < 0.05 then
													return v101.new()
												end
												return unit.Unit
											end

											vl.Aim.LineShotMode = function(arg)
												local v113 = vl.Court.EnemyHalf(1.5)
												local v114 = vl.Character.Root()
												local flag18 = vl.Court.Net()
												if not v113 or not arg or not v114 then
													return "s_in"
												end
												local flag19 = v109.abs(arg.Z - v113.backZ) <= 2.5
												flag18 = flag18 and v109.abs(v114.Position.Z - flag18.Position.Z) <= 14
												if flag19 then
													return "s_in"
												end

												if flag18 then
													return "w_side"
												end
												return "s_side"
											end

											vl.Aim.ApplyLineShotTilt = function(arg, arg2)
												if not vl.Character.Root() or not arg then
													return
												end
												local v113 = vl.Aim.WasdMove(arg, arg2 or "s_in")
												if not v113 then
													return
												end

												if v113.Magnitude < 0.05 then
													v113 = v101.new()
												end

												local humanoid = vl.AutoPlay and vl.AutoPlay.Humanoid and vl.AutoPlay.Humanoid()

												if not humanoid then
													local character = vl.Services.LocalPlayer.Character
													humanoid = character and character:FindFirstChildOfClass("Humanoid")
												end

												if humanoid then
													v89(function()
														humanoid:Move(v113, v84[62])
													end)
												end

												local handlers = vl.Modules.Handlers

												if handlers and v90(handlers.Values) == "table" then
													handlers.Values.TiltDirection = v113 + v101.new(0, v84[105], 0)
												end

												if vl.Spike then
													vl.Spike.CutUntil = v109.max(vl.Spike.CutUntil or 0, v110.clock() + 0.2)
												end
											end

											vl.Aim.FaceLineShot = function()
												local v113 = v84[158]
												if fn30("vl_line_shot", false) ~= v113 then
													return v84[62]
												end

												if vl.Aim.SpikeAssistBlocked() then
													return v84[62]
												end
												local v114 = vl.Aim.ClosestSideline()
												if not v114 then
													return false
												end

												if vl.Spike then
													vl.Spike.AimTarget = v114
												end

												local v115 = vl.Aim.LineShotMode(v114)
												vl.Aim.HoldMode = v115
												vl.Serve.FaceTarget(v114)
												vl.Aim.ApplyLineShotTilt(v114, v115)
												vl.Aim.ScheduleLineShotReset(0.28)
												return true
											end

											vl.Aim.MarkReceiveMove = function()
												vl.Aim._blockLineShot = true
												local v113 = v84[47]
												vl.Aim._suppressLineShotUntil = v110.clock() + v113
												if vl.Aim._blockLineShotClearing then
													return
												end
												vl.Aim._blockLineShotClearing = true

												v112.defer(function()
													local flag18 = v91(v87) == "function" and v98(v87(), "__VL") or nil

													if flag18 and flag18.Aim then
														flag18.Aim._blockLineShot = false
														flag18.Aim._blockLineShotClearing = v84[62]
													end
												end)
											end

											vl.Aim.SpikeAssistEnabled = function()
												local v113 = v84[158]
												return fn30("vl_line_shot", false) == v113 or fn30("vl_perfect_corner", false) == true or fn30("vl_auto_cut", false) == true
											end

											vl.Aim.StepLineShot = function()
												if not vl.Aim.SpikeAssistEnabled() then
													local lineShotActive = vl.Aim.LineShotActive

													if not lineShotActive then
														lineShotActive = (vl.Aim.LineShotResetAt or 0) > 0
													end

													if lineShotActive then
														vl.Aim.ResetLineShot()
													end

													vl.Aim._wasPlaying = vl.Move.StateValue("IsPlaying") == true or vl.Move.StateValue("IsServing") == true
													return
												end

												local wasPlaying = vl.Move.StateValue("IsPlaying") == true or vl.Move.StateValue(v84[63]) == true

												if vl.Aim._wasPlaying and not wasPlaying then
													vl.Aim.ResetLineShot()
												elseif vl.Join and v90(vl.Join.RoundOver) == "function" and vl.Join.RoundOver() then
													vl.Aim.ResetLineShot()
												end

												vl.Aim._wasPlaying = wasPlaying

												if vl.Aim.LineShotActive then
													vl.Aim.HoldSpikeAim()
												end

												local lineShotActive = vl.Aim.LineShotActive

												if lineShotActive then
													lineShotActive = (vl.Aim.LineShotResetAt or v84[108]) > 0
												end

												if lineShotActive then
													local lineShotResetAt = vl.Aim.LineShotResetAt
													lineShotActive = v110.clock() >= lineShotResetAt
												end

												if lineShotActive then
													vl.Aim.ResetLineShot()
												end
											end

											vl.Aim.UninstallManualLineShot = function()
												local doMove = vl.Modules.DoMove
												if not doMove then
													vl.Aim._lineHooked = false
													return
												end

												if v90(doMove._vlLineShotOriginal) == "function" then
													doMove.onMoveRequest = doMove._vlLineShotOriginal
												else
													local onMoveRequest = doMove.onMoveRequest

													for i = 1, 8 do
														if v90(onMoveRequest) == "function" then
															local flag18 = v90(v111) == "table" and v90(v111.getupvalue) == "function"
															local flag19 = false

															if flag18 then
																for i2 = 1, 8 do
																	local v113, v114, v115 = v89(v111.getupvalue, onMoveRequest, i2)

																	if not (not v113 or v114 == nil) then
																		if (v114 == "original" or v114 == "prev") and v90(v115) == "function" then
																			flag19 = v84[158]
																			onMoveRequest = v115
																			break
																		else
																			continue
																		end
																	end

																	break
																end
															end

															if flag19 then
																continue
															end
														end

														break
													end

													doMove.onMoveRequest = onMoveRequest
												end

												doMove._vlLineShotWrapped = nil
												doMove._vlLineShotOriginal = nil
												vl.Aim._lineHooked = false
											end

											vl.Aim.SpikeAssistBlocked = function()
												local v113 = v84[158]
												if vl.Move.StateValue("IsJumping") == v113 then
													return v84[62]
												end

												if vl.Aim._blockLineShot == v84[158] then
													return true
												end
												return v110.clock() < (vl.Aim._suppressLineShotUntil or 0)
											end

											vl.Aim.InstallManualLineShot = function()
												local doMove = vl.Modules.DoMove
												if not doMove or v90(doMove.onMoveRequest) ~= "function" then
													return false
												end
												vl.Aim.UninstallManualLineShot()
												local onMoveRequest = doMove.onMoveRequest

												doMove.onMoveRequest = function(arg)
													local flag18 = v91(v87) == "function" and v98(v87(), "__VL") or nil
													local aim = flag18 and flag18.Aim

													if aim then
														local v113 = v84[74]
														aim = v90(arg) == v113
													end

													if aim then
														local actionName = arg.ActionName

														if actionName == "Bump" or actionName == "Set" or actionName == "JumpSet" then
															flag18.Aim.MarkReceiveMove()
														elseif actionName == "Spike" and (arg.InputState == v106.UserInputState.Begin or arg.InputState == v106.UserInputState.End) and flag18.Move.StateValue("IsJumping") == true then
															local resolve = flag18.Ball and flag18.Ball.Resolve and flag18.Ball.Resolve()

															if not (flag18.PerfectCorner and flag18.PerfectCorner.Face and flag18.PerfectCorner.Face()) then
																if not flag18.Aim.FaceLineShot() then
																	if resolve and flag18.Spike and flag18.Spike.ShouldCut and flag18.Spike.ShouldCut(resolve) then
																		flag18.Spike.PrepareAim(resolve)
																	end
																end
															end
														end
													end

													local v113 = v107.pack(onMoveRequest(arg))
													return v107.unpack(v113, 1, v113.n)
												end

												doMove._vlLineShotOriginal = onMoveRequest
												doMove._vlLineShotWrapped = true
												vl.Aim._lineHooked = true
												return true
											end

											vl.PerfectCorner = {}

											vl.PerfectCorner.Candidates = function()
												local v113 = vl.Court.EnemyHalf(0.15)
												if not v113 then
													return {}
												end
												local tbl19 = {}
												local v114 = v101.new(v113.leftX, v113.y, v113.backZ)
												local new = v101.new
												local rightX = v113.rightX
												local y = v113.y
												local backZ = v113.backZ
												tbl19[1] = v114

												do
													local values = table.pack(new(rightX, y, backZ))
													table.move(values, 1, values.n, 2, tbl19)
												end

												return tbl19
											end

											vl.PerfectCorner.Pixel = function()
												local v113 = vl.Character.Root()
												if not v113 then
													return nil
												end
												local v114 = vl.PerfectCorner.Candidates()
												local huge = v109.huge
												local v115 = nil

												for i = 1, #v114 do
													local v116 = v114[i]
													local n32 = v116.X - v113.Position.X
													local n33 = v116.Z - v113.Position.Z
													local n34 = n32 * n32 + n33 * n33

													if n34 < huge then
														huge = n34
														v115 = v116
													end
												end

												return v115
											end

											vl.PerfectCorner.Select = function()
												local v113 = vl.PerfectCorner.Pixel()

												if v113 and vl.Spike then
													vl.Spike.AimTarget = v113
												end

												return v113
											end

											vl.PerfectCorner.SpikeMul = function()
												local v113 = v84[105]
												local state = vl.Modules.State
												local localPlayer = vl.Services.LocalPlayer

												if state and localPlayer then
													v89(function()
														v113 = v97(state.get(localPlayer, state.Id.Multiplier, "SpikePower", 1)) or v84[105]
													end)
												end

												return v113
											end

											vl.PerfectCorner.StyleNums = function()
												local n32 = 16
												local n33 = 0
												local v113 = v84[105]
												local state = vl.Modules.State
												local localPlayer = vl.Services.LocalPlayer

												if state and localPlayer then
													local v114 = nil

													v89(function()
														v114 = state.get(localPlayer, state.Id.Gameplay, "Style")
													end)

													if v90(v114) == "string" and v114 ~= "" then
														v89(function()
															local content = v85.ReplicatedStorage:FindFirstChild("Content")
															content = content and content:FindFirstChild("Style")
															content = content and content:FindFirstChild(v114)

															if content then
																local module = require(content)

																if v90(module) == "table" then
																	if v90(module.Metadata) == "table" then
																		n32 = v97(module.Metadata.TiltInfluence) or n32
																		n33 = v97(module.Metadata.BacktiltInfluence) or n33
																	end

																	if v90(module.Multipliers) == "table" then
																		v113 = v97(module.Multipliers.TiltPower) or v113
																	end
																end
															end
														end)
													end

													v89(function()
														v113 = state.get(localPlayer, state.Id.Multiplier, "TiltPower", v113)
													end)
												end

												return n32, n33, v113
											end

											vl.PerfectCorner.Accel = function()
												local game_ = vl.Modules.Game
												local physics = game_ and game_.Physics and v97(game_.Physics.Gravity)
												local n32 = 17

												if physics then
													n32 = game_.Physics.Gravity
												end

												return v101.new(0, -n32 * 2, 0)
											end

											vl.PerfectCorner.ContactPos = function()
												local resolve = vl.Ball and vl.Ball.Resolve and vl.Ball.Resolve()
												local v113 = vl.Character.Root()
												local v114

												if resolve then
													v114 = vl.Court.FloorAt(resolve.Position)
												else
													v114 = nil

													if v113 then
														v114 = vl.Court.FloorAt(v113.Position)
													end
												end

												if resolve and vl.Predict and v90(vl.Predict.SpikeContact) == "function" then
													local v115 = vl.Predict.SpikeContact(resolve)

													if v115 then
														local contactY = v115.ContactY
														local v116 = v84[66]

														if v90(contactY) ~= v116 then
															contactY = v115.Position and v115.Position.Y or v114 and v114 + 8
														end

														local position = v115.Position
														if position and v90(contactY) == "number" then
															return v101.new(position.X, contactY, position.Z)
														end
													end

													if v114 and resolve.Position.Y > v114 + v84[68] then
														return resolve.Position
													end
												end

												if v113 then
													return v113.Position + v101.new(0, v84[195], 0)
												end
												return nil
											end

											vl.PerfectCorner.Anchors = {
												[v84[105]] = {
													{ v84[84], -25.03, 130.78 },
													{ v84[73], -22.9, 127.26 },
													{ 22, -19.91, 121.81 },
													{ 30, -17.19, 116.39 },
													{ 38, -14.1, 109.63 },
												},
												[0] = {
													{ 8, -51.46, 123.73 },
													{ 14, -46.77, 126.72 },
													{ 22, -40.78, 130.52 },
													{ 30, -34.73, 134.36 },
													{ 38, -28.84, 138.2 },
												},
												[-1] = {
													{ 8, -77.9, 108.26 },
													{ 14, -71.26, 110.7 },
													{ 22, -55.07, 117.67 },
												},
											}

											vl.PerfectCorner.W_MAX_NET_DIST = 26

											vl.PerfectCorner.NetDist = function(arg)
												local v113 = vl.Court.Net()
												if not v113 or not arg then
													return nil
												end
												return v109.abs(arg.Z - v113.Position.Z)
											end

											vl.PerfectCorner.EstimateVel = function(arg, arg2, arg3)
												if not arg then
													return v101.new(0, v84[84], 0)
												end
												local v113 = v101.new(arg.X, 0, arg.Z)
												if v113.Magnitude < 0.1 then
													return v101.new(v84[108], 8, 0)
												end
												local unit = v113.Unit
												local n32 = v97(arg2) or 0
												local v114 = vl.PerfectCorner.Anchors[n32 > 0.5 and v84[105] or n32 < -0.5 and -1 or 0]
												local v115 = v109.clamp(vl.PerfectCorner.NetDist(arg3) or v84[73], v114[v84[105]][v84[105]], v114[#v114][1])
												local n33 = v114[1][2]
												local n34 = v114[1][3]

												for i = v84[105], #v114 - v84[105] do
													local v116 = v114[i]
													local v117 = v114[i + 1]

													if v115 >= v116[1] and v115 <= v117[1] then
														local n35 = (v115 - v116[1]) / (v117[1] - v116[1])
														n33 = v116[2] + (v117[2] - v116[v84[117]]) * n35
														n34 = v116[3] + (v117[3] - v116[3]) * n35
														break
													end
												end

												local n35 = vl.PerfectCorner.SpikeMul() / 1.5
												return unit * n34 * n35 + v101.new(0, n33 * n35, 0)
											end

											vl.PerfectCorner.PredictAt = function(arg, arg2)
												if not arg or not arg2 or not vl.Predict or v90(vl.Predict.Landing) ~= "function" then
													return nil
												end
												local v113 = vl.Predict.Landing({ Position = arg, Velocity = arg2, Acceleration = vl.PerfectCorner.Accel(), Jerk = v101.new() }, v84[68])
												if v113 and v113.Position then
													return v113.Position
												end
												return nil
											end

											local function fn38(arg, arg2, arg3)
												local v113 = v101.new(arg.X - arg2.X, v84[108], arg.Z - arg2.Z)
												if v113.Magnitude < v84[110] then
													return nil, false
												end
												local v114 = vl.PerfectCorner.PredictAt(arg2, vl.PerfectCorner.EstimateVel(v113.Unit, arg3, arg2))
												if not v114 then
													return nil, false
												end
												local n32 = v114.X - arg.X
												local n33 = v114.Z - arg.Z
												return v109.sqrt(n32 * n32 + n33 * n33), vl.Court.StrictInCourt(v114) == true
											end

											vl.PerfectCorner.Solve = function(arg)
												local v113 = arg or vl.PerfectCorner.Pixel()
												if not v113 then
													vl.Aim.HoldS = 0
													return 0
												end
												local plan = vl.PerfectCorner._plan
												local flag18

												if plan then
													local at = plan.at
													flag18 = v110.clock() - at < 0.03
												else
													flag18 = plan
												end

												if flag18 then
													vl.Aim.HoldS = plan.s
													return plan.s
												end
												local resolve = vl.Ball and vl.Ball.Resolve and vl.Ball.Resolve()
												local holdS = 0
												local huge = v109.huge
												local n32 = 0
												local flag19 = false
												local holdS2 = 0
												local huge2 = v109.huge
												local flag20 = false

												local function fn39(arg2, arg3, arg4)
													if arg2 == -1 then
														local v114 = vl.PerfectCorner.NetDist(arg4)
														if v114 and v114 > vl.PerfectCorner.W_MAX_NET_DIST then
															return
														end
													end

													local v114, v115 = fn38(v113, arg4, arg2)
													if not v114 then
														return
													end

													if arg3 <= 0.001 then
														if v115 and not flag20 or v115 == flag20 and v114 < huge2 then
															holdS2 = arg2
															huge2 = v114
															flag20 = v115
														end
													end

													local flag21 = v115 and v114 < 1.2
													local flag22 = flag19 and huge < 1.2

													if flag21 then
														if not flag22 or arg3 < n32 then
															local v116 = v84[158]
															holdS = arg2
															huge = v114
															n32 = arg3
															flag19 = v116
														end

														return
													end

													if flag22 then
														return
													end

													if v115 and not flag19 or v115 == flag19 and v114 < huge then
														holdS = arg2
														huge = v114
														n32 = arg3
														flag19 = v115
													end
												end

												if resolve and resolve.Velocity.Magnitude > 0.5 then
													local v114 = vl.Court.FloorAt(resolve.Position)

													for i = 0, v84[86] do
														local n33 = i * 0.05
														local v115 = vl.Predict.PositionAt(resolve, n33)

														if not (v114 and v115.Y < v114 + v84[178]) then
															for _, v116 in v93({ 1, 0, -1 }) do
																fn39(v116, n33, v115)
															end

															continue
														end

														break
													end
												else
													local v114 = vl.PerfectCorner.ContactPos()
													if not v114 then
														vl.Aim.HoldS = 0
														return 0
													end

													for _, v115 in v93({ v84[105], 0, -1 }) do
														fn39(v115, v84[108], v114)
													end
												end

												if flag20 then
													vl.Aim.HoldS = holdS2
												elseif flag19 then
													vl.Aim.HoldS = holdS
												else
													vl.Aim.HoldS = 0
												end

												vl.PerfectCorner._plan = { s = holdS, t = n32, err = huge, nowS = holdS2, at = v110.clock() }
												return vl.Aim.HoldS
											end

											vl.PerfectCorner.ShouldDelaySwing = function(arg, arg2, arg3)
												if not arg or not arg2 then
													return false
												end

												if vl.Aim.SpikeAssistBlocked() then
													return v84[62]
												end
												local v113 = vl.PerfectCorner.Pixel()
												if not v113 then
													return v84[62]
												end
												vl.PerfectCorner.Solve(v113)
												local plan = vl.PerfectCorner._plan
												if not plan or plan.t <= 0.05 then
													return false
												end
												local assemblyLinearVelocity = vl.Character.Root()
												assemblyLinearVelocity = assemblyLinearVelocity and assemblyLinearVelocity.AssemblyLinearVelocity or v101.zero
												local v114 = vl.Predict.PositionAt(arg, plan.t)
												local v115 = vl.Spike.PredictCenter(arg2, assemblyLinearVelocity, plan.t, v86.Gravity)
												if (v97(arg3) or 6) * 1.1 < (v114 - v115).Magnitude then
													return false
												end

												if v114.Y < v115.Y - 1.5 then
													return v84[62]
												end
												return true
											end

											vl.PerfectCorner.Face = function()
												if fn30("vl_perfect_corner", v84[62]) ~= true then
													return v84[62]
												end

												if vl.Aim.SpikeAssistBlocked() then
													return false
												end
												local v113 = vl.PerfectCorner.Select()
												if not v113 then
													return false
												end
												vl.PerfectCorner.Solve(v113)
												vl.Aim.HoldMode = "s_corner"
												vl.Serve.FaceTarget(v113)
												vl.Aim.ApplyLineShotTilt(v113, "s_corner")
												vl.Aim.ScheduleLineShotReset(v84[125])
												return true
											end

											vl.Spike = {
												LastAttempt = 0,
												SwungThisJump = v84[62],
												WasJumping = false,
												SwingAt = 0,
												RetryUsed = false,
												AimTarget = nil,
												CutUntil = 0,
											}

											vl.Spike.ShouldCut = function(arg)
												if fn30("vl_auto_cut", v84[62]) ~= true then
													return false
												end
												local v113 = vl.Character.Root()
												local v114 = vl.Court.Net()
												if not v113 or not v114 or not arg then
													return false
												end
												return v109.abs(v113.Position.Z - v114.Position.Z) <= 14
											end

											vl.Spike.CutSideDir = function(arg, arg2)
												local v113 = v101.new(-arg2.Z, v84[108], arg2.X)
												if v113.Magnitude < 0.05 then
													return v101.new(1, v84[108], 0)
												end
												local unit = v113.Unit
												local v114 = vl.Aim.ClosestSideline()

												if v114 then
													local v115 = v101.new(v114.X - arg.Position.X, v84[108], v114.Z - arg.Position.Z)

													if v115.Magnitude > 0.05 and v115:Dot(unit) < 0 then
														unit = -unit
													end
												else
													local currentCamera = v86.CurrentCamera

													if currentCamera then
														local v115 = v101.new(currentCamera.CFrame.LookVector.X, 0, currentCamera.CFrame.LookVector.Z)

														if v115.Magnitude > 0.05 and v115:Dot(unit) < 0 then
															unit = -unit
														end
													end
												end

												return unit
											end

											vl.Spike.PrepareAim = function(arg)
												if vl.Spike.ShouldCut(arg) then
													local v113 = vl.Aim.ClosestCutLine()
													if not v113 then
														vl.AutoPlay.FaceNet()
														return "net"
													end
													vl.Spike.AimTarget = v113
													vl.Aim.HoldMode = "w_side"
													vl.Serve.FaceTarget(v113)
													vl.Aim.ApplyLineShotTilt(v113, "w_side")
													vl.Aim.ScheduleLineShotReset(0.28)
													return "cut"
												end

												vl.AutoPlay.FaceNet()
												return "net"
											end

											vl.Spike.ClearCutMove = function()
												if (vl.Spike.CutUntil or v84[108]) == 0 then
													return
												end
												local cutUntil = vl.Spike.CutUntil
												if v110.clock() < cutUntil then
													return
												end
												vl.Spike.CutUntil = 0
												if vl.AutoPlay.Active then
													return
												end
												local v113 = vl.AutoPlay.Humanoid()
												local flag18

												if v113 then
													local v114 = v84[158]
													flag18 = vl.Move.StateValue("IsJumping") ~= v114
												else
													flag18 = v113
												end

												if flag18 then
													v89(function()
														v113:Move(v101.zero, false)
													end)
												end
											end

											vl.Spike.AimForSwing = function(arg, arg2, arg3)
												if fn30("vl_perfect_corner", false) == true and vl.PerfectCorner.Face() then
													return
												end

												if fn30("vl_line_shot", v84[62]) == true and vl.Aim.FaceLineShot() then
													return
												end

												if vl.Spike.ShouldCut(arg) then
													vl.Spike.PrepareAim(arg)
													return
												end
												local v113 = vl.Spike.ResolveAim(arg3 == true, arg2)

												if v113 then
													vl.Serve.FaceTarget(v113)
												end
											end

											vl.Spike.ClearStuckAnimation = function(arg)
												if not arg then
													arg = vl.Services.LocalPlayer.Character
													arg = arg and arg:FindFirstChildOfClass("Humanoid")
												end

												if not arg or v90(arg.GetPlayingAnimationTracks) ~= "function" then
													return 0
												end
												local v113, v114 = v89(arg.GetPlayingAnimationTracks, arg)
												if not v113 or v90(v114) ~= "table" then
													return 0
												end
												local v115, v116, v117 = v93(v114)
												local n32 = 0

												for _, v118 in v115, v116, v117 do
													local priority = v118.Priority

													if v118.Looped and (priority == v106.AnimationPriority.Action or priority == v106.AnimationPriority.Action2 or priority == v106.AnimationPriority.Action3 or priority == v106.AnimationPriority.Action4) then
														if v89(v118.Stop, v118, 0.1) then
															n32 += 1
														end
													end
												end

												return n32
											end

											vl.Spike.SyncJumpState = function()
												local v113 = v84[158]
												local wasJumping = vl.Move.StateValue("IsJumping") == v113

												if wasJumping and not vl.Spike.WasJumping then
													vl.Spike.SwungThisJump = v84[62]
													vl.Spike.RetryUsed = false
													vl.Spike.SwingAt = 0
													vl.Spike.AimTarget = nil
												elseif not wasJumping then
													local wasJumping2 = vl.Spike.WasJumping or vl.Spike.SwungThisJump
													vl.Spike.SwungThisJump = v84[62]
													vl.Spike.RetryUsed = v84[62]
													vl.Spike.SwingAt = v84[108]
													vl.Spike.AimTarget = nil

													if wasJumping2 then
														vl.Spike.ClearStuckAnimation()
													end
												end

												vl.Spike.WasJumping = wasJumping
												return wasJumping
											end

											vl.Spike.SyncStandaloneState = function(arg, arg2, arg3)
												if arg3 and arg and not arg2 then
													return vl.Spike.SyncJumpState()
												end
												return nil
											end

											vl.Expander = vl.Expander or { Originals = {}, LastApply = 0, Active = false }

											vl.Expander.GetMultiplier = function()
												if fn30("vl_expander", false) ~= true then
													return 1
												end
												return v109.clamp(v97(fn30("vl_expand_amount", 1.5)) or 1.5, v84[105], 5)
											end

											vl.Spike.HitboxEntry = function()
												local hitbox = vl.Modules.Hitbox
												if not hitbox or v90(hitbox.Hitboxes) ~= "table" then
													return nil
												end

												for k, hitboxe in v92(hitbox.Hitboxes) do
													local flag18 = (v90(k) == "string" and k or v91(k) == "Instance" and k.Name) == "Spike"

													if flag18 then
														local v113 = v84[74]
														flag18 = v90(hitboxe) == v113
													end

													if flag18 then
														return hitboxe
													end
												end

												return nil
											end

											vl.Spike.BaseSize = function()
												local originals = vl.Expander.Originals

												if v90(originals) == "table" then
													for k, original in v92(originals) do
														local v113 = v84[21]
														if (v90(k) == v113 and k or v91(k) == "Instance" and k.Name) == "Spike" and v91(original) == "Vector3" then
															return original
														end
													end
												end

												local v113 = vl.Spike.HitboxEntry()

												if v113 and v91(v113.Size) == "Vector3" then
													local v114 = vl.Expander.GetMultiplier()
													if vl.Expander.Active and v114 > 1.01 then
														return v113.Size / v114
													end
													return v113.Size
												end

												return v101.new(v84[84], 8, 8)
											end

											vl.Spike.ContactRange = function()
												local v113 = vl.Spike.BaseSize()
												return v109.clamp(v109.max(v113.X, v113.Y, v113.Z) * 0.55 * vl.Expander.GetMultiplier(), 4, 28)
											end

											vl.Spike.TimingContact = function(arg)
												return v109.min(v109.max(v97(arg) or 0, v84[108]), 12)
											end

											vl.Spike.IsUnder = function(arg, arg2, arg3, arg4)
												return arg <= v109.max(3.8 * arg4, arg3 * 0.45) and v109.abs(arg2) <= vl.Spike.TimingContact(arg3)
											end

											vl.Spike.PredictCenter = function(arg, arg2, arg3, arg4)
												return arg + arg2 * arg3 + v101.new(0, -0.5 * arg4 * arg3 * arg3, 0)
											end

											vl.Spike.ShouldWaitForContact = function(arg, arg2, arg3, arg4, arg5, arg6)
												if arg <= arg2 * 1.05 then
													return v84[62]
												end

												if not arg3 then
													return true
												end
												return arg5 > arg6 and arg4 < arg
											end

											vl.Spike.Range = function()
												local v113 = v109.min(v97(fn30("vl_spike_range", 14)) or 14, vl.Reach.Normal)
												local v114 = vl.Expander.GetMultiplier()
												return v109.min(v113 * v114, vl.Reach.Normal * v109.max(1.85, v114))
											end

											vl.Spike.Center = function()
												local character = vl.Services.LocalPlayer.Character
												local primaryPart = character and character.PrimaryPart
												if not primaryPart then
													return nil
												end
												local lowerTorso = character:FindFirstChild("LowerTorso")
												lowerTorso = lowerTorso and lowerTorso:FindFirstChild("Root")
												if not lowerTorso then
													return primaryPart.Position
												end
												local v113 = vl.Spike.HitboxEntry()
												if not v113 or v91(v113.Offset) ~= "CFrame" then
													return primaryPart.Position
												end
												local c0 = lowerTorso.C0
												return (primaryPart.CFrame * (v102.new() * c0 - c0.Position) * v113.Offset).Position
											end

											vl.Spike.ResolveAim = function(arg, arg2)
												if arg2 then
													local v113 = vl.Serve.AimSide()
													return v113 and vl.Serve.CornerTarget(v113) or vl.Serve.ResolveTarget(arg == true)
												end

												if not arg and vl.Spike.AimTarget then
													return vl.Spike.AimTarget
												end

												if fn30("vl_perfect_corner", false) == true then
													local v113 = vl.PerfectCorner.Select()
													if v113 then
														return v113
													end
												end

												if fn30("vl_line_shot", v84[62]) == true then
													local v113 = vl.Aim.ClosestSideline()
													if v113 then
														vl.Spike.AimTarget = v113
														return v113
													end
												end

												local v113 = vl.Serve.OpenTarget({ preferMid = v84[158] })
												vl.Spike.AimTarget = v113
												return v113
											end

											vl.Spike.Step = function(arg)
												local v113 = v110.clock()
												if not vl.Spike.SyncJumpState() then
													return
												end
												local v114 = vl.Serve.IsAimActive()

												if vl.Spike.SwungThisJump then
													if v114 or vl.Move.TouchedLast() then
														return
													end
													local retryUsed = vl.Spike.RetryUsed

													if not retryUsed then
														retryUsed = v113 - (vl.Spike.SwingAt or v84[108]) < 0.22
													end

													if retryUsed then
														return
													end
													vl.Spike.SwungThisJump = v84[62]
													vl.Spike.RetryUsed = v84[158]
												end

												if vl.Ball.OurServeSequence() and not v114 then
													return
												end
												local flag18 = not v114
												if flag18 and vl.Move.TouchedLast() then
													return
												end
												local v115 = vl.Character.Root()
												local position = vl.Spike.Center() or v115 and v115.Position
												if not position then
													return
												end
												local v116 = vl.Spike.ContactRange()
												local v117 = vl.Expander.GetMultiplier()
												local magnitude = (arg.Position - position).Magnitude
												local magnitude2 = v101.new(arg.Position.X - position.X, 0, arg.Position.Z - position.Z).Magnitude
												local v118 = vl.Spike.Range()
												local n32 = arg.Position.Y - position.Y
												local v119 = vl.Spike.TimingContact(v116)
												local v120 = vl.Spike.IsUnder(magnitude2, n32, v116, v117)
												local v121 = v109.max(v118, v116 + 3)
												if not v120 and magnitude2 > v121 and magnitude > v116 * 1.15 then
													return
												end

												if fn30("vl_spike_timing", v84[158]) and not v120 then
													local v122 = v109.max(v84[146], 0.09 / v109.clamp(v117, 1, 3))

													if v119 < magnitude then
														local assemblyLinearVelocity = vl.Character.Root()
														assemblyLinearVelocity = assemblyLinearVelocity and assemblyLinearVelocity.AssemblyLinearVelocity or v101.zero
														local v123 = v84[62]
														local n33 = 0
														local v124 = magnitude

														for i = 1, v84[60] do
															local n34 = i * 0.03
															local magnitude3 = (vl.Predict.PositionAt(arg, n34) - vl.Spike.PredictCenter(position, assemblyLinearVelocity, n34, v86.Gravity)).Magnitude

															if magnitude3 < v124 then
																v124 = magnitude3
																n33 = n34
															end

															if magnitude3 <= v119 then
																v123 = v84[158]
															end
														end

														if vl.Spike.ShouldWaitForContact(magnitude, v119, v123, v124, n33, v122) then
															return
														end
													end
												elseif not v120 and magnitude > v116 * 1.25 then
													return
												end

												if stateValue("IsPlaying") ~= true and not v114 then
													return
												end

												if stateValue("IsStunned") == true then
													return
												end

												if flag18 then
													local v122 = v84[158]
													flag18 = fn30("vl_perfect_corner", false) == v122
												end

												if flag18 and vl.PerfectCorner.ShouldDelaySwing(arg, position, v116) then
													return
												end
												vl.Spike.AimForSwing(arg, v114, false)
												vl.Spike.SwungThisJump = true
												vl.Spike.SwingAt = v113
												vl.Spike.LastAttempt = v113

												if vl.Move.Force("Spike", v84[158], 1) then
													if v114 then
														vl.Serve.FinishUntil = 0
													end

													if fn30("vl_line_shot", false) == true then
														vl.Aim.ScheduleLineShotReset(v84[125])
													end
												else
													vl.Spike.SwungThisJump = false
												end
											end

											vl.AkariTSH = {
												LastFiredStamp = nil,
												Notified = false,
												DASH_DURATION = 0.6666667,
												WINDOW_MIN = v84[10],
												WINDOW_MAX = 0.75,
												MASTERY_NEEDED = 3,
											}

											vl.AkariTSH.Reset = function()
												vl.AkariTSH.LastFiredStamp = nil
												vl.AkariTSH.Notified = false
											end

											vl.AkariTSH.SpecialId = function()
												local knit = vl.Modules.Knit
												if not knit then
													return nil
												end

												local v113, v114 = v89(function()
													return knit.GetController("SpecialController")
												end)

												if not v113 or v90(v114) ~= "table" or v90(v114.Special) ~= "table" then
													return nil
												end

												local v115, v116 = v89(function()
													return v114.Special:get()
												end)

												if v115 and v90(v116) == "table" then
													return v116.Id
												end
												return nil
											end

											vl.AkariTSH.Mastery = function()
												local state = vl.Modules.State
												local localPlayer = vl.Services.LocalPlayer
												if not state or v90(state.get) ~= "function" or not localPlayer then
													return 0
												end
												local level, v113 = v89(state.get, localPlayer, state.Id and state.Id.Mastery or "Mastery", "Level", v84[108])
												if level then
													return v97(v113) or 0
												end
												return 0
											end

											vl.AkariTSH.DashStamp = function()
												local state = vl.Modules.State
												local localPlayer = vl.Services.LocalPlayer
												if not state or v90(state.get) ~= "function" or not localPlayer then
													return v84[108]
												end
												local kuraiDashStaticTimestamp, v113 = v89(state.get, localPlayer, state.Id and state.Id.Special or "Special", "KuraiDashStaticTimestamp", 0)
												if kuraiDashStaticTimestamp then
													return v97(v113) or 0
												end
												return v84[108]
											end

											vl.AkariTSH.Progress = function(arg, arg2)
												return ((v97(arg) or 0) - (v97(arg2) or 0)) / 0.6666667
											end

											vl.AkariTSH.InWindow = function(arg)
												local n32 = v97(arg) or -1
												return n32 >= 0.25 and n32 <= 0.75
											end

											vl.AkariTSH.NotifyOnce = function()
												if vl.AkariTSH.Notified then
													return
												end
												vl.AkariTSH.Notified = v84[158]

												v89(function()
													tbl17:Notify({ Title = "Akari TSH", Text = "Needs Akari (Kurai) mastery 3+", Type = "error" })
												end)
											end

											vl.AkariTSH.Eligible = function()
												if fn30("vl_akari_tsh", false) ~= true then
													vl.AkariTSH.Notified = v84[62]
													return false
												end
												local v113 = vl.AkariTSH.Mastery()
												if vl.AkariTSH.SpecialId() ~= "Kurai" or v113 < vl.AkariTSH.MASTERY_NEEDED then
													vl.AkariTSH.NotifyOnce()
													return v84[62]
												end
												return true
											end

											vl.AkariTSH.ShouldHoldAutoSpike = function()
												if not vl.AkariTSH.Eligible() then
													return false
												end
												local v113 = vl.AkariTSH.DashStamp()
												if v113 <= 0 or v113 == vl.AkariTSH.LastFiredStamp then
													return false
												end
												local v114 = vl.AkariTSH.Progress(v86:GetServerTimeNow(), v113)
												return v114 >= 0 and v114 <= 0.75
											end

											vl.AkariTSH.Step = function(arg)
												if not vl.AkariTSH.Eligible() then
													return false
												end

												if not arg then
													return false
												end

												if vl.Move.StateValue("IsJumping") ~= true then
													return v84[62]
												end

												if vl.Move.StateValue("IsStunned") == true then
													return false
												end

												if vl.Move.StateValue(v84[63]) == true then
													return v84[62]
												end

												if vl.Rally.IsFrozen() then
													return v84[62]
												end
												local v113 = vl.AkariTSH.DashStamp()
												if v113 <= 0 or v113 == vl.AkariTSH.LastFiredStamp then
													return v84[62]
												end
												local v114 = vl.AkariTSH.Progress(v86:GetServerTimeNow(), v113)
												if not vl.AkariTSH.InWindow(v114) then
													return false
												end
												vl.Spike.AimForSwing(arg, false, true)

												if vl.Move.Force("Spike", true, 1) then
													vl.AkariTSH.LastFiredStamp = v113
													vl.Spike.SwungThisJump = true
													vl.Spike.SwingAt = v110.clock()
													vl.Spike.LastAttempt = vl.Spike.SwingAt
													return v84[158]
												end

												return false
											end

											vl.Dive = { LastAttempt = v84[108] }

											vl.Dive.Face = function(arg)
												local v113 = vl.Character.Root()
												if not v113 then
													return
												end
												local v114 = v101.new(arg.X - v113.Position.X, 0, arg.Z - v113.Position.Z)
												if v114.Magnitude < v84[110] then
													return
												end
												v113.CFrame = v102.lookAt(v113.Position, v113.Position + v114.Unit)
											end

											vl.Dive.Duration = 1.2
											vl.Dive.MoveScale = 0.9
											vl.Dive.PlaneSpeed = 36
											vl.Dive.BaseTravel = 20
											vl.Dive.Startup = 0.1
											vl.Dive.DigHeight = 2.6

											vl.Dive.TargetOffset = function(arg)
												local v113 = vl.Character.Root()
												if not v113 or not arg then
													return nil
												end
												local v114 = v101.new(arg.X - v113.Position.X, 0, arg.Z - v113.Position.Z)
												local magnitude = v114.Magnitude
												if magnitude < 0.1 then
													return nil
												end
												local v115 = v84[147]
												return v114.Unit * v109.clamp(v109.max(magnitude * 0.88, 4) / vl.Dive.BaseTravel, 0.4, vl.Reach.Dive / vl.Dive.BaseTravel) * v115
											end

											vl.Dive.TravelTime = function(arg)
												local v113 = v109.max(v97(arg) or v84[108], v84[108])
												local n32 = vl.Dive.Duration * vl.Dive.MoveScale
												if v113 < 0.5 then
													return vl.Dive.Startup
												end
												local baseTravel = vl.Dive.BaseTravel
												return v109.clamp(v113 / v109.max(vl.Dive.PlaneSpeed * v109.clamp(v109.max(v113 * 0.88, 4) / baseTravel, 0.4, vl.Reach.Dive / vl.Dive.BaseTravel) * 0.55, v84[105]), 0.12, n32)
											end

											vl.Dive.Fire = function(arg)
												local knit = vl.Modules.Knit
												if not knit then
													return v84[62]
												end

												local v113, v114 = v89(function()
													return knit.GetController("GameController")
												end)

												if not v113 or v90(v114) ~= "table" or v90(v114.Dive) ~= "function" then
													return false
												end
												local tbl19 = { Force = v84[158] }
												local v115 = vl.Dive.TargetOffset(arg)

												if v115 then
													tbl19.Target = v115
												end

												return (v89(v114.Dive, v114, tbl19))
											end

											vl.Dive.ShouldCommit = function(arg, arg2)
												local startup = vl.Dive.Startup
												local n32 = vl.Dive.TravelTime(arg2) + startup
												if v109.max(v97(fn30("vl_dive_window", 1.2)) or v84[81], n32 + 0.05) < arg then
													return false
												end

												if n32 + 0.12 < arg then
													return false
												end
												return true
											end

											vl.Dive.DigInfo = function(arg)
												if fn30("vl_autodive", false) ~= true or not arg then
													return nil
												end

												if vl.Rally.IsFrozen() then
													return nil
												end

												if vl.Ball.OurServeSequence() then
													return nil
												end

												if vl.Move.TouchedLast() then
													return nil
												end

												if not vl.Ball.IsIncoming() then
													return nil
												end

												if not vl.Dive.WillLandInCourt(arg) then
													return nil
												end
												local time = vl.Predict.DigContact(arg, vl.Dive.DigHeight, 3)
												local position = time and time.Position or nil
												time = time and time.Time or nil

												if not position or time == nil then
													if v84[108] < arg.Velocity.Y then
														return nil
													end
													position = arg.Position
													time = 0
												end

												if not vl.AutoPlay.OnOurSide(position) then
													return nil
												end

												if not vl.Court.InCourt(position) then
													return nil
												end
												local v113 = vl.AutoPlay.FlatDist(position)
												if not v113 then
													return nil
												end

												if v109.min(v97(fn30("vl_dive_range", 30)) or 30, vl.Reach.Dive) < v113 then
													return nil
												end

												if fn30("vl_autorec", false) == true or fn30("vl_autoplay", false) == true then
													if v113 <= v109.min(v97(fn30("vl_rec_range", 14)) or 14, vl.Reach.Normal) then
														return nil
													end
												end

												return { Target = position, Time = time, Distance = v113 }
											end

											vl.Dive.OwnsBall = function(arg)
												return vl.Dive.DigInfo(arg) ~= nil
											end

											vl.Dive.WouldCommit = function(arg)
												if v110.clock() - (vl.Dive.LastAttempt or 0) < 1.4 then
													return false
												end
												local v113 = vl.Dive.DigInfo(arg)
												if not v113 then
													return false
												end
												return vl.Dive.ShouldCommit(v113.Time, v113.Distance) == v84[158]
											end

											vl.Dive.WillLandInCourt = function(arg)
												if not arg then
													return false
												end
												local v113 = vl.Predict.Landing(arg, 3.5)
												if v113 then
													return v113.InCourt == true
												end
												local v114 = vl.Predict.DigContact(arg, vl.Dive.DigHeight, 3.5)

												if v114 then
													if v114.InCourt ~= nil then
														return v114.InCourt == true
													end
													return vl.Court.InCourt(v114.Position) == true
												end

												return false
											end

											vl.Dive.Step = function(arg)
												local v113 = v110.clock()
												if v113 - vl.Dive.LastAttempt < 1.4 then
													return
												end

												if vl.Rally.IsFrozen() then
													return
												end

												if vl.Ball.OurServeSequence() then
													return
												end

												if vl.Move.TouchedLast() then
													return
												end

												if not vl.Ball.IsIncoming() then
													return
												end

												if not vl.Dive.WillLandInCourt(arg) then
													return
												end
												local v114 = vl.Predict.DigContact(arg, vl.Dive.DigHeight, v84[195])
												local position, time

												if v114 then
													position = v114.Position
													time = v114.Time
												else
													if arg.Velocity.Y > 0 then
														return
													end
													position = arg.Position
													time = v84[108]
												end

												if not vl.AutoPlay.OnOurSide(position) then
													return
												end

												if not vl.Court.InCourt(position) then
													return
												end
												local v115 = vl.AutoPlay.FlatDist(position)
												if not v115 then
													return
												end

												if v115 > v109.min(v97(fn30("vl_dive_range", 30)) or 30, vl.Reach.Dive) then
													return
												end

												if not vl.Dive.ShouldCommit(time, v115) then
													return
												end
												local v116 = v84[158]

												if fn30("vl_autorec", false) == v116 or fn30("vl_autoplay", false) == true then
													if v115 <= v109.min(v97(fn30("vl_rec_range", v84[73])) or 14, vl.Reach.Normal) then
														return
													end
												end

												if not vl.Move.Ready(false, true) then
													return
												end

												if fn30("vl_dive_face", true) then
													vl.Dive.Face(position)
												end

												if not vl.Move.Allowed("Dive", position) then
													return
												end

												if vl.Dive.Fire(position) then
													vl.Dive.LastAttempt = v113
												end
											end

											vl.Counter = { LastBlock = 0, LastDig = 0, Holding = v84[62] }

											vl.Counter.Enabled = function()
												return fn30("vl_counter", v84[62]) == true
											end

											vl.Counter.IsServeBall = function()
												if vl.Move.StateValue("IsServing") == true then
													return true
												end

												if vl.Ball.OurServeSequence() then
													return v84[158]
												end
												local replicated = vl.Services.Replicated
												local team = vl.Services.LocalPlayer.Team
												local attribute = replicated:GetAttribute("LastHitType")
												if v90(attribute) == "string" and v108.find(v108.lower(attribute), "serve", 1, true) then
													return true
												end
												local attribute2 = replicated:GetAttribute("ServedByTeam")
												local attribute3 = replicated:GetAttribute("ServedByPlayer")
												local flag18 = team and v90(attribute2) == "string" and attribute2 ~= "" and attribute2 ~= team.Name
												local flag19 = false

												if flag18 then
													flag19 = true
												end

												if v90(attribute3) == "string" and attribute3 ~= "" then
													local v113 = vl.Services.Players:FindFirstChild(attribute3)

													if v113 and team and v113.Team and v113.Team ~= team then
														flag19 = v84[158]
													end
												end

												if not flag19 then
													return false
												end
												local serveWatch = vl.Counter._serveWatch

												if not serveWatch then
													serveWatch = { key = nil, hitStamp = nil, broken = false }
													vl.Counter._serveWatch = serveWatch
												end

												local attribute4 = replicated:GetAttribute("ActiveBall")
												local attribute5 = replicated:GetAttribute("ServesInRow")
												local concat = v107.concat
												local tbl19 = {}
												local v113 = v96(attribute3 or "")
												local v114 = v96(attribute2 or "")
												local v115 = v96(attribute4 or "")
												attribute5 = attribute5 or ""
												local v116 = table.pack(v96(attribute5))
												tbl19[1] = v113
												tbl19[2] = v114
												tbl19[3] = v115

												do
													local values = table.pack(table.unpack(v116, 1, v116.n))
													table.move(values, 1, values.n, 4, tbl19)
												end

												local v117 = concat(tbl19, "|")

												if v117 ~= serveWatch.key then
													serveWatch.key = v117
													serveWatch.hitStamp = replicated:GetAttribute("LastHitTimestamp")
													serveWatch.broken = false
												end

												if serveWatch.broken then
													return false
												end
												local attribute6 = replicated:GetAttribute("LastHitTimestamp")
												local flag20 = v90(attribute6) == "number" and v90(serveWatch.hitStamp) == "number" and attribute6 > serveWatch.hitStamp + 0.0001
												local attribute7 = replicated:GetAttribute("LastHitter")
												local flag21

												if flag20 then
													local v118 = v84[21]
													flag21 = v90(attribute7) == v118
												else
													flag21 = flag20
												end

												if flag21 and attribute7 ~= "" then
													local v118 = vl.Services.Players:FindFirstChild(attribute7)
													if v118 and team and v118.Team == team then
														serveWatch.broken = v84[158]
														return false
													end
												end

												if flag20 and v90(attribute) == "string" and attribute ~= "" and not v108.find(v108.lower(attribute), "serve", 1, true) then
													serveWatch.broken = true
													return v84[62]
												end
												return v84[158]
											end

											vl.Counter.IsThreat = function(arg)
												if not arg then
													return false
												end

												if vl.Rally.IsFrozen() then
													return v84[62]
												end

												if vl.Counter.IsServeBall() then
													return false
												end

												if not vl.Ball.IsIncoming() then
													return false
												end

												if vl.Move.StateValue("IsPlaying") ~= true then
													return false
												end

												if vl.Move.StateValue("IsServing") == true then
													return false
												end
												local attribute = vl.Services.Replicated:GetAttribute("LastHitType")
												local attribute2 = vl.Services.Replicated:GetAttribute("LastHitTeam")
												local team = vl.Services.LocalPlayer.Team
												local flag18 = team and v90(attribute2) == "string" and attribute2 ~= "" and attribute2 ~= team.Name
												local flag19 = v90(attribute) == "string"

												if flag19 then
													local v113 = v84[158]
													flag19 = v108.find(v108.lower(attribute), "serve", 1, v113)
												end

												if flag19 then
													return false
												end

												if attribute == "Spike" and flag18 then
													return true
												end

												if flag18 and (attribute == "Set" or attribute == v84[164]) then
													local v113 = vl.Court.FloorAt(arg.Position)
													if (v113 and arg.Position.Y - v113 or 0) >= 6 then
														return true
													end
												end

												if flag18 and arg.Speed >= v84[30] and attribute == "Spike" then
													local v113 = vl.Predict.DigContact(arg, vl.Dive.DigHeight, v84[94]) or vl.Predict.Landing(arg, 2.8)
													if v113 and vl.AutoPlay.OnOurSide(v113.Position) and vl.Court.InCourt(v113.Position) then
														return v84[158]
													end
												end

												return false
											end

											vl.Counter.NearEnemyRoot = function(arg, arg2)
												local team = vl.Services.LocalPlayer.Team
												if not team or not arg then
													return nil
												end
												local huge = v109.huge
												local v113 = nil

												for _, player in v93(vl.Services.Players:GetPlayers()) do
													if player ~= vl.Services.LocalPlayer and player.Team and player.Team ~= team then
														local character = player.Character

														if character then
															character = character.PrimaryPart or character:FindFirstChild("HumanoidRootPart")
														end

														if character then
															local magnitude = v101.new(character.Position.X - arg.Position.X, 0, character.Position.Z - arg.Position.Z).Magnitude
															local flag18 = magnitude < huge

															if flag18 then
																flag18 = magnitude < (arg2 or 18)
															end

															if flag18 then
																huge = magnitude
																v113 = character
															end
														end
													end
												end

												return v113
											end

											vl.Counter.SpikeAimX = function(arg)
												local v113 = vl.Character.Root()
												local v114 = vl.Court.Net()
												if not v113 or not v114 or not arg then
													return nil
												end
												local flag18 = vl.Services.Replicated:GetAttribute("LastHitType") == "Spike"

												if flag18 then
													local v115 = vl.Counter.DigSpot(arg)
													if v115 and v115.Position then
														return v115.Position.X
													end
												end

												local n32 = v113.Position.Z < v114.Position.Z and -1 or v84[105]
												local v115, v116, unit, position, z, n33

												for i = v84[108], 50 do
													local v117 = vl.Predict.PositionAt(arg, i * 0.04)

													if n32 < 0 and v117.Z <= v114.Position.Z + 0.4 or n32 > 0 and v117.Z >= v114.Position.Z - 0.4 then
														flag18 = flag18 or arg.Speed >= 12
														if flag18 then
															return v117.X
														end
														v115 = vl.Counter.NearEnemyRoot(arg, 20)

														if v115 then
															v116 = v101.new(v115.CFrame.LookVector.X, 0, v115.CFrame.LookVector.Z)

															if v116.Magnitude > 0.05 then
																unit = v116.Unit
																position = v115.Position
																z = unit.Z

																if v109.abs(z) > 0.05 then
																	n33 = (v114.Position.Z - position.Z) / z
																	local flag19 = n33 > 0 and n33 < 40
																	if flag19 then
																		return position.X + unit.X * n33
																	end
																end

																return v115.Position.X + unit.X * v84[32]
															end

															return v115.Position.X
														end

														return arg.Position.X
													end
												end

												v115 = vl.Counter.NearEnemyRoot(arg, 20)

												if v115 then
													v116 = v101.new(v115.CFrame.LookVector.X, 0, v115.CFrame.LookVector.Z)

													if v116.Magnitude > 0.05 then
														unit = v116.Unit
														position = v115.Position
														z = unit.Z

														if v109.abs(z) > 0.05 then
															n33 = (v114.Position.Z - position.Z) / z
															if n33 > 0 and n33 < 40 then
																return position.X + unit.X * n33
															end
														end

														return v115.Position.X + unit.X * v84[32]
													end

													return v115.Position.X
												end

												return arg.Position.X
											end

											vl.Counter.NetSpot = function(arg)
												local v113 = vl.Character.Root()
												local v114 = vl.Court.Net()
												local v115 = vl.Court.Lines()
												if not v113 or not v114 or not arg then
													return nil
												end
												local n32 = v113.Position.Z < v114.Position.Z and -1 or 1
												local x = vl.Counter.SpikeAimX(arg) or arg.Position.X
												local x2

												if v115 then
													local n33 = v115.Size * 0.5
													x2 = v109.clamp(x, v115.Position.X - n33.X + 3.5, v115.Position.X + n33.X - 3.5)
												else
													x2 = x
												end

												local y = arg.Position.Y
												local n33 = 0.2

												for i = v84[108], v84[36] do
													n33 = i * 0.05
													local v116 = vl.Predict.PositionAt(arg, n33)

													if n32 < 0 and v116.Z <= v114.Position.Z + 0.5 or n32 > 0 and v116.Z >= v114.Position.Z - 0.5 then
														y = v116.Y

														if vl.Services.Replicated:GetAttribute("LastHitType") == "Spike" then
															x2 = v116.X

															if v115 then
																local n34 = v115.Size * 0.5
																x2 = v109.clamp(x2, v115.Position.X - n34.X + 3.5, v115.Position.X + n34.X - 3.5)
															end
														end

														break
													else
														n33 = 0.2
													end
												end

												local n34 = v114.Position.Z + n32 * 1.55
												local v116 = v109.abs(v113.Position.Z - v114.Position.Z)

												if (n32 < 0 and v113.Position.Z <= v114.Position.Z + 0.35 or n32 > 0 and v113.Position.Z >= v114.Position.Z - 0.35) and v116 <= 1.9500000000000002 then
													n34 = v113.Position.Z
												end

												return {
													Position = v101.new(x2, v113.Position.Y, n34),
													Time = n33,
													BallY = y,
													AimX = x2,
													DistNet = v116,
													AtNet = v116 <= 3.2 and v109.abs(v113.Position.X - x2) <= 3,
												}
											end

											vl.Counter.DigSpot = function(arg)
												local v113 = vl.Character.Root()
												if not v113 or not arg then
													return nil
												end
												local v114 = vl.Predict.DigContact(arg, vl.Dive.DigHeight, 3) or vl.Predict.Landing(arg, 3)
												if not v114 then
													return nil
												end

												if not vl.AutoPlay.OnOurSide(v114.Position) then
													return nil
												end

												if not vl.Court.InCourt(v114.Position) then
													return nil
												end

												return {
													Position = v101.new(v114.Position.X, v113.Position.Y, v114.Position.Z),
													Time = v114.Time or 0,
													Distance = vl.AutoPlay.FlatDist(v114.Position),
												}
											end

											vl.Counter.PickMode = function(arg)
												local vlCounterMode = fn30("vl_counter_mode", "Auto")
												if vlCounterMode == "Block" or vlCounterMode == "Dig" then
													return vlCounterMode
												end
												local v113 = vl.Counter.NetSpot(arg)
												local v114 = vl.Counter.DigSpot(arg)
												local v115 = vl.Court.Net()
												local v116 = vl.Character.Root()
												if not v115 or not v116 then
													return "Dig"
												end

												if v116.Position.Z < v115.Position.Z and arg.Position.Z < v115.Position.Z - v84[105] or v116.Position.Z > v115.Position.Z and arg.Position.Z > v115.Position.Z + 1 then
													return "Dig"
												end
												local flag18

												if v113 then
													flag18 = (v113.Time or 1) <= 1.35
												else
													flag18 = v113
												end

												if flag18 then
													flag18 = (v113.BallY or 0) >= 7
												end

												if flag18 then
													return v84[67]
												end

												if v114 and v114.Distance and v114.Distance <= 22 then
													return "Dig"
												end
												return "Block"
											end

											vl.Counter.TryBlock = function(arg, arg2)
												local v113 = v110.clock()
												if v113 - (vl.Counter.LastBlock or 0) < 0.45 then
													return false
												end

												if not arg2 then
													return false
												end

												if vl.Counter.IsServeBall() then
													return false
												end
												local v114 = vl.Character.Root()
												local v115 = vl.Court.Net()
												local n32 = v114 and v115 and v109.abs(v114.Position.Z - v115.Position.Z) or 99
												local v116 = v109.abs((v114 and v114.Position.X or 0) - (arg2.AimX or arg2.Position.X))
												local time = arg2.Time or v84[105]
												local flag18 = n32 <= 3 and v116 <= 2.8
												vl.AutoPlay.MoveTo(arg2.Position, flag18 and 2.4 or 1.1)
												vl.Counter.Holding = true
												if vl.Services.Replicated:GetAttribute("LastHitType") ~= "Spike" then
													return true
												end
												local n33 = vl.AutoPlay.FlatDist(arg2.Position) or 99
												if not flag18 and (n33 > 2.8 or v116 > 2.4 or n32 > 3.4) and time > v84[41] then
													return v84[158]
												end

												if vl.Move.StateValue("IsJumping") ~= true then
													if time <= 0.6 and n32 <= 3.6 and v116 <= 3.2 then
														vl.AutoPlay.FaceNet()
														local v117 = vl.AutoPlay.Humanoid()

														if v117 and v114 and v115 then
															local v118 = v101.new(0, v84[108], v115.Position.Z - v114.Position.Z)
															local unit

															if v118.Magnitude > 0.05 then
																unit = v118.Unit
															else
																unit = v101.zero
															end

															v89(function()
																v117:Move(unit, v84[62])
															end)
														end

														vl.AutoPlay.Goal = nil
														vl.Serve.Jump()
													end

													return v84[158]
												end

												if n32 > 3.6 or v116 > 3.2 or time > 0.65 then
													return v84[158]
												end
												vl.AutoPlay.FaceNet()
												if not vl.Move.Ready(true, true) then
													return true
												end

												if not vl.Move.Allowed("Block", arg.Position) then
													if vl.Move.Force("Block", true) then
														vl.Counter.LastBlock = v113
													end

													return v84[158]
												end

												if vl.Move.Force("Block", v84[158]) then
													vl.Counter.LastBlock = v113
												end

												return true
											end

											vl.Counter.TryDig = function(arg, arg2)
												local v113 = v110.clock()
												if v113 - (vl.Counter.LastDig or 0) < 0.25 then
													return v84[62]
												end

												if not arg2 then
													return false
												end
												vl.AutoPlay.MoveTo(arg2.Position, 1.25)
												vl.Counter.Holding = true
												if fn30("vl_autodive", false) == true or fn30("vl_autorec", false) == true then
													return v84[158]
												end
												local distance = arg2.Distance or vl.AutoPlay.FlatDist(arg2.Position)
												if not distance then
													return true
												end

												if distance > v109.min(v97(fn30("vl_rec_range", v84[73])) or v84[73], vl.Reach.Normal) then
													if vl.Dive.ShouldCommit(arg2.Time or 0, distance) and vl.Move.Ready(false, true) and vl.Move.Allowed("Dive", arg2.Position) then
														vl.Dive.Face(arg2.Position)

														if vl.Dive.Fire(arg2.Position) then
															vl.Counter.LastDig = v113
															vl.Dive.LastAttempt = v113
														end
													end

													return v84[158]
												end

												if not vl.Move.Ready(false) then
													return true
												end

												if arg.Speed < 6 then
													return true
												end
												local str8 = arg.Speed >= 20 and "Bump" or vl.Rec.Choose(arg)
												if not vl.Move.Allowed(str8, arg.Position) then
													return true
												end
												vl.Rec.FaceForMove(str8)

												if vl.Move.Perform(str8, false) then
													vl.Counter.LastDig = v113

													if n24 >= 4051 then
														while true do
														end
													else
														vl.Rec.LastAttempt = v113
													end
												end

												return true
											end

											vl.Counter.Step = function()
												if not vl.Counter.Enabled() then
													if vl.Counter.Holding then
														vl.Counter.Holding = v84[62]

														if fn30("vl_autoplay", false) ~= true and fn30("vl_autojoin", v84[62]) ~= true then
															vl.AutoPlay.ReleaseControl()
														end
													end

													return
												end

												if fn30("vl_autoplay", v84[62]) == true then
													vl.Counter.Holding = false
													return
												end
												local v113 = vl.Ball.Resolve()

												if not vl.Counter.IsThreat(v113) then
													if vl.Counter.Holding then
														vl.Counter.Holding = v84[62]
														vl.AutoPlay.ReleaseControl()
													end

													return
												end

												if vl.Counter.IsServeBall() then
													if vl.Counter.Holding then
														vl.Counter.Holding = false
														vl.AutoPlay.ReleaseControl()
													end

													return
												end

												if vl.Counter.PickMode(v113) == "Block" then
													local v114 = vl.Counter.NetSpot(v113)
													local v115 = vl.Counter.DigSpot(v113)
													local v116 = vl.Court.Net()
													local v117 = vl.Character.Root()
													if v116 and v117 and (v117.Position.Z < v116.Position.Z and v113.Position.Z < v116.Position.Z - 2 or v117.Position.Z > v116.Position.Z and v113.Position.Z > v116.Position.Z + 2) and v115 then
														vl.Counter.TryDig(v113, v115)
														return
													end
													vl.Counter.TryBlock(v113, v114)
													return
												end

												local v114 = vl.Counter.DigSpot(v113)

												if v114 then
													vl.Counter.TryDig(v113, v114)
												end
											end

											vl.Join = {
												LastRequest = v84[108],
												LastReturn = v84[108],
												Done = v84[62],
											}

											vl.Join.FireButton = function(arg)
												if not arg or not arg:IsA("GuiButton") then
													return v84[62]
												end
												local flag18 = v84[62]

												v89(function()
													for _, v113 in v93({ arg.Activated, arg.MouseButton1Click }) do
														local tbl19 = v88 and v88(v113) or {}

														for _, v114 in v93(tbl19) do
															local v115 = v84[199]

															if v90(v114.Fire) == v115 then
																v114:Fire()
																flag18 = true
															elseif v90(v114.Function) == "function" then
																v114.Function()
																flag18 = v84[158]
															end
														end
													end

													if arg.Activate then
														arg:Activate()
														flag18 = v84[158]
													end
												end)

												return flag18
											end

											vl.Join.ReallyVisible = function(arg)
												if not arg or not arg:IsA("GuiObject") then
													return v84[62]
												end
												local parent = arg
												local exitTo = nil

												while true do
													if parent then
														if parent:IsA("GuiObject") and parent.Visible == v84[62] then
															exitTo = 2
															break
														elseif not parent:IsA("LayerCollector") then
															parent = parent.Parent
															continue
														end

														break
													else
														exitTo = 1
														break
													end
												end

												if exitTo ~= 1 then
													if exitTo == 2 then
														return false
													end

													if parent.Enabled == false then
														return false
													end
												end

												local absoluteSize = arg.AbsoluteSize
												return absoluteSize.X >= 10 and absoluteSize.Y >= 10
											end

											vl.Join.Interface = function()
												local v113 = vl.Services.LocalPlayer:FindFirstChild(v84[182])
												return v113 and v113:FindFirstChild("Interface")
											end

											vl.Join.GameController = function()
												local knit = vl.Modules.Knit
												if not knit then
													return nil
												end

												local v113, v114 = v89(function()
													return knit.GetController("GameController")
												end)

												if v113 and v90(v114) == "table" then
													return v114
												end
												return nil
											end

											vl.Join.NeedsReturn = function()
												local v113 = vl.Join.Interface()
												if not v113 then
													return false
												end
												local roundOverStats = v113:FindFirstChild("RoundOverStats")
												roundOverStats = roundOverStats and roundOverStats:FindFirstChild("ReturnContainer")
												roundOverStats = roundOverStats and roundOverStats:FindFirstChild("BackBtn")
												if roundOverStats and vl.Join.ReallyVisible(roundOverStats) then
													return true, roundOverStats
												end
												local idle = v113:FindFirstChild("Idle")
												idle = idle and idle:FindFirstChild("BackBtn")
												if idle and vl.Join.ReallyVisible(idle) then
													return v84[158], idle
												end

												if vl.Services.Replicated:GetAttribute("RoundState") == 4 then
													return true, roundOverStats
												end
												return false, nil
											end

											vl.Join.PressReturn = function()
												local v113 = v110.clock()
												if v113 - vl.Join.LastReturn < 1.5 then
													return false
												end
												local v114, v115 = vl.Join.NeedsReturn()
												if not v114 then
													return false
												end
												vl.Join.LastReturn = v113
												vl.Join.Done = false
												vl.AutoPlay.ReleaseControl()
												local knit = vl.Modules.Knit
												local flag18 = v84[62]
												local flag19 = vl.Services.Replicated:GetAttribute("RoundState") == v84[68]
												local flag20 = v91(v115) == "Instance" and vl.Join.ReallyVisible(v115)
												flag19 = flag19 or flag20

												if knit then
													v89(function()
														local v116 = vl.Join.GameController()

														if v116 and v90(v116.Statistics) == "table" and v90(v116.Statistics.get) == "function" then
															local v117, v118 = v89(v116.Statistics.get, v116.Statistics)
															flag18 = v117 and v118 ~= nil
															local v119 = v84[199]

															if v90(v116.Statistics.set) == v119 then
																v116.Statistics:set(nil)
															end
														end
													end)

													v89(function()
														local LevelService = knit.GetService("LevelService")
														local flag21

														if LevelService then
															local v116 = v84[199]
															flag21 = v90(LevelService.RequestLevelUpEffect) == v116
														else
															flag21 = LevelService
														end

														if flag21 then
															LevelService:RequestLevelUpEffect()
														end
													end)

													if flag19 then
														v89(function()
															local GameService = knit.GetService("GameService")

															if GameService and v90(GameService.ReturnPartyToLobby) == "function" then
																GameService:ReturnPartyToLobby()
															end
														end)
													end
												end

												if v91(v115) == "Instance" then
													vl.Join.FireButton(v115)
												end

												v112.defer(function()
													v112.wait(v84[13])
													local game_ = vl.Join.Interface()
													game_ = game_ and game_:FindFirstChild("Game")
													game_ = game_ and game_:FindFirstChild("ReturnToLobbyConfirmMenu")

													if game_ and vl.Join.ReallyVisible(game_) then
														for _, descendant in v93(game_:GetDescendants()) do
															if descendant:IsA("GuiButton") and vl.Join.ReallyVisible(descendant) then
																local textLabel = descendant:FindFirstChildWhichIsA("TextLabel", true)

																if textLabel then
																	textLabel = v108.lower(textLabel.Text or "")
																end

																textLabel = textLabel or v108.lower(descendant.Name)
																if textLabel:find("confirm") or textLabel:find("yes") or textLabel:find("return") then
																	vl.Join.FireButton(descendant)
																	break
																end
															end
														end
													end

													vl.Join.UnlockMouse()
												end)

												return cleared or v115 ~= nil
											end

											vl.Join.RoundOver = function()
												local v113, v114 = vl.Join.NeedsReturn()
												if v113 then
													return v114 or true
												end
												return nil
											end

											vl.Join.Pad = function()
												local tagged = v85:GetService("CollectionService"):GetTagged("PlayPortalTouchpad")

												for _, v113 in v93(tagged) do
													if v113:IsA("BasePart") and v113:IsDescendantOf(v86) then
														return v113
													end
												end

												local volleyballLobby = v86:FindFirstChild("Volleyball Lobby")
												local play = volleyballLobby and volleyballLobby:FindFirstChild("Interactables") and volleyballLobby.Interactables:FindFirstChild("PLAY")
												play = play and play:FindFirstChild("Ring")
												if play and play:IsA("BasePart") then
													return play
												end
												return nil
											end

											vl.Join.DesiredIndex = function()
												local v113 = v84[76]
												if fn30("vl_autojoin_side", "Left") == v113 then
													return 2
												end
												return 1
											end

											vl.Join.Controller = function()
												local knit = vl.Modules.Knit
												if not knit then
													return nil
												end

												local v113, v114 = v89(function()
													return knit.GetController("TeamSelectionController")
												end)

												if v113 and v90(v114) == "table" then
													return v114
												end
												return nil
											end

											vl.Join.RestoreZoom = function()
												local localPlayer = vl.Services.LocalPlayer
												local StarterPlayer = v85:GetService("StarterPlayer")
												if not localPlayer or not StarterPlayer then
													return
												end

												if localPlayer.CameraMinZoomDistance + 0.05 < localPlayer.CameraMaxZoomDistance then
													return
												end
												localPlayer.CameraMaxZoomDistance = StarterPlayer.CameraMaxZoomDistance
												localPlayer.CameraMinZoomDistance = StarterPlayer.CameraMinZoomDistance
											end

											vl.Join.UnlockMouse = function()
												local knit = vl.Modules.Knit

												if knit then
													v89(function()
														local MouseLockController = knit.GetController("MouseLockController")

														if MouseLockController and v90(MouseLockController.Set) == "function" then
															MouseLockController:Set(false)
														end
													end)

													v89(function()
														local v113 = vl.Join.Controller()

														if v113 and v90(v113.BindCamera) == "function" then
															v113:BindCamera(false)
														end
													end)
												end

												v89(function()
													v85:GetService("GamepadService"):DisableGamepadCursor()
												end)

												if vl.Services.Input then
													vl.Services.Input.MouseBehavior = v106.MouseBehavior.Default
												end

												vl.Join.RestoreZoom()
											end

											vl.Join.TeamInfo = function(arg)
												local v113 = vl.Join.Controller()
												if not v113 or v90(v113.GetTeamData) ~= "function" then
													return nil
												end
												local v114, v115 = v89(v113.GetTeamData, v113)
												local flag18 = not v114

												if not flag18 then
													local v116 = v84[74]
													flag18 = v90(v115) ~= v116
												end

												if flag18 then
													return nil
												end

												for k, v116 in v92(v115) do
													local v117 = v84[74]
													if v90(v116) ~= v117 then
														continue
													end

													if (v91(k) == "Instance" and k:GetAttribute("Index") or v116.Index) == arg then
														return v116, k
													end
												end

												return nil
											end

											vl.Join.FreeSlots = function(arg)
												local positions = vl.Join.TeamInfo(arg)
												positions = positions and positions.Positions
												local tbl19 = {}

												for i = v84[105], 6 do
													if (v90(positions) == "table" and positions[i]) == nil then
														v107.insert(tbl19, i)
													end
												end

												return tbl19
											end

											vl.Join.AlreadyOnSide = function(arg)
												local team = vl.Services.LocalPlayer.Team
												if not team then
													return false
												end

												if not flag3 then
													return
												end
												return team:GetAttribute("Index") == arg
											end

											vl.Join.Finish = function()
												if vl.Join.Done then
													return
												end
												vl.Join.Done = true
												vl.AutoPlay.ReleaseControl()
												local v113 = vl.Join.Controller()

												if v113 and v90(v113.Close) == "function" then
													v89(v113.Close, v113, true)
												end

												vl.Join.UnlockMouse()
											end

											vl.Join.ClickSlot = function(arg, arg2)
												local playerGui = vl.Services.LocalPlayer:FindFirstChild("PlayerGui")
												playerGui = playerGui and playerGui:FindFirstChild("Interface")
												playerGui = playerGui and playerGui:FindFirstChild("TeamSelection")
												playerGui = playerGui and playerGui:FindFirstChild(v96(arg))
												playerGui = playerGui and playerGui:FindFirstChild("TeamHolder")
												if not playerGui then
													return v84[62]
												end

												for _, child in v93(playerGui:GetChildren()) do
													if child:IsA("GuiButton") then
														local playerPosition = child:FindFirstChild("PlayerPosition")
														if playerPosition and v97(playerPosition.Text) == arg2 then
															return vl.Join.FireButton(child)
														end
													end
												end

												return false
											end

											vl.Join.Request = function()
												local v113 = v110.clock()
												if v113 - vl.Join.LastRequest < 1.8 then
													return
												end
												vl.Join.LastRequest = v113
												local v114 = vl.Join.DesiredIndex()
												if vl.Join.AlreadyOnSide(v114) then
													vl.Join.Finish()
													return
												end
												local v115 = vl.Join.FreeSlots(v114)
												if #v115 == 0 then
													return
												end
												local knit = vl.Modules.Knit
												if not knit then
													return
												end
												local v116 = vl.Join.Controller()

												if v116 and v90(v116.Open) == "function" then
													v89(v116.Open, v116, v84[158], true)
												end

												vl.Join.UnlockMouse()

												local v117, v118 = v89(function()
													return knit.GetService("GameService")
												end)

												local flag18 = not v117 or v90(v118) ~= "table"

												if not flag18 then
													local v119 = v84[199]
													flag18 = v90(v118.RequestJoin) ~= v119
												end

												if flag18 then
													return
												end

												for _, v119 in v93(v115) do
													if vl.Join.AlreadyOnSide(v114) then
														vl.Join.Finish()
														return
													end
													vl.Join.ClickSlot(v114, v119)
													local flag19 = v84[62]

													v89(function()
														local v120 = v118:RequestJoin(v114, v119)

														if v90(v120) == "table" and v90(v120.expect) == "function" then
															flag19 = v120:expect() and v84[158] or v84[62]
														else
															local v121 = v84[74]

															if v90(v120) == v121 and v90(v120.await) == "function" then
																local v122, v123 = v120:await()
																flag19 = v122 and v123 and v84[158] or false
															else
																flag19 = v120 and true or false
															end
														end
													end)

													local flag20 = flag19 or vl.Join.AlreadyOnSide(v114)

													if not flag20 then
														local v120 = v84[158]
														flag20 = vl.Move.StateValue("IsPlaying") == v120
													end

													if flag20 then
														vl.Join.Finish()
														return
													end
												end

												vl.Join.UnlockMouse()
											end

											vl.Join.Step = function()
												if vl.Join.RoundOver() then
													return
												end
												local v113 = vl.Join.DesiredIndex()
												local v114 = v84[158]
												if vl.Move.StateValue("IsPlaying") == v114 or vl.Join.AlreadyOnSide(v113) then
													vl.Join.Finish()
													return
												end

												if vl.Services.Replicated:GetAttribute("RoundState") == 4 then
													return
												end
												vl.Join.Done = false
												local v115 = vl.Join.Pad()
												local v116 = vl.Character.Root()
												if not v115 or not v116 then
													return
												end
												local position = v115.Position
												local position2 = v116.Position
												if (v101.new(position.X, v116.Position.Y, position.Z) - position2).Magnitude > 4 then
													vl.AutoPlay.MoveTo(position)
													return
												end
												vl.AutoPlay.Target = nil
												vl.Join.Request()
											end

											vl.AutoPlay = {
												LastAction = 0,
												Active = false,
												Goal = nil,
												_net = nil,
												_court = nil,
												_cacheAt = 0,
												_decideAt = 0,
											}

											vl.AutoPlay.Humanoid = function()
												local character = vl.Services.LocalPlayer.Character
												return character and character:FindFirstChildOfClass("Humanoid")
											end

											vl.AutoPlay.CacheCourt = function()
												local v113 = v110.clock()
												if v113 - vl.AutoPlay._cacheAt < 2 and vl.AutoPlay._net and vl.AutoPlay._court then
													return vl.AutoPlay._court, vl.AutoPlay._net
												end
												vl.AutoPlay._court = vl.Court.Lines()
												vl.AutoPlay._net = vl.Court.Net()
												vl.AutoPlay._cacheAt = v113
												return vl.AutoPlay._court, vl.AutoPlay._net
											end

											vl.AutoPlay.OnOurSide = function(arg)
												local physics = vl.Modules.Physics
												local flag18 = not physics

												if not flag18 then
													local v113 = v84[199]
													flag18 = v90(physics.isPointOnTeamSide) ~= v113
												end

												if flag18 then
													return true
												end
												local bump, v113 = v89(physics.isPointOnTeamSide, vl.Services.LocalPlayer, arg, "Bump")
												return bump and v113 == true
											end

											vl.AutoPlay.FlatDist = function(arg)
												local v113 = vl.Character.Root()
												if not v113 or not arg then
													return nil
												end
												return v101.new(arg.X - v113.Position.X, 0, arg.Z - v113.Position.Z).Magnitude
											end

											vl.AutoPlay.Home = function()
												local v113, v114 = vl.AutoPlay.CacheCourt()
												local v115 = vl.Character.Root()
												if not v113 or not v114 or not v115 then
													return nil
												end
												local position = v113.Position
												local n32 = v113.Size * 0.5
												return v101.new(position.X, v115.Position.Y, (v114.Position.Z + (v115.Position.Z < v114.Position.Z and position.Z - n32.Z + 6 or position.Z + n32.Z - 6)) * v84[45])
											end

											vl.AutoPlay.FaceNet = function()
												local v113 = vl.Character.Root()
												local v114, v115 = vl.AutoPlay.CacheCourt()
												if not v113 or not v115 then
													return
												end
												local v116 = v101.new(v115.Position.X - v113.Position.X, 0, v115.Position.Z - v113.Position.Z)
												if v116.Magnitude < v84[110] then
													return
												end
												local n32 = v115.Position + v116.Unit * 18

												if v114 then
													n32 = v101.new(v114.Position.X, v113.Position.Y, n32.Z)
												end

												local v117 = v101.new(n32.X - v113.Position.X, 0, n32.Z - v113.Position.Z)
												if v117.Magnitude < 0.1 then
													return
												end
												v113.CFrame = v102.lookAt(v113.Position, v113.Position + v117.Unit)
											end

											vl.AutoPlay.IsClosest = function(arg)
												local v113 = vl.Character.Root()
												if not v113 or not arg then
													return false
												end
												local magnitude = (v101.new(arg.X, v113.Position.Y, arg.Z) - v113.Position).Magnitude
												if magnitude <= 16 then
													return true
												end
												local team = vl.Services.LocalPlayer.Team
												if not team then
													return true
												end

												for _, player in v93(team:GetPlayers()) do
													if player == vl.Services.LocalPlayer then
														continue
													end
													local character = player.Character
													character = character and character.PrimaryPart

													if character then
														local position = character.Position
														if (v101.new(arg.X, character.Position.Y, arg.Z) - position).Magnitude + 4 < magnitude then
															return v84[62]
														end
													end
												end

												return true
											end

											vl.AutoPlay.ReleaseControl = function()
												vl.AutoPlay.Goal = nil
												if not vl.AutoPlay.Active then
													return
												end
												local v113 = vl.AutoPlay.Humanoid()

												if v113 then
													v89(function()
														v113:Move(v101.zero, false)
													end)
												end

												vl.AutoPlay.Active = v84[62]
											end

											vl.AutoPlay.MoveTo = function(goal, arg)
												if not goal then
													return
												end

												if vl.Move.StateValue("IsBusy") == true then
													return
												end

												if vl.Move.StateValue(v84[140]) == true then
													return
												end

												if vl.Move.StateValue("IsServing") == true then
													return
												end
												vl.AutoPlay.Goal = goal
												vl.AutoPlay.StopDist = v97(arg) or 1.4
												vl.AutoPlay.Active = true
											end

											vl.AutoPlay.MoveDrive = function()
												if not vl.AutoPlay.Active or not vl.AutoPlay.Goal then
													return
												end
												local v113 = vl.AutoPlay.Humanoid()
												local v114 = vl.Character.Root()
												if not v113 or not v114 then
													return
												end

												if vl.Move.StateValue("IsBusy") == true then
													return
												end
												local v115 = v84[158]
												if vl.Move.StateValue("IsJumping") == v115 then
													return
												end
												local goal = vl.AutoPlay.Goal
												local v116 = v109.max(0.75, v97(vl.AutoPlay.StopDist) or 1.4)
												local v117 = v101.new(goal.X - v114.Position.X, 0, goal.Z - v114.Position.Z)

												if v117.Magnitude < v116 then
													v89(function()
														v113:Move(v101.zero, false)
													end)

													return
												end

												v89(function()
													v113:Move(v117.Unit, false)
												end)
											end

											vl.AutoPlay.UnderSpot = function(arg, arg2)
												local v113 = vl.Character.Root()
												if not v113 or not arg then
													return false, nil, nil
												end
												local v114 = vl.Predict.SpikeContact(arg, 2.8)
												local position = v114 and v114.Position or v101.new(arg.Position.X, v113.Position.Y, arg.Position.Z)
												return v101.new(position.X - v113.Position.X, 0, position.Z - v113.Position.Z).Magnitude <= (v97(arg2) or 3.4), position, v114
											end

											vl.AutoPlay.BallHeight = function(arg)
												local v113
												v113, v113 = vl.AutoPlay.CacheCourt()
												return arg.Position.Y - (v113 and v113.Position.Y - 8 or arg.Position.Y - v84[60])
											end

											vl.AutoPlay.ChooseReceive = function(arg)
												if arg.Speed >= 20 then
													return "Bump"
												end
												local v113 = v84[147]
												if vl.AutoPlay.BallHeight(arg) <= v113 then
													return "Bump"
												end
												return "Set"
											end

											vl.AutoPlay.JumpApexTime = function()
												local launchSpeed = v84[97]
												local jumpPhysics = vl.Modules.JumpPhysics

												if jumpPhysics and v90(jumpPhysics.LaunchSpeed) == "number" then
													launchSpeed = jumpPhysics.LaunchSpeed
												end

												local state = vl.Modules.State
												local id = state and v90(state.get) == "function" and state.Id
												local n32 = 1

												if id then
													if n25 <= 7817 then
														while true do
														end
													else
														local jumpPower
														jumpPower, n32 = v89(state.get, vl.Services.LocalPlayer, state.Id.Multiplier, "JumpPower", 1)
														jumpPower = jumpPower and v90(n32) == "number"
														local n33 = 1

														if not jumpPower then
															n32 = n33
														end
													end
												end

												local gravity = v86.Gravity

												if gravity < v84[105] then
													gravity = 43
												end

												return launchSpeed * n32 / gravity
											end

											vl.AutoPlay.ShouldJump = function(arg)
												if vl.Move.StateValue("IsJumping") == true then
													return false
												end
												local v113 = v84[158]
												if vl.Move.StateValue("IsBusy") == v113 then
													return false
												end

												if vl.Ball.OurServeSequence() then
													return false
												end

												if vl.Move.TouchedLast() then
													return false
												end
												local v114 = vl.Character.Root()
												if not v114 then
													return false
												end
												local attribute = vl.Services.Replicated:GetAttribute("LastHitType")
												local attribute2 = vl.Services.Replicated:GetAttribute("LastHitTeam")
												local team = vl.Services.LocalPlayer.Team
												team = team and attribute2 == team.Name and (attribute == v84[23] or attribute == "JumpSet")
												if not vl.Ball.IsIncoming() and not team then
													return false
												end
												local n32 = vl.Court.FloorAt(v114.Position) or v114.Position.Y - 3
												local v115 = vl.Serve.JumpHeight()
												local n33 = arg.Position.Y - n32
												if n33 < 5 then
													return false
												end
												local v116, v117, time = vl.AutoPlay.UnderSpot(arg, team and 4.2 or 3.6)
												time = time and time.Time or 9
												local v118 = v109.clamp(vl.AutoPlay.JumpApexTime() * 0.75, 0.22, 0.95)
												if not v116 then
													return false
												end

												if arg.Position.Y > n32 + v115 + 6 and arg.Velocity.Y > 3 then
													return false
												end

												if time <= v118 + 0.12 then
													return v84[158]
												end

												if n33 >= 5.5 and n33 <= v115 + 9 and arg.Velocity.Y <= 12 then
													return true
												end

												if team and n33 >= 5.2 and arg.Velocity.Y <= 28 then
													return v84[158]
												end
												return false
											end

											vl.AutoPlay.Receive = function(arg)
												local v113 = v110.clock()
												if v113 - vl.AutoPlay.LastAction < 0.22 then
													return
												end

												if vl.Ball.OurServeSequence() then
													return
												end

												if vl.Dive.OwnsBall(arg) then
													return
												end

												if not vl.Rec.CanReceive(arg) then
													return
												end

												if not vl.Move.Ready(false) then
													return
												end
												local v114 = vl.Expander.GetMultiplier()
												local v115 = vl.AutoPlay.FlatDist(arg.Position)
												local v116 = v109.min(16 * v114, 28)
												if not v115 or v115 > v116 then
													return
												end
												local v117 = vl.AutoPlay.ChooseReceive(arg)
												if not vl.Move.Allowed(v117, arg.Position) then
													return
												end
												vl.AutoPlay.ReleaseControl()
												vl.Rec.FaceForMove(v117)

												if vl.Move.Perform(v117, false) then
													vl.AutoPlay.LastAction = v113
													vl.Rec.LastAttempt = v113
												end
											end

											vl.AutoPlay.TryDive = function(arg, arg2)
												local v113 = v84[158]
												if fn30("vl_autodive", false) == v113 then
													return false
												end
												local v114 = v110.clock()
												if v114 - vl.Dive.LastAttempt < 1.4 then
													return false
												end

												if vl.Rally.IsFrozen() then
													return false
												end

												if vl.Move.TouchedLast() then
													return false
												end

												if not vl.Ball.IsIncoming() then
													return false
												end

												if not vl.AutoPlay.OnOurSide(arg) then
													return false
												end
												local v115 = vl.Ball.Resolve()
												if v115 and not vl.Dive.WillLandInCourt(v115) then
													return v84[62]
												end

												if arg and not vl.Court.InCourt(arg) then
													return v84[62]
												end
												local v116 = vl.AutoPlay.FlatDist(arg)
												local v117 = v109.min(v97(fn30("vl_dive_range", 30)) or 30, vl.Reach.Dive)
												if not v116 or v116 > v117 or v116 < v84[138] then
													return v84[62]
												end

												if not vl.Dive.ShouldCommit(arg2, v116) then
													return false
												end

												if not vl.Move.Ready(v84[62]) then
													return false
												end

												if not vl.Move.Allowed("Dive", arg) then
													return false
												end
												vl.AutoPlay.ReleaseControl()
												vl.Dive.Face(arg)

												if vl.Dive.Fire(arg) then
													vl.Dive.LastAttempt = v114
													vl.AutoPlay.LastAction = v114
													return true
												end

												return v84[62]
											end

											vl.AutoPlay.TryAttack = function(arg)
												if vl.Move.StateValue("IsJumping") == true then
													vl.Spike.Step(arg)

													if vl.Rec.TryJumpSet(arg) then
														vl.AutoPlay.LastAction = v110.clock()
													end

													return
												end

												if not vl.AutoPlay.ShouldJump(arg) then
													return
												end
												vl.AutoPlay.ReleaseControl()

												if vl.Serve.Jump() then
													vl.AutoPlay.LastAction = v110.clock()

													v112.defer(function()
														local v113 = v84[199]
														local flag18 = v91(v87) == v113 and v98(v87(), "__VL") or nil
														local resolve = flag18 and flag18.Ball and flag18.Ball.Resolve and flag18.Ball.Resolve()

														if resolve and flag18.Spike then
															flag18.Spike.Step(resolve)
														end
													end)
												end
											end

											vl.AutoPlay.Decide = function()
												if vl.Move.StateValue("IsPlaying") ~= true and vl.Move.StateValue("IsServing") ~= true then
													vl.AutoPlay.ReleaseControl()
													return
												end
												local flag18 = vl.Move.StateValue("IsServing") == true

												if not flag18 then
													flag18 = (vl.Serve.FinishUntil or 0) > v110.clock()
												end

												if flag18 then
													vl.AutoPlay.ReleaseControl()
													vl.Serve.Step()
													return
												end

												if vl.Ball.OurServeSequence() then
													vl.AutoPlay.ReleaseControl()
													local v113 = vl.AutoPlay.Home()

													if v113 then
														vl.AutoPlay.MoveTo(v113)
													end

													return
												end

												if vl.Rally.IsFrozen() then
													vl.AutoPlay.ReleaseControl()
													local v113 = vl.AutoPlay.Home()

													if v113 then
														vl.AutoPlay.MoveTo(v113)
													end

													return
												end

												local v113 = vl.Ball.Resolve()

												if not v113 then
													local v114 = vl.AutoPlay.Home()

													if v114 then
														vl.AutoPlay.MoveTo(v114)
													end

													return
												end

												local v114 = v84[158]

												if vl.Move.StateValue("IsJumping") == v114 then
													vl.AutoPlay.Goal = nil
													vl.AutoPlay.TryAttack(v113)
													return
												end

												local v115 = vl.AutoPlay.OnOurSide(v113.Position)
												local time = vl.Predict.DigContact(v113, vl.Dive.DigHeight, 2.5) or vl.Predict.Landing(v113, v84[91])
												local position = time and time.Position or v113.Position
												time = time and time.Time or 0
												local v116 = vl.AutoPlay.OnOurSide(position)

												if fn30("vl_rec_ignore_dead", true) == true then
													local v117 = vl.Predict.Landing(v113, 2.5)

													if v117 and v117.InCourt == false then
														local v118 = vl.AutoPlay.Home()

														if v118 then
															vl.AutoPlay.MoveTo(v118)
														end

														return
													end
												end

												if not v115 and not v116 then
													local v117 = vl.AutoPlay.Home()

													if v117 then
														vl.AutoPlay.MoveTo(v117)
													end

													return
												end

												local attribute = vl.Services.Replicated:GetAttribute("LastHitType")
												local attribute2 = vl.Services.Replicated:GetAttribute("LastHitTeam")
												local team = vl.Services.LocalPlayer.Team
												team = team and attribute2 == team.Name and (attribute == "Set" or attribute == "JumpSet")
												local v117 = vl.Ball.IsIncoming()

												if fn30("vl_rec_incoming_only", true) == true and not v117 then
													if not team then
														local v118 = vl.AutoPlay.Home()

														if v118 then
															vl.AutoPlay.MoveTo(v118)
														end

														return
													end
												end

												if vl.AutoPlay.TryDive(position, time) then
													return
												end
												local n32 = v113.Position.Y - (vl.Court.FloorAt(v113.Position) or v113.Position.Y - 3)
												local v118 = vl.AutoPlay.FlatDist(v113.Position)

												if (v117 or team) and n32 >= 5 and not vl.Move.TouchedLast() then
													local v119, v120, v121 = vl.AutoPlay.UnderSpot(v113, team and 4.2 or 3.6)

													if v120 then
														vl.AutoPlay.MoveTo(v120, 1.05)
													end

													if vl.AutoPlay.ShouldJump(v113) then
														vl.AutoPlay.TryAttack(v113)
														return
													end

													if n32 >= 5.5 or v121 and v121.Time and v121.Time > 0.12 then
														if not v119 then
															v119 = vl.AutoPlay.IsClosest(v120 or position)
														end

														if v119 or team then
															return
														end
													end
												end

												local position2 = v115 and v113.Position or position

												if not vl.AutoPlay.IsClosest(position2) then
													local v119 = vl.AutoPlay.Home()

													if v119 then
														vl.AutoPlay.MoveTo(v119)
													end

													return
												end

												local v119 = v109.clamp(time - 0.05, 0, v84[29])
												local n33

												if v115 then
													local v120 = v84[14]
													n33 = v113.Position + v101.new(v113.Velocity.X, 0, v113.Velocity.Z) * v120
												else
													n33 = vl.Predict.PositionAt(v113, v119)
												end

												vl.AutoPlay.MoveTo(v101.new(n33.X, position2.Y, n33.Z), 1.35)
												if not v118 then
													return
												end

												if v118 <= v109.min(15 * vl.Expander.GetMultiplier(), 28) and (not n32 or n32 < 6.8) then
													vl.AutoPlay.Receive(v113)
												end
											end

											vl.AutoPlay.Step = function()
												local v113 = v110.clock()
												local flag18 = vl.Spike.SyncJumpState()

												if flag18 then
													flag18 = (vl.Serve.FinishUntil or 0) <= v113
												end

												if flag18 then
													local v114 = vl.Ball.Resolve()

													if v114 then
														if vl.AkariTSH.ShouldHoldAutoSpike() then
															vl.AkariTSH.Step(v114)
														else
															vl.Spike.Step(v114)
														end
													end
												end

												if v113 - vl.AutoPlay._decideAt >= 0.05 then
													vl.AutoPlay._decideAt = v113
													vl.AutoPlay.Decide()
												end

												vl.AutoPlay.MoveDrive()
											end

											vl.ShiftLock = { Engaged = false, Owned = false, _human = nil }

											vl.ShiftLock.Controller = function()
												local knit = vl.Modules.Knit
												if not knit then
													return nil
												end

												local v113, v114 = v89(function()
													return knit.GetController("MouseLockController")
												end)

												if v113 and v90(v114) == "table" then
													return v114
												end
												return nil
											end

											vl.ShiftLock.Humanoid = function()
												local character = vl.Services.LocalPlayer.Character
												if not character or not character.Parent then
													vl.ShiftLock._human = nil
													return nil
												end
												local human = vl.ShiftLock._human
												if human and human.Parent == character then
													return human
												end
												local humanoid = character:FindFirstChildOfClass("Humanoid")
												vl.ShiftLock._human = humanoid
												return humanoid
											end

											vl.ShiftLock.GameEnabled = function()
												local v113 = vl.ShiftLock.Controller()
												if not v113 or v90(v113.Enabled) ~= "table" or v90(v113.Enabled.get) ~= "function" then
													return false
												end

												local v114, v115 = v89(function()
													return v113.Enabled:get()
												end)

												return v114 and v115 == true
											end

											vl.ShiftLock.Apply = function(arg)
												local v113 = vl.ShiftLock.Controller()
												if not v113 or v90(v113.Set) ~= "function" then
													return false
												end

												if not vl.ShiftLock.Humanoid() then
													return false
												end

												return (v89(function()
													v113:Set(arg)
												end))
											end

											vl.ShiftLock.Airborne = function()
												local v113 = vl.ShiftLock.Humanoid()
												if not v113 then
													return v84[62]
												end
												local state = v113:GetState()
												if state == v106.HumanoidStateType.Jumping or state == v106.HumanoidStateType.Freefall then
													return true
												end

												if vl.Move.StateValue("IsJumping") == true and v113.FloorMaterial == v106.Material.Air then
													return true
												end
												return false
											end

											vl.ShiftLock.Release = function()
												local flag18 = vl.ShiftLock.Owned == true
												vl.ShiftLock.Engaged = false
												vl.ShiftLock.Owned = v84[62]
												if not flag18 then
													return
												end
												vl.ShiftLock.Apply(false)
											end

											vl.ShiftLock.Engage = function()
												if vl.ShiftLock.Owned then
													return
												end

												if vl.ShiftLock.GameEnabled() then
													vl.ShiftLock.Engaged = true
													vl.ShiftLock.Owned = false
													return
												end

												if not vl.ShiftLock.Apply(v84[158]) then
													return
												end
												vl.ShiftLock.Owned = true
												vl.ShiftLock.Engaged = true
											end

											vl.ShiftLock.Step = function()
												if vl.ShiftLock.Airborne() then
													if vl.ShiftLock.Owned then
														if not vl.ShiftLock.GameEnabled() then
															vl.ShiftLock.Apply(v84[158])
														end

														return
													end

													if not vl.ShiftLock.Engaged then
														vl.ShiftLock.Engage()
													end

													return
												end

												if vl.ShiftLock.Engaged or vl.ShiftLock.Owned then
													vl.ShiftLock.Release()
												end
											end

											vl.DesyncSpike = {
												Active = false,
												OwnedLock = v84[62],
												Fired = false,
												WasJumping = false,
												Token = v84[108],
											}

											vl.DesyncSpike.Controller = function()
												local v113 = vl.ShiftLock.Controller()
												if v113 then
													return v113
												end
												local knit = vl.Modules.Knit
												if not knit then
													return nil
												end

												local v114, v115 = v89(function()
													return knit.GetController("MouseLockController")
												end)

												if v114 and v90(v115) == "table" then
													return v115
												end
												return nil
											end

											vl.DesyncSpike.BallPlayable = function()
												local v113 = vl.Character.Root()
												if not v113 then
													return false
												end
												local v114 = vl.Ball.Resolve()

												if not v114 then
													if not flag3 then
														return
													end
													return true
												end

												local v115 = vl.Court.Net()
												if not v115 then
													return true
												end
												local n32 = v113.Position.Z - v115.Position.Z
												if n32 * (v114.Position.Z - v115.Position.Z) >= 0 then
													return v84[158]
												end
												local v116 = v84[198]
												if (v91(v114.Velocity) == v116 and v114.Velocity.Z or 0) * n32 > 2 then
													return v84[158]
												end

												if vl.Predict and vl.Predict.PositionAt then
													local v117 = vl.Predict.PositionAt(v114, 0.35)
													if v117 and (v117.Z - v115.Position.Z) * n32 >= 0 then
														return true
													end
												end

												return false
											end

											vl.DesyncSpike.CanKeep = function()
												if fn30("vl_desync_spike", false) ~= true then
													return false
												end

												if not vl.Character.Root() then
													return v84[62]
												end

												if vl.Move.StateValue("IsPlaying") ~= true then
													return false
												end

												if vl.Move.StateValue("IsServing") == true then
													return v84[62]
												end

												if vl.Ball.OurServeSequence() then
													return false
												end
												local v113 = v84[158]
												if vl.Move.StateValue("IsStunned") == v113 then
													return false
												end

												if vl.Rally.IsFrozen() then
													return false
												end
												return true
											end

											vl.DesyncSpike.CanStart = function()
												if not vl.DesyncSpike.CanKeep() then
													return v84[62]
												end

												if not vl.DesyncSpike.BallPlayable() then
													return false
												end
												return true
											end

											vl.DesyncSpike.Cancel = function()
												local flag18 = vl.DesyncSpike.OwnedLock == true
												vl.DesyncSpike.Active = false
												vl.DesyncSpike.Fired = false
												vl.DesyncSpike.OwnedLock = false
												vl.DesyncSpike.Token = (vl.DesyncSpike.Token or v84[108]) + 1
												if not flag18 then
													return
												end

												if vl.ShiftLock.GameEnabled() then
													vl.ShiftLock.Apply(false)
												end
											end

											vl.DesyncSpike.Trigger = function()
												if not vl.DesyncSpike.CanStart() then
													return false
												end

												if vl.DesyncSpike.Active then
													return false
												end
												vl.DesyncSpike.Active = true
												vl.DesyncSpike.Fired = false
												vl.DesyncSpike.Token = (vl.DesyncSpike.Token or 0) + v84[105]
												local token = vl.DesyncSpike.Token
												local v113 = vl.ShiftLock.GameEnabled()
												vl.DesyncSpike.OwnedLock = false

												if not v113 then
													if vl.DesyncSpike.Controller() and vl.ShiftLock.Apply(true) then
														vl.DesyncSpike.OwnedLock = true
													end
												end

												v112.spawn(function()
													local v114 = v109.clamp(v97(fn30("vl_desync_frames", 1)) or 1, 0, 2)
													local v115 = v84[70]
													local n32 = v110.clock() + v115
													local exitTo = nil

													while true do
														if not (v110.clock() < n32) then
															exitTo = 1
															break
														else
															if vl.DesyncSpike.Token ~= token or not vl.DesyncSpike.Active then
																exitTo = 2
																break
															elseif vl.DesyncSpike.CanKeep() then
																local v116 = v84[158]

																if vl.Move.StateValue("IsJumping") == v116 then
																	exitTo = 1
																	break
																else
																	v112.wait()
																	continue
																end
															end

															break
														end
													end

													if exitTo == 1 then
														if vl.DesyncSpike.Token ~= token or not vl.DesyncSpike.Active then
															return
														end
														local v116 = v84[158]
														if vl.Move.StateValue("IsJumping") ~= v116 then
															vl.DesyncSpike.Cancel()
															return
														end

														for i = v84[105], v114 do
															if vl.DesyncSpike.Token ~= token or not vl.DesyncSpike.Active then
																return
															end
															v112.wait()
														end

														if vl.DesyncSpike.Token ~= token or not vl.DesyncSpike.Active then
															return
														end

														if not vl.DesyncSpike.CanKeep() then
															vl.DesyncSpike.Cancel()
															return
														end
														local v117 = v84[62]
														local v118 = v84[158]
														vl.Spike.AimForSwing(vl.Ball.Resolve(), v117, v118)

														if vl.Move.Force("Spike", true, 1) then
															vl.DesyncSpike.Fired = true
															vl.Spike.SwungThisJump = true
															vl.Spike.SwingAt = v110.clock()
														else
															vl.DesyncSpike.Cancel()
														end

														return
													end

													if exitTo == 2 then
														return
													end
													vl.DesyncSpike.Cancel()
												end)

												return true
											end

											vl.DesyncSpike.Step = function()
												local v113 = v84[158]
												local wasJumping = vl.Move.StateValue(v84[140]) == v113

												if wasJumping and not vl.DesyncSpike.WasJumping then
													vl.DesyncSpike.Trigger()
												end

												vl.DesyncSpike.WasJumping = wasJumping
												if not vl.DesyncSpike.Active then
													return
												end

												if not vl.DesyncSpike.CanKeep() then
													vl.DesyncSpike.Cancel()
													return
												end

												if vl.DesyncSpike.Fired and not wasJumping then
													vl.DesyncSpike.Cancel()
												end
											end

											vl.Serve = {
												Since = 0,
												FinishUntil = 0,
												Jumped = v84[62],
												BallWasHigh = false,
												AimLocked = false,
											}

											vl.Serve.Power = function()
												local components = vl.Modules.Components
												components = components and components.Power
												local v113 = v84[74]
												if v90(components) ~= v113 or v90(components.get) ~= "function" then
													return nil
												end
												local v114, v115 = v89(components.get, components)
												if v114 and v90(v115) == "number" then
													return v115
												end
												return nil
											end

											vl.Serve.PowerThreshold = function(arg)
												local v113 = v97(arg) or v84[105]
												if v113 >= 0.99 then
													return 0.98
												end
												return v109.max(v84[45], v113 - 0.01)
											end

											vl.Serve.PowerReady = function(arg)
												local v113 = vl.Serve.Power()
												local v114 = v84[66]
												if v90(v113) ~= v114 then
													return false
												end
												return v113 >= vl.Serve.PowerThreshold(arg)
											end

											vl.Serve.AimSide = function()
												if fn30("vl_serve_aim", true) ~= true then
													return nil
												end
												return fn30("vl_serve_corner", "Right")
											end

											vl.Serve.CornerTarget = function(arg)
												local v113 = vl.Court.Lines()
												local v114 = vl.Court.Net()
												local v115 = vl.Character.Root()
												if not v113 or not v114 or not v115 then
													return nil
												end
												local position = v113.Position
												local n32 = v113.Size * v84[45]
												local n33 = v115.Position.Z < v114.Position.Z and position.Z + n32.Z - v84[32] or position.Z - n32.Z + v84[32]
												local v116 = v101.new(position.X - n32.X + 6, position.Y, n33)
												local flag18 = v101.new(position.X + n32.X - 6, position.Y, n33)
												local v117 = v101.new(v84[108], 0, n33 - v115.Position.Z)
												local unit

												if v117.Magnitude < 1 then
													unit = v101.new(0, 0, 1)
												else
													unit = v117.Unit
												end

												local v118 = v101.new(unit.Z, 0, -unit.X)
												local v119 = v118:Dot(v116 - v115.Position)
												local v120 = v118:Dot(flag18 - v115.Position)
												if arg == "Left" then
													flag18 = v119 > v120 and flag18 or v116
													return flag18
												end
												return v119 > v120 and v116 or flag18
											end

											vl.Serve.Aim = function(arg)
												local handlers = vl.Modules.Handlers
												local tossDirection = handlers and handlers.States and handlers.States.TossDirection
												local v113 = v84[74]
												local flag18 = v90(tossDirection) == v113

												if flag18 then
													local v114 = v84[199]
													flag18 = v90(tossDirection.set) == v114
												end

												if flag18 then
													v89(function()
														tossDirection:set(v101.zero)
													end)
												end

												if not arg then
													return
												end
												local v114 = vl.Character.Root()
												local v115 = vl.Serve.CornerTarget(arg)
												if not v114 or not v115 then
													return
												end
												local v116 = v101.new(v115.X - v114.Position.X, v84[108], v115.Z - v114.Position.Z)
												if v116.Magnitude < 1 then
													return
												end
												local character = vl.Services.LocalPlayer.Character
												character = character and character:FindFirstChildOfClass("Humanoid")

												if character then
													character.AutoRotate = false
												end

												v114.CFrame = v102.lookAt(v114.Position, v114.Position + v116.Unit)
											end

											vl.Serve.SetAimLock = function(arg)
												local aimLocked = arg == true
												if vl.Serve.AimLocked == aimLocked then
													return
												end
												vl.Serve.AimLocked = aimLocked
												if aimLocked then
													return
												end
												local character = vl.Services.LocalPlayer.Character
												character = character and character:FindFirstChildOfClass("Humanoid")

												if character then
													character.AutoRotate = true
												end
											end

											vl.Serve.Press = function(arg)
												local toss = vl.Modules.Toss
												if not toss or v90(toss.onTossRequest) ~= "function" then
													return false
												end

												v112.spawn(function()
													vl.Serve.Aim(arg)
													v89(toss.onTossRequest, v106.UserInputState.Begin)
												end)

												return true
											end

											vl.Serve.JumpHeight = function()
												local jumpPhysics = vl.Modules.JumpPhysics
												local flag18 = jumpPhysics and v90(jumpPhysics.LaunchSpeed) == "number"
												local n32 = 30

												if flag18 then
													n32 = jumpPhysics.LaunchSpeed
												end

												local state = vl.Modules.State
												local id = state and v90(state.get) == "function" and state.Id
												local n33 = 1

												if id then
													local jumpPower
													jumpPower, n33 = v89(state.get, vl.Services.LocalPlayer, state.Id.Multiplier, "JumpPower", 1)
													jumpPower = jumpPower and v90(n33) == "number"
													local n34 = 1

													if not jumpPower then
														n33 = n34
													end
												end

												return (n32 * n33) ^ 2 / v84[117] * v86.Gravity
											end

											vl.Serve.ShouldJump = function(arg)
												local v113 = vl.Character.Root()
												if not v113 then
													return v84[62]
												end
												local n32 = vl.Court.FloorAt(v113.Position) or v113.Position.Y - 3
												local y = arg.Position.Y

												if n32 + vl.Serve.JumpHeight() + 5 < y then
													vl.Serve.BallWasHigh = true
												end

												if vl.Serve.BallWasHigh and arg.Velocity.Y < 0 then
													return true
												end
												local v114 = vl.Court.ReachFrom(arg.Position)
												if v114 and v114 <= 14 and arg.Velocity.Y < 0 and arg.Position.Y > n32 + 5 then
													return true
												end
												return false
											end

											vl.Serve.Jump = function()
												if vl.Move.StateValue(v84[72]) == true then
													return v84[62]
												end
												local v113 = v84[158]
												if vl.Move.StateValue("IsServing") == v113 then
													return v84[62]
												end

												if vl.Move.StateValue("IsJumping") == true then
													return v84[158]
												end
												local jump = vl.Modules.Jump
												local flag18

												if jump then
													local v114 = v84[199]
													flag18 = v90(jump.onJumpRequest) == v114
												else
													flag18 = jump
												end

												if flag18 then
													return (v89(jump.onJumpRequest, v106.UserInputState.Begin))
												end
												local knit = vl.Modules.Knit
												if not knit then
													return false
												end

												local v114, v115 = v89(function()
													return knit.GetController("GameController")
												end)

												if not v114 or v90(v115) ~= "table" or v90(v115.PerformJump) ~= "function" then
													return false
												end
												return (v89(v115.PerformJump, v115, nil, nil, nil, nil))
											end

											vl.Serve.Spike = function(arg)
												local v113 = v110.clock()
												if v113 - vl.Spike.LastAttempt < v84[47] then
													return
												end

												if vl.Move.StateValue(v84[140]) ~= true then
													return
												end
												local v114 = vl.Court.ReachFrom(arg.Position)
												local v115 = v109.min(v97(fn30("vl_spike_range", 14)) or v84[73], vl.Reach.Normal)
												if not v114 or v114 > v115 then
													return
												end
												local v116 = vl.Spike.Center()

												if v116 then
													local magnitude = (arg.Position - v116).Magnitude

													if magnitude > 5 then
														if (vl.Predict.PositionAt(arg, 0.05) - v116).Magnitude < magnitude then
															return
														end
													end
												end

												if stateValue("IsPlaying") ~= true then
													return
												end

												if stateValue("IsStunned") == true then
													return
												end

												if vl.Move.Force("Spike", v84[158]) then
													vl.Spike.LastAttempt = v113
													vl.Serve.FinishUntil = v84[108]
												end
											end
										end
									end

									do
										vl.Serve.Finish = function()
											if vl.Serve.FinishUntil < v110.clock() then
												vl.Serve.BallWasHigh = false
												return
											end
											local v113 = vl.Ball.Resolve()
											if not v113 then
												return
											end

											if not vl.Serve.Jumped then
												if vl.Move.StateValue("IsJumping") == true then
													vl.Serve.Jumped = true
												else
													if not (vl.Serve.ShouldJump(v113) and vl.Serve.Jump()) then
														return
													end
													vl.Serve.Jumped = v84[158]
												end
											end

											vl.Serve.Spike(v113)
										end

										vl.Serve.ShouldAim = function()
											if vl.Serve.AimSide() == nil then
												return false
											end

											if vl.Move.StateValue(v84[63]) == true then
												return true
											end
											local finishUntil = vl.Serve.FinishUntil
											if v110.clock() < finishUntil then
												return true
											end
											return false
										end

										vl.Serve.ShouldAutoFinish = function()
											if fn30("vl_autoplay", false) == true then
												return true
											end

											if fn30("vl_serve_manual", v84[62]) == true then
												return false
											end
											return v84[158]
										end

										vl.Serve.Step = function()
											local v113 = v110.clock()
											local v114 = vl.Serve.AimSide()

											if vl.Serve.ShouldAim() then
												vl.Serve.SetAimLock(true)
												vl.Serve.Aim(v114)
											else
												vl.Serve.SetAimLock(v84[62])
											end

											if vl.Serve.FinishUntil > v113 then
												vl.Serve.Finish()
											end

											if vl.Move.StateValue("IsServing") ~= true then
												return
											end

											if vl.Move.StateValue("IsBusy") == true then
												return
											end

											if not (vl.Move.StateValue("IsPowerBallVisible") == true) then
												if v113 - vl.Serve.Since < 0.6 then
													return
												end

												if vl.Serve.Press(v114) then
													vl.Serve.Since = v113
												end

												return
											end

											if v113 - vl.Serve.Since < 0.55 then
												return
											end

											if not vl.Serve.PowerReady(v97(fn30("vl_serve_power", v84[105])) or 1) then
												return
											end

											if vl.Serve.Press(v114) then
												vl.Serve.Since = v113
												vl.Serve.Jumped = false
												vl.Serve.BallWasHigh = false

												if vl.Serve.ShouldAutoFinish() then
													vl.Serve.FinishUntil = v113 + 5
												else
													vl.Serve.FinishUntil = v84[108]
													vl.Serve.SetAimLock(false)
												end
											end
										end

										vl.Serve.IsAimActive = function()
											return (vl.Serve.FinishUntil or 0) > v110.clock() or vl.Serve.AimLocked == v84[158]
										end

										vl.Serve.FaceTarget = function(arg)
											local v113 = vl.Character.Root()
											if not v113 or not arg then
												return false
											end
											local v114 = v101.new(arg.X - v113.Position.X, 0, arg.Z - v113.Position.Z)
											if v114.Magnitude < 1 then
												return false
											end
											v113.CFrame = v102.lookAt(v113.Position, v113.Position + v114.Unit)
											return true
										end

										vl.Serve.ResolveTarget = function()
											local v113 = vl.Serve.AimSide()
											if not v113 then
												return nil
											end
											return vl.Serve.CornerTarget(v113)
										end

										vl.Serve.OpenTarget = function(arg)
											arg = v90(arg) == "table" and arg or {}

											if arg.preferMid then
												local Left = vl.Serve.CornerTarget("Left")
												local v113 = vl.Serve.CornerTarget(v84[76])
												if Left and v113 then
													return (Left + v113) * v84[45]
												end
											end

											return vl.Serve.CornerTarget(arg.side or vl.Serve.AimSide() or "Right")
										end

										vl.Unlock = {
											Original = nil,
											LastSet = nil,
											LastApply = 0,
											Active = false,
											HiddenUI = {},
										}

										vl.Unlock.Types = {
											"Ball",
											"Emote",
											"ScoreEffect",
											"Title",
											"ChatBubble",
											"Jersey",
											"PlayerCard",
											"ProfileArt",
											"WinScreen",
										}

										vl.Unlock.Controller = function()
											local knit = vl.Modules.Knit
											if not knit then
												return nil
											end

											local v113, v114 = v89(function()
												return knit.GetController("InventoryController")
											end)

											local flag18 = not v113

											if not flag18 then
												local v115 = v84[74]
												flag18 = v90(v114) ~= v115
											end

											if flag18 then
												return nil
											end
											local inventory = v114.Inventory
											if v90(inventory) ~= "table" or v90(inventory.get) ~= "function" then
												return nil
											end
											return v114
										end

										do
											local function fn38()
												local tbl19 = {}

												for _, type_ in v93(vl.Unlock.Types) do
													tbl19[type_] = v84[158]
												end

												return tbl19
											end

											vl.Unlock.Apply = function()
												local v113 = vl.Unlock.Controller()
												local item = vl.Modules.Item
												if not v113 or not item or v90(item.GetAll) ~= "function" then
													return
												end

												if not vl.Unlock.Original then
													local realInventory = vl.Equip and vl.Equip.RealInventory

													if v90(realInventory) == "table" then
														local original = {}

														for k, v114 in v92(realInventory) do
															original[k] = v114
														end

														vl.Unlock.Original = original
													else
														local original = {}
														local tbl19 = v113.Inventory:get() or {}

														for k, v114 in v92(tbl19) do
															original[k] = v114
														end

														vl.Unlock.Original = original
													end
												end

												local v114, v115 = v89(item.GetAll, item)
												if not v114 or v90(v115) ~= "table" then
													return
												end
												local v116 = fn38()
												local lastSet = {}

												for k, v117 in v92(vl.Unlock.Original) do
													lastSet[k] = v117
												end

												for _, v117 in v92(v115) do
													local v118 = v84[74]

													if v90(v117) == v118 and v117.Id and not lastSet[v117.Id] then
														if not v116 or v116[v96(v117.Type)] then
															lastSet[v117.Id] = 1
														end
													end
												end

												for _, type_ in v93(vl.Unlock.Types) do
													local flag18, v117 = v89(function()
														return item.GetAllIdsFromType and item:GetAllIdsFromType(type_)
													end)

													if flag18 then
														local v118 = v84[74]
														flag18 = v90(v117) == v118
													end

													if flag18 then
														for _, v118 in v93(v117) do
															if not lastSet[v118] then
																lastSet[v118] = 1
															end
														end
													end
												end

												v113.Inventory:set(lastSet)
												vl.Unlock.LastSet = lastSet
												vl.Unlock.Active = true
												vl.Unlock.CleanUI()
											end
										end
									end

									vl.Unlock.CleanUI = function()
										local localPlayer = vl.Services.LocalPlayer
										localPlayer = localPlayer and localPlayer:FindFirstChild(v84[182])
										local inventory = localPlayer and localPlayer:FindFirstChild("Interface") and localPlayer.Interface:FindFirstChild("Lobby") and localPlayer.Interface.Lobby:FindFirstChild("Inventory")
										if not inventory or not inventory.Visible then
											return
										end

										if v90(vl.Unlock.HiddenUI) ~= "table" then
											vl.Unlock.HiddenUI = {}
										end

										for _, descendant in v93(inventory:GetDescendants()) do
											if descendant:IsA("GuiObject") and (descendant.Name == "Lock" or descendant.Name == "Locked") and descendant.Parent and descendant.Parent.Name ~= "Dropdown" then
												if descendant.Visible then
													descendant.Visible = false
													v107.insert(vl.Unlock.HiddenUI, descendant)
												end
											end
										end

										local playerCard = inventory:FindFirstChild("BGFrame") and inventory.BGFrame:FindFirstChild("Body") and inventory.BGFrame.Body:FindFirstChild("PlayerCard")
										playerCard = playerCard and playerCard:FindFirstChild("Hint", true)

										if playerCard and playerCard.Visible then
											playerCard.Visible = false
											v107.insert(vl.Unlock.HiddenUI, playerCard)
										end
									end

									vl.Unlock.RestoreUI = function()
										local hiddenUI = vl.Unlock.HiddenUI
										if v90(hiddenUI) ~= "table" then
											return
										end

										for _, v113 in v93(hiddenUI) do
											local v114 = v84[90]

											if v91(v113) == v114 and v113.Parent then
												v89(function()
													v113.Visible = true
												end)
											end
										end

										v107.clear(hiddenUI)
									end

									vl.Unlock.Restore = function()
										local v113 = vl.Unlock.Controller()
										local v114 = v84[74]
										local realInventory

										if v90(vl.Equip.RealInventory) == v114 then
											realInventory = vl.Equip.RealInventory
										else
											realInventory = nil

											if v90(vl.Unlock.Original) == "table" then
												realInventory = vl.Unlock.Original
											end
										end

										if v113 and v90(realInventory) == "table" then
											local tbl19 = {}

											for k, v115 in v92(realInventory) do
												tbl19[k] = v115
											end

											if v113.Selected then
												local v115, v116 = v89(function()
													return v113.Selected:get()
												end)

												if v115 and v116 and not tbl19[v116] then
													v89(function()
														local selected = v113.Selected
														local set = selected.set
														local v117 = v94(tbl19)
														set(selected, v117)
													end)
												end
											end

											v89(function()
												v113.Inventory:set(tbl19)
											end)
										end

										if v113 and v90(vl.Equip.Snapshot) == "table" and v113.Equipped then
											local tbl19 = {}

											for k, v115 in v92(vl.Equip.Snapshot) do
												local v116 = v84[74]

												if v90(v115) == v116 then
													local tbl20 = {}

													for k2, v117 in v92(v115) do
														tbl20[k2] = v117
													end

													tbl19[k] = tbl20
												else
													tbl19[k] = v115
												end
											end

											v89(function()
												v113.Equipped:set(tbl19)
											end)

											if vl.Modules.Knit then
												v89(function()
													local EmoteController = vl.Modules.Knit.GetController("EmoteController")

													if EmoteController and v90(EmoteController.Emotes) == "table" and v90(EmoteController.Emotes.set) == "function" then
														EmoteController.Emotes:set(tbl19.Emotes)
													end
												end)

												v89(function()
													local ChatBubbleController = vl.Modules.Knit.GetController("ChatBubbleController")

													if ChatBubbleController and v90(ChatBubbleController.ChatBubbles) == "table" and v90(ChatBubbleController.ChatBubbles.set) == "function" then
														ChatBubbleController.ChatBubbles:set(tbl19.ChatBubbles)
													end
												end)
											end

											local jersey = tbl19.Jersey

											if v90(jersey) == "string" and jersey ~= "" then
												v89(function()
													vl.Jersey.Apply(jersey)
												end)
											else
												vl.Jersey.Current = nil
											end
										end

										if v113 and v90(vl.Equip.Favorites) == "table" and v113.Favorited then
											local tbl19 = {}

											for k, favorite in v92(vl.Equip.Favorites) do
												tbl19[k] = favorite
											end

											v89(function()
												v113.Favorited:set(tbl19)
											end)
										end

										v89(function()
											vl.Skin.Restore()
										end)

										v89(vl.Unlock.RestoreUI)
										vl.Unlock.Original = nil
										vl.Unlock.LastSet = nil
										vl.Unlock.Active = false
									end

									vl.Unlock.Tick = function()
										local v113 = v110.clock()

										if v113 - vl.Unlock.LastApply >= 1 then
											vl.Unlock.LastApply = v113
											local flag18 = vl.Unlock.Controller()

											if flag18 then
												flag18 = not vl.Unlock.Active or flag18.Inventory:get() ~= vl.Unlock.LastSet
											end

											if flag18 then
												vl.Unlock.Apply()
											end
										end

										if vl.Unlock.Active then
											vl.Unlock.CleanUI()
										end
									end

									vl.Skin = { Original = nil, Applied = nil, Current = nil }

									vl.Skin.Folder = function()
										local assets = vl.Services.Replicated:FindFirstChild("Assets")
										return assets and assets:FindFirstChild("Ball")
									end

									vl.Skin.EquippedName = function()
										if v90(vl.Equip.RealBall) == "string" then
											return vl.Equip.RealBall
										end
										local v113 = vl.Unlock.Controller()
										local equipped = v113 and v113.Equipped and v113.Equipped:get()
										if v90(equipped) == "table" and v90(equipped.Ball) == "string" then
											return equipped.Ball
										end
										return "ClassicBall"
									end

									vl.Skin.Restore = function()
										if vl.Skin.Applied then
											v89(function()
												vl.Skin.Applied:Destroy()
											end)

											vl.Skin.Applied = nil
										end

										local v113 = vl.Skin.Folder()

										if vl.Skin.Original and v113 then
											vl.Skin.Original.Parent = v113
										end

										vl.Skin.Original = nil
										vl.Skin.Current = nil
									end

									vl.Skin.Apply = function(current)
										local v113 = vl.Skin.Folder()
										if not v113 then
											return
										end
										vl.Skin.Restore()
										if not current or current == "Off" then
											return
										end
										local v114 = v113:FindFirstChild(current)
										local v115 = vl.Skin.EquippedName()
										if not v114 or v115 == current then
											return
										end
										local v116 = v113:FindFirstChild(v115)
										if not v116 then
											return
										end
										local clone = v114:Clone()
										clone.Name = v115
										v116.Parent = nil
										vl.Skin.Original = v116
										clone.Parent = v113
										vl.Skin.Applied = clone
										vl.Skin.Current = current
									end

									vl.Jersey = { Current = nil, CharConn = nil }

									vl.Jersey.GetTool = function()
										local replicated = vl.Services.Replicated or v85:GetService("ReplicatedStorage")
										replicated = replicated and replicated:FindFirstChild("Tools")
										replicated = replicated and replicated:FindFirstChild("Jersey")

										if replicated then
											local flag18, v113 = v89(require, replicated)
											flag18 = flag18 and v90(v113) == "table"

											if flag18 then
												local v114 = v84[199]
												flag18 = v90(v113.set) == v114
											end

											if flag18 then
												return v113
											end
										end

										return nil
									end

									vl.Jersey.Apply = function(current, arg)
										if not current or current == "" or current == "None" then
											return
										end
										local v113 = vl.Jersey.GetTool()
										if not v113 then
											return
										end
										local localPlayer = vl.Services.LocalPlayer
										local character = arg or localPlayer and localPlayer.Character
										if not character then
											return
										end

										v89(function()
											v113.set({ Id = current, Character = character, Player = localPlayer })
										end)

										vl.Jersey.Current = current
									end

									vl.Jersey.Install = function()
										if n28(1468) < 84 then
											if vl.Jersey.CharConn then
												return
											end
											local localPlayer = vl.Services.LocalPlayer
											if not localPlayer then
												return
											end

											vl.Jersey.CharConn = localPlayer.CharacterAdded:Connect(function(character)
												v112.wait(0.25)
												local vlEquipped = tbl17.Flags.vl_equipped
												local jersey = v90(vlEquipped) == "table" and vlEquipped.Jersey

												if not jersey or jersey == "" then
													local v113 = vl.Unlock.Controller()
													local equipped = v113 and v113.Equipped and v113.Equipped:get()
													local v114 = v84[74]
													jersey = v90(equipped) == v114 and equipped.Jersey
												end

												if jersey and jersey ~= "" and jersey ~= v84[144] then
													local v113 = v84[158]

													if fn30("vl_unlock", false) == v113 or vl.Equip.Owns(jersey) then
														vl.Jersey.Apply(jersey, character)
													end
												end
											end)

											return
										end

										while true do
										end
									end

									vl.Equip = {
										Hooked = false,
										RealBall = nil,
										RealInventory = nil,
										Original = nil,
										ScoreFxHooked = false,
										PlayerCardHooked = false,
										OriginalDisplayFlashCard = nil,
									}

									do
										local tbl19 = {
											Ball = "Ball",
											Jersey = "Jersey",
											PlayerCard = "PlayerCard",
											ProfileArt = "ProfileArt",
											ScoreEffect = "ScoreEffect",
											WinScreen = "WinScreen",
											Title = "Title",
											Emote = "Emotes",
											ChatBubble = "ChatBubbles",
										}

										local tbl20 = { Emotes = true, ChatBubbles = true }

										local tbl21 = {
											Emote = { Controller = "EmoteController", Field = "Emotes" },
											ChatBubble = {
												Controller = "ChatBubbleController",
												Field = "ChatBubbles",
											},
										}

										vl.Equip.GetScoreEffectId = function()
											local vlEquipped = tbl17.Flags.vl_equipped
											local v113 = v84[74]
											local scoreEffect

											if v90(vlEquipped) == v113 and v90(vlEquipped.ScoreEffect) == "string" and vlEquipped.ScoreEffect ~= "" then
												scoreEffect = vlEquipped.ScoreEffect
											else
												local v114 = vl.Unlock.Controller()
												local equipped = v114 and v114.Equipped and v114.Equipped:get()
												local flag18 = v90(equipped) == "table" and v90(equipped.ScoreEffect) == "string" and equipped.ScoreEffect ~= ""
												scoreEffect = nil

												if flag18 then
													scoreEffect = equipped.ScoreEffect
												end
											end

											local v114 = v84[21]
											local flag18 = v90(scoreEffect) == v114

											if flag18 then
												local v115 = v84[158]
												flag18 = fn30("vl_unlock", v84[62]) == v115 or vl.Equip.Owns(scoreEffect)
											end

											if flag18 then
												return scoreEffect
											end
											return nil
										end

										vl.Equip.GetPlayerCardId = function()
											local vlEquipped = tbl17.Flags.vl_equipped
											local flag18 = v90(vlEquipped) == "table"

											if flag18 then
												local v113 = v84[21]
												flag18 = v90(vlEquipped.PlayerCard) == v113
											end

											local playerCard

											if flag18 and vlEquipped.PlayerCard ~= "" then
												if n26(4248) >= 13879 then
													playerCard = vlEquipped.PlayerCard
												else
													while true do
													end
												end
											else
												local v113 = vl.Unlock.Controller()
												local equipped = v113 and v113.Equipped and v113.Equipped:get()
												local flag19 = v90(equipped) == "table" and v90(equipped.PlayerCard) == "string" and equipped.PlayerCard ~= ""
												playerCard = nil

												if flag19 then
													playerCard = equipped.PlayerCard
												end
											end

											if v90(playerCard) == "string" and (fn30("vl_unlock", false) == true or vl.Equip.Owns(playerCard)) then
												return playerCard
											end
											return nil
										end

										vl.Equip.IsLocalCharacter = function(arg)
											local v113 = v84[90]
											if v91(arg) ~= v113 then
												return false
											end
											local localPlayer = vl.Services.LocalPlayer
											if arg == localPlayer.Character then
												return v84[158]
											end

											local v114, v115 = v89(function()
												return vl.Services.Players:GetPlayerFromCharacter(arg)
											end)

											return v114 and v115 == localPlayer
										end

										vl.Equip.IsLocalScore = function(arg)
											local localPlayer = vl.Services.LocalPlayer
											if not localPlayer or not arg then
												return false
											end
											local team = localPlayer.Team
											local attribute = vl.Services.Replicated:GetAttribute("LastHitTeam")
											local flag18 = not team

											if not flag18 then
												local v113 = v84[21]
												flag18 = v90(attribute) ~= v113
											end

											if flag18 or attribute == "" then
												return false
											end

											if attribute ~= team.Name then
												return false
											end

											if not vl.Court.InCourt(arg) then
												return false
											end
											local physics = vl.Modules.Physics
											if not physics or v90(physics.isPointOnTeamSide) ~= "function" then
												return false
											end
											local v113, v114 = v89(physics.isPointOnTeamSide, localPlayer, arg)
											if not v113 or v114 == true then
												return false
											end
											return true
										end

										vl.Equip.InstallScoreFx = function()
											if vl.Equip.ScoreFxHooked then
												return
											end

											if v91(v88) ~= "function" then
												return
											end
											local knit = vl.Modules.Knit
											if not knit then
												return
											end

											local v113, v114 = v89(function()
												return knit.GetService("BallService")
											end)

											local re = v113 and v114 and v114.HitGround and v114.HitGround._re
											if v91(re) ~= "Instance" then
												return
											end
											local function_ = nil
											local scoreFxDisabled = {}

											for _, v115 in v93(v88(re.OnClientEvent)) do
												local v116 = v84[199]

												if v90(v115.Function) == v116 then
													local shortSrc, v117 = v89(function()
														return v111.getinfo(v115.Function)
													end)

													shortSrc = shortSrc and v117 and (v117.short_src or v117.source) or ""

													if v90(shortSrc) == "string" and shortSrc:find("HitGround", 1, true) then
														function_ = v115.Function

														if v90(v115.Disable) == "function" then
															v89(function()
																v115:Disable()
															end)

															v107.insert(scoreFxDisabled, v115)
														end
													end
												end
											end

											if v90(function_) ~= "function" then
												return
											end
											vl.Equip.ScoreFxOriginal = function_
											vl.Equip.ScoreFxDisabled = scoreFxDisabled
											vl.Equip.ScoreFxRemote = re

											vl.Equip.ScoreFxConn = re.OnClientEvent:Connect(function(arg, arg2, arg3, arg4, arg5, arg6, arg7)
												local v115 = vl.Equip.GetScoreEffectId()
												local flag18 = v115 and vl.Equip.IsLocalCharacter(arg6)

												if flag18 then
													local v116 = v84[158]
													flag18 = fn30("vl_localequip", true) == v116
												end

												if not (flag18 and vl.Equip.IsLocalScore(arg)) then
													v115 = arg5
												end

												return function_(arg, arg2, arg3, arg4, v115, arg6, arg7)
											end)

											vl.Equip.ScoreFxHooked = true
										end

										vl.Equip.RemoveScoreFx = function()
											if not vl.Equip.ScoreFxHooked then
												return
											end

											if vl.Equip.ScoreFxConn then
												v89(function()
													vl.Equip.ScoreFxConn:Disconnect()
												end)

												vl.Equip.ScoreFxConn = nil
											end

											if v90(vl.Equip.ScoreFxDisabled) == "table" then
												for _, v113 in v93(vl.Equip.ScoreFxDisabled) do
													if v90(v113.Enable) == "function" then
														v89(function()
															v113:Enable()
														end)
													end
												end
											end

											vl.Equip.ScoreFxDisabled = nil
											vl.Equip.ScoreFxOriginal = nil
											vl.Equip.ScoreFxRemote = nil
											vl.Equip.ScoreFxHooked = false
										end

										vl.Equip.InstallPlayerCard = function()
											if vl.Equip.PlayerCardHooked then
												return
											end
											local knit = vl.Modules.Knit
											if not knit then
												return
											end

											local v113, v114 = v89(function()
												return knit.GetController("PlayerCardController")
											end)

											if not v113 or not v114 or v90(v114.DisplayFlashCard) ~= "function" then
												return
											end
											local displayFlashCard = v114.DisplayFlashCard
											vl.Equip.OriginalDisplayFlashCard = displayFlashCard

											v114.DisplayFlashCard = function(arg, arg2)
												if v90(arg2) == "table" and fn30("vl_localequip", true) == true then
													local localPlayer = vl.Services.LocalPlayer
													local flag18

													if arg2.Player == localPlayer then
														flag18 = true
													elseif v90(arg2.Player) == "table" and (arg2.Player.UserId == localPlayer.UserId or arg2.Player.Name == localPlayer.Name) then
														flag18 = true
													else
														local flag19 = v91(arg2.Player) == "Instance" and arg2.Player == localPlayer
														flag18 = false

														if flag19 then
															flag18 = true
														end
													end

													if flag18 then
														local v115 = vl.Equip.GetPlayerCardId()

														if v115 and v115 ~= "" then
															arg2.PlayerCardItemId = v115
														end
													end
												end

												return displayFlashCard(arg, arg2)
											end

											vl.Equip.PlayerCardHooked = true
										end

										vl.Equip.RemovePlayerCard = function()
											if not vl.Equip.PlayerCardHooked then
												return
											end
											local knit = vl.Modules.Knit

											if knit then
												v89(function()
													local PlayerCardController = knit.GetController("PlayerCardController")

													if PlayerCardController and vl.Equip.OriginalDisplayFlashCard then
														PlayerCardController.DisplayFlashCard = vl.Equip.OriginalDisplayFlashCard
													end
												end)
											end

											vl.Equip.OriginalDisplayFlashCard = nil
											vl.Equip.PlayerCardHooked = false
										end

										vl.Equip.Owns = function(arg)
											local realInventory = vl.Equip.RealInventory or vl.Unlock.Original
											local v113 = v84[74]
											if v90(realInventory) ~= v113 then
												return false
											end
											local v114 = realInventory[arg]
											return v90(v114) == "number" and v114 > v84[108]
										end

										fn37 = function(arg)
											local tbl22 = {}
											arg = arg or {}

											for k, v113 in v92(arg) do
												if v90(v113) == "table" then
													local tbl23 = {}

													for k2, v114 in v92(v113) do
														tbl23[k2] = v114
													end

													tbl22[k] = tbl23
												else
													tbl22[k] = v113
												end
											end

											return tbl22
										end

										vl.Equip.Remember = function(arg, arg2, arg3)
											local vlEquipped = tbl17.Flags.vl_equipped

											if v90(vlEquipped) ~= "table" then
												vlEquipped = {}
											end

											if tbl20[arg] then
												if v90(vlEquipped[arg]) ~= "table" then
													vlEquipped[arg] = {}
												end

												local v113 = v96(arg3 or 1)
												if vlEquipped[arg][v113] == arg2 then
													return
												end
												vlEquipped[arg][v113] = arg2
											else
												if vlEquipped[arg] == arg2 then
													return
												end
												vlEquipped[arg] = arg2
											end

											tbl18.Config.SetFlag("vl_equipped", vlEquipped)
										end

										vl.Equip.Tick = function()
											local v113 = v110.clock()
											if v113 - (vl.Equip.LastAssert or 0) < 1.5 then
												return
											end
											vl.Equip.LastAssert = v113
											local vlEquipped = tbl17.Flags.vl_equipped
											local v114 = v84[74]
											if v90(vlEquipped) ~= v114 or v94(vlEquipped) == nil then
												return
											end
											vl.Equip.InstallScoreFx()
											vl.Equip.InstallPlayerCard()
											vl.Jersey.Install()
											if fn30("vl_unlock", false) ~= true then
												return
											end

											if vlEquipped.Jersey and v90(vlEquipped.Jersey) == "string" and vlEquipped.Jersey ~= "" then
												local character = vl.Services.LocalPlayer and vl.Services.LocalPlayer.Character

												if character and (vl.Jersey.Current ~= vlEquipped.Jersey or not character:FindFirstChild("JerseyBack")) then
													vl.Jersey.Apply(vlEquipped.Jersey, character)
												end
											end

											local v115 = vl.Unlock.Controller()
											local equipped = v115 and v115.Equipped and v115.Equipped:get()
											local v116 = v84[74]
											if v90(equipped) ~= v116 then
												return
											end

											for k, v117 in v92(vlEquipped) do
												local v118 = v84[21]

												if v90(v117) == v118 then
													if equipped[k] ~= v117 then
														vl.Equip.Local(v117)
													end
												elseif v90(v117) == "table" then
													local v119 = equipped[k]

													for k2, v120 in v92(v117) do
														local n32 = v97(k2) or 1
														local flag18 = v90(v120) == "string"

														if flag18 then
															local v121 = v84[74]
															flag18 = v90(v119) ~= v121 or v119[n32] ~= v120
														end

														if flag18 then
															vl.Equip.Local(v120, n32)
														end
													end
												end
											end
										end

										vl.Equip.Local = function(arg, arg2)
											local v113 = vl.Unlock.Controller()
											local item = vl.Modules.Item
											if not v113 or not v113.Equipped or not item then
												return
											end

											local v114, v115 = v89(function()
												return item:Get(arg)
											end)

											if not v114 or v90(v115) ~= "table" then
												return
											end
											local v116 = tbl19[v96(v115.Type)]
											if not v116 then
												return
											end
											local v117 = v113.Equipped:get()

											if not vl.Equip.Snapshot then
												vl.Equip.Snapshot = fn37(v117)
											end

											local flag18 = v115.Type == "Ball"

											if flag18 then
												local v118 = v84[21]
												flag18 = v90(vl.Equip.RealBall) ~= v118
											end

											if flag18 then
												if v90(v117) == "table" and v90(v117.Ball) == "string" then
													vl.Equip.RealBall = v117.Ball
												end
											end

											local v118 = fn37(v117)

											if tbl20[v116] then
												if v90(v118[v116]) ~= "table" then
													v118[v116] = {}
												end

												v118[v116][arg2 or 1] = arg
											else
												v118[v116] = arg
											end

											v113.Equipped:set(v118)
											vl.Equip.Remember(v116, arg, arg2)
											local v119 = tbl21[v96(v115.Type)]

											if v119 then
												v89(function()
													local v120 = vl.Modules.Knit.GetController(v119.Controller)
													v120 = v120 and v120[v119.Field]

													if v90(v120) == "table" and v90(v120.set) == "function" then
														v120:set(v118[v116])
													end
												end)
											end

											if v115.Type == "Ball" then
												vl.Skin.Apply(arg)
											elseif v115.Type == "Jersey" then
												vl.Jersey.Apply(arg)
											end
										end
									end
								end

								do
									do
										vl.Equip.Favorite = function(arg)
											if arg == nil then
												return false
											end
											local v113 = vl.Unlock.Controller()
											if not v113 or not v113.Favorited then
												return false
											end
											local v114 = v113.Favorited:get()

											if not vl.Equip.Favorites then
												vl.Equip.Favorites = fn37(v114)
											end

											local tbl19 = {}

											if v90(v114) == "table" then
												for k, v115 in v92(v114) do
													tbl19[k] = v115
												end
											end

											local flag18 = not tbl19[arg]
											tbl19[arg] = flag18 or nil
											v113.Favorited:set(tbl19)
											return flag18
										end

										do
											local function fn38()
												if v90(vl.Equip.EmoteCleanup) == "function" then
													v89(vl.Equip.EmoteCleanup)
												end

												vl.Equip.EmoteCleanup = nil
											end

											vl.Equip.PlayEmote = function(arg)
												fn38()
												local item = vl.Modules.Item
												if not item then
													return
												end

												local v113, v114 = v89(function()
													return item:Get(arg)
												end)

												local flag18 = not v113

												if not flag18 then
													local v115 = v84[74]
													flag18 = v90(v114) ~= v115
												end

												if flag18 or v96(v114.Type) ~= "Emote" then
													return
												end
												local handler = v114.Metadata and v114.Metadata.Handler
												local flag19 = v90(handler) ~= "table"

												if not flag19 then
													local v115 = v84[199]
													flag19 = v90(handler.run) ~= v115
												end

												if flag19 then
													return
												end
												local character = vl.Services.LocalPlayer.Character
												if not character then
													return
												end
												local v115, v116 = v89(handler.run, { Character = character, Player = vl.Services.LocalPlayer, Item = v114 })

												if v115 and v90(v116) == "function" then
													vl.Equip.EmoteCleanup = v116
												end
											end

											vl.Equip.Install = function()
												vl.Jersey.Install()
												if vl.Equip.Hooked then
													return
												end
												local knit = vl.Modules.Knit
												local promise = vl.Modules.Promise
												if not knit or not promise then
													return
												end

												local v113, v114 = v89(function()
													return knit.GetService("InventoryService")
												end)

												if not v113 or v90(v114) ~= "table" or v90(v114.Equip) ~= "function" then
													return
												end

												v112.spawn(function()
													local v115, v116 = v89(function()
														return knit.GetService("DataService")
													end)

													if not v115 then
														return
													end

													local v117, v118 = v89(function()
														return v116:Get("Equipped"):expect()
													end)

													if v117 and v90(v118) == "table" then
														vl.Equip.Snapshot = fn37(v118)

														if v90(v118.Ball) == "string" then
															vl.Equip.RealBall = v118.Ball
														end
													end

													local v119, v120 = v89(function()
														return v116:Get("Inventory"):expect()
													end)

													if v119 and v90(v120) == "table" then
														vl.Equip.RealInventory = v120

														if not vl.Unlock.Original then
															local original = {}

															for k, v121 in v92(v120) do
																original[k] = v121
															end

															vl.Unlock.Original = original
														end
													end
												end)

												local equip = v114.Equip
												vl.Equip.Original = equip
												vl.Equip.Service = v114

												v114.Equip = function(arg, arg2, arg3, ...)
													local flag18 = arg2 == nil

													if not flag18 then
														local v115 = v84[158]
														flag18 = fn30("vl_localequip", true) ~= v115
													end

													if flag18 or vl.Equip.Owns(arg2) then
														return equip(arg, arg2, arg3, ...)
													end

													if fn30("vl_unlock", false) ~= true then
														return equip(arg, arg2, arg3, ...)
													end
													vl.Equip.Local(arg2, arg3)
													return promise.resolve(nil)
												end

												if v90(v114.Use) == "function" then
													local use = v114.Use
													vl.Equip.OriginalUse = use

													v114.Use = function(arg, arg2, ...)
														if arg2 == nil or fn30("vl_localequip", true) ~= true or vl.Equip.Owns(arg2) then
															return use(arg, arg2, ...)
														end
														local v115 = v84[158]
														if fn30("vl_unlock", false) ~= v115 then
															return use(arg, arg2, ...)
														end
														vl.Equip.PlayEmote(arg2)
														return promise.resolve(nil)
													end
												end

												local v115 = v84[199]

												if v90(v114.StopEmotes) == v115 then
													local stopEmotes = v114.StopEmotes
													vl.Equip.OriginalStop = stopEmotes

													v114.StopEmotes = function(arg, ...)
														fn38()
														return stopEmotes(arg, ...)
													end
												end

												if v90(v114.ToggleFavorite) == "function" then
													local toggleFavorite = v114.ToggleFavorite
													vl.Equip.OriginalFavorite = toggleFavorite

													v114.ToggleFavorite = function(arg, arg2, ...)
														local flag18 = arg2 == nil

														if not flag18 then
															local v116 = v84[158]
															flag18 = fn30("vl_localequip", true) ~= v116
														end

														if flag18 or vl.Equip.Owns(arg2) then
															return toggleFavorite(arg, arg2, ...)
														end

														if fn30("vl_unlock", v84[62]) ~= true then
															return toggleFavorite(arg, arg2, ...)
														end
														return promise.resolve(v84[158], vl.Equip.Favorite(arg2) and "Favorited!" or "Unfavorited!")
													end
												end

												vl.Equip.InstallScoreFx()
												vl.Equip.InstallPlayerCard()
												vl.Equip.Hooked = true
											end

											vl.Equip.Remove = function()
												local service = vl.Equip.Service

												if vl.Equip.Hooked and service then
													if vl.Equip.Original then
														v89(function()
															service.Equip = vl.Equip.Original
														end)
													end

													if vl.Equip.OriginalFavorite then
														v89(function()
															service.ToggleFavorite = vl.Equip.OriginalFavorite
														end)
													end

													if vl.Equip.OriginalUse then
														v89(function()
															service.Use = vl.Equip.OriginalUse
														end)
													end

													if vl.Equip.OriginalStop then
														v89(function()
															service.StopEmotes = vl.Equip.OriginalStop
														end)
													end
												end

												fn38()
												vl.Equip.RemoveScoreFx()
												vl.Equip.RemovePlayerCard()
												local v113 = vl.Unlock.Controller()

												if v113 then
													if v113.Equipped and vl.Equip.Snapshot then
														v89(function()
															v113.Equipped:set(vl.Equip.Snapshot)
														end)
													end

													if v113.Favorited and vl.Equip.Favorites then
														v89(function()
															v113.Favorited:set(vl.Equip.Favorites)
														end)
													end
												end

												vl.Equip.Snapshot = nil
												vl.Equip.Favorites = nil
												vl.Equip.RealBall = nil
												vl.Equip.RealInventory = nil
												vl.Equip.Restored = false
												vl.Equip.Hooked = false
											end
										end
									end

									do
										vl.Skybox = {
											Original = nil,
											Current = "Space",
											Enabled = false,
											CustomSky = nil,
											SavedSky = nil,
											SavedAtmosphere = nil,
											SavedDecor = {},
											SavedClouds = {},
											Hooked = v84[62],
											SnapshotModule = nil,
											OriginalApply = nil,
											ListenerConn = nil,
										}

										vl.Skybox.Presets = {
											Minecraft = {
												SkyboxBk = "rbxassetid://1876545003",
												SkyboxDn = "rbxassetid://1876544331",
												SkyboxFt = "rbxassetid://1876542941",
												SkyboxLf = "rbxassetid://1876543392",
												SkyboxRt = "rbxassetid://1876543764",
												SkyboxUp = "rbxassetid://1876544642",
											},
											PurpleDay = {
												SkyboxBk = "rbxassetid://296908715",
												SkyboxDn = "rbxassetid://296908724",
												SkyboxFt = "rbxassetid://296908740",
												SkyboxLf = "rbxassetid://296908755",
												SkyboxRt = "rbxassetid://296908764",
												SkyboxUp = "rbxassetid://296908769",
											},
											RedNight = {
												SkyboxBk = "rbxassetid://401664839",
												SkyboxDn = "rbxassetid://401664862",
												SkyboxFt = "rbxassetid://401664960",
												SkyboxLf = "rbxassetid://401664881",
												SkyboxRt = "rbxassetid://401664901",
												SkyboxUp = "rbxassetid://401664936",
											},
											Trollge = {
												SkyboxBk = "rbxassetid://6155393905",
												SkyboxDn = "rbxassetid://6155393905",
												SkyboxFt = "rbxassetid://6155393905",
												SkyboxLf = "rbxassetid://6155393905",
												SkyboxRt = "rbxassetid://6155393905",
												SkyboxUp = "rbxassetid://6155393905",
											},
											Night = {
												SkyboxBk = "rbxassetid://48020371",
												SkyboxDn = "rbxassetid://48020144",
												SkyboxFt = "rbxassetid://48020234",
												SkyboxLf = "rbxassetid://48020211",
												SkyboxRt = "rbxassetid://48020254",
												SkyboxUp = "rbxassetid://48020383",
											},
											Space = {
												SkyboxBk = "rbxassetid://149397692",
												SkyboxDn = "rbxassetid://149397686",
												SkyboxFt = "rbxassetid://149397697",
												SkyboxLf = "rbxassetid://149397684",
												SkyboxRt = "rbxassetid://149397688",
												SkyboxUp = "rbxassetid://149397702",
											},
											VibeMorning = {
												SkyboxBk = "rbxassetid://1417494030",
												SkyboxDn = "rbxassetid://1417494146",
												SkyboxFt = "rbxassetid://1417494253",
												SkyboxLf = "rbxassetid://1417494402",
												SkyboxRt = "rbxassetid://1417494499",
												SkyboxUp = "rbxassetid://1417494643",
											},
											VibeNight = {
												SkyboxBk = "rbxassetid://5084575798",
												SkyboxDn = "rbxassetid://5084575916",
												SkyboxFt = "rbxassetid://5103949679",
												SkyboxLf = "rbxassetid://5103948542",
												SkyboxRt = "rbxassetid://5103948784",
												SkyboxUp = "rbxassetid://5084576400",
											},
											PurpleSplash = {
												SkyboxBk = "rbxassetid://8539982183",
												SkyboxDn = "rbxassetid://8539981943",
												SkyboxFt = "rbxassetid://8539981721",
												SkyboxLf = "rbxassetid://8539981424",
												SkyboxRt = "rbxassetid://8539980766",
												SkyboxUp = "rbxassetid://8539981085",
											},
											GreenSpace = {
												SkyboxBk = "rbxassetid://159248188",
												SkyboxDn = "rbxassetid://159248183",
												SkyboxFt = "rbxassetid://159248187",
												SkyboxLf = "rbxassetid://159248173",
												SkyboxRt = "rbxassetid://159248192",
												SkyboxUp = "rbxassetid://159248176",
											},
											Snowy = {
												SkyboxBk = "rbxassetid://155657655",
												SkyboxDn = "rbxassetid://155674246",
												SkyboxFt = "rbxassetid://155657609",
												SkyboxLf = "rbxassetid://155657671",
												SkyboxRt = "rbxassetid://155657619",
												SkyboxUp = "rbxassetid://155674931",
											},
											Spongebob = {
												SkyboxBk = "rbxassetid://10287764626",
												SkyboxDn = "rbxassetid://10287766382",
												SkyboxFt = "rbxassetid://10287764626",
												SkyboxLf = "rbxassetid://10287763421",
												SkyboxRt = "rbxassetid://10287764626",
												SkyboxUp = "rbxassetid://10287767597",
											},
											PinkDay = {
												SkyboxBk = "rbxassetid://271042516",
												SkyboxDn = "rbxassetid://271077243",
												SkyboxFt = "rbxassetid://271042556",
												SkyboxLf = "rbxassetid://271042310",
												SkyboxRt = "rbxassetid://271042467",
												SkyboxUp = "rbxassetid://271077958",
											},
											AlienRed = {
												SkyboxBk = "rbxassetid://1012890",
												SkyboxDn = "rbxassetid://1012891",
												SkyboxFt = "rbxassetid://1012887",
												SkyboxLf = "rbxassetid://1012889",
												SkyboxRt = "rbxassetid://1012888",
												SkyboxUp = "rbxassetid://1014449",
											},
											WallsOfAutumn = {
												SkyboxBk = "rbxassetid://7123244709",
												SkyboxDn = "rbxassetid://7123246497",
												SkyboxFt = "rbxassetid://7123255895",
												SkyboxLf = "rbxassetid://7123257992",
												SkyboxRt = "rbxassetid://7123279103",
												SkyboxUp = "rbxassetid://7123281828",
											},
											ColdWinterness = {
												SkyboxBk = "rbxassetid://7123754562",
												SkyboxDn = "rbxassetid://7123756028",
												SkyboxFt = "rbxassetid://7123757422",
												SkyboxLf = "rbxassetid://7123758897",
												SkyboxRt = "rbxassetid://7123760563",
												SkyboxUp = "rbxassetid://7123762364",
											},
											Oblivion = {
												SkyboxBk = "rbxassetid://7123654189",
												SkyboxDn = "rbxassetid://7123657455",
												SkyboxFt = "rbxassetid://7123662047",
												SkyboxLf = "rbxassetid://7123664533",
												SkyboxRt = "rbxassetid://7123666598",
												SkyboxUp = "rbxassetid://7123668994",
											},
											ClassicSky = {
												SkyboxBk = "rbxassetid://672345740",
												SkyboxDn = "rbxassetid://672345828",
												SkyboxFt = "rbxassetid://672345879",
												SkyboxLf = "rbxassetid://672345927",
												SkyboxRt = "rbxassetid://672346006",
												SkyboxUp = "rbxassetid://672346072",
											},
											PurpleNight = {
												SkyboxBk = "rbxassetid://5084575798",
												SkyboxDn = "rbxassetid://5084575916",
												SkyboxFt = "rbxassetid://5103949679",
												SkyboxLf = "rbxassetid://5103948542",
												SkyboxRt = "rbxassetid://5103948784",
												SkyboxUp = "rbxassetid://5084576400",
											},
											PurpleDayClear = {
												SkyboxBk = "rbxassetid://6847607535",
												SkyboxDn = "rbxassetid://6847607977",
												SkyboxFt = "rbxassetid://6847608302",
												SkyboxLf = "rbxassetid://6847608608",
												SkyboxRt = "rbxassetid://6847608986",
												SkyboxUp = "rbxassetid://6847609323",
											},
											YellowDay = {
												SkyboxBk = "rbxassetid://2651432901",
												SkyboxDn = "rbxassetid://2651434974",
												SkyboxFt = "rbxassetid://2651435990",
												SkyboxLf = "rbxassetid://2651436494",
												SkyboxRt = "rbxassetid://2651436979",
												SkyboxUp = "rbxassetid://2651437350",
											},
											MinecraftSky = {
												SkyboxBk = "rbxassetid://8735166756",
												SkyboxDn = "rbxassetid://8735166707",
												SkyboxFt = "rbxassetid://8735231668",
												SkyboxLf = "rbxassetid://8735166755",
												SkyboxRt = "rbxassetid://8735166751",
												SkyboxUp = "rbxassetid://8735166729",
											},
											Sunset = {
												SkyboxBk = "rbxassetid://150939022",
												SkyboxDn = "rbxassetid://150939038",
												SkyboxFt = "rbxassetid://150939047",
												SkyboxLf = "rbxassetid://150939056",
												SkyboxRt = "rbxassetid://150939063",
												SkyboxUp = "rbxassetid://150939082",
											},
											CartoonSky = {
												SkyboxBk = "rbxassetid://6778646360",
												SkyboxDn = "rbxassetid://6778658683",
												SkyboxFt = "rbxassetid://6778648039",
												SkyboxLf = "rbxassetid://6778649136",
												SkyboxRt = "rbxassetid://6778650519",
												SkyboxUp = "rbxassetid://6778658364",
											},
											Anime = {
												SkyboxBk = "rbxassetid://7643700666",
												SkyboxDn = "rbxassetid://7643743687",
												SkyboxFt = "rbxassetid://7644304186",
												SkyboxLf = "rbxassetid://7644288724",
												SkyboxRt = "rbxassetid://7643700819",
												SkyboxUp = "rbxassetid://7643757404",
											},
											HellSky = {
												SkyboxBk = "rbxassetid://437430787",
												SkyboxDn = "rbxassetid://437430804",
												SkyboxFt = "rbxassetid://437430543",
												SkyboxLf = "rbxassetid://437430732",
												SkyboxRt = "rbxassetid://437430747",
												SkyboxUp = "rbxassetid://437430771",
											},
											StarryNight = {
												SkyboxBk = "rbxassetid://8291078911",
												SkyboxDn = "rbxassetid://8291077403",
												SkyboxFt = "rbxassetid://8291081613",
												SkyboxLf = "rbxassetid://8291074004",
												SkyboxRt = "rbxassetid://8291080353",
												SkyboxUp = "rbxassetid://8291075054",
											},
											Omori = {
												SkyboxBk = "rbxassetid://8767416629",
												SkyboxDn = "rbxassetid://8767416629",
												SkyboxFt = "rbxassetid://8767416629",
												SkyboxLf = "rbxassetid://8767416629",
												SkyboxRt = "rbxassetid://8767416629",
												SkyboxUp = "rbxassetid://8767416629",
											},
											c00lkidd = {
												SkyboxBk = "rbxassetid://433381097",
												SkyboxDn = "rbxassetid://433381097",
												SkyboxFt = "rbxassetid://433381097",
												SkyboxLf = "rbxassetid://433381097",
												SkyboxRt = "rbxassetid://433381097",
												SkyboxUp = "rbxassetid://433381097",
											},
											ClearDay = {
												SkyboxBk = "rbxassetid://591058823",
												SkyboxDn = "rbxassetid://591059876",
												SkyboxFt = "rbxassetid://591058104",
												SkyboxLf = "rbxassetid://591057861",
												SkyboxRt = "rbxassetid://591057625",
												SkyboxUp = "rbxassetid://591059642",
											},
											Mountains = {
												SkyboxBk = "rbxassetid://324014980",
												SkyboxDn = "rbxassetid://324015477",
												SkyboxFt = "rbxassetid://324014995",
												SkyboxLf = "rbxassetid://324014679",
												SkyboxRt = "rbxassetid://324015013",
												SkyboxUp = "rbxassetid://324015409",
											},
											Forest = {
												SkyboxBk = "rbxassetid://70945545",
												SkyboxDn = "rbxassetid://70945449",
												SkyboxFt = "rbxassetid://70945487",
												SkyboxLf = "rbxassetid://70945523",
												SkyboxRt = "rbxassetid://70945508",
												SkyboxUp = "rbxassetid://70945531",
											},
											LargeForest = {
												SkyboxBk = "rbxassetid://17428978603",
												SkyboxDn = "rbxassetid://17428977445",
												SkyboxFt = "rbxassetid://17428977114",
												SkyboxLf = "rbxassetid://17428978399",
												SkyboxRt = "rbxassetid://17428976828",
												SkyboxUp = "rbxassetid://17428976669",
											},
											Crimson = {
												SkyboxBk = "rbxassetid://15832429892",
												SkyboxDn = "rbxassetid://15832430998",
												SkyboxFt = "rbxassetid://15832430210",
												SkyboxLf = "rbxassetid://15832430671",
												SkyboxRt = "rbxassetid://15832431198",
												SkyboxUp = "rbxassetid://15832429401",
											},
											PumpkinHill = {
												SkyboxBk = "rbxassetid://11202510597",
												SkyboxDn = "rbxassetid://11202510255",
												SkyboxFt = "rbxassetid://11202509993",
												SkyboxLf = "rbxassetid://11202510806",
												SkyboxRt = "rbxassetid://11202511066",
												SkyboxUp = "rbxassetid://11202509704",
											},
											AnimeIsland = {
												SkyboxBk = "rbxassetid://14753804949",
												SkyboxDn = "rbxassetid://14753795573",
												SkyboxFt = "rbxassetid://14753807625",
												SkyboxLf = "rbxassetid://14753797417",
												SkyboxRt = "rbxassetid://14753799966",
												SkyboxUp = "rbxassetid://14753810287",
											},
											SnowyMountains = {
												SkyboxBk = "rbxassetid://368385273",
												SkyboxDn = "rbxassetid://48015300",
												SkyboxFt = "rbxassetid://368388290",
												SkyboxLf = "rbxassetid://368390615",
												SkyboxRt = "rbxassetid://368385190",
												SkyboxUp = "rbxassetid://48015387",
											},
											Desert = {
												SkyboxBk = "rbxassetid://161319957",
												SkyboxDn = "rbxassetid://161319965",
												SkyboxFt = "rbxassetid://161319970",
												SkyboxLf = "rbxassetid://161319983",
												SkyboxRt = "rbxassetid://161319989",
												SkyboxUp = "rbxassetid://161319996",
											},
											Cloudy = {
												SkyboxBk = "rbxassetid://225469345",
												SkyboxDn = "rbxassetid://225469349",
												SkyboxFt = "rbxassetid://225469359",
												SkyboxLf = "rbxassetid://225469364",
												SkyboxRt = "rbxassetid://225469372",
												SkyboxUp = "rbxassetid://225469380",
											},
											Island = {
												SkyboxBk = "rbxassetid://319343577",
												SkyboxDn = "rbxassetid://319343653",
												SkyboxFt = "rbxassetid://319343666",
												SkyboxLf = "rbxassetid://319343686",
												SkyboxRt = "rbxassetid://319343631",
												SkyboxUp = "rbxassetid://319343614",
											},
											OrangeFog = {
												SkyboxBk = "rbxassetid://458016711",
												SkyboxDn = "rbxassetid://458016826",
												SkyboxFt = "rbxassetid://458016532",
												SkyboxLf = "rbxassetid://458016655",
												SkyboxRt = "rbxassetid://458016782",
												SkyboxUp = "rbxassetid://458016792",
											},
											FadeNight = {
												SkyboxBk = "rbxassetid://16888843486",
												SkyboxDn = "rbxassetid://16888845693",
												SkyboxFt = "rbxassetid://16888848245",
												SkyboxLf = "rbxassetid://16888850949",
												SkyboxRt = "rbxassetid://16888854243",
												SkyboxUp = "rbxassetid://16888857144",
											},
											Office = {
												SkyboxBk = "rbxassetid://658623433",
												SkyboxDn = "rbxassetid://316342560",
												SkyboxFt = "rbxassetid://658625205",
												SkyboxLf = "rbxassetid://658627155",
												SkyboxRt = "rbxassetid://658628504",
												SkyboxUp = "rbxassetid://658632701",
											},
											Spongebob2 = {
												SkyboxBk = "rbxassetid://12049872454",
												SkyboxDn = "rbxassetid://12049872284",
												SkyboxFt = "rbxassetid://12049872181",
												SkyboxLf = "rbxassetid://12049872074",
												SkyboxRt = "rbxassetid://12049871884",
												SkyboxUp = "rbxassetid://12049871774",
											},
											PurpleFog = {
												SkyboxBk = "rbxassetid://17279854976",
												SkyboxDn = "rbxassetid://17279856318",
												SkyboxFt = "rbxassetid://17279858447",
												SkyboxLf = "rbxassetid://17279860360",
												SkyboxRt = "rbxassetid://17279862234",
												SkyboxUp = "rbxassetid://17279864507",
											},
											EarthSpace = {
												SkyboxBk = "rbxassetid://15753305495",
												SkyboxDn = "rbxassetid://15753362674",
												SkyboxFt = "rbxassetid://15753305823",
												SkyboxLf = "rbxassetid://15753310707",
												SkyboxRt = "rbxassetid://15753304774",
												SkyboxUp = "rbxassetid://15753304473",
											},
											GreenCloudy = {
												SkyboxBk = "rbxassetid://921882045",
												SkyboxDn = "rbxassetid://921881907",
												SkyboxFt = "rbxassetid://921882121",
												SkyboxLf = "rbxassetid://921881811",
												SkyboxRt = "rbxassetid://921881989",
												SkyboxUp = "rbxassetid://921882259",
											},
											SummerDay = {
												SkyboxBk = "rbxassetid://135483466",
												SkyboxDn = "rbxassetid://135483484",
												SkyboxFt = "rbxassetid://135483461",
												SkyboxLf = "rbxassetid://135483495",
												SkyboxRt = "rbxassetid://135483499",
												SkyboxUp = "rbxassetid://135483475",
											},
											SnowyPlains = {
												SkyboxBk = "rbxassetid://155657655",
												SkyboxDn = "rbxassetid://155674246",
												SkyboxFt = "rbxassetid://155657609",
												SkyboxLf = "rbxassetid://155657671",
												SkyboxRt = "rbxassetid://155657619",
												SkyboxUp = "rbxassetid://155674931",
											},
											Underwater = {
												SkyboxBk = "rbxassetid://227635868",
												SkyboxDn = "rbxassetid://227635921",
												SkyboxFt = "rbxassetid://227635954",
												SkyboxLf = "rbxassetid://227635974",
												SkyboxRt = "rbxassetid://227635990",
												SkyboxUp = "rbxassetid://227636031",
											},
											BlueAbyss = {
												SkyboxBk = "rbxassetid://16269815885",
												SkyboxDn = "rbxassetid://16269839652",
												SkyboxFt = "rbxassetid://16269798011",
												SkyboxLf = "rbxassetid://16269813852",
												SkyboxRt = "rbxassetid://16269814948",
												SkyboxUp = "rbxassetid://16269829700",
											},
											Poison = {
												SkyboxBk = "rbxassetid://1370716695",
												SkyboxDn = "rbxassetid://1370716766",
												SkyboxFt = "rbxassetid://1370716833",
												SkyboxLf = "rbxassetid://1370716898",
												SkyboxRt = "rbxassetid://1370716955",
												SkyboxUp = "rbxassetid://1370717024",
											},
											BlueSpace = {
												SkyboxBk = "rbxassetid://1127563035",
												SkyboxDn = "rbxassetid://1127563006",
												SkyboxFt = "rbxassetid://1127563026",
												SkyboxLf = "rbxassetid://1127563216",
												SkyboxRt = "rbxassetid://1127563115",
												SkyboxUp = "rbxassetid://1127562999",
											},
											AnimeMountains = {
												SkyboxBk = "rbxassetid://12849370744",
												SkyboxDn = "rbxassetid://12849378890",
												SkyboxFt = "rbxassetid://12849390276",
												SkyboxLf = "rbxassetid://12849405549",
												SkyboxRt = "rbxassetid://12849398428",
												SkyboxUp = "rbxassetid://12849426002",
											},
											PinkGradient = {
												SkyboxBk = "rbxassetid://5371541816",
												SkyboxDn = "rbxassetid://5371541154",
												SkyboxFt = "rbxassetid://5371541816",
												SkyboxLf = "rbxassetid://5371541816",
												SkyboxRt = "rbxassetid://5371541816",
												SkyboxUp = "rbxassetid://5371540604",
											},
											YellowGradient = {
												SkyboxBk = "rbxassetid://159005370",
												SkyboxDn = "rbxassetid://858422412",
												SkyboxFt = "rbxassetid://159005370",
												SkyboxLf = "rbxassetid://159005370",
												SkyboxRt = "rbxassetid://159005370",
												SkyboxUp = "rbxassetid://159006363",
											},
											BlueGradient = {
												SkyboxBk = "rbxassetid://4628466090",
												SkyboxDn = "rbxassetid://4628471901",
												SkyboxFt = "rbxassetid://4628466090",
												SkyboxLf = "rbxassetid://4628466090",
												SkyboxRt = "rbxassetid://4628466090",
												SkyboxUp = "rbxassetid://4628472152",
											},
											GreenNebula = {
												SkyboxBk = "rbxassetid://47974894",
												SkyboxDn = "rbxassetid://47974690",
												SkyboxFt = "rbxassetid://47974821",
												SkyboxLf = "rbxassetid://47974776",
												SkyboxRt = "rbxassetid://47974859",
												SkyboxUp = "rbxassetid://47974909",
											},
											OrangeGradient = {
												SkyboxBk = "rbxassetid://6902754982",
												SkyboxDn = "rbxassetid://6902795826",
												SkyboxFt = "rbxassetid://6902754982",
												SkyboxLf = "rbxassetid://6902754982",
												SkyboxRt = "rbxassetid://6902754982",
												SkyboxUp = "rbxassetid://6902796078",
											},
											GreenAurora = {
												SkyboxBk = "rbxassetid://16563478983",
												SkyboxDn = "rbxassetid://16563481302",
												SkyboxFt = "rbxassetid://16563484084",
												SkyboxLf = "rbxassetid://16563485362",
												SkyboxRt = "rbxassetid://16563487078",
												SkyboxUp = "rbxassetid://16563489821",
											},
										}

										vl.Skybox.Options = {
											"Default",
											"AlienRed",
											"Anime",
											"AnimeIsland",
											"AnimeMountains",
											"BlueAbyss",
											"BlueGradient",
											"BlueSpace",
											"CartoonSky",
											"ClassicSky",
											"ClearDay",
											"Cloudy",
											"ColdWinterness",
											"Crimson",
											"Desert",
											"EarthSpace",
											"FadeNight",
											"Forest",
											"GreenAurora",
											"GreenCloudy",
											"GreenNebula",
											"GreenSpace",
											"HellSky",
											"Island",
											"LargeForest",
											"Minecraft",
											"MinecraftSky",
											"Mountains",
											"Night",
											"Oblivion",
											"Office",
											"Omori",
											"OrangeFog",
											"OrangeGradient",
											"PinkDay",
											"PinkGradient",
											"Poison",
											"PumpkinHill",
											"PurpleDay",
											"PurpleDayClear",
											"PurpleFog",
											"PurpleNight",
											"PurpleSplash",
											"RedNight",
											"Snowy",
											"SnowyMountains",
											"SnowyPlains",
											"Space",
											"Spongebob",
											"Spongebob2",
											"StarryNight",
											"SummerDay",
											"Sunset",
											"Trollge",
											"Underwater",
											"VibeMorning",
											"VibeNight",
											"WallsOfAutumn",
											"YellowDay",
											"YellowGradient",
											"c00lkidd",
										}

										do
											local function fn38(arg)
												if not vl.Skybox.Enabled then
													return
												end

												if not (n24 > 4075) then
													if arg:IsA("BasePart") and (arg.Name == "EnvironmentBox" or arg.Parent and arg.Parent.Name == "UltraFastMode_Decor" or arg.Name == "SkyDome" or arg.Name == "SkyboxModel") then
														if arg.Transparency < v84[105] then
															if vl.Skybox.SavedDecor[arg] == nil then
																vl.Skybox.SavedDecor[arg] = arg.Transparency
															end

															arg.Transparency = 1
														end
													elseif arg:IsA("Clouds") and arg.Enabled then
														if vl.Skybox.SavedClouds[arg] == nil then
															vl.Skybox.SavedClouds[arg] = arg.Enabled
														end

														arg.Enabled = v84[62]
													end

													return
												end

												while true do
												end
											end

											vl.Skybox.InstallHook = function()
												if vl.Skybox.Hooked then
													return
												end
												local replicated = vl.Services.Replicated or v85:GetService("ReplicatedStorage")
												replicated = replicated and replicated:FindFirstChild("Tools")
												replicated = replicated and replicated:FindFirstChild("SnapshotLighting")
												if not replicated then
													return
												end
												local v113, v114 = v89(require, replicated)
												if not v113 or v90(v114) ~= "table" or v90(v114.apply) ~= "function" then
													return
												end
												vl.Skybox.SnapshotModule = v114
												vl.Skybox.OriginalApply = v114.apply

												v114.apply = function(arg)
													local enabled = vl.Skybox.Enabled

													if enabled then
														local v115 = v84[74]
														enabled = v90(arg) == v115
													end

													if enabled then
														local tbl19 = {}

														for _, v115 in v93(arg) do
															if v115.Id ~= "Sky" and v115.Id ~= "Atmosphere" then
																v107.insert(tbl19, v115)
															end
														end

														return vl.Skybox.OriginalApply(tbl19)
													end

													return vl.Skybox.OriginalApply(arg)
												end

												vl.Skybox.Hooked = true
											end

											vl.Skybox.InstallListener = function()
												if vl.Skybox.ListenerConn then
													return
												end
												local lighting = vl.Services.Lighting or v85:GetService("Lighting")

												if lighting then
													vl.Skybox.ListenerConn = lighting.ChildAdded:Connect(function(child)
														if vl.Skybox.Enabled then
															if child:IsA("Sky") and child.Name ~= "ZenthraSky" then
																vl.Skybox.SavedSky = child

																v112.defer(function()
																	if vl.Skybox.Enabled and child.Parent == lighting then
																		child.Parent = nil
																	end
																end)
															elseif child:IsA("Atmosphere") then
																vl.Skybox.SavedAtmosphere = child

																v112.defer(function()
																	if vl.Skybox.Enabled and child.Parent == lighting then
																		child.Parent = nil
																	end
																end)
															end
														end
													end)
												end

												local workspace_ = vl.Services.Workspace or v85:GetService("Workspace")

												if workspace_ and not vl.Skybox.DecorConn then
													vl.Skybox.DecorConn = workspace_.DescendantAdded:Connect(function(descendant)
														if vl.Skybox.Enabled then
															v112.defer(fn38, descendant)
														end
													end)
												end
											end

											vl.Skybox.ScanMapDecor = function()
												local workspace_ = vl.Services.Workspace or v85:GetService("Workspace")
												if not workspace_ then
													return
												end
												local volleyballLobby = workspace_:FindFirstChild(v84[31]) or workspace_:FindFirstChild("Volleyball Lobby")
												volleyballLobby = volleyballLobby and volleyballLobby:GetDescendants() or workspace_:GetChildren()

												for _, v113 in v93(volleyballLobby) do
													fn38(v113)
												end
											end
										end
									end

									vl.Skybox.Apply = function(arg)
										local v113 = v96(arg or "Default")
										vl.Skybox.Current = v113
										local lighting = vl.Services.Lighting or v85:GetService("Lighting")
										if not lighting then
											return
										end

										if not vl.Skybox.Enabled or v113 == "Default" or not vl.Skybox.Presets[v113] then
											vl.Skybox.Restore()
											return
										end
										local v114 = vl.Skybox.Presets[v113]
										if not v114 then
											return
										end
										vl.Skybox.InstallHook()
										vl.Skybox.InstallListener()

										for _, child in v93(lighting:GetChildren()) do
											if child:IsA("Sky") and child.Name ~= "ZenthraSky" then
												vl.Skybox.SavedSky = child
												child.Parent = nil
											elseif child:IsA("Atmosphere") then
												vl.Skybox.SavedAtmosphere = child
												child.Parent = nil
											end
										end

										local zenthraSky = lighting:FindFirstChild("ZenthraSky")

										if not zenthraSky or not zenthraSky:IsA("Sky") then
											zenthraSky = v105.new("Sky")
											zenthraSky.Name = "ZenthraSky"
											zenthraSky.Parent = lighting
										end

										if zenthraSky.SkyboxBk ~= v114.SkyboxBk then
											zenthraSky.SkyboxBk = v114.SkyboxBk or ""
											zenthraSky.SkyboxDn = v114.SkyboxDn or ""
											zenthraSky.SkyboxFt = v114.SkyboxFt or ""
											zenthraSky.SkyboxLf = v114.SkyboxLf or ""
											zenthraSky.SkyboxRt = v114.SkyboxRt or ""
											zenthraSky.SkyboxUp = v114.SkyboxUp or ""
										end

										vl.Skybox.CustomSky = zenthraSky
										vl.Skybox.ScanMapDecor()
									end

									vl.Skybox.Tick = function()
										if not (fn30("vl_skybox", v84[62]) == true) then
											if vl.Skybox.Enabled then
												vl.Skybox.Restore()
											end

											return
										end

										local v113 = v110.clock()
										if v113 - (vl.Skybox.LastTick or v84[108]) < v84[117] then
											return
										end
										vl.Skybox.LastTick = v113
										local vlSkyboxPreset = tbl17 and tbl17.Flags and tbl17.Flags.vl_skybox_preset

										if v90(vlSkyboxPreset) == "table" then
											vlSkyboxPreset = vlSkyboxPreset[v84[105]]
										end

										local v114 = v96(vlSkyboxPreset or "Space")
										local lighting = vl.Services.Lighting or v85:GetService("Lighting")
										if not lighting then
											return
										end
										local zenthraSky = lighting:FindFirstChild("ZenthraSky")

										if not zenthraSky or not zenthraSky:IsA("Sky") or vl.Skybox.Current ~= v114 then
											vl.Skybox.Apply(v114)
										end
									end

									vl.Skybox.Restore = function()
										vl.Skybox.Enabled = v84[62]
										local lighting = vl.Services.Lighting or v85:GetService("Lighting")

										if lighting then
											local zenthraSky = lighting:FindFirstChild("ZenthraSky")

											if zenthraSky then
												v89(function()
													zenthraSky:Destroy()
												end)
											end

											if vl.Skybox.SavedSky then
												v89(function()
													vl.Skybox.SavedSky.Parent = lighting
												end)
											end

											if vl.Skybox.SavedAtmosphere then
												v89(function()
													vl.Skybox.SavedAtmosphere.Parent = lighting
												end)
											end

											if not lighting:FindFirstChildOfClass("Sky") then
												local Sky = v105.new("Sky")
												Sky.Name = "Day"
												Sky.Parent = lighting
											end

											if not lighting:FindFirstChildOfClass("Atmosphere") then
												local Atmosphere = v105.new("Atmosphere")
												Atmosphere.Name = "Atmosphere"
												Atmosphere.Parent = lighting
											end

											local replicated = vl.Services.Replicated or v85:GetService("ReplicatedStorage")
											local lightings = replicated and replicated:FindFirstChild("Configuration") and replicated.Configuration:FindFirstChild("Lightings")

											if lightings then
												local v113, v114 = v89(require, lightings)

												if v113 and v114 and v114.Snapshots and v114.Snapshots.Lobby and v114.Snapshots.Lobby.Day then
													local snapshotModule = vl.Skybox.SnapshotModule or replicated:FindFirstChild("Tools") and replicated.Tools:FindFirstChild("SnapshotLighting") and require(replicated.Tools.SnapshotLighting)

													if snapshotModule and v90(snapshotModule.apply) == "function" then
														v89(snapshotModule.apply, v114.Snapshots.Lobby.Day)
													end
												end
											end
										end

										for k, v113 in v92(vl.Skybox.SavedDecor) do
											if k and k.Parent then
												v89(function()
													k.Transparency = v113
												end)
											end
										end

										v107.clear(vl.Skybox.SavedDecor)

										for k, savedCloud in v92(vl.Skybox.SavedClouds) do
											if k and k.Parent then
												v89(function()
													k.Enabled = savedCloud
												end)
											end
										end

										v107.clear(vl.Skybox.SavedClouds)
										vl.Skybox.CustomSky = nil
									end

									vl.Avatar = {
										applying = false,
										applied_id = nil,
										saving_original = false,
										original_desc = nil,
										original_parts = nil,
										cache = {},
										enabled = v84[62],
										target = "",
										respawn_token = 0,
										attempt_id = v84[108],
									}

									do
										local function fn38(arg, arg2)
											for i = 1, arg2 do
												local v113, v114 = v89(arg)
												if v113 and v114 then
													return v114
												end
												v112.wait(v84[45])
											end

											return nil
										end

										fn36 = function(arg)
											if not arg or arg == "" then
												return nil
											end
											local match = v96(arg):match("^%s*(.-)%s*$")
											if match == "" then
												return nil
											end
											local v113 = v97(match)
											if v113 then
												return v113
											end
											local str8 = match:lower()

											for _, player in v93(vl.Services.Players:GetPlayers()) do
												if player.Name:lower() == str8 or player.DisplayName:lower() == str8 then
													return player.UserId
												end
											end

											return fn38(function()
												return vl.Services.Players:GetUserIdFromNameAsync(match)
											end, 3)
										end
									end
								end
							end

							do
								local fn37, fn38, fn39

								do
									fn37 = function(arg, arg2)
										if v89(function()
											arg:ApplyDescriptionClientServer(arg2)
										end) then
											return true
										end

										return (v89(function()
											arg:ApplyDescription(arg2)
										end))
									end

									do
										local function fn40(arg)
											local head = arg:FindFirstChild("Head")
											if not head then
												return
											end
											head.Transparency = 1
											local decal = head:FindFirstChildOfClass("Decal")

											if decal then
												decal:Destroy()
											end
										end

										fn38 = function(arg)
											local head = arg:FindFirstChild("Head")

											if head then
												head.Transparency = 0
											end
										end

										local function fn41(arg)
											local rightLeg = arg:FindFirstChild("RightLeg") or arg:FindFirstChild("Right Leg")
											if not rightLeg then
												return
											end

											for _, child in v93(rightLeg:GetChildren()) do
												if child:IsA("SpecialMesh") then
													child:Destroy()
												end
											end

											local SpecialMesh = v105.new("SpecialMesh")
											SpecialMesh.MeshId = "rbxassetid://101851696"
											SpecialMesh.TextureId = "rbxassetid://115727863"
											SpecialMesh.Parent = rightLeg
										end

										fn39 = function(arg)
											local rightLeg = arg:FindFirstChild("RightLeg") or arg:FindFirstChild("Right Leg")
											if not rightLeg then
												return
											end

											for _, child in v93(rightLeg:GetChildren()) do
												if child:IsA("SpecialMesh") and child.MeshId == "rbxassetid://101851696" then
													child:Destroy()
												end
											end
										end

										vl.Avatar.SaveOriginal = function()
											if vl.Avatar.original_desc or vl.Avatar.saving_original then
												return
											end
											vl.Avatar.saving_original = true

											v112.spawn(function()
												for i = v84[105], 5 do
													local v113, v114 = v89(function()
														return vl.Services.Players:GetHumanoidDescriptionFromUserIdAsync(vl.Services.LocalPlayer.UserId)
													end)

													if v113 and v114 then
														vl.Avatar.original_desc = v114
														break
													else
														v112.wait(0.3 * i)
													end
												end

												vl.Avatar.saving_original = false
											end)
										end

										vl.Avatar.GetDescription = function(arg)
											if vl.Avatar.cache[arg] then
												return vl.Avatar.cache[arg]
											end

											for i = 1, 5 do
												local v113, v114 = v89(function()
													return vl.Services.Players:GetHumanoidDescriptionFromUserIdAsync(arg)
												end)

												if v113 and v114 then
													vl.Avatar.cache[arg] = v114
													return v114
												end

												if i < 5 then
													v112.wait(0.2 * i)
												end
											end

											return nil
										end

										vl.Avatar.CreateTempModel = function(arg, arg2)
											local r15 = arg2 or v106.HumanoidRigType.R15

											local function fn42(arg3)
												local v113, v114 = v89(function()
													return vl.Services.Players:CreateHumanoidModelFromDescriptionAsync(arg, arg3)
												end)

												if not v113 or not v114 then
													return nil
												end
												v114.Name = "VLAvatarPreview"
												v114.Parent = vl.Services.Replicated

												v89(function()
													vl.Services.Run.Heartbeat:Wait()
												end)

												return v114
											end

											for i = 1, v84[195] do
												local v113 = fn42(r15)
												if v113 then
													return v113
												end
												v112.wait(v84[47] * i)
											end

											return (fn42(r15 == v106.HumanoidRigType.R15 and v106.HumanoidRigType.R6 or v106.HumanoidRigType.R15))
										end

										vl.Avatar.StripJoints = function(arg)
											for _, descendant in v93(arg:GetDescendants()) do
												if descendant:IsA("Weld") or descendant:IsA("Motor6D") or descendant:IsA("WeldConstraint") then
													descendant:Destroy()
												end
											end
										end

										local tbl19 = {
											["Left Arm"] = { "LeftUpperArm", "LeftLowerArm", "LeftHand" },
											["Right Arm"] = { "RightUpperArm", "RightLowerArm", "RightHand" },
											["Left Leg"] = { "LeftUpperLeg", "LeftLowerLeg", "LeftFoot" },
											["Right Leg"] = { "RightUpperLeg", "RightLowerLeg", "RightFoot" },
											Torso = { "UpperTorso", "LowerTorso" },
										}

										vl.Avatar.FindBodyPart = function(arg, arg2)
											if not arg2 or arg2 == "" then
												if n26(3872) >= 13391 then
													return nil
												end

												while true do
												end
											else
												local v113 = arg:FindFirstChild(arg2)

												if not (v113 and v113:IsA("BasePart")) then
													local tbl20 = tbl19[arg2] or {}

													for _, v114 in v93(tbl20) do
														local v115 = arg:FindFirstChild(v114)
														if v115 and v115:IsA("BasePart") then
															return v115
														end
													end

													return nil
												end

												if not (n25 <= 7805) then
													return v113
												end

												while true do
												end
											end
										end

										vl.Avatar.AttachAccessory = function(parent, arg, arg2)
											if not parent or not arg2 then
												return false
											end
											local clone = arg2:Clone()
											vl.Avatar.StripJoints(clone)
											local handle = clone:FindFirstChild("Handle")
											if not handle or not handle:IsA("BasePart") then
												clone:Destroy()
												return false
											end
											handle.Anchored = false
											handle.CanCollide = v84[62]
											handle.Massless = v84[158]
											local handle2 = arg2:FindFirstChild("Handle")
											handle2 = handle2 and handle2:FindFirstChild("AccessoryWeld")
											local c0 = v102.new()
											local c1 = v102.new()
											local part1 = handle2 and handle2:IsA("Weld") and handle2.Part1
											local parent2 = nil

											if part1 then
												parent2 = vl.Avatar.FindBodyPart(parent, handle2.Part1.Name)
												c0 = handle2.C0
												c1 = handle2.C1
											end

											if not parent2 then
												local attachment = handle:FindFirstChildOfClass("Attachment")

												if attachment then
													for _, descendant in v93(parent:GetDescendants()) do
														if descendant:IsA("Attachment") and descendant.Name == attachment.Name and not descendant:IsDescendantOf(clone) then
															parent2 = descendant.Parent
															c0 = attachment.CFrame
															c1 = descendant.CFrame
															break
														end
													end
												end
											end

											if not parent2 then
												parent2 = parent:FindFirstChild("Head") or parent:FindFirstChild("UpperTorso") or parent:FindFirstChild("Torso")
												c0 = v102.new(0, v84[45], 0)
												c1 = v102.new()
											end

											if parent2 and parent2:IsA("BasePart") then
												local Weld = v105.new("Weld")
												Weld.Name = "AccessoryWeld"
												Weld.Part0 = handle
												Weld.Part1 = parent2
												Weld.C0 = c0
												Weld.C1 = c1
												Weld.Parent = handle
												clone.Parent = parent
												return v84[158]
											end

											if arg then
												if v89(function()
													arg:AddAccessory(clone)
												end) and clone.Parent == parent then
													return v84[158]
												end
											end

											clone:Destroy()
											return false
										end

										vl.Avatar.CollectAccessories = function(arg)
											local tbl20 = {}
											local tbl21 = {}

											local function fn42(arg2)
												if not arg2 or tbl21[arg2] then
													return
												end
												tbl21[arg2] = true
												v107.insert(tbl20, arg2)
											end

											local function fn43(arg2)
												if not arg2 or arg2 <= 0 then
													return
												end

												v89(function()
													local fn44 = getobjects or get_objects or function(arg3)
														local v113, v114 = v89(v85.GetObjects, v85, arg3)
														return v113 and v90(v114) == "table" and v114 or {}
													end

													for _, v113 in v93(fn44("rbxassetid://" .. arg2)) do
														local isAccessory = v113:IsA("Accessory") and v113 or v113:FindFirstChildOfClass("Accessory")

														if not isAccessory then
															for _, descendant in v93(v113:GetDescendants()) do
																if descendant:IsA("Accessory") then
																	isAccessory = descendant
																	break
																end
															end
														end

														fn42(isAccessory)
													end
												end)
											end

											if arg and arg.GetAccessories then
												v89(function()
													for _, v113 in v93(arg:GetAccessories(true)) do
														fn43(v113.AssetId)
													end
												end)
											end

											if arg and #tbl20 == v84[108] then
												for _, v113 in v93({
													"HatAccessory",
													"HairAccessory",
													"FaceAccessory",
													"NeckAccessory",
													"ShouldersAccessory",
													"FrontAccessory",
													"BackAccessory",
													"WaistAccessory",
												}) do
													local v114 = arg[v113]

													if v114 and v114 ~= "" then
														for match in v108.gmatch(v96(v114), "%d+") do
															fn43(v97(match))
														end
													end
												end
											end

											return tbl20
										end

										vl.Avatar.RemoveAccessories = function(arg)
											for _, child in v93(arg:GetChildren()) do
												if child:IsA("Accessory") or child:IsA("Hat") then
													child:Destroy()
												end
											end
										end

										vl.Avatar.TransferAccessory = function(parent, arg)
											if not parent or not arg then
												return v84[62]
											end
											local handle = arg:FindFirstChild("Handle")
											if not handle or not handle:IsA("BasePart") then
												return false
											end
											handle.Anchored = false
											handle.CanCollide = v84[62]
											handle.Massless = true
											local accessoryWeld = handle:FindFirstChild("AccessoryWeld")

											if not accessoryWeld then
												for _, child in v93(handle:GetChildren()) do
													if child:IsA("Weld") or child:IsA("WeldConstraint") then
														accessoryWeld = child
														break
													end
												end
											end

											if accessoryWeld and accessoryWeld.Part1 then
												local v113 = vl.Avatar.FindBodyPart(parent, accessoryWeld.Part1.Name)

												if v113 then
													accessoryWeld.Part1 = v113
													arg.Parent = parent
													return true
												end
											end

											return vl.Avatar.AttachAccessory(parent, nil, arg)
										end

										vl.Avatar.ApplyAccessories = function(arg, arg2, arg3, arg4)
											vl.Avatar.RemoveAccessories(arg)
											local n32 = 0

											if arg3 then
												for _, child in v93(arg3:GetChildren()) do
													if child:IsA("Accessory") or child:IsA("Hat") then
														if vl.Avatar.TransferAccessory(arg, child) then
															n32 += 1
														end
													end
												end

												if n32 == 0 then
													local humanoid = arg3:FindFirstChildOfClass("Humanoid")

													if humanoid then
														v89(function()
															for _, v113 in v93(humanoid:GetAccessories()) do
																if vl.Avatar.TransferAccessory(arg, v113) then
																	n32 += v84[105]
																end
															end
														end)
													end
												end
											end

											if n32 == 0 then
												for _, v113 in v93(vl.Avatar.CollectAccessories(arg4)) do
													if vl.Avatar.AttachAccessory(arg, arg2, v113) then
														n32 += v84[105]
													end
												end
											end

											return n32
										end

										vl.Avatar.ApplyScales = function(parent, arg)
											if not parent or not arg then
												return
											end

											for _, v113 in v93({
												{ "BodyHeightScale", arg.HeightScale, false },
												{ "BodyWidthScale", arg.WidthScale, false },
												{ "BodyDepthScale", arg.DepthScale, false },
												{ "HeadScale", arg.HeadScale, v84[62] },
												{ "BodyTypeScale", arg.BodyTypeScale, true },
												{ "ProportionScale", arg.ProportionScale, true },
											}) do
												local v114 = v113[1]
												local v115 = v113[2]
												local v116 = v113[3]

												if v91(v115) == "number" and (v115 > 0 or v116 and v115 >= 0) then
													local NumberValue = parent:FindFirstChild(v114)

													if not NumberValue and parent.RigType == v106.HumanoidRigType.R15 then
														NumberValue = v105.new("NumberValue")
														NumberValue.Name = v114
														NumberValue.Parent = parent
													end

													if NumberValue and NumberValue:IsA("NumberValue") then
														NumberValue.Value = v115
													end
												end
											end
										end

										vl.Avatar.ApplySpecialParts = function(arg, arg2)
											if not arg or not arg2 then
												return
											end

											if arg2.Head and (arg2.Head == 15093053680 or arg2.Head == 134082513) then
												v89(fn40, arg)
											end

											if arg2.RightLeg ~= 139607718 then
												return
											end

											v89(function()
												if arg:FindFirstChild("RightLeg") or arg:FindFirstChild("Right Leg") then
													fn41(arg)
													return
												end

												for _, v113 in v93({ "RightUpperLeg", "RightLowerLeg", "RightFoot" }) do
													local v114 = arg:FindFirstChild(v113)

													if v114 then
														v114.Transparency = 1
													end
												end

												local rightUpperLeg = arg:FindFirstChild("RightUpperLeg")
												if not rightUpperLeg or rightUpperLeg:FindFirstChild("KorbloxLeg") then
													return
												end
												local Part = v105.new("Part")
												Part.Name = "KorbloxLeg"
												Part.CanCollide = v84[62]
												Part.Massless = true
												Part.Size = v101.new(1, v84[117], 1)
												local SpecialMesh = v105.new("SpecialMesh")
												SpecialMesh.MeshId = "rbxassetid://101851696"
												SpecialMesh.TextureId = "rbxassetid://115727863"
												SpecialMesh.Parent = Part
												local Weld = v105.new("Weld")
												Weld.Part0 = rightUpperLeg
												Weld.Part1 = Part
												Weld.C0 = v102.new(0, -0.5, 0)
												Weld.Parent = Part
												Part.Parent = rightUpperLeg
											end)
										end
									end
								end

								do
									vl.Avatar.ReplacePart = function(arg, parent, arg2)
										if not arg or not parent then
											return
										end

										if not arg2 then
											vl.Avatar.original_parts = vl.Avatar.original_parts or {}

											if not vl.Avatar.original_parts[arg.Name] then
												local clone = arg:Clone()

												for _, child in v93(clone:GetChildren()) do
													if child:IsA("JointInstance") then
														child:Destroy()
													end
												end

												vl.Avatar.original_parts[arg.Name] = clone
											end
										end

										parent.Name = arg.Name
										parent.CFrame = arg.CFrame
										parent.Color = arg.Color
										parent.Transparency = arg.Transparency
										parent.CanCollide = arg.CanCollide
										parent.Anchored = arg.Anchored

										for _, child in v93(arg:GetChildren()) do
											if child:IsA("Attachment") and not parent:FindFirstChild(child.Name) then
												v89(function()
													child:Clone().Parent = parent
												end)
											end
										end

										local tbl19 = {}
										local parent2 = arg.Parent

										if parent2 then
											for _, descendant in v93(parent2:GetDescendants()) do
												if descendant:IsA("Motor6D") and (descendant.Part0 == arg or descendant.Part1 == arg) then
													v107.insert(tbl19, {
														name = descendant.Name,
														parent = descendant.Parent == arg and "new" or descendant.Parent,
														part0 = descendant.Part0 == arg and "new" or descendant.Part0,
														part1 = descendant.Part1 == arg and "new" or descendant.Part1,
														c0 = descendant.C0,
														c1 = descendant.C1,
														source = descendant,
													})
												end
											end
										end

										parent.Parent = arg.Parent

										for _, v113 in v93(tbl19) do
											v89(function()
												v113.source:Destroy()
											end)

											v89(function()
												local Motor6D = v105.new("Motor6D")
												Motor6D.Name = v113.name
												Motor6D.Part0 = v113.part0 == "new" and parent or v113.part0
												Motor6D.Part1 = v113.part1 == "new" and parent or v113.part1
												Motor6D.C0 = v113.c0
												Motor6D.C1 = v113.c1
												Motor6D.Parent = v113.parent == "new" and parent or v113.parent
											end)
										end

										arg:Destroy()
									end

									do
										local tbl19 = {
											"Head",
											"UpperTorso",
											"LowerTorso",
											"LeftUpperArm",
											"LeftLowerArm",
											"LeftHand",
											"RightUpperArm",
											"RightLowerArm",
											"RightHand",
											"LeftUpperLeg",
											"LeftLowerLeg",
											"LeftFoot",
											"RightUpperLeg",
											"RightLowerLeg",
											"RightFoot",
										}

										vl.Avatar.TransferMeshes = function(arg, parent, arg2)
											if not arg or not parent then
												return
											end

											if arg2 and arg2.RigType ~= v106.HumanoidRigType.R15 then
												for _, child in v93(arg:GetChildren()) do
													if child:IsA("CharacterMesh") then
														v89(function()
															for _, child2 in v93(parent:GetChildren()) do
																if child2:IsA("CharacterMesh") and child2.BodyPart == child.BodyPart then
																	child2:Destroy()
																end
															end

															child:Clone().Parent = parent
														end)
													end
												end

												return
											end

											local humanoid = arg:FindFirstChildOfClass("Humanoid")
											if humanoid and humanoid.RigType ~= v106.HumanoidRigType.R15 then
												return
											end

											for _, v113 in v93(tbl19) do
												local v114 = arg:FindFirstChild(v113)
												local v115 = parent:FindFirstChild(v113)

												if v114 and v115 and v114:IsA("BasePart") and v115:IsA(v84[24]) then
													if v114:IsA("MeshPart") and v115:IsA("MeshPart") then
														local flag18 = false

														v89(function()
															v115:ApplyMesh(v114)
															flag18 = true
														end)

														if not flag18 then
															v89(function()
																v115.MeshId = v114.MeshId
															end)
														end

														v89(function()
															v115.TextureID = v114.TextureID
														end)

														v89(function()
															local surfaceAppearance = v115:FindFirstChildOfClass("SurfaceAppearance")

															if surfaceAppearance then
																surfaceAppearance:Destroy()
															end

															local surfaceAppearance2 = v114:FindFirstChildOfClass("SurfaceAppearance")

															if surfaceAppearance2 then
																surfaceAppearance2:Clone().Parent = v115
															end
														end)
													elseif v114.ClassName ~= v115.ClassName then
														local clone = v114:Clone()

														for _, child in v93(clone:GetChildren()) do
															if child:IsA("JointInstance") then
																child:Destroy()
															end
														end

														local flag18 = v84[62]

														v89(function()
															vl.Avatar.ReplacePart(v115, clone, false)
															flag18 = true
														end)

														if not flag18 then
															clone:Destroy()
														end
													else
														v89(function()
															local specialMesh = v115:FindFirstChildOfClass("SpecialMesh") or v115:FindFirstChildOfClass("BlockMesh") or v115:FindFirstChildOfClass("CylinderMesh")

															if specialMesh then
																specialMesh:Destroy()
															end

															local specialMesh2 = v114:FindFirstChildOfClass("SpecialMesh") or v114:FindFirstChildOfClass("BlockMesh") or v114:FindFirstChildOfClass("CylinderMesh")

															if specialMesh2 then
																specialMesh2:Clone().Parent = v115
															end
														end)
													end

													v115 = parent:FindFirstChild(v113)

													if v115 and v115:IsA("BasePart") then
														v89(function()
															v115.Size = v114.Size
														end)

														v89(function()
															local originalSize = v114:FindFirstChild("OriginalSize")

															if originalSize and originalSize:IsA("Vector3Value") then
																local originalSize2 = v115:FindFirstChild("OriginalSize")

																if originalSize2 and originalSize2:IsA("Vector3Value") then
																	originalSize2.Value = originalSize.Value
																else
																	originalSize:Clone().Parent = v115
																end
															end
														end)

														v89(function()
															for _, child in v93(v114:GetChildren()) do
																if child:IsA("Attachment") then
																	local v116 = v115:FindFirstChild(child.Name)

																	if v116 and v116:IsA("Attachment") then
																		v116.CFrame = child.CFrame
																	end
																end
															end
														end)
													end
												end
											end

											v89(function()
												for _, descendant in v93(arg:GetDescendants()) do
													if descendant:IsA("Motor6D") and descendant.Parent then
														local v113 = parent:FindFirstChild(descendant.Parent.Name)
														v113 = v113 and v113:FindFirstChild(descendant.Name)

														if v113 and v113:IsA("Motor6D") then
															v113.C0 = descendant.C0
															v113.C1 = descendant.C1
														end
													end
												end
											end)

											if arg2 and humanoid then
												v89(function()
													arg2.HipHeight = humanoid.HipHeight
												end)
											end
										end
									end
								end

								do
									vl.Avatar.TransferAppearance = function(arg, parent, arg2, arg3)
										if not arg or not parent or not arg2 then
											return v84[62]
										end
										fn37(arg2, arg3)
										vl.Avatar.ApplyScales(arg2, arg3)

										v89(function()
											vl.Services.Run.Heartbeat:Wait()
										end)

										vl.Avatar.TransferMeshes(arg, parent, arg2)

										for _, v113 in v93({ "Shirt", "Pants", "ShirtGraphic" }) do
											local v114 = arg:FindFirstChildOfClass(v113)

											if v114 then
												local v115 = parent:FindFirstChildOfClass(v113)

												if v115 then
													v115:Destroy()
												end

												v114:Clone().Parent = parent
											end
										end

										local bodyColors = parent:FindFirstChildOfClass("BodyColors")

										if not bodyColors then
											bodyColors = v105.new("BodyColors")
											bodyColors.Parent = parent
										end

										if arg3 then
											bodyColors.HeadColor3 = arg3.HeadColor
											bodyColors.TorsoColor3 = arg3.TorsoColor
											bodyColors.LeftArmColor3 = arg3.LeftArmColor
											bodyColors.RightArmColor3 = arg3.RightArmColor
											bodyColors.LeftLegColor3 = arg3.LeftLegColor
											bodyColors.RightLegColor3 = arg3.RightLegColor
										end

										local head = arg:FindFirstChild("Head")
										local head2 = parent:FindFirstChild("Head")

										if head and head2 then
											local face = head:FindFirstChild("face") or head:FindFirstChildOfClass("Decal")

											if face then
												local face2 = head2:FindFirstChild("face") or head2:FindFirstChildOfClass("Decal")

												if face2 then
													face2:Destroy()
												end

												local clone = face:Clone()
												clone.Name = "face"
												clone.Parent = head2
											end
										end

										vl.Avatar.ApplySpecialParts(parent, arg3)
										vl.Avatar.ApplyAccessories(parent, arg2, arg, arg3)
										return true
									end

									vl.Avatar.Clean = function(arg)
										local tbl19 = {}

										for _, child in v93(arg:GetChildren()) do
											if child:IsA("Tool") or child:IsA("HopperBin") then
												v107.insert(tbl19, child)
												child.Parent = nil
											end
										end

										local backpack = arg.Parent and arg.Parent:FindFirstChild("Backpack")
										local tbl20 = {}

										for _, descendant in v93(arg:GetDescendants()) do
											if descendant:IsA("BaseScript") then
												tbl20[descendant] = true

												if descendant.Parent then
													tbl20[descendant.Parent] = v84[158]
												end
											end
										end

										for _, child in v93(arg:GetChildren()) do
											if not tbl20[child] then
												if child:IsA("Accessory") or child:IsA("Hat") or child:IsA("BodyColors") or child:IsA("CharacterMesh") or child:IsA("Shirt") or child:IsA("Pants") or child:IsA("ShirtGraphic") then
													child:Destroy()
												end
											end
										end

										for _, v113 in v93(tbl19) do
											if v113 and v113.Parent == nil then
												v113.Parent = backpack or arg
											end
										end
									end

									vl.Avatar.RevertToOriginal = function(arg)
										if not arg then
											return
										end
										v89(fn38, arg)
										v89(fn39, arg)

										v89(function()
											for _, v113 in v93({ "RightUpperLeg", "RightLowerLeg", "RightFoot" }) do
												local v114 = arg:FindFirstChild(v113)

												if v114 then
													v114.Transparency = 0
												end
											end

											local rightUpperLeg = arg:FindFirstChild("RightUpperLeg")
											rightUpperLeg = rightUpperLeg and rightUpperLeg:FindFirstChild("KorbloxLeg")

											if rightUpperLeg then
												rightUpperLeg:Destroy()
											end
										end)

										if vl.Avatar.original_parts then
											for k, originalPart in v92(vl.Avatar.original_parts) do
												local v113 = arg:FindFirstChild(k)

												if v113 then
													v89(function()
														vl.Avatar.ReplacePart(v113, originalPart:Clone(), true)
													end)
												end
											end

											vl.Avatar.original_parts = nil
										end
									end

									vl.Avatar.ApplyDescription = function(arg, arg2)
										if vl.Avatar.applying then
											return
										end
										vl.Avatar.applying = true

										v112.spawn(function()
											v89(function()
												local function fn40()
													return not arg2 and not vl.Avatar.enabled
												end

												local localPlayer = vl.Services.LocalPlayer
												local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
												if fn40() or not character then
													return
												end
												local character2 = localPlayer.Character or character
												local humanoid = character2:FindFirstChildOfClass("Humanoid") or character2:WaitForChild("Humanoid", v84[178])
												if not humanoid then
													return
												end

												if not arg2 then
													vl.Avatar.RevertToOriginal(character2)
												end

												vl.Avatar.Clean(character2)
												if fn40() then
													return
												end
												local v113 = vl.Avatar.CreateTempModel(arg, humanoid.RigType)
												local v114 = v84[62]

												if v113 then
													v114 = vl.Avatar.TransferAppearance(v113, character2, humanoid, arg)
													v113:Destroy()
												end

												if v114 then
													return
												end
												fn37(humanoid, arg)
												vl.Avatar.ApplyScales(humanoid, arg)
												vl.Avatar.ApplySpecialParts(character2, arg)
												local bodyColors = character2:FindFirstChildOfClass("BodyColors")

												if not bodyColors then
													bodyColors = v105.new("BodyColors")
													bodyColors.Parent = character2
												end

												bodyColors.HeadColor3 = arg.HeadColor
												bodyColors.TorsoColor3 = arg.TorsoColor
												bodyColors.LeftArmColor3 = arg.LeftArmColor
												bodyColors.RightArmColor3 = arg.RightArmColor
												bodyColors.LeftLegColor3 = arg.LeftLegColor
												bodyColors.RightLegColor3 = arg.RightLegColor
												vl.Avatar.ApplyAccessories(character2, humanoid, nil, arg)
											end)

											vl.Avatar.applying = false
										end)
									end

									vl.Avatar.Apply = function(arg)
										if vl.Avatar.applying then
											return
										end
										local avatar = vl.Avatar
										avatar.attempt_id = avatar.attempt_id + 1
										local attemptId = vl.Avatar.attempt_id

										v112.spawn(function()
											local function fn40()
												return not vl.Avatar.enabled or vl.Avatar.target ~= arg or vl.Avatar.attempt_id ~= attemptId
											end

											if fn40() then
												return
											end
											local v113 = fn36(arg)
											if not v113 or vl.Avatar.applied_id == v113 then
												return
											end
											local v114 = vl.Avatar.GetDescription(v113)
											if not v114 or fn40() then
												return
											end
											vl.Avatar.applied_id = v113
											vl.Avatar.ApplyDescription(v114, false)
										end)
									end

									vl.Avatar.Restore = function()
										if not vl.Avatar.original_desc then
											return
										end
										vl.Avatar.applied_id = nil
										vl.Avatar.applying = false
										local character = vl.Services.LocalPlayer.Character

										if character then
											vl.Avatar.RevertToOriginal(character)
										end

										vl.Avatar.ApplyDescription(vl.Avatar.original_desc, true)
									end

									do
										local function fn40(arg, arg2)
											vl.Avatar.applying = false
											vl.Avatar.applied_id = nil
											vl.Avatar.Apply(arg)
											local n32 = 0

											while not vl.Avatar.applying and n32 < 2 do
												v112.wait(0.05)
												n32 += 0.05
											end

											local n33 = 0

											while true do
												local applying = vl.Avatar.applying

												if applying then
													applying = n33 < (arg2 or 8)
												end

												if applying then
													v112.wait(0.05)
													n33 += 0.05
													continue
												end

												break
											end
										end

										vl.Avatar.ReapplyOnSpawn = function(arg)
											if not arg or not vl.Avatar.enabled or vl.Avatar.target == "" then
												return
											end
											local avatar = vl.Avatar
											avatar.respawn_token = avatar.respawn_token + 1
											local respawnToken = vl.Avatar.respawn_token

											v112.spawn(function()
												local localPlayer = vl.Services.LocalPlayer
												if not (arg:FindFirstChildOfClass("Humanoid") or arg:WaitForChild("Humanoid", 10)) then
													return
												end
												arg:WaitForChild("HumanoidRootPart", 10)
												local flag18 = false

												v89(function()
													flag18 = localPlayer:HasAppearanceLoaded()
												end)

												if not flag18 then
													local flag19 = false

													local connection = localPlayer.CharacterAppearanceLoaded:Connect(function()
														flag19 = true
													end)

													local n32 = 0

													while not flag19 and n32 < 6 do
														v112.wait(0.1)
														n32 += 0.1

														v89(function()
															if localPlayer:HasAppearanceLoaded() then
																flag19 = true
															end
														end)
													end

													connection:Disconnect()
												end

												for i = v84[105], 3 do
													if vl.Avatar.respawn_token ~= respawnToken then
														return
													end

													if not vl.Avatar.enabled or vl.Avatar.target == "" then
														return
													end

													if arg.Parent == nil then
														return
													end
													fn40(vl.Avatar.target, 8)

													if i < 3 then
														v112.wait(1)
													end
												end
											end)
										end
									end
								end
							end

							vl.Expander.Originals = vl.Expander.Originals or {}
							vl.Expander.LastApply = vl.Expander.LastApply or 0
							vl.Expander.Active = vl.Expander.Active == true

							vl.Expander.Apply = function(arg)
								local hitbox = vl.Modules.Hitbox
								if not hitbox or v90(hitbox.Hitboxes) ~= "table" then
									return
								end

								for k, hitboxe in v92(hitbox.Hitboxes) do
									if v90(hitboxe) == "table" and v91(hitboxe.Size) == "Vector3" then
										local size = vl.Expander.Originals[k]

										if not size then
											size = hitboxe.Size
											vl.Expander.Originals[k] = size
										end

										hitboxe.Size = size * arg
									end
								end

								vl.Expander.Active = true
							end

							vl.Expander.Restore = function()
								local hitbox = vl.Modules.Hitbox

								if hitbox and v90(hitbox.Hitboxes) == "table" then
									for k, original in v92(vl.Expander.Originals) do
										local v113 = hitbox.Hitboxes[k]
										local v114 = v84[74]

										if v90(v113) == v114 then
											v113.Size = original
										end
									end
								end

								v107.clear(vl.Expander.Originals)
								vl.Expander.Active = false
							end

							vl.Expander.Tick = function()
								local v113 = v110.clock()
								if v113 - vl.Expander.LastApply < 0.5 then
									return
								end
								vl.Expander.LastApply = v113
								vl.Expander.Apply(v97(fn30("vl_expand_amount", 1.5)) or 1.5)
							end

							vl.AutoSpin = {
								Running = false,
								RarityOrder = { "Common", "Rare", "Epic", "Legendary", "Godly", "Secret" },
								OptionsByRarity = {},
								IdByLabel = {},
								LabelById = {},
							}

							vl.AutoSpin.Load = function()
								local style = vl.Modules.Style
								local rarity = vl.Modules.Rarity
								local tbl19 = {}

								if rarity and v90(rarity.Type) == "table" then
									for k, v113 in v92(rarity.Type) do
										tbl19[v113] = k
									end
								end

								local tbl20 = {}

								for _, v113 in v93(vl.AutoSpin.RarityOrder) do
									tbl20[v113] = {}
								end

								local idByLabel = {}
								local labelById = {}

								if style and v90(style.GetActive) == "function" then
									local v113, v114 = v89(function()
										return style:GetActive()
									end)

									if v113 and v90(v114) == "table" then
										for _, v115 in v92(v114) do
											local v116 = v84[74]

											if v90(v115) == v116 and v90(v115.Id) == "string" then
												local v117 = tbl19[v115.Rarity] or v96(v115.Rarity)
												local displayName = v115.DisplayName

												if v90(displayName) ~= "string" or displayName == "" then
													displayName = v115.Id
												end

												if tbl20[v117] then
													v107.insert(tbl20[v117], displayName)
													idByLabel[displayName] = v115.Id
													labelById[v115.Id] = displayName
												end
											end
										end
									end
								end

								local optionsByRarity = {}

								for _, v113 in v93(vl.AutoSpin.RarityOrder) do
									local tbl21 = tbl20[v113] or {}
									v107.sort(tbl21)
									local tbl22 = { "None" }

									for _, v114 in v93(tbl21) do
										v107.insert(tbl22, v114)
									end

									optionsByRarity[v113] = tbl22
								end

								vl.AutoSpin.OptionsByRarity = optionsByRarity
								vl.AutoSpin.IdByLabel = idByLabel
								vl.AutoSpin.LabelById = labelById
							end

							vl.AutoSpin.FlagFor = function(arg)
								return "vl_autospin_" .. v108.lower(arg)
							end

							vl.AutoSpin.SelectedIds = function()
								local tbl19 = {}

								for _, v113 in v93(vl.AutoSpin.RarityOrder) do
									local none = fn30(vl.AutoSpin.FlagFor(v113), "None")

									if v90(none) == "string" and none ~= "" and none ~= v84[144] then
										local v114 = vl.AutoSpin.IdByLabel[none]

										if v114 then
											tbl19[v114] = none
										end
									end
								end

								return tbl19
							end

							vl.AutoSpin.Controller = function()
								local knit = vl.Modules.Knit
								local flag18 = not knit

								if not flag18 then
									local v113 = v84[199]
									flag18 = v90(knit.GetController) ~= v113
								end

								if flag18 then
									return nil
								end

								local v113, v114 = v89(function()
									return knit.GetController("StyleController")
								end)

								if v113 and v90(v114) == "table" then
									return v114
								end
								return nil
							end

							vl.AutoSpin.SpinGap = function()
								local style = vl.Modules.Style
								style = style and style.SpinTweenInfo
								if v91(style) == "TweenInfo" and v90(style.Time) == "number" then
									return style.Time + 0.75
								end
								return 5.75
							end

							vl.AutoSpin.IsRetryable = function(arg)
								if v90(arg) ~= "string" then
									return false
								end
								local v113 = v108.lower(arg)
								return v108.find(v113, "wait", v84[105], true) ~= nil or v108.find(v113, "moment", v84[105], v84[158]) ~= nil or v108.find(v113, "try again", v84[105], true) ~= nil or v108.find(v113, "cooldown", v84[105], true) ~= nil or v108.find(v113, "busy", v84[105], true) ~= nil or v108.find(v113, "slow", v84[105], true) ~= nil
							end

							vl.AutoSpin.WaitReady = function()
								local v113 = vl.AutoSpin.Controller()
								local n32 = v110.clock() + 45

								while vl.AutoSpin.Running and v110.clock() < n32 do
									local flag18 = false
									local flag19 = false
									local flag20 = false
									local n33 = 0

									if v113 then
										local flag21 = v90(v113.IsSpinning) == "table"

										if flag21 then
											local v114 = v84[199]
											flag21 = v90(v113.IsSpinning.get) == v114
										end

										if flag21 then
											flag18 = v113.IsSpinning:get() == true
										end

										if v90(v113.Debounce) == "table" and v90(v113.Debounce.get) == "function" then
											flag19 = v113.Debounce:get() == true
										end

										if v90(v113.IsViewingCutscene) == "table" and v90(v113.IsViewingCutscene.get) == "function" then
											flag20 = v113.IsViewingCutscene:get() == true
										end

										n33 = v97(v113.SpinDebounce) or v84[108]
									end

									if not flag18 and not flag19 and not flag20 and v110.clock() >= n33 then
										return true
									end
									v112.wait(0.1)
								end

								return false
							end

							vl.AutoSpin.Roll = function()
								if not vl.AutoSpin.WaitReady() then
									return nil, "Timed out waiting for spin"
								end
								local knit = vl.Modules.Knit
								if not knit or v90(knit.GetService) ~= "function" then
									return nil, "Knit not ready"
								end

								local v113, v114 = v89(function()
									return knit.GetService("StyleService")
								end)

								if not v113 or v90(v114) ~= "table" or v90(v114.Roll) ~= "function" then
									return nil, "StyleService missing"
								end

								local v115, v116 = v89(function()
									return v114:Roll(false)
								end)

								if not v115 then
									return nil, v96(v116)
								end
								local flag18, v117

								if v90(v116) == "table" and v90(v116.expect) == "function" then
									flag18, v117 = v89(function()
										return v107.pack(v116:expect())
									end)
								elseif v90(v116) == "table" and v90(v116.await) == "function" then
									flag18, v117 = v89(function()
										return v107.pack(v116:await())
									end)
								else
									v117 = v107.pack(v116)
									flag18 = true
								end

								if not flag18 then
									return nil, v96(v117)
								end
								local v118

								if v90(v117[1]) == "boolean" then
									if v117[1] == v84[62] then
										return nil, v90(v117[v84[117]]) == "string" and v117[v84[117]] or "Roll refused"
									end
									v118 = v117[2]
								else
									v118 = nil

									if v90(v117[1]) == "table" then
										v118 = v117[v84[105]]
									end
								end

								if v90(v118) ~= "table" or #v118 == 0 then
									return nil, "Empty roll"
								end
								return v118[#v118], nil
							end

							vl.AutoSpin.StopUi = function()
								if tbl17 and tbl17.Flags then
									tbl17.Flags.vl_autospin_styles = false
								end

								local vlAutospinStyles = tbl17 and tbl17.Options and tbl17.Options.vl_autospin_styles

								if vlAutospinStyles and v90(vlAutospinStyles.Set) == "function" then
									v89(function()
										vlAutospinStyles:Set(false, true)
									end)
								end
							end

							vl.AutoSpin.Stop = function(arg)
								if not vl.AutoSpin.Running and not arg then
									return
								end
								vl.AutoSpin.Running = false
								vl.AutoSpin.StopUi()

								if v90(arg) == "string" and arg ~= "" then
									tbl17:Notify({ Title = "Auto Spin", Text = arg, Type = "info" })
								end
							end

							vl.AutoSpin.Start = function()
								if vl.AutoSpin.Running then
									return
								end
								local v113 = vl.AutoSpin.SelectedIds()

								if not v94(v113) then
									vl.AutoSpin.StopUi()
									tbl17:Notify({ Title = "Auto Spin", Text = "Pick at least one style first.", Type = "warning" })
									return
								end

								vl.AutoSpin.Running = v84[158]

								v112.spawn(function()
									while vl.AutoSpin.Running and fn30("vl_autospin_styles", v84[62]) == true do
										v113 = vl.AutoSpin.SelectedIds()
										if not v94(v113) then
											vl.AutoSpin.Stop("No styles selected — stopped.")
											return
										end
										local v114, stopped = vl.AutoSpin.Roll()
										if not vl.AutoSpin.Running then
											return
										end

										if not v114 then
											if vl.AutoSpin.IsRetryable(stopped) then
												v112.wait(v84[117])
												continue
											end
											vl.AutoSpin.Stop(stopped and "Stopped: " .. stopped or "Roll failed — stopped.")
											return
										end

										local v115 = v113[v114]
										if v115 then
											vl.AutoSpin.Stop(("Got %s — stopped."):format(v115))
											return
										end
										v112.wait(vl.AutoSpin.SpinGap())
									end

									vl.AutoSpin.Running = false
								end)
							end

							vl.AutoSpin.Ensure = function()
								local v113 = v84[158]
								local flag18 = fn30("vl_autospin_styles", false) == v113

								if flag18 and not vl.AutoSpin.Running then
									vl.AutoSpin.Start()
								elseif not flag18 and vl.AutoSpin.Running then
									vl.AutoSpin.Running = false
								end
							end

							vl.Background = {
								Folder = "Zenthra Volleyball Legends/backgrounds",
								Api = "http://prem-eu4.bot-hosting.net:21456",
								Seq = 0,
								Active = false,
								Opacity = 0.5,
							}

							fn31 = function()
								return v91(writefile) == "function" and v91(readfile) == "function" and v91(isfile) == "function" and v91(isfolder) == "function" and v91(makefolder) == "function" and v91(listfiles) == "function"
							end

							fn32 = function(arg)
								if v91(getcustomasset) == "function" then
									return getcustomasset(arg)
								end

								if v91(getsynasset) == "function" then
									return getsynasset(arg)
								end
								return nil
							end

							fn33 = function(arg)
								if v90(arg) ~= "string" then
									return ""
								end

								return (arg:gsub("[^%w%-_%.~]", function(arg2)
									return v108.format("%%%02X", v108.byte(arg2))
								end))
							end

							fn34 = function()
								local v113 = v84[199]
								if v91(request) == v113 then
									return request
								end

								if v91(http_request) == "function" then
									return http_request
								end
								return nil
							end

							do
								local tbl19 = nil

								fn35 = function(arg)
									if v90(arg) ~= "string" then
										return nil
									end

									if crypt and v91(crypt.base64decode) == "function" then
										return crypt.base64decode(arg)
									end

									if crypt and crypt.base64 and v91(crypt.base64.decode) == "function" then
										return crypt.base64.decode(arg)
									end

									if not tbl19 then
										tbl19 = {}

										for i = v84[105], 64 do
											tbl19[v108.byte("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", i)] = i - 1
										end
									end

									local str8 = arg:gsub("[^%w%+/=]", "")
									local tbl20 = {}
									local n32 = 1
									local n33 = 0

									while n32 <= #str8 do
										local v113 = tbl19[v108.byte(str8, n32)]
										local v114 = tbl19[v108.byte(str8, n32 + v84[105])]

										if not (not v113 or not v114) then
											local v115 = v108.byte(str8, n32 + 2) and tbl19[v108.byte(str8, n32 + 2)]
											local v116 = v108.byte(str8, n32 + v84[195]) and tbl19[v108.byte(str8, n32 + 3)]
											n33 += 1
											tbl20[n33] = v108.char(v113 * 4 + v109.floor(v114 / v84[30]))

											if v115 then
												n33 += 1
												tbl20[n33] = v108.char(v114 % 16 * 16 + v109.floor(v115 / 4))

												if v116 then
													n33 += 1
													tbl20[n33] = v108.char(v115 % v84[68] * 64 + v116)
												end
											end

											n32 += 4
											continue
										end

										break
									end

									return v107.concat(tbl20)
								end
							end
						end

						local v113, v114, v115, guiTab, fn36

						do
							do
								local v116

								do
									do
										local tbl19 = {}
										local vlBackgroundApplied

										if v87 then
											local v117 = v87()

											if v90(v117.__VLBackgroundApplied) ~= "table" then
												v117.__VLBackgroundApplied = {}
											end

											vlBackgroundApplied = v117.__VLBackgroundApplied
										else
											vlBackgroundApplied = {}
										end

										local function fn37(arg)
											local str8 = vl.Background.Folder .. "/" .. arg
											if not tbl19[arg] then
												return fn32(str8)
											end
											tbl19[arg] = nil
											local v117, v118 = v89(readfile, str8)
											local flag18 = not v117

											if not flag18 then
												local v119 = v84[21]
												flag18 = v90(v118) ~= v119
											end

											if flag18 or #v118 == 0 then
												return fn32(str8)
											end
											local n32 = #v118 % 16777213

											for i = v84[105], #v118, v109.max(1, v109.floor(#v118 / 64)) do
												n32 = (n32 * 31 + v118:byte(i)) % 16777213
											end

											local str9 = vl.Background.Folder .. "/.cache"
											local str10 = str9 .. "/" .. v108.format("%x", n32) .. v84[33] .. (arg:match("%.(%w+)$") or "png")

											return fn32(v89(function()
												if not isfolder(str9) then
													makefolder(str9)
												end

												if not isfile(str10) then
													writefile(str10, v118)
												end
											end) and str10 or str8)
										end

										vl.Background.ApiBase = function()
											local str8 = vl.Background.Api:gsub("^%s+", ""):gsub("%s+$", ""):gsub("/+$", "")
											if not str8:match("^https?://") then
												return nil
											end
											return str8
										end

										vl.Background.Fetch = function(arg)
											local v117 = vl.Background.ApiBase()
											if not v117 then
												return nil, "API URL must start with http"
											end

											if v90(arg) ~= "string" or arg == "" then
												return nil, "Enter a media URL"
											end
											local str8 = v117 .. "/sheet?url=" .. fn33(arg) .. "&multi=1&quality=original&fmt=jpg&format=json"
											local body = nil
											local v118 = fn34()

											if v118 then
												local v119, v120 = v89(v118, { Url = str8, Method = "GET" })

												if v119 and v90(v120) == "table" and v90(v120.Body) == "string" and #v120.Body > 0 then
													body = v120.Body
												end
											end

											if not body then
												local v119, v120 = v89(function()
													return v85:HttpGet(str8, true)
												end)

												if not v119 or v90(v120) ~= "string" or v120 == "" then
													return nil, "Request failed, is the API up?"
												end
												body = v120
											end

											local v119, v120 = v89(function()
												return vl.Services.Http:JSONDecode(body)
											end)

											if not v119 or v90(v120) ~= "table" then
												return nil, "Bad API response"
											end

											if not v120.ok then
												return nil, v96(v120.error or "API error")
											end

											if not v120.multi or v90(v120.images) ~= "table" or #v120.images == 0 then
												return nil, "API returned no pages"
											end
											local tbl20 = {}

											for k, image in v93(v120.images) do
												local v121 = fn35(image)
												if v90(v121) ~= "string" or #v121 == v84[108] then
													return nil, "Could not decode page " .. k
												end
												tbl20[k] = v121
											end

											return tbl20, {
												cols = v120.cols,
												cellW = v120.cellW,
												cellH = v120.cellH,
												count = v120.count,
												counts = v120.counts,
												delayMs = v120.delayMs or v84[8],
												ext = (v120.ext == v84[55] or v120.ext == v84[152]) and v120.ext or v84[152],
											}
										end

										vl.Background.Save = function(arg, arg2)
											if not fn31() then
												return v84[62], "This executor has no file access"
											end
											local v117, v118 = vl.Background.Fetch(arg)
											if not v117 then
												return false, v118
											end
											local str8 = v96(arg2 or ""):gsub("[%\\/:%*%?\"<>|]", ""):gsub("^%s+", ""):gsub("%s+$", ""):gsub("%.%w+$", "")

											if str8 == "" then
												str8 = "media_" .. v96(v110.time())
											end

											local tbl20 = { str8 .. "." .. v118.ext }

											for i = v84[117], #v117 do
												tbl20[i] = str8 .. ".p" .. i .. "." .. v118.ext
											end

											if not v89(function()
												if not isfolder("Zenthra Volleyball Legends") then
													makefolder("Zenthra Volleyball Legends")
												end

												if not isfolder(vl.Background.Folder) then
													makefolder(vl.Background.Folder)
												end

												for _, v119 in v93({ v84[152], "jpg" }) do
													if v119 ~= v118.ext then
														v89(delfile, vl.Background.Folder .. "/" .. str8 .. "." .. v119)
														v89(delfile, vl.Background.Folder .. "/" .. str8 .. v84[33] .. v119 .. v84[165])
													end

													local v120 = v84[117]

													while isfile(vl.Background.Folder .. "/" .. str8 .. ".p" .. v120 .. "." .. v119) do
														v89(delfile, vl.Background.Folder .. "/" .. str8 .. ".p" .. v120 .. "." .. v119)
														v120 += 1
													end
												end

												for k, v119 in v93(v117) do
													writefile(vl.Background.Folder .. "/" .. tbl20[k], v119)
												end

												writefile(vl.Background.Folder .. "/" .. tbl20[1] .. ".json", vl.Services.Http:JSONEncode({
													cols = v118.cols,
													cellW = v118.cellW,
													cellH = v118.cellH,
													count = v118.count,
													counts = v118.counts,
													delayMs = v118.delayMs,
													pages = tbl20,
													ext = v118.ext,
												}))
											end) then
												return v84[62], v84[156]
											end

											for i = 1, #tbl20 do
												tbl19[tbl20[i]] = true
												vlBackgroundApplied[tbl20[i]] = nil
											end

											vlBackgroundApplied[tbl20[1]] = nil
											return true, tbl20[1]
										end

										vl.Background.List = function()
											local tbl20 = { "None" }
											if not fn31() or not isfolder(vl.Background.Folder) then
												return tbl20
											end
											local v117, v118 = v89(listfiles, vl.Background.Folder)
											if not v117 then
												return tbl20
											end

											for _, v119 in v93(v118) do
												local match = v119:match("[^/\\]+$")

												if match and match:match("%.json$") then
													local str8 = match:gsub("%.json$", "")

													if not str8:match("%.p%d+%.%w+$") then
														v107.insert(tbl20, str8)
													end
												end
											end

											return tbl20
										end

										vl.Background.Delete = function(arg)
											if v90(arg) ~= "string" or arg == "" or arg == "None" then
												return false, "Select a media file first"
											end

											if v91(delfile) ~= "function" then
												return v84[62], v84[143]
											end
											local str8 = vl.Background.Folder .. "/" .. arg

											local v117, v118 = v89(function()
												if v91(isfile) == "function" and not isfile(str8) then
													v95("File not found")
												end

												delfile(str8)
												v89(delfile, str8 .. ".json")
												local str9 = str8:gsub("%.png$", ""):gsub("%.jpe?g$", ""):gsub("%.webm$", ""):gsub("%.mp4$", "")

												if str9 ~= str8 then
													for _, v117 in v93({ "png", "jpg", "jpeg" }) do
														local n32 = 2

														while v91(isfile) == "function" and isfile(str9 .. ".p" .. n32 .. "." .. v117) do
															v89(delfile, str9 .. ".p" .. n32 .. "." .. v117)
															n32 += 1
														end
													end
												end
											end)

											if not v117 then
												return false, v96(v118)
											end
											vlBackgroundApplied[arg] = nil
											return true, arg
										end

										vl.Background.Instances = function()
											fn29()
											local window = vl.Background.Window
											window = window and window.Root
											if not window or not window.Parent then
												return nil
											end
											local vlBackground = window:FindFirstChild("VLBackground")

											if not vlBackground then
												vlBackground = tbl18.Util.New(v84[93], {
													Name = "VLBackground",
													Size = v104.fromScale(1, v84[105]),
													BackgroundTransparency = v84[105],
													BorderSizePixel = 0,
													ZIndex = 0,
													Visible = v84[62],
													Parent = window,
												}, { tbl18.Util.Corner(v84[188]) })

												tbl18.Util.New("VideoFrame", {
													Name = "Video",
													Size = v104.fromScale(1, 1),
													BackgroundTransparency = 1,
													ZIndex = v84[105],
													Looped = true,
													Volume = 0,
													Visible = false,
													Parent = vlBackground,
												})

												tbl18.Util.New("ImageLabel", {
													Name = "Image",
													Size = v104.fromScale(1, 1),
													BackgroundTransparency = 1,
													ScaleType = v106.ScaleType.Stretch,
													ZIndex = v84[117],
													Visible = false,
													Parent = vlBackground,
												})
											end

											return vlBackground, vlBackground and vlBackground:FindFirstChild("Image"), vlBackground and vlBackground:FindFirstChild(v84[9])
										end

										vl.Background.SetOpacity = function(arg)
											vl.Background.Opacity = v109.clamp(v97(arg) or 0.5, 0, 1)
											local v117, v118, v119 = vl.Background.Instances()
											if not v117 then
												return
											end

											if v118 then
												v118.ImageTransparency = 1 - vl.Background.Opacity
											end

											v117.GroupTransparency = v119 and v119.Visible and v84[105] - vl.Background.Opacity or 0

											if vl.Background.Active then
												v117.Visible = vl.Background.Opacity > 0.004
											end
										end

										vl.Background.Stop = function()
											local background = vl.Background
											background.Seq = background.Seq + 1
											vl.Background.Active = false
											local v117, v118, v119 = vl.Background.Instances()
											if not v117 then
												return
											end

											if not (n25 >= 7826) then
												if v119 then
													v89(function()
														v119:Pause()
													end)

													v119.Visible = false
													v119.Video = ""
												end

												if v118 then
													v118.Visible = false
													v118.Image = ""
													v118.ImageRectOffset = Vector2.zero
													v118.ImageRectSize = Vector2.zero
													local preload = v118:FindFirstChild("Preload")

													if preload then
														preload:Destroy()
													end
												end

												v117.Visible = v84[62]
												return
											end

											while true do
											end
										end

										vl.Background.PlayPages = function(arg, arg2)
											vl.Background.Stop()
											local background = vl.Background
											background.Seq = background.Seq + 1
											local seq = vl.Background.Seq
											local v117, v118 = vl.Background.Instances()
											local flag18 = not v117 or not v118 or not arg2

											if not flag18 then
												flag18 = (arg2.count or 0) < 1
											end

											if flag18 then
												return
											end
											local cellW = arg2.cellW
											local cellH = arg2.cellH
											local cols = arg2.cols
											local v119 = v107.create(arg2.count)
											local n32 = 0

											for k, v120 in v93(arg) do
												local counts = arg2.counts and arg2.counts[k] or arg2.count

												for i = v84[108], counts - v84[105] do
													n32 += 1
													local tbl20 = {}
													local n33 = v109.floor(i / cols) * cellH
													tbl20[1] = v120
													tbl20[2] = i % cols * cellW
													tbl20[3] = n33
													v119[n32] = tbl20
													if not (n32 >= arg2.count) then
														continue
													end
													break
												end

												if not (arg2.count <= n32) then
													continue
												end
												break
											end

											if n32 == 0 then
												return
											end
											local Folder = tbl18.Util.New("Folder", { Name = "Preload", Parent = v118 })
											local tbl20 = {}

											for _, v120 in v93(arg) do
												tbl20[v120] = tbl18.Util.New("ImageLabel", {
													Size = v104.fromOffset(1, 1),
													BackgroundTransparency = 1,
													ImageTransparency = 0.996,
													ZIndex = v118 and v118.ZIndex or 1,
													Image = v120,
													Parent = Folder,
												})
											end

											v117.Visible = true
											v118.Visible = true
											v118.Image = v119[v84[105]][1]
											v118.ImageRectSize = Vector2.new(cellW, cellH)
											v118.ImageRectOffset = Vector2.new(v119[v84[105]][2], v119[v84[105]][3])
											vl.Background.Active = true
											vl.Background.SetOpacity(vl.Background.Opacity)
											if n32 == 1 then
												return
											end
											local v120 = v109.max(0.016666666666666666, (v97(arg2.delayMs) or 100) / 1000)

											v112.spawn(function()
												local n33 = v110.clock() + 2

												while true do
													if seq == vl.Background.Seq and v118.Parent and v110.clock() < n33 then
														local flag19 = true

														for _, v121 in v92(tbl20) do
															if not v121.IsLoaded then
																flag19 = false
																break
															end
														end

														if not flag19 then
															v112.wait(0.05)
															continue
														end
													end

													break
												end

												if seq ~= vl.Background.Seq then
													return
												end
												local n34 = v110.clock() + 3
												local v121 = v119[1][v84[105]]
												local n35 = 1

												while true do
													if seq == vl.Background.Seq and v118.Parent then
														v112.wait(v120)

														if seq == vl.Background.Seq then
															local n36 = n35 % n32 + 1
															local v122 = v119[n36]
															local v123 = tbl20[v122[1]]

															if not (v122[v84[105]] ~= v121 and v123 and not v123.IsLoaded and v110.clock() < n34) then
																if v122[1] ~= v121 then
																	v121 = v122[1]
																	v118.Image = v121
																end

																v118.ImageRectOffset = Vector2.new(v122[v84[117]], v122[3])
																n35 = n36
															end

															continue
														end
													end

													break
												end
											end)
										end

										vl.Background.ShowStatic = function(image)
											vl.Background.Stop()
											local background = vl.Background
											background.Seq = background.Seq + 1
											local v117, v118 = vl.Background.Instances()
											if not v117 or not v118 then
												return
											end
											v117.Visible = true
											v118.Visible = true
											v118.Image = image
											v118.ScaleType = v106.ScaleType.Stretch
											v118.Size = v104.fromScale(v84[105], v84[105])
											v118.Position = v104.fromScale(0, 0)
											vl.Background.Active = true
											vl.Background.SetOpacity(vl.Background.Opacity)
										end

										vl.Background.Apply = function(arg)
											local background = vl.Background
											background.Seq = background.Seq + 1
											local seq = vl.Background.Seq
											if not fn30("vl_bg", v84[62]) or not arg or arg == "None" or arg == "" then
												vl.Background.Stop()
												return
											end

											if not fn31() then
												return
											end
											local v117 = vlBackgroundApplied[arg]

											if v117 then
												if v117.kind == "pages" then
													vl.Background.PlayPages(v117.assets, v117.meta)
												else
													vl.Background.ShowStatic(v117.asset)
												end

												return
											end

											v112.spawn(function()
												if seq ~= vl.Background.Seq then
													return
												end
												local str8 = vl.Background.Folder .. "/" .. arg .. ".json"

												if isfile(str8) then
													local flag18, v118 = v89(function()
														return vl.Services.Http:JSONDecode(readfile(str8))
													end)

													if flag18 then
														local v119 = v84[74]
														flag18 = v90(v118) == v119
													end

													if flag18 and v118.count and v90(v118.pages) == "table" then
														local tbl20 = {}

														for k, page in v93(v118.pages) do
															if seq ~= vl.Background.Seq then
																return
															end
															local v119 = fn37(page)
															if not v119 or v119 == "" then
																vl.Background.Stop()
																return
															end
															tbl20[k] = v119
															v112.wait()
														end

														if seq ~= vl.Background.Seq then
															return
														end
														vlBackgroundApplied[arg] = { kind = "pages", assets = tbl20, meta = v118 }
														vl.Background.PlayPages(tbl20, v118)
														return
													end
												end

												if seq ~= vl.Background.Seq then
													return
												end
												local v118 = fn37(arg)
												if not v118 or v118 == "" then
													vl.Background.Stop()
													return
												end
												vlBackgroundApplied[arg] = { kind = "static", asset = v118 }
												vl.Background.ShowStatic(v118)
											end)
										end
									end

									do
										vl._gameAt = 0

										vl.Step = function()
											if not vl.Rally._hooked then
												v89(vl.Rally.Install)
											end

											if not vl.Aim._lineHooked then
												v89(vl.Aim.InstallManualLineShot)
											end

											local pools = vl.Render.Pools

											for _, pool in v92(pools) do
												pool:Begin()
											end

											local flag18 = fn30("vl_prediction", false) == true
											local v117 = v84[158]
											local flag19 = fn30("vl_autoplay", false) == v117
											local flag20 = fn30("vl_autorec", false) == true
											local v118 = v84[158]
											local flag21 = fn30("vl_autodive", false) == v118
											local flag22 = fn30("vl_autospike", false) == true
											local flag23 = fn30("vl_serve", false) == true
											local flag24 = fn30("vl_autojoin", false) == true
											local flag25 = fn30("vl_akari_tsh", false) == true
											local v119 = v110.clock()
											local flag26 = v119 - vl._gameAt >= 0.05

											if flag26 then
												vl._gameAt = v119
											end

											local v120 = vl.Spike.SyncStandaloneState(flag22, flag19, flag26)
											local v121 = flag26 or flag19 or flag24
											local flag27 = false

											if v121 then
												flag27 = vl.Move.StateValue("IsPlaying") == true or vl.Move.StateValue("IsServing") == true
											end

											if flag19 and flag27 then
												vl.AutoPlay.Step()
											elseif flag24 and not flag27 then
												if flag26 then
													vl.Join.Step()
												end

												vl.AutoPlay.MoveDrive()
											elseif flag19 and not flag27 then
												vl.AutoPlay.ReleaseControl()
											elseif flag26 then
												if vl.Counter.Holding then
													vl.Counter.Holding = false
												end

												vl.AutoPlay.ReleaseControl()
											end

											if flag26 and flag27 then
												vl.Join.RestoreZoom()
											end

											local flag28 = flag23 or flag19

											if flag28 then
												flag28 = vl.Move.StateValue("IsServing") == true

												if not flag28 then
													flag28 = (vl.Serve.FinishUntil or 0) > v119
												end
											end

											if flag28 then
												vl.Serve.Step()
											elseif flag26 and not flag23 and not flag19 then
												vl.Serve.FinishUntil = v84[108]
												vl.Serve.SetAimLock(false)
											end

											if flag18 or flag26 and (flag20 or flag21 or flag22 or flag25) then
												local v122 = vl.Ball.Resolve()

												if v122 then
													if flag18 then
														vl.Features.Prediction(v122)
													end

													if flag26 then
														if flag21 then
															vl.Dive.Step(v122)
														end

														if flag25 then
															vl.AkariTSH.Step(v122)
														end

														if not flag19 then
															if flag22 then
																flag22 = (vl.Serve.FinishUntil or 0) <= v119
															end

															if flag22 then
																if v120 == true and not vl.AkariTSH.ShouldHoldAutoSpike() then
																	vl.Spike.Step(v122)
																end
															end

															if flag20 then
																vl.Rec.Step(v122)
															end
														end
													end
												end
											end

											vl.Spike.ClearCutMove()
											vl.Aim.StepLineShot()
											vl.DesyncSpike.Step()

											if fn30("vl_shiftlock", false) == true then
												vl.ShiftLock.Step()
											elseif vl.ShiftLock.Owned or vl.ShiftLock.Engaged then
												vl.ShiftLock.Release()
											end

											vl.Aim.HoldSpikeAim()

											if (flag23 or flag19) and vl.Serve.ShouldAim() then
												local v122 = vl.Serve.AimSide()

												if v122 then
													vl.Serve.Aim(v122)
												end
											end

											if fn30("vl_expander", false) == true then
												vl.Expander.Tick()
											elseif vl.Expander.Active then
												vl.Expander.Restore()
											end

											if fn30("vl_unlock", v84[62]) == true then
												vl.Unlock.Tick()
											elseif vl.Unlock.Active then
												vl.Unlock.Restore()
											end

											local v122 = v84[158]

											if fn30("vl_skybox", false) == v122 then
												if flag26 then
													vl.Skybox.Tick()
												end
											elseif vl.Skybox.Enabled then
												vl.Skybox.Restore()
											end

											vl.AutoSpin.Ensure()
											vl.Equip.Install()

											if fn30("vl_localequip", true) == true then
												vl.Equip.Tick()
											end

											for _, pool in v92(pools) do
												pool:Finish()
											end
										end

										vl.KillOrphanLoops = function()
											if v87 then
												v87().__VL_LoopGen = (v97(v98(v87(), "__VL_LoopGen")) or 0) + v84[105]
												local v117 = v98(v87(), "__VL_LoopConn")
												v87().__VL_LoopConn = nil

												if v117 then
													v89(function()
														v117:Disconnect()
													end)
												end
											end

											for _, connection in v93(vl.Connections) do
												v89(function()
													connection:Disconnect()
												end)
											end

											v107.clear(vl.Connections)
											if v91(v88) ~= "function" then
												return
											end

											v89(function()
												local tbl19 = {}
												local renderStepped = vl.Services.Run and vl.Services.Run.RenderStepped
												local heartbeat = vl.Services.Run and vl.Services.Run.Heartbeat
												tbl19[1] = renderStepped
												tbl19[2] = heartbeat

												for _, v117 in v93(tbl19) do
													if v117 then
														local v118, v119 = v89(v88, v117)
														local flag18 = not v118

														if not flag18 then
															local v120 = v84[74]
															flag18 = v90(v119) ~= v120
														end

														if not flag18 then
															for _, v120 in v93(v119) do
																v89(function()
																	local function_ = v120.Function
																	if v91(function_) ~= "function" then
																		return
																	end
																	local flag19 = v91(v111) == "table"

																	if flag19 then
																		local v121 = v84[199]
																		flag19 = v91(v111.getupvalue) == v121
																	end

																	local flag20 = false

																	if flag19 then
																		for i = 1, 24 do
																			local v121, v122, v123 = v89(v111.getupvalue, function_, i)

																			if not (not v121 or not v122) then
																				local v124 = v84[74]

																				if v91(v123) == v124 and v98(v123, "AutoPlay") ~= nil and v98(v123, "Step") ~= nil and v98(v123, "Join") ~= nil then
																					flag20 = true
																					break
																				else
																					continue
																				end
																			end

																			break
																		end
																	end

																	local flag21 = not flag20

																	if flag21 then
																		local v121 = v84[199]
																		flag21 = v91(getconstants) == v121
																	end

																	if flag21 then
																		local flag22, v121 = v89(getconstants, function_)

																		if flag22 then
																			local v122 = v84[74]
																			flag22 = v90(v121) == v122
																		end

																		if flag22 then
																			for _, v122 in v93(v121) do
																				if v90(v122) == "string" and (v122 == "vl_autoplay" or v122 == "vl_autojoin" or v122 == "vl_autorec" or v108.find(v122, "VL.Step", 1, v84[158])) then
																					flag20 = v84[158]
																					break
																				end
																			end
																		end
																	end

																	if flag20 then
																		v89(function()
																			v120:Disconnect()
																		end)
																	end
																end)
															end
														end
													end
												end
											end)
										end

										vl.Start = function()
											fn29()
											vl.KillOrphanLoops()

											if v87 then
												v87().__VL = vl
												local flags = tbl17.Flags
												v87().__ZenthraFlags = flags
											end

											v89(vl.Aim.InstallManualLineShot)
											local n32 = 0

											if v87 then
												n32 = v97(v98(v87(), "__VL_LoopGen")) or 0
											end

											v89(vl.Rally.Install)

											if vl.Services.LocalPlayer and vl.Services.LocalPlayer.CharacterAdded then
												v107.insert(vl.Connections, vl.Services.LocalPlayer.CharacterAdded:Connect(function(character)
													fn29()

													if vl.DesyncSpike then
														v89(vl.DesyncSpike.Cancel)
													end

													vl.Avatar.ReapplyOnSpawn(character)
												end))
											end

											if vl.Services.Run and vl.Services.Run.RenderStepped then
												local connection = vl.Services.Run.RenderStepped:Connect(function()
													if n28(2788) <= 23 then
														fn29()

														if v87 then
															if v98(v87(), "__VL") ~= vl then
																return
															end

															if (v97(v98(v87(), "__VL_LoopGen")) or 0) ~= n32 then
																return
															end
														end

														local v117, v118 = v89(vl.Step)

														if not v117 then
															vl.Shutdown()
															tbl17:Notify({ Title = "Zenthra", Text = "Stopped: " .. v96(v118), Type = "error" })
														end

														return
													end

													while true do
													end
												end)

												v107.insert(vl.Connections, connection)

												if v87 then
													v87().__VL_LoopConn = connection
												end
											end

											if vl.Services.Run and vl.Services.Run.Heartbeat then
												local connection = vl.Services.Run.Heartbeat:Connect(function()
													fn29()

													if v87 then
														if v98(v87(), "__VL") ~= vl then
															return
														end

														if (v97(v98(v87(), "__VL_LoopGen")) or v84[108]) ~= n32 then
															return
														end
													end

													v89(vl.Aim.HoldSpikeAim)
												end)

												v107.insert(vl.Connections, connection)
											end
										end

										vl.Shutdown = function()
											v89(tbl18.Config.Flush)
											v89(vl.KillOrphanLoops)

											for _, connection in v93(tbl18.State.Connections) do
												v89(function()
													connection:Disconnect()
												end)
											end

											v107.clear(tbl18.State.Connections)

											if v87 then
												if v98(v87(), "__VL") == vl then
													v87().__VL = nil
												end
											end

											v89(function()
												vl.AutoSpin.Running = v84[62]
											end)

											v89(vl.Expander.Restore)

											if vl.ShiftLock.Owned or vl.ShiftLock.Engaged then
												v89(vl.ShiftLock.Release)
											end

											if vl.DesyncSpike then
												v89(vl.DesyncSpike.Cancel)
											end

											if vl.AkariTSH then
												v89(vl.AkariTSH.Reset)
											end

											v89(vl.Background.Stop)

											if vl.Avatar.enabled then
												vl.Avatar.enabled = false
												v89(vl.Avatar.Restore)
											end

											v89(vl.Equip.Remove)
											v89(vl.Skin.Restore)
											v89(vl.Skybox.Restore)
											v89(vl.Unlock.Restore)
											v89(vl.Aim.UninstallManualLineShot)
											v89(vl.Aim.ResetLineShot)

											v89(function()
												if vl.AutoPlay and vl.AutoPlay.ReleaseControl then
													vl.AutoPlay.ReleaseControl()
												end
											end)

											for _, pool in v92(vl.Render.Pools) do
												pool.Items = {}
												pool.Used = 0
											end

											for _, v117 in v93(vl.Render.Registry) do
												v89(function()
													v117:Remove()
												end)
											end

											v107.clear(vl.Render.Registry)
										end

										if v87 then
											do
												local zenthraTeardown = v87().__ZenthraTeardown

												v87().__ZenthraTeardown = function()
													if v90(zenthraTeardown) == "function" then
														v89(zenthraTeardown)
													end

													v89(vl.Shutdown)
												end
											end
										end

										do
											local v117 = v84[74]
											local flag18 = v90(STATE) == v117

											if flag18 then
												local v118 = v84[199]
												flag18 = v90(STATE.onCleanup) == v118
											end

											if flag18 then
												STATE.onCleanup(function()
													v89(vl.Shutdown)
												end)
											end
										end
									end

									v116 = tbl17:Window({
										Title = "Zenthra",
										Subtitle = "Volleyball Legends",
										ConfigFolder = "Zenthra Volleyball Legends",
										ConfigName = v84[15],
										ToggleKey = v106.KeyCode.RightShift,
									})

									vl.Background.Window = v116

									do
										local flag18 = tbl17.Flags.vl_equipped == nil

										if flag18 then
											local v117 = v84[74]
											flag18 = v90(tbl18.State.Saved.vl_equipped) == v117
										end

										if flag18 then
											tbl17.Flags.vl_equipped = tbl18.State.Saved.vl_equipped
										end
									end
								end

								do
									v113 = v116:Tab({ Title = "Combat", Icon = "swords" })
									v114 = v116:Tab({ Title = "Visuals", Icon = "eye" })
									v115 = v116:Tab({ Title = "Spin", Icon = "rotate" })
									vl.AutoSpin.Load()

									v114:Module({
										Title = "Avatar Changer",
										Description = "Wear another player's avatar",
										Side = "Left",
										Flag = "vl_avatar",
										Callback = function(enabled)
											vl.Avatar.enabled = enabled

											if enabled then
												vl.Avatar.SaveOriginal()

												if vl.Avatar.target ~= "" then
													vl.Avatar.Apply(vl.Avatar.target)
												end
											else
												vl.Avatar.Restore()
											end
										end,
									}):Input({
										Title = "Username",
										Flag = "vl_avatar_target",
										Placeholder = "Username or user id",
										Callback = function(target)
											vl.Avatar.target = target or ""

											if vl.Avatar.enabled and vl.Avatar.target ~= "" then
												vl.Avatar.applied_id = nil
												vl.Avatar.Apply(vl.Avatar.target)
											end
										end,
									})

									do
										local vlAvatarTarget = tbl17.Flags.vl_avatar_target
										local avatar = vl.Avatar
										local v117 = v84[21]
										avatar.target = v90(vlAvatarTarget) == v117 and vlAvatarTarget or ""
									end
								end

								if vl.Avatar.enabled and vl.Avatar.target ~= "" then
									v89(function()
										vl.Avatar.SaveOriginal()
										vl.Avatar.Apply(vl.Avatar.target)
									end)
								end

								guiTab = v116.GuiTab

								fn36 = function(arg)
									local v117 = v109.clamp(v97(arg) or v84[108], 0, 1)
									local backgroundTransparency = 0.15 + 0.85 * v117

									for _, tab in v93(v116.Tabs) do
										for _, module in v93(tab.Modules) do
											local frame = module.Frame

											if frame and frame.Parent then
												frame.BackgroundTransparency = backgroundTransparency
											end
										end
									end

									if v116.Sidebar then
										v116.Sidebar.BackgroundTransparency = 0.35 + 0.65 * v117
									end
								end
							end

							do
								local tbl19 = {
									{
										Title = "Main color",
										Flag = "vl_theme_background",
										Key = "Background",
									},
									{
										Title = "Secondary",
										Flag = "vl_theme_surface",
										Key = "Surface",
									},
									{ Title = v84[179], Flag = "vl_theme_accent", Key = "Accent" },
									{ Title = "Stroke", Flag = "vl_theme_border", Key = v84[28] },
									{ Title = "Text", Flag = "vl_theme_text", Key = "Text" },
									{ Title = "Subtext", Flag = "vl_theme_subtext", Key = v84[126] },
								}

								local v116 = guiTab:Module({
									Title = "Appearance",
									Description = "Customize the menu colors",
									Side = "Right",
									Toggleable = false,
								})

								local tbl20 = {}

								for _, v117 in v93(tbl19) do
									tbl20[v117.Key] = v116:Colorpicker({
										Title = v117.Title,
										Flag = v117.Flag,
										Default = tbl17.Theme[v117.Key],
										Callback = function(arg)
											tbl17:SetTheme({ [v117.Key] = arg })
										end,
									})
								end

								local v117 = v116:Slider({
									Title = "Module transparency",
									Flag = "vl_theme_transparency",
									Min = 0,
									Max = v84[105],
									Decimals = 2,
									Default = 0,
									Callback = fn36,
								})

								v116:Button({
									Title = "Restore default theme",
									Callback = function()
										tbl17:ResetTheme()

										for _, v118 in v93(tbl19) do
											local v119 = tbl20[v118.Key]

											if v119 and v119.Set then
												v119:Set(tbl17.Theme[v118.Key], true)
											end
										end

										if v117 and v117.Set then
											v117:Set(v84[108])
										end
									end,
								})
							end
						end

						do
							do
								local v116 = guiTab:Module({
									Title = "Background",
									Description = "Image, GIF or video behind the menu",
									Side = "Left",
									Flag = "vl_bg",
									Callback = function(arg)
										if arg then
											vl.Background.Apply(tbl17.Flags.vl_bg_media)
										else
											vl.Background.Stop()
										end
									end,
								})

								v116:Dropdown({
									Title = "Media",
									Flag = "vl_bg_media",
									Options = vl.Background.List(),
									Default = "None",
									MaxVisible = v84[147],
									Callback = function(arg)
										vl.Background.Apply(arg)
									end,
								})

								v116:Slider({
									Title = "Opacity",
									Flag = "vl_bg_opacity",
									Min = v84[108],
									Max = 1,
									Decimals = 2,
									Default = 0.5,
									Callback = function(arg)
										vl.Background.SetOpacity(arg)
									end,
								})

								v116:Input({
									Title = "Media URL",
									Flag = "vl_bg_url",
									Placeholder = "Link to an image, gif or video",
								})

								v116:Input({
									Title = "Save as",
									Flag = "vl_bg_name",
									Placeholder = "Name for the file",
								})

								local function fn37(arg)
									local vlBgMedia = tbl17.Options.vl_bg_media

									if vlBgMedia and vlBgMedia.SetOptions then
										vlBgMedia:SetOptions(vl.Background.List())

										if arg then
											vlBgMedia:Set(arg)
										end
									end
								end

								v116:Button({
									Title = "Download and use",
									Callback = function()
										local vlBgUrl = tbl17.Flags.vl_bg_url
										if v90(vlBgUrl) ~= "string" or vlBgUrl == "" then
											tbl17:Notify({ Title = "Background", Text = "Paste a media URL first.", Type = "error" })
											return
										end
										tbl17:Notify({ Title = "Background", Text = "Converting, this can take a moment." })

										v112.spawn(function()
											local v117, v118 = vl.Background.Save(vlBgUrl, tbl17.Flags.vl_bg_name)
											if not v117 then
												tbl17:Notify({ Title = "Background", Text = v96(v118), Type = "error" })
												return
											end
											fn37(v118)
											tbl17:Notify({ Title = "Background", Text = "Ready: " .. v96(v118) })
										end)
									end,
								})

								v116:Button({
									Title = "Refresh list",
									Callback = function()
										fn37()
									end,
								})

								local flag18 = false

								v116:Button({
									Title = "Delete selected",
									Callback = function()
										local vlBgMedia = tbl17.Flags.vl_bg_media

										if v90(vlBgMedia) == "table" then
											vlBgMedia = vlBgMedia[1]
										end

										if v90(vlBgMedia) ~= "string" or vlBgMedia == "" or vlBgMedia == v84[144] then
											flag18 = false
											tbl17:Notify({ Title = "Background", Text = "Select a media file first.", Type = "error" })
											return
										end

										if not flag18 then
											flag18 = v84[158]
											tbl17:Notify({ Title = "Background", Text = "Click again to delete '" .. v96(vlBgMedia) .. "'", Type = "warning" })

											v112.delay(v84[178], function()
												flag18 = false
											end)

											return
										end

										flag18 = v84[62]
										local v117, v118 = vl.Background.Delete(vlBgMedia)
										if not v117 then
											tbl17:Notify({ Title = "Background", Text = v96(v118), Type = "error" })
											return
										end

										if tbl17.Flags.vl_bg_media == vlBgMedia then
											vl.Background.Stop()
										end

										fn37("None")
										tbl17:Notify({ Title = "Background", Text = "Deleted " .. v96(v118) })
									end,
								})
							end

							do
								if tbl17.Flags.vl_bg == true then
									v89(function()
										vl.Background.SetOpacity(tbl17.Flags.vl_bg_opacity)
										vl.Background.Apply(tbl17.Flags.vl_bg_media)
									end)
								end

								v114:Module({
									Title = "Unlock All",
									Description = "Every cosmetic, equippable",
									Side = v84[76],
									Flag = "vl_unlock",
									Callback = function(arg)
										if arg then
											vl.Unlock.Apply()
										else
											vl.Unlock.Restore()
										end
									end,
								}):Paragraph({
									Title = "Visual only",
									Text = "Equip anything from the game's inventory. Only you see it — ScoreFX now plays on your points in-match too.",
								})

								v114:Module({
									Title = "Custom Skybox",
									Description = "Change the world skybox",
									Side = "Right",
									Flag = "vl_skybox",
									Callback = function(enabled)
										vl.Skybox.Enabled = enabled

										if enabled then
											vl.Skybox.Apply(tbl17.Flags.vl_skybox_preset or "Space")
										else
											vl.Skybox.Restore()
										end
									end,
								}):Dropdown({
									Title = "Skybox Theme",
									Flag = "vl_skybox_preset",
									Options = vl.Skybox.Options,
									Default = "Space",
									Search = true,
									MaxVisible = v84[84],
									Callback = function(arg)
										local v116 = v84[74]

										if v90(arg) == v116 then
											arg = arg[1]
										end

										if vl.Skybox.Enabled then
											vl.Skybox.Apply(arg)
										end
									end,
								})

								if tbl17.Flags.vl_skybox == true then
									v89(function()
										vl.Skybox.Enabled = v84[158]
										vl.Skybox.Apply(tbl17.Flags.vl_skybox_preset or "Space")
									end)
								end

								do
									local v116 = v114:Module({
										Title = "Ball Prediction",
										Description = "Where the ball lands",
										Side = "Left",
										Flag = "vl_prediction",
									})

									v116:Toggle({
										Title = "Trajectory arc",
										Flag = "vl_pred_arc",
										Default = true,
									})

									v116:Toggle({ Title = "Landing marker", Flag = v84[65], Default = v84[158] })

									v116:Toggle({
										Title = "Time and distance",
										Flag = "vl_pred_readout",
										Default = true,
									})

									v116:Slider({
										Title = "Projection time",
										Flag = "vl_pred_horizon",
										Min = 0.5,
										Max = v84[178],
										Decimals = 1,
										Suffix = "s",
										Default = 3,
									})

									v116:Colorpicker({
										Title = "Lands in",
										Flag = "vl_pred_color_in",
										Default = v103.fromRGB(90, 220, 120),
									})

									v116:Colorpicker({
										Title = "Lands out",
										Flag = "vl_pred_color_out",
										Default = v103.fromRGB(235, 85, 85),
									})
								end
							end

							v113:Module({
								Title = "Auto Play",
								Description = "Moves and plays like a teammate",
								Side = v84[56],
								Flag = "vl_autoplay",
								Notify = true,
							}):Paragraph({
								Title = "What it does",
								Text = "Plays for you when closest: bump/set/dive/jump/spike + serve. Uses Rec gates, Set Aim, Line Shot and Cut when those are on.",
							})

							do
								local v116 = v113:Module({
									Title = "Auto Join Match",
									Description = "Walks to the play pad and joins",
									Side = v84[56],
									Flag = "vl_autojoin",
									Notify = true,
								})

								v116:Dropdown({
									Title = "Team side",
									Flag = "vl_autojoin_side",
									Options = { "Left", "Right" },
									Default = v84[56],
								})

								v116:Paragraph({
									Title = "Side",
									Text = "Left = purple, Right = blue. Walks to PLAY and picks an empty jersey on that side. Does not press RETURN when a match ends.",
								})
							end
						end

						do
							do
								local v116 = v113:Module({
									Title = "Auto Receive",
									Description = "Bump or set when in range",
									Side = v84[56],
									Flag = "vl_autorec",
									Notify = true,
								})

								v116:Slider({
									Title = "Receive range",
									Flag = "vl_rec_range",
									Min = 2,
									Max = 20,
									Decimals = 0,
									Suffix = " studs",
									Default = 14,
								})

								v116:Slider({
									Title = "Min ball speed",
									Flag = "vl_rec_min_speed",
									Min = 0,
									Max = v84[79],
									Decimals = 0,
									Default = 8,
								})

								v116:Dropdown({
									Title = "Move",
									Flag = "vl_rec_move",
									Options = { "Auto", "Bump", v84[23] },
									Default = "Auto",
								})

								v116:Toggle({
									Title = "Ignore dead balls",
									Flag = "vl_rec_ignore_dead",
									Default = true,
								})

								v116:Toggle({
									Title = "Only incoming balls",
									Flag = "vl_rec_incoming_only",
									Default = v84[158],
								})

								v116:Toggle({
									Title = "Jump set in air",
									Flag = "vl_rec_jump_set",
									Default = v84[158],
								})
							end

							do
								v113:Module({
									Title = "Set Aim Assist",
									Description = "Aims your set at a target",
									Side = "Left",
									Flag = "vl_set_aim",
									Notify = true,
								}):Dropdown({
									Title = "Aim at",
									Flag = "vl_set_aim_mode",
									Options = { "Antenna", "Teammate", "Left", "Right" },
									Default = "Teammate",
								})

								do
									local v116 = v113:Module({
										Title = "Auto Spike",
										Description = "Hits the ball while you are airborne",
										Side = v84[76],
										Flag = "vl_autospike",
										Notify = v84[158],
									})

									v116:Slider({
										Title = "Spike range",
										Flag = "vl_spike_range",
										Min = 2,
										Max = 20,
										Decimals = v84[108],
										Suffix = " studs",
										Default = 14,
									})

									v116:Toggle({
										Title = "Wait for the power window",
										Flag = "vl_spike_timing",
										Default = true,
									})
								end
							end

							v113:Module({
								Title = "Auto Line Shot",
								Description = "Sideline or baseline on manual and auto spikes",
								Side = "Right",
								Flag = "vl_line_shot",
								Notify = true,
							})

							v113:Module({
								Title = "Auto Perfect Corner",
								Description = "Enemy back-corner spike",
								Side = "Right",
								Flag = "vl_perfect_corner",
								Notify = true,
							})

							v113:Module({
								Title = "Desync Spike",
								Description = "On jump, spike with native shift lock if the ball is on our side",
								Side = "Right",
								Flag = "vl_desync_spike",
								Notify = v84[158],
							}):Slider({
								Title = "Frame delay",
								Flag = "vl_desync_frames",
								Min = v84[108],
								Max = 2,
								Decimals = 0,
								Suffix = " frames",
								Default = 1,
							})

							v113:Module({
								Title = "Akari TSH",
								Description = "Auto spike in the Akari M3/M5 dash window",
								Side = v84[76],
								Flag = "vl_akari_tsh",
								Notify = true,
							})

							v113:Module({
								Title = "Auto Cut",
								Description = "Near the net, look at the sideline + W tilt",
								Side = "Right",
								Flag = "vl_auto_cut",
								Notify = v84[158],
							})

							v113:Module({
								Title = "Shift Lock on Jump",
								Description = "Game shift lock while airborne",
								Side = v84[76],
								Flag = "vl_shiftlock",
								Notify = true,
							})

							do
								local v116 = v113:Module({
									Title = "Auto Dive",
									Description = "Digs in-court balls only; ignores outs",
									Side = "Left",
									Flag = "vl_autodive",
									Notify = true,
								})

								v116:Slider({
									Title = "Dive range",
									Flag = "vl_dive_range",
									Min = 10,
									Max = 30,
									Decimals = 0,
									Suffix = " studs",
									Default = 30,
								})

								v116:Slider({
									Title = "Arm within",
									Flag = "vl_dive_window",
									Min = 0.4,
									Max = v84[195],
									Decimals = 1,
									Suffix = "s",
									Default = 1.2,
								})

								v116:Toggle({
									Title = "Turn toward the landing spot",
									Flag = "vl_dive_face",
									Default = true,
								})
							end
						end

						do
							local v116 = v113:Module({
								Title = "Hitbox Expander",
								Description = "Scales the move hitbox",
								Side = "Right",
								Flag = "vl_expander",
								Notify = true,
							})

							v116:Slider({
								Title = "Multiplier",
								Flag = "vl_expand_amount",
								Min = 1,
								Max = 4,
								Decimals = 2,
								Suffix = "x",
								Default = 1.5,
							})

							v116:Paragraph({
								Title = "Note",
								Text = "Past about 4.4x the box is already wider than the 20 stud reach cap, so bigger values do nothing.",
							})
						end

						do
							local v116 = v113:Module({
								Title = "Power Serve",
								Description = "Hits your set serve power, then lets you spike",
								Side = v84[56],
								Flag = "vl_serve",
								Notify = true,
							})

							v116:Slider({
								Title = "Serve at power",
								Flag = "vl_serve_power",
								Min = 0.5,
								Max = 1,
								Decimals = 2,
								Default = 1,
							})

							v116:Toggle({ Title = "Manual spike", Flag = "vl_serve_manual", Default = v84[62] })

							v116:Toggle({
								Title = "Aim at the back corner",
								Flag = "vl_serve_aim",
								Default = v84[158],
							})

							v116:Dropdown({
								Title = "Corner",
								Flag = "vl_serve_corner",
								Options = { "Right", v84[56] },
								Default = "Right",
							})

							v116:Paragraph({
								Title = "Note",
								Text = "Raises the bar and tosses at your power setting. Manual spike ON = you jump and spike. Off = script finishes jump + spike. Keybind toggles Power Serve; bell notifies on toggle.",
							})
						end

						do
							local v116 = v115:Module({
								Title = "Auto Spin Styles",
								Description = "Spins styles until one of your picks drops",
								Side = v84[56],
								Toggleable = false,
							})

							v116:Toggle({
								Title = "Auto Spin",
								Flag = "vl_autospin_styles",
								Default = false,
								Callback = function(arg)
									if arg then
										vl.AutoSpin.Start()
									else
										vl.AutoSpin.Running = false
									end
								end,
							})

							for _, v117 in v93(vl.AutoSpin.RarityOrder) do
								local tbl19 = vl.AutoSpin.OptionsByRarity[v117] or { "None" }

								v116:Dropdown({
									Title = v117,
									Flag = vl.AutoSpin.FlagFor(v117),
									Options = tbl19,
									Default = "None",
									MaxVisible = v84[84],
								})
							end

							v116:Paragraph({
								Title = "Note",
								Text = "Pick styles per rarity (None = ignore that slot). Waits for the game spin cooldown between rolls. Stops when any picked style drops.",
							})
						end

						fn36(tbl17.Flags.vl_theme_transparency)
						v89(vl.Start)

						if not vl.Render.Available then
							v89(function()
								tbl17:Notify({
									Title = "Zenthra",
									Text = "This executor has no Drawing library, visuals are unavailable.",
									Type = "error",
								})
							end)
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

fn14(100, v4[fn2("n\218\192\176\129w\151\190\193\1756", 21845944094585)], v4[fn2("-\209 \r\161\128\30\181)\162\169\194\240\156\19Ȣs\0212\188p\207(\188\240\176\157\230\2\142\167\11\226\159&\233", 10693721171687)] .. v33(v64), Color3[v4[fn2("\211\207k", 18772801209419)]](1, 0, 0), v4[fn2(" `\4\162\157", 18561267614598)])
