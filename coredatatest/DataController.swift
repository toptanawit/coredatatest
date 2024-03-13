//
//  DataController.swift
//  coredatatest
//
//  Created by Tanawit Poumloyfha on 12/3/2567 BE.
//

import Foundation
import CoreData

var data: [[Any]] = [["E1","Chit Lom BTS","bts","lightgreen",13.74323128799462,100.54507304031672,false],
                     ["E2","Phloen Chit BTS","bts","lightgreen",13.743171167713719,100.55139396303053,false],
                     ["E3","Nana BTS","bts","lightgreen",13.740329173802378,100.55369159028467,false],
                     ["E4","Asok BTS","bts","lightgreen",13.736665573624121,100.55926601296763,false],
                     ["E5","Phrom Phong BTS","bts","lightgreen",13.731677916737103,100.57128031742991,false],
                     ["E6","Thong Lo BTS","bts","lightgreen",13.724064573017483,100.58196603098737,false],
                     ["E7","Ekkamai BTS","bts","lightgreen",13.718654116895493,100.58685291729954,false],
                     ["E8","Phra Khanong BTS","bts","lightgreen",13.714707638796671,100.58801879908009,false],
                     ["E9","On Nut BTS","bts","lightgreen",13.703728129948757,100.60095080350322,false],
                     ["E10","Bang Chak BTS","bts","lightgreen",13.694583804659615,100.60536650339921,false],
                     ["E11","Punnawithi BTS","bts","lightgreen",13.689765511196482,100.6106807169425,false],
                     ["E12","Udomsuk BTS","bts","lightgreen",13.679880240321948,100.60940474326465,false],
                     ["E13","Bang Na BTS","bts","lightgreen",13.670955254373157,100.60465380306147,false],
                     ["E14","Bearing BTS","bts","lightgreen",13.660356548889503,100.60218242570622,false],
                     ["E15","Samrong BTS","bts","lightgreen",13.647680128516765,100.59799123917303,true],
                     ["E16","Pu Chao BTS","bts","lightgreen",13.639289266833874,100.59057091179126,true],
                     ["E17","Chang Erawan BTS","bts","lightgreen",13.622463064502767,100.58876791160928,true],
                     ["E18","Royal Thai Naval Academy BTS","bts","lightgreen",13.606992325810355,100.59617589326587,true],
                     ["E19","Pak Nam BTS","bts","lightgreen",13.603610829696395,100.59670207955925,true],
                     ["E20","Srinagarindra BTS","bts","lightgreen",13.593246567308775,100.60784367945735,true],
                     ["E21","Phraek Sa BTS","bts","lightgreen",13.585460937891156,100.60902647025586,true],
                     ["E22","Sai Luat BTS","bts","lightgreen",13.576995338214633,100.60668689290263,true],
                     ["E23","Kheha BTS","bts","lightgreen",13.568221149343923,100.60489802007211,true]]

var siamdata: [[Any]] = [["CEN","Siam BTS","bts","lightgreen",13.74608775379938,100.53401578125037,false]]

//var btslgclass: [Station] = [
//    Station(station_id: "E1", station_name: "Chit Lom BTS", station_line: "bts", station_linecolor: "lightgreen", latitude: 13.74323128799462, longitude: 100.54507304031672, is_extended: false),
//    Station(station_id: "E2", station_name: "Phloen Chit BTS", station_line: "bts", station_linecolor: "lightgreen", latitude: 13.743171167713719, longitude: 100.55139396303053, is_extended: false),
//    Station(station_id: "E3", station_name: "Nana BTS", station_line: "bts", station_linecolor: "lightgreen", latitude: 13.740329173802378, longitude: 100.55369159028467, is_extended: false),
//    Station(station_id: "E4", station_name: "Asok BTS", station_line: "bts", station_linecolor: "lightgreen", latitude: 13.736665573624121, longitude: 100.55926601296763, is_extended: false),
//    Station(station_id: "E5", station_name: "Phrom Phong BTS", station_line: "bts", station_linecolor: "lightgreen", latitude: 13.731677916737103, longitude: 100.57128031742991, is_extended: false),
//    Station(station_id: "E6", station_name: "Thong Lo BTS", station_line: "bts", station_linecolor: "lightgreen", latitude: 13.724064573017483, longitude: 100.58196603098737, is_extended: false),
//    Station(station_id: "E7", station_name: "Ekkamai BTS", station_line: "bts", station_linecolor: "lightgreen", latitude: 13.718654116895493, longitude: 100.58685291729954, is_extended: false),
//    Station(station_id: "E8", station_name: "Phra Khanong BTS", station_line: "bts", station_linecolor: "lightgreen", latitude: 13.714707638796671, longitude: 100.58801879908009, is_extended: false),
//    Station(station_id: "E9", station_name: "On Nut BTS", station_line: "bts", station_linecolor: "lightgreen", latitude: 13.703728129948757, longitude: 100.60095080350322, is_extended: false),
//    Station(station_id: "E10", station_name: "Bang Chak BTS", station_line: "bts", station_linecolor: "lightgreen", latitude: 13.694583804659615, longitude: 100.60536650339921, is_extended: false),
//    Station(station_id: "E11", station_name: "Punnawithi BTS", station_line: "bts", station_linecolor: "lightgreen", latitude: 13.689765511196482, longitude: 100.6106807169425, is_extended: false),
//    Station(station_id: "E12", station_name: "Udomsuk BTS", station_line: "bts", station_linecolor: "lightgreen", latitude: 13.679880240321948, longitude: 100.60940474326465, is_extended: false),
//    Station(station_id: "E13", station_name: "Bang Na BTS", station_line: "bts", station_linecolor: "lightgreen", latitude: 13.670955254373157, longitude: 100.60465380306147, is_extended: false),
//    Station(station_id: "E14", station_name: "Bearing BTS", station_line: "bts", station_linecolor: "lightgreen", latitude: 13.660356548889503, longitude: 100.60218242570622, is_extended: false),
//    Station(station_id: "E15", station_name: "Samrong BTS", station_line: "bts", station_linecolor: "lightgreen", latitude: 13.647680128516765, longitude: 100.59799123917303, is_extended: true),
//    Station(station_id: "E16", station_name: "Pu Chao BTS", station_line: "bts", station_linecolor: "lightgreen", latitude: 13.639289266833874, longitude: 100.59057091179126, is_extended: true),
//    Station(station_id: "E17", station_name: "Chang Erawan BTS", station_line: "bts", station_linecolor: "lightgreen", latitude: 13.622463064502767, longitude: 100.58876791160928, is_extended: true),
//    Station(station_id: "E18", station_name: "Royal Thai Naval Academy BTS", station_line: "bts", station_linecolor: "lightgreen", latitude: 13.606992325810355, longitude: 100.59617589326587, is_extended: true),
//    Station(station_id: "E19", station_name: "Pak Nam BTS", station_line: "bts", station_linecolor: "lightgreen", latitude: 13.603610829696395, longitude: 100.59670207955925, is_extended: true),
//    Station(station_id: "E20", station_name: "Srinagarindra BTS", station_line: "bts", station_linecolor: "lightgreen", latitude: 13.593246567308775, longitude: 100.60784367945735, is_extended: true),
//    Station(station_id: "E21", station_name: "Phraek Sa BTS", station_line: "bts", station_linecolor: "lightgreen", latitude: 13.585460937891156, longitude: 100.60902647025586, is_extended: true),
//    Station(station_id: "E22", station_name: "Sai Luat BTS", station_line: "bts", station_linecolor: "lightgreen", latitude: 13.576995338214633, longitude: 100.60668689290263, is_extended: true),
//    Station(station_id: "E23", station_name: "Kheha BTS", station_line: "bts", station_linecolor: "lightgreen", latitude: 13.568221149343923, longitude: 100.60489802007211, is_extended: true)
//]

var northlgdata: [[Any]] = [["N1","Ratchathewi BTS","bts","lightgreen",13.751486892894324,100.5319475267789,false],
                             ["N2","Phaya Thai BTS","bts","lightgreen",13.757884794541479,100.53146834502816,false],
                             ["N3","Victory Monument BTS","bts","lightgreen",13.764469662708665,100.53729122690513,false],
                             ["N4","Sanam Pao BTS","bts","lightgreen",13.772095723304542,100.54419394065506,false],
                             ["N5","Ari BTS","bts","lightgreen",13.780825439075091,100.54287689074913,false],
                             ["N7","Saphan Kwai BTS","bts","lightgreen",13.793345070989371,100.54948724875098,false],
                             ["N8","Mo Chit BTS","bts","lightgreen",13.803046294171311,100.55243671374747,false],
                             ["N9","Ha Yaek Lad Phrao BTS","bts","lightgreen",13.815463208719454,100.56097733664144,true],
                             ["N10","Phahon Yothin 24 BTS","bts","lightgreen",13.823559999549746,100.56539733672993,true],
                             ["N11","Ratchayothin BTS","bts","lightgreen",13.830185217953575,100.57084727315505,true],
                             ["N12","Sena Nikhom BTS","bts","lightgreen",13.837566817479395,100.57093072324525,true],
                             ["N13","Kasetsart University BTS","bts","lightgreen",13.842830882403867,100.57650875967408,true],
                             ["N14","Royal Forest Department BTS","bts","lightgreen",13.852519511855522,100.58024839159475,true],
                             ["N15","Bang Bua BTS","bts","lightgreen",13.855846279855253,100.5856202280164,true],
                             ["N16","11th Infantry Regiment BTS","bts","lightgreen",13.865221258886157,100.59316787360896,true],
                             ["N17","Wat Phra Sri Mahathat BTS","bts","lightgreen",13.875483785497229,100.59708092824702,true],
                             ["N18","Phahon Yothin 59 BTS","bts","lightgreen",13.883118763509941,100.6004028828777,true],
                             ["N19","Sai Yut BTS","bts","lightgreen",13.889546521901593,100.6029240147716,true],
                             ["N20","Saphan Mai BTS","bts","lightgreen",13.898440918575758,100.60631792396468,true],
                             ["N21","Bhumibol Adulyadej Hospital BTS","bts","lightgreen",13.909398364801326,100.6185052741257,true],
                             ["N22","Royal Thai Air Force Museum BTS","bts","lightgreen",13.921349033744823,100.62033401512461,true],
                             ["N23","Yaek Kor Por Aor BTS","bts","lightgreen",13.925554549296667,100.62477533793738,true],
                            ["N24","Khu Khot BTS","bts","lightgreen",13.932153384313903,100.64682062892996,true]]


var bluemrtdata: [[Any]] = [["BL01","Tha Phra MRT","mrt","blue",13.731494442817219,100.4737739810618,false],
                            ["BL02","Charan 13 MRT","mrt","blue",13.744401607301901,100.4711395266396,false],
                            ["BL03","Fai Chai MRT","mrt","blue",13.754260567319378,100.46907428137094,false],
                            ["BL04","Bang Khun Non MRT","mrt","blue",13.766710663842208,100.4740320496383,false],
                            ["BL05","Bang Yi Khan MRT","mrt","blue",13.775785491167852,100.485663927079,false],
                            ["BL06","Sirindhorn MRT","mrt","blue",13.783803275981889,100.49507269533747,false],
                            ["BL07","Bang Phlat MRT","mrt","blue",13.792203376416715,100.50458398180554,false],
                            ["BL08","Bang O MRT","mrt","blue",13.79690559814871,100.51213666369202,false],
                            ["BL09","Bang Pho MRT","mrt","blue",13.806249477153719,100.52047498197255,false],
                            ["BL10","Tao Poon MRT","mrt","blue",13.806884887217254,100.53045198196823,false],
                            ["BL11","Bang Sue MRT","mrt","blue",13.802877876975662,100.53967692738516,false],
                            ["BL12","Kamphaeng Phet MRT","mrt","blue",13.796887728047047,100.54793332732578,false],
                            ["BL13","Chatuchak Park MRT","mrt","blue",13.804379922895247,100.55346668192652,false],
                            ["BL14","Phahon Yothin MRT","mrt","blue",13.813016555265865,100.56155281070602,false],
                            ["BL15","Lat Phrao MRT","mrt","blue",13.805605272900033,100.57475547287423,false],
                            ["BL16","Ratchadaphisek MRT","mrt","blue",13.800278043165648,100.57391105915534,false],
                            ["BL17","Sutthisan MRT","mrt","blue",13.788136690085652,100.57452332722174,false],
                            ["BL18","Huai Khwang MRT","mrt","blue",13.778281975698498,100.57300145891378,false],
                            ["BL19","Thailand Cultural Centre MRT","mrt","blue",13.765702913863889,100.5730136860319,false],
                            ["BL20","Phra Ram 9 MRT","mrt","blue",13.757743095140178,100.56440075865818,false],
                            ["BL21","Phetchaburi MRT","mrt","blue",13.747158126501581,100.56519404037115,false],
                            ["BL22","Sukhumvit MRT","mrt","blue",13.737349470330004,100.5617881266193,false],
                            ["BL23","Queen Sirikit National Convention Centre MRT","mrt","blue",13.723215517771417,100.56108817188499,false],
                            ["BL24","Khlong Toei MRT","mrt","blue",13.721450924978273,100.55679608551162,false],
                            ["BL25","Lumphini MRT","mrt","blue",13.72433359548904,100.54366989011113,false],
                            ["BL26","Si Lom MRT","mrt","blue",13.72740679928504,100.53648390378315,false],
                            ["BL27","Sam Yan MRT","mrt","blue",13.733327898225664,100.5298511038217,false],
                            ["BL28","Hua Lamphong MRT","mrt","blue",13.735994160776018,100.51818117206385,false],
                            ["BL29","Wat Mangkon MRT","mrt","blue",13.741822673875278,100.5100464039341,false],
                            ["BL30","Sam Yot MRT","mrt","blue",13.746956374126938,100.50168508126856,false],
                            ["BL31","Sanam Chai MRT","mrt","blue",13.745040441326811,100.49489422668276,false],
                            ["BL32","Itsaraphap MRT","mrt","blue",13.737211969736327,100.48638357207038,false],
                            ["BL33","Bang Phai MRT","mrt","blue",13.723863431952067,100.4644832582767,false],
                            ["BL34","Bang Wa MRT","mrt","blue",13.72058972511087,100.45661208094856,false],
                            ["BL35","Phetkasem 48 MRT","mrt","blue",13.714615005226165,100.44591732634639,false],
                            ["BL36","Phasi Charoen MRT","mrt","blue",13.711785860075315,100.43660823994865,false],
                            ["BL37","Bang Khae MRT","mrt","blue",13.711302933800036,100.423317871756,false],
                            ["BL38","Lak Song MRT","mrt","blue",13.71083020192932,100.40940976652891,false]]

//var bluemrtdataclass: [Station] = [
//    Station(station_id: "BL01", station_name: "Tha Phra MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.731494442817219, longitude: 100.4737739810618, is_extended: false),
//    Station(station_id: "BL02", station_name: "Charan 13 MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.744401607301901, longitude: 100.4711395266396, is_extended: false),
//    Station(station_id: "BL03", station_name: "Fai Chai MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.754260567319378, longitude: 100.46907428137094, is_extended: false),
//    Station(station_id: "BL04", station_name: "Bang Khun Non MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.766710663842208, longitude: 100.4740320496383, is_extended: false),
//    Station(station_id: "BL05", station_name: "Bang Yi Khan MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.775785491167852, longitude: 100.485663927079, is_extended: false),
//    Station(station_id: "BL06", station_name: "Sirindhorn MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.783803275981889, longitude: 100.49507269533747, is_extended: false),
//    Station(station_id: "BL07", station_name: "Bang Phlat MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.792203376416715, longitude: 100.50458398180554, is_extended: false),
//    Station(station_id: "BL08", station_name: "Bang O MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.79690559814871, longitude: 100.51213666369202, is_extended: false),
//    Station(station_id: "BL09", station_name: "Bang Pho MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.806249477153719, longitude: 100.52047498197255, is_extended: false),
//    Station(station_id: "BL10", station_name: "Tao Poon MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.806884887217254, longitude: 100.53045198196823, is_extended: false),
//    Station(station_id: "BL11", station_name: "Bang Sue MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.802877876975662, longitude: 100.53967692738516, is_extended: false),
//    Station(station_id: "BL12", station_name: "Kamphaeng Phet MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.796887728047047, longitude: 100.54793332732578, is_extended: false),
//    Station(station_id: "BL13", station_name: "Chatuchak Park MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.804379922895247, longitude: 100.55346668192652, is_extended: false),
//    Station(station_id: "BL14", station_name: "Phahon Yothin MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.813016555265865, longitude: 100.56155281070602, is_extended: false),
//    Station(station_id: "BL15", station_name: "Lat Phrao MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.805605272900033, longitude: 100.57475547287423, is_extended: false),
//    Station(station_id: "BL16", station_name: "Ratchadaphisek MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.800278043165648, longitude: 100.57391105915534, is_extended: false),
//    Station(station_id: "BL17", station_name: "Sutthisan MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.788136690085652, longitude: 100.57452332722174, is_extended: false),
//    Station(station_id: "BL18", station_name: "Huai Khwang MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.778281975698498, longitude: 100.57300145891378, is_extended: false),
//    Station(station_id: "BL19", station_name: "Thailand Cultural Centre MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.765702913863889, longitude: 100.5730136860319, is_extended: false),
//    Station(station_id: "BL20", station_name: "Phra Ram 9 MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.757743095140178, longitude: 100.56440075865818, is_extended: false),
//    Station(station_id: "BL21", station_name: "Phetchaburi MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.747158126501581, longitude: 100.56519404037115, is_extended: false),
//    Station(station_id: "BL22", station_name: "Sukhumvit MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.737349470330004, longitude: 100.5617881266193, is_extended: false),
//    Station(station_id: "BL23", station_name: "Queen Sirikit National Convention Centre MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.723215517771417, longitude: 100.56108817188499, is_extended: false),
//    Station(station_id: "BL24", station_name: "Khlong Toei MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.721450924978273, longitude: 100.55679608551162, is_extended: false),
//    Station(station_id: "BL25", station_name: "Lumphini MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.72433359548904, longitude: 100.54366989011113, is_extended: false),
//    Station(station_id: "BL26", station_name: "Si Lom MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.72740679928504, longitude: 100.53648390378315, is_extended: false),
//    Station(station_id: "BL27", station_name: "Sam Yan MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.733327898225664, longitude: 100.5298511038217, is_extended: false),
//    Station(station_id: "BL28", station_name: "Hua Lamphong MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.735994160776018, longitude: 100.51818117206385, is_extended: false),
//    Station(station_id: "BL29", station_name: "Wat Mangkon MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.741822673875278, longitude: 100.5100464039341, is_extended: false),
//    Station(station_id: "BL30", station_name: "Sam Yot MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.746956374126938, longitude: 100.50168508126856, is_extended: false),
//    Station(station_id: "BL31", station_name: "Sanam Chai MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.745040441326811, longitude: 100.49489422668276, is_extended: false),
//    Station(station_id: "BL32", station_name: "Itsaraphap MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.737211969736327, longitude: 100.48638357207038, is_extended: false),
//    Station(station_id: "BL33", station_name: "Bang Phai MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.723863431952067, longitude: 100.4644832582767, is_extended: false),
//    Station(station_id: "BL34", station_name: "Bang Wa MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.72058972511087, longitude: 100.45661208094856, is_extended: false),
//    Station(station_id: "BL35", station_name: "Phetkasem 48 MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.714615005226165, longitude: 100.44591732634639, is_extended: false),
//    Station(station_id: "BL36", station_name: "Phasi Charoen MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.711785860075315, longitude: 100.43660823994865, is_extended: false),
//    Station(station_id: "BL37", station_name: "Bang Khae MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.711302933800036, longitude: 100.423317871756, is_extended: false),
//    Station(station_id: "BL38", station_name: "Lak Song MRT", station_line: "mrt", station_linecolor: "blue", latitude: 13.71083020192932, longitude: 100.40940976652891, is_extended: false)
//]

var arldata: [[Any]] = [["A1","Suvarnabhumi ARL","arl","red",13.703119561182797,100.75187358910955,false],
                        ["A2","Lat Krabang ARL","arl","red",13.734276250159681,100.74759724392246,false],
                        ["A3","Ban Thap Chang ARL","arl","red",13.727890000318158,100.68836206186987,false],
                        ["A4","Hua Mak ARL","arl","red",13.746004409350032,100.64560053511678,false],
                        ["A5","Ramkhamhaeng ARL","arl","red",13.749561204985838,100.60109728071038,false],
                        ["A6","Makkasan ARL","arl","red",13.75835007181401,100.56076481053812,false],
                        ["A7","Ratchaprarop ARL","arl","red",13.761253848376082,100.54256523334259,false],
                        ["A8","Phaya Thai ARL","arl","red",13.763686630249191,100.53387434233079,false]]

/*
// BTS
var timetable: [TimeSpan: TimeSpan] = [
    TimeSpan(hours: 6, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 5, seconds: 0),
    TimeSpan(hours: 7, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 2, seconds: 40),
    TimeSpan(hours: 9, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 3, seconds: 35),
    TimeSpan(hours: 9, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 30),
    TimeSpan(hours: 16, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 4, seconds: 25),
    TimeSpan(hours: 16, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 2, seconds: 40),
    TimeSpan(hours: 17, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 2, seconds: 40),
    TimeSpan(hours: 20, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 4, seconds: 25),
    TimeSpan(hours: 21, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 22, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 8, seconds: 0)
]

var extendedTimetable: [TimeSpan: TimeSpan] = [
    TimeSpan(hours: 6, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 5, seconds: 0),
    TimeSpan(hours: 7, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 5, seconds: 20),
    TimeSpan(hours: 9, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 3, seconds: 35),
    TimeSpan(hours: 9, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 30),
    TimeSpan(hours: 16, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 4, seconds: 25),
    TimeSpan(hours: 16, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 5, seconds: 20),
    TimeSpan(hours: 17, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 5, seconds: 20),
    TimeSpan(hours: 20, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 4, seconds: 25),
    TimeSpan(hours: 21, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 22, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 8, seconds: 0)
]

var darkgreenTimetable: [TimeSpan: TimeSpan] = [
    TimeSpan(hours: 6, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 7, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 3, seconds: 45),
    TimeSpan(hours: 9, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 9, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 16, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 16, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 17, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 3, seconds: 45),
    TimeSpan(hours: 20, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 21, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 22, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 8, seconds: 0)
]

var holidayTimetable: [TimeSpan: TimeSpan] = [
    TimeSpan(hours: 6, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 7, seconds: 0),
    TimeSpan(hours: 8, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 5, seconds: 55),
    TimeSpan(hours: 9, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 5, seconds: 55),
    TimeSpan(hours: 11, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 4, seconds: 30),
    TimeSpan(hours: 21, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 7, seconds: 0),
    TimeSpan(hours: 22, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 8, seconds: 0)
]

var holidayExtendedTimetable: [TimeSpan: TimeSpan] = [
    TimeSpan(hours: 6, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 7, seconds: 0),
    TimeSpan(hours: 8, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 5, seconds: 55),
    TimeSpan(hours: 9, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 5, seconds: 55),
    TimeSpan(hours: 11, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 21, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 7, seconds: 0),
    TimeSpan(hours: 22, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 8, seconds: 0)
]

var holidayDarkgreenTimetable: [TimeSpan: TimeSpan] = [
    TimeSpan(hours: 6, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 7, seconds: 0),
    TimeSpan(hours: 8, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 7, seconds: 0),
    TimeSpan(hours: 9, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 5, seconds: 40),
    TimeSpan(hours: 11, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 5, seconds: 40),
    TimeSpan(hours: 21, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 7, seconds: 0),
    TimeSpan(hours: 22, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 8, seconds: 0)
]

// MRT
var blueTimetable: [TimeSpan: TimeSpan] = [
    TimeSpan(hours: 6, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 7, seconds: 0),
    TimeSpan(hours: 7, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 4, seconds: 0),
    TimeSpan(hours: 9, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 7, seconds: 0),
    TimeSpan(hours: 16, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 4, seconds: 0),
    TimeSpan(hours: 19, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 7, seconds: 0)
]

var purpleTimetable: [TimeSpan: TimeSpan] = [
    TimeSpan(hours: 5, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 9, seconds: 0),
    TimeSpan(hours: 6, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 8, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 9, seconds: 0),
    TimeSpan(hours: 17, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 19, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 9, seconds: 0)
]

var holidayPurpleTimetable: [TimeSpan: TimeSpan] = [
    TimeSpan(hours: 6, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 9, seconds: 0),
    TimeSpan(hours: 6, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 8, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 9, seconds: 0),
    TimeSpan(hours: 17, minutes: 0, seconds: 0): TimeSpan(hours: 0, minutes: 6, seconds: 0),
    TimeSpan(hours: 19, minutes: 30, seconds: 0): TimeSpan(hours: 0, minutes: 9, seconds: 0)
]

// ARL
var arlTimetable: [TimeSpan] = [
    TimeSpan(hours: 0, minutes: 14, seconds: 0),
    TimeSpan(hours: 6, minutes: 14, seconds: 0),
    TimeSpan(hours: 6, minutes: 26, seconds: 0),
    TimeSpan(hours: 6, minutes: 38, seconds: 0),
    TimeSpan(hours: 6, minutes: 51, seconds: 0),
    TimeSpan(hours: 7, minutes: 4, seconds: 0),
    TimeSpan(hours: 7, minutes: 16, seconds: 0),
    TimeSpan(hours: 7, minutes: 29, seconds: 0),
    TimeSpan(hours: 7, minutes: 42, seconds: 0),
    TimeSpan(hours: 7, minutes: 54, seconds: 0),
    TimeSpan(hours: 8, minutes: 7, seconds: 0),
    TimeSpan(hours: 8, minutes: 20, seconds: 0),
    TimeSpan(hours: 8, minutes: 32, seconds: 0),
    TimeSpan(hours: 8, minutes: 45, seconds: 0),
    TimeSpan(hours: 8, minutes: 58, seconds: 0),
    TimeSpan(hours: 9, minutes: 11, seconds: 0),
    TimeSpan(hours: 9, minutes: 24, seconds: 0),
    TimeSpan(hours: 9, minutes: 38, seconds: 0),
    TimeSpan(hours: 9, minutes: 48, seconds: 0),
    TimeSpan(hours: 10, minutes: 2, seconds: 0),
    TimeSpan(hours: 10, minutes: 20, seconds: 0),
    TimeSpan(hours: 10, minutes: 35, seconds: 0),
    TimeSpan(hours: 10, minutes: 51, seconds: 0),
    TimeSpan(hours: 11, minutes: 7, seconds: 0),
    TimeSpan(hours: 11, minutes: 22, seconds: 0),
    TimeSpan(hours: 11, minutes: 38, seconds: 0),
    TimeSpan(hours: 11, minutes: 54, seconds: 0),
    TimeSpan(hours: 12, minutes: 9, seconds: 0),
    TimeSpan(hours: 12, minutes: 25, seconds: 0),
    TimeSpan(hours: 12, minutes: 41, seconds: 0),
    TimeSpan(hours: 12, minutes: 56, seconds: 0),
    TimeSpan(hours: 13, minutes: 12, seconds: 0),
    TimeSpan(hours: 13, minutes: 28, seconds: 0),
    TimeSpan(hours: 13, minutes: 43, seconds: 0),
    TimeSpan(hours: 13, minutes: 59, seconds: 0),
    TimeSpan(hours: 14, minutes: 15, seconds: 0),
    TimeSpan(hours: 14, minutes: 30, seconds: 0),
    TimeSpan(hours: 14, minutes: 45, seconds: 0),
    TimeSpan(hours: 15, minutes: 2, seconds: 0),
    TimeSpan(hours: 15, minutes: 17, seconds: 0),
    TimeSpan(hours: 15, minutes: 33, seconds: 0),
    TimeSpan(hours: 15, minutes: 49, seconds: 0),
    TimeSpan(hours: 16, minutes: 4, seconds: 0),
    TimeSpan(hours: 16, minutes: 22, seconds: 0),
    TimeSpan(hours: 16, minutes: 37, seconds: 0),
    TimeSpan(hours: 16, minutes: 51, seconds: 0),
    TimeSpan(hours: 17, minutes: 7, seconds: 0),
    TimeSpan(hours: 17, minutes: 19, seconds: 0),
    TimeSpan(hours: 17, minutes: 31, seconds: 0),
    TimeSpan(hours: 17, minutes: 44, seconds: 0),
    TimeSpan(hours: 17, minutes: 57, seconds: 0),
    TimeSpan(hours: 18, minutes: 9, seconds: 0),
    TimeSpan(hours: 18, minutes: 22, seconds: 0),
    TimeSpan(hours: 18, minutes: 35, seconds: 0),
    TimeSpan(hours: 18, minutes: 47, seconds: 0),
    TimeSpan(hours: 19, minutes: 0, seconds: 0),
    TimeSpan(hours: 19, minutes: 13, seconds: 0),
    TimeSpan(hours: 19, minutes: 25, seconds: 0),
    TimeSpan(hours: 19, minutes: 38, seconds: 0),
    TimeSpan(hours: 19, minutes: 51, seconds: 0),
    TimeSpan(hours: 20, minutes: 3, seconds: 0),
    TimeSpan(hours: 20, minutes: 16, seconds: 0),
    TimeSpan(hours: 20, minutes: 29, seconds: 0),
    TimeSpan(hours: 20, minutes: 42, seconds: 0),
    TimeSpan(hours: 20, minutes: 56, seconds: 0),
    TimeSpan(hours: 21, minutes: 10, seconds: 0),
    TimeSpan(hours: 21, minutes: 20, seconds: 0),
    TimeSpan(hours: 21, minutes: 35, seconds: 0),
    TimeSpan(hours: 21, minutes: 51, seconds: 0),
    TimeSpan(hours: 22, minutes: 7, seconds: 0),
    TimeSpan(hours: 22, minutes: 22, seconds: 0),
    TimeSpan(hours: 22, minutes: 38, seconds: 0),
    TimeSpan(hours: 22, minutes: 54, seconds: 0),
    TimeSpan(hours: 23, minutes: 9, seconds: 0),
    TimeSpan(hours: 23, minutes: 25, seconds: 0),
    TimeSpan(hours: 23, minutes: 41, seconds: 0),
    TimeSpan(hours: 23, minutes: 56, seconds: 0)
]

// ARL Holiday
var arlHolidayTimetable: [TimeSpan] = [
    TimeSpan(hours: 0, minutes: 2, seconds: 0),
    TimeSpan(hours: 0, minutes: 17, seconds: 0),
    TimeSpan(hours: 6, minutes: 16, seconds: 0),
    TimeSpan(hours: 6, minutes: 32, seconds: 0),
    TimeSpan(hours: 6, minutes: 48, seconds: 0),
    TimeSpan(hours: 7, minutes: 3, seconds: 0),
    TimeSpan(hours: 7, minutes: 19, seconds: 0),
    TimeSpan(hours: 7, minutes: 35, seconds: 0),
    TimeSpan(hours: 7, minutes: 50, seconds: 0),
    TimeSpan(hours: 8, minutes: 6, seconds: 0),
    TimeSpan(hours: 8, minutes: 22, seconds: 0),
    TimeSpan(hours: 8, minutes: 37, seconds: 0),
    TimeSpan(hours: 8, minutes: 53, seconds: 0),
    TimeSpan(hours: 9, minutes: 9, seconds: 0),
    TimeSpan(hours: 9, minutes: 24, seconds: 0),
    TimeSpan(hours: 9, minutes: 40, seconds: 0),
    TimeSpan(hours: 9, minutes: 56, seconds: 0),
    TimeSpan(hours: 10, minutes: 11, seconds: 0),
    TimeSpan(hours: 10, minutes: 27, seconds: 0),
    TimeSpan(hours: 10, minutes: 43, seconds: 0),
    TimeSpan(hours: 10, minutes: 58, seconds: 0),
    TimeSpan(hours: 11, minutes: 14, seconds: 0),
    TimeSpan(hours: 11, minutes: 30, seconds: 0),
    TimeSpan(hours: 11, minutes: 45, seconds: 0),
    TimeSpan(hours: 12, minutes: 1, seconds: 0),
    TimeSpan(hours: 12, minutes: 17, seconds: 0),
    TimeSpan(hours: 12, minutes: 32, seconds: 0),
    TimeSpan(hours: 12, minutes: 48, seconds: 0),
    TimeSpan(hours: 13, minutes: 4, seconds: 0),
    TimeSpan(hours: 13, minutes: 19, seconds: 0),
    TimeSpan(hours: 13, minutes: 35, seconds: 0),
    TimeSpan(hours: 13, minutes: 51, seconds: 0),
    TimeSpan(hours: 14, minutes: 6, seconds: 0),
    TimeSpan(hours: 14, minutes: 22, seconds: 0),
    TimeSpan(hours: 14, minutes: 38, seconds: 0),
    TimeSpan(hours: 14, minutes: 53, seconds: 0),
    TimeSpan(hours: 15, minutes: 9, seconds: 0),
    TimeSpan(hours: 15, minutes: 25, seconds: 0),
    TimeSpan(hours: 15, minutes: 40, seconds: 0),
    TimeSpan(hours: 15, minutes: 56, seconds: 0),
    TimeSpan(hours: 16, minutes: 12, seconds: 0),
    TimeSpan(hours: 16, minutes: 27, seconds: 0),
    TimeSpan(hours: 16, minutes: 43, seconds: 0),
    TimeSpan(hours: 16, minutes: 59, seconds: 0),
    TimeSpan(hours: 17, minutes: 14, seconds: 0),
    TimeSpan(hours: 17, minutes: 30, seconds: 0),
    TimeSpan(hours: 17, minutes: 46, seconds: 0),
    TimeSpan(hours: 18, minutes: 1, seconds: 0),
    TimeSpan(hours: 18, minutes: 17, seconds: 0),
    TimeSpan(hours: 18, minutes: 33, seconds: 0),
    TimeSpan(hours: 18, minutes: 48, seconds: 0),
    TimeSpan(hours: 19, minutes: 4, seconds: 0),
    TimeSpan(hours: 19, minutes: 20, seconds: 0),
    TimeSpan(hours: 19, minutes: 35, seconds: 0),
    TimeSpan(hours: 19, minutes: 51, seconds: 0),
    TimeSpan(hours: 20, minutes: 7, seconds: 0),
    TimeSpan(hours: 20, minutes: 22, seconds: 0),
    TimeSpan(hours: 20, minutes: 38, seconds: 0),
    TimeSpan(hours: 20, minutes: 54, seconds: 0),
    TimeSpan(hours: 21, minutes: 9, seconds: 0),
    TimeSpan(hours: 21, minutes: 25, seconds: 0),
    TimeSpan(hours: 21, minutes: 41, seconds: 0),
    TimeSpan(hours: 21, minutes: 56, seconds: 0),
    TimeSpan(hours: 22, minutes: 12, seconds: 0),
    TimeSpan(hours: 22, minutes: 28, seconds: 0),
    TimeSpan(hours: 22, minutes: 43, seconds: 0),
    TimeSpan(hours: 22, minutes: 59, seconds: 0),
    TimeSpan(hours: 23, minutes: 15, seconds: 0),
    TimeSpan(hours: 23, minutes: 30, seconds: 0),
    TimeSpan(hours: 23, minutes: 46, seconds: 0)
]
*/





// MARK: - Core Data stack

var persistentContainer: NSPersistentContainer = {
    let container = NSPersistentContainer(name: "Stations")
    container.loadPersistentStores(completionHandler: { (_, error) in
        if let error = error as NSError? {
            fatalError("Unresolved error \(error), \(error.userInfo)")
        }
    })
    return container
}()

// MARK: - Core Data Saving support

func saveContext () {
    let context = persistentContainer.viewContext
    if context.hasChanges {
        do {
            try context.save()
        } catch {
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
}

let entityName = "Stations" // Make sure it matches your Core Data model
let context = persistentContainer.viewContext

// add one
//if let entity = NSEntityDescription.entity(forEntityName: entityName, in: context) {
//    let newObject = NSManagedObject(entity: entity, insertInto: context)
//    newObject.setValue("E4", forKey: "station_id")
//    newObject.setValue("Asok BTS", forKey: "station_name")
//    newObject.setValue("bts", forKey: "station_line")
//    newObject.setValue("lightgreen", forKey: "station_linecolor")
//    newObject.setValue(13.736665573624121, forKey: "latitude")
//    newObject.setValue(100.55926601296763, forKey: "longitude")
//    newObject.setValue(false, forKey: "is_extended")
//
//    do {
//        try context.save()
//        print("Object saved successfully.")
//    } catch {
//        print("Failed to save object: \(error)")
//    }
//}

// ********** add from array **********
//for station in arldata {
//    if let entity = NSEntityDescription.entity(forEntityName: "Stations", in: context) {
//            let newStation = NSManagedObject(entity: entity, insertInto: context)
//            newStation.setValue(station[0], forKey: "station_id")
//            newStation.setValue(station[1], forKey: "station_name")
//            newStation.setValue(station[2], forKey: "station_line")
//            newStation.setValue(station[3], forKey: "station_linecolor")
//            newStation.setValue(station[4], forKey: "latitude")
//            newStation.setValue(station[5], forKey: "longitude")
//            newStation.setValue(station[6], forKey: "is_extended")
//        }
//}

// get all data
//let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Stations")
//do {
//    let results = try context.fetch(fetchRequest) as! [Stations]
//    for result in results {
//        print(result.id)
//        print(result.station_id!)
//        print(result.station_name!)
//        print(result.station_line!)
//        print(result.station_linecolor!)
//        print(result.latitude)
//        print(result.longitude)
//        print(result.is_extended)
//        print("-----")
//    }
//} catch {
//    print("Failed to fetch data: \(error)")
//}

// delete data
// Example: Delete a Station object where the name is "StationToDelete"
//fetchRequest.predicate = NSPredicate(format: "station_id == %@", "E3")
//do {
//    let results = try context.fetch(fetchRequest) as! [Stations]
//
//    for station in results {
//        // Delete the object from the context
//        context.delete(station)
//    }
//
//    // Save the context to persist the changes
//    try context.save()
//} catch {
//    print("Error deleting data: \(error)")
//}

/*
// delete all
func deleteAllData(entityName: String) {
    let context = persistentContainer.viewContext

    // Create a fetch request for the specified entity
    let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: entityName)

    do {
        // Fetch all objects from the entity
        let objects = try context.fetch(fetchRequest) as! [NSManagedObject]

        // Iterate through the fetched objects and delete each one
        for object in objects {
            context.delete(object)
        }

        // Save the changes to the persistent store
        try context.save()

        print("All data in \(entityName) deleted successfully.")
    } catch {
        print("Failed to delete data in \(entityName): \(error)")
    }
}

// Call the function with the entity name you want to delete data from
deleteAllData(entityName: "Stations")
*/

//use after made changes to data
//saveContext()
