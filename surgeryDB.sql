/* Jacob Zamora 10/25/2019 */
/* Tentative code for our DB */
/* Currently planning to use SQL */

/* Surgeons are the users for the supposed webapp */
CREATE TABLE Surgeons (
  surgeon_id VARCHAR(20);
  surgeon_name VARCHAR(20);
  position VARCHAR(20);
  specialization VARCHAR(10);
  PRIMARY KEY (surgeon_id);
);

/* One or more videos are submitted by a surgeon */
CREATE TABLE Videos (
  video_id VARCHAR(25);
  surgeon_id VARCHAR(20);
  surgery_type VARCHAR(20);
  submission_date DATE;
  PRIMARY KEY (video_id);
  FOREIGN KEY (surgeon_id) REFERENCES Surgeons
    ON DELETE CASCADE
);

/* Report generated by the app */
CREATE TABLE Reports (
  report_id VARCHAR(10);
  PRIMARY KEY (report_id)
);

/* Timestamps contained in the report */
CREATE TABLE Timestamps (
  timestamp_id VARCHAR(10)
  length INT;
  start_time INT;
  end_time INT;
  PRIMARY KEY (timestamp_id);
);

/* Surgeries shown in the video will
be compared to these surgeries
(not videos--mainly information) */
CREATE TABLE Optimals (
  surgery_id VARCHAR(20);
  surgery_op VARCHAR(20);
  /* or surgery_type VARCHAR(20);? */
  optimal_time INT;
  PRIMARY KEY (surgery_id);
)
