local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function()return _ENV;end;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack;local v14=tonumber;local function v15(v16,v17,...)local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v20)if (v1(v20,2)==79) then v19=v0(v3(v20,1,1));return "";else local v80=v2(v0(v20,16));if v19 then local v101=v5(v80,v19);v19=nil;return v101;else return v80;end end end);local function v21(v22,v23,v24)if v24 then local v81=(v22/(2^(v23-1)))%(2^(((v24-1) -(v23-1)) + 1));return v81-(v81%1);else local v82=2^(v23-1);return (((v22%(v82 + v82))>=v82) and 1) or 0;end end local function v25()local v38=v1(v16,v18,v18);v18=v18 + 1;return v38;end local function v26()local v39,v40=v1(v16,v18,v18 + 2);v18=v18 + 2;return (v40 * 256) + v39;end local function v27()local v41,v42,v43,v44=v1(v16,v18,v18 + 3);v18=v18 + 4;return (v44 * 16777216) + (v43 * 65536) + (v42 * 256) + v41;end local function v28()local v45=v27();local v46=v27();local v47=1;local v48=(v21(v46,1,20) * (2^32)) + v45;local v49=v21(v46,21,31);local v50=((v21(v46,32)==1) and  -1) or 1;if (v49==0) then if (v48==0) then return v50 * 0;else v49=1;v47=0;end elseif (v49==2047) then return ((v48==0) and (v50 * (1/0))) or (v50 * NaN);end return v8(v50,v49-1023) * (v47 + (v48/(2^52)));end local function v29(v30)local v51;if  not v30 then v30=v27();if (v30==0) then return "";end end v51=v3(v16,v18,(v18 + v30) -1);v18=v18 + v30;local v52={};for v63=1, #v51 do v52[v63]=v2(v1(v3(v51,v63,v63)));end return v6(v52);end local v31=v27;local function v32(...)return {...},v12("#",...);end local function v33()local v53={};local v54={};local v55={};local v56={v53,v54,nil,v55};local v57=v27();local v58={};for v65=1,v57 do local v66=v25();local v67;if (v66==1) then v67=v25()~=0;elseif (v66==2) then v67=v28();elseif (v66==3) then v67=v29();end v58[v65]=v67;end v56[3]=v25();for v69=1,v27() do local v70=v25();if (v21(v70,1,1)==0) then local v93=v21(v70,2,3);local v94=v21(v70,4,6);local v95={v26(),v26(),nil,nil};if (v93==0) then v95[3]=v26();v95[4]=v26();elseif (v93==1) then v95[3]=v27();elseif (v93==2) then v95[3]=v27() -(2^16);elseif (v93==3) then v95[3]=v27() -(2^16);v95[4]=v26();end if (v21(v94,1,1)==1) then v95[2]=v58[v95[2]];end if (v21(v94,2,2)==1) then v95[3]=v58[v95[3]];end if (v21(v94,3,3)==1) then v95[4]=v58[v95[4]];end v53[v69]=v95;end end for v71=1,v27() do v54[v71-1]=v33();end for v73=1,v27() do v55[v73]=v27();end return v56;end local function v34(v35,v36,v37)local v60=v35[1];local v61=v35[2];local v62=v35[3];return function(...)local v75=1;local v76= -1;local v77={...};local v78=v12("#",...) -1;local function v79()local v83=v60;local v84=v61;local v85=v62;local v86=v32;local v87={};local v88={};local v89={};for v97=0,v78 do if (v97>=v85) then v87[v97-v85]=v77[v97 + 1];else v89[v97]=v77[v97 + 1];end end local v90=(v78-v85) + 1;local v91;local v92;while true do v91=v83[v75];v92=v91[1];if (v92<=6) then if (v92<=2) then if (v92<=0) then v89[v91[2]]();elseif (v92>1) then local v120=v91[2];local v121=v89[v91[3]];v89[v120 + 1]=v121;v89[v120]=v121[v91[4]];else v89[v91[2]]=v34(v84[v91[3]],nil,v37);end elseif (v92<=4) then if (v92==3) then v89[v91[2]]=v89[v91[3]][v91[4]];else local v128=v91[2];v89[v128](v13(v89,v128 + 1,v91[3]));end elseif (v92==5) then do return;end else local v129=v91[2];v89[v129]=v89[v129](v13(v89,v129 + 1,v91[3]));end elseif (v92<=9) then if (v92<=7) then v89[v91[2]]=v37[v91[3]];elseif (v92>8) then v89[v91[2]][v91[3]]=v89[v91[4]];else v75=v91[3];end elseif (v92<=11) then if (v92>10) then local v134=v91[2];v89[v134]=v89[v134]();else local v136=v91[2];local v137,v138=v86(v89[v136](v13(v89,v136 + 1,v91[3])));v76=(v138 + v136) -1;local v139=0;for v144=v136,v76 do v139=v139 + 1;v89[v144]=v137[v139];end end elseif (v92==12) then v89[v91[2]]=v91[3];else local v142=v91[2];v89[v142]=v89[v142](v13(v89,v142 + 1,v76));end v75=v75 + 1;end end A,B=v32(v11(v79));if  not A[1] then local v100=v35[4][v75] or "?";error("Script error at ["   .. v100   .. "]:"   .. A[2]);else return v13(A,2,B);end end;end return v34(v33(),{},v17)(...);end v15("LOL!193O00030A3O006C6F6164737472696E6703043O0067616D6503073O00482O747047657403453O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F64617769642D736372697074732F55492D4C6962732F6D61696E2F566170652E74787403063O0057696E646F7703093O0054696765722048756203063O00436F6C6F723303073O0066726F6D524742026O006C40025O00805B40026O00464003043O00456E756D03073O004B6579436F6465030C3O005269676874436F6E74726F6C2O033O0054616203043O004D61696E03063O00506C6179657203063O0042752O746F6E03143O004175746F2054656C65706F727420546F20456E6403063O00536C6964657203093O0057616C6B53702O6564026O003040025O00C07240026O003E4003093O004A756D70506F77657200303O0012073O00013O001207000100023O00200200010001000300120C000300044O000A000100034O000D5O00022O000B3O0001000200200200013O000500120C000300063O001207000400073O00200300040004000800120C000500093O00120C0006000A3O00120C0007000B4O00060004000700020012070005000C3O00200300050005000D00200300050005000E2O000600010005000200200200020001000F00120C000400104O000600020004000200200200030001000F00120C000500114O000600030005000200200200040002001200120C000600133O00020100076O000400040007000100200200040002001200120C000600133O000201000700014O000400040007000100200200040003001400120C000600153O00120C000700163O00120C000800173O00120C000900183O000201000A00024O00040004000A000100200200040003001400120C000600193O00120C000700163O00120C000800173O00120C000900183O000201000A00034O00040004000A00012O00053O00013O00043O000B3O0003043O0067616D6503073O00506C6179657273030B3O004C6F63616C506C6179657203093O0043686172616374657203103O0048756D616E6F6964522O6F745061727403063O00434672616D65030A3O004765745365727669636503093O00576F726B737061636503053O00746F77657203083O0066696E697368657303063O0046696E697368000F3O0012073O00013O0020035O00020020035O00030020035O00040020035O0005001207000100013O00200200010001000700120C000300084O000600010003000200200300010001000900200300010001000A00200300010001000B0020030001000100060010093O000600012O00053O00017O000F3O00063O00063O00063O00063O00063O00063O00063O00063O00063O00063O00063O00063O00063O00063O00073O000C3O0003043O0067616D6503073O00506C6179657273030B3O004C6F63616C506C6179657203093O0043686172616374657203103O0048756D616E6F6964522O6F745061727403063O00434672616D65030A3O004765745365727669636503093O00576F726B737061636503053O00746F77657203083O0073656374696F6E7303053O00737461727403063O0063656E74657200103O0012073O00013O0020035O00020020035O00030020035O00040020035O0005001207000100013O00200200010001000700120C000300084O000600010003000200200300010001000900200300010001000A00200300010001000B00200300010001000C0020030001000100060010093O000600012O00053O00017O00103O00093O00093O00093O00093O00093O00093O00093O00093O00093O00093O00093O00093O00093O00093O00093O000A3O000A3O0003073O0067657467656E7603093O0077616C6B73702O656403043O0067616D6503073O00506C6179657273030B3O004C6F63616C506C6179657203093O0043686172616374657203083O0048756D616E6F696403093O0057616C6B53702O656403043O007461736B03043O007761697401113O001207000100014O000B000100010002001009000100023O001207000100033O002003000100010004002003000100010005002003000100010006002003000100010007001207000200014O000B000200010002002003000200020002001009000100080002001207000100093O00200300010001000A4O0001000100010004083O000300012O00053O00017O00113O000C3O000C3O000C3O000E3O000E3O000E3O000E3O000E3O000E3O000E3O000E3O000E3O000F3O000F3O000F3O000F3O00113O000A3O0003073O0067657467656E7603093O006A756D2O706F77657203043O0067616D6503073O00506C6179657273030B3O004C6F63616C506C6179657203093O0043686172616374657203083O0048756D616E6F696403093O004A756D70506F77657203043O007461736B03043O007761697401113O001207000100014O000B000100010002001009000100023O001207000100033O002003000100010004002003000100010005002003000100010006002003000100010007001207000200014O000B000200010002002003000200020002001009000100080002001207000100093O00200300010001000A4O0001000100010004083O000300012O00053O00017O00113O00133O00133O00133O00153O00153O00153O00153O00153O00153O00153O00153O00153O00163O00163O00163O00163O00183O00303O00013O00013O00013O00013O00013O00013O00013O00023O00023O00023O00023O00023O00023O00023O00023O00023O00023O00023O00023O00033O00033O00033O00043O00043O00043O00053O00053O00073O00053O00083O00083O000A3O00083O000B3O000B3O000B3O000B3O000B3O00113O000B3O00123O00123O00123O00123O00123O00183O00123O00183O00",v9(),...);
