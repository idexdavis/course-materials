
typedef struct TREE_STRUCT{
	int value;
	int num_children;
	struct TREE_STRUCT* children;
} Tree;


int contain(Tree* bst, int value){
	if(bst == NULL){
		return 0;
	} else if(bst->value == value){
		return 1;
	} else if(value < bst->value{
			return contain(bst->children[0], value);
	} else{
		return contain(bst->children[1], value);
	}

}
