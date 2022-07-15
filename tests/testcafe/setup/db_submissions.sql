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

delete from wp_wbw_submissions;
INSERT INTO `wp_wbw_submissions` VALUES (93,'2022-05-15 12:32:38','0000-00-00 00:00:00',NULL,NULL,'first last','reason_new','test@test.com.zz',0,2,'{\"meeting_name\":\"my test meeting\",\"start_time\":\"10:40:00\",\"duration_time\":\"04:30:00\",\"location_text\":\"my location\",\"location_street\":\"110 Avoca Street\",\"location_info\":\"info\",\"location_municipality\":\"Randwick\",\"location_province\":\"NSW\",\"location_postal_code_1\":2031,\"weekday_tinyint\":\"2\",\"service_body_bigint\":2,\"format_shared_id_list\":\"1,2,56\",\"contact_number_confidential\":\"12345\",\"group_relationship\":\"Group Member\",\"add_email\":\"yes\",\"additional_info\":\"my additional info\",\"virtual_meeting_additional_info\":\"Zoom ID 83037287669 Passcode: testing\",\"phone_meeting_number\":\"+61 1800 253430 code #8303782669\",\"virtual_meeting_link\":\"https:\\/\\/us02web.zoom.us\\/j\\/83037287669?pwd=OWRRQU52ZC91TUpEUUExUU40eTh2dz09\"}',NULL),(94,'2022-05-15 12:33:09','0000-00-00 00:00:00',NULL,NULL,'first last','reason_change','test@test.com.zz',2,2,'{\"meeting_name\":\"virtualmeeting randwickupdate\",\"contact_number_confidential\":\"12345\",\"group_relationship\":\"Group Member\",\"add_email\":\"yes\",\"additional_info\":\"my additional info\",\"original_meeting_name\":\"virtualmeeting randwick\",\"original_weekday_tinyint\":\"2\",\"original_start_time\":\"20:30:00\"}',NULL),(95,'2022-05-15 12:34:04','0000-00-00 00:00:00',NULL,NULL,'first last','reason_close','test@test.com.zz',2,2,'{\"contact_number_confidential\":\"12345\",\"group_relationship\":\"Group Member\",\"add_email\":\"yes\",\"service_body_bigint\":2,\"additional_info\":\"my additional info\",\"meeting_name\":\"virtualmeeting randwick\",\"weekday_tinyint\":\"2\",\"start_time\":\"20:30:00\"}',NULL);
