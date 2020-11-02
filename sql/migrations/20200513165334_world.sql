DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200513165334');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200513165334');
-- Add your query below.


-- Add missing spawn for Melnan Darkstone.
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (144028, 4);
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `movement_type`, `patch_min`, `patch_max`) VALUES (144028, 14842, 0, -4982.69, -963.739, 501.659, 0.802197, 300, 300, 0, 2, 4, 10);
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES 
(14842, 1, -4982.68, -963.738, 501.659, 0.802197, 0, 0),
(14842, 2, -4966.25, -948.009, 501.659, 0.852462, 0, 0),
(14842, 3, -4947.42, -931.671, 501.659, 0.694597, 0, 0),
(14842, 4, -4922.59, -910.984, 501.659, 0.694597, 0, 0),
(14842, 5, -4900.64, -898.418, 501.659, 0.539874, 0, 0),
(14842, 6, -4875.92, -890.53, 501.659, 0.228856, 0, 0),
(14842, 7, -4855.47, -885.766, 501.659, 0.228856, 0, 0),
(14842, 8, -4835.2, -884.038, 501.659, 0.042716, 0, 0),
(14842, 9, -4820.52, -883.41, 501.659, 0.042716, 0, 0),
(14842, 10, -4800.39, -884.07, 501.663, 6.2505, 0, 0),
(14842, 11, -4784.24, -885.432, 501.659, 6.17275, 0, 0),
(14842, 12, -4763.38, -889.904, 501.659, 6.05494, 0, 0),
(14842, 13, -4748.81, -894.673, 501.659, 5.85938, 0, 0),
(14842, 14, -4749.41, -905.275, 501.659, 4.65615, 0, 0),
(14842, 15, -4753.94, -909.319, 501.659, 3.87075, 0, 0),
(14842, 16, -4769.22, -906.058, 501.663, 2.93141, 0, 0),
(14842, 17, -4775.83, -907.238, 501.661, 3.24243, 0, 0),
(14842, 18, -4784.78, -907.646, 497.954, 3.08456, 0, 0),
(14842, 19, -4804.25, -904.848, 497.954, 2.96675, 0, 0),
(14842, 20, -4821.49, -901.804, 501, 2.96675, 0, 0),
(14842, 21, -4844.94, -907.025, 501.66, 3.36102, 0, 0),
(14842, 22, -4865.21, -911.545, 501.66, 3.36102, 0, 0),
(14842, 23, -4875.69, -913.882, 501.66, 3.36102, 0, 0),
(14842, 24, -4890.25, -921.527, 501.623, 3.62492, 0, 0),
(14842, 25, -4913.38, -941.166, 501.528, 3.8464, 0, 0),
(14842, 26, -4932.3, -957.266, 501.553, 3.8464, 0, 0),
(14842, 27, -4945.19, -968.223, 501.568, 3.8464, 0, 0),
(14842, 28, -4956.21, -977.597, 501.609, 3.8464, 0, 0),
(14842, 29, -4966.41, -987.795, 501.657, 4.00191, 0, 0),
(14842, 30, -4975.4, -998.238, 501.657, 4.00191, 0, 0),
(14842, 31, -4981.95, -1012.55, 501.655, 4.31528, 0, 0),
(14842, 32, -4987.98, -1032.34, 501.654, 4.4378, 0, 0),
(14842, 33, -4991.24, -1043.91, 500.679, 4.4378, 0, 0),
(14842, 34, -4991.98, -1052.34, 497.937, 4.55639, 0, 0),
(14842, 35, -4993.67, -1063.06, 497.963, 4.55639, 0, 0),
(14842, 36, -4994.55, -1080.96, 497.972, 4.60587, 0, 0),
(14842, 37, -4995.38, -1088.74, 501.638, 4.60587, 0, 0),
(14842, 38, -4996.99, -1103.82, 501.659, 4.60587, 0, 0),
(14842, 39, -4997.76, -1111, 501.663, 4.60587, 0, 0),
(14842, 40, -5010.9, -1113.08, 501.668, 3.29897, 0, 0),
(14842, 41, -5014.93, -1102.52, 501.671, 1.93552, 0, 0),
(14842, 42, -5015.86, -1081.45, 501.68, 1.60801, 0, 0),
(14842, 43, -5014.07, -1055.77, 501.724, 1.49177, 0, 0),
(14842, 44, -5011.75, -1042.1, 501.712, 1.37396, 0, 0),
(14842, 45, -5003.69, -1018.41, 501.656, 1.20824, 0, 0),
(14842, 46, -4998.19, -1003.91, 501.658, 1.20824, 0, 0),
(14842, 47, -4990.7, -984.164, 501.659, 1.20824, 0, 0);


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
