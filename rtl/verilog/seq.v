// DO NOT EDIT
// This file is automatically generated!
// $ smg.shen rtl/SMG/seq.smg
//
// https://github.com/sam-falvo/smg

module Sequencer(
	input 	xt3,
	input 	xt2,
	input 	xt1,
	input 	xt0,
	input [31:0]	ir,
	input 	dack_i,
	input 	iack_i,
	input 	ft0,
	input 	rst,
	output 	rdat_ddat,
	output 	dsiz_fn3,
	output 	dstb_1,
	output 	dcyc_1,
	output 	dadr_alu,
	output 	ia_pc,
	output 	sx32_en,
	output 	pc_alu,
	output 	xt3_o,
	output 	and_en,
	output 	rsh_en,
	output 	xor_en,
	output 	ltu_en,
	output 	lts_en,
	output 	invB_en,
	output 	cflag_i,
	output 	lsh_en,
	output 	sum_en,
	output 	alub_imm20u,
	output 	alub_imm12i,
	output 	alub_rdat,
	output 	alua_ia,
	output 	alua_0,
	output 	alua_rdat,
	output 	rwe_o,
	output 	rdat_pc,
	output 	rdat_alu,
	output 	ra_ird,
	output 	ra_ir2,
	output 	ra_ir1,
	output 	xt2_o,
	output 	xt1_o,
	output 	jammed_o,
	output 	xt0_o,
	output 	ir_idat,
	output 	pc_pcPlus4,
	output 	isiz_2,
	output 	iadr_pc,
	output 	pc_mbvec,
	output 	ft0_o
);
wire  isLoad;
wire  isLuiAuipc;
wire  useAlu2;
wire  useAlu;
wire  fn3_is_111;
wire  fn3_is_110;
wire  fn3_is_101;
wire  fn3_is_100;
wire  fn3_is_011;
wire  fn3_is_010;
wire  fn3_is_001;
wire  fn3_is_000;
wire  isJalr;
wire  isOpR;
wire  isOpI;
wire R1391 = (|rst) ; 
wire R1392 = ~(|rst) & (|ft0) & ~(|iack_i) ; 
wire R1393 = ~(|rst) & (|ft0) & (|iack_i) ; 
wire R1394 = ~(|rst) & ~(|ft0) & ~(|xt0) & ~(|xt1) & ~(|xt2) & ~(|xt3) ; 
wire R1395 = ( ir[14:12] == 3'b000 ) ; 
wire R1396 = ( ir[14:12] == 3'b001 ) ; 
wire R1397 = ( ir[14:12] == 3'b010 ) ; 
wire R1398 = ( ir[14:12] == 3'b011 ) ; 
wire R1399 = ( ir[14:12] == 3'b100 ) ; 
wire R1400 = ( ir[14:12] == 3'b101 ) ; 
wire R1401 = ( ir[14:12] == 3'b110 ) ; 
wire R1402 = ( ir[14:12] == 3'b111 ) ; 
wire R1403 = ( ir[6:4] == 7'b001 ) & ( ir[2:0] == 3'b011 ) ; 
wire R1404 = ( ir[6:4] == 7'b011 ) & ( ir[2:0] == 3'b011 ) ; 
wire R1405 = ~(|rst) & (|xt0) & (|isOpI) ; 
wire R1406 = ~(|rst) & (|xt1) & (|isOpI) ; 
wire R1407 = ~(|rst) & (|xt2) & (|isOpI) ; 
wire R1408 = (|useAlu) & (|fn3_is_000) ; 
wire R1409 = (|useAlu) & (|fn3_is_001) ; 
wire R1410 = (|useAlu) & (|fn3_is_010) ; 
wire R1411 = (|useAlu) & (|fn3_is_011) ; 
wire R1412 = (|useAlu) & (|fn3_is_100) ; 
wire R1413 = (|useAlu) & (|fn3_is_101) & ~(|ir[30]) ; 
wire R1414 = (|useAlu) & (|fn3_is_101) & (|ir[30]) ; 
wire R1415 = (|useAlu) & (|fn3_is_110) ; 
wire R1416 = (|useAlu) & (|fn3_is_111) ; 
wire R1417 = (|useAlu) & (|ir[3]) ; 
wire R1418 = ~(|rst) & (|xt0) & (|isOpR) ; 
wire R1419 = ~(|rst) & (|xt1) & (|isOpR) ; 
wire R1420 = ~(|rst) & (|xt2) & (|isOpR) ; 
wire R1421 = ~(|rst) & (|xt3) & (|isOpR) ; 
wire R1422 = (|useAlu2) & (|fn3_is_000) & ~(|ir[30]) ; 
wire R1423 = (|useAlu2) & (|fn3_is_000) & (|ir[30]) ; 
wire R1424 = (|useAlu2) & (|fn3_is_001) ; 
wire R1425 = (|useAlu2) & (|fn3_is_010) ; 
wire R1426 = (|useAlu2) & (|fn3_is_011) ; 
wire R1427 = (|useAlu2) & (|fn3_is_100) ; 
wire R1428 = (|useAlu2) & (|fn3_is_101) & ~(|ir[30]) ; 
wire R1429 = (|useAlu2) & (|fn3_is_101) & (|ir[30]) ; 
wire R1430 = (|useAlu2) & (|fn3_is_110) ; 
wire R1431 = (|useAlu2) & (|fn3_is_111) ; 
wire R1432 = (|useAlu2) & (|ir[3]) ; 
wire R1433 = ( ir[6:0] == 7'b1100111 ) ; 
wire R1434 = ~(|rst) & (|xt0) & (|isJalr) ; 
wire R1435 = ~(|rst) & (|xt1) & (|isJalr) ; 
wire R1436 = ~(|rst) & (|xt2) & (|isJalr) ; 
wire R1437 = ~(|rst) & (|xt3) & (|isJalr) ; 
wire R1438 = ~(|ir[6]) & ( ir[4:0] == 5'b10111 ) ; 
wire R1439 = ~(|rst) & (|xt0) & (|isLuiAuipc) ; 
wire R1440 = ~(|rst) & (|xt0) & (|isLuiAuipc) & (|ir[5]) ; 
wire R1441 = ~(|rst) & (|xt0) & (|isLuiAuipc) & ~(|ir[5]) ; 
wire R1442 = ~(|rst) & (|xt1) & (|isLuiAuipc) ; 
wire R1443 = ( ir[6:0] == 7'b0000011 ) ; 
wire R1444 = ~(|rst) & (|xt0) & (|isLoad) ; 
wire R1445 = ~(|rst) & (|xt1) & (|isLoad) ; 
wire R1446 = ~(|rst) & (|xt2) & (|isLoad) & ~(|dack_i) ; 
wire R1447 = ~(|rst) & (|xt2) & (|isLoad) & (|dack_i) ; 
wire  out1448 = R1391 ? 1 : 0 ; 
wire  out1449 = R1391 ? 1 : 0 ; 
wire  out1450 = R1392 ? 1 : 0 ; 
wire  out1451 = R1392 ? 1 : 0 ; 
wire  out1452 = R1392 ? 1 : 0 ; 
wire  out1453 = R1393 ? 1 : 0 ; 
wire  out1454 = R1393 ? 1 : 0 ; 
wire  out1455 = R1393 ? 1 : 0 ; 
wire  out1456 = R1393 ? 1 : 0 ; 
wire  out1457 = R1393 ? 1 : 0 ; 
wire  out1458 = R1393 ? 1 : 0 ; 
wire  out1459 = R1394 ? 1 : 0 ; 
wire  out1460 = R1395 ? 1 : 0 ; 
wire  out1461 = R1396 ? 1 : 0 ; 
wire  out1462 = R1397 ? 1 : 0 ; 
wire  out1463 = R1398 ? 1 : 0 ; 
wire  out1464 = R1399 ? 1 : 0 ; 
wire  out1465 = R1400 ? 1 : 0 ; 
wire  out1466 = R1401 ? 1 : 0 ; 
wire  out1467 = R1402 ? 1 : 0 ; 
wire  out1468 = R1403 ? 1 : 0 ; 
wire  out1469 = R1404 ? 1 : 0 ; 
wire  out1470 = R1405 ? 1 : 0 ; 
wire  out1471 = R1405 ? 1 : 0 ; 
wire  out1472 = R1406 ? 1 : 0 ; 
wire  out1473 = R1406 ? 1 : 0 ; 
wire  out1474 = R1406 ? 1 : 0 ; 
wire  out1475 = R1407 ? 1 : 0 ; 
wire  out1476 = R1407 ? 1 : 0 ; 
wire  out1477 = R1407 ? 1 : 0 ; 
wire  out1478 = R1407 ? 1 : 0 ; 
wire  out1479 = R1407 ? 1 : 0 ; 
wire  out1480 = R1408 ? 1 : 0 ; 
wire  out1481 = R1409 ? 1 : 0 ; 
wire  out1482 = R1410 ? 1 : 0 ; 
wire  out1483 = R1410 ? 1 : 0 ; 
wire  out1484 = R1410 ? 1 : 0 ; 
wire  out1485 = R1411 ? 1 : 0 ; 
wire  out1486 = R1411 ? 1 : 0 ; 
wire  out1487 = R1411 ? 1 : 0 ; 
wire  out1488 = R1412 ? 1 : 0 ; 
wire  out1489 = R1413 ? 1 : 0 ; 
wire  out1490 = R1414 ? 1 : 0 ; 
wire  out1491 = R1414 ? 1 : 0 ; 
wire  out1492 = R1415 ? 1 : 0 ; 
wire  out1493 = R1415 ? 1 : 0 ; 
wire  out1494 = R1416 ? 1 : 0 ; 
wire  out1495 = R1417 ? 1 : 0 ; 
wire  out1496 = R1418 ? 1 : 0 ; 
wire  out1497 = R1418 ? 1 : 0 ; 
wire  out1498 = R1419 ? 1 : 0 ; 
wire  out1499 = R1419 ? 1 : 0 ; 
wire  out1500 = R1419 ? 1 : 0 ; 
wire  out1501 = R1420 ? 1 : 0 ; 
wire  out1502 = R1420 ? 1 : 0 ; 
wire  out1503 = R1421 ? 1 : 0 ; 
wire  out1504 = R1421 ? 1 : 0 ; 
wire  out1505 = R1421 ? 1 : 0 ; 
wire  out1506 = R1421 ? 1 : 0 ; 
wire  out1507 = R1421 ? 1 : 0 ; 
wire  out1508 = R1422 ? 1 : 0 ; 
wire  out1509 = R1423 ? 1 : 0 ; 
wire  out1510 = R1423 ? 1 : 0 ; 
wire  out1511 = R1423 ? 1 : 0 ; 
wire  out1512 = R1424 ? 1 : 0 ; 
wire  out1513 = R1425 ? 1 : 0 ; 
wire  out1514 = R1425 ? 1 : 0 ; 
wire  out1515 = R1425 ? 1 : 0 ; 
wire  out1516 = R1426 ? 1 : 0 ; 
wire  out1517 = R1426 ? 1 : 0 ; 
wire  out1518 = R1426 ? 1 : 0 ; 
wire  out1519 = R1427 ? 1 : 0 ; 
wire  out1520 = R1428 ? 1 : 0 ; 
wire  out1521 = R1429 ? 1 : 0 ; 
wire  out1522 = R1429 ? 1 : 0 ; 
wire  out1523 = R1430 ? 1 : 0 ; 
wire  out1524 = R1430 ? 1 : 0 ; 
wire  out1525 = R1431 ? 1 : 0 ; 
wire  out1526 = R1432 ? 1 : 0 ; 
wire  out1527 = R1433 ? 1 : 0 ; 
wire  out1528 = R1434 ? 1 : 0 ; 
wire  out1529 = R1434 ? 1 : 0 ; 
wire  out1530 = R1434 ? 1 : 0 ; 
wire  out1531 = R1434 ? 1 : 0 ; 
wire  out1532 = R1435 ? 1 : 0 ; 
wire  out1533 = R1435 ? 1 : 0 ; 
wire  out1534 = R1436 ? 1 : 0 ; 
wire  out1535 = R1436 ? 1 : 0 ; 
wire  out1536 = R1436 ? 1 : 0 ; 
wire  out1537 = R1437 ? 1 : 0 ; 
wire  out1538 = R1437 ? 1 : 0 ; 
wire  out1539 = R1437 ? 1 : 0 ; 
wire  out1540 = R1438 ? 1 : 0 ; 
wire  out1541 = R1439 ? 1 : 0 ; 
wire  out1542 = R1439 ? 1 : 0 ; 
wire  out1543 = R1440 ? 1 : 0 ; 
wire  out1544 = R1441 ? 1 : 0 ; 
wire  out1545 = R1442 ? 1 : 0 ; 
wire  out1546 = R1442 ? 1 : 0 ; 
wire  out1547 = R1442 ? 1 : 0 ; 
wire  out1548 = R1442 ? 1 : 0 ; 
wire  out1549 = R1442 ? 1 : 0 ; 
wire  out1550 = R1443 ? 1 : 0 ; 
wire  out1551 = R1444 ? 1 : 0 ; 
wire  out1552 = R1444 ? 1 : 0 ; 
wire  out1553 = R1445 ? 1 : 0 ; 
wire  out1554 = R1445 ? 1 : 0 ; 
wire  out1555 = R1445 ? 1 : 0 ; 
wire  out1556 = R1446 ? 1 : 0 ; 
wire  out1557 = R1446 ? 1 : 0 ; 
wire  out1558 = R1446 ? 1 : 0 ; 
wire  out1559 = R1446 ? 1 : 0 ; 
wire  out1560 = R1446 ? 1 : 0 ; 
wire  out1561 = R1446 ? 1 : 0 ; 
wire  out1562 = R1447 ? 1 : 0 ; 
wire  out1563 = R1447 ? 1 : 0 ; 
wire  out1564 = R1447 ? 1 : 0 ; 
wire  out1565 = R1447 ? 1 : 0 ; 
wire  out1566 = R1447 ? 1 : 0 ; 
wire  out1567 = R1447 ? 1 : 0 ; 
wire  out1568 = R1447 ? 1 : 0 ; 
wire  out1569 = R1447 ? 1 : 0 ; 
wire  out1570 = R1447 ? 1 : 0 ; 
assign dsiz_fn3 = out1566|out1561;
assign isLoad = out1550;
assign invB_en = out1517|out1514|out1511|out1486|out1483;
assign ia_pc = out1456;
assign cflag_i = out1522|out1516|out1513|out1510|out1491|out1485|out1482;
assign and_en = out1525|out1523|out1494|out1492;
assign isJalr = out1527;
assign isLuiAuipc = out1540;
assign alua_ia = out1544;
assign fn3_is_000 = out1460;
assign fn3_is_001 = out1461;
assign fn3_is_010 = out1462;
assign fn3_is_100 = out1464;
assign fn3_is_011 = out1463;
assign fn3_is_101 = out1465;
assign fn3_is_110 = out1466;
assign fn3_is_111 = out1467;
assign iadr_pc = out1453|out1450;
assign useAlu = out1478;
assign ra_ird = out1567|out1545|out1529|out1503|out1475;
assign jammed_o = out1459;
assign pc_alu = out1538;
assign dadr_alu = out1563|out1558;
assign pc_mbvec = out1449;
assign ir_idat = out1457;
assign lsh_en = out1512|out1481;
assign rdat_pc = out1530;
assign rdat_ddat = out1569;
assign rsh_en = out1521|out1520|out1490|out1489;
assign rwe_o = out1568|out1547|out1531|out1505|out1477;
assign alua_rdat = out1554|out1535|out1499|out1473;
assign alub_imm12i = out1555|out1536|out1474;
assign sx32_en = out1526|out1495;
assign alub_rdat = out1502;
assign rdat_alu = out1546|out1504|out1476;
assign lts_en = out1515|out1484;
assign sum_en = out1562|out1557|out1548|out1539|out1509|out1508|out1480;
assign ltu_en = out1518|out1487;
assign xor_en = out1524|out1519|out1493|out1488;
assign alub_imm20u = out1542;
assign alua_0 = out1543;
assign dcyc_1 = out1564|out1559;
assign ft0_o = out1570|out1549|out1537|out1507|out1479|out1452|out1448;
assign useAlu2 = out1506;
assign dstb_1 = out1565|out1560;
assign ra_ir1 = out1552|out1533|out1497|out1471;
assign ra_ir2 = out1500;
assign isOpI = out1468;
assign pc_pcPlus4 = out1455;
assign xt0_o = out1458;
assign xt1_o = out1551|out1541|out1528|out1496|out1470;
assign isiz_2 = out1454|out1451;
assign xt2_o = out1556|out1553|out1532|out1498|out1472;
assign isOpR = out1469;
assign xt3_o = out1534|out1501;
endmodule
