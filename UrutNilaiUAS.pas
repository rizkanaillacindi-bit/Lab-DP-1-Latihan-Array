program UrutNilaiUAS;

var
  nilai: array[1..10] of integer;
  n, i, j, temp: integer;

begin

  write('Jumlah mahasiswa (1-10): ');
  readln(n);

  if (n < 1) or (n > 10) then
    writeln('Jumlah mahasiswa harus 1 sampai 10.')
  else
  begin
    for i := 1 to n do
    begin
      write('Masukkan nilai mahasiswa ke-', i, ': ');
      readln(nilai[i]);
    end;

    for i := 1 to n - 1 do
      for j := 1 to n - i do
        if nilai[j] > nilai[j + 1] then
        begin
          temp := nilai[j];
          nilai[j] := nilai[j + 1];
          nilai[j + 1] := temp;
        end;

    writeln('Nilai dari terendah ke tertinggi:');
    for i := 1 to n do
      write(nilai[i], ' ');

    writeln;
  end;

  readln;
end.