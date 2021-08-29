SELECT
	(maxstamp-minstamp) AS timearmedms,
	(maxstamp-minstamp)/POWER(10,6) AS timearmedsecs
	FROM (
		SELECT
			CAST(MAX(timestamp) AS float) AS maxstamp,
			CAST(MIN(timestamp) AS float) AS minstamp
		FROM [log_58_2021-4-5-08-47-42_vehicle_control_mode_0] WHERE flag_armed = 1) AS sub;

