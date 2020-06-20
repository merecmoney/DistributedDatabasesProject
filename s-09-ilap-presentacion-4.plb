DECLARE
    v_num_tablas NUMBER(10,0);
    v_num_total_tablas NUMBER(10,0);
    v_num_tablas_temp NUMBER(10,0);
    v_num_total_registros number(10,0):=0;
    v_num_default number(10,0);
    v_num_virtual number(10,0);
    v_num_constraints_c number(10,0):=0;
    v_num_constraints_p number(10,0):=0;
    v_num_constraints_u number(10,0):=0;
    v_num_constraints_r number(10,0):=0;

    v_nombre_tabla varchar2(30);
    v_num_registros number(10,0);
    v_tipo_constraint varchar2(1);
    v_num_constraints number(10,0);

    v_num_sequences number(10,0):=0;
    v_num_synonyms number(10,0):=0;
    v_num_views number(10,0):=0;
    v_num_procedures number(10,0):=0;
    v_num_triggers number(10,0):=0;
    v_num_invalid number(10,0):=0;
    v_username varchar2(30);
    v_created date;

    cursor cur_tablas IS select table_name from user_tables;
    cursor cur_constraints is select constraint_type, 
        count(*)user_sequences from user_constraints 
        where constraint_type in('C','P','U','R') group by constraint_type;
    cursor cur_usuarios is select username,created from all_users 
        where username like '%_PROY_USER%' or username like '%_PROY_ADMIN%';
BEGIN
    select count(*) into v_num_tablas_temp from user_tables where temporary='Y';
    select count(*) into v_num_default from user_tab_cols where data_default is not null and virtual_column='NO';
    select count(*) into v_num_virtual from user_tab_cols where data_default is not null and virtual_column='YES';    
    
    open cur_tablas;
    loop 
        fetch cur_tablas into v_nombre_tabla;
        select count(*) into v_num_registros from user_tables where table_name = v_nombre_tabla;
        exit when cur_tablas%notfound;
        v_num_total_registros:=v_num_registros+v_num_total_registros;
    end loop;
    v_num_total_tablas:=cur_tablas%rowcount;
    close cur_tablas;
    
    
    open cur_constraints;
    loop
        fetch cur_constraints into v_tipo_constraint,v_num_constraints;
        exit when cur_constraints%notfound;
        case v_tipo_constraint
           when 'C' then
                v_num_constraints_c:= v_num_constraints;
            when 'P' then
                v_num_constraints_p:= v_num_constraints;
            when 'U' then
                v_num_constraints_u:= v_num_constraints;
            when 'R' then
                v_num_constraints_r:= v_num_constraints;    
           else
            dbms_output.put_line('Invalid constraint type: '||v_tipo_constraint);
        end case;
    end loop;
    close cur_constraints;
    
   select count(*) into v_num_synonyms from user_synonyms;
   select count(*) into v_num_views from user_views;
   select count(*) into v_num_triggers from user_triggers;
   select count(*) into v_num_invalid from user_objects where status ='INVALID';
   select count(*) into v_num_procedures from user_procedures;
   select count(*) into v_num_sequences from user_sequences;
   
    dbms_output.put_line('-------USERS----');
    open cur_usuarios;
    loop
        fetch cur_usuarios into v_username,v_created;
        exit when cur_usuarios%notfound;
         dbms_output.put_line(v_username||' - '||v_created);
    end loop;
    close cur_usuarios;  
       dbms_output.put_line('-------RESULTADOS----');
    dbms_output.put_line('TABLAS       '||v_num_total_tablas);
    dbms_output.put_line('TABLAS TEMP  '||v_num_tablas_temp);
    dbms_output.put_line('REGISTROS    '||v_num_total_registros);
    dbms_output.put_line('DEFAULT      '||v_num_default);
    dbms_output.put_line('T VIRTUAL    '||v_num_virtual);
    dbms_output.put_line('C CHECK      '||v_num_constraints_c);
    dbms_output.put_line('C PK         '||v_num_constraints_p);
    dbms_output.put_line('C UNIQUE     '||v_num_constraints_u);
    dbms_output.put_line('C REFERENCES '||v_num_constraints_r);
    dbms_output.put_line('SEQUENCES    '||v_num_sequences);
    dbms_output.put_line('SYNONYMS     '||v_num_synonyms);
    dbms_output.put_line('VIEWS        '||v_num_views);
    dbms_output.put_line('PROCEDURES   '||v_num_procedures);
    dbms_output.put_line('TRIGGERS     '||v_num_triggers);
    dbms_output.put_line('INVALID      '||v_num_invalid);   
   
END;
/