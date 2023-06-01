-- membuat database
create database universitas;

-- membuat table
create table dosen (
	id_dosen varchar (16) primary key,
    nama_dosen varchar (200),
    prodi varchar (100)
);

-- mendeskripsikan table
describe dosen;

-- delete table
drop table dosen;
-- membuat table
create table mahasiswa (
	id_mhs varchar (50) primary key,
    nama_mhs varchar (200),
    prodi varchar (200),
    id_dosen_wali varchar (50),
    foreign key (id_dosen_wali) references dosen (id_dosen)
);

-- mendeskripsikan table
describe mahasiswa;


INSERT INTO
    dosen (nik_dosen, nama_dosen, prodi)
VALUES
    ('A1001', 'Mali, Ph.D', 'Teknik Industri'),
    ('A1003', 'Dr. Margareta', 'Matematika'),
    ('A1004', 'Adi, S.E., MBA', 'Manajemen'),
    ('A1005', 'Mali, Ph.D', 'Manajemen');
    
select * from dosen; 

  -- ALTER TABLE-- 
 -- 1. menambah kolom 
 alter table dosen add gol_darah varchar (2);
 
 -- 2. menghapus kolom --
 alter table dosen drop column gol_darah;
 
  -- 3. Mengubah nama kolom --
 alter table dosen change column id_dosen nik_dosen varchar (16);
 
 -- 4. Mengubah type data kolom pada table --
 alter table dosen modify column nama_dosen varchar (150);
  