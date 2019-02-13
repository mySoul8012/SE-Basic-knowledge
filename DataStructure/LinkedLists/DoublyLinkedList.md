# 概述
双向链接列表是链接列表的变体，其中与单链接列表相比，可以以两种方式轻松地向前和向后导航。以下是理解双向链表概念的重要术语。

链接 - 链接列表的每个链接都可以存储称为元素的数据。

Next - 链接列表的每个链接都包含指向下一个名为Next的链接的链接。

上一页 - 链表的每个链接都包含一个名为Prev的上一个链接的链接。

LinkedList - 链接列表包含指向First的第一个链接和名为Last的最后一个链接的连接链接。

# 图表示
![](./images/doubly_linked_list.jpg)

根据以上说明，以下是要考虑的重点。

双向链表包含一个名为first和last的链接元素。

每个链路都带有一个数据字段和两个名为next和prev的链接字段。

每个链接使用其下一个链接与其下一个链接链接。

每个链接使用其先前的链接与其先前的链接链接。

最后一个链接带有一个null链接以标记列表的结尾。

# 基本操作
以下是列表支持的基本操作。

插入 - 在列表的开头添加元素。

删除 - 删除列表开头的元素。

Insert Last - 在列表末尾添加元素。

最后删除 - 从列表末尾删除元素。

Insert After - 在列表项之后添加元素。

删除 - 使用键从列表中删除元素。

显示转发 - 以转发方式显示完整列表。

向后显示 - 以向后方式显示完整列表。

# 插入操作
下面的代码演示了双向链表开头的插入操作。

```
//insert link at the first location
void insertFirst(int key, int data) {

   //create a link
   struct node *link = (struct node*) malloc(sizeof(struct node));
   link->key = key;
   link->data = data;
	
   if(isEmpty()) {
      //make it the last link
      last = link;
   } else {
      //update first prev link
      head->prev = link;
   }

   //point it to old first link
   link->next = head;
	
   //point first to new first link
   head = link;
}

```

# 删除操作
下面的代码演示了双向链表开头的删除操作。

```
//delete first item
struct node* deleteFirst() {

   //save reference to first link
   struct node *tempLink = head;
	
   //if only one link
   if(head->next == NULL) {
      last = NULL;
   } else {
      head->next->prev = NULL;
   }
	
   head = head->next;
	
   //return the deleted link
   return tempLink;
}

```

# 在操作结束时插入
下面的代码演示了双向链表的最后位置的插入操作。

```
//insert link at the last location
void insertLast(int key, int data) {

   //create a link
   struct node *link = (struct node*) malloc(sizeof(struct node));
   link->key = key;
   link->data = data;
	
   if(isEmpty()) {
      //make it the last link
      last = link;
   } else {
      //make link a new last link
      last->next = link;     
      
      //mark old last node as prev of new link
      link->prev = last;
   }

   //point last to new last node
   last = link;
}

```