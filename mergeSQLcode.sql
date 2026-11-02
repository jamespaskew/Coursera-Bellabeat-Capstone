SELECT
    a.*,
    s.TotalSleepRecords,
    s.TotalMinutesAsleep,
    s.TotalTimeInBed
FROM `activity.activity` AS a
LEFT JOIN `activity.sleep` AS s
    ON a.Id = s.Id
    AND DATE(a.ActivityDay) = DATE(s.SleepDay);