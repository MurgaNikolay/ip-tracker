CREATE TABLE `schema_migrations` (`filename` varchar(255) NOT NULL PRIMARY KEY);
CREATE TABLE `visitors` (`id` integer NOT NULL PRIMARY KEY, `visited_at` timestamp NOT NULL, `ipaddress` varchar(255), `user_agent` text);
CREATE INDEX `visitors_visited_at_ipaddress_index` ON `visitors` (`visited_at`, `ipaddress`);
INSERT INTO "schema_migrations" VALUES('20150709115929_visitor.rb');
