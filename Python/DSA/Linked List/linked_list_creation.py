class Node:
    def __init__(self, data=0, next=None):
        self._data = data
        self._next = next

class LinkedList:
    def __init__(self, data):
        new_node = Node(data)
        self.head = new_node
        self.tail = new_node
        self.length = 1

    def __str__(self):
        temp_node=self.head
        result=''
        while temp_node is not None:
            result+=str(temp_node._data)
            if temp_node._next is not None:
                result+=' -> '
            temp_node=temp_node._next
        return result

    def insert_at_end(self, data):
        new_node=Node(data)
        if self.head is None:
            self.head=new_node
            self.tail=new_node
        else:
            self.tail._next=new_node
            self.tail=new_node
        self.length+=1

    def insert_at_begin(self, data):
        new_node=Node(data)
        if self.head is None:
            self.head=new_node
            self.tail=new_node
        else:
            new_node._next=self.head
            self.head=new_node
        self.length+=1



l=LinkedList(1)
l.insert_at_end(2)
l.insert_at_end(3)
l.insert_at_begin(7)
l.insert_at_end(4)
l.insert_at_begin(6)
print(f"Length of Single Linked List: {l.length}")
print(l)
# print(head.)
# print(head._data)

# head = Node(10)
# head._next = Node(20)
# head._next._next = Node(30)
# head._next._next._next=Node(40)
# while l.head:
#     print(l.head._data)
#     l.head=l.head._next
