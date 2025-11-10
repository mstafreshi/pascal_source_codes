{
===================================
 list all system errors.
 2025-11-10 (1404-08-19)
 Mohsen Safari
===================================
}

PROGRAM Err;

USES errors;

VAR
    I: integer;

BEGIN
    FOR I := 0 TO Length(sys_errlist) - 1 DO
        Writeln(I:3, ' : ', sys_errlist[I]);

END.
