DELETE FROM pcs;
DELETE FROM installs;
DELETE FROM rooms;
DELETE FROM employees;
DELETE FROM switches;
DELETE FROM soft;

-- employees
insert into employees (lname, fname, mname) values ('Seldon', 'Tisha', null);
insert into employees (lname, fname, mname) values ('Heeran', 'Cirilo', 'Tymothy');
insert into employees (lname, fname, mname) values ('Vere', 'Franzen', null);
insert into employees (lname, fname, mname) values ('Crosher', 'Melinde', null);
insert into employees (lname, fname, mname) values ('Baudinelli', 'Redford', null);
insert into employees (lname, fname, mname) values ('Lawee', 'Charo', null);
insert into employees (lname, fname, mname) values ('Morriss', 'Corinna', null);
insert into employees (lname, fname, mname) values ('Rojahn', 'Mitchael', null);
insert into employees (lname, fname, mname) values ('Jiggle', 'Shelby', 'Shayne');
insert into employees (lname, fname, mname) values ('Fortesquieu', 'Wolfgang', null);
insert into employees (lname, fname, mname) values ('Willsmore', 'Jacquelynn', null);
insert into employees (lname, fname, mname) values ('Lovie', 'Menard', null);
insert into employees (lname, fname, mname) values ('Rochewell', 'Gaylord', null);
insert into employees (lname, fname, mname) values ('Grut', 'Serene', 'Renaldo');
insert into employees (lname, fname, mname) values ('Episcopi', 'Berri', null);
insert into employees (lname, fname, mname) values ('Mathen', 'Lydia', 'Barnabas');
insert into employees (lname, fname, mname) values ('Bedrosian', 'Darcy', null);
insert into employees (lname, fname, mname) values ('Kew', 'Elly', null);
insert into employees (lname, fname, mname) values ('Ketteman', 'Tiertza', 'Brianne');
insert into employees (lname, fname, mname) values ('Withrington', 'Renaldo', null);

-- rooms
insert into rooms (num, emp_id) values (11, 15);
insert into rooms (num, emp_id) values (13, 3);
insert into rooms (num, emp_id) values (19, 4);
insert into rooms (num, emp_id) values (24, 5);
insert into rooms (num, emp_id) values (36, 3);
insert into rooms (num, emp_id) values (34, 7);
insert into rooms (num, emp_id) values (30, 9);
insert into rooms (num, emp_id) values (33, 6);
insert into rooms (num, emp_id) values (34, 7);
insert into rooms (num, emp_id) values (40, 4);
insert into rooms (num, emp_id) values (34, 20);
insert into rooms (num, emp_id) values (16, 12);
insert into rooms (num, emp_id) values (34, 18);
insert into rooms (num, emp_id) values (19, 5);
insert into rooms (num, emp_id) values (18, 12);

-- pcs
insert into pcs (room_id, ip_addr, mac_addr) values (4, '58.194.227.255', '55-C0-CB-74-6D-9E');
insert into pcs (room_id, ip_addr, mac_addr) values (6, '216.150.96.144', '99-B8-1C-33-A0-91');
insert into pcs (room_id, ip_addr, mac_addr) values (2, '30.111.225.33', '61-3A-C1-F1-E2-14');
insert into pcs (room_id, ip_addr, mac_addr) values (1, '200.140.130.241', '4E-AF-2A-07-C6-BB');
insert into pcs (room_id, ip_addr, mac_addr) values (10, '224.127.146.99', 'F5-28-12-3E-D3-37');
insert into pcs (room_id, ip_addr, mac_addr) values (12, '75.189.34.125', '41-9D-C2-9F-2C-D8');
insert into pcs (room_id, ip_addr, mac_addr) values (12, '127.121.45.105', '67-19-04-FC-56-30');
insert into pcs (room_id, ip_addr, mac_addr) values (9, '171.105.39.178', '8D-31-66-80-29-2A');
insert into pcs (room_id, ip_addr, mac_addr) values (11, '213.89.229.205', '07-EA-F4-97-AC-34');
insert into pcs (room_id, ip_addr, mac_addr) values (11, '255.250.43.139', 'BB-5F-46-2E-94-84');
insert into pcs (room_id, ip_addr, mac_addr) values (14, '129.18.238.68', '13-DD-F4-09-28-B0');
insert into pcs (room_id, ip_addr, mac_addr) values (14, '147.26.178.31', 'BA-5C-D5-CF-3A-1E');
insert into pcs (room_id, ip_addr, mac_addr) values (9, '244.182.121.20', 'FB-8F-4D-8F-02-A5');
insert into pcs (room_id, ip_addr, mac_addr) values (2, '200.157.42.48', 'BF-8A-F1-95-99-79');
insert into pcs (room_id, ip_addr, mac_addr) values (15, '199.90.157.25', '49-78-7A-9D-9D-42');
insert into pcs (room_id, ip_addr, mac_addr) values (5, '97.75.249.172', '70-37-09-C9-A0-68');
insert into pcs (room_id, ip_addr, mac_addr) values (1, '28.97.218.39', 'B8-4B-FC-09-0C-C6');
insert into pcs (room_id, ip_addr, mac_addr) values (8, '127.170.43.61', '29-35-EE-02-F4-64');
insert into pcs (room_id, ip_addr, mac_addr) values (3, '22.109.34.12', 'B4-0A-EF-04-F2-03');
insert into pcs (room_id, ip_addr, mac_addr) values (1, '75.17.235.240', '46-F6-11-1B-41-E5');
insert into pcs (room_id, ip_addr, mac_addr) values (13, '167.87.0.92', '2B-7F-E2-E7-78-ED');
insert into pcs (room_id, ip_addr, mac_addr) values (3, '90.149.36.163', 'D9-27-58-FF-89-5B');
insert into pcs (room_id, ip_addr, mac_addr) values (3, '55.110.238.65', 'B2-4C-E1-13-9A-4E');
insert into pcs (room_id, ip_addr, mac_addr) values (8, '218.96.213.20', '92-D3-64-55-D8-3F');
insert into pcs (room_id, ip_addr, mac_addr) values (4, '181.85.86.53', 'B8-84-1E-52-83-B9');
insert into pcs (room_id, ip_addr, mac_addr) values (2, '14.97.104.40', '58-8E-1F-A9-5C-7F');
insert into pcs (room_id, ip_addr, mac_addr) values (15, '217.113.238.248', '0E-0E-FC-8B-D0-44');
insert into pcs (room_id, ip_addr, mac_addr) values (3, '166.90.173.60', 'F4-5D-1E-EE-AD-B9');
insert into pcs (room_id, ip_addr, mac_addr) values (1, '69.69.80.196', '81-92-19-3C-B2-8D');
insert into pcs (room_id, ip_addr, mac_addr) values (9, '6.247.104.44', '20-4B-A8-3E-39-2F');
insert into pcs (room_id, ip_addr, mac_addr) values (9, '25.104.214.133', '5D-55-AA-CA-44-E3');
insert into pcs (room_id, ip_addr, mac_addr) values (13, '165.130.167.39', '45-B1-C8-33-54-C9');
insert into pcs (room_id, ip_addr, mac_addr) values (1, '145.246.201.28', '0D-69-B3-F2-00-B6');
insert into pcs (room_id, ip_addr, mac_addr) values (6, '59.176.35.163', '00-C3-35-C6-E4-DA');
insert into pcs (room_id, ip_addr, mac_addr) values (4, '67.80.131.61', 'A2-0B-58-98-FE-C1');

-- soft
insert into soft (sname, ver, quant) values ('Overhold', '5.47', 49);
insert into soft (sname, ver, quant) values ('Prodder', '5.5.7', 80);
insert into soft (sname, ver, quant) values ('Fix San', '2.81', 48);
insert into soft (sname, ver, quant) values ('Fintone', '0.67', 56);
insert into soft (sname, ver, quant) values ('Mat Lam Tam', '0.1.3', 42);
insert into soft (sname, ver, quant) values ('Keylex', '0.4.0', 61);
insert into soft (sname, ver, quant) values ('Span', '9.80', 57);
insert into soft (sname, ver, quant) values ('Temp', '0.3.0', 94);
insert into soft (sname, ver, quant) values ('Bitwolf', '0.60', 48);
insert into soft (sname, ver, quant) values ('Zoolab', '0.6.8', 15);


-- installs
insert into installs (pc_id, soft_id) values (12, 6);
insert into installs (pc_id, soft_id) values (2, 1);
insert into installs (pc_id, soft_id) values (30, 8);
insert into installs (pc_id, soft_id) values (34, 3);
insert into installs (pc_id, soft_id) values (24, 3);
insert into installs (pc_id, soft_id) values (30, 5);
insert into installs (pc_id, soft_id) values (19, 7);
insert into installs (pc_id, soft_id) values (28, 6);
insert into installs (pc_id, soft_id) values (30, 2);
insert into installs (pc_id, soft_id) values (21, 1);
insert into installs (pc_id, soft_id) values (20, 10);
insert into installs (pc_id, soft_id) values (8, 9);
insert into installs (pc_id, soft_id) values (34, 10);
insert into installs (pc_id, soft_id) values (15, 2);
insert into installs (pc_id, soft_id) values (34, 2);
insert into installs (pc_id, soft_id) values (22, 5);
insert into installs (pc_id, soft_id) values (3, 2);
insert into installs (pc_id, soft_id) values (2, 6);
insert into installs (pc_id, soft_id) values (2, 10);
insert into installs (pc_id, soft_id) values (26, 1);
insert into installs (pc_id, soft_id) values (20, 10);
insert into installs (pc_id, soft_id) values (34, 5);
insert into installs (pc_id, soft_id) values (20, 3);
insert into installs (pc_id, soft_id) values (25, 9);
insert into installs (pc_id, soft_id) values (34, 8);
insert into installs (pc_id, soft_id) values (35, 4);
insert into installs (pc_id, soft_id) values (31, 7);
insert into installs (pc_id, soft_id) values (5, 3);
insert into installs (pc_id, soft_id) values (1, 3);
insert into installs (pc_id, soft_id) values (15, 4);
insert into installs (pc_id, soft_id) values (10, 6);
insert into installs (pc_id, soft_id) values (3, 2);
insert into installs (pc_id, soft_id) values (5, 4);
insert into installs (pc_id, soft_id) values (21, 5);
insert into installs (pc_id, soft_id) values (9, 10);
insert into installs (pc_id, soft_id) values (29, 8);
insert into installs (pc_id, soft_id) values (31, 2);
insert into installs (pc_id, soft_id) values (25, 7);
insert into installs (pc_id, soft_id) values (21, 5);
insert into installs (pc_id, soft_id) values (7, 1);
insert into installs (pc_id, soft_id) values (8, 10);
insert into installs (pc_id, soft_id) values (30, 5);
insert into installs (pc_id, soft_id) values (28, 2);
insert into installs (pc_id, soft_id) values (8, 1);
insert into installs (pc_id, soft_id) values (20, 10);
insert into installs (pc_id, soft_id) values (30, 9);
insert into installs (pc_id, soft_id) values (8, 5);
insert into installs (pc_id, soft_id) values (33, 4);
insert into installs (pc_id, soft_id) values (26, 4);
insert into installs (pc_id, soft_id) values (29, 1);
insert into installs (pc_id, soft_id) values (5, 10);
insert into installs (pc_id, soft_id) values (6, 2);
insert into installs (pc_id, soft_id) values (22, 7);
insert into installs (pc_id, soft_id) values (19, 8);
insert into installs (pc_id, soft_id) values (35, 6);
insert into installs (pc_id, soft_id) values (24, 8);
insert into installs (pc_id, soft_id) values (9, 2);
insert into installs (pc_id, soft_id) values (20, 7);
insert into installs (pc_id, soft_id) values (8, 6);
insert into installs (pc_id, soft_id) values (25, 7);
insert into installs (pc_id, soft_id) values (7, 7);
insert into installs (pc_id, soft_id) values (3, 7);
insert into installs (pc_id, soft_id) values (15, 2);
insert into installs (pc_id, soft_id) values (22, 7);
insert into installs (pc_id, soft_id) values (35, 4);

--switches
insert into switches (model_name, quant_ports, serial_number)
 values ('TP-LINK TL-SG1008D', 11, 1418009);
insert into switches (model_name, quant_ports, serial_number)
 values ('Dlink S42901', 12, 1646287);
insert into switches (model_name, quant_ports, serial_number)
 values ('TP-LINK TL-SG1008D', 11, 1418009);
insert into switches (model_name, quant_ports, serial_number)
 values ('TP-LINK TL-SG1024DE', 39, 2193808);

--pcs_to_switches
INSERT INTO pcs_to_switches (id_sw, id_pc) VALUES (1, 2);
INSERT INTO pcs_to_switches (id_sw, id_pc) VALUES (1, 4);
INSERT INTO pcs_to_switches (id_sw, id_pc) VALUES (2, 1);
INSERT INTO pcs_to_switches (id_sw, id_pc) VALUES (2, 3);
INSERT INTO pcs_to_switches (id_sw, id_pc) VALUES (2, 5);
INSERT INTO pcs_to_switches (id_sw, id_pc) VALUES (4, 8);
INSERT INTO pcs_to_switches (id_sw, id_pc) VALUES (4, 11);
INSERT INTO pcs_to_switches (id_sw, id_pc) VALUES (3, 25);
