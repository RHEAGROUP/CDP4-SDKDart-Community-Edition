/// Copyright (c) 2015-2020 RHEA System S.A.
///
/// Author: Sam Gerené
///
/// This file is part of CDP4-SDKDart Community Edition
///
/// The CDP4-SDKDart Community Edition is free software; you can redistribute it and/or
/// modify it under the terms of the GNU Lesser General Public
/// License as published by the Free Software Foundation; either
/// version 3 of the License, or (at your option) any later version.
///
/// The CDP4-SDKDart Community Edition is distributed in the hope that it will be useful,
/// but WITHOUT ANY WARRANTY; without even the implied warranty of
/// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
/// Lesser General Public License for more details.
///
/// You should have received a copy of the GNU Lesser General Public License
/// along with this program; if not, write to the Free Software Foundation,
/// Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

library cdp4common_types;

import 'dart:collection';
import 'package:cdp4common/src/exceptions/invalidoperationexception.dart';
import 'package:cdp4common/src/podo/thing.dart';

/// List Type used for the 10-25 model for classes which are part of a composition relationship
class ContainerList<T extends Thing> extends ListBase<T> {
  List _innerList = new List();
  T _container;

  ContainerList(T container) {
    this._container = container;
  }

  void set length(int newLength) {
    this._innerList.length = newLength;
  }

  int get length => this._innerList.length;

  T operator [](int index) => this._innerList[index];

  void operator []=(int index, T value) {
    this._innerList[index] = value;
  }

  /// Adds a [Thing] to the [ContainerList] and sets its [Thing.Container] property
  /// @param t The [Thing] that is to be added
  /// @throws [InvalidOperationException] when the [Thing] is already in the [ContainerList]
  void Add(T t) {
    var thing = t;

    if (this._innerList.contains(thing)) {
      throw new InvalidOperationException(
          "The added item already exists ${thing.Id}");
    }

    thing.Container = this._container;
    this._innerList.add(thing);
  }

  /// Adds all [Thing]s to the [ContainerList] and sets its [Thing.Container] property
  /// @param all The [Thing]s that are to be added
  /// @throws [InvalidOperationException] when a [Thing] is already in the [ContainerList]
  void addAll(Iterable<Thing> all) {
    all.forEach((thing) => this.add(thing));
  }
}
