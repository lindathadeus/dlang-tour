import std.stdio;

void print_type_details(T)(T a) {
	writeln(typeid(a), ", init = ", a.init, ", min = ", a.min, ", max = ", a.max);
}

void main() {
	char a;// = 'a';
	bool is_true;// = false;
	byte b;
	ubyte ub;

	short sh;
	ushort ush;
	wchar wch;

	int i;
	uint ui;
	dchar dch;
	float f;

	long l;
	ulong ul;
	double d;

	real r;

	//writefln("char.init = %c", a.init);
	print_type_details(b);//byte
	print_type_details(ub);
	print_type_details(is_true);
	print_type_details(sh);//short
	print_type_details(ush);
	print_type_details(i);
	print_type_details(ui);
	print_type_details(l);
	print_type_details(ul);
	//writeln("wchar.init = ", wch.init);
	//writeln("dchar.init = ", dch.init);
	writeln("float.init = ", f.init);
	writeln("long.init = ", l.init);
	writeln("ulong.init = ", ul.init);
	writeln("double.init = ", d.init);
	writeln("real.init = ", r.init);
	
	assert(int.init == 0);
	writeln("int.init == 0? ", int.init == 0);
}
