writeln("Input array size");
var num = read(int); //total number of elements
var arraylist: [0..num-1] ; // 0 based indexing
writeln("input array elements:");
for i in 0..(num-1){
    arraylist[i] = read(int);
}
var temp = 0;
for it1 in 0..(num-2){
    for it2 in 0..(num-i){
        if arraylist[j]>arraylist[j+1] {
            temp=arraylist[j];
            arraylist[j]=arraylist[j+1];
            arraylist[j+1]=temp;
        }
    }
}
//Sorted Array
for i in 0..num-1{
    writeln(arraylist[i]);
}
