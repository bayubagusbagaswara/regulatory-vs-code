--  check table lbabk data source, column kode_komponen
select id, created_date, kode_komponen from reg_lbabk_data_source


-- check table lkpbu data source, column sandi_perusahaan_asuransi

select * from reg_lkpbu_sample_data

select * from reg_asset_under_custody

select id, kode_komponen from reg_lbabk

truncate table reg_lbabk_data_source

select * from reg_lkpbu_data_source
-- dro (on the fly)

ALTER TABLE reg_lkpbu_data_source
DROP COLUMN valuation_date;

select * from reg_lkpbu_recon

select * from reg_lkpbu

ALTER TABLE reg_lkpbu
DROP COLUMN portfolio_code;

select * from reg_lbabk_data_source
ALTER TABLE reg_lbabk_data_source
DROP COLUMN security_code;

select * from reg_asset_under_custody

select * from reg_lbabk

select * from reg_lbabk_data_source
-- drop column buy_result dan sell_result
-- drop column flag_recon_isin dan flag_recon_issuer
ALTER TABLE reg_lbabk_data_source 
DROP COLUMN flag_recon_issuer

select * from regulatory_data_change order by id desc

-- maintenance REGULATORY_ISIN_CODE
select * from reg_isin_code
-- maintenance REGULATORY_ISSUER_CODE
select * from reg_issuer_code
-- maintenance REGULATORY_ISSUER_CODE_PLACEMENT_BANK
select * from reg_issuer_code_placement_bank
-- maintenance REGULATORY_OWNER_GROUP
select * from reg_golongan_pemilik
-- maintenance REGULATORY_INSURANCE_PENSION_FUND
select * from reg_asuransi_dana_pensiun
-- maintenance REGULATORY_EXCHANGE_RATE
select * from reg_exchange_rate

drop table regulatory_data_change



alter table reg_lbabk_recon
drop column kode_efek

select * from reg_lbabk_data_source
select * from reg_lbabk

select * from reg_data_not_found

select * from reg_lkpbu_data_source
select * from reg_lkpbu
select * from reg_lkpbu_recon

select * from reg_lkpbu_income


select * from reg_lbabk_recon where flag_recon = 'Issuer LBABK';

select * from reg_issuer_code

select * from reg_lkpbu_data_source;
select * from reg_lkpbu_recon;
select * from reg_lkpbu;

select * from reg_lkpbu_sample_data;

select * from reg_asset_under_custody;

alter table reg_asset_under_custody
drop column month;

alter table reg_asset_under_custody 
drop column year;

alter table reg_asset_under_custody 
drop column settlement_date;

alter table reg_asset_under_custody
drop column value;

select * from reg_asset_under_custody

select * from reg_asset_under_custody;

select * from reg_lbabk_recon 
where flag_recon = 'Issuer Placement Bank'

select * from reg_data_change where table_name = 'reg_lbabk_recon'

-- {"dataSourceValue":"PEMRI"}

-- {"csaValue":"PEMRI"}

select * from reg_lkpbu_data_source;

-- recon untuk Kode Nasabah ~ 6000 data - query
-- recon untuk Kode Barang ~ 600 data - query

select distinct(data_1) from reg_lkpbu_data_source

SELECT *
FROM (
    SELECT *, ROW_NUMBER() OVER (PARTITION BY data_2 ORDER BY id) AS row_num
    FROM reg_lkpbu_data_source
    WHERE month = 'August'
      AND year = 2024
) AS subquery
WHERE row_num = 1;

SELECT *
FROM reg_lbabk_data_source
WHERE kode_efek IN (
    SELECT DISTINCT kode_efek
    FROM reg_lbabk_data_source
    WHERE month = 'July'
    AND year = 2024
);

WITH RankedData AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY data_1 ORDER BY (SELECT NULL)) AS row_num
    FROM reg_lbabk_data_source
    WHERE month = 'July'
    AND year = 2024
)
SELECT *
FROM RankedData
WHERE row_num = 1;


SELECT * FROM reg_lkpbu_data_source
SELECT month, year, kode_efek, data_2 FROM reg_lbabk_data_source

SELECT month, year, kode_efek, COUNT(*) AS total_count
FROM reg_lbabk_data_source
GROUP BY month, year, kode_efek;

select * from reg_lbabk_data_source

alter table reg_lbabk_data_source 
drop column flag_recon_isin;
alter table reg_lbabk_data_source 
drop column portfolio_code;
alter table reg_lbabk_data_source 
drop column buy_result;
alter table reg_lbabk_data_source 
drop column sell_result;
alter table reg_lbabk_data_source 
drop column flag_recon_issuer;

alter table reg_lbabk_data_source drop column security_code;

select * from reg_lkpbu_data_source
alter table reg_lkpbu_data_source 
drop column flag_recon_isin

select * from reg_lkpbu_data_source
select * from reg_lkpbu_data_source


select * from reg_lkpbu_recon

select * from reg_lkpbu_data_source where data_2 = 'AGRI'

-- AGRI
-- #0000

select * from reg_isin_code where external_code_2 = 'AGRI'
-- #0000       
-- #0000       
-- AGRI

drop table reg_isin_code
drop table reg_asuransi_dana_pensiun
drop table reg_golongan_pemilik

select * from reg_lkpbu_recon

select golongan_pemilik, dana_jaminan from reg_lkpbu_data_source where data_1 = '21BNIS'


select * from reg_lkpbu_data_source 
where data_1 = '11BINS'

select * from reg_lkpbu_recon

select * from reg_data_change order by id desc

select id, golongan_pemilik, sandi_perusahaan_asuransi, dana_jaminan, isin_code, data_1 from reg_lkpbu_data_source where data_1 = '11BINS'

select * from reg_lkpbu_recon

truncate table reg_lbabk_recon

select * from reg_lbabk_data_source

select * from reg_lbabk_recon