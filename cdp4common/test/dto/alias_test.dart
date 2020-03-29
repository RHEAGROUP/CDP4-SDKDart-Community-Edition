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

library cdp4common_dto.test.alias_test;

import 'package:test/test.dart';
import 'package:cdp4common/src/dto/alias.dart';

void main() {
  test("assert that alias inherits from Thing", () {
    var alias = new Alias();
    alias.iid = "797ff043-11eb-11e1-80d6-510998755d10";

    expect(alias.iid, "797ff043-11eb-11e1-80d6-510998755d10");

    alias.content = "this is some content";

    expect(alias.content, "this is some content");
  });

  test(
      "Assert that an excption is thrown when the unique identifier is not a UUID",
      () {
    var id = "1234";

    var alias = Alias.Identified(id, 1);

    expect(alias.iid, "12340000-0000-0000-0000-000000000000");
  });
}
