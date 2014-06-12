=begin
To satisfy. A good node must satisfy one of these qualifications
- It's node #1
- It's pointing to node #1
- It's point to a good node

The first line is a integer N telling how many nodes there are.
The next lines are the Nodes with integer N telling which nodes they are pointed to.
Output the minimum number of changes of nodes to make them all good nodes.

Output:
Print an integer which is the answer to the problem
Sample Input 1:
5
1
2
3
4
5
Sample output 1:
4

Explanation:
We have to change pointers for four nodes (node #2 to node #5) to point to node #1. Thus 4 changes are required
Sample input 2:
5
5
5
5
5
5
Sample output 2:
1
Explanation:
We have to just change node #5 to point to node #1 (tail node) which will make node #5 good. Since all the other nodes point to a good node (node #5), every node becomes a good node.


=end

nodes_hash = {}
count = 0

$stdin.each_with_index do |line, index|
   nodes_hash[index] = line.to_i
end

for i in (2...nodes_hash[0])
  if nodes_hash[i] == 1 || nodes_hash[nodes_hash[i]] == 1
    next



end





