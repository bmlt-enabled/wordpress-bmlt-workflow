// Copyright (C) 2022 nigel.bmlt@gmail.com
// 
// This file is part of bmlt-workflow.
// 
// bmlt-workflow is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// bmlt-workflow is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with bmlt-workflow.  If not, see <http://www.gnu.org/licenses/>.

import { as } from "./models/admin_submissions";

import {
  configure_service_bodies, 
  insert_submissions, 
  delete_submissions,
  reset_bmlt, 
  bmltwf_submission_reviewer,
  bmltwf_submission_nopriv
 } from "./helpers/helper.js";

import { userVariables } from "../../.testcaferc";

fixture`admin_submissions_fixture`.beforeEach(async (t) => {
  await reset_bmlt(t);
  await delete_submissions(t);
  await configure_service_bodies(t);
  await insert_submissions(t);
});

test("Can_View_As_Non_Admin", async (t) => {
  
  await t.useRole(bmltwf_submission_reviewer).navigateTo(userVariables.admin_submissions_page)
  .debug()
  .expect(as.reject_dialog_parent.visible).eql(true);

});

test("Cant_View_As_Non_User", async (t) => {

  await t.useRole(bmltwf_submission_nopriv).navigateTo(userVariables.admin_submissions_page)
  .expect(as.reject_dialog_parent.visible).eql(true);

});