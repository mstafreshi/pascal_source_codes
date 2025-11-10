PROGRAM For_Test_2;

VAR
    I : integer;

BEGIN
    FOR I := 1 TO 20 DO
    BEGIN
        IF I = 13 THEN
        BEGIN
            Writeln('SKIP 13-20!');
            BREAK;
        END;
        Writeln('I = ', I:2);
    END;
END.
