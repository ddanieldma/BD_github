-- BchID, RepID, BchNome
INSERT INTO Branch VALUES ('B4829105732', 'R9083745612', 'main');
INSERT INTO Branch VALUES ('B6712084956', 'R9083745612', 'feature');
INSERT INTO Branch VALUES ('B3590248167', 'R2468109753', 'main');
INSERT INTO Branch VALUES ('B1245678903', 'R7325491860', 'main');
INSERT INTO Branch VALUES ('B9876543210', 'R6152039478', 'main');
INSERT INTO Branch VALUES ('B8765432109', 'R3492876105', 'main');
INSERT INTO Branch VALUES ('B2345678901', 'R3492876105', 'bugfix');

-- PstId, BchID, PstNome, PertenceAPstID
INSERT INTO Pasta VALUES ('P8901245673', 'B4829105732', 'root');
INSERT INTO Pasta VALUES ('P4567890123', 'B4829105732', 'modules', 'P8901245673');
INSERT INTO Pasta VALUES ('P3210987654', 'B4829105732', 'docs', 'P8901245673');
INSERT INTO Pasta VALUES ('P9876543210', 'B6712084956', 'root');
INSERT INTO Pasta VALUES ('P2345678901', 'B6712084956', 'modules', 'P9876543210');
INSERT INTO Pasta VALUES ('P5678901234', 'B3590248167', 'root');
INSERT INTO Pasta VALUES ('P1098765432', 'B1245678903', 'root');
INSERT INTO Pasta VALUES ('P8765432109', 'B1245678903', 'code', 'P1098765432');
INSERT INTO Pasta VALUES ('P5432109876', 'B1245678903', 'java', 'P8765432109');
INSERT INTO Pasta VALUES ('P2109876543', 'B1245678903', 'cs', 'P8765432109');
INSERT INTO Pasta VALUES ('P4321098765', 'B9876543210', 'root');
INSERT INTO Pasta VALUES ('P7654321098', 'B8765432109', 'root');
INSERT INTO Pasta VALUES ('P8765432101', 'B8765432109', 'src', 'P7654321098');
INSERT INTO Pasta VALUES ('P8901234567', 'B8765432109', 'include', 'P7654321098');
INSERT INTO Pasta VALUES ('P7854209620', 'B2345678901', 'root');
INSERT INTO Pasta VALUES ('P6789012345', 'B2345678901', 'src', 'P7854209620');
INSERT INTO Pasta VALUES ('P1234509876', 'B2345678901', 'include', 'P7854209620');

-- ArqID, PertenceAPstID, ArqCorpo, ArqNome, ArqTamanho, ArqNoLinhas
INSERT INTO Arquivo VALUES ('a3b9c7d', 'P4567890123', 'corpoArq', 'main.py', 5, 7);
INSERT INTO Arquivo VALUES ('x8y2z1k', 'P4567890123', 'corpoArq', 'utils.py', 50, 400);
INSERT INTO Arquivo VALUES ('m6n4p0q', 'P3210987654', 'corpoArq', 'docs.md', 40, 300);
INSERT INTO Arquivo VALUES ('r7s2t8u', 'P2345678901', 'corpoArq', 'feature.py', 20, 200);
INSERT INTO Arquivo VALUES ('h1j3k5l', 'P2345678901', 'corpoArq', 'test-feature.py', 20, 200);
INSERT INTO Arquivo VALUES ('v9w0x6y', 'P5678901234', 'corpoArq', 'coding-js.js', 60, 400);
INSERT INTO Arquivo VALUES ('e4f2g8h', 'P5678901234', 'corpoArq', 'coding-java.java', 20, 100);
INSERT INTO Arquivo VALUES ('l0m9n7o', 'P5678901234', 'corpoArq', 'coding-cpp.cpp', 5, 70);
INSERT INTO Arquivo VALUES ('p5q1r3s', 'P5432109876', 'corpoArq', 'coding-java.java', 20, 100);
INSERT INTO Arquivo VALUES ('z6a8b7c', 'P5432109876', 'corpoArq', 'testing-java.java', 20, 100);
INSERT INTO Arquivo VALUES ('t2u4v0w', 'P2109876543', 'corpoArq', 'coding-cs.cs', 70, 500);
INSERT INTO Arquivo VALUES ('n9o1p3q', 'P2109876543', 'corpoArq', 'testing-cs.cs', 70, 500);
INSERT INTO Arquivo VALUES ('f7g5h2j', 'P4321098765', 'corpoArq', 'ccc.shell', 150, 1000);
INSERT INTO Arquivo VALUES ('k6l8m0n', 'P8765432101', 'corpoArq', 'functions1.cpp', 87, 570);
INSERT INTO Arquivo VALUES ('y4z1x3w', 'P8765432101', 'corpoArq', 'functions2.cpp', 50, 300);
INSERT INTO Arquivo VALUES ('u2v9s7t', 'P5432109876', 'corpoArq', 'include1.h', 10, 50);
INSERT INTO Arquivo VALUES ('d5e0f1g', 'P5432109876', 'corpoArq', 'include2.h', 8, 25);
INSERT INTO Arquivo VALUES ('r3p6q2k', 'P6789012345', 'corpoArq', 'functions1.cpp', 87, 570);
INSERT INTO Arquivo VALUES ('b8h7i9j', 'P6789012345', 'corpoArq', 'functions2.cpp', 55, 333);
INSERT INTO Arquivo VALUES ('c4x5y1z', 'P6789012345', 'corpoArq', 'test.cpp', 10, 50);
INSERT INTO Arquivo VALUES ('o6i8u4t', 'P1234509876', 'corpoArq', 'include1.h', 10, 50);
INSERT INTO Arquivo VALUES ('g9f1e3d', 'P1234509876', 'corpoArq', 'include2.h', 8, 25);