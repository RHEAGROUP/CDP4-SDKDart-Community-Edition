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

library cdp4common_podo.shortnamedthing;

mixin ShortNamedThing {
  String _shortName;

  /// Gets the short human readable character string in English that preserves the essential aspects of the name by which something can be referred to
  /// Note 1: The implied LanguageCode of shortName is "en-GB".
  /// Note 2: The shortName is meant to be used to refer to something where little space is available, for example to name a domain of expertise, a parameter or a measurement scale or unit in the column header of a table or in a formula.
  /// Note 3: A shortName may be an acronym or an abbreviated term.
  /// Note 4: A shortName should not contain any whitespace. Additional constraints are defined for some specializations of ShortNamedThing in order to ensure that the shortName can be used as a variable name in a programming or modelling language.
  String get ShortName {
    return this._shortName;
  }

  /// Sets the short human readable character string in English that preserves the essential aspects of the name by which something can be referred to
  /// Note 1: The implied LanguageCode of shortName is "en-GB".
  /// Note 2: The shortName is meant to be used to refer to something where little space is available, for example to name a domain of expertise, a parameter or a measurement scale or unit in the column header of a table or in a formula.
  /// Note 3: A shortName may be an acronym or an abbreviated term.
  /// Note 4: A shortName should not contain any whitespace. Additional constraints are defined for some specializations of ShortNamedThing in order to ensure that the shortName can be used as a variable name in a programming or modelling language.
  void set ShortName(String shortName) {
    this._shortName = shortName;
  }
}
