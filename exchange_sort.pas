PROGRAM ExchangeSort(output);

{   This program produces 10 random number and then
    sort them with exchange sort algorithm.
    Mohsen Safari
    2025-11-11 (1404-08-20)
}

PROCEDURE PrintArray(Data: ARRAY OF integer);
VAR
    I : integer;
BEGIN
    IF Length(Data) < 1 THEN
        EXIT;
    FOR I := Low(Data) TO High(Data) DO
        Write(Data[I]: 5);
    Writeln;
END;

PROCEDURE SwapElems(Var Data: ARRAY OF integer; I, J: integer);
VAR
    Temp : integer;
BEGIN
    Temp := Data[I];
    Data[I] := Data[J];
    Data[J] := temp;
END;

PROCEDURE ExSort(VAR Data: ARRAY OF integer);
VAR
    I, J : integer;
    FirstIndex, LastIndex, MaxIndex : integer;
BEGIN
    FirstIndex := Low(Data);
    LastIndex := High(Data);
    FOR I := LastIndex DOWNTO FirstIndex DO
    BEGIN
        MaxIndex := I;
        FOR J := FirstIndex TO I - 1 DO
            IF Data[J] > Data[MaxIndex] THEN
                MaxIndex := J;
        IF MaxIndex <> I THEN
            SwapElems(Data, MaxIndex, I);
    END;
END;

VAR
    Data : ARRAY [0 .. 9] OF integer;
    I : integer;
BEGIN
    Randomize;
    FOR I := Low(Data) TO High(Data) DO
        Data[I] := Random(100);

    PrintArray(Data);
    ExSort(Data);
    PrintArray(Data);
END.
