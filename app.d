import std.stdio;
import std.csv;
import std.file;
import std.string;

struct Layout {
   string start;
   string num;
   string input;
   string f1;
   string empty;
   string f2;
}

void main() {
   auto buffer = std.file.readText("al.txt");

   auto records = csvReader!Layout(buffer, '|');
   writeln("alarms {");
   writeln("   startAddress = 201;");
   writeln("   numberOfDmUsedForAlarms = 9;");
   int i = 0;
   foreach(record; records) {
      writefln("   txt%s = \"%s %s %s %s\";", i++, record.num.strip,
            record.input.strip, record.f1.strip, record.f2.strip);

   }
   writeln("}");
}
