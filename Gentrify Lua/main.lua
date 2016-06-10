--[[graphics]]--

function love.load()

	math.randomseed(os.time());
 
-- fonts
	love.graphics.setNewFont("resources/fonts/pixelmix.ttf", 18)
 
-- graphics
 
	bgimage = love.graphics.newImage("resources/images/gentrify_bg_1024x768_lg.png")
	overlay = love.graphics.newImage("resources/images/gentrify_bg_semitransoverlay.png")
	greybgimage = love.graphics.newImage("resources/images/gentrify_greybg_1024x768.png")
	blackbgimage = love.graphics.newImage("resources/images/gentrify_blackbg_1024x768.png")
	grey1024x576 = love.graphics.newImage("resources/images/grey1024x576.png")
	staticbuttons = {{name = "turnbutton", img1 = love.graphics.newImage("resources/images/nextturn2_2.png"), img2 = love.graphics.newImage("resources/images/nextturn2_1.png"), img3 = love.graphics.newImage("resources/images/nextturn2_0.png"), x = 872, y = 670, func = doNextTurn}}
	
	tenantbuttons = {{name = "Persian", img1 = love.graphics.newImage("resources/images/tenants01_greenbg_1.png")},
				     {name = "Siamese", img1 = love.graphics.newImage("resources/images/tenants01_greenbg_2.png")},
				     {name = "Maine Coone", img1 = love.graphics.newImage("resources/images/tenants01_greenbg_3.png")},
					 {name = "Maine Coone", img1 = love.graphics.newImage("resources/images/tenants01_greenbg_4.png")}}
	
	gridbuttons = {repairbutton = {img1 = love.graphics.newImage("resources/images/repairbuttonsm_2.png"), img2 = love.graphics.newImage("resources/images/repairbuttonsm_1.png"), img3 = love.graphics.newImage("resources/images/repairbuttonsm_0.png")},
				   exterminatebutton = {img1 = love.graphics.newImage("resources/images/exterminatebuttonsm_2.png"), img2 = love.graphics.newImage("resources/images/exterminatebuttonsm_1.png"), img3 = love.graphics.newImage("resources/images/exterminatebuttonsm_0.png")},
				   newtenantbutton = {img1 = love.graphics.newImage("resources/images/catbuttonsm_2.png"), img2 = love.graphics.newImage("resources/images/catbuttonsm_1.png"), img3 = love.graphics.newImage("resources/images/catbuttonsm_0.png")},
				   evictbutton = {img1 = love.graphics.newImage("resources/images/evictbuttonsm_2.png"), img2 = love.graphics.newImage("resources/images/evictbuttonsm_1.png"), img3 = love.graphics.newImage("resources/images/evictbuttonsm_0.png")},
				   talkbutton = {img1 = love.graphics.newImage("resources/images/talkbuttonsm_2.png"), img2 = love.graphics.newImage("resources/images/talkbuttonsm_1.png"), img3 = love.graphics.newImage("resources/images/talkbuttonsm_0.png")},
				   setrent = {img1 = love.graphics.newImage("resources/images/setrentbuttonsm_2.png"), img2 = love.graphics.newImage("resources/images/setrentbuttonsm_1.png"), img3 = love.graphics.newImage("resources/images/setrentbuttonsm_0.png")},
				   complaintbutton = {img1 = love.graphics.newImage("resources/images/complaintbuttonsm_2.png"), img2 = love.graphics.newImage("resources/images/complaintbuttonsm_1.png"), img3 = love.graphics.newImage("resources/images/complaintbuttonsm_0.png")},
				   upgradebutton = {img1 = love.graphics.newImage("resources/images/upgradebuttonsm_2.png"), img2 = love.graphics.newImage("resources/images/upgradebuttonsm_1.png"), img3 = love.graphics.newImage("resources/images/upgradebuttonsm_0.png")},
				   actionslot = {img1 = love.graphics.newImage("resources/images/actionbuttonblank.png")}}
	
	optionbuttons = {{name = "yesbuttonwide", img1 = love.graphics.newImage("resources/images/yesbuttonwide1_2.png"), img2 = love.graphics.newImage("resources/images/yesbuttonwide1_1.png"), img3 = love.graphics.newImage("resources/images/yesbuttonwide1_0.png")},
					 {name = "nobuttonwide", img1 = love.graphics.newImage("resources/images/nobuttonwide1_2.png"), img2 = love.graphics.newImage("resources/images/nobuttonwide1_1.png"), img3 = love.graphics.newImage("resources/images/nobuttonwide1_0.png")},
					 {name = "blankbuttonwide", img1 = love.graphics.newImage("resources/images/blankbuttonwide_2.png"), img2 = love.graphics.newImage("resources/images/blankbuttonwide_1.png"), img3 = love.graphics.newImage("resources/images/blankbuttonwide_0.png")}}
	
	arrowbuttons = {{name = "arrowup", img1 = love.graphics.newImage("resources/images/arrows_2.png"), img2 = love.graphics.newImage("resources/images/arrows_1.png"), img3 = love.graphics.newImage("resources/images/arrows_0.png")},
				    {name = "arrowdown", img1 = love.graphics.newImage("resources/images/arrows_5.png"), img2 = love.graphics.newImage("resources/images/arrows_4.png"), img3 = love.graphics.newImage("resources/images/arrows_3.png")}}
	
	windowbuttons = {{name = "empty", img1 = love.graphics.newImage("resources/images/aptwindows_0.png"), img2 = love.graphics.newImage("resources/images/aptwindows_1.png"), img3 = love.graphics.newImage("resources/images/aptwindows_2.png")},
					 {name = "full", img1 = love.graphics.newImage("resources/images/aptwindows_3.png"), img2 = love.graphics.newImage("resources/images/aptwindows_4.png"), img3 = love.graphics.newImage("resources/images/aptwindows_5.png")}}
	
	doorbuttons = {{name = "aptdoor1", img1 = love.graphics.newImage("resources/images/aptdoor_0.png"), img2 = love.graphics.newImage("resources/images/aptdoor_1.png"), img3 = love.graphics.newImage("resources/images/aptdoor_2.png"), x = 480, y = 480, func = AptDoor}}
	
	numberbuttons = {{img1 = love.graphics.newImage("resources/images/numberbuttons_02.png"), img2 = love.graphics.newImage("resources/images/numberbuttons_01.png"), img3 = love.graphics.newImage("resources/images/numberbuttons_00.png")},
					 {img1 = love.graphics.newImage("resources/images/numberbuttons_05.png"), img2 = love.graphics.newImage("resources/images/numberbuttons_04.png"), img3 = love.graphics.newImage("resources/images/numberbuttons_03.png")},
					 {img1 = love.graphics.newImage("resources/images/numberbuttons_08.png"), img2 = love.graphics.newImage("resources/images/numberbuttons_07.png"), img3 = love.graphics.newImage("resources/images/numberbuttons_06.png")},
					 {img1 = love.graphics.newImage("resources/images/numberbuttons_11.png"), img2 = love.graphics.newImage("resources/images/numberbuttons_10.png"), img3 = love.graphics.newImage("resources/images/numberbuttons_09.png")},
					 {img1 = love.graphics.newImage("resources/images/numberbuttons_14.png"), img2 = love.graphics.newImage("resources/images/numberbuttons_13.png"), img3 = love.graphics.newImage("resources/images/numberbuttons_12.png")}}
	
	gridproperties = {{name = "arrival", rows = 1, cols = 5, xpos = 64, ypos = 600, width = 48, height = 48, padding = 32},
					  {name = "actions",rows = 1, cols = 3, xpos = 64, ypos = 686, width = 48, height = 48, padding = 32},
					  {name = "tenant", rows = 0, cols = 1, xpos = 64, ypos = 160, width = 96, height = 96, padding = 32},
					  {name = "yesno", rows = 1, cols = 2, xpos = 192, ypos = 480, width = 96, height = 48, padding = 32},
					  {name = "windows", rows = 2, cols = 4, xpos = 352, ypos = 192, width = 32, height = 64, padding = 64},
					  {name = "apt", rows = 3, cols = 1, xpos = 928, ypos = 160, width = 48, height = 48, padding = 32},
					  {name = "arrows", rows = 2, cols = 1, xpos = 512, ypos = 180, width = 36, height = 36, padding = 12},
					  {name = "numbers", rows = 5, cols = 1, xpos = 148, ypos = 152, width = 32, height = 32, padding = 40},
					  {name = "events", rows = 3, cols = 4, xpos = 352, ypos = 192, width = 32, height = 64, padding = 64}}
					  
	buttonIdTable = {}
	buttonid = 0
	buttonid2 = 0
	
-- turns and actions
	turn = 0
	turnCount = 0
	endTurn = 0
	actionsTotal = 2
	actionsCurrent = {}
	currentState = 0
	globalState = 0
	actionConflict = 0
	conflictid = 0
	conflictType = 0

--[[tenants and apartments]]--
--status 1 = moved in, 1.1 = talking, 2 = owes money, 3 = moved out
	tenantNew = {{name = "Nooks", income = 100, breed = "Abyssinian", sizepref = 1, happiness = 100, noise = 20, tolerance = 10, buffer = 0, status = 0, complaint = 0, owes = 0, talked = 0},
				 {name = "Ryoko", income = 220, breed = "Maine Coon", sizepref = 1, happiness = 100, noise = 80, tolerance = 10, buffer = 0, status = 0, complaint = 0, owes = 0, talked = 0},
				 {name = "Mr. Bubbles", income = 260, breed = "Abyssinian", sizepref = 1, happiness = 100, noise = 10, tolerance = 10, buffer = 0, status = 0, complaint = 0, owes = 0, talked = 0},
				 {name = "Beans", income = 270, breed = "Persian", sizepref = 1, happiness = 100, noise = 30, tolerance = 10, buffer = 0, status = 0, complaint = 0, owes = 0, talked = 0},
				 {name = "Puddle", income = 280, breed = "Siamese", sizepref = 1, happiness = 100, noise = 40, tolerance = 10, buffer = 0, status = 0, complaint = 0, owes = 0, talked = 0},
				 {name = "Ginger", income = 300, breed = "Abyssinian", sizepref = 1, happiness = 100, noise = 70, tolerance = 20, buffer = 0, status = 0, complaint = 0, owes = 0, talked = 0},
				 {name = "Sully", income = 320, breed = "Maine Coon", sizepref = 1, happiness = 100, noise = 50, tolerance = 30, buffer = 0, status = 0, complaint = 0, owes = 0, talked = 0},
				 {name = "Oscar", income = 330, breed = "Abyssinian", sizepref = 1, happiness = 100, noise = 10, tolerance = 30, buffer = 0, status = 0, complaint = 0, owes = 0, talked = 0},
				 {name = "Mayo", income = 330, breed = "Maine Coon", sizepref = 1, happiness = 100, noise = 40, tolerance = 25, buffer = 0, status = 0, complaint = 0, owes = 0, talked = 0},
				 {name = "Mx. Muffin", income = 400, breed = "Siamese", sizepref = 1, happiness = 100, noise = 30, tolerance = 35, buffer = 0, status = 0, complaint = 0, owes = 0, talked = 0},
				 {name = "Minuet", income = 400, breed = "Persian", sizepref = 1, happiness = 100, noise = 30, tolerance = 35, buffer = 0, status = 0, complaint = 0, owes = 0, talked = 0},
				 {name = "Electra", income = 450, breed = "Persian", sizepref = 1, happiness = 100, noise = 90, tolerance = 35, buffer = 0, status = 0, complaint = 0, owes = 0, talked = 0},
				 {name = "Jacket", income = 480, breed = "Siamese", sizepref = 1, happiness = 100, noise = 40, tolerance = 30, buffer = 0, status = 0, complaint = 0, owes = 0, talked = 0},
				 {name = "Kiwi", income = 500, breed = "Abyssinian", sizepref = 1, happiness = 100, noise = 30, tolerance = 30, buffer = 0, status = 0, complaint = 0, owes = 0, talked = 0},
				 {name = "Perogi", income = 510, breed = "Maine Coon", sizepref = 2, happiness = 100, noise = 50, tolerance = 50, buffer = 0, status = 0, complaint = 0, owes = 0, talked = 0},
				 {name = "Fubu", income = 600, breed = "Maine Coon", sizepref = 2, happiness = 100, noise = 30, tolerance = 45, buffer = 0, status = 0, complaint = 0, owes = 0, talked = 0},
				 {name = "Mimosa", income = 620, breed = "Persian", sizepref = 2, happiness = 100, noise = 20, tolerance = 50, buffer = 0, status = 0, complaint = 0, owes = 0, talked = 0},
				 {name = "Horatio", income = 800, breed = "Persian", sizepref = 2, happiness = 100, noise = 10, tolerance = 60, buffer = 0, status = 0, complaint = 0, owes = 0, talked = 0},
				 {name = "Figaro", income = 860, breed = "Persian", sizepref = 2, happiness = 100, noise = 30, tolerance = 50, buffer = 0, status = 0, complaint = 0, owes = 0, talked = 0},
				 {name = "Dr. Finnegan", income = 900, breed = "Persian", sizepref = 2, happiness = 100, noise = 40, tolerance = 60, buffer = 0, status = 0, complaint = 0, owes = 0, talked = 0},
				 {name = "Kimchi", income = 1020, breed = "Persian", sizepref = 2, happiness = 100, noise = 70, tolerance = 50, buffer = 0, status = 0, complaint = 0, owes = 0, talked = 0},
				 {name = "Baux", income = 1200, breed = "Siamese", sizepref = 2, happiness = 100, noise = 60, tolerance = 45, buffer = 0, status = 0, complaint = 0, owes = 0, talked = 0},
				 {name = "January", income = 1350, breed = "Persian", sizepref = 2, happiness = 100, noise = 30, tolerance = 55, buffer = 0, status = 0, complaint = 0, owes = 0, talked = 0},
				 {name = "Miso", income = 1500, breed = "Persian", sizepref = 2, happiness = 100, noise = 60, tolerance = 55, buffer = 0, status = 0, complaint = 0, owes = 0, talked = 0}}
				 
	tenantCurrent = {}
	
	apartmentInfo = {{apt = 7, size = 1, full = 0, rent = 200, expense = 180, buffer = 0, event = 0, x = 1, y = 1}, 
					 {apt = 8, size = 1, full = 0, rent = 200, expense = 180, buffer = 0, event = 0, x = 2, y = 1},
					 {apt = 9, size = 1, full = 0, rent = 200, expense = 180, buffer = 0, event = 0, x = 3, y = 1},
					 {apt = 10, size = 1, full = 0, rent = 200, expense = 180, buffer = 0, event = 0, x = 4, y = 1},
					 {apt = 3, size = 1, full = 0, rent = 200, expense = 180, buffer = 0, event = 0, x = 1, y = 2}, 
					 {apt = 4, size = 1, full = 0, rent = 200, expense = 180, buffer = 0, event = 0, x = 2, y = 2}, 
					 {apt = 5, size = 1, full = 0, rent = 200, expense = 180, buffer = 0, event = 0, x = 3, y = 2}, 
					 {apt = 6, size = 1, full = 0, rent = 200, expense = 180, buffer = 0, event = 0, x = 4, y = 2}, 
					 {apt = 1, size = 2, full = 0, rent = 400, expense = 350, buffer = 0, event = 0, x = 1, y = 3}, 
					 {apt = 2, size = 2, full = 0, rent = 400, expense = 350, buffer = 0, event = 0, x = 4, y = 3}}
					 
					
	tenantMax = 0
	tenantTotal = 0
	tenantChance = 0
	tenantArrives = 0
	sCount = 0
	tenantN = 0
	aI = {}
	evictTable = {}
	--status 1 = threat, status 2 = filed, status 3 = resolved
	complaintTable = {}
	cMult = 1;
	cid = 0;
	
--income
	rentTotal = 0
	moneyTotal = 10000
	moneyTurn = 0
	
--maintenance events
	eventMainToggle = 0
	eventMainTable = {{ename = "toilet", cost = 150, etime = 0, recur = 0, btype = "repair"},
					  {ename = "sink", cost = 150, etime = 0, recur = 0, btype = "repair"},
					  {ename = "shower", cost = 200, etime = 0, recur = 0, btype = "repair"},
					  {ename = "window", cost = 300, etime = 0, recur = 0, btype = "repair"},
					  {ename = "electrical wiring", cost = 500, etime = 0, recur = 0, btype = "repair"},
					  {ename = "roaches", cost = 300, etime = 0, recur = 0, btype = "exterminate"},
					  {ename = "bedbugs", cost = 500, etime = 0, recur = 0, btype = "exterminate"}}
					  
	eventToDoTable = {}
	eventMainTotal = 0
	eventN = 0

--apartment expenses
	expenseOther = 0
	expenseTotal = 0
	
--upgrades
	upgrades = {{uname = "garden", cost = 12000, rentbump = 10, used = 0},
				{uname = "entrance", cost = 15000, rentbump = 20, used = 0},
				{uname = "windows", cost = 20000, rentbump = 40, used = 0},
				{uname = "masonry", cost = 100000, rentbump = 100, used = 0},
				{uname = "solar panels", cost = 200000, rentbump = 200, used = 0}}
	upgradesAdded = {}
	upgradesTotal = 0
	upgradesActive = 0
	
--table to print
	t= {}
	
--text
	qI = 0
	qA = 0
	qCount = 0
	tCount = 0
	tenantArrivesQ = {{"So tell me, why did you move?"}, {"Where do you work?"}}
	tenantArrivesA = {{"I lost my last job, and my new job doesn't pay as well, so I'm looking for something more affordable.",
							"I just moved here for university and I need a cheap place to stay.",
							"My last apartment had a terrible mould problem. I tried to get rid of it but it got to be too much so I moved out when I got a second job.",
							"My old landlord neglected the place and eventually the ceiling caved in. I'm just lucky it didn't land on my head!",
							"I loved my old apartment but they kept jacking up the rent and after a while I just couldn't pay. So here I am.",
							"Why am I moving? Why are YOU moving!? I mean...ummm...nevermind bad joke.",
							"Ugh what a boring question, no offence. I just hate how everyone is soooo boring!",
							"Personal reasons. I can't go into details.",
							"I just switched jobs and I need somewhere that's closer to work. Commuting is the worst.",
							"I have kittens on the way and I'm looking for a place to settle down. Somewhere warm and quiet.",
							"Too many immigrants. They were taking over the neighbourhood! It just wasn't safe anymore.",
							"The neighbours in my last apartment were exceptionally noisy. They gave me headaches and the police were no help. Eventually I gave up."},
						   {"My new job's pretty much the same as the old one. I work at a litter plant, it's hard work and the dust hurts my lungs but it pays the bills so...yeah.",
							"I don't have a job yet, but I'm hoping to get a part time gig soon. Just hope it doesn't affect my studies...",
							"I work housekeeping at the Hairball Hotel and the hospital downtown.",
							"Where DON'T I work. Seriously though I have so many jobs I'm having trouble keeping track. I bus tables, move furniture, run deliveries, mow lawns. It's exhausting.",
							"I'm a graphic designer, but I was just laid off, so I'm doing small contracts for now. Don't worry though, I'm very responsible and always pay my rent on time.",
							"I, uh, I'm a cook. I work at a restaurant nearby. It's an ok restaurant, I guess, just don't eat the fish.",
							"I'm a freelance journalist and fashion blogger. Have you read my blog? It's called The Catwalk.",
							"I'd...rather not say. Trust me, it's for your own protection.",
							"I'm an insurance broker. Sounds boring, I know, but at least the pay's decent, and it's a regular 9-5.",
							"I'm a teacher at Treebranch Academy. I also volunteer at a school for kittens with disabilities.",
							"I'm a dentist. People always hate dentists, but that's because they don't know any better.",
							"I'm a retired accountant. I'm living off my pension. Enjoying the fruits of my labour you might say."}}
	tenantEvictDialogue = {"Please don't! I can't afford to move again! I'd have to take time off work, and if I miss one more day my boss will fire me! And then how will I afford rent, or food?!",
							"Oh no not again... Why do you hate me?! Why is life so painful. Why does everything I love get taken away... What's the point.",
							"This is completely unreasonable! You'll be hearing from me again, mark my words!"}
	tenantTalkQuestions = {{"Do you like it here?", 0}, {"Have you talked to the neighbours recently?", 0}}
	tenantTalkAnswers = {{"Yeah it's great! Better than my last place. There's heat and the shower doesn't smell funny.",
							"It's ok I guess. I wish you would fix the windows though. It gets so stuffy sometimes.",
							"I don't really feel safe here. There are all these cats just lounging around. Looks like they're fans of the catnip, if you know what I mean.",
							"I don't know, do you?",
							"It's a dump, but with rent going up all over the city what choice do I have?",
							"I suppose. I wish there were more shopping options nearby. Those old convenience stores are so filthy, and their food is garbage. I don't know WHY anyone shops there.",
							"I hate that I have to go halfway across the city just to get a decent coffee. You're doing a wonderful job maintaining the place though.",
							"It's satisfactory, if you ignore the riffraff on the streets. Lazy punks, why don't they grow up and get a job?"},
						   {"Do cats actually talk to their neighbours? Like, for real?",
							"Talk, no. Listen to them banging around their apartment all day, yes.",
							"Yeah I spoke to what's-their-name the other day. They seemed nice.",
							"I...uh....noooo?",
							"Yeah we shoot the breeze every now and then.",
							"Yes but we don't really get along.",
							"Hell no those cats are all kinds of crazy!",
							"No I tend to keep to myself."}}
	text = ""
	text2 = ""				
advanceTurn();
end


--print nested table
function deepPrint(t)
	if type(t) == table then
		for k, v in pairs (t) do
			print(k);
			deepPrint(v);
		end
	else
		print(t);
	end
end

-- search table within table

function searchTable(t, x)
	if type(t) == table then
		for i = 1, #t do
			for k, v in pairs(t[i]) do
				if v == x then
					return i
				end
			end
		end
	end
end

--NEW TENANTS

--new tenant chance
function newTenantChance()
	if turn == 1 then
		tenantChance = 1;
		tenantN = 3;
		print("New tenant");
		matchCheck();
	elseif turn == 2 then
		tenantChance = 1;
		tenantN = 4;
		print("New tenant");
		matchCheck();		
	else
		local n = tenantTotal + .01
		local y = n/(n^2+30*n)^(1/2)
		local x = math.random()
		local z = math.random()
		if tenantTotal < tenantMax then
			if z < 0.1 then
				tenantN = 5;
			elseif z >= 0.1 and z < 0.3 then
				tenantN = 4;
			elseif z >= 0.3 and z < 0.6 then
				tenantN = 3;
			else 
				tenantN = 2;
			end
			if x > y then
				tenantChance = 1;
				print("New tenant");
				matchCheck();
			else
				tenantChance = 0;
				print("No tenant");
			end
		end
	end
end

--check if compatible, print tenant stats 
function matchCheck()
	local tTable = {};
	local n = 0;
	if #upgradesAdded == 0 then
		n = 16
	else
		n = #tenantNew
	end
	for i = 1, n do
		local aTable = {};
		for j = 1, #apartmentInfo do
			if tenantNew[i]["sizepref"] == apartmentInfo[j]["size"] and tenantNew[i]["status"] == 0 and apartmentInfo[j]["full"] == 0 and apartmentInfo[j]["buffer"] == 0 then
				table.insert(aTable, apartmentInfo[j]);
			end						
		end
		if #aTable > 0 and tenantNew[i]["status"] == 0 then
			tenantNew[i]["status"] = 0.5;
			table.insert(tTable, {tenant = tenantNew[i]})
		end	
	end
	for g = 1, tenantN do
		if #tTable > 0 then 
			local x = math.random(#tTable)
			table.insert(aI, {tenant = tTable[x]["tenant"]});
			tTable[x]["tenant"]["status"] = 0;
			table.remove(tTable, x);
			if aI[#aI] ~= nil then
				print("New tenant: " .. aI[#aI]["tenant"]["name"]);
				tenantArrives = 1;
			end
		end
	end
	for i = 1, #tTable do
		if #tTable > 0 then
			tTable[i]["tenant"]["status"] = 0;
		end
	end
end


--accept tenant
function tenantAccept(t, i)
	t[i]["apt"]["full"] = 1;
	t[i]["tenant"]["status"] = 1;
	table.insert(tenantCurrent, {tenant = t[i]["tenant"], apt = t[i]["apt"], turn = turn});
	print("yes");
	print(tenantCurrent[#tenantCurrent]["tenant"]["name"] .. " moved in to apartment " .. tenantCurrent[#tenantCurrent]["apt"]["apt"]);
	table.remove(t, i);
	endActions(actionsCurrent[#actionsCurrent]);
end


-- CURRENT TENANTS

-- income change

function incomeChange()
	if tenantTotal > 0 then
		for i = 1, #tenantCurrent do
			local n = (tenantCurrent[i]["tenant"]["income"])*0.01
			local y = n/(n^2+10*n)^(1/2)
			local x = math.random()
			if x > y and tenantCurrent[i]["tenant"]["buffer"] == 0 then
				print("Income change");
				tenantCurrent[i]["tenant"]["buffer"] = 10;
				if x > 0.6 then
					tenantCurrent[i]["tenant"]["income"] = math.floor((tenantCurrent[i]["tenant"]["income"] - math.random(tenantCurrent[i]["tenant"]["income"]/30, tenantCurrent[i]["tenant"]["income"]/5))/10)*10;
				elseif x <= 0.6 and x > 0.05 then
					tenantCurrent[i]["tenant"]["income"] = math.floor((tenantCurrent[i]["tenant"]["income"] + math.random(tenantCurrent[i]["tenant"]["income"]/30, tenantCurrent[i]["tenant"]["income"]/5))/10)*10;
				else
					tenantCurrent[i]["tenant"]["income"] = math.floor((tenantCurrent[i]["tenant"]["income"] - math.random(tenantCurrent[i]["tenant"]["income"]/10, tenantCurrent[i]["tenant"]["income"]))/10)*10;
				end
				print("New Income for " .. tenantCurrent[i]["tenant"]["name"] .. ": " .. tenantCurrent[i]["tenant"]["income"]);
			end
		end
	end
end

-- check if tenants can be evicted, add to eviction table

function tenantEvictCheck()
	if #tenantCurrent > 0 then
		for i = 1, #tenantCurrent do
			if tenantCurrent[i]["tenant"]["owes"] > 0 and tenantCurrent[i]["tenant"]["status"] ~= 2 then
				table.insert(evictTable, tenantCurrent[i]);
				evictTable[#evictTable]["tenant"]["status"] = 2;
			end
		end
	end
end

-- select tenants to talk to
function tenantTalkSelect(t, i)
	if t[i]["tenant"]["status"] ~= 1.1 then
		table.insert(actionsCurrent, {tenant = t[i]["tenant"], apt = t[i]["apt"]});
		t[i]["tenant"]["status"] = 1.1;
		actionsCurrent[#actionsCurrent]["atype"] = "talk";
		qA = math.random(1, #tenantTalkAnswers[1]);
		print("Selected " .. actionsCurrent[#actionsCurrent]["tenant"]["name"]);
		currentState = 0;
		globalState = 1;
	end
end



-- happiness event modifier
function happinessEvents()
	if tenantTotal > 0 then
		for i = 1, #eventToDoTable do
			if eventToDoTable[i]["event"] ~= nil then
				local n = turn - eventToDoTable[i]["event"]["etime"]
				eventToDoTable[i]["tenant"]["happiness"] = eventToDoTable[i]["tenant"]["happiness"] - math.random(5, 10) * n;
			end
		end
	end
end

-- happiness breed modifier
function happinessBreed()
local acount = 0
local scount = 0
local mcount = 0
local pcount = 0
	if tenantTotal > 0 then
		for i = 1, #tenantCurrent do
			local v = tenantCurrent[i]["tenant"]["breed"]
			if v == "Abyssinian" then
				acount = acount + 1
			elseif v == "Siamese" then
				scount = scount + 1
			elseif v == "Maine Coon" then
				mcount = mcount + 1
			elseif v == "Persian" then
				pcount = pcount + 1
			end
		end
		for i = 1, #tenantCurrent do
			local v = tenantCurrent[i]["tenant"]["breed"]
			if v == "Persian" then
				tenantCurrent[i]["tenant"]["happiness"] = tenantCurrent[i]["tenant"]["happiness"] - acount*4 - scount*2 - mcount*2 + pcount*4
			end
		end
	end
end

-- happiness improves over time
function happinessImprove()
	if tenantTotal > 0 then
		for i = 1, #tenantCurrent do
			if tenantCurrent[i]["apt"]["event"] == 0 then
				if tenantCurrent[i]["tenant"]["happiness"] < 100 then
					tenantCurrent[i]["tenant"]["happiness"] = tenantCurrent[i]["tenant"]["happiness"] + 10
				else
					tenantCurrent[i]["tenant"]["happiness"] = 100
				end
			end
		end
	end
end


-- check if happiness higher than tolerance
-- 1 = threatening to file complaint, 2 = threatening to move out, 3 = filed complaint, 4 = moved out
function happinessCheck()
local t = {}
	if tenantTotal > 0 then
		for i = 1, #complaintTable do
			if complaintTable[i]["tenant"]["happiness"] < complaintTable[i]["tenant"]["tolerance"] then
				if complaintTable[i]["tenant"]["complaint"] == 1 and complaintTable[i]["apt"]["event"] == 1 then
					complaintTable[i]["tenant"]["complaint"] = 3;
					complaintTable[i]["complaint"]["status"] = 2;
					complaintTable[i]["complaint"]["seen"] = 0;
					print(tenantCurrent[i]["tenant"]["name"] .. " filed a complaint");
				elseif complaintTable[i]["tenant"]["complaint"] == 2 then
					complaintTable[i]["tenant"]["complaint"] = 4;
					complaintTable[i]["complaint"]["status"] = 2;
					complaintTable[i]["complaint"]["seen"] = 0;
					print(complaintTable[i]["tenant"]["name"] .. " moving out");
				end
			end
		end
		for i = 1, #tenantCurrent do
			local y = tenantCurrent[i]["tenant"]["tolerance"];
			local x = tenantCurrent[i]["tenant"]["happiness"];
			local n = tenantCurrent[i]["tenant"]["income"]*0.01;
			local z = (n/(n^2+10*n)^(1/2))-0.2
			local a = math.random()
			local b = math.random()
			local c = math.random(1,3)
			local d = 0
			for j = 1, #eventToDoTable do
				if eventToDoTable[j]["tenant"]["name"] == tenantCurrent[i]["tenant"]["name"] then
					d = j
				end
			end
			if x < y + y/2 then
				if z > a and tenantCurrent[i]["tenant"]["complaint"] == 0 then
					if tenantCurrent[i]["apt"]["event"] == 1 then
						if b > a then
							tenantCurrent[i]["tenant"]["complaint"] = 1
							table.insert(complaintTable, {tenant = tenantCurrent[i]["tenant"], apt = tenantCurrent[i]["apt"], info = eventToDoTable[d], complaint = {status = 1, fine = 200*c*cMult, ctype = "file", trigger = "event", seen = 0}});
							print(tenantCurrent[i]["tenant"]["name"] .. " is threatening to file a complaint");
						else
							tenantCurrent[i]["tenant"]["complaint"] = 2;
							table.insert(complaintTable, {tenant = tenantCurrent[i]["tenant"], apt = tenantCurrent[i]["apt"], info = eventToDoTable[d], complaint = {status = 1, fine = 0, ctype = "moveout", trigger = "event", seen = 0}});
							print(tenantCurrent[i]["tenant"]["name"] .. " is threatening to move out");
						end
					else
						if b > a then
							tenantCurrent[i]["tenant"]["complaint"] = 2;
							table.insert(complaintTable, {tenant = tenantCurrent[i]["tenant"], apt = tenantCurrent[i]["apt"], info = 0, complaint = {status = 1, fine = 0, ctype = "moveout", trigger = "noise", seen = 0}});
							print(tenantCurrent[i]["tenant"]["name"] .. " is threatening to move out");
						end
					end
				end
			end
		end
	end
end


--[[
function happinessChange()
local noiseTable = {}
	if tenantTotal > 0 then
		for i = 1, #tenantCurrent do
			for k, v in pairs(tenantCurrent[i]) do
				if k == "apt" then
					table.insert(noiseTable[i], v);
				end
				if k == "noise" then
					table.insert(noiseTable[i], v);
				end
			end
		end
	end
end
]]--



-- RENT AND EXPENSE CALCULATIONS

--push rent to new table and sum
function tallyRent()
local sum = 0;
local rentTable = {}
	if #tenantCurrent > 0 then
		for i = 1, #tenantCurrent do
			if tenantCurrent[i]["tenant"]["income"] >= tenantCurrent[i]["apt"]["rent"] then
				table.insert(rentTable, tenantCurrent[i]["apt"]["rent"]);
			else
				tenantCurrent[i]["tenant"]["owes"] = tenantCurrent[i]["tenant"]["owes"] + (tenantCurrent[i]["apt"]["rent"] - tenantCurrent[i]["tenant"]["income"]);
				print(tenantCurrent[i]["tenant"]["name"] .. " cannot pay, they now owe " .. tenantCurrent[i]["tenant"]["owes"]);
			end
		end
		for i = 1, #rentTable do
			sum = sum + rentTable[i];
		end
	end
rentTotal = sum;
end

--push expenses to new table and sum
function tallyAptExpenses()
local sum = 0;
local expenseAptTable = {}
	for i = 1, #apartmentInfo do
		if apartmentInfo[i]["full"] == 1 then
			expenseAptTable[i] = apartmentInfo[i]["expense"];
		else
			expenseAptTable[i] = apartmentInfo[i]["expense"]/2;
		end
	end
	for i = 1, #expenseAptTable do
		if expenseAptTable[i] ~= nil then
			sum = sum + expenseAptTable[i];
		end
	end
expenseTotal = sum;
end

--EVENTS

--new event chance
function newEventMainChance()
local n =  tenantTotal + .01
local x = n/(n^2+10*n)^(1/2)
local y = math.random();
	if math.random() < x then
		eventMainToggle = 1;
		eventN = 1;
		print("Something happened");
		if math.random() < y then
			eventN = 2;
		end
	else
		print("No event");
		eventMainToggle = 0;
	end
end

--pick an event and an apartment
function pickEvent()
local eMI = 0;
local eTI = 0;
local a = 0;
	for i = 1, eventN do
		if eventMainToggle == 1 and #tenantCurrent > 0 then
			while a == 0 do
				eMI = math.random(#eventMainTable);
				eTI = math.random(1, #tenantCurrent);
				if tenantCurrent[eTI]["apt"]["event"] == 0 then
					a = 1;
					eventMainTable[eMI]["etime"] = turn;
					table.insert(eventToDoTable, {event = eventMainTable[eMI], tenant = tenantCurrent[eTI]["tenant"], apt = tenantCurrent[eTI]["apt"]});
					eventToDoTable[#eventToDoTable]["apt"]["event"] = 1;
					eventMainTotal = #eventToDoTable;
					print(eventToDoTable[#eventToDoTable]["event"]["ename"] .. " in apartment " .. eventToDoTable[#eventToDoTable]["apt"]["apt"]);
					print("Cost: " .. eventMainTable[eMI]["cost"]);
					if eventMainTable[eMI]["cost"] > moneyTotal then
						print("Can't afford");
						eventMainToggle = 0;
					end
				end
			end
		end
	end
end

-- pay for and complete repair/extermination
function payEvent(t, i)
	table.insert(actionsCurrent, t[i]);
	actionsCurrent[#actionsCurrent]["atype"] = "event";
	actionsCurrent[#actionsCurrent]["event"]["recur"] = 0;
	table.remove(t, i);
	eventMainTotal = #t
	print("Remaining events: " .. eventMainTotal);
	eventMainToggle = 0;
end

-- determine chance of DIY repair not working
function eventRecur()
	print("DIY");
	if actionsCurrent[#actionsCurrent]["event"]["recur"] == 0 then
		local x = math.random()
		if x > (1 - actionsCurrent[#actionsCurrent]["event"]["cost"]/1000)  then 
			actionsCurrent[#actionsCurrent]["event"]["recur"] = 2;
		else
			actionsCurrent[#actionsCurrent]["event"]["recur"] = 1;
		end
	end
end

-- remove event actions


-- remove upgrade actions

function removeUpgradeActions()
	if #actionsCurrent > 0 then
		for i = 1, #actionsCurrent do
			if actionsCurrent[i] ~= nil and actionsCurrent[i]["atype"] == "upgrade" then
				table.remove(actionsCurrent, i);
			end
		end
	end
end
-- undo an action once complete
function undoAction(b)
	if #actionsCurrent > 0 then
		if actionsCurrent[b]["atype"] == "event" then
			print("Undo " .. actionsCurrent[b]["atype"]);
			table.insert(eventToDoTable, actionsCurrent[b]);
			eventMainTotal = #eventToDoTable;
			eventMainToggle = 0;
			currentState = 0;
			table.remove(actionsCurrent, b);
		elseif actionsCurrent[b]["atype"] == "upgrade" then
			print("Undo " .. actionsCurrent[b]["atype"]); 
			currentState = 0;
			table.remove(actionsCurrent, #actionsCurrent);
		elseif actionsCurrent[b]["atype"] == "show" then
			print("Undo " .. actionsCurrent[b]["atype"]);
			currentState = 0;
			sCount = sCount - 1;
			actionsCurrent[b]["tenant"]["status"] = 0;
			actionsCurrent[b]["apt"]["full"] = 0;
			table.insert(aI, actionsCurrent[b]);
			table.remove(actionsCurrent, b);
		elseif actionsCurrent[b]["atype"] == "talk" then
			print("Undo " .. actionsCurrent[b]["atype"]);
			actionsCurrent[b]["tenant"]["status"] = 1; 
			currentState = 0;
			table.remove(actionsCurrent, b);
		elseif actionsCurrent[b]["atype"] == "evict" then
			print("Undo " .. actionsCurrent[b]["atype"]);
			currentState = 0;
			table.insert(evictTable, actionsCurrent[b]);
			table.remove(actionsCurrent, #actionsCurrent);
		elseif actionsCurrent[b]["atype"] == "complaint" then
			print("Undo " .. actionsCurrent[b]["atype"])
			table.insert(complaintTable, actionsCurrent[b]);
			table.remove(actionsCurrent, b);
		end
	end
end

-- go through actions during end turn

function endActions(t)
	if t ~= nil then
		if t["atype"] == "show" then
			currentState = 7;
		elseif t["atype"] == "evict" then
			currentState = 8;
		elseif t["atype"] == "talk" then
			currentState = 9;
		elseif t["atype"] == "event" then
			currentState = 10;
		elseif t["atype"] == "upgrade" then
			currentState = 11;
		elseif t["atype"] == "complaint" then
			currentState = 12;
		end
		if #actionsCurrent == 0 then
			currentState = 0;
		end
	end
end



-- zero out tenant status and adjust buffer
function adjustTenantBuffer()
	if #tenantCurrent > 0 then
		for i = 1, #tenantCurrent do
			if tenantCurrent[i]["tenant"]["buffer"] > 0 then
				tenantCurrent[i]["tenant"]["buffer"] = tenantCurrent[i]["tenant"]["buffer"] - 1;
			end
			if tenantCurrent[i]["tenant"]["status"] == 1.1 then
				tenantCurrent[i]["tenant"]["status"] = 1
			end
		end	
	end
end

-- zero out possible tenant status and clear arrival table
function clearArrivals()
	if #aI > 0 then
		for i = #aI, 1, -1 do
			if aI[i]["tenant"]["status"] ~= 1 then
				aI[i]["tenant"]["status"] = 0;
				table.remove(aI, i);
			else
				table.remove(aI, i);
			end
		end
	end
	for i = 1, #apartmentInfo do
		if apartmentInfo[i]["full"] ~= 0 and apartmentInfo[i]["full"] ~= 1 then
			apartmentInfo[i]["full"] = 0;
		end
	end
end


-- advance turn
function advanceTurn()
	local n = 0;
	cid = 0;
	turn = turn + 1;
	actionsTotal = 2;
	tenantArrives = 0;
	rentTotal = 0;
	eventMainToggle = 0;
	currentState = 0;
	qCount = 0;
	qI = 1;
	qA = 0;
	endTurn = 0;
	globalState = 1;
	for i = 1, #complaintTable do
		if complaintTable[i]["tenant"]["complaint"] == 0 then
			table.remove(complaintTable, i);
		end
	end
	for i = 1, #apartmentInfo do
		if apartmentInfo[i]["buffer"] > 0 then
			apartmentInfo[i]["buffer"] = apartmentInfo[i]["buffer"] - 1
		end
	end
	for i = 1, #tenantTalkQuestions do
		tenantTalkQuestions[i][2] = 0;
	end
	tenantTotal = #tenantCurrent
	tenantMax = #apartmentInfo;
	if tenantTotal > 6 and upgradesActive == 0 then
		upgradesActive = 1;
	end
	clearArrivals();
	adjustTenantBuffer();
	incomeChange();
	happinessEvents();
	happinessBreed();
	happinessImprove();
	happinessCheck();
	tenantEvictCheck();
	newTenantChance();
	tallyRent();
	tallyAptExpenses();
	if turn ~= 1 then
		moneyTotal = moneyTotal + rentTotal - expenseTotal;
	end
	newEventMainChance();
	pickEvent();
	print("\n");
	print("turn: " .. turn);
	print("actions taken: " .. #actionsCurrent);
	print("monthly rent total: " .. rentTotal);
	print("monthly expense total: " .. expenseTotal);
	print("money total: " .. moneyTotal);
	print("tenant max: " .. tenantMax);
	print("total tenants: " .. table.getn(tenantCurrent));
	print("event total: " .. eventMainTotal);
	if tenantArrives == 1 then
		for i = 1, #aI do
			print("\nNew tenant stats:")
			print("Name: " .. aI[i]["tenant"]["name"]);
			print("Income: " .. aI[i]["tenant"]["income"]);
			print("Looking for a " .. aI[i]["tenant"]["sizepref"] .. " bedroom apartment \n");
		end
	end
end


-- print available actions
function printActions()
	print("\nPress P to print key mappings");
	print("Press O to print selected actions");
	print("Press I to view apartment and tenant info");
	if #actionsCurrent < actionsTotal then	
		if eventToDoTable[#eventToDoTable] ~= nil and eventToDoTable[#eventToDoTable]["event"]["cost"] <= moneyTotal then
			print("Press R to deal with events (cost 1 action) or X to undo");
		end
		if upgrades[1]["cost"] <= moneyTotal and upgradesActive == 1 then
			print("Press U to upgrade building (cost 1 action), Press Q to exit upgrade menu");
		end
		if tenantArrives == 1 then
			if sCount < #aI then
				print("Press S to show apartments to tenants (cost 1 action)");
			end
		end
		if #tenantCurrent > 0 then
			if #evictTable > 0 then
				print("Press E to evict tenants (cost 1 action)");
			end
			if tCount < #tenantCurrent then
				print("Press T to talk to current tenants (cost 1 action)");
			end
		end
		if #actionsCurrent > 0 then
			if turnCount == turn then
				print("Press X to undo last action: " .. actionsCurrent[#actionsCurrent]["atype"]);
			end
		else
			print("Press X to undo last action: ");
		end
	end
end

function printSelectedActions()
	print("Selected actions: ");
	local function regPrint(t, k)
		print("Type: " .. t[k]["atype"]);
		print("Apt: " .. t[k]["apt"]["apt"]);
		print("Tenant: " .. t[k]["tenant"]["name"]);
	end
	if #actionsCurrent > 0 then
		for i = 1, #actionsCurrent do
			if actionsCurrent[i]["atype"] == "event" then
				regPrint(actionsCurrent, i);
				print("Event: " .. actionsCurrent[i]["event"]["ename"]);
				print("Cost: " .. actionsCurrent[i]["event"]["cost"]);
			elseif actionsCurrent[i]["atype"] == "upgrade" then
				print("Type: " .. actionsCurrent[i]["atype"]);
				print("Upgrading: " .. actionsCurrent[i]["uname"]);
				print("Cost: " .. actionsCurrent[i]["cost"]);
			else
				regPrint(actionsCurrent, i);
			end
		end
	else
		print("No actions selected")
	end
end

-- print info about all apartments
function printApts()
	local t = {}
	local t2 = {}
	for i = 1, #apartmentInfo do
		if apartmentInfo[i]["full"] == 0 then
			for k, v in pairs(apartmentInfo[i]) do
				table.insert(t, k);
				table.insert(t, v);
			end
		table.insert(t, "||")
		end	
	end
	if t[#t] ~= nil then
		print(table.concat(t, ", "));
	end
	if tenantTotal > 0 then
		for i = 1, #tenantCurrent do
			if tenantCurrent[i]["apt"]["full"] == 1 then
				for k, v in pairs(tenantCurrent[i]["apt"]) do
					table.insert(t2, k);
					table.insert(t2, v);
				end
				for k, v in pairs(tenantCurrent[i]["tenant"]) do
					table.insert(t2, k);
					table.insert(t2, v);
				end
			table.insert(t2, "||")
			end	
		end
	end
	if t2[#t2] ~= nil then
		print(table.concat(t2, ", "));
	end	
end

--print info about tenant
function aptInfoPrint(b)
	if apartmentInfo[b]["full"] == 1 then
		for i = 1, #tenantCurrent do
			if tenantCurrent[i]["apt"]["apt"] == apartmentInfo[b]["apt"] then
				local a = "???"
				buttonid2 = i
				text = ""
				if tenantCurrent[i]["tenant"]["talked"] == 1 then
					a = tenantCurrent[i]["tenant"]["happiness"]
				end
				text2 = "Name: " .. tenantCurrent[i]["tenant"]["name"] .. "\n\n\nIncome: $" .. tenantCurrent[i]["tenant"]["income"] .. "\n\n\nHappiness: ".. a .."\n\n\nMonthly rent: $" .. tenantCurrent[i]["apt"]["rent"] 
			end
		end
	else
		text = ""
		if apartmentInfo[b]["buffer"] > 0 then
			text = "Apartment will be ready to show in " .. apartmentInfo[b]["buffer"] .. " turns"
		end
		text2 = ""
		text2 = "\n\n\nSet monthly rent: $" .. apartmentInfo[b]["rent"]
	end
end
--upgrade print
function upgradePrint()
	local t = {}
	if currentState == 5 then
		for i = 1, #upgrades do
			if upgrades[i]["cost"] <= moneyTotal and upgrades[i]["used"] == 0 then
				table.insert(t, "Upgrade the " .. upgrades[i]["uname"] .. " for $" .. upgrades[i]["cost"]);
			end
		end
		text = table.concat(t, "\n\n\n\n");
	elseif currentState == 5.5 then
		text = "Are you sure you want to upgrade the " .. upgrades[buttonid2]["uname"] .. "\n\nCost: $" .. upgrades[buttonid2]["cost"] .. "\n\nMoney remaining: $" .. moneyTotal - upgrades[buttonid2]["cost"]
	elseif currentState == 11 then
		text = "You upgraded the " .. upgrades[buttonid2]["uname"] .. "\n\nPerhaps this will attract more...desirable tenants."
	end
end

-- event print

function eventPrint(i)
	print("eventPrint");
	local t = ""
	if eventToDoTable[i]["event"]["btype"] == "repair" then
		t = eventToDoTable[i]["tenant"]["name"] .. ": Oh no, the " .. eventToDoTable[i]["event"]["ename"] .. " is broken!\n\n" .. "Repair " .. eventToDoTable[i]["event"]["ename"] .. " in apt. " .. eventToDoTable[i]["apt"]["apt"] .. " ?"
		return t
	else
		t = eventToDoTable[i]["tenant"]["name"] .. ": Oh no, there are " .. eventToDoTable[i]["event"]["ename"] .. " in the apartment!\n\n" .. "Exterminate " .. eventToDoTable[i]["event"]["ename"] .. " in apt. " .. eventToDoTable[i]["apt"]["apt"] .. " ?\n\n"
		return t
	end
	if t == "" then
		print(eventToDoTable[i]["event"]["ename"]);
	end
end

--tenant show print
function showPrint(b)
	local t = ""
	if currentState == 1 then
		if aI[b] ~= nil and aI[b]["tenant"]["status"] ~= 0.6 then
			print(aI[b]["tenant"]["name"]);
			print(b);
			t = "Name: " .. aI[b]["tenant"]["name"] .. "\n\nLooking for a " .. aI[b]["tenant"]["sizepref"] .. " bedroom apartment" .. "\n\n\n\n\nDo you want to select an apartment to show to " .. aI[b]["tenant"]["name"] .. "?"
			return t
		else
			error("showPrint conditions not filled");
		end
	elseif currentState == 1.5 then
		if aI[b] ~= nil and aI[b]["tenant"]["status"] == 0.6 then
			t = "Show apartment ".. apartmentInfo[buttonid2]["apt"] .. " to " .. aI[b]["tenant"]["name"] .. "?"
			return t
		end
	end
end

--complaint print
function complaintPrint(b)
	local t = ""
	print(complaintTable[b]["tenant"]["complaint"])
	if complaintTable[b] ~= nil then
		if complaintTable[b]["tenant"]["complaint"] == 1 then
			if complaintTable[b]["complaint"]["trigger"] == "event" then
				t = complaintTable[b]["tenant"]["name"] .. " is threatening to file a complaint with the housing board about the "..complaintTable[buttonid]["info"]["event"]["ename"].."\n\nDo you want to "
				..complaintTable[buttonid]["info"]["event"]["btype"].." the "..complaintTable[buttonid]["info"]["event"]["ename"].."?"
			else
				t = complaintTable[b]["tenant"]["name"] .. " is unhappy and threatening to file a complaint with the housing board about the noise! Do you want to talk to the neighbours?"
			end
			return t
		elseif complaintTable[b]["tenant"]["complaint"] == 2 then
			if complaintTable[b]["complaint"]["trigger"] == "event" then
				t = complaintTable[b]["tenant"]["name"] .. " is unhappy about the "..complaintTable[buttonid]["info"]["event"]["ename"].." and is threatening to move out!\n\nDo you want to "..complaintTable[buttonid]["info"]["event"]["btype"].." the "..complaintTable[buttonid]["info"]["event"]["ename"].."?"
			else
				t = complaintTable[b]["tenant"]["name"] .. " is unhappy about the noise and is threatening to move out! Do you want to talk to the neighbours?"
			end
			return t
		elseif complaintTable[b]["tenant"]["complaint"] == 3 then
			t = complaintTable[b]["tenant"]["name"] .. " filed a complaint with the housing board! \n\nDo you want to contest the complaint? If not you will be fined $" .. complaintTable[b]["complaint"]["fine"]
			return t
		elseif complaintTable[b]["tenant"]["complaint"] == 4 then
			t = complaintTable[b]["tenant"]["name"] .. " is moving out! Do you want to try to stop them?"
			return t
		end
	end
end

--[[
function showPrint()
	local t = {}
	for i = 1, #aI do
		if aI[i] ~= nil then
			if aI[i]["tenant"]["status"] ~= 0.6 then
				table.insert(t, "Select tenant:\n\n" .. i .. ": Show apartment " .. aI[i]["apt"]["apt"] .. " to " .. aI[i]["tenant"]["name"]);
			end
		end
	end
	local y = table.concat(t, "\n\n\n\n\n\n");
	return y
end
]]--

--tenant talk print
function talkPrint(i)
	if tenantCurrent[i] ~= nil and tenantCurrent[i]["tenant"]["status"] ~= 1.1 then
		text = "Talk to " .. tenantCurrent[i]["tenant"]["name"] .. "?"
	else
		error("talkPrint conditions not filled");
	end
end

--tenant choice print
function tenantChoicePrint(t)
local x = 0
	if t["tenant"]["income"] < 400 then
		x = math.random(1, 6)
	elseif t["tenant"]["income"] >= 400 and t["tenant"]["income"] < 800 then
		x = math.random(6, 8)
	else
		x = math.random(8, #tenantArrivesA[1]);
	end
	local txt = ""
	if t["tenant"]["status"] ~= 1 then
		txt = "You: "..tenantArrivesQ[1][1].."\n\n".. t["tenant"]["name"]..": "..tenantArrivesA[1][x].."\n\nYou: "..tenantArrivesQ[2][1].."\n\n"..t["tenant"]["name"]..": "..tenantArrivesA[2][x].. 
		"\n\nIncome: $"..t["tenant"]["income"].."\n\nRent: $"..t["apt"]["rent"].."\n\nAccept ".. t["tenant"]["name"].." for apt. "..t["apt"]["apt"].. "?"
		return txt
	end
end

--evictions print
function evictPrint(i)
	local t = ""
	t = evictTable[i]["tenant"]["name"] .. " in apt. " .. evictTable[i]["apt"]["apt"] .. " cannot pay their rent. Do you want to send them a notice of eviction? \n\n\nOnce they move out it will take 2 turns to clean the apartment and prepare it for the next tenant."
	return t
end

--question print
function questionPrint()
	print("buttonid2 "..buttonid2);
	print("qA " .. qA);
	print("qcount "..qCount); 
	text = ""
	qCount = qCount + 1;
	text = "You: " .. tenantTalkQuestions[qCount][1] .. "\n\n" .. tenantCurrent[buttonid2]["tenant"]["name"] .. ": " .. tenantTalkAnswers[qCount][qA]
end


-- UPDATE

function eventEndTurn()
	if actionsCurrent[#actionsCurrent] ~= nil then
		if actionsCurrent[#actionsCurrent]["event"]["recur"] == 2 then
			actionsCurrent[#actionsCurrent]["event"]["recur"] = 0;
			table.insert(eventToDoTable, actionsCurrent[#actionsCurrent]);
			if actionsCurrent[#actionsCurrent]["event"]["btype"] == "repair" then
				text = "Oops! Looks like you did a bad job repairing the " .. actionsCurrent[#actionsCurrent]["event"]["ename"] .. ". You'll need to do it again."
			else
				text = "Oops! Looks like you did a bad job exterminating the " .. actionsCurrent[#actionsCurrent]["event"]["ename"] .. ". You'll need to do it again."
			end
		elseif actionsCurrent[#actionsCurrent]["event"]["recur"] == 1 then
			actionsCurrent[#actionsCurrent]["event"]["recur"] = 0;
			actionsCurrent[#actionsCurrent]["apt"]["event"] = 0;
			actionsCurrent[#actionsCurrent]["event"]["etime"] = 0;
			if actionsCurrent[#actionsCurrent]["tenant"]["complaint"] == 1 then
				actionsCurrent[#actionsCurrent]["tenant"]["complaint"] = 0;
			end
			if actionsCurrent[#actionsCurrent]["event"]["btype"] == "repair" then
				text = "You successfully repaired the " .. actionsCurrent[#actionsCurrent]["event"]["ename"] .. "! You're such a pro!"
			else
				text = "You successfully exterminated the " .. actionsCurrent[#actionsCurrent]["event"]["ename"] .. "! You're such a pro!"
			end
		else
			moneyTotal = moneyTotal - actionsCurrent[#actionsCurrent]["event"]["cost"];
			actionsCurrent[#actionsCurrent]["apt"]["event"] = 0;
			actionsCurrent[#actionsCurrent]["event"]["etime"] = 0;
			if actionsCurrent[#actionsCurrent]["tenant"]["complaint"] == 1 then
				actionsCurrent[#actionsCurrent]["tenant"]["complaint"] = 0;
			end
			if actionsCurrent[#actionsCurrent]["event"]["btype"] == "repair" then
				text = "The " .. actionsCurrent[#actionsCurrent]["event"]["ename"] .. " were fixed for $" .. actionsCurrent[#actionsCurrent]["event"]["cost"] .. "\n\nMoney remaining: $" .. moneyTotal
			else
				text = "The " .. actionsCurrent[#actionsCurrent]["event"]["ename"] .. " were exterminated for $" .. actionsCurrent[#actionsCurrent]["event"]["cost"] .. "\n\nMoney remaining: $" .. moneyTotal
			end
		end
	end
end

function evictEndTurn()
	local x = math.random(#tenantEvictDialogue);
	text = tenantEvictDialogue[x] .. "\n\n\n Are you sure you still want to evict " .. actionsCurrent[#actionsCurrent]["tenant"]["name"] .. "?"
end

function love.update(dt)

    love.graphics.clear()
	if #actionsCurrent > 0 then
		turnCount = turn;
	end
	if #actionsCurrent == 0 then
		if endTurn == 1 then
			endTurn = 2;
		elseif endTurn == 3 then	
			advanceTurn();
		end
	end
	
	if actionsCurrent[#actionsCurrent] ~= nil and endTurn == 1 then
		if actionsCurrent[#actionsCurrent]["atype"] == "show" and currentState == 7 then
			text = tenantChoicePrint(actionsCurrent[#actionsCurrent])
			currentState = 7.5;
		elseif actionsCurrent[#actionsCurrent]["atype"] == "evict" and currentState == 8 then
			evictEndTurn();
			currentState = 8.5;
		elseif actionsCurrent[#actionsCurrent]["atype"] == "talk"  and currentState == 9 then 
			if qCount+1 < #tenantTalkQuestions then		
				questionPrint();
				currentState = 9.5;
			else
				questionPrint();
				actionsCurrent[#actionsCurrent]["tenant"]["talked"] = 1;
				currentState = 9.6;
			end
		elseif actionsCurrent[#actionsCurrent]["atype"] == "event" and currentState == 10 then
			eventEndTurn();
			currentState = 10.5
		elseif actionsCurrent[#actionsCurrent]["atype"] == "upgrade" and currentState == 11 then
			upgradePrint();
			moneyTotal = moneyTotal - actionsCurrent[#actionsCurrent]["upgrade"]["cost"];
			currentState = 11.5
		elseif actionsCurrent[#actionsCurrent]["atype"] == "complaint" and currentState == 12 then
			text = "Finalizing complaint action"
			currentState = 12.5
		end
	end
end


--DRAW 


function renderStaticButtons()
	local mx, my = love.mouse.getPosition()
	for i = 1, #staticbuttons do
		love.graphics.draw(staticbuttons[i]["img1"], staticbuttons[i]["x"], staticbuttons[i]["y"], 0, 1, 1);
		if mx >= staticbuttons[i]["x"] and mx < staticbuttons[i]["x"] + staticbuttons[i]["img1"]:getWidth()
		and my >= staticbuttons[i]["y"] and my < staticbuttons[i]["y"] + staticbuttons[i]["img1"]:getHeight() then
			love.graphics.draw(staticbuttons[i]["img2"], staticbuttons[i]["x"], staticbuttons[i]["y"], 0, 1, 1);
			if love.mouse.isDown(1) then
				love.graphics.draw(staticbuttons[i]["img3"], staticbuttons[i]["x"], staticbuttons[i]["y"], 0, 1, 1);
			end
		end
	end
end

function renderDoorButtons()
	local mx, my = love.mouse.getPosition()
	for i = 1, #doorbuttons do
		love.graphics.draw(doorbuttons[i]["img1"], doorbuttons[i]["x"], doorbuttons[i]["y"], 0, 1, 1);
		if mx >= doorbuttons[i]["x"] and mx < doorbuttons[i]["x"] + doorbuttons[i]["img1"]:getWidth()
		and my >= doorbuttons[i]["y"] and my < doorbuttons[i]["y"] + doorbuttons[i]["img1"]:getHeight() then
			love.graphics.draw(doorbuttons[i]["img2"], doorbuttons[i]["x"], doorbuttons[i]["y"], 0, 1, 1);
			if love.mouse.isDown(1) then
				love.graphics.draw(doorbuttons[i]["img3"], doorbuttons[i]["x"], doorbuttons[i]["y"], 0, 1, 1);
			end
		end
	end
end

function renderArrivalButtons()
	local mx, my = love.mouse.getPosition()
	for i = 1, #aI do
		local gridx = gridproperties[1]["xpos"] + gridproperties[1]["width"]*(i-1) + gridproperties[1]["padding"]*(i-1)
		local gridy = gridproperties[1]["ypos"]
		love.graphics.draw(gridbuttons["newtenantbutton"]["img1"], gridx, gridy, 0, 1, 1);
		if mx >= gridx and mx < gridx + gridbuttons["newtenantbutton"]["img1"]:getWidth()
		and my >= gridy and my < gridy + gridbuttons["newtenantbutton"]["img1"]:getHeight() then
			love.graphics.draw(gridbuttons["newtenantbutton"]["img2"], gridx, gridy, 0, 1, 1);
			if love.mouse.isDown(1) then
				love.graphics.draw(gridbuttons["newtenantbutton"]["img3"], gridx, gridy, 0, 1, 1);
			end
		end
		if i == #aI then
			local x = gridproperties[1]["xpos"] + gridproperties[1]["width"]*(i) + gridproperties[1]["padding"]*(i);
			return x
		end
	end
	if #aI == 0 then
		local x = gridproperties[1]["xpos"]
		return x
	end
end

function renderEventButtons()
	local mx, my = love.mouse.getPosition()
	for i = 1, #eventToDoTable do
		local gridx = gridproperties[9]["xpos"] + gridproperties[9]["width"]*(eventToDoTable[i]["apt"]["x"]-1) + gridproperties[9]["padding"]*(eventToDoTable[i]["apt"]["x"]-1)-50
		local gridy = gridproperties[9]["ypos"] + gridproperties[9]["height"]*(eventToDoTable[i]["apt"]["y"]-1) + gridproperties[9]["padding"]*(eventToDoTable[i]["apt"]["y"]-1)
		if eventToDoTable[i]["event"]["btype"] == "repair" then
			love.graphics.draw(gridbuttons["repairbutton"]["img1"], gridx, gridy, 0, 1, 1);
			if mx >= gridx and mx < gridx + gridbuttons["repairbutton"]["img1"]:getWidth()-4
			and my >= gridy and my < gridy + gridbuttons["repairbutton"]["img1"]:getHeight() then
				love.graphics.draw(gridbuttons["repairbutton"]["img2"], gridx, gridy, 0, 1, 1);
				if love.mouse.isDown(1) then
					love.graphics.draw(gridbuttons["repairbutton"]["img3"], gridx, gridy, 0, 1, 1);
				end
			end
		else
			love.graphics.draw(gridbuttons["exterminatebutton"]["img1"], gridx, gridy, 0, 1, 1);
			if mx >= gridx and mx < gridx + gridbuttons["exterminatebutton"]["img1"]:getWidth()-4
			and my >= gridy and my < gridy + gridbuttons["exterminatebutton"]["img1"]:getHeight() then
				love.graphics.draw(gridbuttons["exterminatebutton"]["img2"], gridx, gridy, 0, 1, 1);
				if love.mouse.isDown(1) then
					love.graphics.draw(gridbuttons["exterminatebutton"]["img3"], gridx, gridy, 0, 1, 1);
				end
			end
		end
	end
end

function renderEvictButtons(x)
	local mx, my = love.mouse.getPosition()
	for i = 1, #evictTable do
		local gridx = x + gridproperties[1]["width"]*(i-1) + gridproperties[1]["padding"]*(i-1)
		local gridy = gridproperties[1]["ypos"]
		love.graphics.draw(gridbuttons["evictbutton"]["img1"], gridx, gridy, 0, 1, 1);
		if mx >= gridx and mx < gridx + gridbuttons["evictbutton"]["img1"]:getWidth()
		and my >= gridy and my < gridy + gridbuttons["evictbutton"]["img1"]:getHeight() then
			love.graphics.draw(gridbuttons["evictbutton"]["img2"], gridx, gridy, 0, 1, 1);
			if love.mouse.isDown(1) then
				love.graphics.draw(gridbuttons["evictbutton"]["img3"], gridx, gridy, 0, 1, 1);
			end
		end
		if i == #evictTable then
			local x2 = x + gridproperties[1]["width"]*(i) + gridproperties[1]["padding"]*(i);
			return x2
		end
	end
	if #evictTable == 0 then
		local x2 = x
		return x2
	end
end


function renderComplaintButtons(x)
	local n = 0;
	local v = 1;
	if #complaintTable > 0 then
		local mx, my = love.mouse.getPosition()
		for i = 1, #complaintTable do
			if complaintTable[i]["complaint"]["seen"] == 1 then
				n = n + 1;
				v = 0;
			end
			local gridx = x + gridproperties[1]["width"]*(i-1-n) + gridproperties[1]["padding"]*(i-1-n)
			local gridy = gridproperties[1]["ypos"]
			if v == 1 then
				love.graphics.draw(gridbuttons["complaintbutton"]["img1"], gridx, gridy, 0, 1, 1);
				if mx >= gridx and mx < gridx + gridbuttons["complaintbutton"]["img1"]:getWidth()
				and my >= gridy and my < gridy + gridbuttons["complaintbutton"]["img1"]:getHeight() then
					love.graphics.draw(gridbuttons["complaintbutton"]["img2"], gridx, gridy, 0, 1, 1);
					if love.mouse.isDown(1) then
						love.graphics.draw(gridbuttons["complaintbutton"]["img3"], gridx, gridy, 0, 1, 1);
					end
				end
			end
			if i == #complaintTable then
				local x2 = x + gridproperties[1]["width"]*(i-n) + gridproperties[1]["padding"]*(i-n);
				return x2;
			end
		end
	end
	if #complaintTable == 0 then
		local x2 = x;
		return x2;
	end
end
	
function renderWindowButtons()
	local mx, my = love.mouse.getPosition()
	for i = 1, #apartmentInfo do
		local gridx = gridproperties[5]["xpos"] + gridproperties[5]["width"]*(apartmentInfo[i]["x"]-1) + gridproperties[5]["padding"]*(apartmentInfo[i]["x"]-1)
		local gridy = gridproperties[5]["ypos"] + gridproperties[5]["height"]*(apartmentInfo[i]["y"]-1) + gridproperties[5]["padding"]*(apartmentInfo[i]["y"]-1)
		if currentState == 1.5 then
			if apartmentInfo[i]["full"] ~= 1 then
				if apartmentInfo[i]["full"] ~= 0.5 then
					if apartmentInfo[i]["size"] == aI[buttonid]["tenant"]["sizepref"] then
						love.graphics.draw(windowbuttons[1]["img1"], gridx, gridy, 0, 1, 1);
						if mx >= gridx and mx < gridx + windowbuttons[1]["img1"]:getWidth()
						and my >= gridy and my < gridy + windowbuttons[1]["img1"]:getHeight() then
							love.graphics.draw(windowbuttons[1]["img2"], gridx, gridy, 0, 1, 1);
							if love.mouse.isDown(1) then
								love.graphics.draw(windowbuttons[1]["img3"], gridx, gridy, 0, 1, 1);
							end
						end
					else
						love.graphics.draw(windowbuttons[1]["img2"], gridx, gridy, 0, 1, 1);
					end
				else
					love.graphics.draw(windowbuttons[1]["img2"], gridx, gridy, 0, 1, 1);
				end
			else
				love.graphics.draw(windowbuttons[2]["img1"], gridx, gridy, 0, 1, 1);
			end
		else
			if apartmentInfo[i]["full"] ~= 1 then
				love.graphics.draw(windowbuttons[1]["img1"], gridx, gridy, 0, 1, 1);
			else
				love.graphics.draw(windowbuttons[2]["img1"], gridx, gridy, 0, 1, 1);
			end
			if mx >= gridx and mx < gridx + windowbuttons[1]["img1"]:getWidth()
			and my >= gridy and my < gridy + windowbuttons[1]["img1"]:getHeight() then
				if apartmentInfo[i]["full"] ~= 1 then
					love.graphics.draw(windowbuttons[1]["img2"], gridx, gridy, 0, 1, 1);
				else
					love.graphics.draw(windowbuttons[2]["img2"], gridx, gridy, 0, 1, 1);
				end
				if love.mouse.isDown(1) then
					if apartmentInfo[i]["full"] ~= 1 then
						love.graphics.draw(windowbuttons[1]["img3"], gridx, gridy, 0, 1, 1);
					else
						love.graphics.draw(windowbuttons[2]["img3"], gridx, gridy, 0, 1, 1);
					end
				end
			end
		end
	end
end


function renderAptActionButtons(b)
	local mx, my = love.mouse.getPosition()
	local function drawButtons(i, n, a)
		local gridx = gridproperties[6]["xpos"]
		local gridy = gridproperties[6]["ypos"] + gridproperties[1]["height"]*(i) + gridproperties[1]["padding"]*(i)
		if a == 1 then
			love.graphics.draw(gridbuttons[n]["img1"], gridx, gridy, 0, 1, 1);
			if mx >= gridx and mx < gridx + gridbuttons[n]["img1"]:getWidth()
			and my >= gridy and my < gridy + gridbuttons[n]["img1"]:getHeight() then
				love.graphics.draw(gridbuttons[n]["img2"], gridx, gridy, 0, 1, 1);
				if love.mouse.isDown(1) then
					love.graphics.draw(gridbuttons[n]["img3"], gridx, gridy, 0, 1, 1);
				end
			end
		else
			love.graphics.draw(gridbuttons[n]["img3"], gridx, gridy, 0, 1, 1);
		end
	end
	if apartmentInfo[b]["full"] == 1 then
		if tenantCurrent[buttonid2]["tenant"]["status"] == 2 then
			drawButtons(0, "evictbutton", 1)
		else
			drawButtons(0, "evictbutton", 0)
		end
		if tenantCurrent[buttonid2]["tenant"]["status"] ~= 1.1 then
			drawButtons(1, "talkbutton", 1)
		else
			drawButtons(1, "talkbutton", 0)
		end
		drawButtons(2, "setrent", 0)
		for i = 1, #eventToDoTable do
			if apartmentInfo[b]["apt"] == eventToDoTable[i]["apt"]["apt"] then
				if eventToDoTable[i]["event"]["btype"] == "repair" then
					drawButtons(3, "repairbutton", 1)
				else
					drawButtons(3, "exterminatebutton", 1)
				end
			end
		end
	end
end

function renderUpgradeButton()
	local mx, my = love.mouse.getPosition()
	local gridx = gridproperties[6]["xpos"]
	local gridy = gridproperties[6]["ypos"]
	love.graphics.draw(gridbuttons["upgradebutton"]["img1"], gridx, gridy, 0, 1, 1);
	if mx >= gridx and mx < gridx + gridbuttons["upgradebutton"]["img1"]:getWidth()
	and my >= gridy and my < gridy + gridbuttons["upgradebutton"]["img1"]:getHeight() then
		love.graphics.draw(gridbuttons["upgradebutton"]["img2"], gridx, gridy, 0, 1, 1);
		if love.mouse.isDown(1) then
			love.graphics.draw(gridbuttons["upgradebutton"]["img3"], gridx, gridy, 0, 1, 1);
		end
	end
end

function renderActionButtons()
	local mx, my = love.mouse.getPosition()
	for i = 1, actionsTotal do
		local gridx = gridproperties[2]["xpos"] + gridproperties[2]["width"]*(i-1) + gridproperties[2]["padding"]*(i-1)
		local gridy = gridproperties[2]["ypos"]
		love.graphics.draw(gridbuttons["actionslot"]["img1"], gridx, gridy, 0, 1, 1);
	end
	for i = 1, #actionsCurrent do
		local gridx = gridproperties[2]["xpos"] + gridproperties[2]["width"]*(i-1) + gridproperties[2]["padding"]*(i-1)
		local gridy = gridproperties[2]["ypos"]
		local function actionDraw(n)
			love.graphics.draw(gridbuttons[n]["img1"], gridx, gridy, 0, 1, 1);
			if mx >= gridx and mx < gridx + gridbuttons[n]["img1"]:getWidth()
			and my >= gridy and my < gridy + gridbuttons[n]["img1"]:getHeight() then
				love.graphics.draw(gridbuttons[n]["img2"], gridx, gridy, 0, 1, 1);
				if love.mouse.isDown(1) then
					love.graphics.draw(gridbuttons[n]["img3"], gridx, gridy, 0, 1, 1);
				end
			end
		end
		if actionsCurrent[i]["atype"] == "event" then
			if actionsCurrent[i]["event"]["btype"] == "repair" then
				actionDraw("repairbutton");
			elseif actionsCurrent[i]["event"]["btype"] == "exterminate" then
				actionDraw("exterminatebutton");
			end
		elseif actionsCurrent[i]["atype"] == "show" then
			actionDraw("newtenantbutton");
		elseif actionsCurrent[i]["atype"] == "evict" then
			actionDraw("evictbutton");
		elseif actionsCurrent[i]["atype"] == "talk" then
			actionDraw("talkbutton");
		elseif actionsCurrent[i]["atype"] == "upgrade" then
			actionDraw("upgradebutton");
		end
	end	
end

function renderTenantButtons(b)
	local gridx = gridproperties[3]["xpos"]
	local gridy = gridproperties[3]["ypos"]
	local function tenantBreed(t, i)
		if t[i]["tenant"]["breed"] == "Persian" then
			love.graphics.draw(tenantbuttons[1]["img1"], gridx, gridy, 0, 1, 1);
		elseif t[i]["tenant"]["breed"] == "Siamese" then
			love.graphics.draw(tenantbuttons[2]["img1"], gridx, gridy, 0, 1, 1);
		elseif t[i]["tenant"]["breed"] == "Maine Coon" then
			love.graphics.draw(tenantbuttons[3]["img1"], gridx, gridy, 0, 1, 1);
		elseif t[i]["tenant"]["breed"] == "Abyssinian" then
			love.graphics.draw(tenantbuttons[4]["img1"], gridx, gridy, 0, 1, 1);
		end
	end
	if endTurn == 0 then
		if currentState == 1 and #aI[b] ~= nil then
			tenantBreed(aI, b);
		elseif currentState == 1.6 or currentState == 1.7 and #aI[b] ~= nil then
			tenantBreed(aI, b);
		elseif currentState == 6 or currentState == 6.1 and complaintTable[b] ~= nil then
			tenantBreed(complaintTable, b);
		elseif currentState == 4 or currentState == 4.1 and eventToDoTable[b] ~= nil then
			tenantBreed(eventToDoTable, b);
		elseif currentState == 3 and evictTable[b] ~= nil then
			tenantBreed(evictTable, b);
		elseif currentState == 2 then
			tenantBreed(tenantCurrent, buttonid2);
		end
		if globalState == 3 then
			if apartmentInfo[b]["full"] == 1 then
				for i = 1, #tenantCurrent do
					if tenantCurrent[i]["apt"]["apt"] == apartmentInfo[b]["apt"] then
						tenantBreed(tenantCurrent, i);
					end
				end
			end
		end
	end
	if endTurn ~= 0 and #actionsCurrent > 0 then
		if actionsCurrent[#actionsCurrent]["tenant"] ~= nil then
			tenantBreed(actionsCurrent, #actionsCurrent);
		end
	end
end

function renderYesNoButtons()
	local mx, my = love.mouse.getPosition();
	for i = 1, gridproperties[4]["cols"] do
		local gridx = gridproperties[4]["xpos"] + gridproperties[4]["width"]*(i-1) + gridproperties[4]["padding"]*(i-1);
		local gridy = gridproperties[4]["ypos"];
		love.graphics.draw(optionbuttons[i]["img1"], gridx, gridy, 0, 1, 1);
		if mx >= gridx and mx < gridx + optionbuttons[i]["img1"]:getWidth()
		and my >= gridy and my < gridy + optionbuttons[i]["img1"]:getHeight() then
			love.graphics.draw(optionbuttons[i]["img2"], gridx, gridy, 0, 1, 1);
			if love.mouse.isDown(1) then
				love.graphics.draw(optionbuttons[i]["img3"], gridx, gridy, 0, 1, 1);
			end
		end
	end
end

function renderBlankButtons()
	local mx, my = love.mouse.getPosition()
	local btext = {"DIY", "Hire", "Cancel", "OK", "Exit", "Next"}
	local width = optionbuttons[3]["img1"]:getWidth()
	local function buttonDraw(n, x, v)
		for i = 1, n do
			local gridx = gridproperties[4]["xpos"] + gridproperties[4]["width"]*(i-1) + gridproperties[4]["padding"]*(i-1);
			local gridy = gridproperties[4]["ypos"];
			if i ~= v then
				love.graphics.draw(optionbuttons[3]["img1"], gridx, gridy, 0, 1, 1);
				love.graphics.setColor(219,200,160,255);
				love.graphics.printf(btext[i + x], gridx + 4, gridy + 16, width - 6, "center");
				love.graphics.setColor(255,255,255,255)			
				if mx >= gridx and mx < gridx + optionbuttons[3]["img1"]:getWidth()
				and my >= gridy and my < gridy + optionbuttons[3]["img1"]:getHeight() then
					love.graphics.draw(optionbuttons[3]["img2"], gridx, gridy, 0, 1, 1);
					love.graphics.setColor(219,200,160,255)
					love.graphics.printf(btext[i + x], gridx + 5, gridy + 12, width - 6, "center");
					love.graphics.setColor(255,255,255,255)				
					if love.mouse.isDown(1) then
						love.graphics.draw(optionbuttons[3]["img3"], gridx, gridy, 0, 1, 1);
						love.graphics.setColor(219,200,160,255)
						love.graphics.printf(btext[i + x], gridx + 5, gridy + 12, width - 6, "center"); 
						love.graphics.setColor(255,255,255,255)
					end
				end
			else
				love.graphics.draw(optionbuttons[3]["img3"], gridx, gridy, 0, 1, 1);
				love.graphics.setColor(219,200,160,255);
				love.graphics.printf(btext[i + x], gridx + 5, gridy + 12, width - 6, "center");
				love.graphics.setColor(255,255,255,255)		
			end
		end
	end
	if currentState == 4 or currentState == 4.1 then
		if eventToDoTable[buttonid]["event"]["cost"] <= moneyTotal then
			buttonDraw(3, 0, 0);	
		else
						buttonDraw(3, 0, 2);
		end
	elseif currentState == 5 then
		buttonDraw(1, 2, 0);
	elseif currentState == 6.1 then
		buttonDraw(2, 3, 0);
	elseif currentState == 9.6 or currentState == 10.5 or currentState == 11.5 or currentState == 12.5 then
		buttonDraw(1, 3, 0);
	elseif currentState == 9.5 then
		buttonDraw(1, 5, 0);
	elseif currentState == 20 then
		buttonDraw(1, 4, 0);
	end
	if globalState == 3 then
		buttonDraw(1, 4, 0);
	end
end

function renderRentArrows(y)
	local mx, my = love.mouse.getPosition()
	for i = 1, gridproperties[7]["rows"] do 
		local gridx = gridproperties[7]["xpos"]
		local gridy = gridproperties[7]["ypos"] + y + gridproperties[7]["height"]*(i-1) + gridproperties[7]["padding"]*(i-1)
		love.graphics.draw(arrowbuttons[i]["img1"], gridx, gridy, 0, 1, 1);
		if mx >= gridx and mx < gridx + arrowbuttons[i]["img1"]:getWidth()
		and my >= gridy and my < gridy + arrowbuttons[i]["img1"]:getHeight() then
			love.graphics.draw(arrowbuttons[i]["img2"], gridx, gridy, 0, 1, 1);
			if love.mouse.isDown(1) then
				love.graphics.draw(arrowbuttons[i]["img3"], gridx, gridy, 0, 1, 1);
			end
		end
	end
end

function renderNumberButtons()
	local mx, my = love.mouse.getPosition()
	for i = 1, #upgrades do 
		if upgrades[i]["cost"] <= moneyTotal and upgrades[i]["used"] == 0 then
			local gridx = gridproperties[8]["xpos"]
			local gridy = gridproperties[8]["ypos"] + gridproperties[8]["height"]*(i-1) + gridproperties[8]["padding"]*(i-1)
			love.graphics.draw(numberbuttons[i]["img1"], gridx, gridy, 0, 1, 1);
			if mx >= gridx and mx < gridx + numberbuttons[i]["img1"]:getWidth()
			and my >= gridy and my < gridy + numberbuttons[i]["img1"]:getHeight() then
				love.graphics.draw(numberbuttons[i]["img2"], gridx, gridy, 0, 1, 1);
				if love.mouse.isDown(1) then
					love.graphics.draw(numberbuttons[i]["img3"], gridx, gridy, 0, 1, 1);
				end
			end
		end
	end
end

--[[function renderTenantButtonsStack()
	gridproperties[3]["rows"] = #aI
	for i = 1, #aI do
		local gridx = gridproperties[3]["xpos"]
		local gridy = gridproperties[3]["ypos"] + gridproperties[3]["height"]*(i-1) + gridproperties[3]["padding"]*(i-1)
		if aI[i]["tenant"]["breed"] == "Persian" then
			love.graphics.draw(tenantbuttons[1]["img1"], gridx, gridy, 0, 1, 1);
		elseif aI[i]["tenant"]["breed"] == "Siamese" then
			love.graphics.draw(tenantbuttons[2]["img1"], gridx, gridy, 0, 1, 1);
		elseif aI[i]["tenant"]["breed"] == "Maine Coone" then
			love.graphics.draw(tenantbuttons[3]["img1"], gridx, gridy, 0, 1, 1);
		elseif aI[i]["tenant"]["breed"] == "Abyssinian" then
			love.graphics.draw(tenantbuttons[4]["img1"], gridx, gridy, 0, 1, 1);
		end
	end
end

]]--
	
function love.draw()

	love.graphics.setColor(255,255,255,255)
		
	local width = love.graphics.getWidth();
	local height = love.graphics.getHeight();
	local scalex = width/bgimage:getWidth();
	local scaley = height/bgimage:getHeight();
	
	if globalState == 1 then
		love.graphics.draw(bgimage, 0, 0, 0, scalex, scaley);
		renderWindowButtons();
		renderDoorButtons();
		renderEventButtons();
	elseif globalState == 2 then
		love.graphics.draw(bgimage, 0, 0, 0, scalex, scaley);
		love.graphics.draw(grey1024x576, 0, 0, 0, 1, 1);
		love.graphics.setColor(219,200,160,255)
		love.graphics.printf(text, 192, 160, 800, "left");
		love.graphics.setColor(255,255,255,255)
		if currentState ~= 11 and currentState ~= 11.5 then
			renderTenantButtons(buttonid);
		end
		if currentState == 20 then
			renderUpgradeButton();
		end
		if currentState == 5 then
			renderNumberButtons();
			renderBlankButtons();
		end
		if currentState == 4 or currentState == 4.1 or currentState == 6.1 or currentState == 9.5 or currentState == 9.6 or currentState == 10.5 or currentState == 11.5 or currentState == 12.5 or currentState == 20 then
			renderBlankButtons();
		elseif currentState == 0 or currentState == 1 or currentState == 1.6 or currentState == 1.7 or currentState == 2 or currentState == 3 or currentState == 5.5 or currentState == 6 or currentState == 6.5 or currentState == 7.5 or currentState == 8.5 then
			renderYesNoButtons();
		end
		if currentState == 1.6 or currentState == 1.7 then
			renderRentArrows(32);
			love.graphics.setColor(219,200,160,255)
			love.graphics.printf(text2, 192, 192, 800, "left");
			love.graphics.setColor(255,255,255,255)
		end
	elseif globalState == 3 then
		love.graphics.draw(bgimage, 0, 0, 0, scalex, scaley);
		love.graphics.draw(grey1024x576, 0, 0, 0, 1, 1);
		love.graphics.setColor(219,200,160,255)
		if apartmentInfo[buttonid]["size"] == 1 then
			love.graphics.printf("Apartment " .. apartmentInfo[buttonid]["apt"] .. " - " .. apartmentInfo[buttonid]["size"] .. " bedroom", width/2 - 220, 110, 440, "center");
		else
			love.graphics.printf("Apartment " .. apartmentInfo[buttonid]["apt"] .. " - " .. apartmentInfo[buttonid]["size"] .. " bedrooms", width/2 - 220, 110, 440, "center");
		end
		love.graphics.printf(text, 192, 136, 800, "left");
		love.graphics.printf(text2, 192, 160, 800, "left");
		love.graphics.printf(text2, 192, 160, 800, "left");
		love.graphics.setColor(255,255,255,255)
		renderTenantButtons(buttonid);
		renderAptActionButtons(buttonid)
		if apartmentInfo[buttonid]["full"] == 0 then
			renderRentArrows(0);
		end
		renderBlankButtons();
		if currentState == 2 then
			renderYesNoButtons();
		end
	elseif globalState == 4 then
		love.graphics.draw(bgimage, 0, 0, 0, scalex, scaley);
		love.graphics.draw(overlay, 0, 0, 0, scalex, scaley);
		renderWindowButtons();
	end

	if globalState ~= 4 then
		renderStaticButtons();
		local x = renderArrivalButtons();
		local x2 = renderComplaintButtons(x);
		renderEvictButtons(x2);
		renderActionButtons();
	end
	love.graphics.setColor(219,200,160,255)
	love.graphics.printf("Turn: " .. turn, width-184, 26, 120, "right");
	love.graphics.printf("Tenants: " .. tenantTotal, width/2 - 80, 26, 160, "center");
	love.graphics.print("Total: $" .. moneyTotal, 64, 26);
	love.graphics.setColor(255,255,255,255)
end

--- MOUSE PRESS

function doNextTurn()
	print("Next Turn")
	if endTurn == 0 then
		if #actionsCurrent > 0 then
			globalState = 2;
		end
		print("End turn");
		endTurn = 1;
		sCount = 0;
		tCount = 0;
		endActions(actionsCurrent[#actionsCurrent]);
		text = ""
		text2 = ""
	elseif endTurn == 2 then
		print("Press End Turn to go to next turn.")
		endTurn = 3;
	end
end

function RemoveOldAction()
	print("old action removed")
	actionConflict = 0;
	if actionsCurrent[conflictid]["atype"] == "evict" then
		table.insert(evictTable, actionsCurrent[conflictid]);
		table.remove(actionsCurrent, conflictid);
	elseif actionsCurrent[conflictid]["atype"] == "event" then
		table.insert(eventToDoTable, actionsCurrent[conflictid]);
		table.remove(actionsCurrent, conflictid);
	elseif actionsCurrent[conflictid]["atype"] == "talk" then
		actionsCurrent[conflictid]["tenant"]["status"] = 1
		table.remove(actionsCurrent, conflictid);
	elseif actionsCurrent[conflictid]["atype"] == "complaint" then
		table.remove(actionsCurrent, conflictid);
	end
	if conflictType == "evict" then
		currentState = 3;
		globalState = 2;
		text = ""
		text = evictPrint(buttonid);
	elseif conflictType == "event" then
		currentState = 4;
		globalState = 2;
		text = ""
		text = eventPrint(buttonid);
		print(currentState);
	elseif conflictType == "talk" then
		currentState = 2;
		globalState = 2;
		text = ""
		talkPrint(buttonid2);
	elseif conflictType == "complaint" then
		globalState = 2;
		currentState = 6;
		text = ""
		text = complaintPrint(buttonid);
	end
end

function AptDoor()
	local rentTotal = 0;
	local expenseTotal = 0;
	local balance = 0;
	local t = {}
	local ulist = ""
	for i = 1, #tenantCurrent do
		rentTotal = rentTotal + tenantCurrent[i]["apt"]["rent"];
	end
	for i = 1, #apartmentInfo do
		expenseTotal = expenseTotal + apartmentInfo[i]["expense"];
	end
	balance = rentTotal - expenseTotal;
	if #upgradesAdded > 0 then
		for i = 1, #upgradesAdded do
			table.insert(t, upgradesAdded[i]["uname"]);
		end
		ulist = table.concat(t, "\n");
	else
		ulist = "none"
	end
	globalState = 2;
	currentState = 20;
	text = "Apartment building 1\n\nApartments filled: " .. #tenantCurrent .. " out of " .. tenantMax .. "\n\nTotal rent: $" .. rentTotal .. "\n\nTotal expenses: $" .. expenseTotal .. "\n\nMonthly balance: $" .. balance .. 
	"\n\nBuilding upgrades: " .. ulist .. "\n\nComplaints filed against you: " .. cMult-1
end

function actionConflictCheck(x, n)
	actionConflict = 0
	text = ""
	if #actionsCurrent > 0 then
		for i = 1, #actionsCurrent do
			if actionsCurrent[i]["apt"]["apt"] == x then
				if n == "event" and actionsCurrent[i]["atype"] == "event" then
					print("2 repair events");
				else
					globalState = 2;
					text = "You cannot perform two conflicting actions involving the same tenant. Do you want to stick with this action and cancel the old action?"
					actionConflict = 1;
					conflictType = n
					return i
				end
			end
		end
	end
end

function tenantAptSelect(i)
	table.insert(actionsCurrent, {tenant = aI[buttonid]["tenant"], apt = apartmentInfo[i]});
	actionsCurrent[#actionsCurrent]["atype"] = "show";
	print("adding new show action " .. aI[buttonid]["tenant"]["name"]);
	table.remove(aI, buttonid);
end

function complaintFollowup()
	if complaintTable[buttonid]["tenant"]["complaint"] == 1 then
		if complaintTable[buttonid]["complaint"]["trigger"] == "noise" then
			text = complaintTable[buttonid]["tenant"]["name"]..": it's too noisy! Tell the neighbours to keep it down or I'm out of here."
		end
	end
	if complaintTable[buttonid]["tenant"]["complaint"] == 2 then
		if complaintTable[buttonid]["complaint"]["trigger"] == "noise" then
			text = complaintTable[buttonid]["tenant"]["name"]..": it's too noisy! Tell the neighbours to keep it down or I'm out of here."
		end
	end
	if complaintTable[buttonid]["tenant"]["complaint"] == 3 then
		text = "Contesting a complaint will reduce your action points by 1 for the next 2 turns. \n\nAre you sure you want to contest the complaint?"
	end
	if complaintTable[buttonid]["tenant"]["complaint"] == 4.1 then
		text = complaintTable[buttonid]["tenant"]["name"].." might stay if you offer to lower their rent. Do you want to do this?"
	end
end

function clickWindowButtons(mx, my)
	for i = 1, #apartmentInfo do
		local x = gridproperties[5]["xpos"] + gridproperties[5]["width"]*(apartmentInfo[i]["x"]-1) + gridproperties[5]["padding"]*(apartmentInfo[i]["x"]-1)
		local y = gridproperties[5]["ypos"] + gridproperties[5]["height"]*(apartmentInfo[i]["y"]-1) + gridproperties[5]["padding"]*(apartmentInfo[i]["y"]-1)
		local width = windowbuttons[1]["img1"]:getWidth();
		local height = windowbuttons[1]["img1"]:getHeight();
		if mx >= x and mx < x + width and my >= y and my < y + height then
			if currentState ~= 1.5 then
				buttonid = i
				aptInfoPrint(buttonid);
				print(buttonid);
				globalState = 3;
			else
				if apartmentInfo[i]["full"] == 0 and apartmentInfo[i]["size"] == aI[buttonid]["tenant"]["sizepref"] then
					buttonid2 = i;
					apartmentInfo[i]["full"] = 0.5;
					text = ""
					text = showPrint(buttonid);
					globalState = 2;
					currentState = 1.6;
					text2 = "\n\n\nSet monthly rent: $" .. apartmentInfo[buttonid2]["rent"]
					print("found matching apartment");
				else
					print("full or not right size")
				end
			end
		end
	end
end



function clickArrivalButtons(mx, my)
	for i = 1, #aI do
		local x = gridproperties[1]["xpos"] + gridproperties[1]["width"]*(i-1) + gridproperties[1]["padding"]*(i-1);
		local y =  gridproperties[1]["ypos"];
		local width = gridbuttons["newtenantbutton"]["img1"]:getWidth();
		local height = gridbuttons["newtenantbutton"]["img1"]:getHeight();
		if mx >= x and mx < x + width and my >= y and my < y + height then
			print("clicked on arrival button")
			buttonid = i;
			if #actionsCurrent < actionsTotal and endTurn ~= 1 and tenantArrives == 1 and currentState == 0 and #aI > 0 then
				globalState = 2;
				currentState = 1;
				text = ""
				text = showPrint(buttonid);
			end
		end
	end
end

function clickComplaintButtons(mx, my, startx)
	local n = 0;
	local v = 1;
	for i = 1, #complaintTable do
		if complaintTable[i]["complaint"]["seen"] == 1 then
			n = n + 1;
			v = 0;
		end
		if v == 1 then
			local x = startx + gridproperties[1]["width"]*(i-1-n) + gridproperties[1]["padding"]*(i-1-n);
			local y =  gridproperties[1]["ypos"];
			local width = gridbuttons["complaintbutton"]["img1"]:getWidth();
			local height = gridbuttons["complaintbutton"]["img1"]:getHeight();
			if mx >= x and mx < x + width and my >= y and my < y + height then
				print("clicked on complaint button")
				conflictid = actionConflictCheck(complaintTable[i]["apt"]["apt"], "complaint");
				buttonid = i;
				if actionConflict == 0 then	
					globalState = 2;
					currentState = 6;
					text = ""
					text = complaintPrint(buttonid);
				end
			end
		end
	end
end

function clickEventButtons(mx, my, startx)
	for i = 1, #eventToDoTable do
		local x = gridproperties[9]["xpos"] + gridproperties[9]["width"]*(eventToDoTable[i]["apt"]["x"]-1) + gridproperties[9]["padding"]*(eventToDoTable[i]["apt"]["x"]-1)-50;
		local y = gridproperties[9]["ypos"] + gridproperties[9]["height"]*(eventToDoTable[i]["apt"]["y"]-1) + gridproperties[9]["padding"]*(eventToDoTable[i]["apt"]["y"]-1);
		local width = gridbuttons["repairbutton"]["img1"]:getWidth()-4;
		local height = gridbuttons["repairbutton"]["img1"]:getHeight();
		if actionConflict == 0 then
			if mx >= x and mx < x + width and my >= y and my < y + height then
				print("clicked on event button")
				conflictid = actionConflictCheck(eventToDoTable[i]["apt"]["apt"], "event");
				buttonid = i;
				if actionConflict == 0 then
					if #actionsCurrent < actionsTotal and endTurn == 0 and eventToDoTable[#eventToDoTable] ~= nil and currentState ~= 4 then
						currentState = 4;
						globalState = 2;
						text = ""
						text = eventPrint(i);
						print("event no conflict" .. currentState);
					end
				end
			end
		end
	end
end

function clickEvictButtons(mx, my, startx)
	if globalState == 1 then
		for i = 1, #evictTable do
			local x = startx + gridproperties[1]["width"]*(i-1) + gridproperties[1]["padding"]*(i-1);
			local y = gridproperties[1]["ypos"];
			local width = gridbuttons["evictbutton"]["img1"]:getWidth();
			local height = gridbuttons["evictbutton"]["img1"]:getHeight();
			if mx >= x and mx < x + width and my >= y and my < y + height then
				if #actionsCurrent < actionsTotal and endTurn == 0 and currentState ~= 3 and #evictTable > 0 then
					print("clicked on evict button")
					conflictid = actionConflictCheck(evictTable[i]["apt"]["apt"], "evict");
					buttonid = i;
					if actionConflict == 0 then
						currentState = 3;
						globalState = 2;
						text = ""
						text = evictPrint(i);
					end
				end
			end
		end
	elseif globalState == 3 then
		local x = gridproperties[6]["xpos"]
		local y = gridproperties[6]["ypos"]
		local width = gridbuttons["evictbutton"]["img1"]:getWidth();
		local height = gridbuttons["evictbutton"]["img1"]:getHeight();
		if mx >= x and mx < x + width and my >= y and my < y + height then
			for i = 1, #evictTable do
				if tenantCurrent[buttonid2]["apt"]["apt"] == evictTable[i]["apt"]["apt"] then
				conflictid = actionConflictCheck(evictTable[i]["apt"]["apt"], "evict");
				buttonid = i;
					if actionConflict == 0 then
						currentState = 3;
						globalState = 2;
						text = ""
						text = evictPrint(i);
					end
				end
			end
		end
	end
end	

--selecting tenant to show apartment
function clickYesNoButtons(mx, my, b)
	for i = 1, gridproperties[4]["cols"] do
		local x = gridproperties[4]["xpos"] + gridproperties[4]["width"]*(i-1) + gridproperties[4]["padding"]*(i-1);
		local y =  gridproperties[4]["ypos"];
		local width = optionbuttons[1]["img1"]:getWidth();
		local height = optionbuttons[1]["img1"]:getHeight();
		if mx >= x and mx < x + width and my >= y and my < y + height then
			if i == 1 then
				if actionConflict == 0 then
					if #actionsCurrent < actionsTotal and endTurn ~= 1 then
						if currentState == 1 and #aI > 0 and sCount < #aI and aI[b]["tenant"]["status"] ~= 0.6 then
							print("yes tenant show")
							aI[b]["tenant"]["status"] = 0.6;
							currentState = 1.5;
							globalState = 4;
							print(currentState);
						end
						if currentState == 1.7 then
							print("yes tenant show 2")
							tenantAptSelect(buttonid2);
							globalState = 1;
							currentState = 0;
						end
						if currentState == 3 and #evictTable > 0 then
							print("Evicting " .. evictTable[b]["tenant"]["name"]);
							table.insert(actionsCurrent, {tenant = evictTable[b]["tenant"], apt = evictTable[b]["apt"]});
							actionsCurrent[#actionsCurrent]["atype"] = "evict";
							table.remove(evictTable, b);
							currentState = 0;
							globalState = 1;
						end
					end
					if currentState == 6 and #actionsCurrent < actionsTotal and endTurn ~= 1 then
						print("yes complaint")
						currentState = 6.5;
						globalState = 2;
						cid = buttonid;
						if complaintTable[buttonid]["tenant"]["complaint"] == 1 or complaintTable[buttonid]["tenant"]["complaint"] == 2 then
							if complaintTable[buttonid]["complaint"]["trigger"] == "event" then
								for i = 1, #eventToDoTable do
									if complaintTable[buttonid]["apt"]["apt"] == eventToDoTable[i]["apt"]["apt"] then
										conflictid = actionConflictCheck(eventToDoTable[i]["apt"]["apt"], "event");
										buttonid = i;
										if actionConflict == 0 and currentState ~= 4 then
											currentState = 4;
											globalState = 2;
											text = ""
											text = eventPrint(i);
											print("event no conflict" .. currentState);
										end
									break									
									end
								end
							else
								complaintFollowup();
							end
						else
							complaintFollowup();
						end
					end
					if currentState == 6.5 and #actionsCurrent < actionsTotal and endTurn ~= 1 then
						table.insert(actionsCurrent, {tenant = complaintTable[buttonid]["tenant"], apt = complaintTable[buttonid]["apt"]});
						actionsCurrent[#actionsCurrent]["atype"] = "complaint";
						table.remove(complaintTable, buttonid);
					end
					if currentState == 7.5 and actionsCurrent[#actionsCurrent]["tenant"]["status"] ~= 1 then
						print("yes")
						tenantAccept(actionsCurrent, #actionsCurrent);
					end
					if currentState == 8.5 then
						if actionsCurrent[#actionsCurrent]["tenant"]["status"] == 2 then
							actionsCurrent[#actionsCurrent]["tenant"]["status"] = 3;
							actionsCurrent[#actionsCurrent]["apt"]["buffer"] = 2;
							actionsCurrent[#actionsCurrent]["apt"]["full"] = 0;
							actionsCurrent[#actionsCurrent]["apt"]["event"] = 0;
							table.remove(actionsCurrent, #actionsCurrent);
							endActions(actionsCurrent[#actionsCurrent]);
						end
						for i = 1, #tenantCurrent do
							if tenantCurrent[i] ~= nil then
								if tenantCurrent[i]["tenant"]["status"] == 3 then
									table.remove(tenantCurrent, i);
								end
							end
						end
					end
					if currentState == 2 then
						print("talk yes")
						tenantTalkSelect(tenantCurrent, buttonid2);
					end
					if currentState == 5.5 then
						table.insert(actionsCurrent, {upgrade = upgrades[buttonid2]});
						actionsCurrent[#actionsCurrent]["atype"] = "upgrade";
						print("upgrading the " .. actionsCurrent[#actionsCurrent]["upgrade"]["uname"]);
						currentState = 0;
						globalState = 1;
					end
				elseif actionConflict == 1 then
					RemoveOldAction();
				end
			else
				if actionConflict == 0 then
					if #actionsCurrent < actionsTotal and endTurn ~= 1 and tenantArrives == 1 and currentState == 1 and #aI > 0 and sCount < #aI and aI[b]["tenant"]["status"] ~= 0.6 then
						print("no show")
						currentState = 0;
						globalState = 1;
					end
					if currentState == 1.7 and globalState == 2 then
						print("no show 2")
						apartmentInfo[buttonid2]["full"] = 0;
						aI[b]["tenant"]["status"] = 0;
						currentState = 0;
						globalState = 1;
					end
					if currentState == 3 and #evictTable > 0 then
						print("no evict")
						currentState = 0;
						globalState = 1;
						print("no");
					end
					if currentState == 6 then
						print("no complaint")
						currentState = 0;
						globalState = 1;
					end
					if currentState == 6.5 then
						print("no complaint 2")
						currentState = 0;
						globalState = 0;
					end
					if currentState == 7.5 and actionsCurrent[#actionsCurrent]["tenant"]["status"] ~= 1 then
						print("no");
						actionsCurrent[#actionsCurrent]["tenant"]["status"] = 0;
						actionsCurrent[#actionsCurrent]["apt"]["full"] = 0;
						table.remove(actionsCurrent, #actionsCurrent);
						endActions(actionsCurrent[#actionsCurrent]);
					end
					if currentState == 8.5 then
						print("no evict");
						table.insert(evictTable, actionsCurrent[#actionsCurrent]);
						table.remove(actionsCurrent, #actionsCurrent);
						endActions(actionsCurrent[#actionsCurrent]);
					end
					if currentState == 2 then
						print("no");
						currentState = 0;
						globalState = 1;
					end
					if currentState == 5.5 then
						print("no");
						currentState = 0;
						globalState = 1;
					end
				else
					print("action cancelled")
					actionConflict = 0;
					currentState = 0;
					globalState = 1;
				end
			end
		end
	end
end


function clickBlankButtons(mx, my)
	for i = 1, 3 do
		local x = gridproperties[4]["xpos"] + gridproperties[4]["width"]*(i-1) + gridproperties[4]["padding"]*(i-1);
		local y =  gridproperties[4]["ypos"];
		local width = optionbuttons[3]["img1"]:getWidth();
		local height = optionbuttons[3]["img1"]:getHeight();
		if mx >= x and mx < x + width and my >= y and my < y + height then
			if currentState == 4.1 and endTurn == 0 and eventToDoTable[buttonid] ~= nil and globalState == 2 then
				if i == 1 then
					if cid ~= 0 then
						complaintTable[cid]["tenant"]["complaint"] = 0;
						complaintTable[cid]["complaint"]["seen"] = 1;
					end
					print("clicked blank button 1");
					payEvent(eventToDoTable, buttonid);
					eventRecur();
					currentState = 0;
					globalState = 1;
				elseif i == 2 then
					if eventToDoTable[buttonid]["event"]["cost"] <= moneyTotal then
						if cid ~= 0 then
							complaintTable[cid]["tenant"]["complaint"] = 0;
							complaintTable[cid]["complaint"]["seen"] = 1;
						end
						print("clicked blank button 2");
						payEvent(eventToDoTable, buttonid);
						currentState = 0;
						globalState = 1;
					end
				else
					print("clicked blank button 3");
					currentState = 0;
					globalState = 1;
				end
			end
		end
	end
end

function clickOkButton(mx, my, b)
	local x = gridproperties[4]["xpos"];
	local y =  gridproperties[4]["ypos"];
	local width = optionbuttons[3]["img1"]:getWidth();
	local height = optionbuttons[3]["img1"]:getHeight();
	if mx >= x and mx < x + width and my >= y and my < y + height then
		print("clicked ok button");
		if endTurn == 0 then
			if currentState == 6.1 then
				complaintTable[b]["complaint"]["seen"] = 1;
				currentState = 0;
				globalState = 1;
			end
		else
			if globalState == 2 then
				if currentState == 12.5 then
					table.remove(actionsCurrent, #actionsCurrent);
					endActions(actionsCurrent[#actionsCurrent]);
				elseif currentState == 11.5 then
					actionsCurrent[#actionsCurrent]["upgrade"]["used"] = 1;
					table.insert(upgradesAdded, actionsCurrent[#actionsCurrent]["upgrade"]);
					table.remove(actionsCurrent, #actionsCurrent);
					endActions(actionsCurrent[#actionsCurrent]);
				elseif currentState == 10.5 then
					table.remove(actionsCurrent, #actionsCurrent);
					endActions(actionsCurrent[#actionsCurrent]);
				elseif currentState == 9.6 then
					qCount = 0;
					table.remove(actionsCurrent, #actionsCurrent);
					endActions(actionsCurrent[#actionsCurrent]);
				end
			end
		end
	end
end

function clickCancelButton(mx, my)
	local x = gridproperties[4]["xpos"];
	local y = gridproperties[4]["ypos"];
	local width = optionbuttons[3]["img1"]:getWidth();
	local height = optionbuttons[3]["img1"]:getHeight();
	if mx >= x and mx < x + width and my >= y and my < y + height then
		print("clicked exit button");
		if globalState == 3 then
			globalState = 1;
		end
		if globalState == 2 then
			if currentState == 20 or currentState == 5 then
				globalState = 1;
				currentState = 0;
			end
		end
	end
end

function clickNextButton(mx, my)
	local x = gridproperties[4]["xpos"];
	local y = gridproperties[4]["ypos"];
	local width = optionbuttons[3]["img1"]:getWidth();
	local height = optionbuttons[3]["img1"]:getHeight();
	if mx >= x and mx < x + width and my >= y and my < y + height then
		if currentState == 9.5 and qCount < #tenantTalkQuestions then
			currentState = 9;
		end
	end
end

function clickTalkButton(mx, my, b)
	local x = gridproperties[6]["xpos"]
	local y = gridproperties[6]["ypos"] + gridproperties[6]["height"] + gridproperties[6]["padding"]
	local width = gridbuttons["talkbutton"]["img1"]:getWidth();
	local height = gridbuttons["talkbutton"]["img1"]:getHeight();
	if mx >= x and mx < x + width and my >= y and my < y + height then
		conflictid = actionConflictCheck(apartmentInfo[buttonid]["apt"], "talk");
		if actionConflict == 0 then
			print("clicked talk button")
			currentState = 2;
			globalState = 2;
			talkPrint(b);
		end
	end
end

function clickRentArrows(mx, my, b, y)
	local x = gridproperties[7]["xpos"]
	local y = gridproperties[7]["ypos"] + y
	local width = arrowbuttons[1]["img1"]:getWidth();
	local height = arrowbuttons[1]["img1"]:getHeight();
	if mx >= x and mx < x + width and my >= y and my < y + height then
		print("clicked up arrow");
		apartmentInfo[b]["rent"] = apartmentInfo[b]["rent"] + 5;
		text2 = "\n\n\nSet monthly rent: $" .. apartmentInfo[b]["rent"]
	elseif  mx >= x and mx < x + width and my >= y + gridproperties[7]["height"] + gridproperties[7]["padding"] and my < y + gridproperties[7]["height"] + gridproperties[7]["padding"] + height then
		if apartmentInfo[b]["rent"] > 0 then
			print("clicked down arrow");
			apartmentInfo[b]["rent"] = apartmentInfo[b]["rent"] - 5;
			text2 = "\n\n\nSet monthly rent: $" .. apartmentInfo[b]["rent"]
		end
	end
end

function clickDoorButtons(mx,my)
	for i = 1, #doorbuttons do
		if mx >= doorbuttons[i]["x"] and mx < doorbuttons[i]["x"] + doorbuttons[i]["img1"]:getWidth()
		and my >= doorbuttons[i]["y"] and my < doorbuttons[i]["y"] + doorbuttons[i]["img1"]:getHeight() then
			if doorbuttons[i]["func"] ~= nil then
				doorbuttons[i]["func"]();
			end
		end
	end
end

function clickUpgradeButtons(mx, my)
	local x = gridproperties[6]["xpos"]
	local y = gridproperties[6]["ypos"]
	local width = gridbuttons["upgradebutton"]["img1"]:getWidth();
	local height = gridbuttons["upgradebutton"]["img1"]:getHeight();
	if mx >= x and mx < x + width and my >= y and my < y + height then
		print("clicked upgrade button")
		if #actionsCurrent < actionsTotal and endTurn == 0 and currentState == 20 then
			globalState = 2;
			currentState = 5;
			upgradePrint();
		end
	end
end

function clickNumbers(mx, my)
	local n = 0;
	local v = 1;
	for i = 1, #upgrades do 
		if upgrades[i]["cost"] > moneyTotal or upgrades[i]["used"] == 1 then
			n = n + 1;
			v = 0;
		end
		if v == 1 then
			local x = gridproperties[8]["xpos"]
			local y = gridproperties[8]["ypos"] + gridproperties[8]["height"]*(i-1-n) + gridproperties[8]["padding"]*(i-1-n)
			local width = numberbuttons[1]["img1"]:getWidth();
			local height = numberbuttons[1]["img1"]:getHeight();
			if mx >= x and mx < x + width and my >= y and my < y + height then
				buttonid2 = i;
				currentState = 5.5;
				upgradePrint();
			end
		end
	end
end
				

function clickActionButtons(mx,my)
	for i = 1, #actionsCurrent do
		x = gridproperties[2]["xpos"] + gridproperties[2]["width"]*(i-1) + gridproperties[2]["padding"]*(i-1)
		y = gridproperties[2]["ypos"]
		local width = gridbuttons["talkbutton"]["img1"]:getWidth();
		local height = gridbuttons["talkbutton"]["img1"]:getHeight();
		if mx >= x and mx < x + width and my >= y and my < y + height then
			print("clicked action button")
			undoAction(i);
		end
	end
end

--[[function clickSetRentButton(mx, my, b)
	if apartmentInfo[b]["full"] == 0 then
		local b = buttonid;
		local x = gridproperties[6]["xpos"];
		local y = gridproperties[6]["ypos"];
		local width = gridbuttons[9]["img1"]:getWidth();
		local height = gridbuttons[9]["img1"]:getHeight();
		if mx >= x and mx < x + width and my >= y and my < y + height then
			print("clicked set rent button");
			currentState = 12;
		end
	end
end
]]--

--[[function clickTenantButtons(mx, my)
	for i = 1, #aI do
		local x = gridproperties[3]["xpos"]
		local y =  gridproperties[3]["ypos"] + gridproperties[3]["height"]*(i-1) + gridproperties[3]["padding"]*(i-1);
		local width = gridbuttons["repairbutton"]["img1"]:getWidth();
		local height = gridbuttons["repairbutton"]["img1"]:getHeight();
		if mx >= x and mx < x + width and my >= y and my < my + height then
			print("clicked on tenant button")
		end
	end
end]]--


		
function love.mousepressed(mx, my, button)

if currentState == 1.6 then
	print("switching from 1.6 to 1.7")
	currentState = 1.7;
elseif currentState == 4 then
	print("switching from 4 to 4.1")
	currentState = 4.1;
end

end

function love.mousereleased(mx, my, button)

    -- your code
	for i = 1, #staticbuttons do
		if mx >= staticbuttons[i]["x"] and mx < staticbuttons[i]["x"] + staticbuttons[i]["img1"]:getWidth()
		and my >= staticbuttons[i]["y"] and my < staticbuttons[i]["y"] + staticbuttons[i]["img1"]:getHeight() then
			if staticbuttons[i]["func"] ~= nil then
				staticbuttons[i]["func"]();
			end
		end
	end
	if globalState == 1 then
		clickDoorButtons(mx, my);
		clickWindowButtons(mx, my);
		clickArrivalButtons(mx, my);
		local x = renderArrivalButtons();
		local x2 = renderComplaintButtons(x);
		clickComplaintButtons(mx, my, x)
		clickEventButtons(mx, my);
		clickEvictButtons(mx, my, x2);
		clickActionButtons(mx,my)
	end
	if globalState == 2 then
		if currentState == 4.1 then
			clickBlankButtons(mx, my);
		elseif currentState == 5 then
			clickNumbers(mx, my);
			clickCancelButton(mx, my);
		elseif endTurn == 0 and currentState == 6.1 then
			clickOkButton(mx, my, buttonid);
		elseif endTurn == 1 and currentState == 11.5 or currentState == 10.5 or currentState == 9.6 then
			clickOkButton(mx, my, buttonid);
		elseif currentState == 9.5 and endTurn == 1 then
			clickNextButton(mx, my);
		elseif currentState == 20 then
			clickUpgradeButtons(mx, my);
			clickCancelButton(mx, my);
		elseif currentState ~= 1.5 then
			clickYesNoButtons(mx, my, buttonid);
		end
		if currentState == 1.6 or currentState == 1.7 then
			clickRentArrows(mx, my, buttonid2, 32);
		end
	end
	if globalState == 3 then
		clickCancelButton(mx, my);
		if tenantCurrent[buttonid2] ~= nil and tenantCurrent[buttonid2]["tenant"]["status"] ~= 1.1 then
			clickTalkButton(mx, my, buttonid2);
		end
		if apartmentInfo[buttonid]["full"] == 0 then
			clickRentArrows(mx, my, buttonid, 0);
		else
			clickEvictButtons(mx, my, 0);
		end
	end
	if globalState == 4 then
		clickWindowButtons(mx, my);
	end
	
	if endTurn == 1 and #actionsCurrent == 0 then
		endTurn = 3;
	end


end

function love.keypressed(key, unicode)
-- 7/1 = showing, 8/3 = evicting, 9/2 = talking, 10/4 = event, 11/5 = upgrading, 12/6 = complaint, 13 = set rent

--print info
	if key == "p" then
		printActions();
	end
	if key == "o" then
		printSelectedActions();
	end
	if key == "i" then
		printApts();
	end
	
	-- talking current tenant, states 0, 2
--[[	
	if #tenantCurrent > 0 and tCount < #tenantCurrent then
		if currentState == 0 then 
			if key == "t" then
				talkPrint();
			end
		end	

		if currentState == 2 then
			for i = 1, #tenantCurrent do
				if key == tostring(i) and tenantCurrent[i]["tenant"]["status"] ~= 1.1 then
					tenantTalkSelect(tenantCurrent, i);
				end
			end
		end
	end
]]--
	--talking end turn

-- evict tenants
--[[
	if #actionsCurrent < actionsTotal then
		if currentState == 0 then
			if #evictTable > 0 then
				if key == "e" then
					print("Evict tenant");
					currentState = 3;
					evictPrint();
				end
			end
		end
		
if currentState == 3 then
			if #evictTable > 0 then
				for i = 1, #evictTable do
					if key == tostring(i) then
						print("Evicting " .. evictTable[i]["tenant"]["name"]);
						table.insert(actionsCurrent, {tenant = evictTable[i]["tenant"], apt = evictTable[i]["apt"]});
						actionsCurrent[#actionsCurrent]["atype"] = "evict";
						table.remove(evictTable, i);
						currentState = 0;
					end
				end
			end
		end
	end

-- evict end turn 
	if actionsCurrent[#actionsCurrent] ~= nil and endTurn == 1 then
		if actionsCurrent[#actionsCurrent]["atype"] == "evict" and currentState == 8 then
			local x = math.random(#tenantEvictDialogue);
			print(tenantEvictDialogue[x]);
			print("Evict " .. actionsCurrent[#actionsCurrent]["tenant"]["name"] .. " Y or N?");
			if key == "y" then
				if actionsCurrent[#actionsCurrent]["tenant"]["status"] == 2 then
					actionsCurrent[#actionsCurrent]["tenant"]["status"] = 3;
					actionsCurrent[#actionsCurrent]["apt"]["full"] = 0;
					print("You evicted " .. actionsCurrent[#actionsCurrent]["tenant"]["name"]);
					table.remove(actionsCurrent, #actionsCurrent);
					endActions(actionsCurrent[#actionsCurrent]);
				end
				for i = 1, #tenantCurrent do
					if tenantCurrent[i] ~= nil then
						if tenantCurrent[i]["tenant"]["status"] == 3 then
							table.remove(tenantCurrent, i);
						end
					end
				end
			elseif key == "n" then
				print("no");
				table.insert(evictTable, actionsCurrent[#actionsCurrent]);
				table.remove(actionsCurrent, #actionsCurrent);
				endActions(actionsCurrent[#actionsCurrent]);
			end
		end
	end
]]--	
--repair and exterminate

	
-- repair end turn

		
--upgrade

	if #actionsCurrent < actionsTotal and endTurn == 0 then
		if upgradesActive == 1 then
			if key == "q" then
				currentState = 0;
			end
			if key == "u" and currentState == 0 then
				for i = 1, #upgrades do
					if upgrades[i]["cost"] <= moneyTotal and upgrades[i]["used"] == 0 then
						currentState = 5;
					end
				end
				if currentState == 5 then
					upgradePrint();
				end
			end
			for i = 1, #upgrades do
				if upgrades[i] ~= nil and upgrades[i]["used"] == 0 then
					if currentState == 5 and key == tostring(i) then
						table.insert(actionsCurrent, {upgrade = upgrades[i]});
						actionsCurrent[#actionsCurrent]["atype"] = "upgrade";
						print("You are upgrading the " .. actionsCurrent[#actionsCurrent]["upgrade"]["uname"]);
						currentState = 0;
					end
				end
			end
		end
	end

-- upgrade end turn

	if currentState == 11 and endTurn == 1 then
		if actionsCurrent[#actionsCurrent] ~= nil then
			moneyTotal = moneyTotal - actionsCurrent[#actionsCurrent]["upgrade"]["cost"];
			actionsCurrent[#actionsCurrent]["upgrade"]["used"] = 1;
			table.insert(upgradesAdded, actionsCurrent[#actionsCurrent]["upgrade"]);
			print(actionsCurrent[#actionsCurrent]["upgrade"]["uname"] .. " upgraded");
			print("Money remaining: $" .. moneyTotal);
			table.remove(actionsCurrent, #actionsCurrent);
			endActions(actionsCurrent[#actionsCurrent]);
		end
	end

-- undo actions

	if #actionsCurrent > 0 then
		if turnCount == turn then
			if key == "x" then
				undoAction();
			end
		end
	end
	

end

function love.keyreleased(key)

    -- your code


end




