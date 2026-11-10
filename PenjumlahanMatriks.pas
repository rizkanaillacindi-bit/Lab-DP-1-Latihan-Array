program PenjumlahanMatriks;

var
  A, B, C: array[1..5, 1..5] of integer;
  baris1, kolom1, baris2, kolom2: integer;
  i, j: integer;

begin

  write('Jumlah baris matriks 1 (1-5): ');
  readln(baris1);
  write('Jumlah kolom matriks 1 (1-5): ');
  readln(kolom1);

  write('Jumlah baris matriks 2 (1-5): ');
  readln(baris2);
  write('Jumlah kolom matriks 2 (1-5): ');
  readln(kolom2);

  if (baris1 < 1) or (baris1 > 5) or
     (kolom1 < 1) or (kolom1 > 5) or
     (baris2 < 1) or (baris2 > 5) or
     (kolom2 < 1) or (kolom2 > 5) then
  begin
    writeln('Ukuran matriks harus antara 1 sampai 5.');
  end
  else
  begin
    if (baris1 = baris2) and
       (kolom1 = kolom2) then
    begin
      writeln('Masukkan elemen matriks 1:');
      for i := 1 to baris1 do
        for j := 1 to kolom1 do
        begin
          write('A[', i, ',', j, '] = ');
          readln(A[i,j]);
        end;

      writeln('Masukkan elemen matriks 2:');
      for i := 1 to baris2 do
        for j := 1 to kolom2 do
        begin
          write('B[', i, ',', j, '] = ');
          readln(B[i,j]);
        end;

      writeln('Hasil penjumlahan matriks:');
      for i := 1 to baris1 do
      begin
        for j := 1 to kolom1 do
        begin
          C[i,j] := A[i,j] + B[i,j];
          write(C[i,j]:5);
        end;
        writeln;
      end;
    end
    else
      writeln('Kedua matriks tidak dapat dijumlahkan.');
  end;

  readln;
end.