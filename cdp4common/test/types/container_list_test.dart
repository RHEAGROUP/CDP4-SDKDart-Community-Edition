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

library cdp4common_types.test.container_list_test;

import 'package:test/test.dart';
import 'package:cdp4common/src/podo/glossary.dart';
import 'package:cdp4common/src/podo/term.dart';
import 'package:cdp4common/src/exceptions/invalidoperationexception.dart';

void main() {
  test(
      "Assert that the terms of a glossary can be added and that the container is set",
      () {
    var glossary = new Glossary();
    var term = new Term();

    glossary.Term.Add(term);

    expect(glossary.Term.contains(term), isTrue);
    expect(term.Container, glossary);
  });

  test("Asser that a Term cannot be added more than once", () {
    var glossary = new Glossary();
    var term = new Term();

    glossary.Term.Add(term);

    bool foundError = false;
    try {
      glossary.Term.Add(term);
    } on InvalidOperationException catch (e) {
      foundError = true;
    }
    expect(foundError, isTrue);
  });
}
