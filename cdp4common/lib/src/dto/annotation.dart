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

library cdp4common_dto.annotation;

// abstract supertype that represents information expressed in human-readable natural language
// Note: Multiple alternative annotations may be given in different natural languages.
mixin Annotation {
  String _content;
  String _languageCode;

  /// Gets the textual content of the annotation expressed in the natural language as specified in languageCode
  String get Content {
    return this._content;
  }

  /// Sets the textual content of the annotation expressed in the natural language as specified in languageCode
  void set Content(String content) {
    this._content = content;
  }

  /// Gets the code that defines the natural language in which the annotation is written
  String get LanguageCode {
    return this._languageCode;
  }

  /// Sets the code that defines the natural language in which the annotation is written
  void set LanguageCode(String languageCode) {
    this._languageCode = languageCode;
  }
}
