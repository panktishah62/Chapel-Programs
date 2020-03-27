var tree = new Tree( "a",
  new Tree("b"),
  new Tree("c",
    new Tree("d"),
    new Tree("e")));

class Tree {
  var data: string;
  var left, right: Tree;
  proc deinit() {
    if left  then delete left;
    if right then delete right;
  }
}

iter preorder(tree: Tree): Tree {
  if tree != nil {
yield tree;  
    for child in preorder(tree.left) do
      yield child;
    for child in preorder(tree.right) do
      yield child;
  }
}

iter postorder(tree: Tree): Tree {
  if tree != nil { 
    for child in postorder(tree.left) do
      yield child;
    for child in postorder(tree.right) do
      yield child;
    yield tree;
  }
}

iter inorder(tree: Tree): Tree {
  if tree != nil { 
    for child in inorder(tree.left) do
      yield child;
    yield tree;
    for child in inorder(tree.right) do
      yield child;
  }
}
