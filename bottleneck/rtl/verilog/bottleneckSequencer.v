// DO NOT EDIT
// This file is automatically generated!
// $ smg.shen rtl/SMG/seq.smg
//
// https://github.com/sam-falvo/smg

module BottleneckSequencer(
	input 	SAckI,
	input 	ack3,
	input 	ack2,
	input 	ack1,
	input 	MAdrI2,
	input 	MAdrI1,
	input 	MAdrI0,
	input 	MSiz0,
	input 	MSiz1,
	input 	MStbI,
	input 	MCycI,
	input 	ResetI,
	output 	SWeO_MWeI,
	output 	SStbO_MStbI,
	output 	SStbO_1,
	output 	SSizO_MSizI0,
	output 	SSizO_1,
	output 	SSignedO_MSignedI,
	output 	SDatO_MDatI63_48,
	output 	SDatO_MDatI47_32,
	output 	SDatO_MDatI31_16,
	output 	SDatO_MDatI,
	output 	plus6,
	output 	plus4,
	output 	plus2,
	output 	SAdrO_MAdrI,
	output 	MErrAlignO_1,
	output 	MDatO_SDatI,
	output 	MAckO_SAckI,
	output 	MAckO_1,
	output 	Hold3_SDatI,
	output 	Hold2_SDatI,
	output 	Hold1_SDatI,
	output 	ack3_o,
	output 	ack2_o,
	output 	ack1_o
);
wire  aligned;
wire R1391 = ~(|ResetI) & (|MCycI) & (|MStbI) & ~(|aligned) ; 
wire R1392 = ~(|ResetI) & (|MCycI) & (|MStbI) & ~(|MSiz1) & ~(|MSiz0) ; 
wire R1393 = ~(|ResetI) & (|MCycI) & (|MStbI) & ~(|MSiz1) & (|MSiz0) & ~(|MAdrI0) ; 
wire R1394 = ~(|ResetI) & (|MCycI) & (|MStbI) & (|MSiz1) & ~(|MSiz0) & ~(|MAdrI1) & ~(|MAdrI0) & ~(|ack1) ; 
wire R1395 = ~(|ResetI) & (|MCycI) & (|MStbI) & (|MSiz1) & ~(|MSiz0) & ~(|MAdrI1) & ~(|MAdrI0) & ~(|ack1) & (|SAckI) ; 
wire R1396 = ~(|ResetI) & (|MCycI) & (|MStbI) & (|MSiz1) & ~(|MSiz0) & ~(|MAdrI1) & ~(|MAdrI0) & (|ack1) ; 
wire R1397 = ~(|ResetI) & (|MCycI) & (|MStbI) & (|MSiz1) & ~(|MSiz0) & ~(|MAdrI1) & ~(|MAdrI0) & (|ack1) & ~(|SAckI) ; 
wire R1398 = ~(|ResetI) & (|MCycI) & (|MStbI) & (|MSiz1) & ~(|MSiz0) & ~(|MAdrI1) & ~(|MAdrI0) & (|ack1) & (|SAckI) ; 
wire R1399 = ~(|ResetI) & (|MCycI) & (|MStbI) & (|MSiz1) & (|MSiz0) & ~(|MAdrI2) & ~(|MAdrI1) & ~(|MAdrI0) & ~(|ack1) & ~(|ack2) & ~(|ack3) ; 
wire R1400 = ~(|ResetI) & (|MCycI) & (|MStbI) & (|MSiz1) & (|MSiz0) & ~(|MAdrI2) & ~(|MAdrI1) & ~(|MAdrI0) & ~(|ack1) & ~(|ack2) & ~(|ack3) & (|SAckI) ; 
wire R1401 = ~(|ResetI) & (|MCycI) & (|MStbI) & (|MSiz1) & (|MSiz0) & ~(|MAdrI2) & ~(|MAdrI1) & ~(|MAdrI0) & ~(|ack1) & ~(|ack2) & (|ack3) ; 
wire R1402 = ~(|ResetI) & (|MCycI) & (|MStbI) & (|MSiz1) & (|MSiz0) & ~(|MAdrI2) & ~(|MAdrI1) & ~(|MAdrI0) & ~(|ack1) & ~(|ack2) & (|ack3) & (|SAckI) ; 
wire R1403 = ~(|ResetI) & (|MCycI) & (|MStbI) & (|MSiz1) & (|MSiz0) & ~(|MAdrI2) & ~(|MAdrI1) & ~(|MAdrI0) & ~(|ack1) & (|ack2) & (|ack3) ; 
wire R1404 = ~(|ResetI) & (|MCycI) & (|MStbI) & (|MSiz1) & (|MSiz0) & ~(|MAdrI2) & ~(|MAdrI1) & ~(|MAdrI0) & ~(|ack1) & (|ack2) & (|ack3) & (|SAckI) ; 
wire R1405 = ~(|ResetI) & (|MCycI) & (|MStbI) & (|MSiz1) & (|MSiz0) & ~(|MAdrI2) & ~(|MAdrI1) & ~(|MAdrI0) & (|ack1) & (|ack2) & (|ack3) ; 
wire R1406 = ~(|ResetI) & (|MCycI) & (|MStbI) & (|MSiz1) & (|MSiz0) & ~(|MAdrI2) & ~(|MAdrI1) & ~(|MAdrI0) & (|ack1) & (|ack2) & (|ack3) & ~(|SAckI) ; 
wire R1407 = ~(|ResetI) & (|MCycI) & (|MStbI) & (|MSiz1) & (|MSiz0) & ~(|MAdrI2) & ~(|MAdrI1) & ~(|MAdrI0) & (|ack1) & (|ack2) & (|ack3) & (|SAckI) ; 
wire  out1408 = R1391 ? 1 : 0 ; 
wire  out1409 = R1392 ? 1 : 0 ; 
wire  out1410 = R1392 ? 1 : 0 ; 
wire  out1411 = R1392 ? 1 : 0 ; 
wire  out1412 = R1392 ? 1 : 0 ; 
wire  out1413 = R1392 ? 1 : 0 ; 
wire  out1414 = R1392 ? 1 : 0 ; 
wire  out1415 = R1392 ? 1 : 0 ; 
wire  out1416 = R1392 ? 1 : 0 ; 
wire  out1417 = R1392 ? 1 : 0 ; 
wire  out1418 = R1393 ? 1 : 0 ; 
wire  out1419 = R1393 ? 1 : 0 ; 
wire  out1420 = R1393 ? 1 : 0 ; 
wire  out1421 = R1393 ? 1 : 0 ; 
wire  out1422 = R1393 ? 1 : 0 ; 
wire  out1423 = R1393 ? 1 : 0 ; 
wire  out1424 = R1393 ? 1 : 0 ; 
wire  out1425 = R1393 ? 1 : 0 ; 
wire  out1426 = R1393 ? 1 : 0 ; 
wire  out1427 = R1394 ? 1 : 0 ; 
wire  out1428 = R1394 ? 1 : 0 ; 
wire  out1429 = R1394 ? 1 : 0 ; 
wire  out1430 = R1394 ? 1 : 0 ; 
wire  out1431 = R1394 ? 1 : 0 ; 
wire  out1432 = R1394 ? 1 : 0 ; 
wire  out1433 = R1394 ? 1 : 0 ; 
wire  out1434 = R1394 ? 1 : 0 ; 
wire  out1435 = R1394 ? 1 : 0 ; 
wire  out1436 = R1395 ? 1 : 0 ; 
wire  out1437 = R1395 ? 1 : 0 ; 
wire  out1438 = R1396 ? 1 : 0 ; 
wire  out1439 = R1396 ? 1 : 0 ; 
wire  out1440 = R1396 ? 1 : 0 ; 
wire  out1441 = R1396 ? 1 : 0 ; 
wire  out1442 = R1396 ? 1 : 0 ; 
wire  out1443 = R1396 ? 1 : 0 ; 
wire  out1444 = R1396 ? 1 : 0 ; 
wire  out1445 = R1396 ? 1 : 0 ; 
wire  out1446 = R1397 ? 1 : 0 ; 
wire  out1447 = R1398 ? 1 : 0 ; 
wire  out1448 = R1399 ? 1 : 0 ; 
wire  out1449 = R1399 ? 1 : 0 ; 
wire  out1450 = R1399 ? 1 : 0 ; 
wire  out1451 = R1399 ? 1 : 0 ; 
wire  out1452 = R1399 ? 1 : 0 ; 
wire  out1453 = R1399 ? 1 : 0 ; 
wire  out1454 = R1399 ? 1 : 0 ; 
wire  out1455 = R1399 ? 1 : 0 ; 
wire  out1456 = R1399 ? 1 : 0 ; 
wire  out1457 = R1400 ? 1 : 0 ; 
wire  out1458 = R1401 ? 1 : 0 ; 
wire  out1459 = R1401 ? 1 : 0 ; 
wire  out1460 = R1401 ? 1 : 0 ; 
wire  out1461 = R1401 ? 1 : 0 ; 
wire  out1462 = R1401 ? 1 : 0 ; 
wire  out1463 = R1401 ? 1 : 0 ; 
wire  out1464 = R1401 ? 1 : 0 ; 
wire  out1465 = R1401 ? 1 : 0 ; 
wire  out1466 = R1401 ? 1 : 0 ; 
wire  out1467 = R1401 ? 1 : 0 ; 
wire  out1468 = R1402 ? 1 : 0 ; 
wire  out1469 = R1402 ? 1 : 0 ; 
wire  out1470 = R1403 ? 1 : 0 ; 
wire  out1471 = R1403 ? 1 : 0 ; 
wire  out1472 = R1403 ? 1 : 0 ; 
wire  out1473 = R1403 ? 1 : 0 ; 
wire  out1474 = R1403 ? 1 : 0 ; 
wire  out1475 = R1403 ? 1 : 0 ; 
wire  out1476 = R1403 ? 1 : 0 ; 
wire  out1477 = R1403 ? 1 : 0 ; 
wire  out1478 = R1403 ? 1 : 0 ; 
wire  out1479 = R1403 ? 1 : 0 ; 
wire  out1480 = R1403 ? 1 : 0 ; 
wire  out1481 = R1404 ? 1 : 0 ; 
wire  out1482 = R1404 ? 1 : 0 ; 
wire  out1483 = R1404 ? 1 : 0 ; 
wire  out1484 = R1405 ? 1 : 0 ; 
wire  out1485 = R1405 ? 1 : 0 ; 
wire  out1486 = R1405 ? 1 : 0 ; 
wire  out1487 = R1405 ? 1 : 0 ; 
wire  out1488 = R1405 ? 1 : 0 ; 
wire  out1489 = R1405 ? 1 : 0 ; 
wire  out1490 = R1405 ? 1 : 0 ; 
wire  out1491 = R1405 ? 1 : 0 ; 
wire  out1492 = R1406 ? 1 : 0 ; 
wire  out1493 = R1406 ? 1 : 0 ; 
wire  out1494 = R1406 ? 1 : 0 ; 
wire  out1495 = R1407 ? 1 : 0 ; 
assign SStbO_MStbI = out1422|out1413;
assign plus2 = out1471|out1428;
assign SStbO_1 = out1488|out1475|out1463|out1453|out1442|out1432;
assign plus4 = out1459;
assign plus6 = out1449;
assign SSignedO_MSignedI = out1486|out1473|out1461|out1451|out1440|out1430|out1420|out1411;
assign SSizO_1 = out1487|out1474|out1462|out1452|out1441|out1431;
assign aligned = out1491|out1478|out1466|out1456|out1445|out1437|out1435|out1426|out1417;
assign MAckO_SAckI = out1424|out1415;
assign ack1_o = out1492|out1481|out1446|out1436;
assign ack2_o = out1493|out1482|out1479|out1468;
assign ack3_o = out1494|out1483|out1480|out1469|out1467|out1457;
assign SAdrO_MAdrI = out1484|out1470|out1458|out1448|out1438|out1427|out1418|out1409;
assign SDatO_MDatI31_16 = out1472|out1429;
assign SDatO_MDatI = out1485|out1439|out1419|out1410;
assign MDatO_SDatI = out1490|out1444|out1425|out1416;
assign MAckO_1 = out1495|out1447;
assign Hold1_SDatI = out1477|out1434;
assign SDatO_MDatI47_32 = out1460;
assign Hold2_SDatI = out1465;
assign Hold3_SDatI = out1455;
assign SSizO_MSizI0 = out1421|out1412;
assign SDatO_MDatI63_48 = out1450;
assign SWeO_MWeI = out1489|out1476|out1464|out1454|out1443|out1433|out1423|out1414;
assign MErrAlignO_1 = out1408;
endmodule
