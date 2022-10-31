
ALTER TABLE installs ADD CONSTRAINT fk_inst_pcs_id FOREIGN
KEY (pc_id) REFERENCES pcs (id);

ALTER TABLE installs ADD CONSTRAINT fk_inst_soft_id FOREIGN 
KEY (soft_id) REFERENCES soft (id);

ALTER TABLE pcs ADD CONSTRAINT fk_room_id_roooms_id FOREIGN
KEY (room_id) REFERENCES rooms (id);

ALTER TABLE rooms ADD CONSTRAINT fk_rooms_emp_id_emp_id FOREIGN
KEY (emp_id) REFERENCES employees (id);

ALTER TABLE pcs_to_switches ADD CONSTRAINT fk_sw_id FOREIGN
KEY (id_sw) REFERENCES switches (id);

ALTER TABLE pcs_to_switches ADD CONSTRAINT fk_pc_id FOREIGN
KEY (id_pc) REFERENCES pcs (id);
