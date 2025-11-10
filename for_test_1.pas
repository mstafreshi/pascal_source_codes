PROGRAM For_Test;

VAR
    I : integer;

BEGIN
    FOR I := 1 TO 20 DO
    BEGIN
        { skip 19 and don't write it on screen }
        IF I = 19 THEN
        BEGIN
            Writeln('SKIP 19!');
            CONTINUE;
        END;

        Writeln('I = ', I:2);
    END;

END.

