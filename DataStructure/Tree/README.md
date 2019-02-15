# 概述
树表示由边连接的节点。我们将具体讨论二叉树或二叉搜索树。

二叉树是用于数据存储目的的特殊数据结构。二叉树具有特殊条件，即每个节点最多可以有两个子节点。二叉树具有有序数组和链表的优点，因为搜索与排序数组一样快，插入或删除操作与链表中一样快。

![](./images/binary_tree.jpg)

# 一些术语
以下是关于树的重要术语。

路径 - 路径是指沿树边缘的节点序列。

Root - 树顶部的节点称为root。每个树只有一个根，从根节点到任何节点只有一条路径。

Parent - 除根节点外的任何节点都有一条边向上到名为parent的节点。

Child - 由其边缘向下连接的给定节点下方的节点称为其子节点。

Leaf - 没有任何子节点的节点称为叶节点。

子树 - 子树表示节点的后代。

访问 - 访问是指在控制在节点上时检查节点的值。

遍历 - 遍历意味着以特定顺序遍历节点。

级别 - 节点级别表示节点的生成。如果根节点处于级别0，则其下一个子节点处于级别1，其孙级处于级别2，依此类推。

keys - Key表示节点的值，基于该节点对节点执行搜索操作。

# 二叉搜索树表示
二叉搜索树表现出特殊的行为。节点的左子节点必须具有小于其父节点值的值，并且节点的右子节点必须具有大于其父值的值。

![](./images/binary_search_tree.jpg)

我们将使用节点对象实现树并通过引用连接它们。

# 树节点
编写树节点的代码类似于下面给出的代码。它有一个数据部分和对其左右子节点的引用。

```
struct node {
   int data;   
   struct node *leftChild;
   struct node *rightChild;
};

```

在树中，所有节点共享公共构造。

# BST基本操作
可以在二叉搜索树数据结构上执行的基本操作如下 -

插入 - 在树中插入元素/创建树。

搜索 - 搜索树中的元素。

Preorder Traversal - 以预订方式遍历树。

Inorder遍历 - 以有序方式遍历树。

Postorder Traversal - 以后序方式遍历树。

我们将在本章中学习创建（插入）树结构并在树中搜索数据项。我们将在下一章中学习树遍历方法。

# 插入操作
第一次插入会创建树。之后，每当要插入元素时，首先找到其正确的位置。从根节点开始搜索，然后如果数据小于键值，则在左子树中搜索空位置并插入数据。否则，搜索右子树中的空位置并插入数据。

## 算法
```
If root is NULL 
   then create root node
return

If root exists then
   compare the data with node.data
   
   while until insertion position is located

      If data is greater than node.data
         goto right subtree
      else
         goto left subtree

   endwhile 
   
   insert data
	
end If      

```

## 代码如下
```
void insert(int data) {
   struct node *tempNode = (struct node*) malloc(sizeof(struct node));
   struct node *current;
   struct node *parent;

   tempNode->data = data;
   tempNode->leftChild = NULL;
   tempNode->rightChild = NULL;

   //如果树为空，则创建根节点
   if(root == NULL) {
      root = tempNode;
   } else {
      current = root;
      parent  = NULL;

      while(1) {       
          // 临时变量，保存当前遍历到的节点         
         parent = current;

         //进入树的左边,如果data数据域小于当前节点的数据域，则进行保存
         if(data < parent->data) {
            current = current->leftChild;                
            
            //插入左侧
            if(current == NULL) {
               parent->leftChild = tempNode;
               return;
            }
         }
			
         //进入树的右边
         else {
            current = current->rightChild;
            
            //插入右侧
            if(current == NULL) {
               parent->rightChild = tempNode;
               return;
            }
         }
      }            
   }
}

```

# 搜索操作
每当要搜索元素时，从根节点开始搜索，然后如果数据小于键值，则搜索左子树中的元素。否则，搜索右子树中的元素。对每个节点遵循相同的算法。

算法
```
If root.data is equal to search.data
   return root
else
   while data not found

      If data is greater than node.data
         goto right subtree
      else
         goto left subtree
         
      If data found
         return node
   endwhile 
   
   return data not found
   
end if      

```

实现如下

```
struct node* search(int data) {
   struct node *current = root;
   printf("Visiting elements: ");

   while(current->data != data) {
      if(current != NULL)
      printf("%d ",current->data); 
      
      //go to left tree

      if(current->data > data) {
         current = current->leftChild;
      }
      //else go to right tree
      else {                
         current = current->rightChild;
      }

      //not found
      if(current == NULL) {
         return NULL;
      }

      return current;
   }  
}

```

# C实现
遍历是一个访问树的所有节点的过程，也可以打印它们的值。因为所有节点都是通过边（链接）连接的，所以我们总是从根（头）节点开始。也就是说，我们不能随机访问树中的节点。我们使用三种方式遍历树 -

有序遍历
预订遍历
下订单遍历
我们现在将使用以下二叉树来查看C编程语言中树遍历的实现 -

![](./images/binary_search_tree.jpg)

代码如下

```
#include <stdio.h>
#include <stdlib.h>

struct node {
   int data; 
	
   struct node *leftChild;
   struct node *rightChild;
};

struct node *root = NULL;

void insert(int data) {
   struct node *tempNode = (struct node*) malloc(sizeof(struct node));
   struct node *current;
   struct node *parent;

   tempNode->data = data;
   tempNode->leftChild = NULL;
   tempNode->rightChild = NULL;

   //if tree is empty
   if(root == NULL) {
      root = tempNode;
   } else {
      current = root;
      parent = NULL;

      while(1) { 
         parent = current;
         
         //go to left of the tree
         if(data < parent->data) {
            current = current->leftChild;                
            
            //insert to the left
            if(current == NULL) {
               parent->leftChild = tempNode;
               return;
            }
         }  //go to right of the tree
         else {
            current = current->rightChild;

            //insert to the right
            if(current == NULL) {
               parent->rightChild = tempNode;
               return;
            }
         }
      }            
   }
}

struct node* search(int data) {
   struct node *current = root;
   printf("Visiting elements: ");

   while(current->data != data) {
      if(current != NULL)
         printf("%d ",current->data); 

      //go to left tree
      if(current->data > data) {
         current = current->leftChild;
      }
      //else go to right tree
      else {                
         current = current->rightChild;
      }

      //not found
      if(current == NULL) {
         return NULL;
      }
   }
   
   return current;
}

void pre_order_traversal(struct node* root) {
   if(root != NULL) {
      printf("%d ",root->data);
      pre_order_traversal(root->leftChild);
      pre_order_traversal(root->rightChild);
   }
}

void inorder_traversal(struct node* root) {
   if(root != NULL) {
      inorder_traversal(root->leftChild);
      printf("%d ",root->data);          
      inorder_traversal(root->rightChild);
   }
}

void post_order_traversal(struct node* root) {
   if(root != NULL) {
      post_order_traversal(root->leftChild);
      post_order_traversal(root->rightChild);
      printf("%d ", root->data);
   }
}

int main() {
   int i;
   int array[7] = { 27, 14, 35, 10, 19, 31, 42 };

   for(i = 0; i < 7; i++)
      insert(array[i]);

   i = 31;
   struct node * temp = search(i);

   if(temp != NULL) {
      printf("[%d] Element found.", temp->data);
      printf("\n");
   }else {
      printf("[ x ] Element not found (%d).\n", i);
   }

   i = 15;
   temp = search(i);

   if(temp != NULL) {
      printf("[%d] Element found.", temp->data);
      printf("\n");
   }else {
      printf("[ x ] Element not found (%d).\n", i);
   }            

   printf("\nPreorder traversal: ");
   pre_order_traversal(root);

   printf("\nInorder traversal: ");
   inorder_traversal(root);

   printf("\nPost order traversal: ");
   post_order_traversal(root);       

   return 0;
}

```

输出结果如下

```
Visiting elements: 27 35 [31] Element found.
Visiting elements: 27 14 19 [ x ] Element not found (15).

Preorder traversal: 27 14 10 19 35 31 42 
Inorder traversal: 10 14 19 27 31 35 42 
Post order traversal: 10 19 14 31 42 35 27

```

