
  ALTER TABLE hdbk.log MODIFY (ID CONSTRAINT log_ID_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.log MODIFY (AMND_DATE CONSTRAINT log_ADT_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.log MODIFY (AMND_USER CONSTRAINT log_AUR_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.log MODIFY (AMND_STATE CONSTRAINT log_AST_NN NOT NULL ENABLE);
ALTER TABLE hdbk.log  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE hdbk.log  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE hdbk.log  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE hdbk.log ADD CONSTRAINT log_ID_PK PRIMARY KEY (ID)
  USING INDEX hdbk.log_ID_IDX ENABLE;


  ALTER TABLE hdbk.airline MODIFY (ID CONSTRAINT al_ID_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.airline MODIFY (AMND_DATE CONSTRAINT al_ADT_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.airline MODIFY (AMND_USER CONSTRAINT al_AUR_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.airline MODIFY (AMND_STATE CONSTRAINT al_AST_NN NOT NULL ENABLE);
ALTER TABLE hdbk.airline  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE hdbk.airline  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE hdbk.airline  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE hdbk.airline ADD CONSTRAINT al_ID_PK PRIMARY KEY (ID)
  USING INDEX hdbk.al_ID_IDX ENABLE;
  

  ALTER TABLE hdbk.airplane MODIFY (ID CONSTRAINT AP_ID_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.airplane MODIFY (AMND_DATE CONSTRAINT AP_ADT_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.airplane MODIFY (AMND_USER CONSTRAINT AP_AUR_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.airplane MODIFY (AMND_STATE CONSTRAINT AP_AST_NN NOT NULL ENABLE);
ALTER TABLE hdbk.airplane  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE hdbk.airplane  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE hdbk.airplane  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE hdbk.airplane ADD CONSTRAINT AP_ID_PK PRIMARY KEY (ID)
  USING INDEX hdbk.AP_ID_IDX ENABLE;


  ALTER TABLE hdbk.geo MODIFY (ID CONSTRAINT geo_ID_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.geo MODIFY (AMND_DATE CONSTRAINT geo_ADT_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.geo MODIFY (AMND_USER CONSTRAINT geo_AUR_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.geo MODIFY (AMND_STATE CONSTRAINT geo_AST_NN NOT NULL ENABLE);
ALTER TABLE hdbk.geo  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE hdbk.geo  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE hdbk.geo  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE hdbk.geo ADD CONSTRAINT geo_ID_PK PRIMARY KEY (ID)
  USING INDEX hdbk.geo_ID_IDX ENABLE;
ALTER TABLE hdbk.geo MODIFY (UTC_OFFSET CONSTRAINT geo_UOF_NN NOT NULL ENABLE);
ALTER TABLE hdbk.geo  MODIFY (UTC_OFFSET DEFAULT  on null  '0' );
  

  ALTER TABLE hdbk.gds_nationality MODIFY (ID CONSTRAINT gnt_ID_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.gds_nationality ADD CONSTRAINT gnt_ID_PK PRIMARY KEY (ID)
  USING INDEX hdbk.gnt_ID_IDX ENABLE;




  ALTER TABLE hdbk.markup_type MODIFY (ID CONSTRAINT MKPT_ID_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.markup_type MODIFY (AMND_DATE CONSTRAINT MKPT_ADT_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.markup_type MODIFY (AMND_USER CONSTRAINT MKPT_AUR_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.markup_type MODIFY (AMND_STATE CONSTRAINT MKPT_AST_NN NOT NULL ENABLE);
ALTER TABLE hdbk.markup_type  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE hdbk.markup_type  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE hdbk.markup_type  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE hdbk.markup_type ADD CONSTRAINT MKPT_ID_PK PRIMARY KEY (ID)
  USING INDEX hdbk.MKPT_ID_IDX ENABLE;



  ALTER TABLE hdbk.note MODIFY (ID CONSTRAINT note_ID_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.note MODIFY (AMND_DATE CONSTRAINT note_ADT_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.note MODIFY (AMND_USER CONSTRAINT note_AUR_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.note MODIFY (AMND_STATE CONSTRAINT note_AST_NN NOT NULL ENABLE);
ALTER TABLE hdbk.note  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE hdbk.note  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE hdbk.note  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE hdbk.note ADD CONSTRAINT note_ID_PK PRIMARY KEY (ID)
  USING INDEX hdbk.note_ID_IDX ENABLE;

   
grant references on blng.usr TO hdbk;
 
  ALTER TABLE hdbk.note ADD CONSTRAINT note_usr_OID_FK FOREIGN KEY (user_oid)
  REFERENCES blng.usr (ID) ENABLE;


 
  ALTER TABLE hdbk.note_ticket MODIFY (ID CONSTRAINT ntt_ID_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.note_ticket MODIFY (AMND_DATE CONSTRAINT ntt_ADT_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.note_ticket MODIFY (AMND_USER CONSTRAINT ntt_AUR_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.note_ticket MODIFY (AMND_STATE CONSTRAINT ntt_AST_NN NOT NULL ENABLE);
ALTER TABLE hdbk.note_ticket  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE hdbk.note_ticket  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE hdbk.note_ticket  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE hdbk.note_ticket ADD CONSTRAINT ntt_ID_PK PRIMARY KEY (ID)
  USING INDEX hdbk.ntt_ID_IDX ENABLE;


  ALTER TABLE hdbk.note_ticket ADD CONSTRAINT ntt_note_OID_FK FOREIGN KEY (note_oid)
  REFERENCES hdbk.note (ID) ENABLE;


  ALTER TABLE hdbk.currency MODIFY (ID CONSTRAINT curr_ID_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.currency MODIFY (AMND_DATE CONSTRAINT curr_ADT_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.currency MODIFY (AMND_USER CONSTRAINT curr_AUR_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.currency MODIFY (AMND_STATE CONSTRAINT curr_AST_NN NOT NULL ENABLE);
ALTER TABLE hdbk.currency  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE hdbk.currency  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE hdbk.currency  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE hdbk.currency ADD CONSTRAINT curr_ID_PK PRIMARY KEY (ID)
  USING INDEX hdbk.curr_ID_IDX ENABLE;


  
    ALTER TABLE hdbk.rate MODIFY (ID CONSTRAINT rate_ID_NN NOT NULL ENABLE);
    ALTER TABLE hdbk.rate MODIFY (AMND_DATE CONSTRAINT rate_ADT_NN NOT NULL ENABLE);
    ALTER TABLE hdbk.rate MODIFY (AMND_USER CONSTRAINT rate_AUR_NN NOT NULL ENABLE);
    ALTER TABLE hdbk.rate MODIFY (AMND_STATE CONSTRAINT rate_AST_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.rate  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
  ALTER TABLE hdbk.rate  MODIFY (AMND_USER DEFAULT  on null  user );
  ALTER TABLE hdbk.rate  MODIFY (AMND_STATE DEFAULT  on null  'A' );
    ALTER TABLE hdbk.rate ADD CONSTRAINT rate_ID_PK PRIMARY KEY (ID)
    USING INDEX hdbk.rate_ID_IDX ENABLE;
  
     
    ALTER TABLE hdbk.rate ADD CONSTRAINT rate_curr_OID_FK FOREIGN KEY (currency_oid)
    REFERENCES hdbk.currency (ID) ENABLE;
  
 

  ALTER TABLE hdbk.calendar MODIFY (ID CONSTRAINT cal_ID_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.calendar MODIFY (AMND_DATE CONSTRAINT cal_ADT_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.calendar MODIFY (AMND_USER CONSTRAINT cal_AUR_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.calendar MODIFY (AMND_STATE CONSTRAINT cal_AST_NN NOT NULL ENABLE);
ALTER TABLE hdbk.calendar  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE hdbk.calendar  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE hdbk.calendar  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE hdbk.calendar ADD CONSTRAINT cal_ID_PK PRIMARY KEY (ID)
  USING INDEX hdbk.cal_ID_IDX ENABLE;



  ALTER TABLE hdbk.dictionary MODIFY (ID CONSTRAINT dict_ID_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.dictionary MODIFY (AMND_DATE CONSTRAINT dict_ADT_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.dictionary MODIFY (AMND_USER CONSTRAINT dict_AUR_NN NOT NULL ENABLE);
  ALTER TABLE hdbk.dictionary MODIFY (AMND_STATE CONSTRAINT dict_AST_NN NOT NULL ENABLE);
ALTER TABLE hdbk.dictionary  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE hdbk.dictionary  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE hdbk.dictionary  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE hdbk.dictionary ADD CONSTRAINT dict_ID_PK PRIMARY KEY (ID)
  USING INDEX hdbk.dict_ID_IDX ENABLE;



  ALTER TABLE blng.client MODIFY (ID CONSTRAINT clt_ID_NN NOT NULL ENABLE);
 ALTER TABLE blng.client MODIFY (AMND_DATE CONSTRAINT clt_ADT_NN NOT NULL ENABLE);
  ALTER TABLE blng.client MODIFY (AMND_USER CONSTRAINT clt_AUR_NN NOT NULL ENABLE);
  ALTER TABLE blng.client MODIFY (AMND_STATE CONSTRAINT clt_AST_NN NOT NULL ENABLE);
  ALTER TABLE BLNG.client  MODIFY (AMND_DATE DEFAULT on null sysdate);
  ALTER TABLE BLNG.client  MODIFY (AMND_USER DEFAULT  on null user );
  ALTER TABLE BLNG.client  MODIFY (AMND_STATE DEFAULT  on null 'A' );

  ALTER TABLE blng.client ADD CONSTRAINT clt_ID_PK PRIMARY KEY (ID)
  USING INDEX BLNG.clt_ID_IDX ENABLE;


  ALTER TABLE blng.usr MODIFY (ID CONSTRAINT usr_ID_NN NOT NULL ENABLE);
 ALTER TABLE blng.usr MODIFY (AMND_DATE CONSTRAINT usr_ADT_NN NOT NULL ENABLE);
  ALTER TABLE blng.usr MODIFY (AMND_USER CONSTRAINT usr_AUR_NN NOT NULL ENABLE);
  ALTER TABLE blng.usr MODIFY (AMND_STATE CONSTRAINT usr_AST_NN NOT NULL ENABLE);
  ALTER TABLE BLNG.usr  MODIFY (AMND_DATE DEFAULT on null sysdate);
  ALTER TABLE BLNG.usr  MODIFY (AMND_USER DEFAULT  on null user );
  ALTER TABLE BLNG.usr  MODIFY (AMND_STATE DEFAULT  on null 'A' );

  ALTER TABLE blng.usr ADD CONSTRAINT usr_ID_PK PRIMARY KEY (ID)
  USING INDEX BLNG.usr_ID_IDX ENABLE;

ALTER TABLE BLNG.usr ADD CONSTRAINT usr_clt_OID_FK FOREIGN KEY (client_oid)
  REFERENCES BLNG.client (ID) ENABLE;


ALTER TABLE blng.contract MODIFY (ID CONSTRAINT CNTR_ID_NN NOT NULL ENABLE);
ALTER TABLE blng.contract MODIFY (AMND_STATE CONSTRAINT CNTR_AST_NN NOT NULL ENABLE);
ALTER TABLE blng.contract MODIFY (AMND_DATE CONSTRAINT CNTR_ADT_NN NOT NULL ENABLE);
ALTER TABLE blng.contract MODIFY (AMND_USER CONSTRAINT CNTR_AUR_NN NOT NULL ENABLE);

ALTER TABLE BLNG.CONTRACT  MODIFY (AMND_DATE DEFAULT  on null sysdate );
ALTER TABLE BLNG.CONTRACT  MODIFY (AMND_USER DEFAULT  on null user );
ALTER TABLE BLNG.CONTRACT  MODIFY (AMND_STATE DEFAULT on null 'A' );



  ALTER TABLE blng.contract ADD CONSTRAINT CNTR_ID_PK PRIMARY KEY (ID)
  USING INDEX BLNG.CNTR_ID_IDX ENABLE;


ALTER TABLE BLNG.contract ADD CONSTRAINT cntr_clt_OID_FK FOREIGN KEY (client_oid)
  REFERENCES BLNG.client (ID) ENABLE;



  ALTER TABLE blng.USR2CONTRACT MODIFY (ID CONSTRAINT u2cntr_ID_NN NOT NULL ENABLE);
 ALTER TABLE blng.USR2CONTRACT MODIFY (AMND_DATE CONSTRAINT u2cntr_ADT_NN NOT NULL ENABLE);
  ALTER TABLE blng.USR2CONTRACT MODIFY (AMND_USER CONSTRAINT u2cntr_AUR_NN NOT NULL ENABLE);
  ALTER TABLE blng.USR2CONTRACT MODIFY (AMND_STATE CONSTRAINT u2cntr_AST_NN NOT NULL ENABLE);
  ALTER TABLE BLNG.USR2CONTRACT  MODIFY (AMND_DATE DEFAULT on null sysdate);
  ALTER TABLE BLNG.USR2CONTRACT  MODIFY (AMND_USER DEFAULT  on null user );
  ALTER TABLE BLNG.USR2CONTRACT  MODIFY (AMND_STATE DEFAULT  on null 'A' );

  ALTER TABLE blng.USR2CONTRACT ADD CONSTRAINT u2cntr_ID_PK PRIMARY KEY (ID)
  USING INDEX BLNG.u2cntr_ID_IDX ENABLE;



ALTER TABLE BLNG.USR2CONTRACT ADD CONSTRAINT u2cntr_cntr_OID_FK FOREIGN KEY (contract_oid)
  REFERENCES BLNG.contract (ID) ENABLE;
ALTER TABLE BLNG.USR2CONTRACT ADD CONSTRAINT u2cntr_usr_OID_FK FOREIGN KEY (user_oid)
  REFERENCES BLNG.usr (ID) ENABLE;


  ALTER TABLE blng.account_type MODIFY (ID CONSTRAINT ACCT_ID_NN NOT NULL ENABLE);
 ALTER TABLE blng.account_type MODIFY (AMND_DATE CONSTRAINT ACCT_ADT_NN NOT NULL ENABLE);
  ALTER TABLE blng.account_type MODIFY (AMND_USER CONSTRAINT ACCT_AUR_NN NOT NULL ENABLE);
  ALTER TABLE blng.account_type MODIFY (AMND_STATE CONSTRAINT ACCT_AST_NN NOT NULL ENABLE);
ALTER TABLE BLNG.account_type  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE BLNG.account_type  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE BLNG.account_type  MODIFY (AMND_STATE DEFAULT  on null  'A' );

  ALTER TABLE blng.account_type ADD CONSTRAINT ACCT_ID_PK PRIMARY KEY (ID)
  USING INDEX BLNG.ACCT_ID_IDX ENABLE;


  ALTER TABLE blng.account MODIFY (ID CONSTRAINT ACC_ID_NN NOT NULL ENABLE);
 ALTER TABLE blng.account MODIFY (AMND_DATE CONSTRAINT ACC_ADT_NN NOT NULL ENABLE);
  ALTER TABLE blng.account MODIFY (AMND_USER CONSTRAINT ACC_AUR_NN NOT NULL ENABLE);
  ALTER TABLE blng.account MODIFY (AMND_STATE CONSTRAINT ACC_AST_NN NOT NULL ENABLE);
ALTER TABLE BLNG.account  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE BLNG.account  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE BLNG.account  MODIFY (AMND_STATE DEFAULT  on null  'A' );

  ALTER TABLE blng.account ADD CONSTRAINT ACC_ID_PK PRIMARY KEY (ID)
  USING INDEX BLNG.ACC_ID_IDX ENABLE;

ALTER TABLE BLNG.account ADD CONSTRAINT ACC_CNTR_OID_FK FOREIGN KEY (contract_oid)
  REFERENCES BLNG.contract (ID) ENABLE;

  
ALTER TABLE BLNG.account ADD CONSTRAINT ACC_ACCT_OID_FK FOREIGN KEY (account_type_oid)
  REFERENCES BLNG.account_type (ID) ENABLE;
  
  

  ALTER TABLE blng.trans_type MODIFY (ID CONSTRAINT TRT_ID_NN NOT NULL ENABLE);
  ALTER TABLE blng.trans_type MODIFY (AMND_DATE CONSTRAINT TRT_ADT_NN NOT NULL ENABLE);
  ALTER TABLE blng.trans_type MODIFY (AMND_USER CONSTRAINT TRT_AUR_NN NOT NULL ENABLE);
  ALTER TABLE blng.trans_type MODIFY (AMND_STATE CONSTRAINT TRT_AST_NN NOT NULL ENABLE);
ALTER TABLE BLNG.trans_type  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE BLNG.trans_type  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE BLNG.trans_type  MODIFY (AMND_STATE DEFAULT  on null  'A' );

  ALTER TABLE blng.trans_type ADD CONSTRAINT TRT_ID_PK PRIMARY KEY (ID)
  USING INDEX BLNG.TRT_ID_IDX ENABLE;


  ALTER TABLE blng.document MODIFY (ID CONSTRAINT DOC_ID_NN NOT NULL ENABLE);

ALTER TABLE blng.document MODIFY (AMND_STATE CONSTRAINT DOC_AST_NN NOT NULL ENABLE);
ALTER TABLE blng.document MODIFY (AMND_DATE CONSTRAINT DOC_ADT_NN NOT NULL ENABLE);
ALTER TABLE blng.document MODIFY (AMND_USER CONSTRAINT DOC_AUR_NN NOT NULL ENABLE);
ALTER TABLE blng.document MODIFY (STATUS CONSTRAINT DOC_ST_NN NOT NULL ENABLE);

ALTER TABLE BLNG.document  MODIFY (AMND_DATE DEFAULT  on null sysdate );
ALTER TABLE BLNG.document  MODIFY (AMND_USER DEFAULT  on null user );
ALTER TABLE BLNG.document  MODIFY (AMND_STATE DEFAULT on null 'A' );
ALTER TABLE BLNG.document  MODIFY (STATUS DEFAULT on null 'W' );



  ALTER TABLE blng.document ADD CONSTRAINT DOC_ID_PK PRIMARY KEY (ID)
  USING INDEX BLNG.DOC_ID_IDX ENABLE;

ALTER TABLE BLNG.document ADD CONSTRAINT DOC_CNTR_OID_FK FOREIGN KEY (contract_oid)
  REFERENCES BLNG.contract (ID) ENABLE;

ALTER TABLE BLNG.document ADD CONSTRAINT DOC_TRT_OID_FK FOREIGN KEY (trans_type_oid)
  REFERENCES BLNG.trans_type (ID) ENABLE;

ALTER TABLE BLNG.document ADD CONSTRAINT DOC_BILL_OID_FK FOREIGN KEY (bill_oid)
  REFERENCES ord.bill (ID) ENABLE;



  ALTER TABLE blng.transaction MODIFY (ID CONSTRAINT TRN_ID_NN NOT NULL ENABLE);
  ALTER TABLE blng.transaction MODIFY (AMND_DATE CONSTRAINT TRN_ADT_NN NOT NULL ENABLE);
  ALTER TABLE blng.transaction MODIFY (AMND_USER CONSTRAINT TRN_AUR_NN NOT NULL ENABLE);
  ALTER TABLE blng.transaction MODIFY (AMND_STATE CONSTRAINT TRN_AST_NN NOT NULL ENABLE);
ALTER TABLE BLNG.transaction  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE BLNG.transaction  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE BLNG.transaction  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE blng.transaction ADD CONSTRAINT TRN_ID_PK PRIMARY KEY (ID)
  USING INDEX BLNG.trn_ID_IDX ENABLE;

ALTER TABLE BLNG.transaction ADD CONSTRAINT TRN_ACC_OID_FK FOREIGN KEY (target_account_oid)
  REFERENCES BLNG.account (ID) ENABLE;


ALTER TABLE BLNG.transaction ADD CONSTRAINT TRN_TRT_OID_FK FOREIGN KEY (trans_type_oid)
  REFERENCES BLNG.trans_type (ID) ENABLE;

ALTER TABLE BLNG.transaction ADD CONSTRAINT TRN_DOC_OID_FK FOREIGN KEY (doc_oid)
  REFERENCES BLNG.document (ID) ENABLE;



  ALTER TABLE blng.event_type MODIFY (ID CONSTRAINT ETT_ID_NN NOT NULL ENABLE);
  ALTER TABLE blng.event_type MODIFY (AMND_DATE CONSTRAINT ETT_ADT_NN NOT NULL ENABLE);
  ALTER TABLE blng.event_type MODIFY (AMND_USER CONSTRAINT ETT_AUR_NN NOT NULL ENABLE);
  ALTER TABLE blng.event_type MODIFY (AMND_STATE CONSTRAINT ETT_AST_NN NOT NULL ENABLE);
ALTER TABLE BLNG.event_type  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE BLNG.event_type  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE BLNG.event_type  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE blng.event_type ADD CONSTRAINT ETT_ID_PK PRIMARY KEY (ID)
  USING INDEX BLNG.ETT_ID_IDX ENABLE;


  ALTER TABLE blng.event MODIFY (ID CONSTRAINT EVNT_ID_NN NOT NULL ENABLE);
  ALTER TABLE blng.event MODIFY (AMND_DATE CONSTRAINT EVNT_ADT_NN NOT NULL ENABLE);
  ALTER TABLE blng.event MODIFY (AMND_USER CONSTRAINT EVNT_AUR_NN NOT NULL ENABLE);
  ALTER TABLE blng.event MODIFY (AMND_STATE CONSTRAINT EVNT_AST_NN NOT NULL ENABLE);
ALTER TABLE BLNG.event  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE BLNG.event  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE BLNG.event  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE blng.event ADD CONSTRAINT EVNT_ID_PK PRIMARY KEY (ID)
  USING INDEX BLNG.EVNT_ID_IDX ENABLE;
 
ALTER TABLE BLNG.event ADD CONSTRAINT EVNT_ETT_OID_FK FOREIGN KEY (event_type_oid)
  REFERENCES BLNG.event_type (ID) ENABLE;
ALTER TABLE BLNG.event ADD CONSTRAINT EVNT_TRN_OID_FK FOREIGN KEY (transaction_oid)
  REFERENCES BLNG.transaction (ID) ENABLE;
ALTER TABLE BLNG.event ADD CONSTRAINT EVNT_CNTR_OID_FK FOREIGN KEY (contract_oid)
  REFERENCES BLNG.contract (ID) ENABLE;



  ALTER TABLE blng.status_type MODIFY (ID CONSTRAINT STT_ID_NN NOT NULL ENABLE);
  ALTER TABLE blng.status_type MODIFY (AMND_DATE CONSTRAINT STT_ADT_NN NOT NULL ENABLE);
  ALTER TABLE blng.status_type MODIFY (AMND_USER CONSTRAINT STT_AUR_NN NOT NULL ENABLE);
  ALTER TABLE blng.status_type MODIFY (AMND_STATE CONSTRAINT STT_AST_NN NOT NULL ENABLE);
ALTER TABLE BLNG.status_type  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE BLNG.status_type  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE BLNG.status_type  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE blng.status_type ADD CONSTRAINT STT_ID_PK PRIMARY KEY (ID)
  USING INDEX BLNG.STT_ID_IDX ENABLE;



  ALTER TABLE blng.delay MODIFY (ID CONSTRAINT dly_ID_NN NOT NULL ENABLE);
  ALTER TABLE blng.delay MODIFY (AMND_DATE CONSTRAINT DLY_ADT_NN NOT NULL ENABLE);
  ALTER TABLE blng.delay MODIFY (AMND_USER CONSTRAINT DLY_AUR_NN NOT NULL ENABLE);
  ALTER TABLE blng.delay MODIFY (AMND_STATE CONSTRAINT DLY_AST_NN NOT NULL ENABLE);
ALTER TABLE BLNG.delay  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE BLNG.delay  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE BLNG.delay  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE blng.delay ADD CONSTRAINT DLY_ID_PK PRIMARY KEY (ID)
  USING INDEX BLNG.DLY_ID_IDX ENABLE;

ALTER TABLE BLNG.delay ADD CONSTRAINT DLY_ETT_OID_FK FOREIGN KEY (event_type_oid)
  REFERENCES BLNG.event_type (ID) ENABLE;
ALTER TABLE BLNG.delay ADD CONSTRAINT DLY_TRN_OID_FK FOREIGN KEY (transaction_oid)
  REFERENCES BLNG.transaction (ID) ENABLE;
ALTER TABLE BLNG.delay ADD CONSTRAINT DLY_CNTR_OID_FK FOREIGN KEY (contract_oid)
  REFERENCES BLNG.contract (ID) ENABLE;



  ALTER TABLE blng.domain MODIFY (ID CONSTRAINT dmn_ID_NN NOT NULL ENABLE);
  ALTER TABLE blng.domain MODIFY (AMND_DATE CONSTRAINT dmn_ADT_NN NOT NULL ENABLE);
  ALTER TABLE blng.domain MODIFY (AMND_USER CONSTRAINT dmn_AUR_NN NOT NULL ENABLE);
  ALTER TABLE blng.domain MODIFY (AMND_STATE CONSTRAINT dmn_AST_NN NOT NULL ENABLE);
ALTER TABLE BLNG.domain  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE BLNG.domain  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE BLNG.domain  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE blng.domain ADD CONSTRAINT dmn_ID_PK PRIMARY KEY (ID)
  USING INDEX BLNG.dmn_ID_IDX ENABLE;


ALTER TABLE BLNG.domain ADD CONSTRAINT dmn_cntr_OID_FK FOREIGN KEY (contract_oid)
  REFERENCES BLNG.contract (ID) ENABLE;




  ALTER TABLE blng.USR_DATA MODIFY (ID CONSTRAINT usrd_ID_NN NOT NULL ENABLE);
  ALTER TABLE blng.USR_DATA MODIFY (AMND_DATE CONSTRAINT usrd_ADT_NN NOT NULL ENABLE);
  ALTER TABLE blng.USR_DATA MODIFY (AMND_USER CONSTRAINT usrd_AUR_NN NOT NULL ENABLE);
  ALTER TABLE blng.USR_DATA MODIFY (AMND_STATE CONSTRAINT usrd_AST_NN NOT NULL ENABLE);
ALTER TABLE BLNG.USR_DATA  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE BLNG.USR_DATA  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE BLNG.USR_DATA  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE blng.USR_DATA ADD CONSTRAINT usrd_ID_PK PRIMARY KEY (ID)
  USING INDEX BLNG.usrd_ID_IDX ENABLE;



ALTER TABLE BLNG.USR_DATA ADD CONSTRAINT usrd_usr_OID_FK FOREIGN KEY (user_oid)
  REFERENCES BLNG.usr (ID) ENABLE;


  ALTER TABLE ord.ord MODIFY (ID CONSTRAINT ord_ID_NN NOT NULL ENABLE);
  ALTER TABLE ord.ord MODIFY (AMND_DATE CONSTRAINT ord_ADT_NN NOT NULL ENABLE);
  ALTER TABLE ord.ord MODIFY (AMND_USER CONSTRAINT ord_AUR_NN NOT NULL ENABLE);
  ALTER TABLE ord.ord MODIFY (AMND_STATE CONSTRAINT ord_AST_NN NOT NULL ENABLE);
ALTER TABLE ord.ord  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE ord.ord  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE ord.ord  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE ord.ord ADD CONSTRAINT ord_ID_PK PRIMARY KEY (ID)
  USING INDEX ord.ord_ID_IDX ENABLE;
  

  
  ALTER TABLE ord.ord ADD CONSTRAINT bill_usr_OID_FK FOREIGN KEY (user_oid)
  REFERENCES blng.usr (ID) ENABLE;
   


  ALTER TABLE ord.bill MODIFY (ID CONSTRAINT bill_ID_NN NOT NULL ENABLE);
  ALTER TABLE ord.bill MODIFY (AMND_DATE CONSTRAINT bill_ADT_NN NOT NULL ENABLE);
  ALTER TABLE ord.bill MODIFY (AMND_USER CONSTRAINT bill_AUR_NN NOT NULL ENABLE);
  ALTER TABLE ord.bill MODIFY (AMND_STATE CONSTRAINT bill_AST_NN NOT NULL ENABLE);
ALTER TABLE ord.bill  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE ord.bill  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE ord.bill  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE ord.bill ADD CONSTRAINT bill_ID_PK PRIMARY KEY (ID)
  USING INDEX ord.bill_ID_IDX ENABLE;
 
  grant references on  ord.bill TO blng;
 
  
  ALTER TABLE ord.bill ADD CONSTRAINT bill_ord_OID_FK FOREIGN KEY (order_oid)
  REFERENCES ord.ord (ID) ENABLE;

  ALTER TABLE ord.bill ADD CONSTRAINT bill_cntr_OID_FK FOREIGN KEY (contract_oid)
  REFERENCES blng.contract (ID) ENABLE;
  


  ALTER TABLE ord.item_avia MODIFY (ID CONSTRAINT iav_ID_NN NOT NULL ENABLE);
  ALTER TABLE ord.item_avia MODIFY (AMND_DATE CONSTRAINT iav_ADT_NN NOT NULL ENABLE);
  ALTER TABLE ord.item_avia MODIFY (AMND_USER CONSTRAINT iav_AUR_NN NOT NULL ENABLE);
  ALTER TABLE ord.item_avia MODIFY (AMND_STATE CONSTRAINT iav_AST_NN NOT NULL ENABLE);
ALTER TABLE ord.item_avia  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE ord.item_avia  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE ord.item_avia  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE ord.item_avia ADD CONSTRAINT iav_ID_PK PRIMARY KEY (ID)
  USING INDEX ord.iav_ID_IDX ENABLE;
 
   ALTER TABLE ord.item_avia ADD CONSTRAINT iav_ensure_json CHECK (pnr_object IS JSON (STRICT));
  
  ALTER TABLE ord.item_avia ADD CONSTRAINT iav_ord_OID_FK FOREIGN KEY (order_oid)
  REFERENCES ord.ord (ID) ENABLE;
 



  ALTER TABLE ord.ticket MODIFY (ID CONSTRAINT tkt_ID_NN NOT NULL ENABLE);
  ALTER TABLE ord.ticket MODIFY (AMND_DATE CONSTRAINT tkt_ADT_NN NOT NULL ENABLE);
  ALTER TABLE ord.ticket MODIFY (AMND_USER CONSTRAINT tkt_AUR_NN NOT NULL ENABLE);
  ALTER TABLE ord.ticket MODIFY (AMND_STATE CONSTRAINT tkt_AST_NN NOT NULL ENABLE);
ALTER TABLE ord.ticket  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE ord.ticket  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE ord.ticket  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE ord.ticket ADD CONSTRAINT tkt_ID_PK PRIMARY KEY (ID)
  USING INDEX ord.tkt_ID_IDX ENABLE;
 
 
  
  ALTER TABLE ord.ticket ADD CONSTRAINT tkt_iav_OID_FK FOREIGN KEY (item_avia_oid)
  REFERENCES ord.item_avia (ID) ENABLE;
 


  ALTER TABLE ord.commission MODIFY (ID CONSTRAINT CMN_ID_NN NOT NULL ENABLE);
  ALTER TABLE ord.commission MODIFY (AMND_DATE CONSTRAINT CMN_ADT_NN NOT NULL ENABLE);
  ALTER TABLE ord.commission MODIFY (AMND_USER CONSTRAINT CMN_AUR_NN NOT NULL ENABLE);
  ALTER TABLE ord.commission MODIFY (AMND_STATE CONSTRAINT CMN_AST_NN NOT NULL ENABLE);
ALTER TABLE ord.commission  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE ord.commission  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE ord.commission  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE ord.commission ADD CONSTRAINT CMN_ID_PK PRIMARY KEY (ID)
  USING INDEX ord.CMN_ID_IDX ENABLE;



ALTER TABLE ord.commission ADD CONSTRAINT CMN_CNTR_OID_FK FOREIGN KEY (contract_oid)
  REFERENCES BLNG.contract (ID) ENABLE;



  ALTER TABLE ord.commission_template MODIFY (ID CONSTRAINT CT_ID_NN NOT NULL ENABLE);
  ALTER TABLE ord.commission_template MODIFY (AMND_DATE CONSTRAINT CT_ADT_NN NOT NULL ENABLE);
  ALTER TABLE ord.commission_template MODIFY (AMND_USER CONSTRAINT CT_AUR_NN NOT NULL ENABLE);
  ALTER TABLE ord.commission_template MODIFY (AMND_STATE CONSTRAINT CT_AST_NN NOT NULL ENABLE);
ALTER TABLE ord.commission_template  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE ord.commission_template  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE ord.commission_template  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE ord.commission_template ADD CONSTRAINT CT_ID_PK PRIMARY KEY (ID)
  USING INDEX ord.CT_ID_IDX ENABLE;



  ALTER TABLE ord.commission_details MODIFY (ID CONSTRAINT CD_ID_NN NOT NULL ENABLE);
  ALTER TABLE ord.commission_details MODIFY (AMND_DATE CONSTRAINT CD_ADT_NN NOT NULL ENABLE);
  ALTER TABLE ord.commission_details MODIFY (AMND_USER CONSTRAINT CD_AUR_NN NOT NULL ENABLE);
  ALTER TABLE ord.commission_details MODIFY (AMND_STATE CONSTRAINT CD_AST_NN NOT NULL ENABLE);
ALTER TABLE ord.commission_details  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE ord.commission_details  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE ord.commission_details  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE ord.commission_details ADD CONSTRAINT CD_ID_PK PRIMARY KEY (ID)
  USING INDEX ord.CD_ID_IDX ENABLE;



ALTER TABLE ord.commission_details ADD CONSTRAINT CD_CMN_OID_FK FOREIGN KEY (commission_oid)
  REFERENCES ord.commission (ID) ENABLE;
ALTER TABLE ord.commission_details ADD CONSTRAINT CD_CT_OID_FK FOREIGN KEY (commission_template_oid)
  REFERENCES ord.commission_template (ID) ENABLE;



  ALTER TABLE ord.item_avia_status MODIFY (ID CONSTRAINT iavs_ID_NN NOT NULL ENABLE);
  ALTER TABLE ord.item_avia_status MODIFY (AMND_DATE CONSTRAINT iavs_ADT_NN NOT NULL ENABLE);
  ALTER TABLE ord.item_avia_status MODIFY (AMND_USER CONSTRAINT iavs_AUR_NN NOT NULL ENABLE);
  ALTER TABLE ord.item_avia_status MODIFY (AMND_STATE CONSTRAINT iavs_AST_NN NOT NULL ENABLE);
ALTER TABLE ord.item_avia_status  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE ord.item_avia_status  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE ord.item_avia_status  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE ord.item_avia_status ADD CONSTRAINT iavs_ID_PK PRIMARY KEY (ID)
  USING INDEX ord.iavs_ID_IDX ENABLE;
 
 
  
  ALTER TABLE ord.item_avia_status ADD CONSTRAINT iavs_iav_OID_FK FOREIGN KEY (item_avia_oid)
  REFERENCES ord.item_avia (ID) ENABLE;




  ALTER TABLE ord.pos_rule MODIFY (ID CONSTRAINT posr_ID_NN NOT NULL ENABLE);
  ALTER TABLE ord.pos_rule MODIFY (AMND_DATE CONSTRAINT posr_ADT_NN NOT NULL ENABLE);
  ALTER TABLE ord.pos_rule MODIFY (AMND_USER CONSTRAINT posr_AUR_NN NOT NULL ENABLE);
  ALTER TABLE ord.pos_rule MODIFY (AMND_STATE CONSTRAINT posr_AST_NN NOT NULL ENABLE);
ALTER TABLE ord.pos_rule  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE ord.pos_rule  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE ord.pos_rule  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE ord.pos_rule ADD CONSTRAINT posr_ID_PK PRIMARY KEY (ID)
  USING INDEX ord.posr_ID_IDX ENABLE;
 
 
  
  ALTER TABLE ord.pos_rule ADD CONSTRAINT posr_cntr_OID_FK FOREIGN KEY (contract_oid)
  REFERENCES blng.contract (ID) ENABLE;

  ALTER TABLE ord.pos_rule ADD CONSTRAINT posr_al_OID_FK FOREIGN KEY (airline_oid)
  REFERENCES hdbk.airline (ID) ENABLE;



  ALTER TABLE ord.currency MODIFY (ID CONSTRAINT curr_ID_NN NOT NULL ENABLE);
  ALTER TABLE ord.currency MODIFY (AMND_DATE CONSTRAINT curr_ADT_NN NOT NULL ENABLE);
  ALTER TABLE ord.currency MODIFY (AMND_USER CONSTRAINT curr_AUR_NN NOT NULL ENABLE);
  ALTER TABLE ord.currency MODIFY (AMND_STATE CONSTRAINT curr_AST_NN NOT NULL ENABLE);
ALTER TABLE ord.currency  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE ord.currency  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE ord.currency  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE ord.currency ADD CONSTRAINT curr_ID_PK PRIMARY KEY (ID)
  USING INDEX ord.curr_ID_IDX ENABLE;
  
  


  ALTER TABLE ord.task1c MODIFY (ID CONSTRAINT t1c_ID_NN NOT NULL ENABLE);
  ALTER TABLE ord.task1c MODIFY (AMND_DATE CONSTRAINT t1c_ADT_NN NOT NULL ENABLE);
  ALTER TABLE ord.task1c MODIFY (AMND_USER CONSTRAINT t1c_AUR_NN NOT NULL ENABLE);
  ALTER TABLE ord.task1c MODIFY (AMND_STATE CONSTRAINT t1c_AST_NN NOT NULL ENABLE);
ALTER TABLE ord.task1c  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE ord.task1c  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE ord.task1c  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE ord.task1c ADD CONSTRAINT t1c_ID_PK PRIMARY KEY (ID)
  USING INDEX ord.t1c_ID_IDX ENABLE;
 
  


  ALTER TABLE ord.bill2task MODIFY (ID CONSTRAINT b2t_ID_NN NOT NULL ENABLE);
  ALTER TABLE ord.bill2task MODIFY (AMND_DATE CONSTRAINT b2t_ADT_NN NOT NULL ENABLE);
  ALTER TABLE ord.bill2task MODIFY (AMND_USER CONSTRAINT b2t_AUR_NN NOT NULL ENABLE);
  ALTER TABLE ord.bill2task MODIFY (AMND_STATE CONSTRAINT b2t_AST_NN NOT NULL ENABLE);
ALTER TABLE ord.bill2task  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE ord.bill2task  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE ord.bill2task  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE ord.bill2task ADD CONSTRAINT b2t_ID_PK PRIMARY KEY (ID)
  USING INDEX ord.b2t_ID_IDX ENABLE;
 
  
  ALTER TABLE ord.bill2task ADD CONSTRAINT b2t_bill_OID_FK FOREIGN KEY (bill_oid)
  REFERENCES ord.bill (ID) ENABLE;

  ALTER TABLE ord.bill2task ADD CONSTRAINT b2t_t1c_OID_FK FOREIGN KEY (task_oid)
  REFERENCES ord.task1c (ID) ENABLE;
  


  ALTER TABLE ord.itinerary MODIFY (ID CONSTRAINT itin_ID_NN NOT NULL ENABLE);
  ALTER TABLE ord.itinerary MODIFY (AMND_DATE CONSTRAINT itin_ADT_NN NOT NULL ENABLE);
  ALTER TABLE ord.itinerary MODIFY (AMND_USER CONSTRAINT itin_AUR_NN NOT NULL ENABLE);
  ALTER TABLE ord.itinerary MODIFY (AMND_STATE CONSTRAINT itin_AST_NN NOT NULL ENABLE);
ALTER TABLE ord.itinerary  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE ord.itinerary  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE ord.itinerary  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE ord.itinerary ADD CONSTRAINT itin_ID_PK PRIMARY KEY (ID)
  USING INDEX ord.itin_ID_IDX ENABLE;
 
 
  
  ALTER TABLE ord.itinerary ADD CONSTRAINT itin_iav_OID_FK FOREIGN KEY (item_avia_oid)
  REFERENCES ord.item_avia (ID) ENABLE;
 


  ALTER TABLE ord.leg MODIFY (ID CONSTRAINT leg_ID_NN NOT NULL ENABLE);
  ALTER TABLE ord.leg MODIFY (AMND_DATE CONSTRAINT leg_ADT_NN NOT NULL ENABLE);
  ALTER TABLE ord.leg MODIFY (AMND_USER CONSTRAINT leg_AUR_NN NOT NULL ENABLE);
  ALTER TABLE ord.leg MODIFY (AMND_STATE CONSTRAINT leg_AST_NN NOT NULL ENABLE);
ALTER TABLE ord.leg  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE ord.leg  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE ord.leg  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE ord.leg ADD CONSTRAINT leg_ID_PK PRIMARY KEY (ID)
  USING INDEX ord.leg_ID_IDX ENABLE;
 
 
  
  ALTER TABLE ord.leg ADD CONSTRAINT leg_itin_OID_FK FOREIGN KEY (itinerary_oid)
  REFERENCES ord.itinerary (ID) ENABLE;
 


  ALTER TABLE ord.segment MODIFY (ID CONSTRAINT sgm_ID_NN NOT NULL ENABLE);
  ALTER TABLE ord.segment MODIFY (AMND_DATE CONSTRAINT sgm_ADT_NN NOT NULL ENABLE);
  ALTER TABLE ord.segment MODIFY (AMND_USER CONSTRAINT sgm_AUR_NN NOT NULL ENABLE);
  ALTER TABLE ord.segment MODIFY (AMND_STATE CONSTRAINT sgm_AST_NN NOT NULL ENABLE);
ALTER TABLE ord.segment  MODIFY (AMND_DATE DEFAULT  on null  sysdate );
ALTER TABLE ord.segment  MODIFY (AMND_USER DEFAULT  on null  user );
ALTER TABLE ord.segment  MODIFY (AMND_STATE DEFAULT  on null  'A' );
  ALTER TABLE ord.segment ADD CONSTRAINT sgm_ID_PK PRIMARY KEY (ID)
  USING INDEX ord.sgm_ID_IDX ENABLE;
 
 
  
  ALTER TABLE ord.segment ADD CONSTRAINT sgm_leg_oid_FK FOREIGN KEY (leg_oid)
  REFERENCES ord.leg (ID) ENABLE;
 