/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param {ListNode[]} lists
 * @return {ListNode}
 */
var mergeKLists = function(lists) {
  if (lists.length === 0) return null;
  
  let merged = [];
  
  for (let i = 0; i < lists.length; i += 1) {
    let head = lists[i];
    
    while (head !== null) {
      merged.push(head.val);
      head = head.next;
    }
  }
  
  if (merged.length === 0) return null;
  merged.sort((a, b) => a - b);

  const head = new ListNode(merged[0], null);
  let pointer = head;
  
  for (let i = 1; i < merged.length; i += 1) {
    const newNode = new ListNode(merged[i], null);
    pointer.next = newNode;
    pointer = pointer.next;
  }
  
  return head;
};