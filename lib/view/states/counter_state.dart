import 'dart:convert';

class CounterState {
  int counter;
  CounterState({
    this.counter,
  });

  CounterState copyWith({
    int counter,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'counter': counter,
    };
  }

  factory CounterState.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return CounterState(
      counter: map['counter'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CounterState.fromJson(String source) =>
      CounterState.fromMap(json.decode(source));

  @override
  String toString() => 'CounterState(counter: $counter)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is CounterState && o.counter == counter;
  }

  @override
  int get hashCode => counter.hashCode;
}
