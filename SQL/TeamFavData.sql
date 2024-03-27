-- Inserting mock data into TeamFav table with varying number of favorite teams per user
INSERT INTO TeamFav (TeamID, UserID)
VALUES
    (1, 1),                       -- User 1's favorite team
    (2, 2), (4, 2), (6, 2),       -- User 2's three favorite teams
    (3, 3), (5, 3),               -- User 3's two favorite teams
    (4, 4), (6, 4), (8, 4),       -- User 4's three favorite teams
    (5, 5),                       -- User 5's favorite team
    (6, 6), (8, 6), (10, 6), (1, 6), -- User 6's four favorite teams
    (7, 7), (9, 7),               -- User 7's two favorite teams
    (8, 8), (10, 8), (2, 8), (4, 8), -- User 8's four favorite teams
    (9, 9), (1, 9),               -- User 9's two favorite teams
    (10, 10), (2, 10), (4, 10)   -- User 10's three favorite teams
GO
