const r = 1..10;
writeln(r.indexOrder(4));
writeln(r.orderToIndex(3));

var temp = {1..10};
writeln(temp.indexOrder(1));
writeln(temp.ranges(1));

var ind = 1;

for param d in 1..10 by -1 {
  writeln(ind(d));
  
}
