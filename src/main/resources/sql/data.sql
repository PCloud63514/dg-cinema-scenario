INSERT INTO MEMBER(id, nickname)
VALUES (1, 'user1'), (2, 'user2'), (3, 'user3'), (4, 'user4'), (5, 'user5');

INSERT INTO MOVIE(id, title, description, releaseDate, duration)
VALUES (1, '영화1', '영화1 설명', DATEADD(MONTH, -2, CURRENT_DATE), 120),
       (2, '영화2', '영화2 설명', CURRENT_DATE, 120),
       (3, '영화3', '영화3 설명', DATEADD(MONTH, 1, CURRENT_DATE), 150);

INSERT INTO CINEMA(id, name)
VALUES (1, '건대 영화관'), (2, '홍대 영화관');

INSERT INTO SCREEN(id, cinemaId, name)
VALUES (1, 1, '상영관1'), (2, 1, '상영관2'),
       (3, 2, '상영관1'), (4, 2, '상영관2');

INSERT INTO SEAT(id, screenId, rowName, colNum)
VALUES
--     건대 1관
    (1, 1, 'A', 1), (2, 1, 'A', 2), (3, 1, 'A', 3), (4, 1, 'A', 4), (5, 1, 'A', 5),
    (6, 1, 'B', 1), (7, 1, 'B', 2), (8, 1, 'B', 3), (9, 1, 'B', 4), (10, 1, 'B', 5),
    (11, 1, 'C', 1), (12, 1, 'C', 2), (13, 1, 'C', 3), (14, 1, 'C', 4), (15, 1, 'C', 5),
--     건대 2관
    (16, 2, 'A', 1), (17, 2, 'A', 2), (18, 2, 'A', 3), (19, 2, 'A', 4), (20, 2, 'A', 5),
    (21, 2, 'B', 1), (22, 2, 'B', 2), (23, 2, 'B', 3), (24, 2, 'B', 4), (25, 2, 'B', 5),
    (26, 2, 'C', 1), (27, 2, 'C', 2), (28, 2, 'C', 3), (29, 2, 'C', 4), (30, 2, 'C', 5),
--     홍대 1관
    (31, 3, 'A', 1), (32, 3, 'A', 2), (33, 3, 'A', 3), (34, 3, 'A', 4), (35, 3, 'A', 5),
    (36, 3, 'B', 1), (37, 3, 'B', 2), (38, 3, 'B', 3), (39, 3, 'B', 4), (40, 3, 'B', 5),
    (41, 3, 'C', 1), (42, 3, 'C', 2), (43, 3, 'C', 3), (44, 3, 'C', 4), (45, 3, 'C', 5),
--    홍대 2관
    (46, 4, 'A', 1), (47, 4, 'A', 2), (48, 4, 'A', 3), (49, 4, 'A', 4), (50, 4, 'A', 5),
    (51, 4, 'B', 1), (52, 4, 'B', 2), (53, 4, 'B', 3), (54, 4, 'B', 4), (55, 4, 'B', 5),
    (56, 4, 'C', 1), (57, 4, 'C', 2), (58, 4, 'C', 3), (59, 4, 'C', 4), (60, 4, 'C', 5)
;

INSERT INTO SCREENING(id, screenId, movieId, screenDate, startTime, endTime)
VALUES
--     건대 1관 영화 1
    (1, 1, 1, DATEADD(MONTH, -2, CURRENT_DATE), '10:00', '12:00'),
    (2, 1, 1, DATEADD(MONTH, -2, CURRENT_DATE), '14:00', '16:00'),
    (3, 1, 1, DATEADD(MONTH, -2, CURRENT_DATE), '18:00', '20:00'),
    (4, 1, 1, DATEADD(MONTH, -2, CURRENT_DATE), '22:00', '00:00'),
--     홍대 1관 영화 1
    (5, 3, 1, DATEADD(MONTH, -2, CURRENT_DATE), '10:00', '12:00'),
    (6, 3, 1, DATEADD(MONTH, -2, CURRENT_DATE), '14:00', '16:00'),
    (7, 3, 1, DATEADD(MONTH, -2, CURRENT_DATE), '18:00', '20:00'),
    (8, 3, 1, DATEADD(MONTH, -2, CURRENT_DATE), '22:00', '00:00'),
--     건대 1관 영화 2
    (9, 1, 2, CURRENT_DATE, '10:00', '12:00'),
    (10, 1, 2, CURRENT_DATE, '14:00', '16:00'),
    (11, 1, 2, CURRENT_DATE, '18:00', '20:00'),
    (12, 1, 2, CURRENT_DATE, '22:00', '00:00'),
--     건대 2관 영화 2
    (13, 2, 2, CURRENT_DATE, '10:00', '12:00'),
    (14, 2, 2, CURRENT_DATE, '14:00', '16:00'),
    (15, 2, 2, CURRENT_DATE, '18:00', '20:00'),
    (16, 2, 2, CURRENT_DATE, '22:00', '00:00'),
--     홍대 1관 영화 2
    (17, 3, 2, CURRENT_DATE, '10:00', '12:00'),
    (18, 3, 2, CURRENT_DATE, '14:00', '16:00'),
    (19, 3, 2, CURRENT_DATE, '18:00', '20:00'),
    (20, 3, 2, CURRENT_DATE, '22:00', '00:00'),
--     홍대 2관 영화 2
    (21, 4, 2, CURRENT_DATE, '10:00', '12:00'),
    (22, 4, 2, CURRENT_DATE, '14:00', '16:00'),
    (23, 4, 2, CURRENT_DATE, '18:00', '20:00'),
    (24, 4, 2, CURRENT_DATE, '22:00', '00:00'),
--     건대 1관 영화 3
    (25, 1, 3, DATEADD(MONTH, 1, CURRENT_DATE), '10:00', '12:00'),
    (26, 1, 3, DATEADD(MONTH, 1, CURRENT_DATE), '14:00', '16:00'),
    (27, 1, 3, DATEADD(MONTH, 1, CURRENT_DATE), '18:00', '20:00'),
    (28, 1, 3, DATEADD(MONTH, 1, CURRENT_DATE), '22:00', '00:00');