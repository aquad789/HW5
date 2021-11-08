CREATE TABLE agents (
	agent_id INT PRIMARY KEY,
	first_nme VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL
);

CREATE TABLE regions (
	region_id INT NOT NULL PRIMARY KEY,
	region_name VARCHAR NOT NULL
);

SELECT * FROM agents;
SELECT * FROM regions;

CREATE TABLE agent_region_junction(
	agent_id INT NOT NULL,
	FOREIGN KEY (agent_id) REFERENCES agents(agent_id),
	region_id INT NOT NULL,
	FOREIGN KEY (region_id) REFERENCES regions(region_id),
	PRIMARY KEY (agent_id, region_id)
);

SELECT * FROM agent_region_junction;

SELECT *
FROM agent a
LEFT JOIN agent_region_junction b ON a.agent_id = b.agent_id