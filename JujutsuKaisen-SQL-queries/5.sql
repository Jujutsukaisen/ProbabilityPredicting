SELECT round(AVG(experience),2), last_new_job FROM experience GROUP BY last_new_job ORDER BY last_new_job;