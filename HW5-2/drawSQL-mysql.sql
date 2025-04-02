CREATE TABLE Users(
    user_ID VARCHAR(255) NOT NULL,
    user_name VARCHAR(255) NOT NULL,
    user_email VARCHAR(255) NOT NULL,
    accountHandle VARCHAR(255) NOT NULL,
    profile_url DATE NOT NULL,
    social_media_account_type VARCHAR(255) NOT NULL,
    PRIMARY KEY(user_ID)
);

CREATE TABLE user_check_in (
    user_ID VARCHAR(255) NOT NULL,
    location_ID VARCHAR(255) NOT NULL,
    date DATETIME NOT NULL,
    PRIMARY KEY(user_ID, date),
    FOREIGN KEY (user_ID) REFERENCES Users(user_ID),
    FOREIGN KEY (location_ID) REFERENCES Locations(location_ID)
);

CREATE TABLE Locations(
    location_ID VARCHAR(255) NOT NULL,
    location_Name VARCHAR(255) NOT NULL,
    PRIMARY KEY(location_ID)
);

CREATE TABLE Following (
    user_ID VARCHAR(255) NOT NULL,
    follower_ID VARCHAR(255) NOT NULL,
    PRIMARY KEY (user_ID, follower_ID),
    FOREIGN KEY (user_ID) REFERENCES Users(user_ID),
    FOREIGN KEY (follower_ID) REFERENCES Users(user_ID)
);

-- SELECT u.user_name, COUNT(f.follower_ID) AS follower_count
-- FROM Users u
-- LEFT JOIN user_check_in uci ON u.user_ID = uci.user_ID
-- LEFT JOIN Following f ON u.user_ID = f.user_ID
-- WHERE uci.user_ID IS NULL
-- GROUP BY u.user_ID
-- ORDER BY u.user_name ASC, follower_count DESC;


-- Insert Users

-- INSERT INTO Users (user_ID, user_name, user_email, accountHandle, profile_url, social_media_account_type)
-- VALUES
--     ('user001', 'John Doe', 'john.doe@example.com', 'johndoe', '2025-04-01', 'Twitter'),
--     ('user002', 'Jane Smith', 'jane.smith@example.com', 'janesmith', '2025-04-01', 'Instagram'),
--     ('user003', 'Mike Johnson', 'mike.johnson@example.com', 'mikej', '2025-04-01', 'Facebook'),
--     ('user004', 'Emily White', 'emily.white@example.com', 'emilyw', '2025-04-01', 'LinkedIn'),
--     ('user005', 'David Brown', 'david.brown@example.com', 'davidb', '2025-04-01', 'YouTube'),
--     ('user006', 'Sarah Lee', 'sarah.lee@example.com', 'sarahlee', '2025-04-01', 'TikTok'),
--     ('user007', 'Chris Green', 'chris.green@example.com', 'chrisg', '2025-04-01', 'Pinterest'),
--     ('user008', 'Mia Anderson', 'mia.anderson@example.com', 'miaanderson', '2025-04-01', 'Snapchat');

-- -- Insert Locations
-- INSERT INTO Locations (location_ID, location_Name)
-- VALUES
--     ('loc001', 'New York'),
--     ('loc002', 'Los Angeles'),
--     ('loc003', 'Chicago'),
--     ('loc004', 'San Francisco'),
--     ('loc005', 'Miami'),
--     ('loc006', 'Dallas'),
--     ('loc007', 'Seattle'),
--     ('loc008', 'Boston');

-- -- Insert user_check_in
-- INSERT INTO user_check_in (user_ID, location_ID, date)
-- VALUES
--     ('user001', 'loc001', '2025-04-01 08:00:00'),
--     ('user002', 'loc002', '2025-04-01 09:00:00'),
--     ('user003', 'loc003', '2025-04-01 10:00:00'),
--     ('user001', 'loc004', '2025-04-01 11:00:00'),
--     ('user005', 'loc005', '2025-04-01 12:00:00'),
--     ('user006', 'loc006', '2025-04-01 13:00:00'),
--     ('user007', 'loc007', '2025-04-01 14:00:00'),
--     ('user008', 'loc008', '2025-04-01 15:00:00'),
--     ('user001', 'loc005', '2025-04-02 08:00:00'),
--     ('user002', 'loc006', '2025-04-02 09:00:00'),
--     ('user003', 'loc007', '2025-04-02 10:00:00'),
--     ('user004', 'loc008', '2025-04-02 11:00:00'),
--     ('user005', 'loc001', '2025-04-02 12:00:00'),
--     ('user006', 'loc002', '2025-04-02 13:00:00');

-- -- Insert Following relationships
-- INSERT INTO Following (user_ID, follower_ID)
-- VALUES
--     ('user001', 'user002'),
--     ('user002', 'user003'),
--     ('user003', 'user001'),
--     ('user001', 'user004'),
--     ('user005', 'user006'),
--     ('user007', 'user008'),
--     ('user002', 'user005'),
--     ('user003', 'user007'),
--     ('user004', 'user006'),
--     ('user005', 'user001'),
--     ('user006', 'user003'),
--     ('user007', 'user005'),
--     ('user008', 'user002');


-- Insert Users
INSERT INTO Users (user_ID, user_name, user_email, accountHandle, profile_url, social_media_account_type)
VALUES
    ('user001', 'John Doe', 'john.doe@example.com', 'johndoe', '2025-04-01', 'Twitter'),
    ('user002', 'Jane Smith', 'jane.smith@example.com', 'janesmith', '2025-04-01', 'Instagram'),
    ('user003', 'Mike Johnson', 'mike.johnson@example.com', 'mikej', '2025-04-01', 'Facebook'),
    ('user004', 'Emily White', 'emily.white@example.com', 'emilyw', '2025-04-01', 'LinkedIn'),
    ('user005', 'David Brown', 'david.brown@example.com', 'davidb', '2025-04-01', 'YouTube'),
    ('user006', 'Sarah Lee', 'sarah.lee@example.com', 'sarahlee', '2025-04-01', 'TikTok');
    
-- Insert Locations
INSERT INTO Locations (location_ID, location_Name)
VALUES
    ('loc001', 'New York'),
    ('loc002', 'Los Angeles'),
    ('loc003', 'Chicago');
-- Insert Following relationships
INSERT INTO Following (user_ID, follower_ID)
VALUES
    ('user001', 'user002'),
    ('user002', 'user003'),
    ('user003', 'user001'),
    ('user004', 'user005'),
    ('user005', 'user006'),
    ('user005', 'user004'),
    ('user001', 'user006');
-- Insert user check-ins
INSERT INTO user_check_in (user_ID, location_ID, date)
VALUES
    ('user001', 'loc001', '2025-04-01 08:00:00'),
    ('user002', 'loc002', '2025-04-01 09:00:00'),
    ('user003', 'loc003', '2025-04-01 10:00:00');


