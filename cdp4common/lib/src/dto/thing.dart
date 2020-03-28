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

library cdp4common_dto.thing;

/// top level abstract superclass from which all domain concept classes in the model inherit
abstract class Thing {
  String _id;
  int _revision;

  /// Gets the Universally Unique Identifier (UUID) that uniquely identifies an instance of Thing
  String get Id {
    return this._id;
  }

  /// Sets the Universally Unique Identifier (UUID) that uniquely identifies an instance of Thing
  void set Id(String id) {
    this._id = id;
  }

  /// Gets the revision number of this Thing
  int get Revision {
    return this._revision;
  }

  /// Sets the revision number of this Thing
  void set Revision(int revision) {
    this._revision = revision;
  }
}
