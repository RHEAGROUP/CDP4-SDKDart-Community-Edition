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

library cdp4common_dto.alias;

import 'annotation.dart';
import 'thing.dart';

/// representation of an alternative human-readable name for a concept
/// Note: An alias may be a translation of the name of the referring DefinedThing in a given natural language or a synonym in any natural language. The alias name is stored in the content property.
class Alias extends Thing with Annotation {
  bool _isSynonym;

  /// Gets the assertion whether content of this Alias is a synonym for the referring DefinedThing
  bool get IsSynonym {
    return this._isSynonym;
  }

  /// Sets the assertion whether content of this Alias is a synonym for the referring DefinedThing
  void set IsSynonym(bool isSynonym) {
    this._isSynonym = isSynonym;
  }
}
