class Node<T> {
  Node(this.value);

  Node.before(this.next, this.value);

  Node<T>? next;
  T value;
}

class LinkedListIterator<T> extends Iterator<T> {
  LinkedListIterator(this._current);

  Node<T>? _current;

  @override
  bool moveNext() => _current != null;

  @override
  T get current {
    var currentValue = _current?.value as T;

    _current = _current?.next;

    return currentValue;
  }
}

class LinkedList<T> extends Iterable<T> {
  int _length = 0;

  @override
  int get length => _length;

  Node<T>? _head;

  @override
  Iterator<T> get iterator => LinkedListIterator<T>(_head);

  void remove(T item) {
    if (_head?.value == item) {
      _head = _head?.next;
      _length--;
    }

    if (_head != null) {
      var current = _head;
      while (current?.next != null) {
        if (current?.next?.value == item) {
          current?.next = current.next?.next;
          _length--;
        }

        current = current?.next;
      }
    }
  }

  T? pop() {
    if (_head != null) {
      var value = _head?.value;
      _head = _head?.next;
      _length--;

      return value;
    }

    return null;
  }

  void push(T item) {
    _head = Node.before(_head, item);
    _length++;
  }

  void add(T item) {
    if (_head == null) {
      _head = Node(item);
    } else {
      var current = _head;
      while (current?.next != null) {
        current = current?.next;
      }

      current?.next = Node(item);
    }
    _length++;
  }
}
