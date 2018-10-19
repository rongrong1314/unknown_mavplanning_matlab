function [ error_cmap ] = create_error_cmap()
% From brewermap: [cmap] = brewermap('PlYg', 100)
error_cmap = [0.556862745098039,0.00392156862745098,0.321568627450980;0.584193162289635,0.00537401309774528,0.337540422619063;0.610636951629768,0.00954611753878071,0.353763201671252;0.636057708833596,0.0161600384957861,0.370232220110684;0.660319029616280,0.0249379325139902,0.386942733440494;0.683284509692980,0.0356019561386218,0.403889997163819;0.704817744778853,0.0478742659149098,0.421069266783794;0.724782330589061,0.0614770183880830,0.438475797803556;0.743041862838762,0.0761323701033701,0.456104845726240;0.759459937243117,0.0915624776060000,0.473951666054982;0.773904561300314,0.107536097529463,0.492014059092902;0.786816604681529,0.128994405929225,0.510560012532272;0.798660147831492,0.158234071627991,0.529672723614057;0.809579861961399,0.193589858255761,0.549210815401236;0.819720418282444,0.233396529442533,0.569032910956789;0.829226488005822,0.275988848818307,0.588997633343697;0.838242742342728,0.319701580013082,0.608963605624941;0.846913852504355,0.362869486656858,0.628789450863499;0.855384489701898,0.403827332379633,0.648333792122354;0.863799325146552,0.440909880811408,0.667455252464485;0.872297263260953,0.472573980125256,0.686043109777878;0.880788059699162,0.501578109572840,0.704924682741561;0.889158063009587,0.529680386690718,0.724289337628918;0.897366063008812,0.556861098859660,0.743816890798038;0.905370849513422,0.583100533460438,0.763187158607012;0.913131212339999,0.608378977873823,0.782079957413928;0.920605941305128,0.632676719480587,0.800175103576877;0.927753826225392,0.655974045661502,0.817152413453949;0.934533656917377,0.678251243797338,0.832691703403232;0.940904223197664,0.699488601268867,0.846472789782818;0.946868753398777,0.719698084015051,0.858260708862690;0.953035330041549,0.739338868437340,0.869156498208044;0.959435642026603,0.758495480604269,0.879553824084831;0.965844402277040,0.777073906485671,0.889404598856932;0.972036323715963,0.794980132051379,0.898660734888226;0.977786119266474,0.812120143271226,0.907274144542594;0.982868501851675,0.828399926115045,0.915196740183916;0.987058184394668,0.843725466552669,0.922380434176072;0.990129879818556,0.858002750553931,0.928777138882942;0.991858301046439,0.871137764088664,0.934338766668406;0.992099220271198,0.883197863981338,0.939094860648132;0.991475540343433,0.895483489355663,0.943696162173848;0.990227484628364,0.907981056676568,0.948213844214604;0.988430965075814,0.920295856245969,0.952540873829652;0.986161893635608,0.932033178365786,0.956570218078244;0.983496182257570,0.942798313337934,0.960194844019631;0.980509742891524,0.952196551464333,0.963307718713064;0.977278487487295,0.959833183046901,0.965801809217796;0.973878327994707,0.965313498387554,0.967570082593077;0.970385176363584,0.968242787788212,0.968505505898159;0.966786527804418,0.968603991280494,0.967981651130589;0.962602100748816,0.968419620451853,0.963060055774336;0.957753730308253,0.968059329430400,0.953842473858497;0.952248813546622,0.967531936270911,0.940981714562203;0.946094747527818,0.966846259028166,0.925130587064583;0.939298929315734,0.966011115756940,0.906941900544769;0.931868755974264,0.965035324512012,0.887068464181892;0.923811624567302,0.963927703348160,0.866163087155081;0.915134932158741,0.962697070320160,0.844878578643467;0.905846075812477,0.961352243482791,0.823867747826181;0.895535460732767,0.959543641264775,0.802870828000542;0.882661282916686,0.955910489247759,0.778774312137695;0.867422241351514,0.950539174871911,0.751792078844749;0.850212683414962,0.943681863563328,0.722542682549582;0.831426956484739,0.935590720748104,0.691644677680073;0.811459407938554,0.926517911852336,0.659716618664103;0.790704385154118,0.916715602302118,0.627377059929550;0.769556235509139,0.906435957523545,0.595244555904293;0.748409306381327,0.895931142942714,0.563937661016212;0.727657945148392,0.885453323985720,0.534074929693186;0.707153244006517,0.874778581334627,0.505319442884504;0.685639932417435,0.862759486664291,0.475489959504771;0.663258616454444,0.849520026036864,0.444966405388087;0.640247339190220,0.835271009317743,0.414303240073942;0.616844143697437,0.820223246372326,0.384054923101831;0.593287073048771,0.804587547066011,0.354775914011244;0.569814170316898,0.788574721264196,0.327020672341677;0.546663478574492,0.772395578832279,0.301343657632620;0.524073040894231,0.756260929635658,0.278299329423567;0.502280900348789,0.740381583539731,0.258442147254010;0.481158192590565,0.724702008972151,0.241170648579249;0.460104120188239,0.708779659062535,0.224453708375213;0.439182782173541,0.692617338070452,0.208402889267523;0.418480195786415,0.676233212304953,0.193199511416198;0.398082378266805,0.659645448075088,0.179024894981261;0.378075346854657,0.642872211689910,0.166060360122730;0.358545118789915,0.625931669458470,0.154487227000627;0.339577711312524,0.608841987689819,0.144486815774971;0.321259141662429,0.591621332693007,0.136240446605784;0.303675427079575,0.574287870777088,0.129929439653085;0.286710031324872,0.556824710623270,0.124909768565578;0.270114077466159,0.539189343254409,0.120097991221586;0.253905015760813,0.521383566976972,0.115561689908845;0.238102686832081,0.503409586304653,0.111378463509399;0.222726931303214,0.485269605751146,0.107625910905288;0.207797589797462,0.466965829830145,0.104381630978557;0.193334502938074,0.448500463055346,0.101723222611247;0.179357511348299,0.429875709940442,0.0997282846854019;0.165886455651387,0.411093774999128,0.0984744160830635;0.152941176470588,0.392156862745098,0.0980392156862745];
end

