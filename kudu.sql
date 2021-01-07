CREATE TABLE transcomevents ( 
uuid STRING, `ts` TIMESTAMP,  
`title` STRING, `description` STRING, 
`pubDate` STRING, 
`point` STRING,
PRIMARY KEY (uuid)
)
PARTITION BY HASH PARTITIONS 4
STORED AS KUDU
TBLPROPERTIES ('kudu.num_tablet_replicas' = '1');
