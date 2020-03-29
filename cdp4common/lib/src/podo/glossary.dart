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

library cdp4common_podo.glossary;

import 'package:cdp4common/src/podo/shortnamedthing.dart';
import 'package:cdp4common/src/podo/thing.dart';
import 'package:cdp4common/src/types/container_list.dart';

class Glossary extends Thing with ShortNamedThing {
  ContainerList _term;

  /// Initializes a new instance of the [Glossary] class.
  Glossary() : super() {
    this._term = new ContainerList(this);
  }

  /// Initializes a new instance of the [Glossary] class.
  /// @param id the Universally Unique Identifier (UUID) that uniquely identifies an instance of [Glossary]
  /// @param revision the revision number of this [Glossary]
  Glossary.Identified(String iid, int revision)
      : super.Identified(iid, revision) {
    this._term = new ContainerList(this);
  }

  /// Gets the collection of [Term]s in this [Glossary]
  ContainerList get term {
    return this._term;
  }
}
