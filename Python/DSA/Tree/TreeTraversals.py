class TreeNode:
    def __init__(self, data):
        self._data=data
        self._left=None
        self._right=None

    def preorder_traversal(self,root):
        if not root:
            return
        print(root._data)
        self.preorder_traversal(root._left)
        self.preorder_traversal(root._right)

    def inorder_traversal(self,root):
        if not root:
            return
        self.inorder_traversal(root._left)
        print(root._data)
        self.inorder_traversal(root._right)

    def postorder_traversal(self,root):
        if not root:
            return
        self.postorder_traversal(root._left)
        self.postorder_traversal(root._right)
        print(root._data)


root=TreeNode(5)
left=TreeNode(4)
right=TreeNode(7)
root._left=left
root._right=right

root.inorder_traversal(root)