-- SQLINES DEMO *** le SQL Developer Data Modeler 23.1.0.087.0806
-- SQLINES DEMO *** -04-26 11:59:16 EDT
-- SQLINES DEMO *** le Database 21c
-- SQLINES DEMO *** le Database 21c



-- SQLINES DEMO *** no DDL - MDSYS.SDO_GEOMETRY

-- SQLINES DEMO *** no DDL - XMLTYPE

-- SQLINES LICENSE FOR EVALUATION USE ONLY

CREATE SCHEMA `voa` ;
USE voa;

CREATE TABLE nqz_acc_role (
    acc_id INT NOT NULL,
    r_id   SMALLINT NOT NULL
);

ALTER TABLE nqz_acc_role ADD CONSTRAINT nqz_acc_role_pk PRIMARY KEY ( acc_id,
                                                                      r_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE nqz_account (
    acc_id    INT NOT NULL,
    acc_email VARCHAR(30) NOT NULL,
    acc_pwd   VARCHAR(50) NOT NULL,
    v_id      INT NOT NULL
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE INDEX nqz_account__idx ON
    nqz_account (
        acc_email
    ASC );

ALTER TABLE nqz_account ADD CONSTRAINT nqz_account_pk PRIMARY KEY ( acc_id );
ALTER TABLE nqz_account MODIFY acc_id INT AUTO_INCREMENT;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE nqz_att_type ( 
--  attraction type ID
    atttype_id   SMALLINT NOT NULL COMMENT 'attraction type ID', 
-- SQLINES DEMO *** can be roller coaster, water ride, dark ride, kid ride etc
    atttype_name VARCHAR(15) NOT NULL COMMENT 'attraction type can be roller coaster, water ride, dark ride, kid ride etc'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_att_type.atttype_id IS
    'attraction type ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_att_type.atttype_name IS
    'attraction type can be roller coaster, water ride, dark ride, kid ride etc'; */

ALTER TABLE nqz_att_type ADD CONSTRAINT nqz_att_type_pk PRIMARY KEY ( atttype_id );
ALTER TABLE nqz_att_type MODIFY atttype_id SMALLINT AUTO_INCREMENT;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE nqz_attraction ( 
--  attraction ID
    att_id             INT NOT NULL COMMENT 'attraction ID', 
--  attraction name
    att_name           VARCHAR(20) NOT NULL COMMENT 'attraction name', 
-- SQLINES DEMO *** iption
    att_description    VARCHAR(200) NOT NULL COMMENT 'attraction description', 
-- SQLINES DEMO *** en, closed or under maintenance
    att_status         VARCHAR(20) NOT NULL COMMENT 'status can be open, closed or under maintenance', 
-- SQLINES DEMO *** ity
    att_capacity       INT NOT NULL COMMENT 'attraction capacity', 
-- SQLINES DEMO *** um height limit
    att_minimum_height SMALLINT COMMENT 'attraction minimum height limit', 
-- SQLINES DEMO *** ion time in seconds
    att_duration_time  INT NOT NULL COMMENT 'attraction duration time in seconds', 
-- SQLINES DEMO ***  id fk
    ls_id              SMALLINT NOT NULL COMMENT 'location section id fk', 
-- SQLINES DEMO *** id fk
    atttype_id         SMALLINT NOT NULL COMMENT 'attraction type id fk'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_attraction.att_id IS
    'attraction ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_attraction.att_name IS
    'attraction name'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_attraction.att_description IS
    'attraction description'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_attraction.att_status IS
    'status can be open, closed or under maintenance'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_attraction.att_capacity IS
    'attraction capacity'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_attraction.att_minimum_height IS
    'attraction minimum height limit'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_attraction.att_duration_time IS
    'attraction duration time in seconds'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_attraction.ls_id IS
    'location section id fk'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_attraction.atttype_id IS
    'attraction type id fk'; */

ALTER TABLE nqz_attraction ADD CONSTRAINT nqz_attraction_pk PRIMARY KEY ( att_id );
ALTER TABLE nqz_attraction MODIFY att_id INT AUTO_INCREMENT;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE nqz_cash ( 
--  payment id
    pay_id    INT NOT NULL COMMENT 'payment id', 
--  amount of change
    ca_change TINYINT NOT NULL COMMENT 'amount of change'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_cash.pay_id IS
    'payment id'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_cash.ca_change IS
    'amount of change'; */

ALTER TABLE nqz_cash ADD CONSTRAINT nqz_cash_pk PRIMARY KEY ( pay_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE nqz_category ( 
--  category ID
    ctg_id   SMALLINT NOT NULL COMMENT 'category ID', 
-- SQLINES DEMO *** n be Food stall, Ice cream parlor, Restaurant, Gift Shop or
--  Apparels
    ctg_name VARCHAR(50) NOT NULL COMMENT 'category name can be Food stall, Ice cream parlor, Restaurant, Gift Shop or Apparels'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_category.ctg_id IS
    'category ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_category.ctg_name IS
    'category name can be Food stall, Ice cream parlor, Restaurant, Gift Shop or Apparels'; */

ALTER TABLE nqz_category ADD CONSTRAINT nqz_category_pk PRIMARY KEY ( ctg_id );
ALTER TABLE nqz_category MODIFY ctg_id SMALLINT AUTO_INCREMENT;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE nqz_credit_debit ( 
--  payment id
    pay_id    INT NOT NULL COMMENT 'payment id', 
--  name on card
    cd_name   VARCHAR(15) NOT NULL COMMENT 'name on card', 
--  card number
    cd_num    VARCHAR(20) NOT NULL COMMENT 'card number', 
-- SQLINES DEMO *** date
    cd_exdate DATETIME NOT NULL COMMENT 'card expiration date', 
--  card CVV
    cd_cvv    VARCHAR(3) NOT NULL COMMENT 'card CVV', 
--  credit or debit
    cd_credit TINYINT NOT NULL COMMENT 'credit or debit'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_credit_debit.pay_id IS
    'payment id'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_credit_debit.cd_name IS
    'name on card'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_credit_debit.cd_num IS
    'card number'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_credit_debit.cd_exdate IS
    'card expiration date'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_credit_debit.cd_cvv IS
    'card CVV'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_credit_debit.cd_credit IS
    'credit or debit'; */

ALTER TABLE nqz_credit_debit ADD CONSTRAINT nqz_credit_debit_pk PRIMARY KEY ( pay_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE nqz_group ( 
--  visitor ID
    v_id   INT NOT NULL COMMENT 'visitor ID', 
--  group size
    g_size INT NOT NULL COMMENT 'group size'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_group.v_id IS
    'visitor ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_group.g_size IS
    'group size'; */

ALTER TABLE nqz_group ADD CONSTRAINT nqz_group_pk PRIMARY KEY ( v_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE nqz_individual ( 
--  visitor ID
    v_id          INT NOT NULL COMMENT 'visitor ID', 
--  times of visit
    i_times_visit SMALLINT NOT NULL COMMENT 'times of visit'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_individual.v_id IS
    'visitor ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_individual.i_times_visit IS
    'times of visit'; */

ALTER TABLE nqz_individual ADD CONSTRAINT nqz_individual_pk PRIMARY KEY ( v_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE nqz_location_section ( 
-- SQLINES DEMO ***  ID
    ls_id   SMALLINT NOT NULL COMMENT 'location section ID', 
-- SQLINES DEMO ***  can be Lot A, Lot B, Lot C, Lot D etc
    ls_name VARCHAR(15) NOT NULL COMMENT 'location section can be Lot A, Lot B, Lot C, Lot D etc'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_location_section.ls_id IS
    'location section ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_location_section.ls_name IS
    'location section can be Lot A, Lot B, Lot C, Lot D etc'; */

ALTER TABLE nqz_location_section ADD CONSTRAINT nqz_location_section_pk PRIMARY KEY ( ls_id );
ALTER TABLE nqz_location_section MODIFY ls_id SMALLINT AUTO_INCREMENT;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE nqz_member ( 
--  visitor ID
    v_id            INT NOT NULL COMMENT 'visitor ID', 
-- SQLINES DEMO ***  date
    m_startdate     DATETIME NOT NULL COMMENT 'membership start date', 
-- SQLINES DEMO *** ate
    m_enddate       DATETIME NOT NULL COMMENT 'membership end date', 
-- SQLINES DEMO *** s purchased
    m_num_purchased TINYINT NOT NULL COMMENT 'number of tickets purchased'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_member.v_id IS
    'visitor ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_member.m_startdate IS
    'membership start date'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_member.m_enddate IS
    'membership end date'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_member.m_num_purchased IS
    'number of tickets purchased'; */

ALTER TABLE nqz_member ADD CONSTRAINT nqz_member_pk PRIMARY KEY ( v_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE nqz_menu_item ( 
--  menu item ID
    mi_id         INT NOT NULL COMMENT 'menu item ID', 
--  menu item name
    mi_name       VARCHAR(30) NOT NULL COMMENT 'menu item name', 
-- SQLINES DEMO *** rice
    mi_unit_price INT NOT NULL COMMENT 'menu item unit price'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_menu_item.mi_id IS
    'menu item ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_menu_item.mi_name IS
    'menu item name'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_menu_item.mi_unit_price IS
    'menu item unit price'; */

ALTER TABLE nqz_menu_item ADD CONSTRAINT nqz_menu_item_pk PRIMARY KEY ( mi_id );
ALTER TABLE nqz_menu_item MODIFY mi_id INT AUTO_INCREMENT;


-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE nqz_order ( 
--  order ID
    o_id       INT NOT NULL COMMENT 'order ID', 
--  order date
    o_date     DATETIME NOT NULL COMMENT 'order date', 
--  order quantity
    o_quantity INT NOT NULL COMMENT 'order quantity', 
--  order amount
    o_amount   BIGINT NOT NULL COMMENT 'order amount', 
--  show id fk
    sh_id      INT COMMENT 'show id fk', 
--  visitor id fk
    v_id       INT NOT NULL COMMENT 'visitor id fk', 
--  payment id fk
    pay_id     INT COMMENT 'payment id fk', 
--  store id fk
    st_id      INT COMMENT 'store id fk', 
--  menu item id fk
    mi_id      INT COMMENT 'menu item id fk', 
--  ticket id fk
    tkt_id     INT COMMENT 'ticket id fk', 
--  parking id fk
    park_id    INT COMMENT 'parking id fk'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_order.o_id IS
    'order ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_order.o_date IS
    'order date'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_order.o_quantity IS
    'order quantity'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_order.o_amount IS
    'order amount'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_order.sh_id IS
    'show id fk'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_order.v_id IS
    'visitor id fk'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_order.pay_id IS
    'payment id fk'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_order.st_id IS
    'store id fk'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_order.mi_id IS
    'menu item id fk'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_order.tkt_id IS
    'ticket id fk'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_order.park_id IS
    'parking id fk'; */

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE INDEX nqz_order__idx ON
    nqz_order (
        o_id
    ASC,
        o_date
    ASC );

ALTER TABLE nqz_order ADD CONSTRAINT nqz_order_pk PRIMARY KEY ( o_id );
ALTER TABLE nqz_order MODIFY o_id INT AUTO_INCREMENT;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE nqz_parking ( 
--  parking ID
    park_id       INT NOT NULL COMMENT 'parking ID', 
--  parking time in
    park_time_in  DATETIME NOT NULL COMMENT 'parking time in', 
--  parking time out
    park_time_out DATETIME NOT NULL COMMENT 'parking time out', 
-- SQLINES DEMO *** 1 hour
    park_fee      INT NOT NULL COMMENT 'parking fee for 1 hour', 
-- SQLINES DEMO *** ber
    park_spotno   INT NOT NULL COMMENT 'parking spot number', 
--  parking lot id fk
    pl_id         SMALLINT NOT NULL COMMENT 'parking lot id fk'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_parking.park_id IS
    'parking ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_parking.park_time_in IS
    'parking time in'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_parking.park_time_out IS
    'parking time out'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_parking.park_fee IS
    'parking fee for 1 hour'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_parking.park_spotno IS
    'parking spot number'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_parking.pl_id IS
    'parking lot id fk'; */

ALTER TABLE nqz_parking ADD CONSTRAINT nqz_parking_pk PRIMARY KEY ( park_id );
ALTER TABLE nqz_parking MODIFY park_id INT AUTO_INCREMENT;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE nqz_parking_lot ( 
--  parking lot ID
    pl_id   SMALLINT NOT NULL COMMENT 'parking lot ID', 
--  parking lot name
    pl_name VARCHAR(15) NOT NULL COMMENT 'parking lot name'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_parking_lot.pl_id IS
    'parking lot ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_parking_lot.pl_name IS
    'parking lot name'; */

ALTER TABLE nqz_parking_lot ADD CONSTRAINT nqz_parking_lot_pk PRIMARY KEY ( pl_id );
ALTER TABLE nqz_parking_lot MODIFY pl_id SMALLINT AUTO_INCREMENT;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE nqz_payment ( 
--  payment id
    pay_id     INT NOT NULL COMMENT 'payment id', 
--  payment time
    pay_time   DATETIME NOT NULL COMMENT 'payment time', 
--  payment amount
    pay_amount DECIMAL(20) NOT NULL COMMENT 'payment amount', 
-- SQLINES DEMO *** A" or "CD"
    pay_method VARCHAR(11) NOT NULL COMMENT 'method can be "CA" or "CD"'
);

ALTER TABLE nqz_payment
    ADD CONSTRAINT ch_inh_nqz_payment CHECK ( pay_method IN ( 'CA', 'CD', 'NQZ_PAYMENT' ) );

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_payment.pay_id IS
    'payment id'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_payment.pay_time IS
    'payment time'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_payment.pay_amount IS
    'payment amount'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_payment.pay_method IS
    'method can be "CA" or "CD"'; */

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE INDEX nqz_payment__idx ON
    nqz_payment (
        pay_id
    ASC );

ALTER TABLE nqz_payment ADD CONSTRAINT nqz_payment_pk PRIMARY KEY ( pay_id );
ALTER TABLE nqz_payment MODIFY pay_id INT AUTO_INCREMENT;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE nqz_role (
    r_id   SMALLINT NOT NULL,
    r_name VARCHAR(10) NOT NULL
);

ALTER TABLE nqz_role ADD CONSTRAINT nqz_role_pk PRIMARY KEY ( r_id );
ALTER TABLE nqz_role MODIFY r_id SMALLINT AUTO_INCREMENT;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE nqz_sh_type ( 
--  show type ID
    shtype_id   SMALLINT NOT NULL COMMENT 'show type ID', 
-- SQLINES DEMO ***  drama, musical, comedy, horror or adventure
    shtype_name VARCHAR(15) NOT NULL COMMENT 'show type can be drama, musical, comedy, horror or adventure'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_sh_type.shtype_id IS
    'show type ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_sh_type.shtype_name IS
    'show type can be drama, musical, comedy, horror or adventure'; */

ALTER TABLE nqz_sh_type ADD CONSTRAINT nqz_sh_type_pk PRIMARY KEY ( shtype_id );
ALTER TABLE nqz_sh_type MODIFY shtype_id SMALLINT AUTO_INCREMENT;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE nqz_show ( 
--  show ID
    sh_id             INT NOT NULL COMMENT 'show ID', 
--  show name
    sh_name           VARCHAR(30) NOT NULL COMMENT 'show name', 
--  show description
    sh_description    VARCHAR(200) NOT NULL COMMENT 'show description', 
--  show start time
    sh_start_time     DATETIME NOT NULL COMMENT 'show start time', 
--  show end time
    sh_end_time       DATETIME NOT NULL COMMENT 'show end time', 
-- SQLINES DEMO *** sible or not
    sh_wheelchair_acc TINYINT NOT NULL COMMENT 'wheelchair accessible or not', 
--  show price
    sh_price          INT NOT NULL COMMENT 'show price', 
--  show type id fk
    shtype_id         SMALLINT NOT NULL COMMENT 'show type id fk'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_show.sh_id IS
    'show ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_show.sh_name IS
    'show name'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_show.sh_description IS
    'show description'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_show.sh_start_time IS
    'show start time'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_show.sh_end_time IS
    'show end time'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_show.sh_wheelchair_acc IS
    'wheelchair accessible or not'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_show.sh_price IS
    'show price'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_show.shtype_id IS
    'show type id fk'; */

ALTER TABLE nqz_show ADD CONSTRAINT nqz_show_pk PRIMARY KEY ( sh_id );
ALTER TABLE nqz_show MODIFY sh_id INT AUTO_INCREMENT;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE nqz_st_mi ( 
--  store id fk
    st_id INT NOT NULL COMMENT 'store id fk', 
--  menu item id fk
    mi_id INT NOT NULL COMMENT 'menu item id fk'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_st_mi.st_id IS
    'store id fk'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_st_mi.mi_id IS
    'menu item id fk'; */

ALTER TABLE nqz_st_mi ADD CONSTRAINT nqz_st_mi_pk PRIMARY KEY ( st_id,
                                                                mi_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE nqz_store ( 
--  store ID
    st_id          INT NOT NULL COMMENT 'store ID', 
--  store name
    st_name        VARCHAR(30) NOT NULL COMMENT 'store name', 
--  store description
    st_description VARCHAR(200) NOT NULL COMMENT 'store description', 
--  category id fk
    ctg_id         SMALLINT NOT NULL COMMENT 'category id fk'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_store.st_id IS
    'store ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_store.st_name IS
    'store name'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_store.st_description IS
    'store description'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_store.ctg_id IS
    'category id fk'; */

ALTER TABLE nqz_store ADD CONSTRAINT nqz_store_pk PRIMARY KEY ( st_id );
ALTER TABLE nqz_store MODIFY st_id INT AUTO_INCREMENT;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE nqz_student ( 
--  visitor ID
    v_id       INT NOT NULL COMMENT 'visitor ID', 
--  school name
    stu_school VARCHAR(50) NOT NULL COMMENT 'school name'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_student.v_id IS
    'visitor ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_student.stu_school IS
    'school name'; */

ALTER TABLE nqz_student ADD CONSTRAINT nqz_student_pk PRIMARY KEY ( v_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE nqz_ticket ( 
--  ticket ID
    tkt_id         INT NOT NULL COMMENT 'ticket ID', 
-- SQLINES DEMO ***  online or onsite
    tkt_online     TINYINT NOT NULL COMMENT 'ticket purchased online or onsite', 
--  visit date
    tkt_visit_date DATETIME NOT NULL COMMENT 'visit date', 
-- SQLINES DEMO *** price
    tkt_price      SMALLINT NOT NULL COMMENT 'ticket original price', 
--  ticket discount
    tkt_discount   SMALLINT NOT NULL COMMENT 'ticket discount', 
--  ticket paid or not
    tkt_ispaid     TINYINT NOT NULL COMMENT 'ticket paid or not', 
--  ticket type id fk
    tkttype_id     SMALLINT NOT NULL COMMENT 'ticket type id fk'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_ticket.tkt_id IS
    'ticket ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_ticket.tkt_online IS
    'ticket purchased online or onsite'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_ticket.tkt_visit_date IS
    'visit date'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_ticket.tkt_price IS
    'ticket original price'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_ticket.tkt_discount IS
    'ticket discount'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_ticket.tkt_ispaid IS
    'ticket paid or not'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_ticket.tkttype_id IS
    'ticket type id fk'; */

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE INDEX nqz_ticket__idx ON
    nqz_ticket (
        tkt_id
    ASC );

ALTER TABLE nqz_ticket ADD CONSTRAINT nqz_ticket_pk PRIMARY KEY ( tkt_id );
ALTER TABLE nqz_ticket MODIFY tkt_id INT AUTO_INCREMENT;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE nqz_tkt_att ( 
-- SQLINES DEMO ***  join time
    tkt_att_time DATETIME NOT NULL COMMENT 'ticket attration join time', 
--  ticket id fk
    tkt_id       INT NOT NULL COMMENT 'ticket id fk', 
--  attraction id fk
    att_id       INT NOT NULL COMMENT 'attraction id fk'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_tkt_att.tkt_att_time IS
    'ticket attration join time'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_tkt_att.tkt_id IS
    'ticket id fk'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_tkt_att.att_id IS
    'attraction id fk'; */

ALTER TABLE nqz_tkt_att
    ADD CONSTRAINT nqz_tkt_att_pk PRIMARY KEY ( tkt_id,
                                                att_id,
                                                tkt_att_time );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE nqz_tkt_type ( 
--  ticket type ID
    tkttype_id   SMALLINT NOT NULL COMMENT 'ticket type ID', 
--  ticket type name
    tkttype_name VARCHAR(15) NOT NULL COMMENT 'ticket type name'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_tkt_type.tkttype_id IS
    'ticket type ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_tkt_type.tkttype_name IS
    'ticket type name'; */

ALTER TABLE nqz_tkt_type ADD CONSTRAINT nqz_tkt_type_pk PRIMARY KEY ( tkttype_id );
ALTER TABLE nqz_tkt_type MODIFY tkttype_id SMALLINT AUTO_INCREMENT;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE nqz_visitor ( 
--  visitor ID
    v_id      INT NOT NULL COMMENT 'visitor ID', 
--  first name
    v_fname   VARCHAR(20) NOT NULL COMMENT 'first name', 
--  middle name
    v_mname   VARCHAR(20) COMMENT 'middle name', 
--  last name
    v_lname   VARCHAR(20) NOT NULL COMMENT 'last name', 
--  street address
    v_stadd   VARCHAR(50) NOT NULL COMMENT 'street address', 
--  city address
    v_city    VARCHAR(15) NOT NULL COMMENT 'city address', 
--  state address
    v_state   VARCHAR(15) NOT NULL COMMENT 'state address', 
--  country from
    v_country VARCHAR(15) NOT NULL COMMENT 'country from', 
--  email address
    v_email   VARCHAR(30) NOT NULL COMMENT 'email address', 
--  telephone number
    v_telnum  VARCHAR(20) NOT NULL COMMENT 'telephone number', 
-- SQLINES DEMO ***  "S", "I", or "G"
    v_type    VARCHAR(11) NOT NULL COMMENT 'type can be "M", "S", "I", or "G"', 
--  birth date
    v_bdate   DATETIME NOT NULL COMMENT 'birth date'
);

ALTER TABLE nqz_visitor
    ADD CONSTRAINT ch_inh_nqz_visitor CHECK ( v_type IN ( 'G', 'I', 'M', 'NQZ_VISITOR', 'S' ) );

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_visitor.v_id IS
    'visitor ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_visitor.v_fname IS
    'first name'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_visitor.v_mname IS
    'middle name'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_visitor.v_lname IS
    'last name'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_visitor.v_stadd IS
    'street address'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_visitor.v_city IS
    'city address'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_visitor.v_state IS
    'state address'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_visitor.v_country IS
    'country from'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_visitor.v_email IS
    'email address'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_visitor.v_telnum IS
    'telephone number'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_visitor.v_type IS
    'type can be "M", "S", "I", or "G"'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN nqz_visitor.v_bdate IS
    'birth date'; */

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE INDEX nqz_visitor__idxv1 ON
    nqz_visitor (
        v_id
    ASC,
        v_email
    ASC );

ALTER TABLE nqz_visitor ADD CONSTRAINT nqz_visitor_pk PRIMARY KEY ( v_id );
ALTER TABLE nqz_visitor MODIFY v_id INT AUTO_INCREMENT;


ALTER TABLE nqz_acc_role
    ADD CONSTRAINT nqz_acc_role_nqz_account_fk FOREIGN KEY ( acc_id )
        REFERENCES nqz_account ( acc_id );

ALTER TABLE nqz_acc_role
    ADD CONSTRAINT nqz_acc_role_nqz_role_fk FOREIGN KEY ( r_id )
        REFERENCES nqz_role ( r_id );

ALTER TABLE nqz_account
    ADD CONSTRAINT nqz_account_nqz_visitor_fk FOREIGN KEY ( v_id )
        REFERENCES nqz_visitor ( v_id );

ALTER TABLE nqz_attraction
    ADD CONSTRAINT nqz_att_nqz_att_type_fk FOREIGN KEY ( atttype_id )
        REFERENCES nqz_att_type ( atttype_id );

ALTER TABLE nqz_attraction
    ADD CONSTRAINT nqz_att_nqz_ls_fk FOREIGN KEY ( ls_id )
        REFERENCES nqz_location_section ( ls_id );

ALTER TABLE nqz_cash
    ADD CONSTRAINT nqz_cash_nqz_payment_fk FOREIGN KEY ( pay_id )
        REFERENCES nqz_payment ( pay_id );

ALTER TABLE nqz_credit_debit
    ADD CONSTRAINT nqz_cd_nqz_payment_fk FOREIGN KEY ( pay_id )
        REFERENCES nqz_payment ( pay_id );

ALTER TABLE nqz_group
    ADD CONSTRAINT nqz_group_nqz_visitor_fk FOREIGN KEY ( v_id )
        REFERENCES nqz_visitor ( v_id );

ALTER TABLE nqz_individual
    ADD CONSTRAINT nqz_individual_nqz_visitor_fk FOREIGN KEY ( v_id )
        REFERENCES nqz_visitor ( v_id );

ALTER TABLE nqz_member
    ADD CONSTRAINT nqz_member_nqz_visitor_fk FOREIGN KEY ( v_id )
        REFERENCES nqz_visitor ( v_id );

ALTER TABLE nqz_order
    ADD CONSTRAINT nqz_order_nqz_parking_fk FOREIGN KEY ( park_id )
        REFERENCES nqz_parking ( park_id );

ALTER TABLE nqz_order
    ADD CONSTRAINT nqz_order_nqz_payment_fk FOREIGN KEY ( pay_id )
        REFERENCES nqz_payment ( pay_id );

ALTER TABLE nqz_order
    ADD CONSTRAINT nqz_order_nqz_show_fk FOREIGN KEY ( sh_id )
        REFERENCES nqz_show ( sh_id );

ALTER TABLE nqz_order
    ADD CONSTRAINT nqz_order_nqz_st_mi_fk FOREIGN KEY ( st_id,
                                                        mi_id )
        REFERENCES nqz_st_mi ( st_id,
                               mi_id );

ALTER TABLE nqz_order
    ADD CONSTRAINT nqz_order_nqz_ticket_fk FOREIGN KEY ( tkt_id )
        REFERENCES nqz_ticket ( tkt_id );

ALTER TABLE nqz_order
    ADD CONSTRAINT nqz_order_nqz_visitor_fk FOREIGN KEY ( v_id )
        REFERENCES nqz_visitor ( v_id );

ALTER TABLE nqz_parking
    ADD CONSTRAINT nqz_parking_nqz_parking_lot_fk FOREIGN KEY ( pl_id )
        REFERENCES nqz_parking_lot ( pl_id );

ALTER TABLE nqz_show
    ADD CONSTRAINT nqz_show_nqz_sh_type_fk FOREIGN KEY ( shtype_id )
        REFERENCES nqz_sh_type ( shtype_id );

ALTER TABLE nqz_st_mi
    ADD CONSTRAINT nqz_st_mi_nqz_menu_item_fk FOREIGN KEY ( mi_id )
        REFERENCES nqz_menu_item ( mi_id );

ALTER TABLE nqz_st_mi
    ADD CONSTRAINT nqz_st_mi_nqz_store_fk FOREIGN KEY ( st_id )
        REFERENCES nqz_store ( st_id );

ALTER TABLE nqz_store
    ADD CONSTRAINT nqz_store_nqz_category_fk FOREIGN KEY ( ctg_id )
        REFERENCES nqz_category ( ctg_id );

ALTER TABLE nqz_student
    ADD CONSTRAINT nqz_student_nqz_visitor_fk FOREIGN KEY ( v_id )
        REFERENCES nqz_visitor ( v_id );

ALTER TABLE nqz_ticket
    ADD CONSTRAINT nqz_ticket_nqz_tkt_type_fk FOREIGN KEY ( tkttype_id )
        REFERENCES nqz_tkt_type ( tkttype_id );

ALTER TABLE nqz_tkt_att
    ADD CONSTRAINT nqz_tkt_att_nqz_attraction_fk FOREIGN KEY ( att_id )
        REFERENCES nqz_attraction ( att_id );

ALTER TABLE nqz_tkt_att
    ADD CONSTRAINT nqz_tkt_att_nqz_ticket_fk FOREIGN KEY ( tkt_id )
        REFERENCES nqz_ticket ( tkt_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
DROP TRIGGER IF EXISTS arc_fkarc_1_nqz_cash;

-- SQLINES DEMO *** per Data Modeler Summary Report: 
-- 
-- SQLINES DEMO ***                        26
-- SQLINES DEMO ***                         5
-- SQLINES DEMO ***                        53
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO *** DY                      0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         6
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***  TYPE                   0
-- SQLINES DEMO ***  TYPE                   0
-- SQLINES DEMO ***  TYPE BODY              0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO *** EGMENT                  0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO *** ED VIEW                 0
-- SQLINES DEMO *** ED VIEW LOG             0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- 
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- 
-- SQLINES DEMO ***                         0
-- 
-- SQLINES DEMO ***                         0
-- SQLINES DEMO *** A                       0
-- SQLINES DEMO *** T                       0
-- 
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
