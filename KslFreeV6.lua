First = gg.isPackageInstalled("com.ksl.gaming.gg")
if First == false then
gg.alert("Install KSL GG MOD Version️️")
os.exit()
end
gg.alert("🇲🇲 𝐊𝐒𝐋𝐆𝐚𝐦𝐢𝐧𝐒14 ❁𝐊𝐨𝐬𝐚𝐫𝐥𝐚𝐲❁")

function split(szFullString, szSeparator, ...) 
  local nFindStartIndex = 1 
  local nSplitIndex = 1 
  local nSplitArray = {} 
  while true do 
    local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) 
    if not nFindLastIndex then 
      nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) 
      break 
    end 
    nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) 
    nFindStartIndex = nFindLastIndex + string.len(szSeparator) 
    nSplitIndex = nSplitIndex + 1 
  end 
  return nSplitArray 
end 

function xgxc(szpy, qmxg, ...)
  for i = 1, #qmxg do
    xgpy = szpy + qmxg[i]["offset"]
    xglx = qmxg[i]["type"]
    xgsz = qmxg[i]["value"]
    xgdj = qmxg[i]["freeze"]
    if xgdj == nil or xgdj == "" then
      gg.setValues({
        [1] = {
          address = xgpy,
          flags = xglx,
          value = xgsz
        }
      })
    else
      gg.addListItems({
        [1] = {
          address = xgpy,
          flags = xglx,
          freeze = xgdj,
          value = xgsz
        }
      })
    end
    xgsl = xgsl + 1
    xgjg = true
  end
end

function xqmnb(qmnb, ...)
  gg.clearResults()
  gg.setRanges(qmnb[1]["memory"])
  gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"])
  if gg.getResultCount() == 0 then
    gg.toast(qmnb[2]["name"] .. " ")
  else
    gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
    gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
    gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
    if gg.getResultCount() == 0 then
      gg.toast(qmnb[2]["name"] .. "Failed to open")
    else
      sl = gg.getResults(999999)
      sz = gg.getResultCount()
      xgsl = 0
      if 999999 < sz then
        sz = 999999
      end
      for i = 1, sz do
        pdsz = true
        for i = 4, #qmnb do
          if pdsz == true then
            pysz = {}
            pysz[1] = {}
            pysz[1].address = sl[i].address + qmnb[i]["offset"]
            pysz[1].flags = qmnb[i]["type"]
            szpy = gg.getValues(pysz)
            pdpd = qmnb[i]["lv"] .. ";" .. szpy[1].value
            szpd = split(pdpd, ";")
            tzszpd = szpd[1]
            pyszpd = szpd[2]
            if tzszpd == pyszpd then
              pdjg = true
              pdsz = true
            else
              pdjg = false
              pdsz = false
            end
          end
        end
        if pdjg == true then
          szpy = sl[i].address
          xgxc(szpy, qmxg)
        end
      end
      if xgjg == true then
        gg.toast(qmnb[2]["name"] .. "Successfully opened，一Altogether" .. xgsl .. "Article data")
      else
        gg.toast(qmnb[2]["name"] .. "No data found，Failed to open")
      end
    end
  end
end

START = 1
BYPDONE = 0
CMENU = 0




gg.setVisible(false)
gg.clearResults()
function START(...)
  MN2 = gg.choice({
    "♻️ 𝐀𝐧𝐭𝐢𝐛𝐚𝐧 𝐁𝐲𝐩𝐚𝐬𝐬  ❁𝐋𝐨𝐛𝐛𝐲❁ ",
    "⛰️ 𝐖𝐚𝐥𝐥𝐡𝐚𝐜𝐤 & 𝐁𝐨𝐝𝐲 𝐂𝐨𝐥𝐨𝐮𝐫 ❁𝐓𝐫𝐚𝐢𝐧𝐢𝐧𝐠❁",
    "🌊 𝐖𝐞𝐚𝐩𝐨𝐧 𝐇𝐚𝐜𝐤 ❁𝐋𝐨𝐛𝐛𝐲❁",
    "💣 𝐖𝐞𝐚𝐩𝐨𝐧 𝐇𝐚𝐜𝐤 ❁𝐈𝐧 𝐆𝐚𝐦𝐞❁",
    "📶️ 𝐀𝐮𝐭𝐨 𝐃𝐚𝐭𝐚 𝐎𝐧/𝐎𝐟𝐟 ❁𝐈𝐧 𝐆𝐚𝐦𝐞❁",
    "✖️ 𝐄 𝐱 𝐢 𝐭"
  }, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
  if MN2 == nil then
  else
    if MN2 == 1 then
      BYPASS()
    end
    if MN2 == 2 then
      WHC()
    end
    if MN2 == 3 then
      INLOOBY2()
    end
    if MN2 == 4 then
      INGAME2()
    end
    if MN2 == 5 then
      DATAONOFF()
    end
    if MN2 == 6 then
      CLOSE()
    end
  end
  PUBGMH = -1
end

function DATAONOFF(...)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
  gg.searchNumber("1.1754945e-37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("91C", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("📵 ɪɴᴛᴇʀɴᴇᴛ ᴅɪsᴄᴏɴɴᴇᴄᴛᴇᴅ 📵")
  gg.sleep(5000)
  gg.searchNumber("0", gg.TYPE_FLOAT)
  gg.refineAddress("91C", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("1.1754945e-37", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("✅ ɪɴᴛᴇʀɴᴇᴛ ᴄᴏɴɴᴇᴄᴛᴇᴅ ✅")
end



function BYPASS(...)
  TENMIN2MN = gg.choice({
    "☣️ 𝐀𝐧𝐭𝐢𝐛𝐚𝐧 𝐆𝐥𝐨𝐛𝐚𝐥 𝐁𝐲𝐩𝐚𝐬𝐬",
    "☣️ 𝐀𝐧𝐭𝐢𝐛𝐚𝐧 𝐊𝐨𝐫𝐞𝐚 𝐁𝐲𝐩𝐚𝐬𝐬",
    "⬅️ 𝐁𝐚𝐜𝐤"
  }, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
  if TENMIN2MN == nil then
  else
    if TENMIN2MN == 1 then
      AABAN1()
    end
    if TENMIN2MN == 2 then
      AABAN2()
    end
    if TENMIN2MN == 3 then
      START()
    end
  end
  PUBGMH = -1
end




function AABAN1()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.alert("⚠️ Activation failed \n Use 32 bit PUBG with this bypass⚡")
    os.exit()
  else
    gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    resultsCount = gg.getResultCount()
    results = gg.getResults(resultsCount)
    for i = 1, resultsCount do
      gg.addListItems({[1] = {address = results[i].address + 48,flags = 4,freeze = true,value = 70032}})
      gg.addListItems({[1] = {address = results[i].address + 100,flags = 4,freeze = true,value = 4451}})
    end
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("16610;8388646;8388805", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("30", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("257D;0~99999F;1D;0D::300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultsCount()
  gg.searchNumber("0~9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.clearResults()
  gg.alert("💥 Successfully Activated GlobalBypass 💥")
end

function AABAN2()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.alert("⚠️ Activation failed \n Use 32 bit PUBG with this bypass⚡")
    os.exit()
  else
    gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    resultsCount = gg.getResultCount()
    results = gg.getResults(resultsCount)
    for i = 1, resultsCount do
      gg.addListItems({[1] = {address = results[i].address + 48,flags = 4,freeze = true,value = 70032}})
      gg.addListItems({[1] = {address = results[i].address + 100,flags = 4,freeze = true,value = 4452}})
    end
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("16610;8388646;8388805", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("30", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("257D;0~99999F;1D;0D::300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultsCount()
  gg.searchNumber("0~9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.clearResults()
  gg.alert("💥 Successfully Activated Korea Bypass 💥")
end







function WHC()
KOSARLAY = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  400 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  410 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  415 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  425 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  430 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  435 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  439 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  450 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  600 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  610 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  615 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  616 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  625 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  626 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  630 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  632 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  636 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  650 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  652 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  653 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  660 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  665 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  670 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  675 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  710 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  712 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  730 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  800 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  801 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  805 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  808 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  810 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  815 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  820 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  821 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  835 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  845 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  855 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁",
"⛔️  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if KOSARLAY == nil then else
if KOSARLAY[1] == true then ksl2() end
if KOSARLAY[2] == true then ksl3() end
if KOSARLAY[3] == true then ksl4() end
if KOSARLAY[4] == true then ksl5() end
if KOSARLAY[5] == true then ksl6() end
if KOSARLAY[6] == true then ksl7() end
if KOSARLAY[7] == true then ksl8() end
if KOSARLAY[8] == true then ksl9() end
if KOSARLAY[9] == true then ksl10() end
if KOSARLAY[10] == true then ksl11() end
if KOSARLAY[11] == true then ksl12() end
if KOSARLAY[12] == true then ksl13() end
if KOSARLAY[13] == true then ksl14() end
if KOSARLAY[14] == true then ksl15() end
if KOSARLAY[15] == true then ksl16() end
if KOSARLAY[16] == true then ksl17() end
if KOSARLAY[17] == true then ksl18() end
if KOSARLAY[18] == true then ksl19() end
if KOSARLAY[19] == true then ksl20() end
if KOSARLAY[20] == true then ksl21() end
if KOSARLAY[21] == true then ksl22() end
if KOSARLAY[22] == true then ksl23() end
if KOSARLAY[23] == true then ksl24() end
if KOSARLAY[24] == true then ksl25() end
if KOSARLAY[25] == true then ksl26() end
if KOSARLAY[26] == true then ksl27() end
if KOSARLAY[27] == true then ksl28() end
if KOSARLAY[28] == true then ksl29() end
if KOSARLAY[29] == true then ksl30() end
if KOSARLAY[30] == true then ksl31() end
if KOSARLAY[31] == true then ksl32() end
if KOSARLAY[32] == true then ksl33() end
if KOSARLAY[33] == true then ksl34() end
if KOSARLAY[34] == true then ksl35() end
if KOSARLAY[35] == true then ksl36() end
if KOSARLAY[36] == true then ksl37() end
if KOSARLAY[37] == true then ksl38() end
if KOSARLAY[38] == true then ksl39() end
if KOSARLAY[39] == true then START() end
  WUMING = -1
 end
end



function ksl2()
SD400 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  400 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  400 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  400 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD400 == nil then else
if SD400[1] == true then SD1() end
if SD400[2] == true then SD2() end
if SD400[3] == true then SD3() end
if SD400[4] == true then SD4() end
if SD400[5] == true then SD5() end
if SD400[6] == true then HOME() end
  WUMING = -1
 end
end

function SD1()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("228;1,073,741,824;1,073,741,824;229;-1,082,130,432:29", 4, false, 536870912, 0, -1)
gg.searchNumber("1,073,741,824", 4, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("1,123,024,896", 4)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 400")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 400 𝐆𝐫𝐞𝐞𝐧")
end

function SD2()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("228;1,073,741,824;1,073,741,824;229;-1,082,130,432:29", 4, false, 536870912, 0, -1)
gg.searchNumber("1,073,741,824", 4, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("1,123,024,896", 4)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 400")
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 400 𝐑𝐞𝐝")
end

function SD3()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("228;1,073,741,824;1,073,741,824;229;-1,082,130,432:29", 4, false, 536870912, 0, -1)
gg.searchNumber("1,073,741,824", 4, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("1,123,024,896", 4)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 400")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("256D;8,200D;13D", 4, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8198", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 400 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD4()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD5()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl3()
SD410 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  410 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  410 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  410 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD410 == nil then else
if SD410[1] == true then SD6() end
if SD410[2] == true then SD7() end
if SD410[3] == true then SD8() end
if SD410[4] == true then SD9() end
if SD410[5] == true then SD10() end
if SD410[6] == true then HOME() end
  WUMING = -1
 end
end

function SD6()
gg.clearResults()
gg.setRanges(1)
gg.searchNumber("3.1949605e-43;3.1809475e-43;2.0;3.2089735e-43", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("150", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8204;8205;1,194,344,451", 4, false, 536870912, 0, -1)
gg.searchNumber("8204", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("15", 4)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,669,693,440;8205", 4, false, 536870912, 0, -1)
gg.searchNumber("8205", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("8204", 4)
gg.clearResults()
gg.toast("Wallhack SD 410")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 410 𝐆𝐫𝐞𝐞𝐧")
end

function SD7()
gg.clearResults()
gg.setRanges(1)
gg.searchNumber("3.1949605e-43;3.1809475e-43;2.0;3.2089735e-43", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("150", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8204;8205;1,194,344,451", 4, false, 536870912, 0, -1)
gg.searchNumber("8204", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("15", 4)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,669,693,440;8205", 4, false, 536870912, 0, -1)
gg.searchNumber("8205", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("8204", 4)
gg.clearResults()
gg.toast("Wallhack SD 410")
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 410 𝐑𝐞𝐝")
end

function SD8()
gg.clearResults()
gg.setRanges(1)
gg.searchNumber("3.1949605e-43;3.1809475e-43;2.0;3.2089735e-43", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("150", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8204;8205;1,194,344,451", 4, false, 536870912, 0, -1)
gg.searchNumber("8204", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("15", 4)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,669,693,440;8205", 4, false, 536870912, 0, -1)
gg.searchNumber("8205", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("8204", 4)
gg.clearResults()
gg.toast("Wallhack SD 410")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("256D;8,200D;13D", 4, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8198", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 410 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD9()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD10()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl4()
SD415 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  415 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  415 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  415 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD415 == nil then else
if SD415[1] == true then SD11() end
if SD415[2] == true then SD12() end
if SD415[3] == true then SD13() end
if SD415[4] == true then SD14() end
if SD415[5] == true then SD15() end
if SD415[6] == true then HOME() end
  WUMING = -1
 end
end

function SD11()
gg.clearResults()
gg.setRanges(1)
gg.searchNumber("228;1,073,741,824;1,073,741,824;229;-1,082,130,432:29", 4, false, 536870912, 0, -1)
gg.searchNumber("1,073,741,824", 4, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("1,123,024,896", 4)
gg.clearResults()
gg.setRanges(1)
gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("3.1809475e-43;3.1949605e-43;2.0;3.2089735e-43:53", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 415")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 415 𝐆𝐫𝐞𝐞𝐧")
end

function SD12()
gg.clearResults()
gg.setRanges(1)
gg.searchNumber("228;1,073,741,824;1,073,741,824;229;-1,082,130,432:29", 4, false, 536870912, 0, -1)
gg.searchNumber("1,073,741,824", 4, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("1,123,024,896", 4)
gg.clearResults()
gg.setRanges(1)
gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("3.1809475e-43;3.1949605e-43;2.0;3.2089735e-43:53", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 415")
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 415 𝐑𝐞𝐝")
end

function SD13()
gg.clearResults()
gg.setRanges(1)
gg.searchNumber("228;1,073,741,824;1,073,741,824;229;-1,082,130,432:29", 4, false, 536870912, 0, -1)
gg.searchNumber("1,073,741,824", 4, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("1,123,024,896", 4)
gg.clearResults()
gg.setRanges(1)
gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("3.1809475e-43;3.1949605e-43;2.0;3.2089735e-43:53", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 415")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("256D;8,200D;13D", 4, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8198", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 415 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD14()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD15()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl5()
SD425 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  425 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  425 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  425 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD425 == nil then else
if SD425[1] == true then SD16() end
if SD425[2] == true then SD17() end
if SD425[3] == true then SD18() end
if SD425[4] == true then SD19() end
if SD425[5] == true then SD20() end
if SD425[6] == true then HOME() end
  WUMING = -1
 end
end

function SD16()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("3.15292154e-43;2.0;2.0;3.1949605e-43:73", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(3000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("3.15292154e-43;2.0;2.0;3.1949605e-43;4.34402524e-44;2.0;4.62428493e-44;4.76441478e-44:241", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(3000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("120", 16)
gg.toast("Wallhack SD 425")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 425 𝐆𝐫𝐞𝐞𝐧")
end

function SD17()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("3.15292154e-43;2.0;2.0;3.1949605e-43:73", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(3000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("3.15292154e-43;2.0;2.0;3.1949605e-43;4.34402524e-44;2.0;4.62428493e-44;4.76441478e-44:241", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(3000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("120", 16)
gg.toast("Wallhack SD 425")
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 425 𝐑𝐞𝐝")
end

function SD18()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("3.15292154e-43;2.0;2.0;3.1949605e-43:73", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(3000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("3.15292154e-43;2.0;2.0;3.1949605e-43;4.34402524e-44;2.0;4.62428493e-44;4.76441478e-44:241", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(3000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("120", 16)
gg.toast("Wallhack SD 425")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("256D;8,200D;13D", 4, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8198", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 425 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD19()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD20()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl6()
SD430 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  430 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  430 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  430 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD430 == nil then else
if SD430[1] == true then SD21() end
if SD430[2] == true then SD22() end
if SD430[3] == true then SD23() end
if SD430[4] == true then SD24() end
if SD430[5] == true then SD25() end
if SD430[6] == true then HOME() end
  WUMING = -1
 end
end

function SD21()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(999)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(999)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 430")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 430 𝐆𝐫𝐞𝐞𝐧")
end

function SD22()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(999)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(999)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 430")
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 430 𝐑𝐞𝐝")
end

function SD23()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(999)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(999)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 430")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("256D;8,200D;13D", 4, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8198", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 430 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD24()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD25()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl7()
SD435 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  435 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  435 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  435 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD435 == nil then else
if SD435[1] == true then SD26() end
if SD435[2] == true then SD27() end
if SD435[3] == true then SD28() end
if SD435[4] == true then SD29() end
if SD435[5] == true then SD30() end
if SD435[6] == true then HOME() end
  WUMING = -1
 end
end

function SD26()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("504", -1, 16, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("10", 16)
gg.clearResults()
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("900", -1, 16, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("10", 16)
gg.clearResults()
gg.toast("Wallhack SD 435")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 435 𝐆𝐫𝐞𝐞𝐧")
end

function SD27()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("504", -1, 16, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("10", 16)
gg.clearResults()
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("900", -1, 16, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("10", 16)
gg.clearResults()
gg.toast("Wallhack SD 435")
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 435 𝐑𝐞𝐝")
end

function SD28()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("504", -1, 16, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("10", 16)
gg.clearResults()
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("900", -1, 16, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("10", 16)
gg.clearResults()
gg.toast("Wallhack SD 435")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("256D;8,200D;13D", 4, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8198", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 435 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD29()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD30()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl8()
SD439 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  439 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  439 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  439 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD439 == nil then else
if SD439[1] == true then SD31() end
if SD439[2] == true then SD32() end
if SD439[3] == true then SD33() end
if SD439[4] == true then SD34() end
if SD439[5] == true then SD35() end
if SD439[6] == true then HOME() end
  WUMING = -1
 end
end

function SD31()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;-127.0F::520", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 439")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 439 𝐆𝐫𝐞𝐞𝐧")
end

function SD32()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;-127.0F::520", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 439")
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 439 𝐑𝐞𝐝")
end

function SD33()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;-127.0F::520", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 439")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("256D;8,200D;13D", 4, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8198", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 439 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD34()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD35()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl9()
SD450 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  450 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  450 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  450 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD450 == nil then else
if SD450[1] == true then SD36() end
if SD450[2] == true then SD37() end
if SD450[3] == true then SD38() end
if SD450[4] == true then SD39() end
if SD450[5] == true then SD40() end
if SD439[6] == true then HOME() end
  WUMING = -1
 end
end

function SD36()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.toast("Wallhack SD 450")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 450 𝐆𝐫𝐞𝐞𝐧")
end

function SD37()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.toast("Wallhack SD 450")
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 450 𝐑𝐞𝐝")
end

function SD38()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.toast("Wallhack SD 450")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("256D;8,200D;13D", 4, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8198", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 450 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD39()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD40()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl10()
SD600 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  600 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  600 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  600 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD600 == nil then else
if SD600[1] == true then SD41() end
if SD600[2] == true then SD42() end
if SD600[3] == true then SD43() end
if SD600[4] == true then SD44() end
if SD600[5] == true then SD45() end
if SD600[6] == true then HOME() end
  WUMING = -1
 end
end

function SD41()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 600")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 600 𝐆𝐫𝐞𝐞𝐧")
end

function SD42()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 600")
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 600 𝐑𝐞𝐝")
end

function SD43()
gg.setRanges(131072)
gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 600")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("256D;8,200D;13D", 4, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8198", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 600 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD44()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD45()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl11()
SD610 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  610 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  610 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  610 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD610 == nil then else
if SD610[1] == true then SD46() end
if SD610[2] == true then SD47() end
if SD610[3] == true then SD48() end
if SD610[4] == true then SD49() end
if SD610[5] == true then SD50() end
if SD610[6] == true then HOME() end
  WUMING = -1
 end
end

function SD46()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 610")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 610 𝐆𝐫𝐞𝐞𝐧")
end

function SD47()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 610")
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 610 𝐑𝐞𝐝")
end

function SD48()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 610")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("256D;8,200D;13D", 4, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8198", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 610 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD49()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD50()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl12()
SD615 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  615 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  615 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  615 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD615 == nil then else
if SD615[1] == true then SD51() end
if SD615[2] == true then SD52() end
if SD615[3] == true then SD53() end
if SD615[4] == true then SD54() end
if SD615[5] == true then SD55() end
if SD615[6] == true then HOME() end
  WUMING = -1
 end
end

function SD51()
gg.clearResults()
gg.setRanges(1)
gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("3.1809475e-43;3.1949605e-43;2.0;3.2089735e-43:53", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 615")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 615 𝐆𝐫𝐞𝐞𝐧")
end

function SD52()
gg.clearResults()
gg.setRanges(1)
gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("3.1809475e-43;3.1949605e-43;2.0;3.2089735e-43:53", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 615")
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 615 𝐑𝐞𝐝")
end

function SD53()
gg.clearResults()
gg.setRanges(1)
gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("3.1809475e-43;3.1949605e-43;2.0;3.2089735e-43:53", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 615")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("256D;8,200D;13D", 4, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8198", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 615 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD54()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD55()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl13()
SD616 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  616 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  616 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  616 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD616 == nil then else
if SD616[1] == true then SD56() end
if SD616[2] == true then SD57() end
if SD616[3] == true then SD58() end
if SD616[4] == true then SD59() end
if SD616[5] == true then SD60() end
if SD616[6] == true then HOME() end
  WUMING = -1
 end
end

function SD56()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 616")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 616 𝐆𝐫𝐞𝐞𝐧")
end

function SD57()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 616")
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 616 𝐑𝐞𝐝")
end

function SD58()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 616")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("256D;8,200D;13D", 4, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8198", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 616 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD59()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD60()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl14()
SD625 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  625 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  625 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  625 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD625 == nil then else
if SD625[1] == true then SD61() end
if SD625[2] == true then SD62() end
if SD625[3] == true then SD63() end
if SD625[4] == true then SD64() end
if SD625[5] == true then SD65() end
if SD625[6] == true then HOME() end
  WUMING = -1
 end
end

function SD61()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.toast("Wallhack SD 625")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 625 𝐆𝐫𝐞𝐞𝐧")
end

function SD62()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.toast("Wallhack SD 625")
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 625 𝐑𝐞𝐝")
end

function SD63()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.toast("Wallhack SD 625")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("256D;8,200D;13D", 4, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8198", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 625 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD64()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD65()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl15()
SD626 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  626 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  626 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  626 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD626 == nil then else
if SD626[1] == true then SD66() end
if SD626[2] == true then SD67() end
if SD626[3] == true then SD68() end
if SD626[4] == true then SD69() end
if SD626[5] == true then SD70() end
if SD626[6] == true then HOME() end
  WUMING = -1
 end
end

function SD66()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,900,553;178;37;2F::", 4, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.25;3.75000071526;331,813D;2::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("720,918;1,081,081,860;397,358;50,331,648;2F::", 4, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("671,236,101;1,074,790,406;178;12;2F::", 4, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 626")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 626 𝐆𝐫𝐞𝐞𝐧")
end

function SD67()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,900,553;178;37;2F::", 4, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.25;3.75000071526;331,813D;2::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("720,918;1,081,081,860;397,358;50,331,648;2F::", 4, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("671,236,101;1,074,790,406;178;12;2F::", 4, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 626")
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 626 𝐑𝐞𝐝")
end

function SD68()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,900,553;178;37;2F::", 4, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.25;3.75000071526;331,813D;2::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("720,918;1,081,081,860;397,358;50,331,648;2F::", 4, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("671,236,101;1,074,790,406;178;12;2F::", 4, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 626")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("256D;8,200D;13D", 4, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8198", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 626 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD69()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD70()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl16()
SD630 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  630 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  630 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  630 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD630 == nil then else
if SD630[1] == true then SD71() end
if SD630[2] == true then SD72() end
if SD630[3] == true then SD73() end
if SD630[4] == true then SD74() end
if SD630[5] == true then SD75() end
if SD630[6] == true then HOME() end
  WUMING = -1
 end
end

function SD71()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("504")
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("900")
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 630")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 630 𝐆𝐫𝐞𝐞𝐧")
end

function SD72()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("504")
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 630")
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("900")
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 630")
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 630 𝐑𝐞𝐝")
end

function SD73()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("504")
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("900")
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 630")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("256D;8,200D;13D", 4, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8198", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 630 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD74()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD75()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl17()
SD632 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  632 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  632 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  632 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD632 == nil then else
if SD632[1] == true then SD76() end
if SD632[2] == true then SD77() end
if SD632[3] == true then SD78() end
if SD632[4] == true then SD79() end
if SD632[5] == true then SD80() end
if SD632[6] == true then HOME() end
  WUMING = -1
 end
end

function SD76()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("504")
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("900")
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 632")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 632 𝐆𝐫𝐞𝐞𝐧")
end

function SD77()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("504")
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("900")
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 632")
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 632 𝐑𝐞𝐝")
end

function SD78()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("504")
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("900")
gg.getResults(20)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 632")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("256D;8,200D;13D", 4, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8198", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 632 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD79()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD80()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl18()
SD636 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  636 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ White",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  636 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  636 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD636 == nil then else
if SD636[1] == true then SD81() end
if SD636[2] == true then SD82() end
if SD636[3] == true then SD83() end
if SD636[4] == true then SD84() end
if SD636[5] == true then SD85() end
if SD636[6] == true then HOME() end
  WUMING = -1
 end
end

function SD81()
gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", 16, false, 536870912, 0, -1)
  gg.searchNumber("2", 16, false, 536870912, 0, -1)
  gg.getResults(30)
  gg.editAll("120", 16)
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;-127.0F::520", 16, false, 536870912, 0, -1)
  gg.searchNumber("2", 16, false, 536870912, 0, -1)
  gg.getResults(20)
  gg.editAll("120", 16)
  gg.clearResults()
gg.toast("Wallhack SD 636")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("5", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 636 White")
end

function SD82()
gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", 16, false, 536870912, 0, -1)
  gg.searchNumber("2", 16, false, 536870912, 0, -1)
  gg.getResults(30)
  gg.editAll("120", 16)
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;-127.0F::520", 16, false, 536870912, 0, -1)
  gg.searchNumber("2", 16, false, 536870912, 0, -1)
  gg.getResults(20)
  gg.editAll("120", 16)
  gg.clearResults()
gg.toast("Wallhack SD 636")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 636 𝐑𝐞𝐝")
end

function SD83()
gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", 16, false, 536870912, 0, -1)
  gg.searchNumber("2", 16, false, 536870912, 0, -1)
  gg.getResults(30)
  gg.editAll("120", 16)
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;-127.0F::520", 16, false, 536870912, 0, -1)
  gg.searchNumber("2", 16, false, 536870912, 0, -1)
  gg.getResults(20)
  gg.editAll("120", 16)
  gg.clearResults()
gg.toast("Wallhack SD 636")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 636 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD84()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD85()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl19()
SD650 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  650 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  650 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  650 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD650 == nil then else
if SD650[1] == true then SD86() end
if SD650[2] == true then SD87() end
if SD650[3] == true then SD88() end
if SD650[4] == true then SD89() end
if SD650[5] == true then SD90() end
if SD650[6] == true then HOME() end
  WUMING = -1
 end
end

function SD86()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", 16, false, 536870912, 0, -1)
gg.searchNumber(2, 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", 16, false, 536870912, 0, -1)
gg.searchNumber(2, 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 650")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 650 𝐆𝐫𝐞𝐞𝐧")
end

function SD87()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", 16, false, 536870912, 0, -1)
gg.searchNumber(2, 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", 16, false, 536870912, 0, -1)
gg.searchNumber(2, 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 650")
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 650 𝐑𝐞𝐝")
end

function SD88()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", 16, false, 536870912, 0, -1)
gg.searchNumber(2, 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", 16, false, 536870912, 0, -1)
gg.searchNumber(2, 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 650")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("256D;8,200D;13D", 4, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8198", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 650 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD89()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD90()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl20()
SD652 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  652 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  652 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  652 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD652 == nil then else
if SD652[1] == true then SD91() end
if SD652[2] == true then SD92() end
if SD652[3] == true then SD93() end
if SD652[4] == true then SD94() end
if SD652[5] == true then SD95() end
if SD652[6] == true then HOME() end
  WUMING = -1
 end
end

function SD91()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", 16, false, 536870912, 0, -1)
gg.searchNumber(2, 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", 16, false, 536870912, 0, -1)
gg.searchNumber(2, 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 652")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 652 𝐆𝐫𝐞𝐞𝐧")
end

function SD92()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", 16, false, 536870912, 0, -1)
gg.searchNumber(2, 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", 16, false, 536870912, 0, -1)
gg.searchNumber(2, 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 652")
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 652 𝐑𝐞𝐝")
end

function SD93()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", 16, false, 536870912, 0, -1)
gg.searchNumber(2, 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", 16, false, 536870912, 0, -1)
gg.searchNumber(2, 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 652")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("256D;8,200D;13D", 4, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8198", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 652 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD94()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD95()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl21()
SD653 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  653 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  653 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  653 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD653 == nil then else
if SD653[1] == true then SD96() end
if SD653[2] == true then SD97() end
if SD653[3] == true then SD98() end
if SD653[4] == true then SD99() end
if SD653[5] == true then SD100() end
if SD653[6] == true then HOME() end
  WUMING = -1
 end
end

function SD96()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", 16, false, 536870912, 0, -1)
gg.searchNumber(2, 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", 16, false, 536870912, 0, -1)
gg.searchNumber(2, 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 653")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 653 𝐆𝐫𝐞𝐞𝐧")
end

function SD97()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", 16, false, 536870912, 0, -1)
gg.searchNumber(2, 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", 16, false, 536870912, 0, -1)
gg.searchNumber(2, 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 653")
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 653 𝐑𝐞𝐝")
end

function SD98()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", 16, false, 536870912, 0, -1)
gg.searchNumber(2, 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", 16, false, 536870912, 0, -1)
gg.searchNumber(2, 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 653")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("256D;8,200D;13D", 4, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8198", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 653 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD99()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD100()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl22()
SD660 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  660 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  660 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  660 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐁𝐥𝐮𝐞",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD660 == nil then else
if SD660[1] == true then SD101() end
if SD660[2] == true then SD102() end
if SD660[3] == true then SD103() end
if SD660[4] == true then SD104() end
if SD660[5] == true then SD105() end
if SD660[6] == true then HOME() end
  WUMING = -1
 end
end

function SD101()
 gg.clearResults()
    if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
gg.searchNumber("-2147086191", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("4C8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("1168777216", gg.TYPE_DWORD)
gg.clearResults()
   if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
gg.searchNumber("-2145644352", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7E0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("1168777216", gg.TYPE_DWORD)
gg.clearResults()
    if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
gg.searchNumber("7,41529732e-29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Wallhack SD 660")
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.clearResults()
  gg.searchNumber("256;8200;13::150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 660 𝐆𝐫𝐞𝐞𝐧")
end

function SD102()
 gg.clearResults()
    if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
gg.searchNumber("-2147086191", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("4C8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("1168777216", gg.TYPE_DWORD)
gg.clearResults()
   if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
gg.searchNumber("-2145644352", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7E0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("1168777216", gg.TYPE_DWORD)
gg.clearResults()
    if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
gg.searchNumber("7,41529732e-29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Wallhack SD 660")
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("256;8200;13::150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 660 𝐑𝐞𝐝")
end

function SD103()
 gg.clearResults()
    if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
gg.searchNumber("-2147086191", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("4C8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("1168777216", gg.TYPE_DWORD)
gg.clearResults()
   if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
gg.searchNumber("-2145644352", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7E0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("1168777216", gg.TYPE_DWORD)
gg.clearResults()
    if gg.REGION_VIDEO == nil then
    VB = gg.REGION_BAD
  else
    VB = gg.REGION_VIDEO
  end
  gg.setRanges(VB)
gg.searchNumber("7,41529732e-29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Wallhack SD 660")
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.clearResults()
  gg.searchNumber("256;8200;13::150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("3", gg.TYPE_DWORD)
  gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 660 𝐁𝐥𝐮𝐞")
end

function SD104()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD105()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl23()
SD665 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  665 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  665 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  665 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD665 == nil then else
if SD665[1] == true then SD106() end
if SD665[2] == true then SD107() end
if SD665[3] == true then SD108() end
if SD665[4] == true then SD109() end
if SD665[5] == true then SD110() end
if SD665[6] == true then HOME() end
  WUMING = -1
 end
end

function SD106()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("6.03209094e21", 16, false, 536870912, 0, -1)
gg.getResults(6281913639784)
gg.editAll("0", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("-2.57741948e-39", 16, false, 536870912, 0, -1)
gg.getResults(6281913639784)
gg.editAll("0", 16)
gg.clearResults()
gg.toast("Wallhack SD 665")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 665 𝐆𝐫𝐞𝐞𝐧")
end

function SD107()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("6.03209094e21", 16, false, 536870912, 0, -1)
gg.getResults(6281913639784)
gg.editAll("0", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("-2.57741948e-39", 16, false, 536870912, 0, -1)
gg.getResults(6281913639784)
gg.editAll("0", 16)
gg.clearResults()
gg.toast("Wallhack SD 665")
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 665 𝐑𝐞𝐝")
end

function SD108()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("6.03209094e21", 16, false, 536870912, 0, -1)
gg.getResults(6281913639784)
gg.editAll("0", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("-2.57741948e-39", 16, false, 536870912, 0, -1)
gg.getResults(6281913639784)
gg.editAll("0", 16)
gg.clearResults()
gg.toast("Wallhack SD 665")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("256D;8,200D;13D", 4, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8198", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 665 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD109()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD110()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl24()
SD670 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  670 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  670 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  670 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD670 == nil then else
if SD670[1] == true then SD111() end
if SD670[2] == true then SD112() end
if SD670[3] == true then SD113() end
if SD670[4] == true then SD114() end
if SD670[5] == true then SD115() end
if SD670[6] == true then HOME() end
  WUMING = -1
 end
end

function SD111()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("6.03209094e21", 16, false, 536870912, 0, -1)
gg.getResults(6281913639784)
gg.editAll("0", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("-2.57741948e-39", 16, false, 536870912, 0, -1)
gg.getResults(6281913639784)
gg.editAll("0", 16)
gg.clearResults()
gg.toast("Wallhack SD 670")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 670 𝐆𝐫𝐞𝐞𝐧")
end

function SD112()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("6.03209094e21", 16, false, 536870912, 0, -1)
gg.getResults(6281913639784)
gg.editAll("0", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("-2.57741948e-39", 16, false, 536870912, 0, -1)
gg.getResults(6281913639784)
gg.editAll("0", 16)
gg.clearResults()
gg.toast("Wallhack SD 670")
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 670 𝐑𝐞𝐝")
end

function SD113()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("6.03209094e21", 16, false, 536870912, 0, -1)
gg.getResults(6281913639784)
gg.editAll("0", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("-2.57741948e-39", 16, false, 536870912, 0, -1)
gg.getResults(6281913639784)
gg.editAll("0", 16)
gg.clearResults()
gg.toast("Wallhack SD 670")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("256D;8,200D;13D", 4, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8198", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 670 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD114()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD115()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl25()
SD675 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  675 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  675 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  675 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD675 == nil then else
if SD675[1] == true then SD116() end
if SD675[2] == true then SD117() end
if SD675[3] == true then SD118() end
if SD675[4] == true then SD119() end
if SD675[5] == true then SD120() end
if SD675[6] == true then HOME() end
  WUMING = -1
 end
end

function SD116()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("200")
gg.getResults(999)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("930")
gg.getResults(999)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 675")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 675 𝐆𝐫𝐞𝐞𝐧")
end

function SD117()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("200")
gg.getResults(999)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("930")
gg.getResults(999)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 675")
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 675 𝐑𝐞𝐝")
end

function SD118()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("200")
gg.getResults(999)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("930")
gg.getResults(999)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 675")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("256D;8,200D;13D", 4, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8198", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 675 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD119()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD120()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl26()
SD710 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  710 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  710 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  710 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD710 == nil then else
if SD710[1] == true then SD121() end
if SD710[2] == true then SD122() end
if SD710[3] == true then SD123() end
if SD710[4] == true then SD124() end
if SD710[5] == true then SD125() end
if SD710[6] == true then HOME() end
  WUMING = -1
 end
end

function SD121()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("274,677,779D;2.25000452995;2;1.6623054e-19", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("130", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("218D;3.7615819e-37;2;-1;1", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("95D;2;9.2194229e-41", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(15)
gg.editAll("130", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("206D;3.7615819e-37;2;-1;1", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.toast("Wallhack SD 710")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 710 𝐆𝐫𝐞𝐞𝐧")
end

function SD122()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("274,677,779D;2.25000452995;2;1.6623054e-19", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("130", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("218D;3.7615819e-37;2;-1;1", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("95D;2;9.2194229e-41", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(15)
gg.editAll("130", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("206D;3.7615819e-37;2;-1;1", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.toast("Wallhack SD 710")
gg.clearResults()
gg.setRanges(131072)
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 710 𝐑𝐞𝐝")
end

function SD123()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("274,677,779D;2.25000452995;2;1.6623054e-19", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("130", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("218D;3.7615819e-37;2;-1;1", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("95D;2;9.2194229e-41", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(15)
gg.editAll("130", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("206D;3.7615819e-37;2;-1;1", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.toast("Wallhack SD 710")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("256D;8,200D;13D", 4, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8198", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 710 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD124()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD125()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl27()
SD712 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  712 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  712 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  712 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD712 == nil then else
if SD712[1] == true then SD126() end
if SD712[2] == true then SD127() end
if SD712[3] == true then SD128() end
if SD712[4] == true then SD129() end
if SD712[5] == true then SD130() end
if SD712[6] == true then HOME() end
  WUMING = -1
 end
end

function SD126()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("95D;2;9.2194229e-41::100", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(999)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("2;-1;0;1;-127;0.24022650719;0.69314718246;0.00999999978::30", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(999)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 712")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 712 𝐆𝐫𝐞𝐞𝐧")
end

function SD127()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("95D;2;9.2194229e-41::100", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(999)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("2;-1;0;1;-127;0.24022650719;0.69314718246;0.00999999978::30", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(999)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 712")
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 712 𝐑𝐞𝐝")
end

function SD128()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("95D;2;9.2194229e-41::100", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(999)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("2;-1;0;1;-127;0.24022650719;0.69314718246;0.00999999978::30", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(999)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 712")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("256D;8,200D;13D", 4, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8198", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 712 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD129()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD130()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl28()
SD730 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  730 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  730 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  730 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD730 == nil then else
if SD730[1] == true then SD131() end
if SD730[2] == true then SD132() end
if SD730[3] == true then SD133() end
if SD730[4] == true then SD134() end
if SD730[5] == true then SD135() end
if SD730[6] == true then HOME() end
  WUMING = -1
 end
end

function SD131()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("6.03209094e21", 16, false, 536870912, 0, -1)
gg.getResults(6281913639784)
gg.editAll("0", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("-2.57741948e-39", 16, false, 536870912, 0, -1)
gg.getResults(6281913639784)
gg.editAll("0", 16)
gg.clearResults()
gg.toast("Wallhack SD 730")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 730 𝐆𝐫𝐞𝐞𝐧")
end

function SD132()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("6.03209094e21", 16, false, 536870912, 0, -1)
gg.getResults(6281913639784)
gg.editAll("0", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("-2.57741948e-39", 16, false, 536870912, 0, -1)
gg.getResults(6281913639784)
gg.editAll("0", 16)
gg.clearResults()
gg.toast("Wallhack SD 730")
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 730 𝐑𝐞𝐝")
end

function SD133()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("6.03209094e21", 16, false, 536870912, 0, -1)
gg.getResults(6281913639784)
gg.editAll("0", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("-2.57741948e-39", 16, false, 536870912, 0, -1)
gg.getResults(6281913639784)
gg.editAll("0", 16)
gg.clearResults()
gg.toast("Wallhack SD 730")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("256D;8,200D;13D", 4, false, 536870912, 0, -1)
gg.getResultsCount()
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8198", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 730 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD134()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD135()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl29()
SD800 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  800 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  800 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  800 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD800 == nil then else
if SD800[1] == true then SD136() end
if SD800[2] == true then SD137() end
if SD800[3] == true then SD138() end
if SD800[4] == true then SD139() end
if SD800[5] == true then SD140() end
if SD800[6] == true then HOME() end
  WUMING = -1
 end
end

function SD136()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("5.1097599e21;2.0;1.6623071e-19;3.6734297e-39;1.66433e10::17", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("2.0;-1.0;0.0;1.0;-127.0::17", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 800")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8201", 4, false, 536870912, 0, -1)
gg.refineNumber("0A0")
gg.getResults(999)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 800 𝐆𝐫𝐞𝐞𝐧")
end

function SD137()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("5.1097599e21;2.0;1.6623071e-19;3.6734297e-39;1.66433e10::17", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("2.0;-1.0;0.0;1.0;-127.0::17", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 800")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("098", -1, 4, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 800 𝐑𝐞𝐝")
end

function SD138()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("5.1097599e21;2.0;1.6623071e-19;3.6734297e-39;1.66433e10::17", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("2.0;-1.0;0.0;1.0;-127.0::17", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 800")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8201", 4, false, 536870912, 0, -1)
gg.refineAddress("0A0", -1, 4, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 800 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD139()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD140()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl30()
SD801 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  801 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  801 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  801 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD801 == nil then else
if SD801[1] == true then SD141() end
if SD801[2] == true then SD142() end
if SD801[3] == true then SD143() end
if SD801[4] == true then SD144() end
if SD801[5] == true then SD145() end
if SD801[6] == true then HOME() end
  WUMING = -1
 end
end

function SD141()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("3.15292154e-43;2.0;2.0;3.1949605e-43:73", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(3000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("3.15292154e-43;2.0;2.0;3.1949605e-43;4.34402524e-44;2.0;4.62428493e-44;4.76441478e-44:241", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(3000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("120", 16)
gg.toast("Wallhack SD 801")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8201", 4, false, 536870912, 0, -1)
gg.refineNumber("0A0")
gg.getResults(999)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 801 𝐆𝐫𝐞𝐞𝐧")
end

function SD142()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("3.15292154e-43;2.0;2.0;3.1949605e-43:73", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(3000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("3.15292154e-43;2.0;2.0;3.1949605e-43;4.34402524e-44;2.0;4.62428493e-44;4.76441478e-44:241", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(3000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("120", 16)
gg.toast("Wallhack SD 801")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("098", -1, 4, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 801 𝐑𝐞𝐝")
end

function SD143()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("3.15292154e-43;2.0;2.0;3.1949605e-43:73", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(3000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("3.15292154e-43;2.0;2.0;3.1949605e-43;4.34402524e-44;2.0;4.62428493e-44;4.76441478e-44:241", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(3000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("120", 16)
gg.toast("Wallhack SD 801")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8201", 4, false, 536870912, 0, -1)
gg.refineAddress("0A0", -1, 4, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 801 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD144()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD145()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl31()
SD805 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  805 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  805 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  805 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD805 == nil then else
if SD805[1] == true then SD146() end
if SD805[2] == true then SD147() end
if SD805[3] == true then SD148() end
if SD805[4] == true then SD149() end
if SD805[5] == true then SD150() end
if SD805[6] == true then HOME() end
  WUMING = -1
 end
end

function SD146()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 805")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8201", 4, false, 536870912, 0, -1)
gg.refineNumber("0A0")
gg.getResults(999)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 805 𝐆𝐫𝐞𝐞𝐧")
end

function SD147()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 805")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("098", -1, 4, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 805 𝐑𝐞𝐝")
end

function SD148()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 805")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8201", 4, false, 536870912, 0, -1)
gg.refineAddress("0A0", -1, 4, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 805 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD149()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD150()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl32()
SD808 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  808 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  808 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  808 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD808 == nil then else
if SD808[1] == true then SD151() end
if SD808[2] == true then SD152() end
if SD808[3] == true then SD153() end
if SD808[4] == true then SD154() end
if SD808[5] == true then SD155() end
if SD808[6] == true then HOME() end
  WUMING = -1
 end
end

function SD151()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 808")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8201", 4, false, 536870912, 0, -1)
gg.refineNumber("0A0")
gg.getResults(999)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 808 𝐆𝐫𝐞𝐞𝐧")
end

function SD152()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 808")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("098", -1, 4, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 808 𝐑𝐞𝐝")
end

function SD153()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 808")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8201", 4, false, 536870912, 0, -1)
gg.refineAddress("0A0", -1, 4, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 808 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD154()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD155()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl33()
SD810 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  810 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  810 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  810 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD810 == nil then else
if SD810[1] == true then SD156() end
if SD810[2] == true then SD157() end
if SD810[3] == true then SD158() end
if SD810[4] == true then SD159() end
if SD810[5] == true then SD160() end
if SD810[6] == true then HOME() end
  WUMING = -1
 end
end

function SD156()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 810")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8201", 4, false, 536870912, 0, -1)
gg.refineNumber("0A0")
gg.getResults(999)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 810 𝐆𝐫𝐞𝐞𝐧")
end

function SD157()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 810")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("098", -1, 4, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 810 𝐑𝐞𝐝")
end

function SD158()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 810")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8201", 4, false, 536870912, 0, -1)
gg.refineAddress("0A0", -1, 4, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 810 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD159()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD160()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl34()
SD815 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  815 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  815 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  815 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD815 == nil then else
if SD815[1] == true then SD161() end
if SD815[2] == true then SD162() end
if SD815[3] == true then SD163() end
if SD815[4] == true then SD164() end
if SD815[5] == true then SD165() end
if SD815[6] == true then HOME() end
  WUMING = -1
 end
end

function SD161()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.toast("Wallhack SD 815")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8201", 4, false, 536870912, 0, -1)
gg.refineNumber("0A0")
gg.getResults(999)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 815 𝐆𝐫𝐞𝐞𝐧")
end

function SD162()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.toast("Wallhack SD 815")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("098", -1, 4, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 815 𝐑𝐞𝐝")
end

function SD163()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.toast("Wallhack SD 815")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8201", 4, false, 536870912, 0, -1)
gg.refineAddress("0A0", -1, 4, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 815 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD164()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD165()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl35()
SD820 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  820 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  820 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  820 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",

"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD820 == nil then else
if SD820[1] == true then SD166() end
if SD820[2] == true then SD167() end
if SD820[3] == true then SD168() end
if SD820[4] == true then SD169() end
if SD820[5] == true then SD170() end
if SD820[6] == true then HOME() end
  WUMING = -1
 end
end

function SD166()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 820")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8201", 4, false, 536870912, 0, -1)
gg.refineNumber("0A0")
gg.getResults(999)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 820 𝐆𝐫𝐞𝐞𝐧")
end

function SD167()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 820")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("098", -1, 4, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 820 𝐑𝐞𝐝")
end

function SD168()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("Wallhack SD 820")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8201", 4, false, 536870912, 0, -1)
gg.refineAddress("0A0", -1, 4, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 820 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD169()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD170()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl36()
SD821 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  821 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  821 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  821 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD821 == nil then else
if SD821[1] == true then SD171() end
if SD821[2] == true then SD172() end
if SD821[3] == true then SD173() end
if SD821[4] == true then SD174() end
if SD821[5] == true then SD175() end
if SD821[6] == true then HOME() end
  WUMING = -1
 end
end

function SD171()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.toast("Wallhack SD 821")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8201", 4, false, 536870912, 0, -1)
gg.refineNumber("0A0")
gg.getResults(999)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 821 𝐆𝐫𝐞𝐞𝐧")
end

function SD172()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.toast("Wallhack SD 821")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("098", -1, 4, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 821 𝐑𝐞𝐝")
end

function SD173()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.toast("Wallhack SD 821")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8201", 4, false, 536870912, 0, -1)
gg.refineAddress("0A0", -1, 4, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 821 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD174()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD175()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl37()
SD835 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  835 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  835 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  835 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD835 == nil then else
if SD835[1] == true then SD176() end
if SD835[2] == true then SD177() end
if SD835[3] == true then SD178() end
if SD835[4] == true then SD179() end
if SD835[5] == true then SD180() end
if SD835[6] == true then HOME() end
  WUMING = -1
 end
end

function SD176()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", 16, false, 536870912, 0, -1)
gg.searchNumber(2, 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", 16, false, 536870912, 0, -1)
gg.searchNumber(2, 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("7.1746481e-43;1.0842022e-19;94.015625;7.0776718e-15;2::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(5)
gg.editAll("9999", 16)
gg.toast("Wallhack SD 835")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8201", 4, false, 536870912, 0, -1)
gg.refineNumber("0A0")
gg.getResults(999)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 835 𝐆𝐫𝐞𝐞𝐧")
end

function SD177()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", 16, false, 536870912, 0, -1)
gg.searchNumber(2, 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", 16, false, 536870912, 0, -1)
gg.searchNumber(2, 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("7.1746481e-43;1.0842022e-19;94.015625;7.0776718e-15;2::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(5)
gg.editAll("9999", 16)
gg.toast("Wallhack SD 835")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("098", -1, 4, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 835 𝐑𝐞𝐝")
end

function SD178()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", 16, false, 536870912, 0, -1)
gg.searchNumber(2, 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", 16, false, 536870912, 0, -1)
gg.searchNumber(2, 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("7.1746481e-43;1.0842022e-19;94.015625;7.0776718e-15;2::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(5)
gg.editAll("9999", 16)
gg.toast("Wallhack SD 835")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8201", 4, false, 536870912, 0, -1)
gg.refineAddress("0A0", -1, 4, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("8199", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 835 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD179()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD180()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl38()
SD845 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  845 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐆𝐫𝐞𝐞𝐧",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  845 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  845 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",

"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD845 == nil then else
if SD845[1] == true then SD181() end
if SD845[2] == true then SD182() end
if SD845[3] == true then SD183() end
if SD845[4] == true then SD184() end
if SD845[5] == true then SD185() end
if SD845[6] == true then HOME() end
  WUMING = -1
 end
end

function SD181()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("95D;2;9.2194229e-41::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("5.201992e21;2.25000452995;2;1.6623054e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2;-1;0;1;-127;0.24022650719;0.69314718246;0.00999999978::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Wallhack SD 845")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 845 𝐆𝐫𝐞𝐞𝐧")
end

function SD182()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("95D;2;9.2194229e-41::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("5.201992e21;2.25000452995;2;1.6623054e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2;-1;0;1;-127;0.24022650719;0.69314718246;0.00999999978::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Wallhack SD 845")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 845 𝐑𝐞𝐝")
end

function SD183()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("95D;2;9.2194229e-41::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("5.201992e21;2.25000452995;2;1.6623054e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2;-1;0;1;-127;0.24022650719;0.69314718246;0.00999999978::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Wallhack SD 845")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8,192D;256D;65,540D;12D;8200D", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.refineAddress("338")
gg.getResults(10)
gg.editAll("6", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 845 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD184()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD185()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function ksl39()
SD855 = gg.multiChoice({
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  855 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐑𝐞𝐝",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  855 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ White",
"🐉  𝐒𝐧𝐚𝐩𝐝𝐫𝐚𝐠𝐨𝐧  855 ❁𝐂𝐨𝐥𝐨𝐮𝐫❁ 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝",
"🐉  𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰",
"🐉  𝐁𝐚𝐜𝐤"}, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
if SD855 == nil then else
if SD855[1] == true then SD186() end
if SD855[2] == true then SD187() end
if SD855[3] == true then SD188() end
if SD855[4] == true then SD189() end
if SD855[5] == true then SD190() end
if SD855[6] == true then HOME() end
  WUMING = -1
 end
end

function SD186()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(228)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 855 𝐑𝐞𝐝")
end

function SD187()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(228)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 855 𝐆𝐫𝐞𝐞𝐧")
end

function SD188()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(228)
gg.editAll("5", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐒𝐃 855 𝐘𝐞𝐥𝐥𝐨𝐰")
end

function SD189()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8200;1194380048;283705351;1081098260;15:17", 4, false, 536870912, 0, -1)
gg.refineNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("7", 4)
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐑𝐞𝐝")
end

function SD190()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("1,835,036;1,080,035,358;1,661,829,150;8,200;1,194,380,063:21", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("6", 4)
gg.clearResults()
gg.toast("𝐂𝐨𝐥𝐨𝐫 𝐕𝐞𝐡𝐢𝐜𝐥𝐞 𝐘𝐞𝐥𝐥𝐨𝐰")
end


function INLOOBY2(...)
  MNINLOOBY2 = gg.choice({
    "☠️ 𝐇𝐞𝐚𝐝𝐬𝐡𝐨𝐭 %95",
    "☠️ 𝐇𝐞𝐚𝐝𝐬𝐡𝐨𝐭 %75",
    "☠️ 𝐇𝐞𝐚𝐝𝐬𝐡𝐨𝐭 %50",
    "🔫 𝐋𝐞𝐬𝐬 𝐑𝐞𝐜𝐨𝐢𝐥 𝐕1",
    "🔫 𝐋𝐞𝐬𝐬 𝐑𝐞𝐜𝐨𝐢𝐥 𝐕2",
    "📡 𝐀𝐧𝐭𝐞𝐧𝐚",
    "🌱 𝐍𝐨 𝐆𝐫𝐚𝐬𝐬",
    "⬅️ 𝐁 𝐚 𝐜 𝐤"
  }, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
  if MNINLOOBY2 == nil then
  else
    if MNINLOOBY2 == 1 then
      HSHOT95()
    end
    if MNINLOOBY2 == 2 then
      HSHOT75()
    end
    if MNINLOOBY2 == 3 then
      HSHOT50()
    end
    if MNINLOOBY2 == 4 then
      LESSREC1()
    end
    if MNINLOOBY2 == 5 then
      LESSREC2()
    end
    if MNINLOOBY2 == 6 then
      ANTEENA2()
    end
    if MNINLOOBY2 == 7 then
      NOGRASSLOBBY()
    end
    if MNINLOOBY2 == 8 then
      START()
    end
  end
  PUBGMH = -1
end

function NOGRASSLOBBY(...)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber(":Default__MaterialExpressionLandscapeGrassOutput", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("0", gg.TYPE_BYTE)
  gg.clearResults()
  gg.toast("No Grass Activated")
end

function HSHOT95(...)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-460", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-560", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("245", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("𝐇𝐞𝐚𝐝𝐬𝐡𝐨𝐭 95% Activated")
end

function HSHOT75(...)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("250;300", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("𝐇𝐞𝐚𝐝𝐬𝐡𝐨𝐭 75% Activated")
end

function HSHOT50(...)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("200;205", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("𝐇𝐞𝐚𝐝𝐬𝐡𝐨𝐭 50% Activated")
end

function LESSREC1(...)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.5584387e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1D;0.05000000075F;0.10000000149F;0.55000001192F;9.5F;15.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setVisible(false)
  gg.clearResults()
  gg.toast("Less Recoil Activated")
  gg.clearResults()
end

function LESSREC2(...)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP | gg.REGION_CODE_APP)
  gg.searchNumber("-1327407162645804543", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1327407162645804543", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("A28", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("-1327407166641930240", gg.TYPE_QWORD)
  gg.clearResults()
  gg.searchNumber("-1 387 800 265 460 020 720", 32, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("6F8", -1, 32)
  gg.getResults(1337)
  gg.editAll("-1 387 800 268 364 578 816", 32)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-5.10804392e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("Less Recoil Activated")
  gg.clearResults()
end

function ANTEENA2(...)
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("Antenna Activated")
end

function ANTEENA(...)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("Antenna Activated")
end



function INGAME2(...)
  MNINGAME2 = gg.choice({
    "☠️ 𝐇𝐞𝐚𝐝𝐬𝐡𝐨𝐭 500%",
    "🔫 𝐍𝐨 𝐑𝐞𝐜𝐨𝐢𝐥 100%",
    "⚜️ 𝐒𝐦𝐚𝐥𝐥 𝐂𝐫𝐨𝐬𝐬𝐡𝐚𝐢𝐫",
    "👻 𝐀𝐢𝐦𝐛𝐨𝐭",
    "📡 𝐀𝐧𝐭𝐞𝐧𝐚",
    "🐒 𝐅𝐫𝐨𝐧𝐭 𝐉𝐮𝐦𝐩",
    "🚙 𝐉𝐞𝐞𝐩 𝐉𝐮𝐦𝐩𝐢𝐧𝐠",
    "🖤 𝐁𝐥𝐚𝐜𝐤 𝐒𝐤𝐲",
    "❤️ 𝐑𝐞𝐝 𝐒𝐤𝐲",
    "🛤️️ 𝐑𝐞𝐦𝐨𝐯𝐞 𝐅𝐎𝐆",
    "🎥 𝐈𝐩𝐚𝐝 𝐕𝐢𝐞𝐰",
    "🌲 𝐍𝐨 𝐆𝐫𝐚𝐬𝐬 & 𝐓𝐫𝐞𝐞",
    "🌱 𝐍𝐨 𝐆𝐫𝐚𝐬𝐬 ❁𝐄𝐫𝐚𝐧𝐠𝐥𝐞❁",
    "🏃 𝐌𝐢𝐜𝐫𝐨 𝐒𝐩𝐞𝐞𝐝 ❁𝐎𝐧❁",
    "🚶 𝐌𝐢𝐜𝐫𝐨 𝐒𝐩𝐞𝐞𝐝 ❁𝐎𝐟𝐟❁",
    "⬅️ 𝐁 𝐚 𝐜 𝐤"
  }, nil, "▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
  if MNINGAME2 == nil then
  else
    if MNINGAME2 == 1 then
      HSHOT500()
    end
    if MNINGAME2 == 2 then
      NOREC100()
    end
    if MNINGAME2 == 3 then
      SMALLCROSS()
    end
    if MNINGAME2 == 4 then
      AIMBOT()
    end
    if MNINGAME2 == 5 then
      ANTEENA()
    end
    if MNINGAME2 == 6 then
      FRONTJUMP()
    end
    if MNINGAME2 == 7 then
      JEEPJUMP()
    end
    if MNINGAME2 == 8 then
      BLACKSKY()
    end
    if MNINGAME2 == 9 then
      REDSKY()
    end
    if MNINGAME2 == 10 then
      NOFOG()
    end
    if MNINGAME2 == 11 then
      IPADVIEW()
    end
    if MNINGAME2 == 12 then
      NOGRASS()
    end
    if MNINGAME2 == 13 then
      NOGRASS2()
    end
    if MNINGAME2 == 14 then
      SPEEDON()
    end
    if MNINGAME2 == 15 then
      SPEEDOFF()
    end
    if MNINGAME2 == 16 then
      START()
    end
  end
  PUBGMH = -1
end

function JEEPJUMP(...)
  gg.clearResults()
  gg.processResume()
  gg.searchNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(61, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("986", gg.TYPE_FLOAT)
  gg.processResume()
  gg.sleep(1000)
  if revert ~= nil then
    gg.setValues(revert)
  end
  gg.clearResults()
  gg.toast("🚀 Activated! 🚀")
end

function FRONTJUMP(...)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("7.0064923e-45F;0.6~1;1065353216D;100F;1065353216D;2500000000F;0.10000000149F;88F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.6~1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2500)
  gg.editAll("3.5241295", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("300;0;0.05000000075;2;25::17", gg.TYPE_FLOAT, false)
  gg.refineNumber("0.05000000075", gg.TYPE_FLOAT, false)
  gg.getResults(2400)
  gg.editAll("2.1241295", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("🚀 Front Jump Activated! 🚀")
end

function AIMBOT(...)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-290,174,237", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-290,174,237", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("E00", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("Aimbot activated!")
end

function NOREC100(...)
  gg.clearResults()
  gg.setRanges(8)
  gg.setVisible(false)
  gg.searchNumber("-2.2673448e24;-1.36203639e28", 16, false, 536870912, 0, -1)
  gg.setVisible(false)
  gg.setVisible(false)
  gg.searchNumber("-1.36203639e28", 16, false, 536870912, 0, -1)
  gg.setVisible(false)
  gg.setVisible(false)
  gg.getResults(99)
  gg.editAll("0", 16)
  gg.clearResults()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("7B0", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("-1281263098870628352", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("3.8126822e-21;-1.1144502e28;-2.0291021e20:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("328")
  gg.getResults(551)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.2~0.3;53;30;1::", 16, false, 536870912, 0, -1)
  gg.searchNumber("0.2~0.3;1::", 16, false, 536870912, 0, -1)
  gg.getResults(200)
  gg.editAll("0", 16)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-2.2673448e24;-1.36203639e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1.36203639e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("740", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("-1903895931231645696", gg.TYPE_QWORD)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("7B0", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("-1281263098870628352", gg.TYPE_QWORD)
  gg.clearResults()
  gg.toast("No Recoil Activated")
end

function SMALLCROSS(...)
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2~4;1.09375;1;18;3.5::25", 16, false, 536870912, 0, -1)
  gg.searchNumber("2~4;1.09375::5", 16, false, 536870912, 0, -1)
  gg.searchNumber("2~4", 16, false, 536870912, 0, -1)
  gg.getResults(50)
  gg.editAll("-0.5", 16)
  gg.clearResults()
  gg.toast("Small Crosshair Activated")
end

function HSHOT500(...)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("25;23;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6000)
  gg.editAll("900;925", gg.TYPE_FLOAT)
  gg.clearResults()
  revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, i in ipairs((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if i.flags == gg.TYPE_FLOAT then
      i.value = "200"
      i.freeze = true
    end
  end
  gg.addListItems((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber("2048D;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.07", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("𝐇𝐞𝐚𝐝𝐬𝐡𝐨𝐭 500% Activated")
end

function BLACKSKY(...)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("671236105;1074792717;8200;1194363663;11::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("Black Sky Activated")
end

function REDSKY(...)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("671236105;1074792717;8200;1194363663;11::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("5", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("Red Sky Activated")
end

function NOGRASS(...)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("0.00390625;1;0.99900001287;2", gg.TYPE_FLOAT, false)
  gg.searchNumber("1", gg.TYPE_FLOAT, false)
  gg.getResults(30)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("No Grass & Trees Activated")
end

function NOGRASS2(...)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("8.0F;1.20000004768F;0.80000001192F;1.5F;0.80000001192F;1.5F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("No Grass Activated")
  gg.clearResults()
end

function NOFOG(...)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1759781550398895551", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1759781550398895551", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("098", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1759781550398895551", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("-1759781554395021312", gg.TYPE_QWORD)
  gg.clearResults()
  gg.toast("No Fog Activated")
end

function IPADVIEW(...)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2.8025969e-45;220;25;178;15;100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("350", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("iPad View Activated")
end

function SPEEDON(...)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("1.06", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("Medium Speed activated!")
end

function SPEEDOFF(...)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.06;1.06;1.06;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.06", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("Medium Speed deactivated!")
end





function CLOSE(...)
  print("▌│█║▌║▌║🇲🇲 𝐊𝐒𝐋 𝐆𝐀𝐌𝐈𝐍𝐆 🇲🇲 ║▌║▌║█│▌")
  gg.skipRestoreState()
  gg.setVisible(true)
  os.exit()
end

START() 
while true do
  if gg.isVisible(true) then 
     PUBGMH = 1
    gg.setVisible(false)
  end
  if PUBGMH == 1 then
    START()
  end
 end