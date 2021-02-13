import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:socfr/main.dart';

PublishSubject eventBus = PublishSubject();

abstract class Handler {
  CompositeSubscription _compositeSubscription = CompositeSubscription();

  Handler conntect() {
    eventBus.listen((value) {
      handle(value);
    }).addTo(_compositeSubscription);
    connected();
    return this;
  }

  @protected
  void connected() {}

  @protected
  void handle(dynamic value);

  Handler disconnect() {
    _compositeSubscription.clear();
    return this;
  }
}
