-- SPDX-FileCopyrightText: 2025 NOI Techpark <digital@noi.bz.it>
--
-- SPDX-License-Identifier: CC0-1.0

--
-- PostgreSQL database dump
--

\restrict JrBbA5g0gFJZWvt1g1xIefJNd78ZKunpgkI5eZc321s6sdG3ZKCcBXb37ie7UC6

-- Dumped from database version 16.10 (Debian 16.10-1.pgdg13+1)
-- Dumped by pg_dump version 16.10 (Debian 16.10-1.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.site_announcement DROP CONSTRAINT IF EXISTS site_announcement_author_id_136858c5_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.mesh_otaupdaterecipient DROP CONSTRAINT IF EXISTS mesh_otaupdaterecipient_update_id_95637e8a_fk_mesh_otaupdate_id;
ALTER TABLE IF EXISTS ONLY public.mesh_otaupdaterecipient DROP CONSTRAINT IF EXISTS mesh_otaupdaterecipi_node_id_0fd5e307_fk_mesh_mesh;
ALTER TABLE IF EXISTS ONLY public.mesh_otaupdate DROP CONSTRAINT IF EXISTS mesh_otaupdate_build_id_af114c77_fk_mesh_firmwarebuild_id;
ALTER TABLE IF EXISTS ONLY public.mesh_nodemessage DROP CONSTRAINT IF EXISTS mesh_nodemessage_uplink_id_22f38887_fk_mesh_meshuplink_id;
ALTER TABLE IF EXISTS ONLY public.mesh_nodemessage DROP CONSTRAINT IF EXISTS mesh_nodemessage_src_node_id_2754ac40_fk_mesh_meshnode_address;
ALTER TABLE IF EXISTS ONLY public.mesh_meshuplink DROP CONSTRAINT IF EXISTS mesh_meshuplink_node_id_e0c94b45_fk_mesh_meshnode_address;
ALTER TABLE IF EXISTS ONLY public.mesh_meshnode DROP CONSTRAINT IF EXISTS mesh_meshnode_upstream_id_c946622a_fk_mesh_meshnode_address;
ALTER TABLE IF EXISTS ONLY public.mesh_meshnode DROP CONSTRAINT IF EXISTS mesh_meshnode_uplink_id_cf6b04db_fk_mesh_meshuplink_id;
ALTER TABLE IF EXISTS ONLY public.mesh_firmwareversion DROP CONSTRAINT IF EXISTS mesh_firmwareversion_uploader_id_30c14fe3_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.mesh_firmwarebuildboard DROP CONSTRAINT IF EXISTS mesh_firmwarebuildbo_build_id_902517a9_fk_mesh_firm;
ALTER TABLE IF EXISTS ONLY public.mesh_firmwarebuild DROP CONSTRAINT IF EXISTS mesh_firmwarebuild_version_id_93e4b318_fk_mesh_firm;
ALTER TABLE IF EXISTS ONLY public.mapdata_beaconmeasurement DROP CONSTRAINT IF EXISTS mapdata_wifimeasurement_author_id_e4b5352e_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.mapdata_beaconmeasurement DROP CONSTRAINT IF EXISTS mapdata_wifimeasurem_space_id_1d127e47_fk_mapdata_s;
ALTER TABLE IF EXISTS ONLY public.mapdata_themeobstaclegroupbackgroundcolor DROP CONSTRAINT IF EXISTS mapdata_themeobstacl_theme_id_629c5bc7_fk_mapdata_t;
ALTER TABLE IF EXISTS ONLY public.mapdata_themeobstaclegroupbackgroundcolor DROP CONSTRAINT IF EXISTS mapdata_themeobstacl_obstacle_group_id_6a51b028_fk_mapdata_o;
ALTER TABLE IF EXISTS ONLY public.mapdata_themelocationgroupbackgroundcolor DROP CONSTRAINT IF EXISTS mapdata_themelocatio_theme_id_9baff4da_fk_mapdata_t;
ALTER TABLE IF EXISTS ONLY public.mapdata_themelocationgroupbackgroundcolor DROP CONSTRAINT IF EXISTS mapdata_themelocatio_location_group_id_2b664e23_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_stair DROP CONSTRAINT IF EXISTS mapdata_stair_space_id_6dd3ccb0_fk_mapdata_s;
ALTER TABLE IF EXISTS ONLY public.mapdata_space DROP CONSTRAINT IF EXISTS mapdata_space_locationslug_ptr_id_228ac56f_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_space DROP CONSTRAINT IF EXISTS mapdata_space_load_group_display_i_5f9c18bf_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_space DROP CONSTRAINT IF EXISTS mapdata_space_load_group_contribut_70aed049_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_space DROP CONSTRAINT IF EXISTS mapdata_space_level_id_b635bbeb_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_space DROP CONSTRAINT IF EXISTS mapdata_space_label_settings_id_b26b4945_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_space_groups DROP CONSTRAINT IF EXISTS mapdata_space_groups_space_id_d9bb3827_fk_mapdata_s;
ALTER TABLE IF EXISTS ONLY public.mapdata_space_groups DROP CONSTRAINT IF EXISTS mapdata_space_groups_locationgroup_id_352f0e89_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_space DROP CONSTRAINT IF EXISTS mapdata_space_access_restriction_i_c295dd70_fk_mapdata_a;
ALTER TABLE IF EXISTS ONLY public.mapdata_source DROP CONSTRAINT IF EXISTS mapdata_source_access_restriction_i_10e0a307_fk_mapdata_a;
ALTER TABLE IF EXISTS ONLY public.mapdata_reportupdate DROP CONSTRAINT IF EXISTS mapdata_reportupdate_report_id_ac2b4e37_fk_mapdata_report_id;
ALTER TABLE IF EXISTS ONLY public.mapdata_reportupdate DROP CONSTRAINT IF EXISTS mapdata_reportupdate_author_id_b0e6e04b_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.mapdata_reportupdate DROP CONSTRAINT IF EXISTS mapdata_reportupdate_assigned_to_id_7af867b4_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.mapdata_report DROP CONSTRAINT IF EXISTS mapdata_report_location_id_a1b9eef3_fk_mapdata_locationslug_id;
ALTER TABLE IF EXISTS ONLY public.mapdata_report_created_groups DROP CONSTRAINT IF EXISTS mapdata_report_creat_report_id_e8da1176_fk_mapdata_r;
ALTER TABLE IF EXISTS ONLY public.mapdata_report_created_groups DROP CONSTRAINT IF EXISTS mapdata_report_creat_locationgroup_id_07a66aea_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_report DROP CONSTRAINT IF EXISTS mapdata_report_author_id_1dd5fc14_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.mapdata_report DROP CONSTRAINT IF EXISTS mapdata_report_assigned_to_id_fd3a8aab_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.mapdata_rangingbeacon DROP CONSTRAINT IF EXISTS mapdata_rangingbeaco_space_id_2c6b1efe_fk_mapdata_s;
ALTER TABLE IF EXISTS ONLY public.mapdata_ramp DROP CONSTRAINT IF EXISTS mapdata_ramp_space_id_e6f57e61_fk_mapdata_s;
ALTER TABLE IF EXISTS ONLY public.mapdata_position DROP CONSTRAINT IF EXISTS mapdata_position_owner_id_8ad6b67c_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.mapdata_poi DROP CONSTRAINT IF EXISTS mapdata_poi_space_id_dcb9f571_fk_mapdata_s;
ALTER TABLE IF EXISTS ONLY public.mapdata_poi DROP CONSTRAINT IF EXISTS mapdata_poi_locationslug_ptr_id_22498ca8_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_poi DROP CONSTRAINT IF EXISTS mapdata_poi_load_group_display_i_9952b636_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_poi DROP CONSTRAINT IF EXISTS mapdata_poi_label_settings_id_18a6c1cf_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_poi_groups DROP CONSTRAINT IF EXISTS mapdata_poi_groups_poi_id_a7128a8c_fk_mapdata_p;
ALTER TABLE IF EXISTS ONLY public.mapdata_poi_groups DROP CONSTRAINT IF EXISTS mapdata_poi_groups_locationgroup_id_46758a1e_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_poi DROP CONSTRAINT IF EXISTS mapdata_poi_access_restriction_i_a6d0faf9_fk_mapdata_a;
ALTER TABLE IF EXISTS ONLY public.mapdata_obstacle DROP CONSTRAINT IF EXISTS mapdata_obstacle_space_id_0aa1260c_fk_mapdata_s;
ALTER TABLE IF EXISTS ONLY public.mapdata_obstacle DROP CONSTRAINT IF EXISTS mapdata_obstacle_group_id_a59d9b9b_fk_mapdata_obstaclegroup_id;
ALTER TABLE IF EXISTS ONLY public.mapdata_locationredirect DROP CONSTRAINT IF EXISTS mapdata_locationredi_target_id_29d1b3d7_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_locationredirect DROP CONSTRAINT IF EXISTS mapdata_locationredi_locationslug_ptr_id_81cda0c9_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_locationgroup DROP CONSTRAINT IF EXISTS mapdata_locationgrou_locationslug_ptr_id_5f0e4ebb_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_locationgroup DROP CONSTRAINT IF EXISTS mapdata_locationgrou_load_group_contribut_6858d49a_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_locationgroup DROP CONSTRAINT IF EXISTS mapdata_locationgrou_label_settings_id_bc60e3cf_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_locationgroup DROP CONSTRAINT IF EXISTS mapdata_locationgrou_category_id_96775229_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_locationgroup DROP CONSTRAINT IF EXISTS mapdata_locationgrou_access_restriction_i_0f7d4828_fk_mapdata_a;
ALTER TABLE IF EXISTS ONLY public.mapdata_lineobstacle DROP CONSTRAINT IF EXISTS mapdata_lineobstacle_space_id_b9ab6bf6_fk_mapdata_s;
ALTER TABLE IF EXISTS ONLY public.mapdata_lineobstacle DROP CONSTRAINT IF EXISTS mapdata_lineobstacle_group_id_62d35458_fk_mapdata_o;
ALTER TABLE IF EXISTS ONLY public.mapdata_level DROP CONSTRAINT IF EXISTS mapdata_level_on_top_of_id_10a0cb32_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_level DROP CONSTRAINT IF EXISTS mapdata_level_locationslug_ptr_id_ba5858ed_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_level DROP CONSTRAINT IF EXISTS mapdata_level_load_group_display_i_8b4f7400_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_level DROP CONSTRAINT IF EXISTS mapdata_level_label_settings_id_6617bb7b_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_level_groups DROP CONSTRAINT IF EXISTS mapdata_level_groups_locationgroup_id_b712e10d_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_level_groups DROP CONSTRAINT IF EXISTS mapdata_level_groups_level_id_e60fa7db_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_level DROP CONSTRAINT IF EXISTS mapdata_level_access_restriction_i_22d67a77_fk_mapdata_a;
ALTER TABLE IF EXISTS ONLY public.mapdata_leavedescription DROP CONSTRAINT IF EXISTS mapdata_leavedescrip_target_space_id_31053028_fk_mapdata_s;
ALTER TABLE IF EXISTS ONLY public.mapdata_leavedescription DROP CONSTRAINT IF EXISTS mapdata_leavedescrip_space_id_33695534_fk_mapdata_s;
ALTER TABLE IF EXISTS ONLY public.mapdata_hole DROP CONSTRAINT IF EXISTS mapdata_hole_space_id_20336b94_fk_mapdata_s;
ALTER TABLE IF EXISTS ONLY public.mapdata_graphnode DROP CONSTRAINT IF EXISTS mapdata_graphnode_space_id_6c55bd00_fk_mapdata_s;
ALTER TABLE IF EXISTS ONLY public.mapdata_graphedge DROP CONSTRAINT IF EXISTS mapdata_graphedge_waytype_id_2f0d449d_fk_mapdata_waytype_id;
ALTER TABLE IF EXISTS ONLY public.mapdata_graphedge DROP CONSTRAINT IF EXISTS mapdata_graphedge_to_node_id_ba97ebb9_fk_mapdata_graphnode_id;
ALTER TABLE IF EXISTS ONLY public.mapdata_graphedge DROP CONSTRAINT IF EXISTS mapdata_graphedge_from_node_id_98a76645_fk_mapdata_graphnode_id;
ALTER TABLE IF EXISTS ONLY public.mapdata_graphedge DROP CONSTRAINT IF EXISTS mapdata_graphedge_access_restriction_i_cccddf9b_fk_mapdata_a;
ALTER TABLE IF EXISTS ONLY public.mapdata_dynamiclocation DROP CONSTRAINT IF EXISTS mapdata_dynamiclocat_locationslug_ptr_id_d18ebf9f_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_dynamiclocation_groups DROP CONSTRAINT IF EXISTS mapdata_dynamiclocat_locationgroup_id_3212157f_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_dynamiclocation DROP CONSTRAINT IF EXISTS mapdata_dynamiclocat_load_group_display_i_7d753628_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_dynamiclocation DROP CONSTRAINT IF EXISTS mapdata_dynamiclocat_label_settings_id_3ae9d026_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_dynamiclocation_groups DROP CONSTRAINT IF EXISTS mapdata_dynamiclocat_dynamiclocation_id_e7af76aa_fk_mapdata_d;
ALTER TABLE IF EXISTS ONLY public.mapdata_dynamiclocation DROP CONSTRAINT IF EXISTS mapdata_dynamiclocat_access_restriction_i_aadb0fd6_fk_mapdata_a;
ALTER TABLE IF EXISTS ONLY public.mapdata_door DROP CONSTRAINT IF EXISTS mapdata_door_level_id_f6d894b2_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_door DROP CONSTRAINT IF EXISTS mapdata_door_access_restriction_i_2bfd4081_fk_mapdata_a;
ALTER TABLE IF EXISTS ONLY public.mapdata_dataoverlayfeature DROP CONSTRAINT IF EXISTS mapdata_dataoverlayf_overlay_id_2390a1ec_fk_mapdata_d;
ALTER TABLE IF EXISTS ONLY public.mapdata_dataoverlayfeature DROP CONSTRAINT IF EXISTS mapdata_dataoverlayf_level_id_139e601b_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_dataoverlay DROP CONSTRAINT IF EXISTS mapdata_dataoverlay_edit_access_restrict_3ff41113_fk_mapdata_a;
ALTER TABLE IF EXISTS ONLY public.mapdata_dataoverlay DROP CONSTRAINT IF EXISTS mapdata_dataoverlay_access_restriction_i_0b2e0b0d_fk_mapdata_a;
ALTER TABLE IF EXISTS ONLY public.mapdata_crossdescription DROP CONSTRAINT IF EXISTS mapdata_crossdescrip_target_space_id_8f82991b_fk_mapdata_s;
ALTER TABLE IF EXISTS ONLY public.mapdata_crossdescription DROP CONSTRAINT IF EXISTS mapdata_crossdescrip_space_id_5b117c2d_fk_mapdata_s;
ALTER TABLE IF EXISTS ONLY public.mapdata_crossdescription DROP CONSTRAINT IF EXISTS mapdata_crossdescrip_origin_space_id_88f8ef46_fk_mapdata_s;
ALTER TABLE IF EXISTS ONLY public.mapdata_column DROP CONSTRAINT IF EXISTS mapdata_column_space_id_4f64c0d4_fk_mapdata_s;
ALTER TABLE IF EXISTS ONLY public.mapdata_column DROP CONSTRAINT IF EXISTS mapdata_column_access_restriction_i_e09dd08f_fk_mapdata_a;
ALTER TABLE IF EXISTS ONLY public.mapdata_cloneditemsync DROP CONSTRAINT IF EXISTS mapdata_cloneditemsy_original_content_typ_279e190b_fk_django_co;
ALTER TABLE IF EXISTS ONLY public.mapdata_cloneditemsync DROP CONSTRAINT IF EXISTS mapdata_cloneditemsy_cloned_content_type__fd104fc2_fk_django_co;
ALTER TABLE IF EXISTS ONLY public.mapdata_building DROP CONSTRAINT IF EXISTS mapdata_building_level_id_0e322f7a_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_area DROP CONSTRAINT IF EXISTS mapdata_area_space_id_c0461a4c_fk_mapdata_s;
ALTER TABLE IF EXISTS ONLY public.mapdata_area DROP CONSTRAINT IF EXISTS mapdata_area_locationslug_ptr_id_41901eb8_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_area DROP CONSTRAINT IF EXISTS mapdata_area_load_group_display_i_28bec361_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_area DROP CONSTRAINT IF EXISTS mapdata_area_load_group_contribut_255b59ff_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_area DROP CONSTRAINT IF EXISTS mapdata_area_label_settings_id_7ccf6168_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_area_groups DROP CONSTRAINT IF EXISTS mapdata_area_groups_locationgroup_id_8cc32166_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_area_groups DROP CONSTRAINT IF EXISTS mapdata_area_groups_area_id_68ea7b48_fk_mapdata_a;
ALTER TABLE IF EXISTS ONLY public.mapdata_area DROP CONSTRAINT IF EXISTS mapdata_area_access_restriction_i_a549eda1_fk_mapdata_a;
ALTER TABLE IF EXISTS ONLY public.mapdata_altitudemarker DROP CONSTRAINT IF EXISTS mapdata_altitudemark_space_id_cea7cf47_fk_mapdata_s;
ALTER TABLE IF EXISTS ONLY public.mapdata_altitudemarker DROP CONSTRAINT IF EXISTS mapdata_altitudemark_groundaltitude_id_13c52aa1_fk_mapdata_g;
ALTER TABLE IF EXISTS ONLY public.mapdata_altitudearea DROP CONSTRAINT IF EXISTS mapdata_altitudearea_level_id_b1320e34_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.mapdata_accessrestrictiongroup_members DROP CONSTRAINT IF EXISTS mapdata_accessrestri_accessrestrictiongro_85775731_fk_mapdata_a;
ALTER TABLE IF EXISTS ONLY public.mapdata_accessrestrictiongroup_members DROP CONSTRAINT IF EXISTS mapdata_accessrestri_accessrestriction_id_dcf7959b_fk_mapdata_a;
ALTER TABLE IF EXISTS ONLY public.mapdata_accesspermission DROP CONSTRAINT IF EXISTS mapdata_accesspermission_user_id_0160fe04_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.mapdata_accesspermission DROP CONSTRAINT IF EXISTS mapdata_accesspermission_author_id_f42ef447_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.mapdata_accesspermission DROP CONSTRAINT IF EXISTS mapdata_accesspermis_token_id_e3647d7b_fk_mapdata_a;
ALTER TABLE IF EXISTS ONLY public.mapdata_accesspermission DROP CONSTRAINT IF EXISTS mapdata_accesspermis_sso_grant_id_425b2515_fk_mapdata_a;
ALTER TABLE IF EXISTS ONLY public.mapdata_accesspermissiontoken DROP CONSTRAINT IF EXISTS mapdata_accesspermis_author_id_4ae5d792_fk_auth_user;
ALTER TABLE IF EXISTS ONLY public.mapdata_accesspermissionssogrant DROP CONSTRAINT IF EXISTS mapdata_accesspermis_access_restriction_i_d94eb926_fk_mapdata_a;
ALTER TABLE IF EXISTS ONLY public.mapdata_accesspermission DROP CONSTRAINT IF EXISTS mapdata_accesspermis_access_restriction_i_6cf436d8_fk_mapdata_a;
ALTER TABLE IF EXISTS ONLY public.mapdata_accesspermissionssogrant DROP CONSTRAINT IF EXISTS mapdata_accesspermis_access_restriction_g_960b8494_fk_mapdata_a;
ALTER TABLE IF EXISTS ONLY public.mapdata_accesspermission DROP CONSTRAINT IF EXISTS mapdata_accesspermis_access_restriction_g_194c451d_fk_mapdata_a;
ALTER TABLE IF EXISTS ONLY public.editor_changesetupdate DROP CONSTRAINT IF EXISTS editor_changesetupdate_user_id_cd2202c2_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.editor_changesetupdate DROP CONSTRAINT IF EXISTS editor_changesetupdate_assigned_to_id_373deb2a_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.editor_changesetupdate DROP CONSTRAINT IF EXISTS editor_changesetupda_changeset_id_aedbc5fb_fk_editor_ch;
ALTER TABLE IF EXISTS ONLY public.editor_changeset DROP CONSTRAINT IF EXISTS editor_changeset_map_update_id_aaecae3b_fk_mapdata_mapupdate_id;
ALTER TABLE IF EXISTS ONLY public.editor_changeset DROP CONSTRAINT IF EXISTS editor_changeset_last_update_id_e0d77297_fk_editor_ch;
ALTER TABLE IF EXISTS ONLY public.editor_changeset DROP CONSTRAINT IF EXISTS editor_changeset_last_state_update_id_292a8530_fk_editor_ch;
ALTER TABLE IF EXISTS ONLY public.editor_changeset DROP CONSTRAINT IF EXISTS editor_changeset_last_change_id_5be51ccf_fk_editor_ch;
ALTER TABLE IF EXISTS ONLY public.editor_changeset DROP CONSTRAINT IF EXISTS editor_changeset_author_id_f4bf3c7f_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.editor_changeset DROP CONSTRAINT IF EXISTS editor_changeset_assigned_to_id_3afcfbb7_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.django_admin_log DROP CONSTRAINT IF EXISTS django_admin_log_user_id_c564eba6_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.django_admin_log DROP CONSTRAINT IF EXISTS django_admin_log_content_type_id_c4bce8eb_fk_django_co;
ALTER TABLE IF EXISTS ONLY public.control_userspaceaccess DROP CONSTRAINT IF EXISTS control_userspaceaccess_user_id_4ad6da16_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.control_userspaceaccess DROP CONSTRAINT IF EXISTS control_userspaceacc_space_id_c22914b2_fk_mapdata_s;
ALTER TABLE IF EXISTS ONLY public.control_userpermissions DROP CONSTRAINT IF EXISTS control_userpermissions_user_id_6003ff4e_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.control_userpermissions_review_group_reports DROP CONSTRAINT IF EXISTS control_userpermissi_userpermissions_id_3d2fb35b_fk_control_u;
ALTER TABLE IF EXISTS ONLY public.control_userpermissions_review_group_reports DROP CONSTRAINT IF EXISTS control_userpermissi_locationgroup_id_96a3102b_fk_mapdata_l;
ALTER TABLE IF EXISTS ONLY public.auth_user_user_permissions DROP CONSTRAINT IF EXISTS auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.auth_user_user_permissions DROP CONSTRAINT IF EXISTS auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
ALTER TABLE IF EXISTS ONLY public.auth_user_groups DROP CONSTRAINT IF EXISTS auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.auth_user_groups DROP CONSTRAINT IF EXISTS auth_user_groups_group_id_97559544_fk_auth_group_id;
ALTER TABLE IF EXISTS ONLY public.auth_permission DROP CONSTRAINT IF EXISTS auth_permission_content_type_id_2f476e4b_fk_django_co;
ALTER TABLE IF EXISTS ONLY public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
ALTER TABLE IF EXISTS ONLY public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
ALTER TABLE IF EXISTS ONLY public.api_logintoken DROP CONSTRAINT IF EXISTS api_token_user_id_b646d2e7_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.api_secret DROP CONSTRAINT IF EXISTS api_secret_user_id_74e5b7a6_fk_auth_user_id;
DROP INDEX IF EXISTS public.site_announcement_author_id_136858c5;
DROP INDEX IF EXISTS public.only_one_active_uplink;
DROP INDEX IF EXISTS public.only_one_active_ota;
DROP INDEX IF EXISTS public.mesh_otaupdaterecipient_update_id_95637e8a;
DROP INDEX IF EXISTS public.mesh_otaupdaterecipient_node_id_0fd5e307_like;
DROP INDEX IF EXISTS public.mesh_otaupdaterecipient_node_id_0fd5e307;
DROP INDEX IF EXISTS public.mesh_otaupdate_build_id_af114c77;
DROP INDEX IF EXISTS public.mesh_nodemessage_uplink_id_22f38887;
DROP INDEX IF EXISTS public.mesh_nodemessage_src_node_id_2754ac40_like;
DROP INDEX IF EXISTS public.mesh_nodemessage_src_node_id_2754ac40;
DROP INDEX IF EXISTS public.mesh_nodemessage_message_type_17e37336_like;
DROP INDEX IF EXISTS public.mesh_nodemessage_message_type_17e37336;
DROP INDEX IF EXISTS public.mesh_nodemessage_datetime_5b8e7dce;
DROP INDEX IF EXISTS public.mesh_meshuplink_node_id_e0c94b45_like;
DROP INDEX IF EXISTS public.mesh_meshuplink_node_id_e0c94b45;
DROP INDEX IF EXISTS public.mesh_meshnode_upstream_id_c946622a_like;
DROP INDEX IF EXISTS public.mesh_meshnode_upstream_id_c946622a;
DROP INDEX IF EXISTS public.mesh_meshnode_uplink_id_cf6b04db;
DROP INDEX IF EXISTS public.mesh_meshnode_address_bbb2a884_like;
DROP INDEX IF EXISTS public.mesh_firmwareversion_version_5d057b34_like;
DROP INDEX IF EXISTS public.mesh_firmwareversion_uploader_id_30c14fe3;
DROP INDEX IF EXISTS public.mesh_firmwarebuildboard_build_id_902517a9;
DROP INDEX IF EXISTS public.mesh_firmwarebuildboard_board_711484ba_like;
DROP INDEX IF EXISTS public.mesh_firmwarebuildboard_board_711484ba;
DROP INDEX IF EXISTS public.mesh_firmwarebuild_version_id_93e4b318;
DROP INDEX IF EXISTS public.mesh_firmwarebuild_sha256_hash_627d7144_like;
DROP INDEX IF EXISTS public.mesh_firmwarebuild_chip_f56e2ddf;
DROP INDEX IF EXISTS public.mapdata_wifimeasurement_space_id_1d127e47;
DROP INDEX IF EXISTS public.mapdata_wifimeasurement_author_id_e4b5352e;
DROP INDEX IF EXISTS public.mapdata_themeobstaclegroupbackgroundcolor_theme_id_629c5bc7;
DROP INDEX IF EXISTS public.mapdata_themeobstaclegroup_obstacle_group_id_6a51b028;
DROP INDEX IF EXISTS public.mapdata_themelocationgroupbackgroundcolor_theme_id_9baff4da;
DROP INDEX IF EXISTS public.mapdata_themelocationgroup_location_group_id_2b664e23;
DROP INDEX IF EXISTS public.mapdata_stair_space_id_6dd3ccb0;
DROP INDEX IF EXISTS public.mapdata_space_load_group_display_id_5f9c18bf;
DROP INDEX IF EXISTS public.mapdata_space_load_group_contribute_id_70aed049;
DROP INDEX IF EXISTS public.mapdata_space_level_id_b635bbeb;
DROP INDEX IF EXISTS public.mapdata_space_label_settings_id_b26b4945;
DROP INDEX IF EXISTS public.mapdata_space_groups_space_id_d9bb3827;
DROP INDEX IF EXISTS public.mapdata_space_groups_locationgroup_id_352f0e89;
DROP INDEX IF EXISTS public.mapdata_space_access_restriction_id_c295dd70;
DROP INDEX IF EXISTS public.mapdata_source_name_626b3547_like;
DROP INDEX IF EXISTS public.mapdata_source_access_restriction_id_10e0a307;
DROP INDEX IF EXISTS public.mapdata_reportupdate_report_id_ac2b4e37;
DROP INDEX IF EXISTS public.mapdata_reportupdate_author_id_b0e6e04b;
DROP INDEX IF EXISTS public.mapdata_reportupdate_assigned_to_id_7af867b4;
DROP INDEX IF EXISTS public.mapdata_report_location_id_a1b9eef3;
DROP INDEX IF EXISTS public.mapdata_report_created_groups_report_id_e8da1176;
DROP INDEX IF EXISTS public.mapdata_report_created_groups_locationgroup_id_07a66aea;
DROP INDEX IF EXISTS public.mapdata_report_category_b3157148_like;
DROP INDEX IF EXISTS public.mapdata_report_category_b3157148;
DROP INDEX IF EXISTS public.mapdata_report_author_id_1dd5fc14;
DROP INDEX IF EXISTS public.mapdata_report_assigned_to_id_fd3a8aab;
DROP INDEX IF EXISTS public.mapdata_rangingbeacon_uwb_address_9d8771d7_like;
DROP INDEX IF EXISTS public.mapdata_rangingbeacon_space_id_2c6b1efe;
DROP INDEX IF EXISTS public.mapdata_rangingbeacon_bluetooth_address_20e06b93_like;
DROP INDEX IF EXISTS public.mapdata_ramp_space_id_e6f57e61;
DROP INDEX IF EXISTS public.mapdata_position_secret_fef1b916_like;
DROP INDEX IF EXISTS public.mapdata_position_owner_id_8ad6b67c;
DROP INDEX IF EXISTS public.mapdata_poi_space_id_dcb9f571;
DROP INDEX IF EXISTS public.mapdata_poi_load_group_display_id_9952b636;
DROP INDEX IF EXISTS public.mapdata_poi_label_settings_id_18a6c1cf;
DROP INDEX IF EXISTS public.mapdata_poi_groups_poi_id_a7128a8c;
DROP INDEX IF EXISTS public.mapdata_poi_groups_locationgroup_id_46758a1e;
DROP INDEX IF EXISTS public.mapdata_poi_access_restriction_id_a6d0faf9;
DROP INDEX IF EXISTS public.mapdata_obstacle_space_id_0aa1260c;
DROP INDEX IF EXISTS public.mapdata_obstacle_group_id_a59d9b9b;
DROP INDEX IF EXISTS public.mapdata_mapupdate_user_id_faec6f5a;
DROP INDEX IF EXISTS public.mapdata_mapupdate_datetime_750ec913;
DROP INDEX IF EXISTS public.mapdata_locationslug_slug_1c195013_like;
DROP INDEX IF EXISTS public.mapdata_locationredirect_target_id_29d1b3d7;
DROP INDEX IF EXISTS public.mapdata_locationgroupcategory_priority_a21c67cd;
DROP INDEX IF EXISTS public.mapdata_locationgroupcategory_name_5b0451cf_like;
DROP INDEX IF EXISTS public.mapdata_locationgroupcategory_allow_spaces_1085c8dd;
DROP INDEX IF EXISTS public.mapdata_locationgroupcategory_allow_pois_4efc5134;
DROP INDEX IF EXISTS public.mapdata_locationgroupcategory_allow_levels_fcf0f4ee;
DROP INDEX IF EXISTS public.mapdata_locationgroupcategory_allow_dynamic_locations_ced914d1;
DROP INDEX IF EXISTS public.mapdata_locationgroupcategory_allow_areas_68afeb0a;
DROP INDEX IF EXISTS public.mapdata_locationgroup_priority_44e13f62;
DROP INDEX IF EXISTS public.mapdata_locationgroup_load_group_contribute_id_6858d49a;
DROP INDEX IF EXISTS public.mapdata_locationgroup_label_settings_id_bc60e3cf;
DROP INDEX IF EXISTS public.mapdata_locationgroup_hub_import_type_4926843d_like;
DROP INDEX IF EXISTS public.mapdata_locationgroup_hierarchy_accf714c;
DROP INDEX IF EXISTS public.mapdata_locationgroup_category_id_96775229;
DROP INDEX IF EXISTS public.mapdata_locationgroup_access_restriction_id_0f7d4828;
DROP INDEX IF EXISTS public.mapdata_loadgroup_name_dcc0a68c_like;
DROP INDEX IF EXISTS public.mapdata_lineobstacle_space_id_b9ab6bf6;
DROP INDEX IF EXISTS public.mapdata_lineobstacle_group_id_62d35458;
DROP INDEX IF EXISTS public.mapdata_level_short_label_4b45d051_like;
DROP INDEX IF EXISTS public.mapdata_level_on_top_of_id_10a0cb32;
DROP INDEX IF EXISTS public.mapdata_level_load_group_display_id_8b4f7400;
DROP INDEX IF EXISTS public.mapdata_level_level_index_2249d3f2_like;
DROP INDEX IF EXISTS public.mapdata_level_label_settings_id_6617bb7b;
DROP INDEX IF EXISTS public.mapdata_level_groups_locationgroup_id_b712e10d;
DROP INDEX IF EXISTS public.mapdata_level_groups_level_id_e60fa7db;
DROP INDEX IF EXISTS public.mapdata_level_access_restriction_id_22d67a77;
DROP INDEX IF EXISTS public.mapdata_leavedescription_target_space_id_31053028;
DROP INDEX IF EXISTS public.mapdata_leavedescription_space_id_33695534;
DROP INDEX IF EXISTS public.mapdata_hole_space_id_20336b94;
DROP INDEX IF EXISTS public.mapdata_groundaltitude_name_cf324830_like;
DROP INDEX IF EXISTS public.mapdata_graphnode_space_id_6c55bd00;
DROP INDEX IF EXISTS public.mapdata_graphedge_waytype_id_2f0d449d;
DROP INDEX IF EXISTS public.mapdata_graphedge_to_node_id_ba97ebb9;
DROP INDEX IF EXISTS public.mapdata_graphedge_from_node_id_98a76645;
DROP INDEX IF EXISTS public.mapdata_graphedge_access_restriction_id_cccddf9b;
DROP INDEX IF EXISTS public.mapdata_dynamiclocation_load_group_display_id_7d753628;
DROP INDEX IF EXISTS public.mapdata_dynamiclocation_label_settings_id_3ae9d026;
DROP INDEX IF EXISTS public.mapdata_dynamiclocation_groups_locationgroup_id_3212157f;
DROP INDEX IF EXISTS public.mapdata_dynamiclocation_groups_dynamiclocation_id_e7af76aa;
DROP INDEX IF EXISTS public.mapdata_dynamiclocation_access_restriction_id_aadb0fd6;
DROP INDEX IF EXISTS public.mapdata_door_name_de946beb_like;
DROP INDEX IF EXISTS public.mapdata_door_level_id_f6d894b2;
DROP INDEX IF EXISTS public.mapdata_door_access_restriction_id_2bfd4081;
DROP INDEX IF EXISTS public.mapdata_dataoverlayfeature_overlay_id_2390a1ec;
DROP INDEX IF EXISTS public.mapdata_dataoverlayfeature_level_id_139e601b;
DROP INDEX IF EXISTS public.mapdata_dataoverlay_edit_access_restriction_id_3ff41113;
DROP INDEX IF EXISTS public.mapdata_dataoverlay_access_restriction_id_0b2e0b0d;
DROP INDEX IF EXISTS public.mapdata_crossdescription_target_space_id_8f82991b;
DROP INDEX IF EXISTS public.mapdata_crossdescription_space_id_5b117c2d;
DROP INDEX IF EXISTS public.mapdata_crossdescription_origin_space_id_88f8ef46;
DROP INDEX IF EXISTS public.mapdata_column_space_id_4f64c0d4;
DROP INDEX IF EXISTS public.mapdata_column_access_restriction_id_e09dd08f;
DROP INDEX IF EXISTS public.mapdata_cloneditemsync_original_content_type_id_279e190b;
DROP INDEX IF EXISTS public.mapdata_cloneditemsync_cloned_content_type_id_fd104fc2;
DROP INDEX IF EXISTS public.mapdata_clo_origina_62f4ee_idx;
DROP INDEX IF EXISTS public.mapdata_clo_cloned__027e07_idx;
DROP INDEX IF EXISTS public.mapdata_building_level_id_0e322f7a;
DROP INDEX IF EXISTS public.mapdata_area_space_id_c0461a4c;
DROP INDEX IF EXISTS public.mapdata_area_load_group_display_id_28bec361;
DROP INDEX IF EXISTS public.mapdata_area_load_group_contribute_id_255b59ff;
DROP INDEX IF EXISTS public.mapdata_area_label_settings_id_7ccf6168;
DROP INDEX IF EXISTS public.mapdata_area_groups_locationgroup_id_8cc32166;
DROP INDEX IF EXISTS public.mapdata_area_groups_area_id_68ea7b48;
DROP INDEX IF EXISTS public.mapdata_area_access_restriction_id_a549eda1;
DROP INDEX IF EXISTS public.mapdata_altitudemarker_space_id_cea7cf47;
DROP INDEX IF EXISTS public.mapdata_altitudemarker_groundaltitude_id_13c52aa1;
DROP INDEX IF EXISTS public.mapdata_altitudearea_level_id_b1320e34;
DROP INDEX IF EXISTS public.mapdata_accessrestrictiong_accessrestrictiongroup_id_85775731;
DROP INDEX IF EXISTS public.mapdata_accessrestrictiong_accessrestriction_id_dcf7959b;
DROP INDEX IF EXISTS public.mapdata_accesspermissiontoken_valid_until_beec34ec;
DROP INDEX IF EXISTS public.mapdata_accesspermissiontoken_unlimited_2f438422;
DROP INDEX IF EXISTS public.mapdata_accesspermissiontoken_redeemed_d5cc5d44;
DROP INDEX IF EXISTS public.mapdata_accesspermissiontoken_can_grant_9d37516f;
DROP INDEX IF EXISTS public.mapdata_accesspermissiontoken_author_id_4ae5d792;
DROP INDEX IF EXISTS public.mapdata_accesspermissionssogrant_access_restriction_id_d94eb926;
DROP INDEX IF EXISTS public.mapdata_accesspermissionss_access_restriction_group_i_960b8494;
DROP INDEX IF EXISTS public.mapdata_accesspermission_user_id_0160fe04;
DROP INDEX IF EXISTS public.mapdata_accesspermission_token_id_e3647d7b;
DROP INDEX IF EXISTS public.mapdata_accesspermission_sso_grant_id_425b2515;
DROP INDEX IF EXISTS public.mapdata_accesspermission_author_id_f42ef447;
DROP INDEX IF EXISTS public.mapdata_accesspermission_access_restriction_id_6cf436d8;
DROP INDEX IF EXISTS public.mapdata_accesspermission_access_restriction_group_id_194c451d;
DROP INDEX IF EXISTS public.editor_changesetupdate_user_id_cd2202c2;
DROP INDEX IF EXISTS public.editor_changesetupdate_state_ed535412_like;
DROP INDEX IF EXISTS public.editor_changesetupdate_state_ed535412;
DROP INDEX IF EXISTS public.editor_changesetupdate_changeset_id_aedbc5fb;
DROP INDEX IF EXISTS public.editor_changesetupdate_assigned_to_id_373deb2a;
DROP INDEX IF EXISTS public.editor_changeset_state_5a7a590f_like;
DROP INDEX IF EXISTS public.editor_changeset_state_5a7a590f;
DROP INDEX IF EXISTS public.editor_changeset_last_update_id_e0d77297;
DROP INDEX IF EXISTS public.editor_changeset_last_state_update_id_292a8530;
DROP INDEX IF EXISTS public.editor_changeset_last_change_id_5be51ccf;
DROP INDEX IF EXISTS public.editor_changeset_author_id_f4bf3c7f;
DROP INDEX IF EXISTS public.editor_changeset_assigned_to_id_3afcfbb7;
DROP INDEX IF EXISTS public.django_session_session_key_c0390e0f_like;
DROP INDEX IF EXISTS public.django_session_expire_date_a5c62663;
DROP INDEX IF EXISTS public.django_admin_log_user_id_c564eba6;
DROP INDEX IF EXISTS public.django_admin_log_content_type_id_c4bce8eb;
DROP INDEX IF EXISTS public.control_userspaceaccess_user_id_4ad6da16;
DROP INDEX IF EXISTS public.control_userspaceaccess_space_id_c22914b2;
DROP INDEX IF EXISTS public.control_userpermissions_re_userpermissions_id_3d2fb35b;
DROP INDEX IF EXISTS public.control_userpermissions_re_locationgroup_id_96a3102b;
DROP INDEX IF EXISTS public.auth_user_user_permissions_user_id_a95ead1b;
DROP INDEX IF EXISTS public.auth_user_user_permissions_permission_id_1fbb5f2c;
DROP INDEX IF EXISTS public.auth_user_groups_user_id_6a12ed8b;
DROP INDEX IF EXISTS public.auth_user_groups_group_id_97559544;
DROP INDEX IF EXISTS public.auth_permission_content_type_id_2f476e4b;
DROP INDEX IF EXISTS public.auth_group_permissions_permission_id_84c5c92e;
DROP INDEX IF EXISTS public.auth_group_permissions_group_id_b120cbf9;
DROP INDEX IF EXISTS public.auth_group_name_a6ea08ec_like;
DROP INDEX IF EXISTS public.api_token_user_id_b646d2e7;
DROP INDEX IF EXISTS public.api_secret_user_id_74e5b7a6;
DROP INDEX IF EXISTS public.api_secret_api_secret_e655122c_like;
ALTER TABLE IF EXISTS ONLY public.site_siteupdate DROP CONSTRAINT IF EXISTS site_siteupdate_pkey;
ALTER TABLE IF EXISTS ONLY public.site_announcement DROP CONSTRAINT IF EXISTS site_announcement_pkey;
ALTER TABLE IF EXISTS ONLY public.routing_routeoptions DROP CONSTRAINT IF EXISTS routing_routeoptions_pkey;
ALTER TABLE IF EXISTS ONLY public.mesh_otaupdaterecipient DROP CONSTRAINT IF EXISTS mesh_otaupdaterecipient_pkey;
ALTER TABLE IF EXISTS ONLY public.mesh_otaupdate DROP CONSTRAINT IF EXISTS mesh_otaupdate_pkey;
ALTER TABLE IF EXISTS ONLY public.mesh_nodemessage DROP CONSTRAINT IF EXISTS mesh_nodemessage_pkey;
ALTER TABLE IF EXISTS ONLY public.mesh_meshuplink DROP CONSTRAINT IF EXISTS mesh_meshuplink_pkey;
ALTER TABLE IF EXISTS ONLY public.mesh_meshnode DROP CONSTRAINT IF EXISTS mesh_meshnode_pkey;
ALTER TABLE IF EXISTS ONLY public.mesh_firmwareversion DROP CONSTRAINT IF EXISTS mesh_firmwareversion_version_key;
ALTER TABLE IF EXISTS ONLY public.mesh_firmwareversion DROP CONSTRAINT IF EXISTS mesh_firmwareversion_pkey;
ALTER TABLE IF EXISTS ONLY public.mesh_firmwarebuildboard DROP CONSTRAINT IF EXISTS mesh_firmwarebuildboard_pkey;
ALTER TABLE IF EXISTS ONLY public.mesh_firmwarebuildboard DROP CONSTRAINT IF EXISTS mesh_firmwarebuildboard_build_id_board_e38ac95f_uniq;
ALTER TABLE IF EXISTS ONLY public.mesh_firmwarebuild DROP CONSTRAINT IF EXISTS mesh_firmwarebuild_version_id_variant_0930ed52_uniq;
ALTER TABLE IF EXISTS ONLY public.mesh_firmwarebuild DROP CONSTRAINT IF EXISTS mesh_firmwarebuild_sha256_hash_key;
ALTER TABLE IF EXISTS ONLY public.mesh_firmwarebuild DROP CONSTRAINT IF EXISTS mesh_firmwarebuild_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_beaconmeasurement DROP CONSTRAINT IF EXISTS mapdata_wifimeasurement_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_waytype DROP CONSTRAINT IF EXISTS mapdata_waytype_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_themeobstaclegroupbackgroundcolor DROP CONSTRAINT IF EXISTS mapdata_themeobstaclegroupbackgroundcolor_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_themelocationgroupbackgroundcolor DROP CONSTRAINT IF EXISTS mapdata_themelocationgroupbackgroundcolor_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_theme DROP CONSTRAINT IF EXISTS mapdata_theme_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_stair DROP CONSTRAINT IF EXISTS mapdata_stair_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_space DROP CONSTRAINT IF EXISTS mapdata_space_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_space_groups DROP CONSTRAINT IF EXISTS mapdata_space_groups_space_id_locationgroup_id_170f4e14_uniq;
ALTER TABLE IF EXISTS ONLY public.mapdata_space_groups DROP CONSTRAINT IF EXISTS mapdata_space_groups_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_source DROP CONSTRAINT IF EXISTS mapdata_source_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_source DROP CONSTRAINT IF EXISTS mapdata_source_name_key;
ALTER TABLE IF EXISTS ONLY public.mapdata_reportupdate DROP CONSTRAINT IF EXISTS mapdata_reportupdate_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_report DROP CONSTRAINT IF EXISTS mapdata_report_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_report_created_groups DROP CONSTRAINT IF EXISTS mapdata_report_created_groups_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_report_created_groups DROP CONSTRAINT IF EXISTS mapdata_report_created_g_report_id_locationgroup__27469fb6_uniq;
ALTER TABLE IF EXISTS ONLY public.mapdata_rangingbeacon DROP CONSTRAINT IF EXISTS mapdata_rangingbeacon_uwb_address_key;
ALTER TABLE IF EXISTS ONLY public.mapdata_rangingbeacon DROP CONSTRAINT IF EXISTS mapdata_rangingbeacon_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_rangingbeacon DROP CONSTRAINT IF EXISTS mapdata_rangingbeacon_node_number_key;
ALTER TABLE IF EXISTS ONLY public.mapdata_rangingbeacon DROP CONSTRAINT IF EXISTS mapdata_rangingbeacon_bluetooth_address_key;
ALTER TABLE IF EXISTS ONLY public.mapdata_ramp DROP CONSTRAINT IF EXISTS mapdata_ramp_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_position DROP CONSTRAINT IF EXISTS mapdata_position_secret_key;
ALTER TABLE IF EXISTS ONLY public.mapdata_position DROP CONSTRAINT IF EXISTS mapdata_position_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_poi DROP CONSTRAINT IF EXISTS mapdata_poi_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_poi_groups DROP CONSTRAINT IF EXISTS mapdata_poi_groups_poi_id_locationgroup_id_e97cd00b_uniq;
ALTER TABLE IF EXISTS ONLY public.mapdata_poi_groups DROP CONSTRAINT IF EXISTS mapdata_poi_groups_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_obstaclegroup DROP CONSTRAINT IF EXISTS mapdata_obstaclegroup_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_obstacle DROP CONSTRAINT IF EXISTS mapdata_obstacle_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_mapupdate DROP CONSTRAINT IF EXISTS mapdata_mapupdate_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_locationslug DROP CONSTRAINT IF EXISTS mapdata_locationslug_slug_key;
ALTER TABLE IF EXISTS ONLY public.mapdata_locationslug DROP CONSTRAINT IF EXISTS mapdata_locationslug_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_locationredirect DROP CONSTRAINT IF EXISTS mapdata_locationredirect_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_locationgroupcategory DROP CONSTRAINT IF EXISTS mapdata_locationgroupcategory_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_locationgroupcategory DROP CONSTRAINT IF EXISTS mapdata_locationgroupcategory_name_key;
ALTER TABLE IF EXISTS ONLY public.mapdata_locationgroup DROP CONSTRAINT IF EXISTS mapdata_locationgroup_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_locationgroup DROP CONSTRAINT IF EXISTS mapdata_locationgroup_hub_import_type_key;
ALTER TABLE IF EXISTS ONLY public.mapdata_loadgroup DROP CONSTRAINT IF EXISTS mapdata_loadgroup_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_loadgroup DROP CONSTRAINT IF EXISTS mapdata_loadgroup_name_key;
ALTER TABLE IF EXISTS ONLY public.mapdata_lineobstacle DROP CONSTRAINT IF EXISTS mapdata_lineobstacle_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_level DROP CONSTRAINT IF EXISTS mapdata_level_short_label_key;
ALTER TABLE IF EXISTS ONLY public.mapdata_level DROP CONSTRAINT IF EXISTS mapdata_level_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_level DROP CONSTRAINT IF EXISTS mapdata_level_level_index_key;
ALTER TABLE IF EXISTS ONLY public.mapdata_level_groups DROP CONSTRAINT IF EXISTS mapdata_level_groups_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_level_groups DROP CONSTRAINT IF EXISTS mapdata_level_groups_level_id_locationgroup_id_a6e17493_uniq;
ALTER TABLE IF EXISTS ONLY public.mapdata_level DROP CONSTRAINT IF EXISTS mapdata_level_base_altitude_key;
ALTER TABLE IF EXISTS ONLY public.mapdata_leavedescription DROP CONSTRAINT IF EXISTS mapdata_leavedescription_space_id_target_space_id_91b3fce3_uniq;
ALTER TABLE IF EXISTS ONLY public.mapdata_leavedescription DROP CONSTRAINT IF EXISTS mapdata_leavedescription_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_labelsettings DROP CONSTRAINT IF EXISTS mapdata_labelsettings_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_hole DROP CONSTRAINT IF EXISTS mapdata_hole_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_groundaltitude DROP CONSTRAINT IF EXISTS mapdata_groundaltitude_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_groundaltitude DROP CONSTRAINT IF EXISTS mapdata_groundaltitude_name_key;
ALTER TABLE IF EXISTS ONLY public.mapdata_graphnode DROP CONSTRAINT IF EXISTS mapdata_graphnode_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_graphedge DROP CONSTRAINT IF EXISTS mapdata_graphedge_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_graphedge DROP CONSTRAINT IF EXISTS mapdata_graphedge_from_node_id_to_node_id_69dfc18a_uniq;
ALTER TABLE IF EXISTS ONLY public.mapdata_dynamiclocation DROP CONSTRAINT IF EXISTS mapdata_dynamiclocation_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_dynamiclocation_groups DROP CONSTRAINT IF EXISTS mapdata_dynamiclocation_groups_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_dynamiclocation_groups DROP CONSTRAINT IF EXISTS mapdata_dynamiclocation__dynamiclocation_id_locat_d1a2f283_uniq;
ALTER TABLE IF EXISTS ONLY public.mapdata_door DROP CONSTRAINT IF EXISTS mapdata_door_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_door DROP CONSTRAINT IF EXISTS mapdata_door_name_key;
ALTER TABLE IF EXISTS ONLY public.mapdata_dataoverlayfeature DROP CONSTRAINT IF EXISTS mapdata_dataoverlayfeature_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_dataoverlay DROP CONSTRAINT IF EXISTS mapdata_dataoverlay_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_crossdescription DROP CONSTRAINT IF EXISTS mapdata_crossdescription_space_id_origin_space_id_0efa52a4_uniq;
ALTER TABLE IF EXISTS ONLY public.mapdata_crossdescription DROP CONSTRAINT IF EXISTS mapdata_crossdescription_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_column DROP CONSTRAINT IF EXISTS mapdata_column_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_cloneditemsync DROP CONSTRAINT IF EXISTS mapdata_cloneditemsync_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_cloneditemsync DROP CONSTRAINT IF EXISTS mapdata_cloneditemsync_original_content_type_id_adfbd011_uniq;
ALTER TABLE IF EXISTS ONLY public.mapdata_building DROP CONSTRAINT IF EXISTS mapdata_building_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_area DROP CONSTRAINT IF EXISTS mapdata_area_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_area_groups DROP CONSTRAINT IF EXISTS mapdata_area_groups_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_area_groups DROP CONSTRAINT IF EXISTS mapdata_area_groups_area_id_locationgroup_id_573c1a07_uniq;
ALTER TABLE IF EXISTS ONLY public.mapdata_altitudemarker DROP CONSTRAINT IF EXISTS mapdata_altitudemarker_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_altitudearea DROP CONSTRAINT IF EXISTS mapdata_altitudearea_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_accessrestrictiongroup DROP CONSTRAINT IF EXISTS mapdata_accessrestrictiongroup_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_accessrestrictiongroup_members DROP CONSTRAINT IF EXISTS mapdata_accessrestrictiongroup_members_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_accessrestriction DROP CONSTRAINT IF EXISTS mapdata_accessrestriction_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_accessrestrictiongroup_members DROP CONSTRAINT IF EXISTS mapdata_accessrestrictio_accessrestrictiongroup_i_4fdf0e0b_uniq;
ALTER TABLE IF EXISTS ONLY public.mapdata_accesspermissiontoken DROP CONSTRAINT IF EXISTS mapdata_accesspermissiontoken_token_key;
ALTER TABLE IF EXISTS ONLY public.mapdata_accesspermissiontoken DROP CONSTRAINT IF EXISTS mapdata_accesspermissiontoken_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_accesspermissionssogrant DROP CONSTRAINT IF EXISTS mapdata_accesspermissionssogrant_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_accesspermissionssogrant DROP CONSTRAINT IF EXISTS mapdata_accesspermission_provider_group_access_re_bf15c068_uniq;
ALTER TABLE IF EXISTS ONLY public.mapdata_accesspermission DROP CONSTRAINT IF EXISTS mapdata_accesspermission_pkey;
ALTER TABLE IF EXISTS ONLY public.mapdata_accesspermission DROP CONSTRAINT IF EXISTS mapdata_accesspermission_author_id_unique_key_0644d161_uniq;
ALTER TABLE IF EXISTS ONLY public.editor_changesetupdate DROP CONSTRAINT IF EXISTS editor_changesetupdate_pkey;
ALTER TABLE IF EXISTS ONLY public.editor_changeset DROP CONSTRAINT IF EXISTS editor_changeset_pkey;
ALTER TABLE IF EXISTS ONLY public.editor_changeset DROP CONSTRAINT IF EXISTS editor_changeset_map_update_id_key;
ALTER TABLE IF EXISTS ONLY public.django_session DROP CONSTRAINT IF EXISTS django_session_pkey;
ALTER TABLE IF EXISTS ONLY public.django_migrations DROP CONSTRAINT IF EXISTS django_migrations_pkey;
ALTER TABLE IF EXISTS ONLY public.django_content_type DROP CONSTRAINT IF EXISTS django_content_type_pkey;
ALTER TABLE IF EXISTS ONLY public.django_content_type DROP CONSTRAINT IF EXISTS django_content_type_app_label_model_76bd3d3b_uniq;
ALTER TABLE IF EXISTS ONLY public.django_admin_log DROP CONSTRAINT IF EXISTS django_admin_log_pkey;
ALTER TABLE IF EXISTS ONLY public.control_userspaceaccess DROP CONSTRAINT IF EXISTS control_userspaceaccess_user_id_space_id_224c3409_uniq;
ALTER TABLE IF EXISTS ONLY public.control_userspaceaccess DROP CONSTRAINT IF EXISTS control_userspaceaccess_pkey;
ALTER TABLE IF EXISTS ONLY public.control_userpermissions_review_group_reports DROP CONSTRAINT IF EXISTS control_userpermissions_review_group_reports_pkey;
ALTER TABLE IF EXISTS ONLY public.control_userpermissions DROP CONSTRAINT IF EXISTS control_userpermissions_pkey;
ALTER TABLE IF EXISTS ONLY public.control_userpermissions_review_group_reports DROP CONSTRAINT IF EXISTS control_userpermissions__userpermissions_id_locat_17cbbd3d_uniq;
ALTER TABLE IF EXISTS ONLY public.auth_user_user_permissions DROP CONSTRAINT IF EXISTS auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
ALTER TABLE IF EXISTS ONLY public.auth_user_user_permissions DROP CONSTRAINT IF EXISTS auth_user_user_permissions_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_user_groups DROP CONSTRAINT IF EXISTS auth_user_groups_user_id_group_id_94350c0c_uniq;
ALTER TABLE IF EXISTS ONLY public.auth_user_groups DROP CONSTRAINT IF EXISTS auth_user_groups_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_permission DROP CONSTRAINT IF EXISTS auth_permission_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_permission DROP CONSTRAINT IF EXISTS auth_permission_content_type_id_codename_01ab375a_uniq;
ALTER TABLE IF EXISTS ONLY public.auth_group DROP CONSTRAINT IF EXISTS auth_group_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissions_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
ALTER TABLE IF EXISTS ONLY public.auth_group DROP CONSTRAINT IF EXISTS auth_group_name_key;
ALTER TABLE IF EXISTS ONLY public.api_logintoken DROP CONSTRAINT IF EXISTS api_token_pkey;
ALTER TABLE IF EXISTS ONLY public.api_secret DROP CONSTRAINT IF EXISTS api_secret_user_id_name_21b4a70e_uniq;
ALTER TABLE IF EXISTS ONLY public.api_secret DROP CONSTRAINT IF EXISTS api_secret_pkey;
ALTER TABLE IF EXISTS ONLY public.api_secret DROP CONSTRAINT IF EXISTS api_secret_api_secret_key;
DROP TABLE IF EXISTS public.site_siteupdate;
DROP TABLE IF EXISTS public.site_announcement;
DROP TABLE IF EXISTS public.routing_routeoptions;
DROP TABLE IF EXISTS public.mesh_otaupdaterecipient;
DROP TABLE IF EXISTS public.mesh_otaupdate;
DROP TABLE IF EXISTS public.mesh_nodemessage;
DROP TABLE IF EXISTS public.mesh_meshuplink;
DROP TABLE IF EXISTS public.mesh_meshnode;
DROP TABLE IF EXISTS public.mesh_firmwareversion;
DROP TABLE IF EXISTS public.mesh_firmwarebuildboard;
DROP TABLE IF EXISTS public.mesh_firmwarebuild;
DROP TABLE IF EXISTS public.mapdata_waytype;
DROP TABLE IF EXISTS public.mapdata_themeobstaclegroupbackgroundcolor;
DROP TABLE IF EXISTS public.mapdata_themelocationgroupbackgroundcolor;
DROP TABLE IF EXISTS public.mapdata_theme;
DROP TABLE IF EXISTS public.mapdata_stair;
DROP TABLE IF EXISTS public.mapdata_space_groups;
DROP TABLE IF EXISTS public.mapdata_space;
DROP TABLE IF EXISTS public.mapdata_source;
DROP TABLE IF EXISTS public.mapdata_reportupdate;
DROP TABLE IF EXISTS public.mapdata_report_created_groups;
DROP TABLE IF EXISTS public.mapdata_report;
DROP TABLE IF EXISTS public.mapdata_rangingbeacon;
DROP TABLE IF EXISTS public.mapdata_ramp;
DROP TABLE IF EXISTS public.mapdata_position;
DROP TABLE IF EXISTS public.mapdata_poi_groups;
DROP TABLE IF EXISTS public.mapdata_poi;
DROP TABLE IF EXISTS public.mapdata_obstaclegroup;
DROP TABLE IF EXISTS public.mapdata_obstacle;
DROP TABLE IF EXISTS public.mapdata_mapupdate;
DROP TABLE IF EXISTS public.mapdata_locationslug;
DROP TABLE IF EXISTS public.mapdata_locationredirect;
DROP TABLE IF EXISTS public.mapdata_locationgroupcategory;
DROP TABLE IF EXISTS public.mapdata_locationgroup;
DROP TABLE IF EXISTS public.mapdata_loadgroup;
DROP TABLE IF EXISTS public.mapdata_lineobstacle;
DROP TABLE IF EXISTS public.mapdata_level_groups;
DROP TABLE IF EXISTS public.mapdata_level;
DROP TABLE IF EXISTS public.mapdata_leavedescription;
DROP TABLE IF EXISTS public.mapdata_labelsettings;
DROP TABLE IF EXISTS public.mapdata_hole;
DROP TABLE IF EXISTS public.mapdata_groundaltitude;
DROP TABLE IF EXISTS public.mapdata_graphnode;
DROP TABLE IF EXISTS public.mapdata_graphedge;
DROP TABLE IF EXISTS public.mapdata_dynamiclocation_groups;
DROP TABLE IF EXISTS public.mapdata_dynamiclocation;
DROP TABLE IF EXISTS public.mapdata_door;
DROP TABLE IF EXISTS public.mapdata_dataoverlayfeature;
DROP TABLE IF EXISTS public.mapdata_dataoverlay;
DROP TABLE IF EXISTS public.mapdata_crossdescription;
DROP TABLE IF EXISTS public.mapdata_column;
DROP TABLE IF EXISTS public.mapdata_cloneditemsync;
DROP TABLE IF EXISTS public.mapdata_building;
DROP TABLE IF EXISTS public.mapdata_beaconmeasurement;
DROP TABLE IF EXISTS public.mapdata_area_groups;
DROP TABLE IF EXISTS public.mapdata_area;
DROP TABLE IF EXISTS public.mapdata_altitudemarker;
DROP TABLE IF EXISTS public.mapdata_altitudearea;
DROP TABLE IF EXISTS public.mapdata_accessrestrictiongroup_members;
DROP TABLE IF EXISTS public.mapdata_accessrestrictiongroup;
DROP TABLE IF EXISTS public.mapdata_accessrestriction;
DROP TABLE IF EXISTS public.mapdata_accesspermissiontoken;
DROP TABLE IF EXISTS public.mapdata_accesspermissionssogrant;
DROP TABLE IF EXISTS public.mapdata_accesspermission;
DROP TABLE IF EXISTS public.editor_changesetupdate;
DROP TABLE IF EXISTS public.editor_changeset;
DROP TABLE IF EXISTS public.django_session;
DROP TABLE IF EXISTS public.django_migrations;
DROP TABLE IF EXISTS public.django_content_type;
DROP TABLE IF EXISTS public.django_admin_log;
DROP TABLE IF EXISTS public.control_userspaceaccess;
DROP TABLE IF EXISTS public.control_userpermissions_review_group_reports;
DROP TABLE IF EXISTS public.control_userpermissions;
DROP TABLE IF EXISTS public.auth_user_user_permissions;
DROP TABLE IF EXISTS public.auth_user_groups;
DROP TABLE IF EXISTS public.auth_permission;
DROP TABLE IF EXISTS public.auth_group_permissions;
DROP TABLE IF EXISTS public.auth_group;
DROP TABLE IF EXISTS public.api_secret;
DROP TABLE IF EXISTS public.api_logintoken;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: api_logintoken; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.api_logintoken (
    id integer NOT NULL,
    secret character varying(64) NOT NULL,
    session_auth_hash character varying(128) NOT NULL,
    user_id integer NOT NULL
);


--
-- Name: api_secret; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.api_secret (
    id integer NOT NULL,
    name character varying(32) NOT NULL,
    created timestamp with time zone NOT NULL,
    api_secret character varying(64) NOT NULL,
    readonly boolean NOT NULL,
    scope_grant_permissions boolean NOT NULL,
    scope_editor boolean NOT NULL,
    scope_mesh boolean NOT NULL,
    valid_until timestamp with time zone,
    user_id integer NOT NULL,
    scope_load boolean NOT NULL
);


--
-- Name: api_secret_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.api_secret ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.api_secret_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: api_token_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.api_logintoken ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.api_token_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: control_userpermissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.control_userpermissions (
    user_id integer NOT NULL,
    review_changesets boolean NOT NULL,
    direct_edit boolean NOT NULL,
    grant_permissions boolean NOT NULL,
    manage_announcements boolean NOT NULL,
    grant_all_access boolean NOT NULL,
    max_changeset_changes smallint NOT NULL,
    base_mapdata_access boolean NOT NULL,
    editor_access boolean NOT NULL,
    grant_space_access boolean NOT NULL,
    manage_map_updates boolean NOT NULL,
    review_all_reports boolean NOT NULL,
    mesh_control boolean NOT NULL,
    grant_unlimited_access boolean NOT NULL,
    nonpublic_themes boolean NOT NULL,
    sources_access boolean NOT NULL,
    view_users boolean NOT NULL,
    quests jsonb NOT NULL,
    impolite_quests boolean NOT NULL,
    passive_ap_name_scanning boolean NOT NULL,
    can_write_load_data boolean NOT NULL,
    CONSTRAINT control_userpermissions_max_changeset_changes_check CHECK ((max_changeset_changes >= 0))
);


--
-- Name: control_userpermissions_review_group_reports; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.control_userpermissions_review_group_reports (
    id integer NOT NULL,
    userpermissions_id integer NOT NULL,
    locationgroup_id integer NOT NULL
);


--
-- Name: control_userpermissions_review_group_reports_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.control_userpermissions_review_group_reports ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.control_userpermissions_review_group_reports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: control_userspaceaccess; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.control_userspaceaccess (
    id integer NOT NULL,
    can_edit boolean NOT NULL,
    space_id integer NOT NULL,
    user_id integer NOT NULL
);


--
-- Name: control_userspaceaccess_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.control_userspaceaccess ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.control_userspaceaccess_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


--
-- Name: editor_changeset; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.editor_changeset (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    state character varying(20) NOT NULL,
    title character varying(100) NOT NULL,
    description text NOT NULL,
    assigned_to_id integer,
    author_id integer,
    last_change_id integer,
    last_state_update_id integer,
    last_update_id integer,
    map_update_id integer,
    changes jsonb NOT NULL
);


--
-- Name: editor_changeset_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.editor_changeset ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.editor_changeset_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: editor_changesetupdate; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.editor_changesetupdate (
    id integer NOT NULL,
    datetime timestamp with time zone NOT NULL,
    comment text,
    state character varying(20) NOT NULL,
    title character varying(100),
    description text,
    objects_changed boolean NOT NULL,
    assigned_to_id integer,
    changeset_id integer NOT NULL,
    user_id integer
);


--
-- Name: editor_changesetupdate_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.editor_changesetupdate ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.editor_changesetupdate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_accesspermission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_accesspermission (
    id integer NOT NULL,
    expire_date timestamp with time zone,
    can_grant boolean NOT NULL,
    unique_key character varying(32),
    access_restriction_id integer,
    author_id integer,
    token_id integer,
    user_id integer,
    access_restriction_group_id integer,
    session_token uuid,
    sso_grant_id integer,
    CONSTRAINT permission_needs_restriction_or_restriction_group CHECK (((NOT ((access_restriction_id IS NULL) AND (access_restriction_group_id IS NULL))) AND (NOT ((access_restriction_id IS NOT NULL) AND (access_restriction_group_id IS NOT NULL))))),
    CONSTRAINT permission_needs_user_or_session CHECK (((NOT ((session_token IS NULL) AND (user_id IS NULL))) AND (NOT ((session_token IS NOT NULL) AND (user_id IS NOT NULL)))))
);


--
-- Name: mapdata_accesspermission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_accesspermission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_accesspermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_accesspermissionssogrant; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_accesspermissionssogrant (
    id integer NOT NULL,
    provider character varying(32) NOT NULL,
    "group" character varying(64) NOT NULL,
    access_restriction_id integer,
    access_restriction_group_id integer,
    CONSTRAINT sso_permission_grant_needs_restriction_or_restriction_group CHECK (((NOT ((access_restriction_id IS NULL) AND (access_restriction_group_id IS NULL))) AND (NOT ((access_restriction_id IS NOT NULL) AND (access_restriction_group_id IS NOT NULL)))))
);


--
-- Name: mapdata_accesspermissionssogrant_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_accesspermissionssogrant ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_accesspermissionssogrant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_accesspermissiontoken; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_accesspermissiontoken (
    id integer NOT NULL,
    token uuid NOT NULL,
    valid_until timestamp with time zone NOT NULL,
    unlimited boolean NOT NULL,
    redeemed boolean NOT NULL,
    can_grant boolean NOT NULL,
    unique_key character varying(32),
    data bytea NOT NULL,
    author_id integer NOT NULL
);


--
-- Name: mapdata_accesspermissiontoken_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_accesspermissiontoken ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_accesspermissiontoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_accessrestriction; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_accessrestriction (
    id integer NOT NULL,
    titles jsonb NOT NULL,
    public boolean NOT NULL
);


--
-- Name: mapdata_accessrestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_accessrestriction ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_accessrestriction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_accessrestrictiongroup; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_accessrestrictiongroup (
    id integer NOT NULL,
    titles jsonb NOT NULL
);


--
-- Name: mapdata_accessrestrictiongroup_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_accessrestrictiongroup ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_accessrestrictiongroup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_accessrestrictiongroup_members; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_accessrestrictiongroup_members (
    id integer NOT NULL,
    accessrestrictiongroup_id integer NOT NULL,
    accessrestriction_id integer NOT NULL
);


--
-- Name: mapdata_accessrestrictiongroup_members_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_accessrestrictiongroup_members ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_accessrestrictiongroup_members_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_altitudearea; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_altitudearea (
    id integer NOT NULL,
    geometry jsonb NOT NULL,
    altitude numeric(6,2),
    level_id integer NOT NULL,
    import_tag character varying(64),
    points jsonb
);


--
-- Name: mapdata_altitudearea_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_altitudearea ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_altitudearea_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_altitudemarker; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_altitudemarker (
    id integer NOT NULL,
    geometry jsonb NOT NULL,
    space_id integer NOT NULL,
    import_tag character varying(64),
    groundaltitude_id integer NOT NULL
);


--
-- Name: mapdata_altitudemarker_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_altitudemarker ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_altitudemarker_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_area; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_area (
    locationslug_ptr_id integer NOT NULL,
    titles jsonb NOT NULL,
    can_search boolean NOT NULL,
    can_describe boolean NOT NULL,
    geometry jsonb NOT NULL,
    slow_down_factor numeric(6,2) NOT NULL,
    access_restriction_id integer,
    space_id integer NOT NULL,
    import_tag character varying(64),
    icon character varying(32),
    label_overrides jsonb NOT NULL,
    label_settings_id integer,
    main_point jsonb,
    external_url character varying(200),
    import_block_data boolean NOT NULL,
    import_block_geom boolean NOT NULL,
    load_group_contribute_id integer,
    load_group_display_id integer
);


--
-- Name: mapdata_area_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_area_groups (
    id integer NOT NULL,
    area_id integer NOT NULL,
    locationgroup_id integer NOT NULL
);


--
-- Name: mapdata_area_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_area_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_area_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_beaconmeasurement; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_beaconmeasurement (
    id integer NOT NULL,
    geometry jsonb NOT NULL,
    comment text,
    data jsonb NOT NULL,
    author_id integer,
    space_id integer NOT NULL,
    import_tag character varying(64),
    fill_quest boolean NOT NULL
);


--
-- Name: mapdata_building; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_building (
    id integer NOT NULL,
    geometry jsonb NOT NULL,
    level_id integer NOT NULL,
    import_tag character varying(64)
);


--
-- Name: mapdata_building_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_building ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_building_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_cloneditemsync; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_cloneditemsync (
    id integer NOT NULL,
    original_object_id integer NOT NULL,
    cloned_object_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    sync_fields jsonb NOT NULL,
    cloned_content_type_id integer NOT NULL,
    original_content_type_id integer NOT NULL,
    CONSTRAINT mapdata_cloneditemsync_cloned_object_id_check CHECK ((cloned_object_id >= 0)),
    CONSTRAINT mapdata_cloneditemsync_original_object_id_check CHECK ((original_object_id >= 0))
);


--
-- Name: mapdata_cloneditemsync_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_cloneditemsync ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_cloneditemsync_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_column; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_column (
    id integer NOT NULL,
    geometry jsonb NOT NULL,
    space_id integer NOT NULL,
    access_restriction_id integer,
    import_tag character varying(64)
);


--
-- Name: mapdata_column_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_column ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_column_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_crossdescription; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_crossdescription (
    id integer NOT NULL,
    descriptions jsonb NOT NULL,
    origin_space_id integer NOT NULL,
    space_id integer NOT NULL,
    target_space_id integer NOT NULL
);


--
-- Name: mapdata_crossdescription_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_crossdescription ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_crossdescription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_dataoverlay; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_dataoverlay (
    id integer NOT NULL,
    titles jsonb NOT NULL,
    description text NOT NULL,
    stroke_color character varying(255),
    stroke_width double precision,
    fill_color character varying(255),
    pull_url character varying(200),
    pull_headers jsonb,
    pull_interval interval,
    access_restriction_id integer,
    default_geomtype character varying(255),
    fill_opacity double precision,
    stroke_opacity double precision,
    cluster_points boolean NOT NULL,
    edit_access_restriction_id integer,
    update_interval integer,
    CONSTRAINT mapdata_dataoverlay_update_interval_check CHECK ((update_interval >= 0))
);


--
-- Name: mapdata_dataoverlay_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_dataoverlay ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_dataoverlay_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_dataoverlayfeature; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_dataoverlayfeature (
    id integer NOT NULL,
    titles jsonb NOT NULL,
    import_tag character varying(64),
    geometry jsonb NOT NULL,
    external_url character varying(200),
    stroke_color character varying(255),
    stroke_width double precision,
    fill_color character varying(255),
    show_label boolean NOT NULL,
    show_geometry boolean NOT NULL,
    interactive boolean NOT NULL,
    point_icon character varying(255),
    extra_data jsonb,
    level_id integer NOT NULL,
    overlay_id integer NOT NULL,
    fill_opacity double precision,
    stroke_opacity double precision
);


--
-- Name: mapdata_dataoverlayfeature_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_dataoverlayfeature ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_dataoverlayfeature_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_door; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_door (
    id integer NOT NULL,
    geometry jsonb NOT NULL,
    access_restriction_id integer,
    level_id integer NOT NULL,
    import_tag character varying(64),
    name character varying(50),
    todo boolean NOT NULL
);


--
-- Name: mapdata_door_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_door ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_door_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_dynamiclocation; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_dynamiclocation (
    locationslug_ptr_id integer NOT NULL,
    titles jsonb NOT NULL,
    can_search boolean NOT NULL,
    can_describe boolean NOT NULL,
    icon character varying(32),
    label_overrides jsonb NOT NULL,
    position_secret character varying(32),
    access_restriction_id integer,
    label_settings_id integer,
    external_url character varying(200),
    import_block_data boolean NOT NULL,
    import_block_geom boolean NOT NULL,
    load_group_display_id integer
);


--
-- Name: mapdata_dynamiclocation_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_dynamiclocation_groups (
    id integer NOT NULL,
    dynamiclocation_id integer NOT NULL,
    locationgroup_id integer NOT NULL
);


--
-- Name: mapdata_dynamiclocation_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_dynamiclocation_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_dynamiclocation_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_graphedge; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_graphedge (
    id integer NOT NULL,
    access_restriction_id integer,
    from_node_id integer NOT NULL,
    to_node_id integer NOT NULL,
    waytype_id integer
);


--
-- Name: mapdata_graphedge_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_graphedge ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_graphedge_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_graphnode; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_graphnode (
    id integer NOT NULL,
    geometry jsonb NOT NULL,
    space_id integer NOT NULL,
    import_tag character varying(64)
);


--
-- Name: mapdata_graphnode_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_graphnode ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_graphnode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_groundaltitude; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_groundaltitude (
    id integer NOT NULL,
    name character varying(70) NOT NULL,
    altitude numeric(6,2) NOT NULL
);


--
-- Name: mapdata_groundaltitude_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_groundaltitude ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_groundaltitude_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_hole; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_hole (
    id integer NOT NULL,
    geometry jsonb NOT NULL,
    space_id integer NOT NULL,
    import_tag character varying(64)
);


--
-- Name: mapdata_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_hole ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_hole_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_labelsettings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_labelsettings (
    id integer NOT NULL,
    titles jsonb NOT NULL,
    min_zoom numeric(3,1) NOT NULL,
    max_zoom numeric(3,1) NOT NULL,
    font_size integer NOT NULL
);


--
-- Name: mapdata_labelsettings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_labelsettings ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_labelsettings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_leavedescription; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_leavedescription (
    id integer NOT NULL,
    descriptions jsonb NOT NULL,
    space_id integer NOT NULL,
    target_space_id integer NOT NULL
);


--
-- Name: mapdata_leavedescription_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_leavedescription ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_leavedescription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_level; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_level (
    locationslug_ptr_id integer NOT NULL,
    titles jsonb NOT NULL,
    can_search boolean NOT NULL,
    can_describe boolean NOT NULL,
    base_altitude numeric(6,2) NOT NULL,
    default_height numeric(6,2) NOT NULL,
    door_height numeric(6,2) NOT NULL,
    short_label character varying(20) NOT NULL,
    access_restriction_id integer,
    on_top_of_id integer,
    icon character varying(32),
    label_overrides jsonb NOT NULL,
    label_settings_id integer,
    external_url character varying(200),
    import_block_data boolean NOT NULL,
    import_block_geom boolean NOT NULL,
    intermediate boolean NOT NULL,
    level_index character varying(20) NOT NULL,
    load_group_display_id integer
);


--
-- Name: mapdata_level_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_level_groups (
    id integer NOT NULL,
    level_id integer NOT NULL,
    locationgroup_id integer NOT NULL
);


--
-- Name: mapdata_level_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_level_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_level_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_lineobstacle; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_lineobstacle (
    id integer NOT NULL,
    geometry jsonb NOT NULL,
    width numeric(4,2) NOT NULL,
    height numeric(6,2) NOT NULL,
    space_id integer NOT NULL,
    import_tag character varying(64),
    altitude numeric(6,2) NOT NULL,
    group_id integer
);


--
-- Name: mapdata_lineobstacle_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_lineobstacle ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_lineobstacle_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_loadgroup; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_loadgroup (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


--
-- Name: mapdata_loadgroup_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_loadgroup ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_loadgroup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_locationgroup; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_locationgroup (
    locationslug_ptr_id integer NOT NULL,
    titles jsonb NOT NULL,
    can_search boolean NOT NULL,
    can_describe boolean NOT NULL,
    priority integer NOT NULL,
    color character varying(32),
    access_restriction_id integer,
    category_id integer NOT NULL,
    icon character varying(32),
    hierarchy integer NOT NULL,
    label_settings_id integer,
    hub_import_type character varying(100),
    descriptions jsonb NOT NULL,
    can_report_missing character varying(16) NOT NULL,
    report_help_texts jsonb NOT NULL,
    in_legend boolean NOT NULL,
    can_report_mistake character varying(16) NOT NULL,
    external_url character varying(200),
    external_url_labels jsonb NOT NULL,
    load_group_contribute_id integer
);


--
-- Name: mapdata_locationgroupcategory; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_locationgroupcategory (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    single boolean NOT NULL,
    titles jsonb NOT NULL,
    titles_plural jsonb NOT NULL,
    allow_levels boolean NOT NULL,
    allow_spaces boolean NOT NULL,
    allow_areas boolean NOT NULL,
    allow_pois boolean NOT NULL,
    priority integer NOT NULL,
    help_texts jsonb NOT NULL,
    allow_dynamic_locations boolean NOT NULL
);


--
-- Name: mapdata_locationgroupcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_locationgroupcategory ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_locationgroupcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_locationredirect; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_locationredirect (
    locationslug_ptr_id integer NOT NULL,
    target_id integer NOT NULL
);


--
-- Name: mapdata_locationslug; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_locationslug (
    id integer NOT NULL,
    slug character varying(50)
);


--
-- Name: mapdata_locationslug_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_locationslug ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_locationslug_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_mapupdate; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_mapupdate (
    id integer NOT NULL,
    datetime timestamp with time zone NOT NULL,
    type character varying(32) NOT NULL,
    processed boolean NOT NULL,
    geometries_changed boolean NOT NULL,
    user_id integer
);


--
-- Name: mapdata_mapupdate_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_mapupdate ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_mapupdate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_obstacle; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_obstacle (
    id integer NOT NULL,
    geometry jsonb NOT NULL,
    height numeric(6,2) NOT NULL,
    space_id integer NOT NULL,
    import_tag character varying(64),
    altitude numeric(6,2) NOT NULL,
    group_id integer
);


--
-- Name: mapdata_obstacle_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_obstacle ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_obstacle_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_obstaclegroup; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_obstaclegroup (
    id integer NOT NULL,
    titles jsonb NOT NULL,
    color character varying(32),
    in_legend boolean NOT NULL
);


--
-- Name: mapdata_obstaclegroup_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_obstaclegroup ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_obstaclegroup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_poi; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_poi (
    locationslug_ptr_id integer NOT NULL,
    titles jsonb NOT NULL,
    can_search boolean NOT NULL,
    can_describe boolean NOT NULL,
    geometry jsonb NOT NULL,
    access_restriction_id integer,
    space_id integer NOT NULL,
    import_tag character varying(64),
    icon character varying(32),
    label_overrides jsonb NOT NULL,
    label_settings_id integer,
    external_url character varying(200),
    import_block_data boolean NOT NULL,
    import_block_geom boolean NOT NULL,
    load_group_display_id integer
);


--
-- Name: mapdata_poi_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_poi_groups (
    id integer NOT NULL,
    poi_id integer NOT NULL,
    locationgroup_id integer NOT NULL
);


--
-- Name: mapdata_poi_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_poi_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_poi_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_position; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_position (
    id integer NOT NULL,
    name character varying(32) NOT NULL,
    secret character varying(32) NOT NULL,
    owner_id integer NOT NULL,
    coordinates_id character varying(48),
    last_coordinates_update timestamp with time zone,
    timeout smallint NOT NULL,
    short_name character varying(2) NOT NULL,
    CONSTRAINT mapdata_position_timeout_check CHECK ((timeout >= 0))
);


--
-- Name: mapdata_position_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_position ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_position_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_ramp; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_ramp (
    id integer NOT NULL,
    geometry jsonb NOT NULL,
    space_id integer NOT NULL,
    import_tag character varying(64)
);


--
-- Name: mapdata_ramp_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_ramp ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_ramp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_rangingbeacon; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_rangingbeacon (
    id integer NOT NULL,
    import_tag character varying(64),
    geometry jsonb NOT NULL,
    altitude numeric(6,2) NOT NULL,
    comment text,
    space_id integer NOT NULL,
    bluetooth_address character varying(17),
    ibeacon_major integer,
    ibeacon_minor integer,
    ibeacon_uuid uuid,
    node_number smallint,
    uwb_address character varying(23),
    altitude_quest boolean NOT NULL,
    addresses jsonb NOT NULL,
    ap_name character varying(32),
    beacon_type character varying(16),
    max_observed_num_clients integer NOT NULL,
    num_clients integer NOT NULL,
    CONSTRAINT mapdata_rangingbeacon_ibeacon_major_check CHECK ((ibeacon_major >= 0)),
    CONSTRAINT mapdata_rangingbeacon_ibeacon_minor_check CHECK ((ibeacon_minor >= 0)),
    CONSTRAINT mapdata_rangingbeacon_node_number_check CHECK ((node_number >= 0))
);


--
-- Name: mapdata_rangingbeacon_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_rangingbeacon ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_rangingbeacon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_report; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_report (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    category character varying(20) NOT NULL,
    open boolean NOT NULL,
    last_update timestamp with time zone NOT NULL,
    title character varying(100) NOT NULL,
    description text NOT NULL,
    coordinates_id character varying(48),
    origin_id character varying(48),
    destination_id character varying(48),
    route_options character varying(128),
    titles jsonb NOT NULL,
    secret character varying(32) NOT NULL,
    assigned_to_id integer,
    author_id integer,
    location_id integer,
    import_tag character varying(256)
);


--
-- Name: mapdata_report_created_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_report_created_groups (
    id integer NOT NULL,
    report_id integer NOT NULL,
    locationgroup_id integer NOT NULL
);


--
-- Name: mapdata_report_created_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_report_created_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_report_created_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_report_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_report ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_reportupdate; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_reportupdate (
    id integer NOT NULL,
    datetime timestamp with time zone NOT NULL,
    open boolean,
    comment text NOT NULL,
    public boolean NOT NULL,
    assigned_to_id integer,
    author_id integer,
    report_id integer NOT NULL
);


--
-- Name: mapdata_reportupdate_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_reportupdate ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_reportupdate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_source; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_source (
    id integer NOT NULL,
    bottom numeric(6,2) NOT NULL,
    "left" numeric(6,2) NOT NULL,
    top numeric(6,2) NOT NULL,
    "right" numeric(6,2) NOT NULL,
    name character varying(50) NOT NULL,
    access_restriction_id integer
);


--
-- Name: mapdata_source_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_source ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_source_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_space; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_space (
    locationslug_ptr_id integer NOT NULL,
    titles jsonb NOT NULL,
    can_search boolean NOT NULL,
    can_describe boolean NOT NULL,
    geometry jsonb NOT NULL,
    height numeric(6,2),
    outside boolean NOT NULL,
    enter_description_i18n jsonb NOT NULL,
    base_mapdata_accessible boolean NOT NULL,
    access_restriction_id integer,
    level_id integer NOT NULL,
    import_tag character varying(64),
    icon character varying(32),
    label_overrides jsonb NOT NULL,
    label_settings_id integer,
    external_url character varying(200),
    import_block_data boolean NOT NULL,
    import_block_geom boolean NOT NULL,
    load_group_contribute_id integer,
    load_group_display_id integer,
    identifyable boolean,
    media_panel_done boolean NOT NULL
);


--
-- Name: mapdata_space_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_space_groups (
    id integer NOT NULL,
    space_id integer NOT NULL,
    locationgroup_id integer NOT NULL
);


--
-- Name: mapdata_space_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_space_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_space_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_stair; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_stair (
    id integer NOT NULL,
    geometry jsonb NOT NULL,
    space_id integer NOT NULL,
    import_tag character varying(64)
);


--
-- Name: mapdata_stair_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_stair ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_stair_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_theme; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_theme (
    id integer NOT NULL,
    titles jsonb NOT NULL,
    description text NOT NULL,
    public boolean NOT NULL,
    color_background character varying(32) NOT NULL,
    color_wall_fill character varying(32) NOT NULL,
    color_wall_border character varying(32) NOT NULL,
    color_door_fill character varying(32) NOT NULL,
    color_ground_fill character varying(32) NOT NULL,
    color_obstacles_default_fill character varying(32) NOT NULL,
    color_obstacles_default_border character varying(32) NOT NULL,
    last_updated timestamp with time zone NOT NULL,
    color_css_grid character varying(32) NOT NULL,
    color_css_header_background character varying(32) NOT NULL,
    color_css_header_text character varying(32) NOT NULL,
    color_css_header_text_hover character varying(32) NOT NULL,
    color_css_initial character varying(32) NOT NULL,
    color_css_modal_backdrop character varying(32) NOT NULL,
    color_css_overlay_background character varying(32) NOT NULL,
    color_css_primary character varying(32) NOT NULL,
    color_css_quaternary character varying(32) NOT NULL,
    color_css_quinary character varying(32) NOT NULL,
    color_css_route_dots_shadow character varying(32) NOT NULL,
    color_css_secondary character varying(32) NOT NULL,
    color_css_shadow character varying(32) NOT NULL,
    color_css_tertiary character varying(32) NOT NULL,
    color_logo text NOT NULL,
    dark boolean NOT NULL,
    "default" boolean NOT NULL,
    extra_css text NOT NULL,
    funky boolean NOT NULL,
    high_contrast boolean NOT NULL,
    randomize_primary_color boolean NOT NULL,
    icon_path character varying(255) NOT NULL,
    leaflet_marker_config text NOT NULL
);


--
-- Name: mapdata_theme_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_theme ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_theme_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_themelocationgroupbackgroundcolor; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_themelocationgroupbackgroundcolor (
    id integer NOT NULL,
    fill_color character varying(32),
    border_color character varying(32),
    location_group_id integer,
    theme_id integer NOT NULL
);


--
-- Name: mapdata_themelocationgroupbackgroundcolor_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_themelocationgroupbackgroundcolor ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_themelocationgroupbackgroundcolor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_themeobstaclegroupbackgroundcolor; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_themeobstaclegroupbackgroundcolor (
    id integer NOT NULL,
    fill_color character varying(32),
    border_color character varying(32),
    obstacle_group_id integer,
    theme_id integer NOT NULL
);


--
-- Name: mapdata_themeobstaclegroupbackgroundcolor_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_themeobstaclegroupbackgroundcolor ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_themeobstaclegroupbackgroundcolor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_waytype; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mapdata_waytype (
    id integer NOT NULL,
    titles jsonb NOT NULL,
    titles_plural jsonb NOT NULL,
    join_edges boolean NOT NULL,
    up_separate boolean NOT NULL,
    walk boolean NOT NULL,
    color character varying(32) NOT NULL,
    icon_name character varying(32),
    extra_seconds smallint NOT NULL,
    speed numeric(3,1) NOT NULL,
    description_i18n jsonb NOT NULL,
    speed_up numeric(3,1) NOT NULL,
    description_up_i18n jsonb NOT NULL,
    level_change_description_i18n jsonb NOT NULL,
    avoid_by_default boolean NOT NULL,
    CONSTRAINT mapdata_waytype_extra_seconds_check CHECK ((extra_seconds >= 0))
);


--
-- Name: mapdata_waytype_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_waytype ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_waytype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mapdata_wifimeasurement_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mapdata_beaconmeasurement ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mapdata_wifimeasurement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mesh_firmwarebuild; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mesh_firmwarebuild (
    id integer NOT NULL,
    variant character varying(64) NOT NULL,
    chip smallint NOT NULL,
    sha256_hash character varying(64) NOT NULL,
    project_description jsonb NOT NULL,
    "binary" character varying(100),
    version_id integer NOT NULL
);


--
-- Name: mesh_firmwarebuild_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mesh_firmwarebuild ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mesh_firmwarebuild_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mesh_firmwarebuildboard; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mesh_firmwarebuildboard (
    id integer NOT NULL,
    board character varying(32) NOT NULL,
    build_id integer NOT NULL
);


--
-- Name: mesh_firmwarebuildboard_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mesh_firmwarebuildboard ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mesh_firmwarebuildboard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mesh_firmwareversion; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mesh_firmwareversion (
    id integer NOT NULL,
    project_name character varying(32) NOT NULL,
    version character varying(32) NOT NULL,
    idf_version character varying(32) NOT NULL,
    created timestamp with time zone NOT NULL,
    uploader_id integer
);


--
-- Name: mesh_firmwareversion_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mesh_firmwareversion ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mesh_firmwareversion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mesh_meshnode; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mesh_meshnode (
    address character varying(17) NOT NULL,
    first_seen timestamp with time zone NOT NULL,
    last_signin timestamp with time zone,
    uplink_id integer,
    upstream_id character varying(17)
);


--
-- Name: mesh_meshuplink; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mesh_meshuplink (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    started timestamp with time zone NOT NULL,
    last_ping timestamp with time zone NOT NULL,
    end_reason character varying(16),
    node_id character varying(17) NOT NULL
);


--
-- Name: mesh_meshuplink_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mesh_meshuplink ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mesh_meshuplink_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mesh_nodemessage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mesh_nodemessage (
    id integer NOT NULL,
    datetime timestamp with time zone NOT NULL,
    data jsonb NOT NULL,
    src_node_id character varying(17) NOT NULL,
    message_type character varying(24) NOT NULL,
    uplink_id integer NOT NULL
);


--
-- Name: mesh_nodemessage_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mesh_nodemessage ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mesh_nodemessage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mesh_otaupdate; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mesh_otaupdate (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    build_id integer NOT NULL
);


--
-- Name: mesh_otaupdate_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mesh_otaupdate ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mesh_otaupdate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: mesh_otaupdaterecipient; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mesh_otaupdaterecipient (
    id integer NOT NULL,
    node_id character varying(17) NOT NULL,
    update_id integer NOT NULL,
    status character varying(10) NOT NULL
);


--
-- Name: mesh_otaupdaterecipient_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.mesh_otaupdaterecipient ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.mesh_otaupdaterecipient_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: routing_routeoptions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.routing_routeoptions (
    user_id integer NOT NULL,
    data jsonb NOT NULL
);


--
-- Name: site_announcement; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.site_announcement (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    active_until timestamp with time zone,
    active boolean NOT NULL,
    author_id integer,
    text_i18n jsonb NOT NULL
);


--
-- Name: site_announcement_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.site_announcement ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.site_announcement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: site_siteupdate; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.site_siteupdate (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL
);


--
-- Name: site_siteupdate_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.site_siteupdate ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.site_siteupdate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: api_logintoken; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.api_logintoken (id, secret, session_auth_hash, user_id) FROM stdin;
\.


--
-- Data for Name: api_secret; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.api_secret (id, name, created, api_secret, readonly, scope_grant_permissions, scope_editor, scope_mesh, valid_until, user_id, scope_load) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add login tokens	7	add_logintoken
26	Can change login tokens	7	change_logintoken
27	Can delete login tokens	7	delete_logintoken
28	Can view login tokens	7	view_logintoken
29	Can add API secret	8	add_secret
30	Can change API secret	8	change_secret
31	Can delete API secret	8	delete_secret
32	Can view API secret	8	view_secret
33	Can add Access Permission	9	add_accesspermission
34	Can change Access Permission	9	change_accesspermission
35	Can delete Access Permission	9	delete_accesspermission
36	Can view Access Permission	9	view_accesspermission
37	Can add Access Permission Token	10	add_accesspermissiontoken
38	Can change Access Permission Token	10	change_accesspermissiontoken
39	Can delete Access Permission Token	10	delete_accesspermissiontoken
40	Can view Access Permission Token	10	view_accesspermissiontoken
41	Can add Access Restriction	11	add_accessrestriction
42	Can change Access Restriction	11	change_accessrestriction
43	Can delete Access Restriction	11	delete_accessrestriction
44	Can view Access Restriction	11	view_accessrestriction
45	Can add Access Restriction Group	12	add_accessrestrictiongroup
46	Can change Access Restriction Group	12	change_accessrestrictiongroup
47	Can delete Access Restriction Group	12	delete_accessrestrictiongroup
48	Can view Access Restriction Group	12	view_accessrestrictiongroup
49	Can add Altitude Area	13	add_altitudearea
50	Can change Altitude Area	13	change_altitudearea
51	Can delete Altitude Area	13	delete_altitudearea
52	Can view Altitude Area	13	view_altitudearea
53	Can add Altitude Marker	14	add_altitudemarker
54	Can change Altitude Marker	14	change_altitudemarker
55	Can delete Altitude Marker	14	delete_altitudemarker
56	Can view Altitude Marker	14	view_altitudemarker
57	Can add Building	15	add_building
58	Can change Building	15	change_building
59	Can delete Building	15	delete_building
60	Can view Building	15	view_building
61	Can add Column	16	add_column
62	Can change Column	16	change_column
63	Can delete Column	16	delete_column
64	Can view Column	16	view_column
65	Can add Cross description	17	add_crossdescription
66	Can change Cross description	17	change_crossdescription
67	Can delete Cross description	17	delete_crossdescription
68	Can view Cross description	17	view_crossdescription
69	Can add Door	18	add_door
70	Can change Door	18	change_door
71	Can delete Door	18	delete_door
72	Can view Door	18	view_door
73	Can add Graph Edge	19	add_graphedge
74	Can change Graph Edge	19	change_graphedge
75	Can delete Graph Edge	19	delete_graphedge
76	Can view Graph Edge	19	view_graphedge
77	Can add Graph Node	20	add_graphnode
78	Can change Graph Node	20	change_graphnode
79	Can delete Graph Node	20	delete_graphnode
80	Can view Graph Node	20	view_graphnode
81	Can add Hole	21	add_hole
82	Can change Hole	21	change_hole
83	Can delete Hole	21	delete_hole
84	Can view Hole	21	view_hole
85	Can add Leave description	22	add_leavedescription
86	Can change Leave description	22	change_leavedescription
87	Can delete Leave description	22	delete_leavedescription
88	Can view Leave description	22	view_leavedescription
89	Can add Line Obstacle	23	add_lineobstacle
90	Can change Line Obstacle	23	change_lineobstacle
91	Can delete Line Obstacle	23	delete_lineobstacle
92	Can view Line Obstacle	23	view_lineobstacle
93	Can add Location Group Category	24	add_locationgroupcategory
94	Can change Location Group Category	24	change_locationgroupcategory
95	Can delete Location Group Category	24	delete_locationgroupcategory
96	Can view Location Group Category	24	view_locationgroupcategory
97	Can add Location with Slug	25	add_locationslug
98	Can change Location with Slug	25	change_locationslug
99	Can delete Location with Slug	25	delete_locationslug
100	Can view Location with Slug	25	view_locationslug
101	Can add Map update	26	add_mapupdate
102	Can change Map update	26	change_mapupdate
103	Can delete Map update	26	delete_mapupdate
104	Can view Map update	26	view_mapupdate
105	Can add Obstacle	27	add_obstacle
106	Can change Obstacle	27	change_obstacle
107	Can delete Obstacle	27	delete_obstacle
108	Can view Obstacle	27	view_obstacle
109	Can add Ramp	28	add_ramp
110	Can change Ramp	28	change_ramp
111	Can delete Ramp	28	delete_ramp
112	Can view Ramp	28	view_ramp
113	Can add Source	29	add_source
114	Can change Source	29	change_source
115	Can delete Source	29	delete_source
116	Can view Source	29	view_source
117	Can add Stair	30	add_stair
118	Can change Stair	30	change_stair
119	Can delete Stair	30	delete_stair
120	Can view Stair	30	view_stair
121	Can add Way Type	31	add_waytype
122	Can change Way Type	31	change_waytype
123	Can delete Way Type	31	delete_waytype
124	Can view Way Type	31	view_waytype
125	Can add Area	32	add_area
126	Can change Area	32	change_area
127	Can delete Area	32	delete_area
128	Can view Area	32	view_area
129	Can add Level	33	add_level
130	Can change Level	33	change_level
131	Can delete Level	33	delete_level
132	Can view Level	33	view_level
133	Can add Location Group	34	add_locationgroup
134	Can change Location Group	34	change_locationgroup
135	Can delete Location Group	34	delete_locationgroup
136	Can view Location Group	34	view_locationgroup
137	Can add location redirect	35	add_locationredirect
138	Can change location redirect	35	change_locationredirect
139	Can delete location redirect	35	delete_locationredirect
140	Can view location redirect	35	view_locationredirect
141	Can add Point of Interest	36	add_poi
142	Can change Point of Interest	36	change_poi
143	Can delete Point of Interest	36	delete_poi
144	Can view Point of Interest	36	view_poi
145	Can add Space	37	add_space
146	Can change Space	37	change_space
147	Can delete Space	37	delete_space
148	Can view Space	37	view_space
149	Can add Label Settings	38	add_labelsettings
150	Can change Label Settings	38	change_labelsettings
151	Can delete Label Settings	38	delete_labelsettings
152	Can view Label Settings	38	view_labelsettings
153	Can add Report	39	add_report
154	Can change Report	39	change_report
155	Can delete Report	39	delete_report
156	Can view Report	39	view_report
157	Can add Report update	40	add_reportupdate
158	Can change Report update	40	change_reportupdate
159	Can delete Report update	40	delete_reportupdate
160	Can view Report update	40	view_reportupdate
161	Can add Dynamic position	41	add_position
162	Can change Dynamic position	41	change_position
163	Can delete Dynamic position	41	delete_position
164	Can view Dynamic position	41	view_position
165	Can add Dynamic location	42	add_dynamiclocation
166	Can change Dynamic location	42	change_dynamiclocation
167	Can delete Dynamic location	42	delete_dynamiclocation
168	Can view Dynamic location	42	view_dynamiclocation
169	Can add Ranging beacon	43	add_rangingbeacon
170	Can change Ranging beacon	43	change_rangingbeacon
171	Can delete Ranging beacon	43	delete_rangingbeacon
172	Can view Ranging beacon	43	view_rangingbeacon
173	Can add Ground Altitude	44	add_groundaltitude
174	Can change Ground Altitude	44	change_groundaltitude
175	Can delete Ground Altitude	44	delete_groundaltitude
176	Can view Ground Altitude	44	view_groundaltitude
177	Can add Obstacle Group	45	add_obstaclegroup
178	Can change Obstacle Group	45	change_obstaclegroup
179	Can delete Obstacle Group	45	delete_obstaclegroup
180	Can view Obstacle Group	45	view_obstaclegroup
181	Can add Theme	46	add_theme
182	Can change Theme	46	change_theme
183	Can delete Theme	46	delete_theme
184	Can view Theme	46	view_theme
185	Can add theme obstacle group background color	47	add_themeobstaclegroupbackgroundcolor
186	Can change theme obstacle group background color	47	change_themeobstaclegroupbackgroundcolor
187	Can delete theme obstacle group background color	47	delete_themeobstaclegroupbackgroundcolor
188	Can view theme obstacle group background color	47	view_themeobstaclegroupbackgroundcolor
189	Can add theme location group background color	48	add_themelocationgroupbackgroundcolor
190	Can change theme location group background color	48	change_themelocationgroupbackgroundcolor
191	Can delete theme location group background color	48	delete_themelocationgroupbackgroundcolor
192	Can view theme location group background color	48	view_themelocationgroupbackgroundcolor
193	Can add Beacon Measurement	49	add_beaconmeasurement
194	Can change Beacon Measurement	49	change_beaconmeasurement
195	Can delete Beacon Measurement	49	delete_beaconmeasurement
196	Can view Beacon Measurement	49	view_beaconmeasurement
197	Can add Route options	50	add_routeoptions
198	Can change Route options	50	change_routeoptions
199	Can delete Route options	50	delete_routeoptions
200	Can view Route options	50	view_routeoptions
201	Can add Announcement	51	add_announcement
202	Can change Announcement	51	change_announcement
203	Can delete Announcement	51	delete_announcement
204	Can view Announcement	51	view_announcement
205	Can add Site update	52	add_siteupdate
206	Can change Site update	52	change_siteupdate
207	Can delete Site update	52	delete_siteupdate
208	Can view Site update	52	view_siteupdate
209	Can add User Permissions	53	add_userpermissions
210	Can change User Permissions	53	change_userpermissions
211	Can delete User Permissions	53	delete_userpermissions
212	Can view User Permissions	53	view_userpermissions
213	Can add user space access	54	add_userspaceaccess
214	Can change user space access	54	change_userspaceaccess
215	Can delete user space access	54	delete_userspaceaccess
216	Can view user space access	54	view_userspaceaccess
217	Can add mesh node	55	add_meshnode
218	Can change mesh node	55	change_meshnode
219	Can delete mesh node	55	delete_meshnode
220	Can view mesh node	55	view_meshnode
221	Can add node message	56	add_nodemessage
222	Can change node message	56	change_nodemessage
223	Can delete node message	56	delete_nodemessage
224	Can view node message	56	view_nodemessage
225	Can add firmware build	57	add_firmwarebuild
226	Can change firmware build	57	change_firmwarebuild
227	Can delete firmware build	57	delete_firmwarebuild
228	Can view firmware build	57	view_firmwarebuild
229	Can add firmware build board	58	add_firmwarebuildboard
230	Can change firmware build board	58	change_firmwarebuildboard
231	Can delete firmware build board	58	delete_firmwarebuildboard
232	Can view firmware build board	58	view_firmwarebuildboard
233	Can add firmware version	59	add_firmwareversion
234	Can change firmware version	59	change_firmwareversion
235	Can delete firmware version	59	delete_firmwareversion
236	Can view firmware version	59	view_firmwareversion
237	Can add mesh uplink	60	add_meshuplink
238	Can change mesh uplink	60	change_meshuplink
239	Can delete mesh uplink	60	delete_meshuplink
240	Can view mesh uplink	60	view_meshuplink
241	Can add ota update	61	add_otaupdate
242	Can change ota update	61	change_otaupdate
243	Can delete ota update	61	delete_otaupdate
244	Can view ota update	61	view_otaupdate
245	Can add ota update recipient	62	add_otaupdaterecipient
246	Can change ota update recipient	62	change_otaupdaterecipient
247	Can delete ota update recipient	62	delete_otaupdaterecipient
248	Can view ota update recipient	62	view_otaupdaterecipient
249	Can add Changed object	63	add_changedobject
250	Can change Changed object	63	change_changedobject
251	Can delete Changed object	63	delete_changedobject
252	Can view Changed object	63	view_changedobject
253	Can add Change Set	64	add_changeset
254	Can change Change Set	64	change_changeset
255	Can delete Change Set	64	delete_changeset
256	Can view Change Set	64	view_changeset
257	Can add Change set update	65	add_changesetupdate
258	Can change Change set update	65	change_changesetupdate
259	Can delete Change set update	65	delete_changesetupdate
260	Can view Change set update	65	view_changesetupdate
261	Can add Access Permission SSO Grant	66	add_accesspermissionssogrant
262	Can change Access Permission SSO Grant	66	change_accesspermissionssogrant
263	Can delete Access Permission SSO Grant	66	delete_accesspermissionssogrant
264	Can view Access Permission SSO Grant	66	view_accesspermissionssogrant
265	Can add Data Overlay	67	add_dataoverlay
266	Can change Data Overlay	67	change_dataoverlay
267	Can delete Data Overlay	67	delete_dataoverlay
268	Can view Data Overlay	67	view_dataoverlay
269	Can add data overlay feature	68	add_dataoverlayfeature
270	Can change data overlay feature	68	change_dataoverlayfeature
271	Can delete data overlay feature	68	delete_dataoverlayfeature
272	Can view data overlay feature	68	view_dataoverlayfeature
273	Can add Load group	69	add_loadgroup
274	Can change Load group	69	change_loadgroup
275	Can delete Load group	69	delete_loadgroup
276	Can view Load group	69	view_loadgroup
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: control_userpermissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.control_userpermissions (user_id, review_changesets, direct_edit, grant_permissions, manage_announcements, grant_all_access, max_changeset_changes, base_mapdata_access, editor_access, grant_space_access, manage_map_updates, review_all_reports, mesh_control, grant_unlimited_access, nonpublic_themes, sources_access, view_users, quests, impolite_quests, passive_ap_name_scanning, can_write_load_data) FROM stdin;
\.


--
-- Data for Name: control_userpermissions_review_group_reports; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.control_userpermissions_review_group_reports (id, userpermissions_id, locationgroup_id) FROM stdin;
\.


--
-- Data for Name: control_userspaceaccess; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.control_userspaceaccess (id, can_edit, space_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	api	logintoken
8	api	secret
9	mapdata	accesspermission
10	mapdata	accesspermissiontoken
11	mapdata	accessrestriction
12	mapdata	accessrestrictiongroup
13	mapdata	altitudearea
14	mapdata	altitudemarker
15	mapdata	building
16	mapdata	column
17	mapdata	crossdescription
18	mapdata	door
19	mapdata	graphedge
20	mapdata	graphnode
21	mapdata	hole
22	mapdata	leavedescription
23	mapdata	lineobstacle
24	mapdata	locationgroupcategory
25	mapdata	locationslug
26	mapdata	mapupdate
27	mapdata	obstacle
28	mapdata	ramp
29	mapdata	source
30	mapdata	stair
31	mapdata	waytype
32	mapdata	area
33	mapdata	level
34	mapdata	locationgroup
35	mapdata	locationredirect
36	mapdata	poi
37	mapdata	space
38	mapdata	labelsettings
39	mapdata	report
40	mapdata	reportupdate
41	mapdata	position
42	mapdata	dynamiclocation
43	mapdata	rangingbeacon
44	mapdata	groundaltitude
45	mapdata	obstaclegroup
46	mapdata	theme
47	mapdata	themeobstaclegroupbackgroundcolor
48	mapdata	themelocationgroupbackgroundcolor
49	mapdata	beaconmeasurement
50	routing	routeoptions
51	site	announcement
52	site	siteupdate
53	control	userpermissions
54	control	userspaceaccess
55	mesh	meshnode
56	mesh	nodemessage
57	mesh	firmwarebuild
58	mesh	firmwarebuildboard
59	mesh	firmwareversion
60	mesh	meshuplink
61	mesh	otaupdate
62	mesh	otaupdaterecipient
63	editor	changedobject
64	editor	changeset
65	editor	changesetupdate
66	mapdata	accesspermissionssogrant
67	mapdata	dataoverlay
68	mapdata	dataoverlayfeature
69	mapdata	loadgroup
70	mapdata	cloneditemsync
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2024-08-27 09:57:42.723509+00
2	auth	0001_initial	2024-08-27 09:57:42.885499+00
3	admin	0001_initial	2024-08-27 09:57:42.927278+00
4	admin	0002_logentry_remove_auto_add	2024-08-27 09:57:42.939178+00
5	admin	0003_logentry_add_action_flag_choices	2024-08-27 09:57:42.951548+00
6	mapdata	0001_squashed_refactor_2017	2024-08-27 09:57:45.7437+00
7	mapdata	0002_locationredirect	2024-08-27 09:57:45.754826+00
8	mapdata	0003_space_outside	2024-08-27 09:57:45.758164+00
9	mapdata	0004_space_level_category_name	2024-08-27 09:57:45.761399+00
10	mapdata	0005_auto_20170527_1556	2024-08-27 09:57:45.764762+00
11	mapdata	0006_remove_section_name	2024-08-27 09:57:45.768032+00
12	mapdata	0007_assign_hole_space	2024-08-27 09:57:45.771276+00
13	mapdata	0008_auto_20170608_1317	2024-08-27 09:57:45.774513+00
14	mapdata	0009_column	2024-08-27 09:57:45.777869+00
15	mapdata	0010_on_top_of	2024-08-27 09:57:45.782128+00
16	mapdata	0011_outside_only_outside	2024-08-27 09:57:45.78627+00
17	mapdata	0012_rename_section_to_level	2024-08-27 09:57:45.79037+00
18	mapdata	0013_auto_20170618_1934	2024-08-27 09:57:45.794617+00
19	mapdata	0014_mapupdate	2024-08-27 09:57:45.798823+00
20	mapdata	0015_auto_20170706_1334	2024-08-27 09:57:45.803036+00
21	mapdata	0016_remove_source_image	2024-08-27 09:57:45.807201+00
22	mapdata	0017_point_to_poi	2024-08-27 09:57:45.811312+00
23	mapdata	0018_auto_20170708_1752	2024-08-27 09:57:45.814525+00
24	mapdata	0019_location_group_category	2024-08-27 09:57:45.817789+00
25	mapdata	0020_auto_20170710_1848	2024-08-27 09:57:45.821055+00
26	mapdata	0021_auto_20170710_1916	2024-08-27 09:57:45.824314+00
27	mapdata	0022_remove_space_category	2024-08-27 09:57:45.827552+00
28	mapdata	0023_auto_20170711_1741	2024-08-27 09:57:45.830785+00
29	mapdata	0024_remove_compiled_room_area	2024-08-27 09:57:45.834138+00
30	mapdata	0025_remove_area_stuffed	2024-08-27 09:57:45.838237+00
31	mapdata	0026_remove_specificlocation_color	2024-08-27 09:57:45.84236+00
32	mapdata	0027_access_restriction	2024-08-27 09:57:45.84653+00
33	mapdata	0028_door_access_restriction	2024-08-27 09:57:45.850662+00
34	mapdata	0029_auto_20170714_1519	2024-08-27 09:57:45.854964+00
35	mapdata	0030_altitudes	2024-08-27 09:57:45.859161+00
36	mapdata	0031_auto_20170805_1647	2024-08-27 09:57:45.863259+00
37	mapdata	0032_remove_graphnode_space_transfer	2024-08-27 09:57:45.86736+00
38	mapdata	0033_auto_20170807_1423	2024-08-27 09:57:45.870573+00
39	mapdata	0034_auto_20170807_1523	2024-08-27 09:57:45.873837+00
40	mapdata	0035_auto_20170916_1216	2024-08-27 09:57:45.877044+00
41	mapdata	0036_geometry_bounds	2024-08-27 09:57:45.880205+00
42	mapdata	0037_level_geoms_cache	2024-08-27 09:57:45.883408+00
43	mapdata	0038_level_render_data	2024-08-27 09:57:45.886609+00
44	mapdata	0039_auto_20171024_2011	2024-08-27 09:57:45.889873+00
45	mapdata	0040_access_permissions	2024-08-27 09:57:45.893103+00
46	mapdata	0041_level_short_label	2024-08-27 09:57:45.897411+00
47	mapdata	0042_auto_20171031_1507	2024-08-27 09:57:45.901581+00
48	mapdata	0043_auto_20171110_1451	2024-08-27 09:57:45.90589+00
49	mapdata	0044_mapupdate_processed	2024-08-27 09:57:45.910066+00
50	mapdata	0045_level_door_height	2024-08-27 09:57:45.914284+00
51	mapdata	0046_remove_level_render_data	2024-08-27 09:57:45.918428+00
52	mapdata	0047_remove_mapupdate_changed_geometries	2024-08-27 09:57:45.922651+00
53	mapdata	0048_ramp	2024-08-27 09:57:45.926913+00
54	mapdata	0049_altitude_area_ramp	2024-08-27 09:57:45.930145+00
55	mapdata	0050_remove_geometry_bounds	2024-08-27 09:57:45.93336+00
56	mapdata	0051_auto_20171125_1241	2024-08-27 09:57:45.936629+00
57	mapdata	0052_auto_20171125_1335	2024-08-27 09:57:45.939862+00
58	mapdata	0053_i18nfield	2024-08-27 09:57:45.943067+00
59	mapdata	0054_title_plural	2024-08-27 09:57:45.94637+00
60	mapdata	0055_grant_access_permissions	2024-08-27 09:57:45.94959+00
61	mapdata	0056_accesspermissiontoken	2024-08-27 09:57:45.952916+00
62	mapdata	0057_waytype_fields	2024-08-27 09:57:45.957066+00
63	mapdata	0058_wifimeasurement	2024-08-27 09:57:45.961135+00
64	mapdata	0059_multiple_accesspermissions	2024-08-27 09:57:45.965397+00
65	mapdata	0060_access_permission_id	2024-08-27 09:57:45.969543+00
66	mapdata	0061_space_based_route_descriptions	2024-08-27 09:57:45.973869+00
67	mapdata	0062_typos	2024-08-27 09:57:45.978108+00
68	mapdata	0063_descriptions_unique_together	2024-08-27 09:57:45.982313+00
69	mapdata	0064_access_permission_unique_key	2024-08-27 09:57:45.986325+00
70	mapdata	0065_access_restriction_group	2024-08-27 09:57:45.989467+00
71	mapdata	0066_area_slow_down_factor	2024-08-27 09:57:45.992632+00
72	mapdata	0067_space_enter_description	2024-08-27 09:57:45.995857+00
73	mapdata	0068_waytype_level_change_description	2024-08-27 09:57:45.998946+00
74	mapdata	0069_mapupdate_geometries_changed	2024-08-27 09:57:46.002113+00
75	mapdata	0070_auto_20180918_1736	2024-08-27 09:57:46.005299+00
76	mapdata	0071_space_base_mapdata_accessible	2024-08-27 09:57:46.008532+00
77	mapdata	0002_fix_broken_spaces	2024-08-27 09:57:46.063211+00
78	mapdata	0003_column_access_restriction	2024-08-27 09:57:46.126575+00
79	mapdata	0004_mapupdate_types	2024-08-27 09:57:46.143054+00
80	mapdata	0005_geometry_import_tag	2024-08-27 09:57:46.575212+00
81	mapdata	0006_location_icon	2024-08-27 09:57:46.733351+00
82	mapdata	0007_location_group_help_text	2024-08-27 09:57:46.897828+00
83	mapdata	0008_validate_slug	2024-08-27 09:57:46.920409+00
84	mapdata	0072_make_wifi_measurement_author_nullable	2024-08-27 09:57:46.997022+00
85	mapdata	0073_locationgroup_hierarchy	2024-08-27 09:57:47.034252+00
86	mapdata	0074_show_labels	2024-08-27 09:57:47.20163+00
87	mapdata	0075_label_settings	2024-08-27 09:57:47.806179+00
88	mapdata	0076_obstacle_color	2024-08-27 09:57:48.251462+00
89	mapdata	0077_obstacle_altitude	2024-08-27 09:57:48.319484+00
90	mapdata	0078_reports	2024-08-27 09:57:48.733881+00
91	mapdata	0079_auto_20191224_1858	2024-08-27 09:57:48.879595+00
92	mapdata	0080_auto_20191224_2203	2024-08-27 09:57:48.942036+00
93	mapdata	0081_auto_20191225_1015	2024-08-27 09:57:49.233043+00
94	mapdata	0082_dynamiclocation_position	2024-08-27 09:57:49.454565+00
95	mapdata	0083_auto_20191227_1642	2024-08-27 09:57:49.53827+00
96	mapdata	0084_position_timeout	2024-08-27 09:57:49.562811+00
97	mapdata	0085_locationgroupcategory_allow_dynamic_locations	2024-08-27 09:57:49.581141+00
98	mapdata	0086_django_4_0	2024-08-27 09:57:53.433557+00
99	contenttypes	0002_remove_content_type_name	2024-08-27 09:57:53.5103+00
100	auth	0002_alter_permission_name_max_length	2024-08-27 09:57:53.575171+00
101	auth	0003_alter_user_email_max_length	2024-08-27 09:57:53.599379+00
102	auth	0004_alter_user_username_opts	2024-08-27 09:57:53.623728+00
103	auth	0005_alter_user_last_login_null	2024-08-27 09:57:53.647635+00
104	auth	0006_require_contenttypes_0002	2024-08-27 09:57:53.651058+00
105	auth	0007_alter_validators_add_error_messages	2024-08-27 09:57:53.672943+00
106	auth	0008_alter_user_username_max_length	2024-08-27 09:57:53.703935+00
107	control	0001_initial	2024-08-27 09:57:53.777867+00
108	control	0002_userpermissions_access_all	2024-08-27 09:57:53.802912+00
109	control	0003_auto_20171210_1452	2024-08-27 09:57:53.827703+00
110	control	0004_more_user_permissions	2024-08-27 09:57:53.893158+00
111	control	0005_editor_mapdata_permissions	2024-08-27 09:57:53.942208+00
112	control	0006_user_space_access	2024-08-27 09:57:54.104337+00
113	control	0007_userpermissions_manage_map_updates	2024-08-27 09:57:54.242443+00
114	control	0008_userpermissions_reports	2024-08-27 09:57:54.36221+00
115	control	0009_django_4_0	2024-08-27 09:57:54.607086+00
116	control	0010_userpermissions_mesh_control	2024-08-27 09:57:54.658528+00
117	api	0001_initial	2024-08-27 09:57:54.737125+00
118	api	0002_django_4_0	2024-08-27 09:57:54.802191+00
119	api	0003_rename_token_logintoken_secret	2024-08-27 09:57:55.102916+00
120	api	0004_alter_secret_name	2024-08-27 09:57:55.132302+00
121	auth	0009_alter_user_last_name_max_length	2024-08-27 09:57:55.16147+00
122	auth	0010_alter_group_name_max_length	2024-08-27 09:57:55.350028+00
123	auth	0011_update_proxy_permissions	2024-08-27 09:57:55.41671+00
124	auth	0012_alter_user_first_name_max_length	2024-08-27 09:57:55.444353+00
125	control	0011_remove_userpermissions_api_secret	2024-08-27 09:57:55.492785+00
126	control	0012_userpermissions_grant_unlimited_access	2024-08-27 09:57:55.541242+00
127	control	0013_userpermissions_nonpublic_themes	2024-08-27 09:57:55.592623+00
128	control	0014_userpermissions_sources_access	2024-08-27 09:57:55.644732+00
129	editor	0001_initial	2024-08-27 09:57:56.597311+00
130	editor	0002_auto_20170612_1615	2024-08-27 09:57:56.601125+00
131	editor	0003_auto_20170618_1942	2024-08-27 09:57:56.604448+00
132	editor	0004_auto_20170620_0934	2024-08-27 09:57:56.607744+00
133	editor	0005_auto_20170627_0027	2024-08-27 09:57:56.610979+00
134	editor	0006_auto_20170629_1222	2024-08-27 09:57:56.614322+00
135	editor	0007_auto_20170629_1327	2024-08-27 09:57:56.618568+00
136	editor	0008_auto_20170629_1450	2024-08-27 09:57:56.622841+00
137	editor	0009_auto_20170701_1218	2024-08-27 09:57:56.627082+00
138	editor	0010_auto_20170704_1431	2024-08-27 09:57:56.631272+00
139	editor	0011_auto_20170704_1640	2024-08-27 09:57:56.635557+00
140	editor	0012_remove_changeset_session_id	2024-08-27 09:57:56.63978+00
141	editor	0013_remove_changesetupdate_session_user	2024-08-27 09:57:56.643985+00
142	editor	0014_last_update_foreign_key	2024-08-27 09:57:56.64818+00
143	editor	0015_changeset_last_state_update	2024-08-27 09:57:56.65161+00
144	editor	0016_auto_20170705_1938	2024-08-27 09:57:56.655023+00
145	editor	0017_changeset_map_update	2024-08-27 09:57:56.658389+00
146	editor	0018_changeset_last_cleaned_with	2024-08-27 09:57:56.661636+00
147	editor	0019_permissions	2024-08-27 09:57:56.664991+00
148	editor	0020_remove_permissions	2024-08-27 09:57:56.668251+00
149	editor	0021_auto_20180918_1736	2024-08-27 09:57:56.671549+00
150	editor	0002_django_4_0	2024-08-27 09:57:57.034555+00
151	editor	0003_changedobject_json_encoder	2024-08-27 09:57:57.054668+00
152	mapdata	0087_rangingbeacon	2024-08-27 09:57:57.163656+00
153	mapdata	0088_remove_position_api_secret	2024-08-27 09:57:57.195682+00
154	mapdata	0089_groundaltitude	2024-08-27 09:57:57.485463+00
155	mapdata	0090_alter_report_author	2024-08-27 09:57:57.558095+00
156	mapdata	0091_area_main_point	2024-08-27 09:57:57.608702+00
157	mapdata	0092_accesspermission_by_group	2024-08-27 09:57:57.94174+00
158	mapdata	0093_public_accessrestriction	2024-08-27 09:57:57.997669+00
159	mapdata	0094_hub_import_prepare	2024-08-27 09:57:58.272683+00
160	mapdata	0095_import_block	2024-08-27 09:57:58.851733+00
161	mapdata	0095_accesspermission_for_session	2024-08-27 09:57:59.045496+00
162	mapdata	0096_merge_20231225_2216	2024-08-27 09:57:59.048283+00
163	mapdata	0097_longer_import_tag	2024-08-27 09:57:59.686923+00
164	mapdata	0098_report_import_tag	2024-08-27 09:57:59.740631+00
165	mapdata	0099_theming	2024-08-27 09:58:00.180053+00
166	mapdata	0100_obstaclegroup_color_data	2024-08-27 09:58:00.261418+00
167	mapdata	0101_remove_obstacle_color	2024-08-27 09:58:00.343321+00
168	mapdata	0102_rename_bssid_rangingbeacon_wifi_bssid_and_more	2024-08-27 09:58:00.744145+00
169	mapdata	0103_report_flow_overhaul	2024-08-27 09:58:01.267908+00
170	mapdata	0104_theme_color_css_grid_and_more	2024-08-27 09:58:01.451199+00
171	mapdata	0105_alter_theme_color_background_and_more	2024-08-27 09:58:01.507173+00
172	mapdata	0106_rename_wifi_to_beaconmeasurement	2024-08-27 09:58:01.778579+00
173	mesh	0001_initial	2024-08-27 09:58:01.897982+00
174	mesh	0002_alter_firmware_unique_together_meshnode_firmware_and_more	2024-08-27 09:58:01.941023+00
175	mesh	0003_meshnode_name	2024-08-27 09:58:01.951991+00
176	mesh	0004_relay_vs_src_node_and_remove_firmware	2024-08-27 09:58:02.211169+00
177	mesh	0005_meshnode_last_signin	2024-08-27 09:58:02.220932+00
178	mesh	0006_rename_route_meshnode_uplink	2024-08-27 09:58:02.244607+00
179	mesh	0007_nodemessage_message_type_new	2024-08-27 09:58:02.370616+00
180	mesh	0008_firmwarebuild_firmwarebuildboard_firmwareversion_and_more	2024-08-27 09:58:02.784016+00
181	mesh	0009_meshuplink	2024-08-27 09:58:03.018144+00
182	mesh	0010_otaupdate_otaupdaterecipient	2024-08-27 09:58:03.237301+00
183	mesh	0011_meshnode_address_validate	2024-08-27 09:58:03.327313+00
184	mesh	0012_otaupdaterecipient_status_and_more	2024-08-27 09:58:03.363442+00
185	mesh	0013_meshnode_upstream_alter_nodemessage_message_type	2024-08-27 09:58:03.473797+00
186	mesh	0014_remove_meshnode_name	2024-08-27 09:58:03.485254+00
187	routing	0001_routeoptions	2024-08-27 09:58:03.590206+00
188	routing	0002_django_4_0	2024-08-27 09:58:03.724786+00
189	sessions	0001_initial	2024-08-27 09:58:03.753999+00
190	site	0001_announcement	2024-08-27 09:58:03.773676+00
191	site	0002_announcement_tweaks	2024-08-27 09:58:04.028622+00
192	site	0003_siteupdate	2024-08-27 09:58:04.041775+00
193	site	0004_siteupdate_tweaks	2024-08-27 09:58:04.048811+00
194	site	0005_siteupdate_default_related_name	2024-08-27 09:58:04.055683+00
195	site	0006_django_4_0	2024-08-27 09:58:04.145531+00
196	mapdata	0001_squashed_2018	2024-08-27 09:58:04.152164+00
197	editor	0001_squashed_2018	2024-08-27 09:58:04.15528+00
198	mapdata	0107_altitudearea_multiple_points	2024-09-24 10:03:02.577602+00
199	mapdata	0108_in_legend	2024-09-24 10:03:02.833749+00
200	mapdata	0109_accesspermissionssogrant_accesspermission_sso_grant	2024-09-24 10:03:03.120676+00
201	mapdata	0110_theme_icon_path_theme_leaflet_marker_config	2024-09-24 10:03:03.142018+00
202	api	0005_secret_scope_load	2025-10-08 10:13:09.562786+00
203	control	0015_userpermissions_view_users_and_more	2025-10-08 10:13:09.681411+00
204	control	0016_remove_userpermissions_control_panel	2025-10-08 10:13:09.835362+00
205	control	0017_userpermissions_quests	2025-10-08 10:13:09.904837+00
206	control	0018_userpermissions_impolite_quests	2025-10-08 10:13:09.965681+00
207	control	0019_userpermissions_passive_ap_name_scanning	2025-10-08 10:13:10.024824+00
208	control	0020_userpermissions_can_write_load_data	2025-10-08 10:13:10.085356+00
209	editor	0004_changeset_rewrite_2024	2025-10-08 10:13:10.247938+00
210	editor	0005_alter_changeset_changes_alter_changeset_description	2025-10-08 10:13:10.322611+00
211	editor	0006_alter_changeset_author_alter_changesetupdate_user	2025-10-08 10:13:10.506597+00
212	mapdata	0111_dataoverlay_dataoverlayfeature	2025-10-08 11:06:58.362296+00
213	mapdata	0112_alter_dataoverlay_options_and_more	2025-10-08 11:06:58.628582+00
214	mapdata	0113_locationgroup_can_report_mistake	2025-10-08 11:06:58.673019+00
215	mapdata	0114_accessrestrictiongroup_members	2025-10-08 11:07:27.951771+00
216	mapdata	0115_dataoverlay_access_restriction	2025-10-08 11:07:28.054288+00
217	mapdata	0116_waytype_avoid_by_default_alter_waytype_description	2025-10-08 11:07:28.071977+00
218	mapdata	0117_alter_dataoverlay_fill_color_and_more	2025-10-08 11:07:28.270129+00
219	mapdata	0118_dataoverlay_default_geomtype	2025-10-08 11:07:28.309246+00
220	mapdata	0119_dataoverlay_fill_opacity_dataoverlay_stroke_opacity_and_more	2025-10-08 11:07:28.460447+00
221	mapdata	0120_level_intermediate	2025-10-08 11:17:57.891313+00
222	mapdata	0121_level_level_index_alter_level_short_label	2025-10-08 11:19:43.578781+00
223	mapdata	0122_locationgroup_external_url_and_more	2025-10-08 11:19:50.79611+00
224	mapdata	0123_door_name_door_todo	2025-10-08 11:19:51.000347+00
225	mapdata	0124_beaconmeasurement_data_schema	2025-10-08 11:19:51.156327+00
226	mapdata	0125_rangingbeacon_altitude_quest_and_more	2025-10-08 11:19:51.197419+00
254	mapdata	0126_loadgroup	2025-10-08 11:32:30.760157+00
255	mapdata	0127_alter_beaconmeasurement_data_and_more	2025-10-08 11:32:39.192518+00
256	mapdata	0128_space_identifyable	2025-10-08 11:32:39.262146+00
257	mapdata	0129_dataoverlay_cluster_points	2025-10-08 11:32:39.30479+00
258	mapdata	0130_rangingbeacon_wifi_bssids	2025-10-08 11:32:39.483791+00
259	mapdata	0131_dataoverlay_edit_access_restriction	2025-10-08 11:32:39.598796+00
260	mapdata	0132_dataoverlay_update_interval_and_more	2025-10-08 11:32:39.673486+00
261	mapdata	0133_beaconmeasurement_fill_quest	2025-10-08 11:32:39.742491+00
262	mapdata	0134_rangingbeacon_ap_name	2025-10-08 11:32:39.879228+00
263	mapdata	0135_rangingbeacon_beacon_type	2025-10-08 11:32:40.017863+00
264	mapdata	0136_wifi_bssids_to_addresses_and_more	2025-10-08 11:32:40.337136+00
265	mapdata	0137_position_short_name	2025-10-08 11:32:40.499571+00
266	mapdata	0138_rangingbeacon_max_observed_num_clients_and_more	2025-10-08 11:32:40.589644+00
267	mapdata	0139_space_media_panel_done_alter_rangingbeacon_addresses	2025-10-08 11:32:40.655689+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
amvzk9pgex1m82ry1kzdx25pszsej2or	e30:1sisys:ZBLYTXPW4Mst-LCrO5xpvF3ncqA7l9oZVXwrhyE4wWQ	2024-09-10 09:59:18.364971+00
4hovxfellnv5gkn8gvpjkg41m1723c50	e30:1snM7G:UekKIessh996E-RmJDoSZpNXjv1WZlcXCyTU2vebGSA	2024-09-22 17:54:26.072226+00
dv9skqjm3ux1p9nluyuu56n5sso8xgh5	.eJxVjrkOwyAQRP9la8sCfHCU6fMNCHY3hhy2ZOMqyr8HSy6SdubN07zBh70kv2-8-kzgQELzm8WAD56Pgu5hnpYWl7msObYH0p7t1l4X4uflZP8EKWyprmM0QySpUXcChVRS4mCiMdwba6ymfuy0soMVo2aBpCjoUSlx642oy6CqFFM9wBsXcLIByitj8Uy55HkCV9adGyiJXwxOfL4COUZd:1sqV5O:ojREBcqoUHbyE-TRbY9cEXF3RPxC4y-kcAr3qboRQtU	2024-10-01 10:05:30.172933+00
5xe6jji23iln8m5xvo0vyfe5eebi5chr	e30:1st1ml:tbKISLK_GjatJxEjzSyqJJuDy4JDglctKtfWbCwkM_8	2024-10-08 09:24:43.211555+00
fworhxwo4qsqrhlvpddnf6h59higwz3t	e30:1sqU0l:MkZWje9AwTXlTXak9zAoh7yOKlrrR3xrEmhWTIyTD2I	2024-10-01 08:56:39.666121+00
l8miuu132yek6hqkv38ae27nwbzpwhik	e30:1sqU0l:MkZWje9AwTXlTXak9zAoh7yOKlrrR3xrEmhWTIyTD2I	2024-10-01 08:56:39.677817+00
kbx8kfya72l81fzz9ii640h5n0lmwg9i	eyJ0aGVtZSI6MH0:1st1ns:K_Y6Ur37_ksB3hSVBBU9porQ8g8jlxo4hlQVNUU_72w	2024-10-08 09:25:52.412981+00
fwflkpv9b5xy8q72cbe6q429mfspzww7	.eJxNzDEKgDAMBdC7_NlFx16mBBuhGE1po0XEu1vRwfUN70TWzdhrsqhrgTuxaGA4TFSMi6FDJZl9ScyhceCJNnn5sCOx75uSiNafDY_tGkOz3JYcx-_HqnkhwXXdjEorUQ:1sne7R:51tDVOqUFko6t1YzgnBM3LNjJ0Y0SnT5HsKGu_qM614	2024-09-23 13:07:49.089044+00
q8m07j89qos02p9auhqky6pp03ob2krz	e30:1sngGx:7eKDZWGa-25u7FaYQlzNsrnrCUr5sMT1yK9cptHUN5E	2024-09-23 15:25:47.510524+00
27nlikabtzgx9twchu43xq8s4r3rv1du	e30:1sngGx:7eKDZWGa-25u7FaYQlzNsrnrCUr5sMT1yK9cptHUN5E	2024-09-23 15:25:47.562451+00
vnbjrnbm0qrwaiu3b3zv1u5krc7lov49	e30:1sjbnL:theokb1P_6Ah1vG1iyD7OuL4Wa5hyLIr37tmMz-Yi9Q	2024-09-12 09:50:23.897761+00
51wj5enr83qlh1y8m9gxfbvx2sqsgq07	e30:1sjbnL:theokb1P_6Ah1vG1iyD7OuL4Wa5hyLIr37tmMz-Yi9Q	2024-09-12 09:50:23.905553+00
ei17awdyef1h0cf88icch72tt72l904x	e30:1snIBI:6YTHXawaY6C4mhclD2aS52Mtplo71U1svQ0R1wgF1aQ	2024-09-22 13:42:20.810821+00
kxjxyug1szrlfxmgpcqhzv22hwdsdfb7	e30:1snIBI:6YTHXawaY6C4mhclD2aS52Mtplo71U1svQ0R1wgF1aQ	2024-09-22 13:42:20.891774+00
2sqgh1eez736yycp9ye1vfn57zpgr96z	e30:1sngSo:82f8NvHNkGa6KiC_xppFSubGLpuWHpHvlAPlkblQrR4	2024-09-23 15:38:02.237571+00
7c4pat9ia3590od8nnlkuyw5rqkkixtv	e30:1sngSo:82f8NvHNkGa6KiC_xppFSubGLpuWHpHvlAPlkblQrR4	2024-09-23 15:38:02.347145+00
fsunuzk5s3j41te85rqqzws0y3mt9ihl	.eJxVjrkOwyAQRP9la8sCfHCU6fMNCHY3hhy2ZOMqyr8HSy6SdubN07zBh70kv2-8-kzgQELzm8WAD56Pgu5hnpYWl7msObYH0p7t1l4X4uflZP8EKWyprmM0QySpUXcChVRS4mCiMdwba6ymfuy0soMVo2aBpCjoUSlx642oy6CqtCR-MTjRAKZ6hTcu4FQDlFfG4plyyfMErqw7f77shEZe:1stlXP:u8QsfdZbgKrz7zquI3z3RuCNIFKLZyTZ9zrJCdBdSoU	2024-10-10 10:15:55.164456+00
id9pv62xyn92ahnefr4210edrkodeuf3	e30:1sze1A:fFBWSCLSxkvcG4IUMiMWFzeoH5Lwbp1LQjRtIr4kR8Y	2024-10-26 15:26:56.468238+00
rgyoqr9kt4q5hp2x1zkp1estiv1bzw5c	e30:1t0Fne:EyQsIXzexCQvCqWzuahDcCWoXcV3ID9XQiT79fCRvFg	2024-10-28 07:47:30.932495+00
ci83dj1uq0qyowc0kgld08nedz3zkzzi	e30:1stibl:N7SVwoTd7Gn1cV1AClys4ydxGXZhZs4Ird7PTWdIBCA	2024-10-10 07:08:13.07702+00
bqymqssw92jj8k67t1qb7jka29z7v8mc	.eJxNzEEKgCAQQNG7zLpNLb2MSI4gWSM6JiLevYlctH18fodEhVFTZE9XBtXhJIugwJnMmBkWqCYcOkdEK2zRmRI-btwi6lXU3OTtz7bXQqAqluSS_D7_Mx3jAV-QKts:1t0GJi:QGcAJpkUuYtNynAmgbMEJKJaAsYtcyFlECfdH-m7Ugk	2024-10-28 08:20:38.207074+00
oti396jz8a5is79ywv018b9c0yzyrv20	e30:1t2vKs:6_9G7fpVV5H9eGLlXMNIS--xw4zQDvdFhAuWkx_Imb0	2024-11-04 16:32:50.494131+00
frh7shgsyutsdk76ko6va3adqhwl24pt	e30:1t2vKs:6_9G7fpVV5H9eGLlXMNIS--xw4zQDvdFhAuWkx_Imb0	2024-11-04 16:32:50.563172+00
du6i1y35imkqnpjw9eontbwhlxcthnyr	e30:1t3xkc:mcf8V6aMWq9oCnuWdB042ZsvkbZOvU6bEJ6C28MFNxo	2024-11-07 13:19:42.27057+00
22ky2dvil1mzjkge4l2w781k9llxrun4	.eJxVjkEOwiAURO_CuiGAtECX7j0Dgf-_BTVtAnRlvLs06UK3M29e5s182Fvye6XiM7KZSTb8ZjHAk9ajwEdYl43DtraSIz8QfraV3zak1_Vk_wQp1NTXMdoxojRgLgKEVFLCaKO1pK2zzqCeLka50YnJkABUGMyklLhrK_oyqC6F1A9QpcZmPTDMhaB5wtzyurC5lZ0-X1FqQ3M:1t4HCF:le4fcDuRrAolkiAZByxprxoBdC3KTDEtSt3V5ahm8xc	2024-11-08 10:05:31.458212+00
m5fqocfdl1ano9n7zm0abev7rc1ygm1h	e30:1t3xkc:mcf8V6aMWq9oCnuWdB042ZsvkbZOvU6bEJ6C28MFNxo	2024-11-07 13:19:42.426527+00
flff3bukysca7jty72fyvnpog017eh4o	e30:1t3xlG:1hmMWR5LVInGbxmw92Yu6EFzs9p6BYFKz6mpKvfcut8	2024-11-07 13:20:22.134477+00
32e3enrs3s3j6br4liejz6kw1ag9rdmp	e30:1t3xlG:1hmMWR5LVInGbxmw92Yu6EFzs9p6BYFKz6mpKvfcut8	2024-11-07 13:20:22.185861+00
ow694isitijclav0ap763b3woz0hvm4l	e30:1t2s5t:OfrKMJvPRdweQkRSgNLNB-loXQZRdfX-uQgJVAWNJj8	2024-11-04 13:05:09.134775+00
ny322lbj5dgbmunr2rkpywvoe7j4ruqy	.eJxVjMsOwiAQRf-FtSEw5TG4dO83EJhBqRqalHZl_HfbpAvd3nPOfYuY1qXGtZc5jizOQovT75YTPUvbAT9Su0-SprbMY5a7Ig_a5XXi8roc7t9BTb1udc5oM2tPflCkNGhNFjNiMRgweDZu8BBsUM4XRQycvANQN4NqKxOIzxfCZDa7:1v6SSE:YEuzQWvM3eNl29KFbADjkJ20bf4DQ1xmENwzk0lqo6Y	2025-10-22 11:35:34.649945+00
\.


--
-- Data for Name: editor_changeset; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.editor_changeset (id, created, state, title, description, assigned_to_id, author_id, last_change_id, last_state_update_id, last_update_id, map_update_id, changes) FROM stdin;
5	2024-10-27 10:01:39.987629+00	applied	Add Crane Hall BOF meetings	add the POI for the BOF meetings in the Crane Hall	1	1	12	16	16	1823	{"prev": {"objects": {}}, "objects": {}}
6	2024-10-27 10:15:56.996907+00	applied	Add Crane Hall BOF meetings	Add BOF meetings location	1	1	19	23	23	1824	{"prev": {"objects": {}}, "objects": {}}
7	2024-10-28 10:38:53.340637+00	applied	Change label BOF meetings	Add and move BOF meetings label	1	1	\N	27	27	1825	{"prev": {"objects": {}}, "objects": {}}
8	2024-10-28 10:54:03.335676+00	applied	Modify Access President room label	Add NOI Board to label	1	1	\N	31	31	1826	{"prev": {"objects": {}}, "objects": {}}
10	2025-10-19 17:29:06.727414+00	applied	Aggiunta aree Check-in area & Info point, Info point e Food court	Info point (-1), Check-in area & Info point (A2, Crane Hall), Food court (Open Theatre)	2	2	49	72	72	1837	{"prev": {"objects": {"poi": {"155": {"titles": {"en": "Check-in area & Info point "}, "values": {"icon": null, "slug": "checkinareainfopoint", "space": 36, "title": {"en": "Check-in area & Info point "}, "groups": [], "geometry": "{\\"type\\": \\"Point\\", \\"coordinates\\": [270.88, 221.0]}", "can_search": true, "import_tag": null, "can_describe": true, "external_url": null, "label_override": {}, "label_settings": 2, "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null}}}, "area": {"156": {"titles": {"en": "Info point"}, "values": {"icon": null, "slug": "infopoint", "space": 22, "title": {"en": "Info point"}, "groups": [], "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[273.56, 230.94], [275.19, 230.94], [275.19, 227.94], [273.63, 228.06], [273.56, 230.94]]]}", "can_search": true, "import_tag": null, "main_point": null, "can_describe": true, "external_url": null, "label_override": {}, "label_settings": null, "slow_down_factor": "1.00", "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null}}, "157": {"titles": {"en": "Info point"}, "values": {"icon": null, "slug": "infopoint", "space": 22, "title": {"en": "Info point"}, "groups": [], "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[273.42, 228.58], [274.27, 228.58], [274.27, 227.08], [273.38, 227.08], [273.42, 228.58]]]}", "can_search": true, "import_tag": null, "main_point": null, "can_describe": true, "external_url": null, "label_override": {}, "label_settings": 1, "slow_down_factor": "1.00", "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null}}, "158": {"titles": {"en": "Check-in area & Info point "}, "values": {"icon": null, "slug": "checkininfopoint", "space": 135, "title": {"en": "Check-in area & Info point "}, "groups": [], "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[422.04, 198.2], [422.41, 198.2], [422.41, 197.58], [422.04, 197.58], [422.04, 198.2]]]}", "can_search": true, "import_tag": null, "main_point": null, "can_describe": true, "external_url": null, "label_override": {}, "label_settings": null, "slow_down_factor": "1.00", "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null}}, "159": {"titles": {"en": "Food court"}, "values": {"icon": null, "slug": "foodcourt", "space": 51, "title": {"en": "Food court"}, "groups": [], "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[299.25, 221.1], [293.14, 221.11], [293.14, 219.21], [299.31, 219.15], [299.25, 221.1]]]}", "can_search": true, "import_tag": null, "main_point": null, "can_describe": true, "external_url": null, "label_override": {}, "label_settings": null, "slow_down_factor": "1.00", "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null}}}}}, "objects": {"poi": {"155": {"obj": {"id": 155, "model": "poi"}, "fields": {"icon": null, "slug": "checkinareainfopoint", "space": 36, "title": {"en": "Check-in area & Info point"}, "groups": [148], "geometry": "{\\"type\\": \\"Point\\", \\"coordinates\\": [270.88, 221.0]}", "can_search": true, "import_tag": null, "can_describe": true, "external_url": null, "label_override": {}, "label_settings": 2, "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null}, "titles": {"en": "Check-in area & Info point "}, "created": true, "deleted": false, "m2m_changes": {"groups": {"added": [148], "cleared": false, "removed": []}}}}, "area": {"156": {"obj": {"id": 156, "model": "area"}, "fields": {"icon": null, "slug": "infopoint", "space": 22, "title": {"en": "Info point"}, "groups": [], "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[273.62, 230.93], [275.09, 230.91], [275.31, 228.19], [273.61, 228.08], [273.62, 230.93]]]}", "can_search": true, "import_tag": null, "main_point": null, "can_describe": true, "external_url": null, "label_override": {}, "label_settings": null, "slow_down_factor": "1", "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null}, "titles": {"en": "Info point"}, "created": true, "deleted": true, "m2m_changes": {}}, "157": {"obj": {"id": 157, "model": "area"}, "fields": {"icon": null, "slug": "infopoint", "space": 22, "title": {"en": "Info point"}, "groups": [], "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[273.42, 228.58], [274.27, 228.58], [274.27, 227.08], [273.39, 227.08], [273.42, 228.58]]]}", "can_search": true, "import_tag": null, "main_point": null, "can_describe": true, "external_url": null, "label_override": {}, "label_settings": 1, "slow_down_factor": "1", "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null}, "titles": {"en": "Info point"}, "created": true, "deleted": false, "m2m_changes": {}}, "158": {"obj": {"id": 158, "model": "area"}, "fields": {"icon": null, "slug": "checkininfopoint", "space": 135, "title": {"en": "Check-in area & Info point "}, "groups": [], "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[422.04, 198.2], [422.41, 198.2], [422.41, 197.58], [422.04, 197.58], [422.04, 198.2]]]}", "can_search": true, "import_tag": null, "main_point": null, "can_describe": true, "external_url": null, "label_override": {}, "label_settings": null, "slow_down_factor": "1", "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null}, "titles": {"en": "Check-in area & Info point "}, "created": true, "deleted": false, "m2m_changes": {"groups": {"added": [21, 119], "cleared": false, "removed": []}}}, "159": {"obj": {"id": 159, "model": "area"}, "fields": {"icon": null, "slug": "foodcourt", "space": 51, "title": {"en": "Food court"}, "groups": [], "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[299.25, 221.1], [293.14, 221.11], [293.14, 219.21], [299.31, 219.15], [299.25, 221.1]]]}", "can_search": true, "import_tag": null, "main_point": null, "can_describe": true, "external_url": null, "label_override": {}, "label_settings": null, "slow_down_factor": "1", "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null}, "titles": {"en": "Food court"}, "created": true, "deleted": false, "m2m_changes": {"groups": {"added": [123], "cleared": false, "removed": []}}}}}}
16	2025-10-27 14:15:12.799428+00	applied	Hole in stairs to floor 1		\N	1	162	164	164	1939	{"prev": {"objects": {"space": {"181": {"titles": {"en": "Stairs D Floor 1 to 2"}, "values": {"icon": null, "slug": "a1f0std-clone", "level": 37, "title": {}, "groups": [], "height": null, "outside": false, "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[267.39, 194.28], [268.67, 194.28], [268.67, 198.24], [269.01, 198.24], [269.0, 194.28], [270.27, 194.28], [270.27, 199.47], [267.41, 199.47], [267.39, 194.28]]]}", "can_search": true, "import_tag": null, "can_describe": true, "external_url": null, "identifyable": null, "label_override": {}, "label_settings": null, "media_panel_done": false, "enter_description": {}, "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null, "base_mapdata_accessible": false}}, "182": {"titles": {}, "values": {"icon": null, "slug": "a1f0std-clone-1", "level": 37, "title": {}, "groups": [], "height": null, "outside": false, "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[267.39, 194.28], [268.67, 194.28], [268.67, 198.24], [269.01, 198.24], [269.0, 194.28], [270.27, 194.28], [270.27, 199.47], [267.41, 199.47], [267.39, 194.28]]]}", "can_search": true, "import_tag": null, "can_describe": true, "external_url": null, "identifyable": null, "label_override": {}, "label_settings": null, "media_panel_done": false, "enter_description": {}, "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null, "base_mapdata_accessible": false}}, "183": {"titles": {}, "values": {"icon": null, "slug": "a1f0std-clone-2", "level": 37, "title": {}, "groups": [], "height": null, "outside": false, "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[267.39, 194.28], [268.67, 194.28], [268.67, 198.24], [269.01, 198.24], [269.0, 194.28], [270.27, 194.28], [270.27, 199.47], [267.41, 199.47], [267.39, 194.28]]]}", "can_search": true, "import_tag": null, "can_describe": true, "external_url": null, "identifyable": null, "label_override": {}, "label_settings": null, "media_panel_done": false, "enter_description": {}, "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null, "base_mapdata_accessible": false}}, "184": {"titles": {}, "values": {"icon": null, "slug": "a1f0std-clone-3", "level": 37, "title": {}, "groups": [], "height": null, "outside": false, "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[267.39, 194.28], [268.67, 194.28], [268.67, 198.24], [269.01, 198.24], [269.0, 194.28], [270.27, 194.28], [270.27, 199.47], [267.41, 199.47], [267.39, 194.28]]]}", "can_search": true, "import_tag": null, "can_describe": true, "external_url": null, "identifyable": null, "label_override": {}, "label_settings": null, "media_panel_done": false, "enter_description": {}, "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null, "base_mapdata_accessible": false}}}}}, "objects": {"hole": {"13": {"obj": {"id": 13, "model": "hole"}, "fields": {"space": 181, "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[269.0, 194.28], [270.27, 194.28], [270.27, 198.24], [269.01, 198.24], [269.0, 194.28]]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}}, "space": {"181": {"obj": {"id": 181, "model": "space"}, "fields": {"slug": "a1f1std", "title": {"en": "Stairs D Floor 1 to 2"}}, "titles": {"en": "Stairs D Floor 1 to 2"}, "created": false, "deleted": false, "m2m_changes": {}}, "182": {"obj": {"id": 182, "model": "space"}, "fields": {}, "titles": {}, "created": false, "deleted": true, "m2m_changes": {}}, "183": {"obj": {"id": 183, "model": "space"}, "fields": {}, "titles": {}, "created": false, "deleted": true, "m2m_changes": {}}, "184": {"obj": {"id": 184, "model": "space"}, "fields": {}, "titles": {}, "created": false, "deleted": true, "m2m_changes": {}}}}}
11	2025-10-20 09:35:32.996697+00	applied	Altre aggiunte	Aggiunta di: Arena Visitor Experience Meeting point (-1), Partners & Supporters booths (-1), Speakers & Supporters Lounge(0), Training Room (1)	2	2	58	74	74	1838	{"prev": {"objects": {"area": {"163": {"titles": {"en": "Partners & Supportters booths"}, "values": {"icon": null, "slug": "partnersandsupportersbooths", "space": 22, "title": {"en": "Partners & Supportters booths"}, "groups": [], "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[315.98, 229.86], [316.29, 223.21], [272.65, 223.36], [272.73, 233.89], [283.56, 233.74], [283.72, 229.94], [315.98, 229.86]]]}", "can_search": true, "import_tag": null, "main_point": null, "can_describe": true, "external_url": null, "label_override": {}, "label_settings": null, "slow_down_factor": "1.00", "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null}}}, "space": {"161": {"titles": {"en": "Training Room"}, "values": {"icon": null, "slug": "trainingroom", "level": 37, "title": {"en": "Training Room"}, "groups": [], "height": null, "outside": false, "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[223.63, 201.15], [223.31, 194.06], [218.81, 193.88], [218.81, 192.38], [234.94, 192.31], [235.0, 201.09], [223.63, 201.15]]]}", "can_search": true, "import_tag": null, "can_describe": true, "external_url": null, "identifyable": null, "label_override": {}, "label_settings": null, "media_panel_done": false, "enter_description": {}, "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null, "base_mapdata_accessible": false}}}}}, "objects": {"area": {"162": {"obj": {"id": 162, "model": "area"}, "fields": {"icon": null, "slug": "arenavisitorexperiencemeetingpoint", "space": 31, "title": {"en": "Arena Visitor Experience Meeting point"}, "groups": [], "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[288.96, 227.73], [285.19, 227.73], [285.19, 226.2], [288.95, 226.2], [288.96, 227.73]]]}", "can_search": true, "import_tag": null, "main_point": null, "can_describe": true, "external_url": null, "label_override": {}, "label_settings": null, "slow_down_factor": "1", "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null}, "titles": {"en": "Arena Visitor Experience Meeting point"}, "created": true, "deleted": false, "m2m_changes": {}}, "163": {"obj": {"id": 163, "model": "area"}, "fields": {"icon": null, "slug": "partnersandsupportersbooths", "space": 22, "title": {"en": "Partners & Supportters booths"}, "groups": [], "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[315.98, 229.86], [316.19, 223.19], [272.65, 223.36], [272.73, 233.89], [283.56, 233.74], [283.62, 229.88], [315.98, 229.86]]]}", "can_search": true, "import_tag": null, "main_point": null, "can_describe": true, "external_url": null, "label_override": {}, "label_settings": null, "slow_down_factor": "1", "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null}, "titles": {"en": "Partners & Supportters booths"}, "created": true, "deleted": false, "m2m_changes": {}}}, "space": {"160": {"obj": {"id": 160, "model": "space"}, "fields": {"icon": null, "slug": "speakersandsupporterslounge", "level": 2, "title": {"en": "Speakers & Supporters Lounge"}, "groups": [], "height": null, "outside": false, "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[249.41, 229.47], [258.94, 229.5], [258.97, 223.35], [249.41, 223.35], [249.41, 229.47]]]}", "can_search": true, "import_tag": null, "can_describe": true, "external_url": null, "identifyable": null, "label_override": {}, "label_settings": null, "media_panel_done": false, "enter_description": {}, "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null, "base_mapdata_accessible": false}, "titles": {"en": "Speakers & Supporters Lounge"}, "created": true, "deleted": false, "m2m_changes": {}}, "161": {"obj": {"id": 161, "model": "space"}, "fields": {"icon": null, "slug": "trainingroom", "level": 37, "title": {"en": "Training Room"}, "groups": [], "height": null, "outside": false, "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[223.63, 201.15], [223.31, 194.06], [218.81, 193.88], [218.81, 192.38], [234.94, 192.31], [235.0, 201.09], [223.63, 201.15]]]}", "can_search": true, "import_tag": null, "can_describe": true, "external_url": null, "identifyable": null, "label_override": {}, "label_settings": null, "media_panel_done": false, "enter_description": {}, "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null, "base_mapdata_accessible": false}, "titles": {"en": "Training Room"}, "created": true, "deleted": false, "m2m_changes": {"groups": {"added": [21, 23], "cleared": false, "removed": []}}}}}}
12	2025-10-21 15:15:37.694701+00	applied	Colori		1	3	68	75	75	1839	{"prev": {"objects": {"locationgroup": {"3": {"titles": {"en": "Elevator"}, "values": {"icon": "elevator", "slug": "el", "color": "#f4cccc", "title": {"en": "Elevator"}, "category": 2, "priority": 0, "hierarchy": 0, "in_legend": true, "can_search": true, "description": {}, "can_describe": true, "external_url": null, "label_settings": null, "hub_import_type": null, "report_help_text": {}, "access_restriction": null, "can_report_missing": "dont_offer", "can_report_mistake": "allow", "external_url_label": {}, "load_group_contribute": null}}, "9": {"titles": {"en": "WC"}, "values": {"icon": null, "slug": null, "color": "#7b8ebc", "title": {"en": "WC"}, "category": 3, "priority": 0, "hierarchy": 0, "in_legend": false, "can_search": false, "description": {}, "can_describe": false, "external_url": null, "label_settings": null, "hub_import_type": null, "report_help_text": {}, "access_restriction": null, "can_report_missing": "dont_offer", "can_report_mistake": "allow", "external_url_label": {}, "load_group_contribute": null}}, "65": {"titles": {"en": "Green Area"}, "values": {"icon": null, "slug": "greenarea", "color": "#bbb68f", "title": {"en": "Green Area"}, "category": 3, "priority": 0, "hierarchy": 0, "in_legend": false, "can_search": false, "description": {}, "can_describe": false, "external_url": null, "label_settings": null, "hub_import_type": null, "report_help_text": {}, "access_restriction": null, "can_report_missing": "dont_offer", "can_report_mistake": "allow", "external_url_label": {}, "load_group_contribute": null}}, "66": {"titles": {"en": "Bike Parking"}, "values": {"icon": "pedal_bike", "slug": "bicyclepark", "color": "#dbb991", "title": {"en": "Bike Parking"}, "category": 1, "priority": 0, "hierarchy": 0, "in_legend": true, "can_search": true, "description": {}, "can_describe": true, "external_url": null, "label_settings": null, "hub_import_type": null, "report_help_text": {}, "access_restriction": null, "can_report_missing": "dont_offer", "can_report_mistake": "allow", "external_url_label": {}, "load_group_contribute": null}}, "123": {"titles": {"en": "Food and Beverage"}, "values": {"icon": "emoji_food_beverage", "slug": "fab", "color": "#ffe18c", "title": {"en": "Food and Beverage"}, "category": 3, "priority": 0, "hierarchy": 0, "in_legend": true, "can_search": true, "description": {}, "can_describe": true, "external_url": null, "label_settings": null, "hub_import_type": null, "report_help_text": {}, "access_restriction": null, "can_report_missing": "dont_offer", "can_report_mistake": "allow", "external_url_label": {}, "load_group_contribute": null}}}}}, "objects": {"locationgroup": {"3": {"obj": {"id": 3, "model": "locationgroup"}, "fields": {"color": "#f194bd"}, "titles": {"en": "Elevator"}, "created": false, "deleted": false, "m2m_changes": {}}, "9": {"obj": {"id": 9, "model": "locationgroup"}, "fields": {"color": "#6fb2e3"}, "titles": {"en": "WC"}, "created": false, "deleted": false, "m2m_changes": {}}, "65": {"obj": {"id": 65, "model": "locationgroup"}, "fields": {"color": "#87bf58"}, "titles": {"en": "Green Area"}, "created": false, "deleted": false, "m2m_changes": {}}, "66": {"obj": {"id": 66, "model": "locationgroup"}, "fields": {"color": "#51b36e"}, "titles": {"en": "Bike Parking"}, "created": false, "deleted": false, "m2m_changes": {}}, "123": {"obj": {"id": 123, "model": "locationgroup"}, "fields": {"color": "#fed168"}, "titles": {"en": "Food and Beverage"}, "created": false, "deleted": false, "m2m_changes": {}}}}}
17	2025-10-27 14:19:13.727587+00	applied	First part of graph on floor 1		\N	1	177	179	179	1940	{"prev": {"objects": {}}, "objects": {"graphedge": {"643": {"obj": {"id": 643, "model": "graphedge"}, "fields": {"to_node": 253, "waytype": null, "from_node": 252, "access_restriction": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "644": {"obj": {"id": 644, "model": "graphedge"}, "fields": {"to_node": 252, "waytype": null, "from_node": 253, "access_restriction": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "645": {"obj": {"id": 645, "model": "graphedge"}, "fields": {"to_node": 254, "waytype": null, "from_node": 253, "access_restriction": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "646": {"obj": {"id": 646, "model": "graphedge"}, "fields": {"to_node": 253, "waytype": null, "from_node": 254, "access_restriction": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "647": {"obj": {"id": 647, "model": "graphedge"}, "fields": {"to_node": 255, "waytype": null, "from_node": 254, "access_restriction": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "648": {"obj": {"id": 648, "model": "graphedge"}, "fields": {"to_node": 254, "waytype": null, "from_node": 255, "access_restriction": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "649": {"obj": {"id": 649, "model": "graphedge"}, "fields": {"to_node": 256, "waytype": null, "from_node": 255, "access_restriction": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "650": {"obj": {"id": 650, "model": "graphedge"}, "fields": {"to_node": 255, "waytype": null, "from_node": 256, "access_restriction": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "651": {"obj": {"id": 651, "model": "graphedge"}, "fields": {"to_node": 256, "waytype": null, "from_node": 257, "access_restriction": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "652": {"obj": {"id": 652, "model": "graphedge"}, "fields": {"to_node": 257, "waytype": null, "from_node": 256, "access_restriction": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}}, "graphnode": {"250": {"obj": {"id": 250, "model": "graphnode"}, "fields": {"space": 161, "geometry": "{\\"type\\": \\"Point\\", \\"coordinates\\": [224.42, 200.55]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "251": {"obj": {"id": 251, "model": "graphnode"}, "fields": {"space": 161, "geometry": "{\\"type\\": \\"Point\\", \\"coordinates\\": [231.65, 200.62]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "252": {"obj": {"id": 252, "model": "graphnode"}, "fields": {"space": 171, "geometry": "{\\"type\\": \\"Point\\", \\"coordinates\\": [224.36, 202.41]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "253": {"obj": {"id": 253, "model": "graphnode"}, "fields": {"space": 171, "geometry": "{\\"type\\": \\"Point\\", \\"coordinates\\": [231.61, 202.36]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "254": {"obj": {"id": 254, "model": "graphnode"}, "fields": {"space": 171, "geometry": "{\\"type\\": \\"Point\\", \\"coordinates\\": [265.53, 202.53]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "255": {"obj": {"id": 255, "model": "graphnode"}, "fields": {"space": 171, "geometry": "{\\"type\\": \\"Point\\", \\"coordinates\\": [265.53, 204.58]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "256": {"obj": {"id": 256, "model": "graphnode"}, "fields": {"space": 171, "geometry": "{\\"type\\": \\"Point\\", \\"coordinates\\": [265.51, 206.2]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "257": {"obj": {"id": 257, "model": "graphnode"}, "fields": {"space": 173, "geometry": "{\\"type\\": \\"Point\\", \\"coordinates\\": [263.34, 206.6]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}}}}
14	2025-10-22 08:54:17.250635+00	applied	Additions and fixes to A1 floor 1		\N	1	126	128	128	1898	{"prev": {"objects": {"hole": {"9": {"titles": null, "values": {"space": 59, "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[268.92, 198.23], [270.36, 198.23], [270.36, 194.29], [268.93, 194.29], [268.92, 198.23]]]}", "import_tag": null}}}, "space": {"59": {"titles": {"en": "Corridor"}, "values": {"icon": null, "slug": "a1f0corridorpark", "level": 2, "title": {"en": "Corridor"}, "groups": [], "height": null, "outside": false, "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[267.32, 194.29], [268.93, 194.28], [268.92, 198.23], [270.36, 198.24], [270.36, 194.29], [270.58, 194.29], [270.62, 201.23], [269.47, 201.23], [269.46, 203.47], [270.63, 203.47], [270.66, 211.77], [272.37, 211.77], [272.37, 192.83], [267.32, 192.84], [267.32, 194.29]]]}", "can_search": true, "import_tag": null, "can_describe": true, "external_url": null, "identifyable": null, "label_override": {}, "label_settings": null, "media_panel_done": false, "enter_description": {}, "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null, "base_mapdata_accessible": false}}, "161": {"titles": {"en": "Training Room"}, "values": {"icon": null, "slug": "trainingroom", "level": 37, "title": {"en": "Training Room"}, "groups": [23, 21], "height": null, "outside": false, "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[223.63, 201.15], [223.31, 194.06], [218.81, 193.88], [218.81, 192.38], [234.94, 192.31], [235.0, 201.09], [223.63, 201.15]]]}", "can_search": true, "import_tag": null, "can_describe": true, "external_url": null, "identifyable": null, "label_override": {}, "label_settings": null, "media_panel_done": false, "enter_description": {}, "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null, "base_mapdata_accessible": false}}, "171": {"titles": {"en": "Corridor"}, "values": {"icon": null, "slug": "a1f0corridor-clone", "level": 37, "title": {}, "groups": [], "height": null, "outside": false, "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[235.53, 211.57], [235.53, 203.44], [215.82, 203.44], [215.82, 201.25], [235.34, 201.25], [235.34, 198.92], [239.73, 198.92], [239.73, 201.23], [269.44, 201.23], [269.44, 203.47], [266.94, 203.47], [266.94, 206.91], [263.91, 206.91], [263.91, 203.39], [239.59, 203.39], [239.59, 211.59], [235.53, 211.57]]]}", "can_search": false, "import_tag": null, "can_describe": true, "external_url": null, "identifyable": null, "label_override": {}, "label_settings": null, "media_panel_done": false, "enter_description": {}, "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null, "base_mapdata_accessible": false}}, "172": {"titles": {"en": "Corridor"}, "values": {"icon": null, "slug": "a1f0corridorpark-clone", "level": 37, "title": {}, "groups": [], "height": null, "outside": false, "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[267.32, 194.29], [268.93, 194.28], [268.92, 198.23], [270.36, 198.24], [270.36, 194.29], [270.58, 194.29], [270.62, 201.23], [269.47, 201.23], [269.46, 203.47], [270.63, 203.47], [270.66, 211.77], [272.37, 211.77], [272.37, 192.83], [267.32, 192.84], [267.32, 194.29]]]}", "can_search": true, "import_tag": null, "can_describe": true, "external_url": null, "identifyable": null, "label_override": {}, "label_settings": null, "media_panel_done": false, "enter_description": {}, "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null, "base_mapdata_accessible": false}}, "173": {"titles": {"en": "WC for Women"}, "values": {"icon": null, "slug": "a1f0wcw2-clone", "level": 37, "title": {}, "groups": [], "height": null, "outside": false, "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[260.14, 208.71], [260.14, 206.1], [263.73, 206.1], [263.73, 207.11], [264.21, 207.11], [264.21, 208.69], [260.14, 208.71]]]}", "can_search": true, "import_tag": null, "can_describe": true, "external_url": null, "identifyable": null, "label_override": {}, "label_settings": null, "media_panel_done": false, "enter_description": {}, "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null, "base_mapdata_accessible": false}}, "174": {"titles": {"en": "Barrier Free WC"}, "values": {"icon": null, "slug": "a1f0wcbf2-clone", "level": 37, "title": {}, "groups": [], "height": null, "outside": false, "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[264.39, 208.67], [264.39, 207.17], [266.72, 207.17], [266.72, 208.66], [264.39, 208.67]]]}", "can_search": true, "import_tag": null, "can_describe": true, "external_url": null, "identifyable": null, "label_override": {}, "label_settings": null, "media_panel_done": false, "enter_description": {}, "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null, "base_mapdata_accessible": false}}, "175": {"titles": {"en": "WC for Men"}, "values": {"icon": null, "slug": "a1-wc-0m-clone", "level": 37, "title": {}, "groups": [], "height": null, "outside": false, "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[267.12, 206.09], [267.11, 207.16], [266.89, 207.16], [266.9, 208.67], [270.3, 208.68], [270.3, 206.08], [267.12, 206.09]]]}", "can_search": true, "import_tag": null, "can_describe": true, "external_url": null, "identifyable": null, "label_override": {}, "label_settings": null, "media_panel_done": false, "enter_description": {}, "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null, "base_mapdata_accessible": false}}, "176": {"titles": {"en": "Elevator"}, "values": {"icon": "elevator", "slug": "elev0-clone", "level": 37, "title": {}, "groups": [], "height": null, "outside": false, "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[267.26, 205.83], [267.26, 203.71], [270.4, 203.71], [270.4, 205.8], [267.26, 205.83]]]}", "can_search": true, "import_tag": null, "can_describe": false, "external_url": null, "identifyable": null, "label_override": {}, "label_settings": null, "media_panel_done": false, "enter_description": {}, "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null, "base_mapdata_accessible": false}}}, "stair": {"424": {"titles": null, "values": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[267.31, 194.56], [268.74, 194.57]]}", "import_tag": null}}}}}, "objects": {"door": {"70": {"obj": {"id": 70, "model": "door"}, "fields": {"name": null, "todo": false, "level": 37, "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[223.64, 201.33], [223.64, 201.1], [225.02, 201.09], [225.02, 201.33], [223.64, 201.33]]]}", "import_tag": null, "access_restriction": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "71": {"obj": {"id": 71, "model": "door"}, "fields": {"name": null, "todo": false, "level": 37, "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[230.92, 201.08], [230.92, 201.29], [232.26, 201.29], [232.26, 201.08], [230.92, 201.08]]]}", "import_tag": null, "access_restriction": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}}, "hole": {"9": {"obj": {"id": 9, "model": "hole"}, "fields": {}, "titles": null, "created": false, "deleted": true, "m2m_changes": {}}}, "space": {"59": {"obj": {"id": 59, "model": "space"}, "fields": {"geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[267.32, 194.29], [270.36, 194.29], [270.58, 194.29], [270.62, 201.23], [269.47, 201.23], [269.46, 203.47], [270.63, 203.47], [270.66, 211.77], [272.37, 211.77], [272.37, 192.83], [267.32, 192.84], [267.32, 194.29]]]}"}, "titles": {"en": "Corridor"}, "created": false, "deleted": false, "m2m_changes": {}}, "161": {"obj": {"id": 161, "model": "space"}, "fields": {"geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[223.6, 201.14], [223.59, 193.68], [221.64, 193.68], [221.64, 192.31], [234.85, 192.31], [234.85, 201.14], [223.6, 201.14]]]}"}, "titles": {"en": "Training Room"}, "created": false, "deleted": false, "m2m_changes": {}}, "171": {"obj": {"id": 171, "model": "space"}, "fields": {"slug": "a1f1corridor2", "title": {"en": "Corridor"}, "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[215.82, 203.44], [215.82, 201.25], [235.34, 201.25], [235.34, 198.92], [239.73, 198.92], [239.73, 201.23], [269.44, 201.23], [269.44, 203.47], [266.94, 203.47], [266.94, 206.91], [263.91, 206.91], [263.91, 203.39], [215.82, 203.44]]]}"}, "titles": {"en": "Corridor"}, "created": false, "deleted": false, "m2m_changes": {}}, "172": {"obj": {"id": 172, "model": "space"}, "fields": {"slug": "a1f1corridorpark", "title": {"en": "Corridor"}, "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[267.32, 194.29], [268.93, 194.28], [268.92, 198.23], [270.36, 198.24], [270.36, 194.29], [270.58, 194.29], [270.62, 201.23], [269.47, 201.23], [269.46, 203.47], [272.39, 203.47], [272.37, 192.83], [267.32, 192.84], [267.32, 194.29]]]}"}, "titles": {"en": "Corridor"}, "created": false, "deleted": false, "m2m_changes": {}}, "173": {"obj": {"id": 173, "model": "space"}, "fields": {"slug": "a1f1wcw2", "title": {"en": "WC for Women"}, "groups": [8]}, "titles": {"en": "WC for Women"}, "created": false, "deleted": false, "m2m_changes": {"groups": {"added": [8, 9], "cleared": false, "removed": []}}}, "174": {"obj": {"id": 174, "model": "space"}, "fields": {"slug": "a1f1wcbf2", "title": {"en": "Barrier Free WC"}, "groups": [18]}, "titles": {"en": "Barrier Free WC"}, "created": false, "deleted": false, "m2m_changes": {"groups": {"added": [9, 18], "cleared": false, "removed": []}}}, "175": {"obj": {"id": 175, "model": "space"}, "fields": {"slug": "a1-wc-1m", "title": {"en": "WC for Men"}, "groups": [7]}, "titles": {"en": "WC for Men"}, "created": false, "deleted": false, "m2m_changes": {"groups": {"added": [7, 9], "cleared": false, "removed": []}}}, "176": {"obj": {"id": 176, "model": "space"}, "fields": {"slug": "elev0f1", "title": {"en": "Elevator"}}, "titles": {"en": "Elevator"}, "created": false, "deleted": false, "m2m_changes": {"groups": {"added": [3], "cleared": false, "removed": []}}}, "177": {"obj": {"id": 177, "model": "space"}, "fields": {"icon": null, "slug": "a1f0st1", "level": 85, "title": {"en": "Stairs Floor 0 to 1"}, "groups": [], "height": null, "outside": false, "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[267.39, 194.28], [268.67, 194.28], [268.67, 198.24], [269.01, 198.24], [269.0, 194.28], [270.27, 194.28], [270.27, 199.47], [267.41, 199.47], [267.39, 194.28]]]}", "can_search": true, "import_tag": null, "can_describe": true, "external_url": null, "identifyable": null, "label_override": {}, "label_settings": null, "media_panel_done": false, "enter_description": {}, "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null, "base_mapdata_accessible": false}, "titles": {"en": "Stairs Floor 0 to 1"}, "created": true, "deleted": false, "m2m_changes": {}}}, "stair": {"411": {"obj": {"id": 411, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[267.31, 194.56], [268.74, 194.57]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "412": {"obj": {"id": 412, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[267.32, 195.37], [268.74, 195.38]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "413": {"obj": {"id": 413, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[267.32, 195.91], [268.74, 195.92]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "414": {"obj": {"id": 414, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[267.31, 195.1], [268.74, 195.11]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "415": {"obj": {"id": 415, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[267.31, 194.83], [268.74, 194.84]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "416": {"obj": {"id": 416, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[267.32, 195.64], [268.74, 195.65]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "417": {"obj": {"id": 417, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[267.32, 196.18], [268.74, 196.19]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "418": {"obj": {"id": 418, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[267.33, 197.26], [268.74, 197.27]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "419": {"obj": {"id": 419, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[267.33, 197.53], [268.74, 197.54]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "420": {"obj": {"id": 420, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[267.32, 196.45], [268.74, 196.46]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "421": {"obj": {"id": 421, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[267.32, 196.72], [268.74, 196.73]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "422": {"obj": {"id": 422, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[267.33, 197.8], [268.74, 197.81]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "423": {"obj": {"id": 423, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[267.32, 196.99], [268.74, 197.0]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "424": {"obj": {"id": 424, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[267.31, 194.56], [268.74, 194.57]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": true, "m2m_changes": {}}, "425": {"obj": {"id": 425, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[268.89, 198.08], [270.42, 198.08]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "426": {"obj": {"id": 426, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[268.88, 197.52], [270.42, 197.52]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "427": {"obj": {"id": 427, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[268.88, 197.8], [270.42, 197.8]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "428": {"obj": {"id": 428, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[268.87, 194.76], [270.42, 194.76]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "429": {"obj": {"id": 429, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[268.87, 195.87], [270.42, 195.87]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "430": {"obj": {"id": 430, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[268.87, 195.04], [270.42, 195.04]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "431": {"obj": {"id": 431, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[268.88, 196.14], [270.42, 196.14]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "432": {"obj": {"id": 432, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[268.87, 195.31], [270.42, 195.31]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "433": {"obj": {"id": 433, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[268.88, 196.42], [270.42, 196.42]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "434": {"obj": {"id": 434, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[268.88, 196.7], [270.42, 196.7]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "435": {"obj": {"id": 435, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[268.88, 197.25], [270.42, 197.25]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "436": {"obj": {"id": 436, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[268.87, 195.59], [270.42, 195.59]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "437": {"obj": {"id": 437, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[268.88, 196.97], [270.42, 196.97]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "438": {"obj": {"id": 438, "model": "stair"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"LineString\\", \\"coordinates\\": [[268.87, 194.48], [270.42, 194.48]]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}}, "graphnode": {"235": {"obj": {"id": 235, "model": "graphnode"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"Point\\", \\"coordinates\\": [268.16, 194.36]}", "import_tag": null}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}}, "altitudemarker": {"64": {"obj": {"id": 64, "model": "altitudemarker"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"Point\\", \\"coordinates\\": [269.89, 194.22]}", "import_tag": null, "groundaltitude": 12}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}, "65": {"obj": {"id": 65, "model": "altitudemarker"}, "fields": {"space": 177, "geometry": "{\\"type\\": \\"Point\\", \\"coordinates\\": [267.94, 194.33]}", "import_tag": null, "groundaltitude": 14}, "titles": {}, "created": true, "deleted": false, "m2m_changes": {}}}}}
18	2025-10-30 08:02:41.459639+00	unproposed			\N	2	183	\N	183	\N	{"prev": {"objects": {"area": {"158": {"titles": {"en": "Check-in area & Info point"}, "values": {"icon": null, "slug": "checkininfopoint", "space": 135, "title": {"en": "Check-in area & Info point"}, "groups": [119, 169], "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[422.04, 198.2], [422.41, 198.2], [422.41, 197.58], [422.04, 197.58], [422.04, 198.2]]]}", "can_search": true, "import_tag": null, "main_point": null, "can_describe": true, "external_url": null, "label_override": {}, "label_settings": 1, "slow_down_factor": "1.00", "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null}}, "162": {"titles": {"en": "Arena Visitor Experience"}, "values": {"icon": null, "slug": "arenavisitorexperiencemeetingpoint", "space": 31, "title": {"en": "Arena Visitor Experience"}, "groups": [21], "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[288.96, 227.73], [285.19, 227.73], [285.19, 226.2], [288.95, 226.2], [288.96, 227.73]]]}", "can_search": true, "import_tag": null, "main_point": null, "can_describe": true, "external_url": null, "label_override": {}, "label_settings": 1, "slow_down_factor": "1.00", "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null}}, "167": {"titles": {"en": "Workshop area"}, "values": {"icon": null, "slug": "workshop", "space": 36, "title": {"en": "Workshop area"}, "groups": [21], "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[207.26, 220.75], [217.62, 220.75], [217.57, 214.19], [207.32, 214.26], [207.26, 220.75]]]}", "can_search": true, "import_tag": null, "main_point": null, "can_describe": true, "external_url": null, "label_override": {}, "label_settings": 1, "slow_down_factor": "1.00", "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null}}, "170": {"titles": {"en": "Check-in area & Info point"}, "values": {"icon": null, "slug": "checkininfocranehall", "space": 36, "title": {"en": "Check-in area & Info point"}, "groups": [119, 169], "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[271.47, 220.52], [269.83, 220.51], [269.83, 217.14], [271.47, 217.12], [271.47, 220.52]]]}", "can_search": true, "import_tag": null, "main_point": null, "can_describe": true, "external_url": null, "label_override": {}, "label_settings": 1, "slow_down_factor": "1.00", "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null}}}}}, "objects": {"area": {"158": {"obj": {"id": 158, "model": "area"}, "fields": {"slug": "checkininfopointa2"}, "titles": {"en": "Check-in area & Info point"}, "created": false, "deleted": false, "m2m_changes": {}}, "162": {"obj": {"id": 162, "model": "area"}, "fields": {"slug": "arenavisitorexperience"}, "titles": {"en": "Arena Visitor Experience"}, "created": false, "deleted": false, "m2m_changes": {}}, "167": {"obj": {"id": 167, "model": "area"}, "fields": {"slug": "workshops"}, "titles": {"en": "Workshop area"}, "created": false, "deleted": false, "m2m_changes": {}}, "170": {"obj": {"id": 170, "model": "area"}, "fields": {"slug": "checkininfopointcranehall"}, "titles": {"en": "Check-in area & Info point"}, "created": false, "deleted": false, "m2m_changes": {}}}}}
19	2025-10-30 11:54:49.710217+00	applied	1		\N	3	190	192	192	1969	{"prev": {"objects": {"area": {"164": {"titles": {"en": "Crane Hall BOF meetings"}, "values": {"icon": null, "slug": "bofs", "space": 36, "title": {"en": "Crane Hall BOF meetings"}, "groups": [65], "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[244.86, 218.75], [241.5, 218.78], [241.56, 216.83], [244.86, 216.81], [244.86, 218.75]]]}", "can_search": true, "import_tag": null, "main_point": null, "can_describe": true, "external_url": "https://www.sfscon.it/tracks/crane-hall-bof-meeting", "label_override": {}, "label_settings": 1, "slow_down_factor": "1.00", "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null}}, "165": {"titles": {"en": "B2B Meetings"}, "values": {"icon": null, "slug": "b2b", "space": 36, "title": {"en": "B2B Meetings"}, "groups": [123], "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[233.94, 213.56], [227.63, 213.51], [227.62, 221.5], [233.94, 221.5], [233.94, 213.56]]]}", "can_search": true, "import_tag": null, "main_point": null, "can_describe": true, "external_url": null, "label_override": {}, "label_settings": 1, "slow_down_factor": "1.00", "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null}}, "166": {"titles": {"en": "Chill out area"}, "values": {"icon": null, "slug": "chillout", "space": 36, "title": {"en": "Chill out area"}, "groups": [133], "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[225.12, 221.06], [225.06, 213.88], [220.81, 213.88], [220.81, 221.06], [225.12, 221.06]]]}", "can_search": true, "import_tag": null, "main_point": null, "can_describe": true, "external_url": null, "label_override": {}, "label_settings": 1, "slow_down_factor": "1.00", "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null}}, "167": {"titles": {"en": "Workshop area"}, "values": {"icon": null, "slug": "workshop", "space": 36, "title": {"en": "Workshop area"}, "groups": [21], "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[207.26, 220.75], [217.62, 220.75], [217.57, 214.19], [207.32, 214.26], [207.26, 220.75]]]}", "can_search": true, "import_tag": null, "main_point": null, "can_describe": true, "external_url": null, "label_override": {}, "label_settings": 1, "slow_down_factor": "1.00", "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null}}}}}, "objects": {"area": {"164": {"obj": {"id": 164, "model": "area"}, "fields": {"groups": [21], "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[244.86, 218.75], [240.03, 218.71], [240.02, 216.81], [244.86, 216.81], [244.86, 218.75]]]}"}, "titles": {"en": "Crane Hall BOF meetings"}, "created": false, "deleted": false, "m2m_changes": {"groups": {"added": [21], "cleared": false, "removed": [65]}}}, "165": {"obj": {"id": 165, "model": "area"}, "fields": {"geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[233.95, 213.51], [227.6, 213.56], [227.63, 221.41], [233.94, 221.47], [233.95, 213.51]]]}"}, "titles": {"en": "B2B Meetings"}, "created": false, "deleted": false, "m2m_changes": {}}, "166": {"obj": {"id": 166, "model": "area"}, "fields": {"geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[226.16, 221.51], [226.1, 213.51], [220.77, 213.51], [220.83, 221.5], [226.16, 221.51]]]}"}, "titles": {"en": "Chill out area"}, "created": false, "deleted": false, "m2m_changes": {}}, "167": {"obj": {"id": 167, "model": "area"}, "fields": {"geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[207.33, 216.76], [217.5, 216.81], [217.61, 213.58], [207.23, 213.51], [207.33, 216.76]]]}"}, "titles": {"en": "Workshop area"}, "created": false, "deleted": false, "m2m_changes": {}}}}}
20	2025-10-30 12:19:40.439429+00	applied	Changes_3		\N	2	194	196	196	1979	{"prev": {"objects": {"area": {"185": {"titles": {"en": "Coffee station "}, "values": {"icon": null, "slug": "coffestationcranehall", "space": 36, "title": {"en": "Coffee station "}, "groups": [], "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[255.23, 221.95], [249.25, 221.95], [249.25, 223.24], [255.19, 223.2], [255.23, 221.95]]]}", "can_search": true, "import_tag": null, "main_point": null, "can_describe": true, "external_url": null, "label_override": {}, "label_settings": 1, "slow_down_factor": "1.00", "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null}}}, "space": {"160": {"titles": {"en": "Speakers & Supporters Lounge"}, "values": {"icon": null, "slug": "speakersandsupporterslounge", "level": 2, "title": {"en": "Speakers & Supporters Lounge"}, "groups": [], "height": null, "outside": false, "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[249.41, 229.47], [258.94, 229.5], [258.97, 223.35], [249.41, 223.35], [249.41, 229.47]]]}", "can_search": true, "import_tag": null, "can_describe": true, "external_url": null, "identifyable": null, "label_override": {}, "label_settings": null, "media_panel_done": false, "enter_description": {}, "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null, "base_mapdata_accessible": false}}}}}, "objects": {"area": {"185": {"obj": {"id": 185, "model": "area"}, "fields": {"icon": null, "slug": "coffestationcranehall", "space": 36, "title": {"en": "Coffee station "}, "groups": [], "geometry": "{\\"type\\": \\"Polygon\\", \\"coordinates\\": [[[255.23, 221.95], [249.25, 221.95], [249.25, 223.24], [255.19, 223.2], [255.23, 221.95]]]}", "can_search": true, "import_tag": null, "main_point": null, "can_describe": true, "external_url": null, "label_override": {}, "label_settings": 1, "slow_down_factor": "1", "import_block_data": false, "import_block_geom": false, "access_restriction": null, "load_group_display": null, "load_group_contribute": null}, "titles": {"en": "Coffee station "}, "created": true, "deleted": false, "m2m_changes": {"groups": {"added": [123], "cleared": false, "removed": []}}}}, "space": {"160": {"obj": {"id": 160, "model": "space"}, "fields": {"label_settings": 1}, "titles": {"en": "Speakers & Supporters Lounge"}, "created": false, "deleted": false, "m2m_changes": {"groups": {"added": [169], "cleared": false, "removed": []}}}}}}
\.


--
-- Data for Name: editor_changesetupdate; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.editor_changesetupdate (id, datetime, comment, state, title, description, objects_changed, assigned_to_id, changeset_id, user_id) FROM stdin;
11	2024-10-27 10:05:24.122876+00	\N		\N	\N	t	\N	5	1
12	2024-10-27 10:08:25.573123+00	\N		\N	\N	t	\N	5	1
13	2024-10-27 10:10:06.688136+00	\N		Add Crane Hall BOF meetings	add the POI for the BOF meetings in the Crane Hall	f	\N	5	1
14	2024-10-27 10:10:15.582027+00	\N	proposed	\N	\N	f	\N	5	1
15	2024-10-27 10:10:30.161808+00	\N	review	\N	\N	f	1	5	1
16	2024-10-27 10:10:35.45748+00	\N	applied	\N	\N	f	\N	5	1
17	2024-10-27 10:15:57.171981+00	\N		\N	\N	t	\N	6	\N
18	2024-10-28 10:27:30.247929+00	\N		\N	\N	t	\N	6	1
19	2024-10-28 10:27:56.27351+00	\N		\N	\N	t	\N	6	1
20	2024-10-28 10:35:07.946298+00	\N		Add Crane Hall BOF meetings	Add BOF meetings location	f	\N	6	1
21	2024-10-28 10:35:10.718123+00	\N	proposed	\N	\N	f	\N	6	1
22	2024-10-28 10:35:16.868547+00	\N	review	\N	\N	f	1	6	1
23	2024-10-28 10:35:30.293212+00	\N	applied	\N	\N	f	\N	6	1
24	2024-10-28 10:39:55.938127+00	\N		Change label BOF meetings	Add and move BOF meetings label	f	\N	7	1
25	2024-10-28 10:39:57.50337+00	\N	proposed	\N	\N	f	\N	7	1
26	2024-10-28 10:39:59.544028+00	\N	review	\N	\N	f	1	7	1
27	2024-10-28 10:40:03.615256+00	\N	applied	\N	\N	f	\N	7	1
28	2024-10-28 10:55:26.062094+00	\N		Modify Access President room label	Add NOI Board to label	f	\N	8	1
29	2024-10-28 10:55:27.527888+00	\N	proposed	\N	\N	f	\N	8	1
30	2024-10-28 10:55:29.420802+00	\N	review	\N	\N	f	1	8	1
31	2024-10-28 10:55:32.590528+00	\N	applied	\N	\N	f	\N	8	1
34	2025-10-19 17:29:06.731134+00	\N		\N	\N	t	\N	10	2
35	2025-10-19 17:30:09.169693+00	\N		\N	\N	t	\N	10	2
36	2025-10-19 17:30:54.168454+00	\N		\N	\N	t	\N	10	2
37	2025-10-19 17:31:07.962929+00	\N		\N	\N	t	\N	10	2
38	2025-10-19 17:35:30.304764+00	\N		\N	\N	t	\N	10	2
39	2025-10-19 17:37:02.065679+00	\N		\N	\N	t	\N	10	2
40	2025-10-19 17:37:15.569401+00	\N		\N	\N	t	\N	10	2
41	2025-10-19 17:38:05.374744+00	\N		\N	\N	t	\N	10	2
42	2025-10-19 17:38:15.571039+00	\N		\N	\N	t	\N	10	2
43	2025-10-19 17:38:31.531959+00	\N		\N	\N	t	\N	10	2
44	2025-10-19 17:38:37.573991+00	\N		\N	\N	t	\N	10	2
45	2025-10-19 17:38:49.066521+00	\N		\N	\N	t	\N	10	2
46	2025-10-19 17:40:18.771607+00	\N		\N	\N	t	\N	10	2
47	2025-10-19 17:40:32.188397+00	\N		\N	\N	t	\N	10	2
48	2025-10-19 17:49:09.14637+00	\N		\N	\N	t	\N	10	2
49	2025-10-19 17:52:37.760888+00	\N		\N	\N	t	\N	10	2
50	2025-10-19 17:57:20.33838+00	\N		Aggiunta aree Check-in area & Info point, Info point e Food court	Info point (-1), Check-in area & Info point (A2, Crane Hall), Food court (Open Theatre)	f	\N	10	2
51	2025-10-19 17:57:20.342849+00	\N	proposed	\N	\N	f	\N	10	2
52	2025-10-19 17:57:25.775294+00	\N	review	\N	\N	f	2	10	2
53	2025-10-20 09:35:32.999875+00	\N		\N	\N	t	\N	11	2
54	2025-10-20 09:42:50.070382+00	\N		\N	\N	t	\N	11	2
55	2025-10-20 09:54:16.474175+00	\N		\N	\N	t	\N	11	2
56	2025-10-20 09:59:03.293574+00	\N		\N	\N	t	\N	11	2
57	2025-10-20 09:59:31.898662+00	\N		\N	\N	t	\N	11	2
58	2025-10-20 10:00:33.790997+00	\N		\N	\N	t	\N	11	2
59	2025-10-20 10:14:16.544957+00	\N		Altre aggiunte	Aggiunta di: Arena Visitor Experience Meeting point (-1), Partners & Supporters booths (-1), Speakers & Supporters Lounge(0), Training Room (1)	f	\N	11	2
60	2025-10-20 10:14:16.559988+00	\N	proposed	\N	\N	f	\N	11	2
61	2025-10-20 10:15:08.87967+00	\N	unproposed	\N	\N	f	\N	11	2
62	2025-10-20 10:15:37.600674+00	\N	proposed	\N	\N	f	\N	11	2
63	2025-10-21 15:15:37.697396+00	\N		\N	\N	t	\N	12	3
64	2025-10-21 15:16:19.954795+00	\N		\N	\N	t	\N	12	3
65	2025-10-21 15:17:06.857255+00	\N		\N	\N	t	\N	12	3
66	2025-10-21 15:17:27.696865+00	\N		\N	\N	t	\N	12	3
67	2025-10-21 15:18:18.192084+00	\N		\N	\N	t	\N	12	3
68	2025-10-21 15:18:47.98364+00	\N		\N	\N	t	\N	12	3
69	2025-10-21 15:29:20.097558+00	\N	review	\N	\N	f	2	11	2
70	2025-10-21 16:04:16.291936+00	\N		Colori		f	\N	12	3
71	2025-10-21 16:04:16.297226+00	\N	proposed	\N	\N	f	\N	12	3
72	2025-10-21 16:13:30.039961+00	\N	applied	\N	\N	f	\N	10	2
73	2025-10-21 16:21:14.685266+00	\N	review	\N	\N	f	1	12	1
74	2025-10-21 16:21:56.85053+00	\N	applied	\N	\N	f	\N	11	2
75	2025-10-21 16:22:31.692553+00	\N	applied	\N	\N	f	\N	12	1
77	2025-10-22 08:54:17.256094+00	\N		\N	\N	t	\N	14	1
78	2025-10-22 08:54:42.545789+00	\N		\N	\N	t	\N	14	1
79	2025-10-22 08:55:02.670695+00	\N		\N	\N	t	\N	14	1
80	2025-10-22 08:55:55.00575+00	\N		\N	\N	t	\N	14	1
81	2025-10-22 08:56:42.888505+00	\N		\N	\N	t	\N	14	1
82	2025-10-22 08:59:12.093337+00	\N		\N	\N	t	\N	14	1
83	2025-10-22 09:00:23.002855+00	\N		\N	\N	t	\N	14	1
84	2025-10-22 09:00:47.569784+00	\N		\N	\N	t	\N	14	1
85	2025-10-22 09:02:24.556884+00	\N		\N	\N	t	\N	14	1
86	2025-10-22 09:02:49.388207+00	\N		\N	\N	t	\N	14	1
87	2025-10-22 09:03:07.637822+00	\N		\N	\N	t	\N	14	1
88	2025-10-22 09:03:16.89604+00	\N		\N	\N	t	\N	14	1
89	2025-10-22 09:03:25.909786+00	\N		\N	\N	t	\N	14	1
90	2025-10-22 10:11:23.061959+00	\N		\N	\N	t	\N	14	1
91	2025-10-22 10:12:10.177854+00	\N		\N	\N	t	\N	14	1
92	2025-10-22 10:15:31.462332+00	\N		\N	\N	t	\N	14	1
93	2025-10-22 10:15:46.565318+00	\N		\N	\N	t	\N	14	1
94	2025-10-22 10:18:59.916495+00	\N		\N	\N	t	\N	14	1
95	2025-10-22 10:19:27.980318+00	\N		\N	\N	t	\N	14	1
96	2025-10-22 10:19:44.607646+00	\N		\N	\N	t	\N	14	1
97	2025-10-22 10:21:27.131298+00	\N		\N	\N	t	\N	14	1
98	2025-10-22 10:21:28.46442+00	\N		\N	\N	t	\N	14	1
99	2025-10-22 10:21:30.005634+00	\N		\N	\N	t	\N	14	1
100	2025-10-22 10:21:31.746454+00	\N		\N	\N	t	\N	14	1
101	2025-10-22 10:21:33.45889+00	\N		\N	\N	t	\N	14	1
102	2025-10-22 10:21:35.483797+00	\N		\N	\N	t	\N	14	1
103	2025-10-22 10:21:37.934471+00	\N		\N	\N	t	\N	14	1
104	2025-10-22 10:21:40.506556+00	\N		\N	\N	t	\N	14	1
105	2025-10-22 10:21:43.859311+00	\N		\N	\N	t	\N	14	1
106	2025-10-22 10:21:47.120311+00	\N		\N	\N	t	\N	14	1
107	2025-10-22 10:21:51.595029+00	\N		\N	\N	t	\N	14	1
108	2025-10-22 10:21:55.696998+00	\N		\N	\N	t	\N	14	1
109	2025-10-22 10:22:00.182422+00	\N		\N	\N	t	\N	14	1
110	2025-10-22 10:22:05.745079+00	\N		\N	\N	t	\N	14	1
111	2025-10-22 10:22:43.367354+00	\N		\N	\N	t	\N	14	1
112	2025-10-22 10:24:05.034897+00	\N		\N	\N	t	\N	14	1
113	2025-10-22 10:24:10.890412+00	\N		\N	\N	t	\N	14	1
114	2025-10-22 10:24:17.304869+00	\N		\N	\N	t	\N	14	1
115	2025-10-22 10:24:23.856089+00	\N		\N	\N	t	\N	14	1
116	2025-10-22 10:24:31.627083+00	\N		\N	\N	t	\N	14	1
117	2025-10-22 10:24:39.278304+00	\N		\N	\N	t	\N	14	1
118	2025-10-22 10:24:47.927437+00	\N		\N	\N	t	\N	14	1
119	2025-10-22 10:24:57.112677+00	\N		\N	\N	t	\N	14	1
120	2025-10-22 10:25:07.686072+00	\N		\N	\N	t	\N	14	1
121	2025-10-22 10:25:18.383159+00	\N		\N	\N	t	\N	14	1
122	2025-10-22 10:25:29.810445+00	\N		\N	\N	t	\N	14	1
123	2025-10-22 10:25:41.405416+00	\N		\N	\N	t	\N	14	1
124	2025-10-22 10:25:54.001245+00	\N		\N	\N	t	\N	14	1
125	2025-10-22 10:26:09.603866+00	\N		\N	\N	t	\N	14	1
126	2025-10-22 10:27:05.243001+00	\N		\N	\N	t	\N	14	1
127	2025-10-22 10:27:58.84176+00	\N		Additions and fixes to A1 floor 1		f	\N	14	1
128	2025-10-22 10:27:58.851851+00	\N	applied	\N	\N	f	\N	14	1
158	2025-10-27 14:15:12.802329+00	\N		\N	\N	t	\N	16	1
159	2025-10-27 14:15:17.817008+00	\N		\N	\N	t	\N	16	1
160	2025-10-27 14:15:23.738435+00	\N		\N	\N	t	\N	16	1
161	2025-10-27 14:16:02.465051+00	\N		\N	\N	t	\N	16	1
162	2025-10-27 14:17:18.199266+00	\N		\N	\N	t	\N	16	1
163	2025-10-27 14:17:46.586902+00	\N		Hole in stairs to floor 1		f	\N	16	1
164	2025-10-27 14:17:46.596004+00	\N	applied	\N	\N	f	\N	16	1
165	2025-10-27 14:19:13.730952+00	\N		\N	\N	t	\N	17	1
166	2025-10-27 14:19:15.566903+00	\N		\N	\N	t	\N	17	1
167	2025-10-27 14:19:23.390598+00	\N		\N	\N	t	\N	17	1
168	2025-10-27 14:19:25.864736+00	\N		\N	\N	t	\N	17	1
169	2025-10-27 14:19:30.839824+00	\N		\N	\N	t	\N	17	1
170	2025-10-27 14:19:32.437699+00	\N		\N	\N	t	\N	17	1
171	2025-10-27 14:19:33.979713+00	\N		\N	\N	t	\N	17	1
172	2025-10-27 14:19:40.30339+00	\N		\N	\N	t	\N	17	1
173	2025-10-27 14:19:43.721398+00	\N		\N	\N	t	\N	17	1
174	2025-10-27 14:19:46.543487+00	\N		\N	\N	t	\N	17	1
175	2025-10-27 14:19:50.410448+00	\N		\N	\N	t	\N	17	1
176	2025-10-27 14:19:56.782129+00	\N		\N	\N	t	\N	17	1
177	2025-10-27 14:20:00.752735+00	\N		\N	\N	t	\N	17	1
178	2025-10-27 14:20:26.953279+00	\N		First part of graph on floor 1		f	\N	17	1
179	2025-10-27 14:20:26.961242+00	\N	applied	\N	\N	f	\N	17	1
180	2025-10-30 08:02:41.463478+00	\N		\N	\N	t	\N	18	2
181	2025-10-30 08:03:57.872721+00	\N		\N	\N	t	\N	18	2
182	2025-10-30 08:05:23.847524+00	\N		\N	\N	t	\N	18	2
183	2025-10-30 09:04:22.28537+00	\N		\N	\N	t	\N	18	2
184	2025-10-30 11:54:49.713303+00	\N		\N	\N	t	\N	19	3
185	2025-10-30 11:55:33.081095+00	\N		\N	\N	t	\N	19	3
186	2025-10-30 11:55:55.541291+00	\N		\N	\N	t	\N	19	3
187	2025-10-30 11:56:13.118997+00	\N		\N	\N	t	\N	19	3
188	2025-10-30 11:58:00.673314+00	\N		\N	\N	t	\N	19	3
189	2025-10-30 11:59:27.034853+00	\N		\N	\N	t	\N	19	3
190	2025-10-30 12:00:21.550348+00	\N		\N	\N	t	\N	19	3
191	2025-10-30 12:05:24.51986+00	\N		1		f	\N	19	3
192	2025-10-30 12:05:24.528901+00	\N	applied	\N	\N	f	\N	19	3
193	2025-10-30 12:19:40.442425+00	\N		\N	\N	t	\N	20	2
194	2025-10-30 12:24:21.79367+00	\N		\N	\N	t	\N	20	2
195	2025-10-30 12:24:49.085348+00	\N		Changes_3		f	\N	20	2
196	2025-10-30 12:24:49.093308+00	\N	applied	\N	\N	f	\N	20	2
\.


--
-- Data for Name: mapdata_accesspermission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_accesspermission (id, expire_date, can_grant, unique_key, access_restriction_id, author_id, token_id, user_id, access_restriction_group_id, session_token, sso_grant_id) FROM stdin;
\.


--
-- Data for Name: mapdata_accesspermissionssogrant; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_accesspermissionssogrant (id, provider, "group", access_restriction_id, access_restriction_group_id) FROM stdin;
\.


--
-- Data for Name: mapdata_accesspermissiontoken; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_accesspermissiontoken (id, token, valid_until, unlimited, redeemed, can_grant, unique_key, data, author_id) FROM stdin;
\.


--
-- Data for Name: mapdata_accessrestriction; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_accessrestriction (id, titles, public) FROM stdin;
\.


--
-- Data for Name: mapdata_accessrestrictiongroup; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_accessrestrictiongroup (id, titles) FROM stdin;
\.


--
-- Data for Name: mapdata_accessrestrictiongroup_members; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_accessrestrictiongroup_members (id, accessrestrictiongroup_id, accessrestriction_id) FROM stdin;
\.


--
-- Data for Name: mapdata_altitudearea; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_altitudearea (id, geometry, altitude, level_id, import_tag, points) FROM stdin;
4	{"type": "MultiPolygon", "coordinates": [[[[198.82, 114.05], [198.77, 115.5], [200.53, 115.55], [200.48, 114.05], [198.82, 114.05]]], [[[258.97, 223.35], [249.41, 223.35], [249.41, 229.47], [258.94, 229.5], [258.97, 223.35]]], [[[343.92, 157.08], [353.88, 157.08], [362.27, 157.89], [353.97, 157.05], [343.92, 157.08]]], [[[363.92, 158.05], [365.09, 158.17], [353.88, 157.25], [343.62, 157.25], [343.62, 150.0], [298.72, 146.28], [276.27, 144.15], [276.32, 143.58], [277.46, 143.69], [278.01, 138.07], [277.6, 142.23], [276.65, 142.16], [277.04, 137.98], [276.65, 142.12], [276.39, 142.09], [276.45, 141.51], [274.05, 141.28], [274.01, 141.78], [273.58, 141.74], [273.6, 141.52], [273.77, 141.54], [273.93, 139.67], [272.17, 139.5], [272.01, 141.37], [272.73, 141.44], [272.71, 141.67], [271.97, 141.6], [271.82, 143.16], [272.82, 143.25], [272.76, 143.82], [271.2, 143.67], [271.7, 139.66], [270.53, 139.55], [270.48, 140.23], [257.45, 139.03], [257.51, 138.35], [253.44, 137.99], [253.37, 138.64], [247.78, 138.13], [248.29, 132.44], [249.0, 132.51], [249.26, 129.73], [242.74, 129.16], [242.76, 129.01], [231.46, 127.99], [231.31, 139.99], [229.09, 144.68], [225.1, 149.11], [218.76, 151.9], [210.52, 151.46], [210.71, 194.43], [215.06, 194.42], [215.06, 191.62], [259.63, 191.62], [259.63, 192.47], [272.66, 192.47], [272.66, 193.31], [272.37, 193.32], [272.37, 192.83], [267.32, 192.84], [267.32, 194.29], [270.36, 194.29], [270.58, 194.29], [270.62, 201.23], [269.47, 201.23], [269.47, 201.24], [269.44, 201.24], [269.44, 201.23], [251.96, 201.23], [251.96, 200.52], [259.45, 200.52], [259.42, 192.41], [240.04, 192.41], [240.04, 200.52], [250.47, 200.52], [250.46, 201.23], [239.73, 201.23], [239.73, 198.92], [235.34, 198.92], [235.34, 201.25], [215.82, 201.25], [215.82, 203.44], [235.53, 203.44], [235.53, 203.75], [239.58, 203.75], [239.59, 205.04], [239.59, 203.39], [263.91, 203.39], [263.91, 206.18], [263.73, 206.18], [263.73, 206.1], [260.14, 206.1], [260.14, 208.71], [264.21, 208.69], [264.21, 207.11], [263.73, 207.11], [263.73, 206.9], [263.91, 206.9], [263.91, 206.91], [265.21, 206.91], [265.21, 207.17], [264.39, 207.17], [264.39, 208.67], [266.72, 208.66], [266.72, 207.17], [265.95, 207.17], [265.95, 206.91], [266.94, 206.91], [266.94, 206.89], [267.11, 206.89], [267.11, 207.16], [266.89, 207.16], [266.9, 208.67], [270.3, 208.68], [270.3, 206.08], [267.12, 206.09], [267.12, 206.1], [266.94, 206.1], [266.94, 203.47], [269.44, 203.47], [269.44, 203.46], [269.46, 203.46], [269.46, 203.47], [270.63, 203.47], [270.63, 204.15], [270.4, 204.15], [270.4, 203.71], [267.26, 203.71], [267.26, 205.83], [270.4, 205.8], [270.4, 205.08], [270.64, 205.08], [270.64, 206.15], [272.37, 206.15], [272.37, 205.42], [272.66, 205.42], [272.66, 207.36], [274.5, 207.36], [274.5, 207.3], [274.99, 207.3], [274.99, 205.44], [275.11, 205.44], [275.11, 205.42], [283.42, 205.42], [283.42, 194.36], [283.68, 194.36], [283.68, 194.29], [272.7, 194.29], [272.7, 194.23], [302.38, 194.13], [302.41, 200.83], [337.54, 200.75], [337.54, 185.02], [352.38, 185.02], [352.38, 180.37], [422.1, 180.52], [422.1, 184.79], [427.34, 184.8], [427.48, 198.98], [426.57, 198.98], [426.56, 190.86], [414.02, 190.85], [414.03, 189.37], [413.95, 189.37], [413.95, 189.21], [414.01, 189.21], [414.01, 186.02], [411.86, 186.02], [411.86, 189.21], [412.34, 189.21], [412.34, 189.36], [411.87, 189.36], [411.81, 195.58], [421.62, 195.58], [421.63, 198.79], [421.34, 198.79], [421.34, 197.36], [419.78, 197.36], [419.81, 201.18], [412.0, 201.22], [412.0, 207.34], [420.99, 207.34], [420.99, 201.31], [420.77, 201.31], [420.77, 200.51], [421.34, 200.51], [421.34, 200.43], [421.63, 200.43], [421.63, 200.44], [421.91, 200.44], [421.91, 201.15], [423.2, 201.15], [423.2, 201.35], [421.64, 201.35], [421.64, 207.7], [426.99, 207.72], [426.99, 201.35], [424.95, 201.35], [424.95, 201.15], [426.57, 201.15], [426.57, 200.72], [427.5, 200.72], [427.5, 201.0], [440.17, 201.0], [440.19, 164.3], [396.06, 160.7], [399.94, 124.9], [389.56, 123.88], [386.49, 153.69], [364.71, 151.88], [354.13, 151.04], [343.88, 151.12], [343.89, 157.08], [343.92, 157.08], [343.89, 151.17], [354.19, 151.27], [364.46, 152.22], [363.92, 158.05]], [[293.81, 183.88], [294.19, 184.59], [294.47, 185.63], [294.44, 187.09], [294.0, 188.31], [293.22, 189.28], [291.94, 190.19], [290.22, 190.56], [288.31, 190.09], [287.25, 189.38], [286.38, 188.31], [285.97, 186.72], [285.97, 185.53], [286.22, 184.53], [286.91, 183.5], [287.66, 182.72], [288.63, 182.22], [289.47, 181.97], [291.06, 182.03], [292.03, 182.38], [293.03, 182.94], [293.81, 183.88]], [[274.56, 199.78], [274.56, 199.21], [275.1, 199.19], [275.1, 199.78], [274.56, 199.78]], [[275.07, 203.84], [274.54, 203.84], [274.54, 203.3], [275.07, 203.3], [275.07, 203.84]], [[272.37, 204.1], [272.37, 194.36], [272.66, 194.36], [272.66, 204.1], [272.37, 204.1]], [[269.84, 176.84], [270.18, 177.33], [270.41, 178.03], [270.4, 178.69], [270.29, 179.19], [270.09, 179.56], [269.8, 179.94], [269.47, 180.22], [269.1, 180.43], [268.67, 180.58], [268.2, 180.63], [267.74, 180.58], [267.17, 180.38], [266.69, 180.07], [266.21, 179.48], [266.0, 178.89], [265.94, 178.21], [266.08, 177.7], [266.3, 177.23], [266.62, 176.8], [267.02, 176.47], [267.48, 176.23], [268.26, 176.12], [268.79, 176.21], [269.48, 176.55], [269.84, 176.84]]], [[[343.99, 201.08], [343.29, 201.08], [343.29, 200.65], [343.69, 200.65], [343.69, 200.94], [344.15, 200.94], [344.15, 207.31], [352.44, 207.31], [352.44, 201.31], [345.35, 201.31], [345.35, 197.45], [343.69, 197.45], [343.69, 198.97], [343.29, 198.97], [343.29, 195.59], [350.88, 195.59], [350.88, 188.95], [348.51, 188.95], [348.51, 189.49], [348.25, 189.49], [348.24, 190.57], [348.51, 190.57], [348.51, 190.87], [343.34, 190.87], [343.28, 190.63], [338.78, 190.63], [338.78, 201.08], [338.21, 201.08], [338.21, 207.65], [343.99, 207.64], [343.99, 201.08]]], [[[269.09, 229.5], [272.65, 229.5], [272.65, 225.14], [269.09, 225.14], [269.09, 229.5]]], [[[249.11, 234.45], [249.11, 246.06], [300.43, 246.07], [300.43, 234.45], [249.11, 234.45]]]]}	0.00	2	\N	\N
319	{"type": "Polygon", "coordinates": [[[248.98, 132.78], [248.95, 133.05], [248.93, 133.31], [249.58, 133.37], [249.25, 136.9], [252.65, 137.21], [252.6, 137.91], [252.91, 137.94], [253.18, 137.96], [253.44, 137.99], [257.51, 138.35], [257.77, 138.38], [258.05, 138.4], [258.37, 138.43], [258.42, 137.74], [269.81, 138.8], [269.75, 139.48], [269.98, 139.5], [270.26, 139.53], [270.53, 139.55], [271.7, 139.66], [271.72, 139.44], [271.74, 139.24], [271.87, 138.0], [267.04, 137.54], [267.11, 136.59], [272.35, 137.07], [273.26, 127.01], [272.34, 137.49], [273.55, 137.6], [273.54, 137.7], [272.35, 137.59], [272.17, 139.25], [274.22, 139.46], [274.18, 139.93], [276.59, 140.15], [276.8, 138.01], [276.29, 137.96], [276.29, 137.85], [278.73, 138.08], [278.78, 137.51], [278.88, 137.51], [278.8, 138.32], [278.45, 138.26], [277.93, 143.73], [298.3, 145.79], [300.23, 125.07], [280.22, 123.24], [279.93, 126.35], [279.8, 126.34], [280.09, 123.21], [278.08, 123.02], [278.29, 120.53], [277.97, 120.5], [277.98, 120.4], [279.71, 120.55], [280.1, 116.13], [277.53, 115.88], [277.11, 120.32], [277.19, 120.33], [277.18, 120.43], [276.83, 120.4], [276.85, 120.29], [276.97, 120.3], [277.36, 115.87], [274.35, 115.6], [273.92, 120.01], [276.07, 120.21], [276.06, 120.34], [275.97, 120.33], [275.97, 120.38], [275.85, 120.36], [275.85, 120.31], [273.93, 120.14], [273.72, 122.27], [275.64, 122.43], [275.71, 121.77], [275.82, 121.78], [275.72, 122.77], [273.65, 122.59], [273.65, 122.61], [265.19, 121.84], [264.98, 123.97], [254.68, 122.99], [253.85, 123.36], [253.29, 123.74], [252.79, 124.22], [252.34, 124.92], [251.29, 135.14], [261.95, 136.12], [261.87, 137.05], [259.39, 136.82], [250.34, 135.98], [250.34, 135.97], [250.26, 135.96], [250.88, 129.87], [249.67, 129.76], [249.68, 129.64], [249.27, 129.6], [249.0, 132.51], [248.98, 132.78]], [[249.64, 133.38], [249.66, 133.09], [249.67, 132.96], [249.64, 133.38]], [[295.26, 131.15], [295.29, 130.8], [297.19, 130.99], [297.16, 131.32], [295.26, 131.15]], [[295.63, 136.96], [295.67, 136.63], [296.01, 136.66], [295.99, 137.0], [295.63, 136.96]], [[295.7, 140.02], [295.36, 139.99], [295.39, 139.65], [295.73, 139.68], [295.7, 140.02]], [[289.4, 130.61], [289.43, 130.26], [291.34, 130.45], [291.31, 130.79], [289.4, 130.61]], [[289.73, 136.42], [289.76, 136.09], [290.1, 136.12], [290.07, 136.45], [289.73, 136.42]], [[289.8, 139.48], [289.45, 139.44], [289.48, 139.11], [289.83, 139.14], [289.8, 139.48]], [[283.53, 130.08], [283.56, 129.74], [285.47, 129.89], [285.43, 130.25], [283.53, 130.08]], [[283.88, 135.89], [283.91, 135.54], [284.27, 135.58], [284.23, 135.92], [283.88, 135.89]], [[283.59, 138.91], [283.62, 138.56], [283.99, 138.59], [283.95, 138.95], [283.59, 138.91]], [[279.08, 134.26], [279.5, 129.7], [277.69, 129.53], [277.76, 128.27], [279.62, 128.37], [279.67, 127.78], [279.79, 127.79], [279.01, 136.06], [278.92, 136.05], [278.97, 135.42], [277.16, 135.26], [277.27, 134.14], [279.08, 134.26]], [[270.93, 128.9], [271.03, 127.98], [272.81, 128.11], [272.71, 129.05], [270.93, 128.9]], [[270.45, 134.46], [270.5, 133.56], [272.32, 133.69], [272.23, 134.62], [270.45, 134.46]], [[267.48, 127.67], [267.49, 127.31], [268.85, 127.44], [268.81, 127.78], [267.48, 127.67]], [[266.82, 134.49], [266.86, 134.14], [268.22, 134.26], [268.16, 134.6], [266.82, 134.49]], [[264.1, 136.31], [265.24, 136.42], [265.16, 137.36], [264.05, 137.26], [264.1, 136.31]], [[263.35, 127.27], [263.38, 126.93], [264.74, 127.02], [264.71, 127.42], [263.35, 127.27]], [[262.7, 134.11], [262.73, 133.74], [264.11, 133.86], [264.07, 134.24], [262.7, 134.11]], [[260.54, 126.65], [260.5, 127.0], [259.35, 126.91], [259.25, 127.87], [258.86, 127.82], [259.01, 126.51], [260.54, 126.65]], [[258.74, 133.37], [259.89, 133.51], [259.85, 133.84], [258.32, 133.7], [258.46, 132.42], [258.85, 132.46], [258.74, 133.37]], [[253.0, 137.17], [253.08, 137.18], [252.66, 137.14], [253.0, 137.17]], [[253.08, 137.18], [253.05, 137.53], [253.07, 137.24], [253.08, 137.18]], [[253.05, 137.53], [256.28, 137.82], [253.48, 137.57], [253.22, 137.55], [253.05, 137.53]]]}	1.00	2	\N	\N
266	{"type": "Polygon", "coordinates": [[[264.39, 207.17], [265.23, 207.17], [265.23, 207.02], [263.85, 207.03], [263.85, 206.84], [263.73, 206.84], [263.73, 207.11], [264.21, 207.11], [264.21, 208.69], [260.14, 208.71], [260.14, 206.1], [263.73, 206.1], [263.73, 206.2], [263.85, 206.2], [263.82, 201.33], [270.54, 201.3], [270.54, 199.69], [272.71, 199.69], [272.71, 199.25], [274.47, 199.25], [274.47, 212.02], [274.66, 212.02], [274.66, 222.42], [274.53, 222.42], [274.53, 229.98], [283.48, 229.98], [283.48, 230.83], [283.95, 230.83], [283.95, 230.23], [285.79, 230.23], [285.79, 231.93], [283.95, 231.93], [283.95, 231.61], [283.48, 231.61], [283.48, 232.66], [283.95, 232.66], [283.95, 232.3], [285.79, 232.3], [285.79, 234.0], [283.95, 234.0], [283.95, 233.44], [283.48, 233.44], [283.48, 233.99], [272.62, 233.99], [272.62, 232.17], [268.76, 232.17], [268.76, 233.94], [266.97, 233.94], [266.97, 230.34], [272.63, 230.34], [272.7, 203.64], [272.43, 203.64], [272.43, 205.89], [270.62, 205.89], [270.62, 203.47], [266.91, 203.47], [266.91, 206.15], [267.12, 206.15], [267.12, 206.09], [270.3, 206.08], [270.3, 208.68], [266.9, 208.67], [266.89, 207.16], [267.11, 207.16], [267.11, 206.94], [266.91, 206.94], [266.91, 207.0], [265.93, 207.01], [265.93, 207.17], [266.72, 207.17], [266.72, 208.66], [264.39, 208.67], [264.39, 207.17]]]}	9.25	38	\N	\N
21	{"type": "MultiPolygon", "coordinates": [[[[334.55, 157.98], [341.05, 157.98], [341.05, 157.78], [342.07, 157.07], [343.12, 156.77], [350.82, 156.73], [353.91, 157.02], [354.92, 157.34], [355.44, 157.62], [355.84, 157.94], [355.84, 158.02], [362.3, 158.03], [361.84, 156.82], [361.26, 155.68], [360.56, 154.73], [359.63, 153.73], [358.53, 152.9], [357.19, 152.16], [355.89, 151.67], [354.83, 151.42], [351.13, 151.08], [343.14, 151.06], [341.79, 151.23], [340.49, 151.57], [339.46, 152.06], [338.54, 152.56], [336.83, 153.94], [335.8, 155.2], [335.2, 156.29], [334.55, 157.98]]], [[[268.96, 197.9], [270.36, 197.9], [270.36, 197.6], [268.96, 197.6], [268.96, 197.9]]], [[[267.36, 205.58], [270.36, 205.58], [270.36, 203.59], [267.36, 203.59], [267.36, 205.58]]]]}	-4.90	77	\N	\N
70	{"type": "MultiPolygon", "coordinates": [[[[276.75, 141.18], [277.7, 141.28], [277.72, 141.02], [276.77, 140.92], [276.75, 141.18]]], [[[270.36, 194.09], [268.93, 194.09], [268.93, 194.3], [270.36, 194.3], [270.36, 194.09]]], [[[301.53, 194.38], [284.05, 194.38], [284.05, 195.77], [301.53, 195.77], [301.53, 194.38]]], [[[272.74, 233.92], [272.73, 232.33], [272.67, 232.33], [272.67, 233.92], [272.74, 233.92]]]]}	0.00	11	\N	\N
274	{"type": "Polygon", "coordinates": [[[284.05, 206.6], [284.05, 205.25], [301.53, 205.25], [301.53, 206.6], [284.05, 206.6]]]}	-3.08	11	\N	\N
273	{"type": "Polygon", "coordinates": [[[284.05, 205.25], [284.05, 203.9], [301.53, 203.9], [301.53, 205.25], [284.05, 205.25]]]}	-2.69	11	\N	\N
271	{"type": "Polygon", "coordinates": [[[284.05, 202.54], [284.05, 201.19], [301.53, 201.19], [301.53, 202.54], [284.05, 202.54]]]}	-1.92	11	\N	\N
268	{"type": "Polygon", "coordinates": [[[284.05, 197.12], [284.05, 195.77], [301.53, 195.77], [301.53, 197.12], [284.05, 197.12]]]}	-0.38	11	\N	\N
272	{"type": "Polygon", "coordinates": [[[284.05, 203.9], [284.05, 202.54], [301.53, 202.54], [301.53, 203.9], [284.05, 203.9]], [[300.36, 203.34], [299.83, 203.34], [299.83, 203.84], [300.36, 203.84], [300.36, 203.34]], [[289.5, 203.85], [289.49, 203.34], [286.34, 203.34], [286.34, 203.85], [289.5, 203.85]]]}	-2.31	11	\N	\N
101	{"type": "Polygon", "coordinates": [[[274.48, 192.1], [272.72, 192.1], [272.72, 201.56], [274.49, 201.56], [274.48, 192.1]]]}	\N	10	\N	[{"altitude": -3.6, "coordinates": [274.4770022261799, 192.099]}, {"altitude": -3.6, "coordinates": [274.4770035618878, 192.1]}, {"altitude": -3.6, "coordinates": [272.72, 192.1]}, {"altitude": -3.6, "coordinates": [272.72, 192.099]}, {"altitude": -4.1, "coordinates": [272.72, 201.561]}, {"altitude": -4.1, "coordinates": [272.72, 201.56]}, {"altitude": -4.1, "coordinates": [274.4896393588602, 201.56]}, {"altitude": -4.1, "coordinates": [274.4896406944804, 201.56099993432932]}]
11	{"type": "Polygon", "coordinates": [[[272.87, 185.46], [274.47, 185.46], [274.48, 192.1], [272.72, 192.1], [272.72, 189.23], [272.36, 189.23], [272.36, 191.91], [272.15, 191.91], [272.15, 207.92], [270.55, 207.92], [270.55, 205.04], [270.25, 205.04], [270.27, 204.06], [270.56, 204.06], [270.57, 194.28], [270.33, 194.29], [270.32, 194.87], [268.94, 194.87], [268.95, 194.23], [268.7, 194.21], [268.71, 195.91], [267.23, 195.92], [267.23, 192.76], [270.54, 192.77], [270.52, 184.39], [272.36, 184.39], [272.36, 185.46], [272.72, 185.46], [272.87, 185.46]]]}	-3.60	10	\N	\N
102	{"type": "Polygon", "coordinates": [[[272.72, 211.63], [274.5, 211.63], [274.5, 204.02], [272.72, 204.02], [272.72, 211.63]]]}	\N	10	\N	[{"altitude": -4.1, "coordinates": [274.50039628327477, 204.019]}, {"altitude": -4.1, "coordinates": [274.5003967855349, 204.02]}, {"altitude": -4.1, "coordinates": [272.72, 204.02]}, {"altitude": -4.1, "coordinates": [272.72, 204.019]}, {"altitude": -4.5, "coordinates": [272.72, 211.631]}, {"altitude": -4.5, "coordinates": [272.72, 211.63]}, {"altitude": -4.5, "coordinates": [274.5042189854345, 211.63]}, {"altitude": -4.5, "coordinates": [274.50421948768224, 211.63099997531825]}]
355	{"type": "MultiPolygon", "coordinates": [[[[270.64, 206.76], [272.37, 206.76], [272.37, 206.46], [270.64, 206.46], [270.64, 206.76]]], [[[274.99, 211.37], [274.99, 211.43], [275.11, 211.43], [275.11, 207.93], [274.99, 207.93], [274.99, 207.97], [274.5, 207.97], [274.5, 207.93], [272.66, 207.92], [272.66, 211.43], [274.54, 211.43], [274.54, 211.37], [274.99, 211.37]]]]}	0.30	2	\N	\N
360	{"type": "MultiPolygon", "coordinates": [[[[248.29, 132.44], [247.78, 138.13], [253.37, 138.64], [253.44, 137.99], [253.18, 137.96], [253.14, 138.35], [248.07, 137.88], [248.55, 132.74], [248.98, 132.78], [249.0, 132.51], [248.29, 132.44]]], [[[270.48, 140.23], [270.53, 139.55], [270.26, 139.53], [270.22, 139.92], [257.73, 138.78], [257.77, 138.38], [257.51, 138.35], [257.45, 139.03], [270.48, 140.23]]], [[[276.48, 141.24], [274.08, 141.01], [274.05, 141.28], [276.45, 141.51], [276.48, 141.24]]]]}	0.17	2	\N	\N
226	{"type": "Polygon", "coordinates": [[[269.03, 233.92], [266.97, 233.92], [266.97, 230.31], [269.03, 230.31], [269.03, 231.89], [268.77, 231.89], [268.76, 232.33], [269.03, 232.33], [269.03, 233.92]]]}	2.21	85	\N	\N
267	{"type": "MultiPolygon", "coordinates": [[[[283.95, 230.86], [283.59, 230.86], [283.57, 231.59], [283.95, 231.59], [283.95, 231.93], [285.79, 231.93], [285.79, 230.23], [283.95, 230.23], [283.95, 230.86]]], [[[285.79, 232.3], [283.95, 232.3], [283.95, 232.7], [283.56, 232.7], [283.55, 233.45], [283.95, 233.45], [283.95, 234.0], [285.79, 234.0], [285.79, 232.3]]]]}	6.75	82	\N	\N
103	{"type": "Polygon", "coordinates": [[[272.72, 223.13], [274.51, 223.13], [274.51, 213.55], [272.72, 213.55], [272.72, 223.13]]]}	\N	10	\N	[{"altitude": -4.5, "coordinates": [274.50518332496233, 213.55]}, {"altitude": -4.5, "coordinates": [272.72, 213.55]}, {"altitude": -4.5, "coordinates": [272.72, 213.549]}, {"altitude": -4.5, "coordinates": [274.5051828227022, 213.549]}, {"altitude": -5.0, "coordinates": [272.72, 223.131]}, {"altitude": -5.0, "coordinates": [272.72, 223.13]}, {"altitude": -5.0, "coordinates": [274.50999497739826, 223.13]}, {"altitude": -5.0, "coordinates": [274.509995479646, 223.13099997531825]}]
254	{"type": "Polygon", "coordinates": [[[269.03, 233.92], [266.97, 233.92], [266.97, 230.31], [269.03, 230.31], [269.03, 231.89], [268.77, 231.89], [268.76, 232.33], [269.03, 232.33], [269.03, 233.92]]]}	6.84	82	\N	\N
359	{"type": "MultiPolygon", "coordinates": [[[[248.37, 137.64], [252.89, 138.06], [252.91, 137.94], [252.6, 137.91], [252.61, 137.77], [248.66, 137.4], [249.04, 133.32], [248.93, 133.31], [248.95, 133.05], [248.79, 133.04], [248.37, 137.64]]], [[[269.97, 139.65], [269.98, 139.5], [269.75, 139.48], [269.76, 139.33], [258.38, 138.29], [258.37, 138.43], [258.05, 138.4], [258.04, 138.53], [269.97, 139.65]]], [[[276.53, 140.7], [274.13, 140.47], [274.1, 140.74], [276.5, 140.97], [276.53, 140.7]]], [[[272.66, 211.99], [274.54, 211.98], [274.54, 211.71], [272.66, 211.71], [272.66, 211.99]]]]}	0.50	2	\N	\N
357	{"type": "MultiPolygon", "coordinates": [[[[248.55, 132.74], [248.07, 137.88], [253.14, 138.35], [253.18, 137.96], [252.91, 137.94], [252.89, 138.06], [248.37, 137.64], [248.79, 133.04], [248.95, 133.05], [248.98, 132.78], [248.55, 132.74]]], [[[270.22, 139.92], [270.26, 139.53], [269.98, 139.5], [269.97, 139.65], [258.04, 138.53], [258.05, 138.4], [257.77, 138.38], [257.73, 138.78], [270.22, 139.92]]], [[[274.08, 141.01], [276.48, 141.24], [276.5, 140.97], [274.1, 140.74], [274.08, 141.01]]]]}	0.33	2	\N	\N
14	{"type": "Polygon", "coordinates": [[[274.46, 181.71], [272.72, 181.71], [272.72, 185.46], [274.47, 185.46], [274.46, 181.71]]]}	\N	10	\N	[{"altitude": -3.45, "coordinates": [274.463124220837, 181.709]}, {"altitude": -3.45, "coordinates": [274.4631255565449, 181.71]}, {"altitude": -3.45, "coordinates": [272.72, 181.71]}, {"altitude": -3.45, "coordinates": [272.72, 181.709]}, {"altitude": -3.6, "coordinates": [272.87, 185.46]}, {"altitude": -3.6, "coordinates": [274.46813446126447, 185.46]}, {"altitude": -3.6, "coordinates": [274.46813579688467, 185.46099993432932]}, {"altitude": -3.6, "coordinates": [272.71900000000005, 185.46]}, {"altitude": -3.6, "coordinates": [272.72, 185.46]}]
315	{"type": "MultiPolygon", "coordinates": [[[[248.95, 137.15], [249.3, 133.35], [249.04, 133.32], [248.66, 137.4], [252.61, 137.77], [252.63, 137.5], [248.95, 137.15]]], [[[269.79, 139.07], [258.4, 138.01], [258.38, 138.29], [269.76, 139.33], [269.79, 139.07]]], [[[274.13, 140.47], [276.53, 140.7], [276.56, 140.42], [274.15, 140.19], [274.13, 140.47]]]]}	0.67	2	\N	\N
358	{"type": "MultiPolygon", "coordinates": [[[[248.95, 137.15], [252.63, 137.5], [252.65, 137.21], [249.25, 136.9], [249.58, 133.37], [249.3, 133.35], [248.95, 137.15]]], [[[269.81, 138.8], [258.42, 137.74], [258.4, 138.01], [269.79, 139.07], [269.81, 138.8]]], [[[276.59, 140.15], [274.18, 139.93], [274.15, 140.19], [276.56, 140.42], [276.59, 140.15]]]]}	0.83	2	\N	\N
31	{"type": "Polygon", "coordinates": [[[267.43, 197.6], [267.43, 197.3], [268.69, 197.3], [268.69, 197.6], [267.43, 197.6]]]}	-5.56	77	\N	\N
363	{"type": "Polygon", "coordinates": [[[235.53, 211.5], [239.59, 211.51], [239.59, 205.04], [239.58, 203.75], [235.53, 203.75], [235.53, 211.5]]]}	\N	2	\N	[{"altitude": 0.6, "coordinates": [235.53, 211.50107246668534]}, {"altitude": 0.6, "coordinates": [235.53, 211.5000724637681]}, {"altitude": 0.6, "coordinates": [239.59, 211.50987922705312]}, {"altitude": 0.6, "coordinates": [239.59, 211.51087911113746]}, {"altitude": 0.0, "coordinates": [239.59, 204.9139961340779]}, {"altitude": 0.0, "coordinates": [239.59, 205.04333333333273]}, {"altitude": 0.0, "coordinates": [239.58, 203.75]}, {"altitude": 0.0, "coordinates": [235.53, 203.75]}, {"altitude": 0.0, "coordinates": [235.53, 203.749]}]
171	{"type": "Polygon", "coordinates": [[[274.29, 138.99], [272.11, 138.78], [272.53, 134.17], [278.53, 134.67], [278.21, 137.99], [276.85, 137.9], [276.72, 139.22], [274.29, 138.99]]]}	-2.00	10	\N	\N
124	{"type": "MultiPolygon", "coordinates": [[[[339.8, 202.68], [339.8, 202.47], [340.31, 202.47], [340.31, 201.23], [338.52, 201.23], [338.52, 202.68], [339.8, 202.68]]], [[[426.91, 202.72], [426.91, 201.31], [425.01, 201.31], [425.01, 202.68], [425.63, 202.68], [425.63, 202.72], [426.91, 202.72]]]]}	5.33	82	\N	\N
145	{"type": "MultiPolygon", "coordinates": [[[[346.42, 190.69], [348.27, 190.69], [348.27, 188.99], [346.42, 188.99], [346.42, 190.69]]], [[[426.91, 203.58], [425.75, 203.58], [425.75, 203.7], [426.91, 203.7], [426.91, 203.58]]], [[[339.8, 203.55], [338.52, 203.55], [338.52, 203.83], [339.8, 203.83], [339.8, 203.55]]], [[[272.73, 231.89], [272.73, 230.31], [272.39, 230.31], [272.39, 231.89], [272.73, 231.89]]]]}	0.00	85	\N	\N
136	{"type": "MultiPolygon", "coordinates": [[[[339.9, 206.23], [339.8, 206.23], [339.8, 206.13], [338.52, 206.13], [338.52, 207.6], [339.9, 207.6], [339.9, 206.23]]], [[[425.55, 207.68], [426.91, 207.68], [426.91, 206.19], [425.63, 206.19], [425.63, 206.44], [425.55, 206.44], [425.55, 207.68]]]]}	7.43	82	\N	\N
154	{"type": "MultiPolygon", "coordinates": [[[[339.9, 206.23], [339.8, 206.23], [339.8, 206.13], [338.52, 206.13], [338.52, 207.6], [339.9, 207.6], [339.9, 206.23]]], [[[425.75, 206.4], [425.75, 206.55], [425.71, 206.55], [425.71, 207.68], [426.91, 207.68], [426.91, 206.4], [425.75, 206.4]]]]}	1.83	85	\N	\N
78	{"type": "Polygon", "coordinates": [[[270.36, 198.2], [270.36, 199.3], [267.44, 199.29], [267.43, 198.2], [268.71, 198.2], [268.71, 198.23], [268.93, 198.23], [268.93, 198.2], [270.36, 198.2]]]}	-2.29	11	\N	\N
188	{"type": "MultiPolygon", "coordinates": [[[[284.05, 212.02], [284.05, 212.09], [301.53, 212.09], [301.53, 212.02], [284.05, 212.02]]], [[[272.39, 231.89], [272.73, 231.89], [272.73, 230.31], [272.39, 230.31], [272.39, 231.89]]]]}	-5.00	11	\N	\N
123	{"type": "MultiPolygon", "coordinates": [[[[341.8, 207.6], [342.12, 207.6], [342.12, 206.24], [341.8, 206.24], [341.8, 207.6]]], [[[423.64, 207.68], [423.64, 206.43], [423.33, 206.43], [423.33, 207.68], [423.64, 207.68]]], [[[271.55, 232.33], [271.55, 233.92], [271.83, 233.92], [271.83, 232.33], [271.55, 232.33]]]]}	8.56	82	\N	\N
342	{"type": "MultiPolygon", "coordinates": [[[[283.95, 231.93], [285.79, 231.93], [285.79, 230.23], [283.95, 230.23], [283.95, 231.93]]], [[[285.79, 234.0], [285.79, 232.3], [283.95, 232.3], [283.95, 234.0], [285.79, 234.0]]]]}	2.10	85	\N	\N
113	{"type": "MultiPolygon", "coordinates": [[[[342.43, 206.24], [342.12, 206.24], [342.12, 207.6], [342.43, 207.6], [342.43, 206.24]]], [[[423.33, 207.68], [423.33, 206.43], [423.01, 206.43], [423.01, 207.68], [423.33, 207.68]]], [[[271.83, 232.33], [271.83, 233.92], [272.11, 233.92], [272.11, 232.33], [271.83, 232.33]]]]}	8.73	82	\N	\N
150	{"type": "MultiPolygon", "coordinates": [[[[339.8, 205.27], [339.8, 204.98], [338.52, 204.98], [338.52, 205.27], [339.8, 205.27]]], [[[426.91, 205.05], [425.75, 205.05], [425.75, 205.39], [426.91, 205.39], [426.91, 205.05]]], [[[270.71, 230.31], [270.71, 231.89], [270.99, 231.89], [270.99, 230.31], [270.71, 230.31]]]]}	1.02	85	\N	\N
127	{"type": "MultiPolygon", "coordinates": [[[[339.8, 203.54], [339.8, 203.26], [338.52, 203.26], [338.52, 203.54], [339.8, 203.54]]], [[[426.91, 203.3], [425.63, 203.3], [425.63, 203.59], [426.91, 203.59], [426.91, 203.3]]], [[[270.43, 230.31], [270.43, 231.89], [270.71, 231.89], [270.71, 230.31], [270.43, 230.31]]]]}	5.81	82	\N	\N
155	{"type": "MultiPolygon", "coordinates": [[[[340.22, 206.23], [339.9, 206.23], [339.9, 207.6], [340.22, 207.6], [340.22, 206.23]]], [[[425.71, 207.68], [425.71, 206.55], [425.5, 206.55], [425.5, 207.68], [425.71, 207.68]]], [[[269.03, 230.31], [269.03, 231.89], [269.31, 231.89], [269.31, 230.31], [269.03, 230.31]]]]}	2.04	85	\N	\N
137	{"type": "MultiPolygon", "coordinates": [[[[340.22, 206.23], [339.9, 206.23], [339.9, 207.6], [340.22, 207.6], [340.22, 206.23]]], [[[425.23, 207.68], [425.55, 207.68], [425.55, 206.44], [425.23, 206.44], [425.23, 207.68]]]]}	7.59	82	\N	\N
140	{"type": "MultiPolygon", "coordinates": [[[[341.17, 206.23], [340.85, 206.23], [340.85, 207.6], [341.17, 207.6], [341.17, 206.23]]], [[[424.28, 207.68], [424.6, 207.68], [424.6, 206.44], [424.28, 206.44], [424.28, 207.68]]]]}	8.08	82	\N	\N
142	{"type": "MultiPolygon", "coordinates": [[[[341.8, 206.24], [341.48, 206.24], [341.48, 207.6], [341.8, 207.6], [341.8, 206.24]]], [[[423.64, 207.68], [423.96, 207.68], [423.96, 206.43], [423.64, 206.43], [423.64, 207.68]]]]}	8.40	82	\N	\N
114	{"type": "MultiPolygon", "coordinates": [[[[342.75, 206.24], [342.43, 206.24], [342.43, 207.6], [342.75, 207.6], [342.75, 206.24]]], [[[422.69, 207.68], [423.01, 207.68], [423.01, 206.43], [422.69, 206.43], [422.69, 207.68]]]]}	8.89	82	\N	\N
81	{"type": "MultiPolygon", "coordinates": [[[[267.43, 197.3], [267.43, 197.6], [268.71, 197.6], [268.71, 197.3], [267.43, 197.3]]], [[[269.31, 230.31], [269.03, 230.31], [269.03, 231.89], [269.31, 231.89], [269.31, 230.31]]]]}	-2.78	11	\N	\N
139	{"type": "MultiPolygon", "coordinates": [[[[340.85, 206.23], [340.53, 206.23], [340.53, 207.6], [340.85, 207.6], [340.85, 206.23]]], [[[424.6, 207.68], [424.91, 207.68], [424.91, 206.44], [424.6, 206.44], [424.6, 207.68]]]]}	7.92	82	\N	\N
141	{"type": "MultiPolygon", "coordinates": [[[[341.48, 206.24], [341.17, 206.23], [341.17, 207.6], [341.48, 207.6], [341.48, 206.24]]], [[[423.96, 207.68], [424.28, 207.68], [424.28, 206.44], [423.96, 206.43], [423.96, 207.68]]]]}	8.24	82	\N	\N
278	{"type": "Polygon", "coordinates": [[[284.05, 212.02], [284.05, 210.67], [301.53, 210.67], [301.53, 212.02], [284.05, 212.02]], [[300.36, 211.46], [299.83, 211.46], [299.83, 211.97], [300.36, 211.97], [300.36, 211.46]], [[289.49, 211.97], [289.5, 211.47], [286.34, 211.47], [286.34, 211.97], [289.49, 211.97]]]}	-4.62	11	\N	\N
200	{"type": "Polygon", "coordinates": [[[269.03, 233.92], [266.97, 233.92], [266.97, 230.31], [269.03, 230.31], [269.03, 231.89], [268.77, 231.89], [268.76, 232.33], [269.03, 232.33], [269.03, 233.92]]]}	-2.59	11	\N	\N
138	{"type": "MultiPolygon", "coordinates": [[[[340.53, 206.23], [340.22, 206.23], [340.22, 207.6], [340.53, 207.6], [340.53, 206.23]]], [[[424.91, 207.68], [425.23, 207.68], [425.23, 206.44], [424.91, 206.44], [424.91, 207.68]]]]}	7.76	82	\N	\N
233	{"type": "MultiPolygon", "coordinates": [[[[270.27, 196.7], [270.27, 196.42], [269.01, 196.42], [269.01, 196.7], [270.27, 196.7]]], [[[270.99, 232.33], [270.71, 232.33], [270.71, 233.92], [270.99, 233.92], [270.99, 232.33]]]]}	3.41	85	\N	\N
220	{"type": "MultiPolygon", "coordinates": [[[[268.67, 195.65], [268.67, 195.38], [267.39, 195.37], [267.4, 195.64], [268.67, 195.65]]], [[[270.71, 230.31], [270.43, 230.31], [270.43, 231.89], [270.71, 231.89], [270.71, 230.31]]]]}	1.19	85	\N	\N
146	{"type": "MultiPolygon", "coordinates": [[[[426.91, 204.04], [426.91, 203.7], [425.75, 203.7], [425.75, 204.04], [426.91, 204.04]]], [[[339.8, 204.12], [339.8, 203.83], [338.52, 203.83], [338.52, 204.12], [339.8, 204.12]]]]}	0.20	85	\N	\N
147	{"type": "MultiPolygon", "coordinates": [[[[426.91, 204.38], [426.91, 204.04], [425.75, 204.04], [425.75, 204.38], [426.91, 204.38]]], [[[339.8, 204.41], [339.8, 204.12], [338.52, 204.12], [338.52, 204.41], [339.8, 204.41]]]]}	0.41	85	\N	\N
149	{"type": "MultiPolygon", "coordinates": [[[[339.8, 204.98], [339.8, 204.69], [338.52, 204.69], [338.52, 204.98], [339.8, 204.98]]], [[[426.91, 205.05], [426.91, 204.71], [425.75, 204.71], [425.75, 205.05], [426.91, 205.05]]]]}	0.81	85	\N	\N
153	{"type": "MultiPolygon", "coordinates": [[[[339.8, 206.13], [339.8, 205.84], [338.52, 205.84], [338.52, 206.13], [339.8, 206.13]]], [[[426.91, 206.4], [426.91, 206.06], [425.75, 206.06], [425.75, 206.4], [426.91, 206.4]]]]}	1.63	85	\N	\N
117	{"type": "MultiPolygon", "coordinates": [[[[341.77, 202.48], [342.06, 202.48], [342.06, 201.23], [341.77, 201.23], [341.77, 202.48]]], [[[423.62, 201.31], [423.34, 201.31], [423.34, 202.67], [423.62, 202.67], [423.62, 201.31]]]]}	4.36	82	\N	\N
115	{"type": "MultiPolygon", "coordinates": [[[[342.35, 202.48], [342.64, 202.48], [342.64, 201.23], [342.35, 201.23], [342.35, 202.48]]], [[[423.06, 201.31], [422.78, 201.31], [422.78, 202.67], [423.06, 202.67], [423.06, 201.31]]]]}	4.03	82	\N	\N
118	{"type": "MultiPolygon", "coordinates": [[[[341.48, 202.48], [341.77, 202.48], [341.77, 201.23], [341.48, 201.23], [341.48, 202.48]]], [[[423.9, 201.31], [423.62, 201.31], [423.62, 202.67], [423.9, 202.67], [423.9, 201.31]]]]}	4.52	82	\N	\N
121	{"type": "MultiPolygon", "coordinates": [[[[340.6, 202.47], [340.89, 202.47], [340.89, 201.23], [340.6, 201.23], [340.6, 202.47]]], [[[424.73, 201.31], [424.45, 201.31], [424.45, 202.68], [424.73, 202.68], [424.73, 201.31]]]]}	5.00	82	\N	\N
120	{"type": "MultiPolygon", "coordinates": [[[[340.89, 202.47], [341.18, 202.47], [341.18, 201.23], [340.89, 201.23], [340.89, 202.47]]], [[[424.45, 201.31], [424.17, 201.31], [424.17, 202.68], [424.45, 202.68], [424.45, 201.31]]]]}	4.84	82	\N	\N
122	{"type": "MultiPolygon", "coordinates": [[[[340.31, 202.47], [340.6, 202.47], [340.6, 201.23], [340.31, 201.23], [340.31, 202.47]]], [[[425.01, 201.31], [424.73, 201.31], [424.73, 202.68], [425.01, 202.68], [425.01, 201.31]]]]}	5.16	82	\N	\N
126	{"type": "MultiPolygon", "coordinates": [[[[339.8, 203.26], [339.8, 202.97], [338.52, 202.97], [338.52, 203.26], [339.8, 203.26]]], [[[426.91, 203.3], [426.91, 203.01], [425.63, 203.01], [425.63, 203.3], [426.91, 203.3]]]]}	5.65	82	\N	\N
128	{"type": "MultiPolygon", "coordinates": [[[[339.8, 203.83], [339.8, 203.54], [338.52, 203.54], [338.52, 203.83], [339.8, 203.83]]], [[[426.91, 203.88], [426.91, 203.59], [425.63, 203.59], [425.63, 203.88], [426.91, 203.88]]]]}	5.97	82	\N	\N
130	{"type": "MultiPolygon", "coordinates": [[[[339.8, 204.41], [339.8, 204.12], [338.52, 204.12], [338.52, 204.41], [339.8, 204.41]]], [[[426.91, 204.46], [426.91, 204.17], [425.63, 204.17], [425.63, 204.46], [426.91, 204.46]]]]}	6.30	82	\N	\N
132	{"type": "MultiPolygon", "coordinates": [[[[339.8, 205.27], [339.8, 204.98], [338.52, 204.98], [338.52, 205.27], [339.8, 205.27]]], [[[426.91, 205.32], [426.91, 205.03], [425.63, 205.03], [425.63, 205.32], [426.91, 205.32]]]]}	6.78	82	\N	\N
133	{"type": "MultiPolygon", "coordinates": [[[[339.8, 205.56], [339.8, 205.27], [338.52, 205.27], [338.52, 205.56], [339.8, 205.56]]], [[[426.91, 205.61], [426.91, 205.32], [425.63, 205.32], [425.63, 205.61], [426.91, 205.61]]]]}	6.95	82	\N	\N
125	{"type": "MultiPolygon", "coordinates": [[[[339.8, 202.97], [339.8, 202.68], [338.52, 202.68], [338.52, 202.97], [339.8, 202.97]]], [[[426.91, 203.01], [426.91, 202.72], [425.63, 202.72], [425.63, 203.01], [426.91, 203.01]]]]}	5.49	82	\N	\N
129	{"type": "MultiPolygon", "coordinates": [[[[339.8, 204.12], [339.8, 203.83], [338.52, 203.83], [338.52, 204.12], [339.8, 204.12]]], [[[426.91, 204.17], [426.91, 203.88], [425.63, 203.88], [425.63, 204.17], [426.91, 204.17]]]]}	6.14	82	\N	\N
131	{"type": "MultiPolygon", "coordinates": [[[[339.8, 204.98], [339.8, 204.69], [338.52, 204.69], [338.52, 204.98], [339.8, 204.98]]], [[[426.91, 205.03], [426.91, 204.74], [425.63, 204.74], [425.63, 205.03], [426.91, 205.03]]]]}	6.62	82	\N	\N
135	{"type": "MultiPolygon", "coordinates": [[[[339.8, 206.13], [339.8, 205.84], [338.52, 205.84], [338.52, 206.13], [339.8, 206.13]]], [[[426.91, 206.19], [426.91, 205.9], [425.63, 205.9], [425.63, 206.19], [426.91, 206.19]]]]}	7.27	82	\N	\N
119	{"type": "MultiPolygon", "coordinates": [[[[341.18, 202.47], [341.48, 202.48], [341.48, 201.23], [341.18, 201.23], [341.18, 202.47]]], [[[424.17, 201.31], [423.9, 201.31], [423.9, 202.67], [424.17, 202.68], [424.17, 201.31]]]]}	4.68	82	\N	\N
148	{"type": "MultiPolygon", "coordinates": [[[[426.91, 204.71], [426.91, 204.38], [425.75, 204.38], [425.75, 204.71], [426.91, 204.71]]], [[[339.8, 204.69], [339.8, 204.41], [338.52, 204.41], [338.52, 204.69], [339.8, 204.69]]]]}	0.61	85	\N	\N
152	{"type": "MultiPolygon", "coordinates": [[[[339.8, 205.84], [339.8, 205.56], [338.52, 205.56], [338.52, 205.84], [339.8, 205.84]]], [[[426.91, 206.06], [426.91, 205.73], [425.75, 205.73], [425.75, 206.06], [426.91, 206.06]]]]}	1.43	85	\N	\N
134	{"type": "MultiPolygon", "coordinates": [[[[339.8, 205.84], [339.8, 205.56], [338.52, 205.56], [338.52, 205.84], [339.8, 205.84]]], [[[426.91, 205.9], [426.91, 205.61], [425.63, 205.61], [425.63, 205.9], [426.91, 205.9]]]]}	7.11	82	\N	\N
111	{"type": "MultiPolygon", "coordinates": [[[[339.8, 204.69], [339.8, 204.41], [338.52, 204.41], [338.52, 204.69], [339.8, 204.69]]], [[[426.91, 204.74], [426.91, 204.46], [425.63, 204.46], [425.63, 204.74], [426.91, 204.74]]]]}	6.46	82	\N	\N
172	{"type": "Polygon", "coordinates": [[[274.07, 140.96], [274.1, 140.68], [276.55, 140.91], [276.52, 141.19], [274.07, 140.96]]]}	-3.13	10	\N	\N
173	{"type": "Polygon", "coordinates": [[[274.13, 140.4], [274.16, 140.12], [276.61, 140.35], [276.58, 140.63], [274.13, 140.4]]]}	-2.81	10	\N	\N
167	{"type": "Polygon", "coordinates": [[[276.52, 141.19], [276.49, 141.47], [274.04, 141.24], [274.07, 140.96], [276.52, 141.19]]]}	-3.29	10	\N	\N
168	{"type": "Polygon", "coordinates": [[[276.58, 140.63], [276.55, 140.91], [274.1, 140.68], [274.13, 140.4], [276.58, 140.63]]]}	-2.97	10	\N	\N
174	{"type": "Polygon", "coordinates": [[[274.2, 139.83], [274.23, 139.55], [276.66, 139.78], [276.63, 140.06], [274.2, 139.83]]]}	-2.48	10	\N	\N
175	{"type": "Polygon", "coordinates": [[[274.26, 139.27], [274.29, 138.99], [276.72, 139.22], [276.69, 139.5], [274.26, 139.27]]]}	-2.16	10	\N	\N
170	{"type": "Polygon", "coordinates": [[[276.69, 139.5], [276.66, 139.78], [274.23, 139.55], [274.26, 139.27], [276.69, 139.5]]]}	-2.32	10	\N	\N
157	{"type": "MultiPolygon", "coordinates": [[[[340.85, 206.23], [340.53, 206.23], [340.53, 207.6], [340.85, 207.6], [340.85, 206.23]]], [[[425.28, 206.55], [425.07, 206.55], [425.07, 207.68], [425.28, 207.68], [425.28, 206.55]]]]}	2.44	85	\N	\N
158	{"type": "MultiPolygon", "coordinates": [[[[341.17, 206.23], [340.85, 206.23], [340.85, 207.6], [341.17, 207.6], [341.17, 206.23]]], [[[425.07, 206.55], [424.86, 206.55], [424.86, 207.68], [425.07, 207.68], [425.07, 206.55]]]]}	2.65	85	\N	\N
160	{"type": "MultiPolygon", "coordinates": [[[[341.8, 206.24], [341.48, 206.24], [341.48, 207.6], [341.8, 207.6], [341.8, 206.24]]], [[[424.64, 206.54], [424.43, 206.54], [424.43, 207.68], [424.64, 207.68], [424.64, 206.54]]]]}	3.06	85	\N	\N
161	{"type": "MultiPolygon", "coordinates": [[[[342.12, 206.24], [341.8, 206.24], [341.8, 207.6], [342.12, 207.6], [342.12, 206.24]]], [[[424.43, 206.54], [424.22, 206.54], [424.22, 207.68], [424.43, 207.68], [424.43, 206.54]]]]}	3.26	85	\N	\N
163	{"type": "MultiPolygon", "coordinates": [[[[342.75, 206.24], [342.43, 206.24], [342.43, 207.6], [342.75, 207.6], [342.75, 206.24]]], [[[424.0, 206.54], [423.79, 206.54], [423.79, 207.68], [424.0, 207.68], [424.0, 206.54]]]]}	3.67	85	\N	\N
156	{"type": "MultiPolygon", "coordinates": [[[[340.53, 206.23], [340.22, 206.23], [340.22, 207.6], [340.53, 207.6], [340.53, 206.23]]], [[[425.5, 206.55], [425.28, 206.55], [425.28, 207.68], [425.5, 207.68], [425.5, 206.55]]]]}	2.24	85	\N	\N
159	{"type": "MultiPolygon", "coordinates": [[[[341.48, 206.24], [341.17, 206.23], [341.17, 207.6], [341.48, 207.6], [341.48, 206.24]]], [[[424.86, 206.55], [424.64, 206.54], [424.64, 207.68], [424.86, 207.68], [424.86, 206.55]]]]}	2.85	85	\N	\N
162	{"type": "MultiPolygon", "coordinates": [[[[342.43, 206.24], [342.12, 206.24], [342.12, 207.6], [342.43, 207.6], [342.43, 206.24]]], [[[424.22, 206.54], [424.0, 206.54], [424.0, 207.68], [424.22, 207.68], [424.22, 206.54]]]]}	3.46	85	\N	\N
241	{"type": "Polygon", "coordinates": [[[272.39, 230.31], [272.73, 230.31], [272.73, 231.89], [272.39, 231.89], [272.39, 230.31]]]}	4.60	82	\N	\N
362	{"type": "Polygon", "coordinates": [[[272.37, 206.15], [272.37, 206.46], [270.64, 206.46], [270.64, 206.15], [272.37, 206.15]]]}	0.15	2	\N	\N
179	{"type": "Polygon", "coordinates": [[[277.82, 139.94], [277.75, 140.74], [276.8, 140.65], [276.87, 139.85], [277.82, 139.94]]]}	-0.50	11	\N	\N
361	{"type": "Polygon", "coordinates": [[[272.37, 206.76], [272.37, 207.07], [270.64, 207.07], [270.64, 206.76], [272.37, 206.76]]]}	0.45	2	\N	\N
356	{"type": "Polygon", "coordinates": [[[274.5, 207.36], [274.5, 207.65], [272.66, 207.65], [272.66, 207.36], [274.5, 207.36]]]}	0.10	2	\N	\N
354	{"type": "Polygon", "coordinates": [[[274.54, 211.43], [274.54, 211.71], [272.66, 211.71], [272.66, 211.43], [274.54, 211.43]]]}	0.40	2	\N	\N
112	{"type": "MultiPolygon", "coordinates": [[[[342.64, 202.48], [342.83, 202.48], [342.83, 201.23], [342.64, 201.23], [342.64, 202.48]]], [[[422.78, 201.31], [422.57, 201.31], [422.57, 202.67], [422.78, 202.67], [422.78, 201.31]]]]}	3.87	82	\N	\N
353	{"type": "Polygon", "coordinates": [[[274.5, 207.65], [274.5, 207.93], [272.66, 207.92], [272.66, 207.65], [274.5, 207.65]]]}	0.20	2	\N	\N
201	{"type": "Polygon", "coordinates": [[[269.31, 233.92], [269.03, 233.92], [269.03, 232.33], [269.31, 232.33], [269.31, 233.92]]]}	-2.41	11	\N	\N
203	{"type": "Polygon", "coordinates": [[[269.87, 233.92], [269.59, 233.92], [269.59, 232.33], [269.87, 232.33], [269.87, 233.92]]]}	-2.04	11	\N	\N
205	{"type": "Polygon", "coordinates": [[[270.43, 233.92], [270.15, 233.92], [270.15, 232.33], [270.43, 232.33], [270.43, 233.92]]]}	-1.67	11	\N	\N
207	{"type": "Polygon", "coordinates": [[[270.99, 233.92], [270.71, 233.92], [270.71, 232.33], [270.99, 232.33], [270.99, 233.92]]]}	-1.30	11	\N	\N
209	{"type": "Polygon", "coordinates": [[[271.55, 233.92], [271.27, 233.92], [271.27, 232.33], [271.55, 232.33], [271.55, 233.92]]]}	-0.93	11	\N	\N
211	{"type": "Polygon", "coordinates": [[[272.11, 233.92], [271.83, 233.92], [271.83, 232.33], [272.11, 232.33], [272.11, 233.92]]]}	-0.56	11	\N	\N
213	{"type": "Polygon", "coordinates": [[[272.67, 233.92], [272.39, 233.92], [272.39, 232.33], [272.67, 232.33], [272.67, 233.92]]]}	-0.19	11	\N	\N
227	{"type": "Polygon", "coordinates": [[[269.31, 233.92], [269.03, 233.92], [269.03, 232.33], [269.31, 232.33], [269.31, 233.92]]]}	2.39	85	\N	\N
229	{"type": "Polygon", "coordinates": [[[269.87, 233.92], [269.59, 233.92], [269.59, 232.33], [269.87, 232.33], [269.87, 233.92]]]}	2.73	85	\N	\N
231	{"type": "Polygon", "coordinates": [[[270.43, 233.92], [270.15, 233.92], [270.15, 232.33], [270.43, 232.33], [270.43, 233.92]]]}	3.07	85	\N	\N
235	{"type": "Polygon", "coordinates": [[[271.55, 233.92], [271.27, 233.92], [271.27, 232.33], [271.55, 232.33], [271.55, 233.92]]]}	3.75	85	\N	\N
237	{"type": "Polygon", "coordinates": [[[272.11, 233.92], [271.83, 233.92], [271.83, 232.33], [272.11, 232.33], [272.11, 233.92]]]}	4.09	85	\N	\N
239	{"type": "Polygon", "coordinates": [[[272.67, 233.92], [272.39, 233.92], [272.39, 232.33], [272.67, 232.33], [272.67, 233.92]]]}	4.43	85	\N	\N
255	{"type": "Polygon", "coordinates": [[[269.31, 233.92], [269.03, 233.92], [269.03, 232.33], [269.31, 232.33], [269.31, 233.92]]]}	7.01	82	\N	\N
257	{"type": "Polygon", "coordinates": [[[269.87, 233.92], [269.59, 233.92], [269.59, 232.33], [269.87, 232.33], [269.87, 233.92]]]}	7.36	82	\N	\N
259	{"type": "Polygon", "coordinates": [[[270.43, 233.92], [270.15, 233.92], [270.15, 232.33], [270.43, 232.33], [270.43, 233.92]]]}	7.70	82	\N	\N
261	{"type": "Polygon", "coordinates": [[[270.99, 233.92], [270.71, 233.92], [270.71, 232.33], [270.99, 232.33], [270.99, 233.92]]]}	8.04	82	\N	\N
263	{"type": "Polygon", "coordinates": [[[271.55, 233.92], [271.27, 233.92], [271.27, 232.33], [271.55, 232.33], [271.55, 233.92]]]}	8.39	82	\N	\N
265	{"type": "Polygon", "coordinates": [[[272.67, 233.92], [272.39, 233.92], [272.39, 232.33], [272.67, 232.33], [272.67, 233.92]]]}	9.08	82	\N	\N
202	{"type": "Polygon", "coordinates": [[[269.59, 233.92], [269.31, 233.92], [269.31, 232.33], [269.59, 232.33], [269.59, 233.92]]]}	-2.22	11	\N	\N
204	{"type": "Polygon", "coordinates": [[[270.15, 233.92], [269.87, 233.92], [269.87, 232.33], [270.15, 232.33], [270.15, 233.92]]]}	-1.85	11	\N	\N
206	{"type": "Polygon", "coordinates": [[[270.71, 233.92], [270.43, 233.92], [270.43, 232.33], [270.71, 232.33], [270.71, 233.92]]]}	-1.48	11	\N	\N
208	{"type": "Polygon", "coordinates": [[[271.27, 233.92], [270.99, 233.92], [270.99, 232.33], [271.27, 232.33], [271.27, 233.92]]]}	-1.11	11	\N	\N
210	{"type": "Polygon", "coordinates": [[[271.83, 233.92], [271.55, 233.92], [271.55, 232.33], [271.83, 232.33], [271.83, 233.92]]]}	-0.74	11	\N	\N
212	{"type": "Polygon", "coordinates": [[[272.39, 233.92], [272.11, 233.92], [272.11, 232.33], [272.39, 232.33], [272.39, 233.92]]]}	-0.37	11	\N	\N
228	{"type": "Polygon", "coordinates": [[[269.59, 233.92], [269.31, 233.92], [269.31, 232.33], [269.59, 232.33], [269.59, 233.92]]]}	2.56	85	\N	\N
230	{"type": "Polygon", "coordinates": [[[270.15, 233.92], [269.87, 233.92], [269.87, 232.33], [270.15, 232.33], [270.15, 233.92]]]}	2.90	85	\N	\N
232	{"type": "Polygon", "coordinates": [[[270.71, 233.92], [270.43, 233.92], [270.43, 232.33], [270.71, 232.33], [270.71, 233.92]]]}	3.24	85	\N	\N
234	{"type": "Polygon", "coordinates": [[[271.27, 233.92], [270.99, 233.92], [270.99, 232.33], [271.27, 232.33], [271.27, 233.92]]]}	3.58	85	\N	\N
236	{"type": "Polygon", "coordinates": [[[271.83, 233.92], [271.55, 233.92], [271.55, 232.33], [271.83, 232.33], [271.83, 233.92]]]}	3.92	85	\N	\N
238	{"type": "Polygon", "coordinates": [[[272.39, 233.92], [272.11, 233.92], [272.11, 232.33], [272.39, 232.33], [272.39, 233.92]]]}	4.26	85	\N	\N
256	{"type": "Polygon", "coordinates": [[[269.59, 233.92], [269.31, 233.92], [269.31, 232.33], [269.59, 232.33], [269.59, 233.92]]]}	7.18	82	\N	\N
258	{"type": "Polygon", "coordinates": [[[270.15, 233.92], [269.87, 233.92], [269.87, 232.33], [270.15, 232.33], [270.15, 233.92]]]}	7.53	82	\N	\N
260	{"type": "Polygon", "coordinates": [[[270.71, 233.92], [270.43, 233.92], [270.43, 232.33], [270.71, 232.33], [270.71, 233.92]]]}	7.87	82	\N	\N
262	{"type": "Polygon", "coordinates": [[[271.27, 233.92], [270.99, 233.92], [270.99, 232.33], [271.27, 232.33], [271.27, 233.92]]]}	8.22	82	\N	\N
264	{"type": "Polygon", "coordinates": [[[272.39, 233.92], [272.11, 233.92], [272.11, 232.33], [272.39, 232.33], [272.39, 233.92]]]}	8.91	82	\N	\N
198	{"type": "Polygon", "coordinates": [[[272.11, 231.89], [271.83, 231.89], [271.83, 230.31], [272.11, 230.31], [272.11, 231.89]]]}	-4.63	11	\N	\N
196	{"type": "Polygon", "coordinates": [[[271.55, 231.89], [271.27, 231.89], [271.27, 230.31], [271.55, 230.31], [271.55, 231.89]]]}	-4.26	11	\N	\N
194	{"type": "Polygon", "coordinates": [[[270.99, 231.89], [270.71, 231.89], [270.71, 230.31], [270.99, 230.31], [270.99, 231.89]]]}	-3.89	11	\N	\N
192	{"type": "Polygon", "coordinates": [[[270.43, 231.89], [270.15, 231.89], [270.15, 230.31], [270.43, 230.31], [270.43, 231.89]]]}	-3.52	11	\N	\N
190	{"type": "Polygon", "coordinates": [[[269.87, 231.89], [269.59, 231.89], [269.59, 230.31], [269.87, 230.31], [269.87, 231.89]]]}	-3.15	11	\N	\N
224	{"type": "Polygon", "coordinates": [[[272.11, 231.89], [271.83, 231.89], [271.83, 230.31], [272.11, 230.31], [272.11, 231.89]]]}	0.34	85	\N	\N
222	{"type": "Polygon", "coordinates": [[[271.55, 231.89], [271.27, 231.89], [271.27, 230.31], [271.55, 230.31], [271.55, 231.89]]]}	0.68	85	\N	\N
219	{"type": "Polygon", "coordinates": [[[270.43, 231.89], [270.15, 231.89], [270.15, 230.31], [270.43, 230.31], [270.43, 231.89]]]}	1.36	85	\N	\N
217	{"type": "Polygon", "coordinates": [[[269.87, 231.89], [269.59, 231.89], [269.59, 230.31], [269.87, 230.31], [269.87, 231.89]]]}	1.70	85	\N	\N
252	{"type": "Polygon", "coordinates": [[[272.11, 231.89], [271.83, 231.89], [271.83, 230.31], [272.11, 230.31], [272.11, 231.89]]]}	4.94	82	\N	\N
250	{"type": "Polygon", "coordinates": [[[271.55, 231.89], [271.27, 231.89], [271.27, 230.31], [271.55, 230.31], [271.55, 231.89]]]}	5.29	82	\N	\N
248	{"type": "Polygon", "coordinates": [[[270.99, 231.89], [270.71, 231.89], [270.71, 230.31], [270.99, 230.31], [270.99, 231.89]]]}	5.63	82	\N	\N
247	{"type": "Polygon", "coordinates": [[[270.43, 231.89], [270.15, 231.89], [270.15, 230.31], [270.43, 230.31], [270.43, 231.89]]]}	5.98	82	\N	\N
245	{"type": "Polygon", "coordinates": [[[269.87, 231.89], [269.59, 231.89], [269.59, 230.31], [269.87, 230.31], [269.87, 231.89]]]}	6.32	82	\N	\N
243	{"type": "Polygon", "coordinates": [[[269.31, 231.89], [269.03, 231.89], [269.03, 230.31], [269.31, 230.31], [269.31, 231.89]]]}	6.67	82	\N	\N
199	{"type": "Polygon", "coordinates": [[[272.39, 231.89], [272.11, 231.89], [272.11, 230.31], [272.39, 230.31], [272.39, 231.89]]]}	-4.81	11	\N	\N
197	{"type": "Polygon", "coordinates": [[[271.83, 231.89], [271.55, 231.89], [271.55, 230.31], [271.83, 230.31], [271.83, 231.89]]]}	-4.44	11	\N	\N
195	{"type": "Polygon", "coordinates": [[[271.27, 231.89], [270.99, 231.89], [270.99, 230.31], [271.27, 230.31], [271.27, 231.89]]]}	-4.07	11	\N	\N
193	{"type": "Polygon", "coordinates": [[[270.71, 231.89], [270.43, 231.89], [270.43, 230.31], [270.71, 230.31], [270.71, 231.89]]]}	-3.70	11	\N	\N
191	{"type": "Polygon", "coordinates": [[[270.15, 231.89], [269.87, 231.89], [269.87, 230.31], [270.15, 230.31], [270.15, 231.89]]]}	-3.33	11	\N	\N
189	{"type": "Polygon", "coordinates": [[[269.59, 231.89], [269.31, 231.89], [269.31, 230.31], [269.59, 230.31], [269.59, 231.89]]]}	-2.96	11	\N	\N
225	{"type": "Polygon", "coordinates": [[[272.39, 231.89], [272.11, 231.89], [272.11, 230.31], [272.39, 230.31], [272.39, 231.89]]]}	0.17	85	\N	\N
223	{"type": "Polygon", "coordinates": [[[271.83, 231.89], [271.55, 231.89], [271.55, 230.31], [271.83, 230.31], [271.83, 231.89]]]}	0.51	85	\N	\N
221	{"type": "Polygon", "coordinates": [[[271.27, 231.89], [270.99, 231.89], [270.99, 230.31], [271.27, 230.31], [271.27, 231.89]]]}	0.85	85	\N	\N
218	{"type": "Polygon", "coordinates": [[[270.15, 231.89], [269.87, 231.89], [269.87, 230.31], [270.15, 230.31], [270.15, 231.89]]]}	1.53	85	\N	\N
216	{"type": "Polygon", "coordinates": [[[269.59, 231.89], [269.31, 231.89], [269.31, 230.31], [269.59, 230.31], [269.59, 231.89]]]}	1.87	85	\N	\N
253	{"type": "Polygon", "coordinates": [[[272.39, 231.89], [272.11, 231.89], [272.11, 230.31], [272.39, 230.31], [272.39, 231.89]]]}	4.77	82	\N	\N
251	{"type": "Polygon", "coordinates": [[[271.83, 231.89], [271.55, 231.89], [271.55, 230.31], [271.83, 230.31], [271.83, 231.89]]]}	5.12	82	\N	\N
249	{"type": "Polygon", "coordinates": [[[271.27, 231.89], [270.99, 231.89], [270.99, 230.31], [271.27, 230.31], [271.27, 231.89]]]}	5.46	82	\N	\N
246	{"type": "Polygon", "coordinates": [[[270.15, 231.89], [269.87, 231.89], [269.87, 230.31], [270.15, 230.31], [270.15, 231.89]]]}	6.15	82	\N	\N
244	{"type": "Polygon", "coordinates": [[[269.59, 231.89], [269.31, 231.89], [269.31, 230.31], [269.59, 230.31], [269.59, 231.89]]]}	6.49	82	\N	\N
87	{"type": "Polygon", "coordinates": [[[270.36, 197.6], [270.36, 197.9], [268.93, 197.9], [268.93, 197.6], [270.36, 197.6]]]}	-1.96	11	\N	\N
89	{"type": "Polygon", "coordinates": [[[270.36, 197.0], [270.36, 197.3], [268.93, 197.3], [268.93, 197.0], [270.36, 197.0]]]}	-1.64	11	\N	\N
90	{"type": "Polygon", "coordinates": [[[270.36, 196.7], [270.36, 197.0], [268.93, 197.0], [268.93, 196.7], [270.36, 196.7]]]}	-1.47	11	\N	\N
94	{"type": "Polygon", "coordinates": [[[270.36, 195.5], [270.36, 195.8], [268.93, 195.8], [268.93, 195.5], [270.36, 195.5]]]}	-0.82	11	\N	\N
95	{"type": "Polygon", "coordinates": [[[270.36, 195.2], [270.36, 195.5], [268.93, 195.5], [268.93, 195.2], [270.36, 195.2]]]}	-0.65	11	\N	\N
97	{"type": "Polygon", "coordinates": [[[270.36, 194.6], [270.36, 194.9], [268.93, 194.9], [268.93, 194.6], [270.36, 194.6]]]}	-0.33	11	\N	\N
86	{"type": "Polygon", "coordinates": [[[270.36, 197.9], [270.36, 198.2], [268.93, 198.2], [268.93, 197.9], [270.36, 197.9]]]}	-2.13	11	\N	\N
88	{"type": "Polygon", "coordinates": [[[270.36, 197.3], [270.36, 197.6], [268.93, 197.6], [268.93, 197.3], [270.36, 197.3]]]}	-1.80	11	\N	\N
91	{"type": "Polygon", "coordinates": [[[270.36, 196.4], [270.36, 196.7], [268.93, 196.7], [268.93, 196.4], [270.36, 196.4]]]}	-1.31	11	\N	\N
93	{"type": "Polygon", "coordinates": [[[270.36, 195.8], [270.36, 196.1], [268.93, 196.1], [268.93, 195.8], [270.36, 195.8]]]}	-0.98	11	\N	\N
96	{"type": "Polygon", "coordinates": [[[270.36, 194.9], [270.36, 195.2], [268.93, 195.2], [268.93, 194.9], [270.36, 194.9]]]}	-0.49	11	\N	\N
98	{"type": "Polygon", "coordinates": [[[270.36, 194.3], [270.36, 194.6], [268.93, 194.6], [268.93, 194.3], [270.36, 194.3]]]}	-0.16	11	\N	\N
35	{"type": "Polygon", "coordinates": [[[270.36, 197.0], [270.36, 197.3], [268.96, 197.3], [268.96, 197.0], [270.36, 197.0]]]}	-4.58	77	\N	\N
36	{"type": "Polygon", "coordinates": [[[270.36, 196.7], [270.36, 197.0], [268.96, 197.0], [268.96, 196.7], [270.36, 196.7]]]}	-4.42	77	\N	\N
38	{"type": "Polygon", "coordinates": [[[270.36, 196.1], [270.36, 196.4], [268.96, 196.4], [268.96, 196.1], [270.36, 196.1]]]}	-4.09	77	\N	\N
40	{"type": "Polygon", "coordinates": [[[270.36, 195.5], [270.36, 195.8], [268.96, 195.8], [268.96, 195.5], [270.36, 195.5]]]}	-3.76	77	\N	\N
33	{"type": "Polygon", "coordinates": [[[270.36, 197.9], [270.36, 198.2], [268.96, 198.2], [268.96, 197.9], [270.36, 197.9]]]}	-5.07	77	\N	\N
34	{"type": "Polygon", "coordinates": [[[270.36, 197.3], [270.36, 197.6], [268.96, 197.6], [268.96, 197.3], [270.36, 197.3]]]}	-4.74	77	\N	\N
37	{"type": "Polygon", "coordinates": [[[270.36, 196.4], [270.36, 196.7], [268.96, 196.7], [268.96, 196.4], [270.36, 196.4]]]}	-4.25	77	\N	\N
39	{"type": "Polygon", "coordinates": [[[270.36, 195.8], [270.36, 196.1], [268.96, 196.1], [268.96, 195.8], [270.36, 195.8]]]}	-3.93	77	\N	\N
26	{"type": "Polygon", "coordinates": [[[268.96, 195.5], [268.96, 195.22], [270.36, 195.22], [270.36, 195.5], [268.96, 195.5]]]}	-3.60	77	\N	\N
85	{"type": "Polygon", "coordinates": [[[268.7, 196.1], [268.7, 196.4], [267.42, 196.4], [267.42, 196.1], [268.7, 196.1]]]}	-3.44	11	\N	\N
16	{"type": "Polygon", "coordinates": [[[267.42, 196.4], [267.42, 196.11], [268.69, 196.11], [268.69, 196.4], [267.42, 196.4]]]}	-6.21	77	\N	\N
366	{"type": "Polygon", "coordinates": [[[267.39, 194.56], [267.39, 194.28], [268.67, 194.28], [268.67, 194.57], [267.39, 194.56]]]}	0.60	85	\N	\N
215	{"type": "MultiPolygon", "coordinates": [[[[270.27, 194.48], [270.27, 194.28], [269.0, 194.28], [269.0, 194.48], [270.27, 194.48]]], [[[272.67, 233.92], [272.74, 233.92], [272.73, 232.33], [272.67, 232.33], [272.67, 233.92]]]]}	4.60	85	\N	\N
382	{"type": "Polygon", "coordinates": [[[270.27, 195.59], [270.27, 195.87], [269.0, 195.87], [269.0, 195.59], [270.27, 195.59]]]}	3.86	85	\N	\N
388	{"type": "Polygon", "coordinates": [[[269.0, 195.59], [269.0, 195.31], [270.27, 195.31], [270.27, 195.59], [269.0, 195.59]]]}	4.01	85	\N	\N
381	{"type": "Polygon", "coordinates": [[[270.27, 194.48], [270.27, 194.76], [269.0, 194.76], [269.0, 194.48], [270.27, 194.48]]]}	4.45	85	\N	\N
380	{"type": "Polygon", "coordinates": [[[269.01, 197.8], [269.01, 197.52], [270.27, 197.52], [270.27, 197.8], [269.01, 197.8]]]}	2.82	85	\N	\N
387	{"type": "Polygon", "coordinates": [[[270.27, 196.97], [270.27, 197.25], [269.01, 197.25], [269.01, 196.97], [270.27, 196.97]]]}	3.12	85	\N	\N
371	{"type": "Polygon", "coordinates": [[[267.4, 196.18], [267.4, 195.91], [268.67, 195.92], [268.67, 196.19], [267.4, 196.18]]]}	1.49	85	\N	\N
377	{"type": "Polygon", "coordinates": [[[267.4, 196.99], [267.4, 196.72], [268.67, 196.73], [268.67, 197.0], [267.4, 196.99]]]}	1.93	85	\N	\N
376	{"type": "Polygon", "coordinates": [[[267.4, 197.8], [267.4, 197.53], [268.67, 197.54], [268.67, 197.81], [267.4, 197.8]]]}	2.38	85	\N	\N
385	{"type": "Polygon", "coordinates": [[[269.0, 195.31], [269.0, 195.04], [270.27, 195.04], [270.27, 195.31], [269.0, 195.31]]]}	4.16	85	\N	\N
368	{"type": "Polygon", "coordinates": [[[268.67, 195.65], [268.67, 195.92], [267.4, 195.91], [267.4, 195.64], [268.67, 195.65]]]}	1.34	85	\N	\N
374	{"type": "Polygon", "coordinates": [[[267.4, 196.45], [267.4, 196.18], [268.67, 196.19], [268.67, 196.46], [267.4, 196.45]]]}	1.64	85	\N	\N
372	{"type": "Polygon", "coordinates": [[[268.67, 197.0], [268.67, 197.27], [267.4, 197.26], [267.4, 196.99], [268.67, 197.0]]]}	2.08	85	\N	\N
373	{"type": "Polygon", "coordinates": [[[267.4, 197.53], [267.4, 197.26], [268.67, 197.27], [268.67, 197.54], [267.4, 197.53]]]}	2.23	85	\N	\N
384	{"type": "Polygon", "coordinates": [[[269.0, 196.14], [269.0, 195.87], [270.27, 195.87], [270.27, 196.14], [269.0, 196.14]]]}	3.71	85	\N	\N
379	{"type": "Polygon", "coordinates": [[[270.27, 197.25], [270.27, 197.52], [269.01, 197.52], [269.01, 197.25], [270.27, 197.25]]]}	2.97	85	\N	\N
389	{"type": "Polygon", "coordinates": [[[269.01, 196.97], [269.01, 196.7], [270.27, 196.7], [270.27, 196.97], [269.01, 196.97]]]}	3.27	85	\N	\N
144	{"type": "MultiPolygon", "coordinates": [[[[342.75, 207.6], [342.86, 207.6], [342.86, 206.24], [342.75, 206.24], [342.75, 207.6]]], [[[423.79, 206.54], [423.63, 206.54], [423.63, 207.68], [423.79, 207.68], [423.79, 206.54]]]]}	3.87	85	\N	\N
77	{"type": "Polygon", "coordinates": [[[267.42, 196.1], [267.42, 195.86], [268.7, 195.86], [268.7, 196.1], [267.42, 196.1]]]}	-3.60	11	\N	\N
105	{"type": "MultiPolygon", "coordinates": [[[[342.75, 207.6], [342.88, 207.6], [342.88, 206.24], [342.75, 206.24], [342.75, 207.6]]], [[[422.69, 206.43], [422.6, 206.43], [422.6, 207.68], [422.69, 207.68], [422.69, 206.43]]]]}	9.05	82	\N	\N
176	{"type": "Polygon", "coordinates": [[[277.62, 142.09], [277.59, 142.39], [276.64, 142.29], [276.67, 142.0], [277.62, 142.09]]]}	1.00	11	\N	\N
185	{"type": "Polygon", "coordinates": [[[276.87, 139.85], [276.9, 139.57], [277.85, 139.66], [277.82, 139.94], [276.87, 139.85]]]}	-0.75	11	\N	\N
187	{"type": "Polygon", "coordinates": [[[276.97, 138.77], [277.0, 138.49], [277.95, 138.59], [277.93, 138.86], [276.97, 138.77]]]}	-1.75	11	\N	\N
183	{"type": "Polygon", "coordinates": [[[276.72, 141.46], [276.75, 141.18], [277.7, 141.28], [277.67, 141.55], [276.72, 141.46]]]}	0.25	11	\N	\N
184	{"type": "Polygon", "coordinates": [[[276.77, 140.92], [276.8, 140.65], [277.75, 140.74], [277.72, 141.02], [276.77, 140.92]]]}	-0.25	11	\N	\N
177	{"type": "Polygon", "coordinates": [[[277.88, 139.39], [277.85, 139.66], [276.9, 139.57], [276.92, 139.3], [277.88, 139.39]]]}	-1.00	11	\N	\N
186	{"type": "Polygon", "coordinates": [[[276.92, 139.3], [276.95, 139.03], [277.9, 139.12], [277.88, 139.39], [276.92, 139.3]]]}	-1.25	11	\N	\N
178	{"type": "Polygon", "coordinates": [[[277.67, 141.55], [277.64, 141.82], [276.69, 141.73], [276.72, 141.46], [277.67, 141.55]]]}	0.50	11	\N	\N
182	{"type": "Polygon", "coordinates": [[[276.67, 142.0], [276.69, 141.73], [277.64, 141.82], [277.62, 142.09], [276.67, 142.0]]]}	0.75	11	\N	\N
180	{"type": "Polygon", "coordinates": [[[277.93, 138.86], [277.9, 139.12], [276.95, 139.03], [276.97, 138.77], [277.93, 138.86]]]}	-1.50	11	\N	\N
242	{"type": "Polygon", "coordinates": [[[272.67, 232.33], [272.73, 232.33], [272.74, 233.92], [272.67, 233.92], [272.67, 232.33]]]}	9.25	82	\N	\N
15	{"type": "Polygon", "coordinates": [[[274.81, 183.31], [274.81, 179.37], [274.55, 179.37], [274.55, 179.65], [274.54, 179.65], [274.54, 189.16], [272.22, 189.16], [272.21, 205.58], [270.75, 205.58], [270.75, 204.92], [270.32, 204.92], [270.32, 203.94], [270.74, 203.94], [270.7, 194.23], [270.37, 194.23], [270.37, 194.36], [268.71, 194.37], [268.69, 197.91], [267.38, 197.91], [267.36, 192.56], [270.37, 192.56], [270.37, 192.64], [270.69, 192.64], [270.65, 183.96], [272.76, 183.96], [272.76, 179.67], [272.76, 179.58], [272.76, 179.37], [272.69, 179.37], [272.69, 173.12], [268.0, 173.12], [268.0, 156.12], [269.88, 156.12], [269.88, 153.37], [334.06, 153.37], [334.06, 157.98], [367.13, 157.98], [367.13, 180.44], [350.0, 180.44], [350.0, 183.19], [299.12, 183.19], [299.12, 180.56], [283.56, 180.56], [283.56, 183.31], [274.81, 183.31]]]}	-6.21	34	\N	\N
2	{"type": "Polygon", "coordinates": [[[276.49, 141.47], [276.48, 141.59], [276.49, 141.59], [276.35, 143.25], [273.93, 143.04], [273.21, 150.85], [270.11, 150.87], [270.12, 153.04], [269.81, 153.04], [269.81, 155.98], [269.78, 155.98], [269.78, 156.12], [269.88, 156.12], [269.88, 153.37], [334.06, 153.37], [334.06, 158.0], [367.13, 158.06], [367.13, 180.44], [350.0, 180.44], [350.0, 183.19], [299.12, 183.19], [299.12, 180.56], [283.56, 180.56], [283.56, 183.31], [274.81, 183.31], [274.81, 179.37], [274.46, 179.37], [274.46, 181.71], [272.72, 181.71], [272.72, 179.37], [272.69, 179.37], [272.69, 173.12], [268.0, 173.12], [268.0, 156.12], [268.02, 156.12], [268.03, 155.99], [268.01, 155.99], [267.97, 149.0], [271.18, 148.99], [271.9, 141.19], [274.02, 141.37], [274.04, 141.24], [276.49, 141.47]]]}	-3.45	10	\N	\N
116	{"type": "MultiPolygon", "coordinates": [[[[342.06, 202.48], [342.35, 202.48], [342.35, 201.23], [342.06, 201.23], [342.06, 202.48]]], [[[423.34, 201.31], [423.06, 201.31], [423.06, 202.67], [423.34, 202.67], [423.34, 201.31]]]]}	4.19	82	\N	\N
240	{"type": "Polygon", "coordinates": [[[283.6, 233.99], [272.65, 233.99], [272.65, 230.01], [283.6, 230.01], [283.6, 233.99]]]}	4.60	37	\N	\N
270	{"type": "Polygon", "coordinates": [[[284.05, 201.19], [284.05, 199.83], [301.53, 199.83], [301.53, 201.19], [284.05, 201.19]]]}	-1.54	11	\N	\N
269	{"type": "Polygon", "coordinates": [[[284.05, 198.48], [284.05, 197.12], [301.53, 197.12], [301.53, 198.48], [284.05, 198.48]]]}	-0.77	11	\N	\N
383	{"type": "Polygon", "coordinates": [[[269.0, 195.04], [269.0, 194.76], [270.27, 194.76], [270.27, 195.04], [269.0, 195.04]]]}	4.30	85	\N	\N
386	{"type": "Polygon", "coordinates": [[[269.01, 196.42], [269.0, 196.14], [270.27, 196.14], [270.27, 196.42], [269.01, 196.42]]]}	3.56	85	\N	\N
378	{"type": "Polygon", "coordinates": [[[270.27, 197.8], [270.27, 198.08], [269.01, 198.08], [269.01, 197.8], [270.27, 197.8]]]}	2.67	85	\N	\N
370	{"type": "Polygon", "coordinates": [[[267.39, 194.83], [267.39, 194.56], [268.67, 194.57], [268.67, 194.84], [267.39, 194.83]]]}	0.75	85	\N	\N
369	{"type": "Polygon", "coordinates": [[[268.67, 194.84], [268.67, 195.11], [267.39, 195.1], [267.39, 194.83], [268.67, 194.84]]]}	0.90	85	\N	\N
367	{"type": "Polygon", "coordinates": [[[268.67, 195.11], [268.67, 195.38], [267.39, 195.37], [267.39, 195.1], [268.67, 195.11]]]}	1.04	85	\N	\N
375	{"type": "Polygon", "coordinates": [[[267.4, 196.72], [267.4, 196.45], [268.67, 196.46], [268.67, 196.73], [267.4, 196.72]]]}	1.79	85	\N	\N
104	{"type": "MultiPolygon", "coordinates": [[[[273.77, 141.14], [273.94, 139.44], [272.17, 139.27], [272.01, 140.98], [273.77, 141.14]]], [[[342.07, 157.07], [343.12, 156.77], [350.82, 156.73], [353.91, 157.02], [364.32, 158.05], [364.86, 152.13], [354.29, 151.1], [351.13, 151.08], [343.15, 151.04], [341.79, 151.23], [340.49, 151.57], [339.46, 152.06], [338.54, 152.56], [336.83, 153.94], [335.8, 155.2], [335.2, 156.29], [334.55, 157.98], [341.05, 157.98], [341.05, 157.78], [342.07, 157.07]]], [[[270.36, 205.58], [270.36, 203.59], [267.36, 203.59], [267.36, 205.58], [270.36, 205.58]]], [[[285.79, 230.23], [283.95, 230.23], [283.95, 231.93], [285.79, 231.93], [285.79, 230.23]]], [[[283.95, 234.0], [285.79, 234.0], [285.79, 232.3], [283.95, 232.3], [283.95, 234.0]]]]}	-3.00	11	\N	\N
364	{"type": "Polygon", "coordinates": [[[274.99, 207.93], [275.11, 207.93], [275.11, 211.43], [274.99, 211.43], [274.99, 211.71], [274.99, 211.98], [274.99, 219.93], [275.11, 219.93], [283.42, 219.95], [283.42, 222.0], [283.68, 222.0], [283.68, 219.95], [283.68, 205.42], [283.68, 194.36], [283.42, 194.36], [283.42, 205.42], [275.11, 205.42], [275.11, 205.44], [274.99, 205.44], [274.99, 207.36], [274.99, 207.65], [274.99, 207.93]], [[275.13, 211.71], [275.13, 211.43], [275.13, 211.37], [275.16, 211.37], [275.16, 212.03], [275.13, 212.03], [275.13, 211.98], [275.13, 211.71]]]}	\N	2	\N	[{"altitude": 0.6, "coordinates": [275.10900005786385, 219.93]}, {"altitude": 0.6, "coordinates": [275.11, 219.93]}, {"altitude": 0.6, "coordinates": [283.42, 219.94983293556083]}, {"altitude": 0.6, "coordinates": [283.42, 219.95083282099603]}, {"altitude": 0.0, "coordinates": [283.42, 205.41899999999998]}, {"altitude": 0.0, "coordinates": [283.42, 205.42]}, {"altitude": 0.0, "coordinates": [275.11, 205.42]}, {"altitude": 0.0, "coordinates": [275.11, 205.44]}, {"altitude": 0.0, "coordinates": [275.10900000000004, 205.44]}]
365	{"type": "Polygon", "coordinates": [[[270.27, 198.08], [270.27, 199.47], [267.41, 199.47], [267.4, 197.8], [268.67, 197.81], [268.67, 198.24], [269.01, 198.24], [269.01, 198.08], [270.27, 198.08]]]}	2.53	85	\N	\N
169	{"type": "Polygon", "coordinates": [[[276.63, 140.06], [276.61, 140.35], [274.16, 140.12], [274.2, 139.83], [276.63, 140.06]]]}	-2.64	10	\N	\N
181	{"type": "Polygon", "coordinates": [[[277.0, 138.49], [277.05, 137.98], [278.0, 138.08], [277.95, 138.59], [277.0, 138.49]]]}	-2.00	11	\N	\N
99	{"type": "Polygon", "coordinates": [[[275.07, 201.79], [275.08, 199.68], [277.41, 199.69], [277.41, 202.88], [277.65, 202.88], [277.65, 199.72], [283.42, 199.72], [283.41, 204.08], [277.65, 204.08], [277.65, 203.72], [277.41, 203.72], [277.41, 204.68], [277.63, 204.68], [277.63, 204.33], [283.48, 204.37], [283.48, 209.09], [277.63, 209.09], [277.63, 205.57], [277.41, 205.57], [277.41, 206.11], [276.23, 206.1], [276.23, 206.31], [277.44, 206.32], [277.44, 209.11], [275.1, 209.11], [275.1, 206.31], [275.34, 206.31], [275.34, 206.09], [275.12, 206.09], [275.11, 203.2], [274.5, 203.23], [274.5, 204.02], [272.72, 204.02], [272.72, 201.56], [274.49, 201.56], [274.49, 201.83], [275.07, 201.79]]]}	-4.10	10	\N	\N
390	{"type": "Polygon", "coordinates": [[[274.68, 203.41], [278.75, 203.4], [278.75, 202.24], [283.41, 202.24], [283.4, 207.33], [274.68, 207.31], [274.68, 203.41]]]}	8.75	38	\N	\N
277	{"type": "Polygon", "coordinates": [[[284.05, 210.67], [284.05, 209.31], [301.53, 209.31], [301.53, 210.67], [284.05, 210.67]]]}	-4.23	11	\N	\N
276	{"type": "Polygon", "coordinates": [[[284.05, 209.31], [284.05, 207.96], [301.53, 207.96], [301.53, 209.31], [284.05, 209.31]]]}	-3.85	11	\N	\N
92	{"type": "MultiPolygon", "coordinates": [[[[268.93, 196.1], [268.93, 196.4], [270.36, 196.4], [270.36, 196.1], [268.93, 196.1]]], [[[301.53, 199.83], [301.53, 198.48], [284.05, 198.48], [284.05, 199.83], [301.53, 199.83]], [[300.36, 199.75], [299.83, 199.75], [299.83, 199.24], [300.36, 199.24], [300.36, 199.75]], [[286.35, 199.75], [286.35, 199.25], [289.48, 199.25], [289.48, 199.75], [286.35, 199.75]]]]}	-1.15	11	\N	\N
275	{"type": "Polygon", "coordinates": [[[284.05, 207.96], [284.05, 206.6], [301.53, 206.6], [301.53, 207.96], [284.05, 207.96]], [[300.36, 207.4], [299.83, 207.4], [299.83, 207.91], [300.36, 207.91], [300.36, 207.4]], [[289.5, 207.91], [289.49, 207.41], [286.35, 207.41], [286.35, 207.91], [289.5, 207.91]]]}	-3.46	11	\N	\N
3	{"type": "Polygon", "coordinates": [[[272.79, 223.14], [272.72, 223.14], [272.72, 223.13], [274.51, 223.13], [280.61, 223.11], [280.61, 223.08], [275.82, 223.08], [275.81, 209.71], [283.49, 209.71], [283.49, 223.08], [282.75, 223.08], [282.75, 223.1], [284.05, 223.1], [284.05, 222.57], [284.46, 222.57], [284.46, 222.37], [284.04, 222.37], [284.05, 211.96], [301.6, 211.96], [301.6, 222.38], [288.02, 222.37], [288.02, 222.57], [299.94, 222.57], [299.94, 223.15], [304.78, 223.15], [304.78, 223.03], [302.25, 223.03], [302.16, 199.75], [315.52, 199.75], [315.52, 223.03], [306.51, 223.03], [306.51, 223.15], [316.04, 223.15], [316.04, 229.84], [306.67, 229.84], [306.67, 230.0], [315.52, 230.0], [315.52, 244.57], [302.23, 244.57], [302.23, 230.0], [304.96, 230.0], [304.96, 229.84], [301.62, 229.84], [301.62, 240.06], [282.67, 240.05], [282.67, 240.25], [283.45, 240.23], [283.45, 243.05], [280.8, 243.05], [280.8, 240.29], [281.88, 240.27], [281.88, 240.05], [280.84, 240.05], [280.82, 233.84], [276.4, 233.84], [276.4, 234.09], [280.54, 234.09], [280.56, 245.24], [275.09, 245.24], [275.09, 234.09], [275.19, 234.09], [275.19, 233.84], [274.49, 233.84], [274.49, 234.0], [272.79, 234.0], [272.79, 223.14]], [[286.29, 222.37], [286.15, 222.37], [286.14, 222.57], [286.29, 222.57], [286.29, 222.37]], [[288.95, 229.86], [288.95, 234.43], [298.97, 234.44], [298.97, 229.86], [288.95, 229.86]], [[285.98, 232.63], [285.98, 231.68], [285.82, 231.68], [285.82, 231.99], [283.95, 231.99], [283.95, 230.3], [286.45, 230.3], [286.45, 229.86], [283.46, 229.86], [283.46, 234.45], [286.45, 234.45], [286.45, 234.02], [283.95, 234.02], [283.95, 232.32], [285.82, 232.32], [285.82, 232.63], [285.98, 232.63]]]}	-5.00	10	\N	\N
280	{"type": "MultiPolygon", "coordinates": [[[[270.64, 207.07], [270.66, 211.77], [270.68, 211.77], [270.68, 211.96], [239.59, 211.96], [239.59, 211.59], [239.59, 211.53], [239.59, 211.51], [235.53, 211.5], [235.53, 211.57], [235.54, 211.57], [235.54, 211.96], [205.64, 211.96], [205.64, 223.14], [268.38, 223.22], [268.38, 223.58], [259.65, 223.58], [259.65, 224.91], [260.82, 224.91], [260.82, 225.12], [259.82, 225.12], [259.85, 226.99], [262.01, 226.99], [262.01, 225.12], [261.93, 225.12], [261.93, 224.91], [263.6, 224.91], [263.6, 225.16], [263.44, 225.16], [263.44, 229.52], [265.89, 229.52], [265.89, 225.16], [264.48, 225.16], [264.48, 224.91], [267.63, 224.91], [267.63, 225.16], [266.27, 225.17], [266.26, 229.52], [268.74, 229.52], [268.72, 225.16], [268.57, 225.16], [268.57, 224.91], [271.86, 224.91], [271.86, 223.58], [270.2, 223.58], [270.2, 223.22], [272.22, 223.22], [272.22, 211.96], [272.15, 211.96], [272.15, 211.77], [272.37, 211.77], [272.37, 207.07], [270.64, 207.07]]], [[[272.66, 211.99], [272.66, 222.0], [277.48, 222.0], [277.48, 222.45], [272.73, 222.44], [272.75, 223.59], [271.96, 223.61], [271.92, 224.88], [272.73, 224.88], [272.73, 234.31], [283.53, 234.31], [283.53, 233.45], [284.05, 233.45], [284.05, 232.57], [283.53, 232.57], [283.53, 231.57], [284.03, 231.57], [284.03, 230.76], [283.53, 230.76], [283.53, 229.81], [300.46, 229.81], [300.46, 227.58], [301.46, 227.58], [301.45, 224.92], [300.46, 224.92], [300.46, 222.51], [281.13, 222.46], [281.13, 222.0], [283.42, 222.0], [283.42, 219.95], [275.11, 219.93], [274.99, 219.93], [274.99, 212.03], [274.54, 212.03], [274.54, 211.98], [272.66, 211.99]], [[279.35, 222.46], [279.17, 222.46], [279.17, 222.0], [279.35, 222.0], [279.35, 222.46]]]]}	0.60	2	\N	\N
341	{"type": "Polygon", "coordinates": [[[412.37, 189.21], [411.86, 189.21], [411.86, 186.02], [414.01, 186.02], [414.01, 189.21], [413.9, 189.21], [413.9, 189.46], [414.01, 189.46], [414.01, 190.8], [427.24, 190.83], [427.24, 195.42], [426.53, 195.42], [426.54, 197.11], [426.39, 197.11], [426.39, 197.3], [427.08, 197.3], [427.08, 202.42], [422.86, 202.42], [422.8, 203.16], [422.1, 203.22], [422.08, 205.35], [422.82, 205.38], [422.85, 207.52], [422.38, 207.52], [422.38, 207.2], [403.68, 207.16], [403.54, 197.3], [422.17, 197.3], [422.17, 197.1], [422.14, 195.49], [343.48, 195.47], [343.46, 197.08], [343.47, 197.08], [343.47, 197.25], [360.03, 197.25], [360.03, 207.2], [343.83, 207.2], [343.83, 207.55], [342.82, 207.55], [342.83, 205.37], [343.57, 205.37], [343.57, 203.22], [342.78, 203.22], [342.78, 202.5], [338.62, 202.5], [338.62, 197.45], [338.99, 197.45], [338.99, 197.25], [339.29, 197.25], [339.29, 197.11], [339.26, 190.78], [349.83, 190.78], [349.83, 190.64], [348.54, 190.64], [348.54, 190.59], [348.27, 190.59], [348.27, 190.69], [346.42, 190.69], [346.42, 188.99], [348.27, 188.99], [348.27, 189.54], [348.54, 189.54], [348.54, 189.04], [350.58, 189.04], [350.56, 190.78], [411.87, 190.78], [411.87, 189.46], [412.37, 189.46], [412.37, 189.21]], [[341.71, 197.25], [341.71, 197.11], [341.06, 197.11], [341.06, 197.25], [341.71, 197.25]], [[424.73, 197.3], [424.73, 197.11], [423.95, 197.1], [423.95, 197.3], [424.73, 197.3]]]}	9.05	38	\N	\N
106	{"type": "MultiPolygon", "coordinates": [[[[268.67, 198.24], [268.67, 194.29], [270.58, 194.29], [270.62, 201.23], [269.47, 201.23], [269.46, 203.47], [272.39, 203.47], [272.37, 192.83], [267.32, 192.84], [267.32, 194.29], [267.39, 194.29], [267.41, 199.47], [270.27, 199.47], [270.27, 198.24], [269.01, 198.24], [268.67, 198.24]]], [[[223.6, 201.14], [223.64, 201.14], [223.64, 201.25], [215.82, 201.25], [215.82, 203.44], [263.91, 203.39], [263.91, 206.23], [263.73, 206.23], [263.73, 206.1], [260.14, 206.1], [260.14, 208.71], [264.21, 208.69], [264.21, 207.11], [263.73, 207.11], [263.73, 206.85], [263.91, 206.85], [263.91, 206.91], [265.21, 206.91], [265.21, 207.17], [264.39, 207.17], [264.39, 208.67], [266.72, 208.66], [266.72, 207.17], [265.97, 207.17], [265.97, 206.91], [266.94, 206.91], [266.94, 206.87], [267.11, 206.87], [267.11, 207.16], [266.89, 207.16], [266.9, 208.67], [270.3, 208.68], [270.3, 206.08], [267.12, 206.09], [267.12, 206.19], [266.94, 206.19], [266.94, 205.12], [267.26, 205.12], [267.26, 205.83], [270.4, 205.8], [270.4, 203.71], [267.26, 203.71], [267.26, 204.21], [266.94, 204.21], [266.94, 203.47], [269.44, 203.47], [269.44, 201.23], [239.73, 201.23], [239.73, 198.92], [235.34, 198.92], [235.34, 201.25], [232.26, 201.25], [232.26, 201.14], [234.85, 201.14], [234.85, 192.31], [221.64, 192.31], [221.64, 193.68], [223.59, 193.68], [223.6, 201.14]], [[230.92, 201.14], [230.92, 201.25], [225.02, 201.25], [225.02, 201.14], [230.92, 201.14]]], [[[343.99, 201.08], [338.21, 201.08], [338.21, 207.65], [343.99, 207.64], [343.99, 201.08]], [[342.74, 202.61], [342.74, 206.19], [339.69, 206.19], [339.69, 202.61], [342.74, 202.61]]], [[[421.64, 201.35], [421.64, 207.7], [426.99, 207.72], [426.99, 201.35], [421.64, 201.35]], [[425.57, 206.17], [422.62, 206.17], [422.62, 202.6], [425.57, 202.6], [425.57, 206.17]]]]}	5.00	37	\N	\N
27	{"type": "Polygon", "coordinates": [[[270.36, 198.2], [270.36, 199.3], [267.44, 199.29], [267.43, 197.9], [268.69, 197.9], [268.69, 198.23], [268.7, 198.23], [268.93, 198.23], [268.96, 198.23], [268.96, 198.2], [270.36, 198.2]]]}	-5.23	77	\N	\N
100	{"type": "Polygon", "coordinates": [[[274.51, 213.55], [272.72, 213.55], [272.72, 211.63], [274.5, 211.63], [274.51, 213.55]]]}	-4.50	10	\N	\N
151	{"type": "MultiPolygon", "coordinates": [[[[339.8, 205.56], [339.8, 205.27], [338.52, 205.27], [338.52, 205.56], [339.8, 205.56]]], [[[426.91, 205.73], [426.91, 205.39], [425.75, 205.39], [425.75, 205.73], [426.91, 205.73]]]]}	1.22	85	\N	\N
80	{"type": "Polygon", "coordinates": [[[268.71, 197.6], [268.71, 197.9], [267.43, 197.9], [267.43, 197.6], [268.71, 197.6]]]}	-2.62	11	\N	\N
84	{"type": "Polygon", "coordinates": [[[268.7, 196.4], [268.7, 196.7], [267.42, 196.7], [267.42, 196.4], [268.7, 196.4]]]}	-3.27	11	\N	\N
79	{"type": "Polygon", "coordinates": [[[268.71, 197.9], [268.71, 198.2], [267.43, 198.2], [267.43, 197.9], [268.71, 197.9]]]}	-2.45	11	\N	\N
83	{"type": "Polygon", "coordinates": [[[268.7, 196.7], [268.7, 197.0], [267.43, 197.0], [267.42, 196.7], [268.7, 196.7]]]}	-3.11	11	\N	\N
82	{"type": "Polygon", "coordinates": [[[268.7, 197.0], [268.71, 197.3], [267.43, 197.3], [267.43, 197.0], [268.7, 197.0]]]}	-2.95	11	\N	\N
28	{"type": "Polygon", "coordinates": [[[267.42, 196.7], [267.42, 196.4], [268.69, 196.4], [268.69, 196.7], [267.42, 196.7]]]}	-6.05	77	\N	\N
29	{"type": "Polygon", "coordinates": [[[268.69, 196.7], [268.69, 197.0], [267.43, 197.0], [267.42, 196.7], [268.69, 196.7]]]}	-5.88	77	\N	\N
30	{"type": "Polygon", "coordinates": [[[267.43, 197.3], [267.43, 197.0], [268.69, 197.0], [268.69, 197.3], [267.43, 197.3]]]}	-5.72	77	\N	\N
32	{"type": "Polygon", "coordinates": [[[267.43, 197.9], [267.43, 197.6], [268.69, 197.6], [268.69, 197.9], [267.43, 197.9]]]}	-5.39	77	\N	\N
\.


--
-- Data for Name: mapdata_altitudemarker; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_altitudemarker (id, geometry, space_id, import_tag, groundaltitude_id) FROM stdin;
1	{"type": "Point", "coordinates": [276.44, 176.94]}	14	\N	2
2	{"type": "Point", "coordinates": [277.31, 228.69]}	22	\N	1
52	{"type": "Point", "coordinates": [268.83, 224.0]}	32	\N	14
7	{"type": "Point", "coordinates": [271.83, 191.67]}	52	\N	4
8	{"type": "Point", "coordinates": [274.62, 202.38]}	20	\N	5
9	{"type": "Point", "coordinates": [274.26, 212.37]}	20	\N	6
10	{"type": "Point", "coordinates": [283.74, 172.16]}	35	\N	7
13	{"type": "Point", "coordinates": [269.72, 195.23]}	78	\N	4
53	{"type": "Point", "coordinates": [277.82, 169.61]}	61	\N	3
19	{"type": "Point", "coordinates": [274.93, 143.2]}	95	\N	3
6	{"type": "Point", "coordinates": [268.04, 195.94]}	71	\N	4
5	{"type": "Point", "coordinates": [269.6, 194.16]}	71	\N	3
12	{"type": "Point", "coordinates": [268.05, 196.22]}	78	\N	7
14	{"type": "Point", "coordinates": [342.77, 201.86]}	83	\N	8
15	{"type": "Point", "coordinates": [342.8, 206.91]}	83	\N	9
16	{"type": "Point", "coordinates": [339.57, 203.63]}	86	\N	3
17	{"type": "Point", "coordinates": [342.82, 207.09]}	86	\N	8
18	{"type": "Point", "coordinates": [275.83, 132.36]}	92	\N	10
21	{"type": "Point", "coordinates": [271.92, 130.4]}	93	\N	10
22	{"type": "Point", "coordinates": [292.34, 127.49]}	94	\N	10
23	{"type": "Point", "coordinates": [274.33, 142.24]}	97	\N	2
25	{"type": "Point", "coordinates": [278.14, 135.85]}	98	\N	11
26	{"type": "Point", "coordinates": [275.25, 141.45]}	98	\N	2
28	{"type": "Point", "coordinates": [277.37, 142.28]}	99	\N	10
34	{"type": "Point", "coordinates": [272.61, 231.12]}	101	\N	1
35	{"type": "Point", "coordinates": [272.72, 233.19]}	101	\N	3
36	{"type": "Point", "coordinates": [272.6, 231.07]}	103	\N	3
37	{"type": "Point", "coordinates": [272.72, 233.01]}	103	\N	12
38	{"type": "Point", "coordinates": [272.65, 231.1]}	107	\N	12
39	{"type": "Point", "coordinates": [272.72, 233.12]}	107	\N	13
40	{"type": "Point", "coordinates": [275.77, 230.34]}	104	\N	12
41	{"type": "Point", "coordinates": [280.28, 230.31]}	105	\N	13
43	{"type": "Point", "coordinates": [284.22, 212.07]}	118	\N	1
42	{"type": "Point", "coordinates": [284.3, 194.51]}	118	\N	3
44	{"type": "Point", "coordinates": [276.82, 223.22]}	31	\N	14
45	{"type": "Point", "coordinates": [277.92, 221.56]}	33	\N	14
46	{"type": "Point", "coordinates": [279.14, 204.58]}	33	\N	3
47	{"type": "Point", "coordinates": [271.58, 204.24]}	59	\N	3
48	{"type": "Point", "coordinates": [271.78, 207.98]}	59	\N	14
49	{"type": "Point", "coordinates": [236.45, 202.04]}	58	\N	3
50	{"type": "Point", "coordinates": [235.6, 211.55]}	58	\N	14
51	{"type": "Point", "coordinates": [244.7, 214.68]}	36	\N	14
27	{"type": "Point", "coordinates": [277.51, 138.26]}	99	\N	11
20	{"type": "Point", "coordinates": [275.41, 139.74]}	95	\N	10
54	{"type": "Point", "coordinates": [273.23, 140.19]}	96	\N	10
57	{"type": "Point", "coordinates": [426.59, 203.62]}	136	\N	3
58	{"type": "Point", "coordinates": [423.67, 207.32]}	136	\N	8
59	{"type": "Point", "coordinates": [422.67, 202.08]}	138	\N	8
60	{"type": "Point", "coordinates": [422.63, 207.27]}	138	\N	9
61	{"type": "Point", "coordinates": [346.81, 189.36]}	50	\N	3
62	{"type": "Point", "coordinates": [346.76, 189.26]}	88	\N	9
64	{"type": "Point", "coordinates": [269.83, 194.41]}	177	\N	12
65	{"type": "Point", "coordinates": [267.98, 194.4]}	177	\N	14
\.


--
-- Data for Name: mapdata_area; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_area (locationslug_ptr_id, titles, can_search, can_describe, geometry, slow_down_factor, access_restriction_id, space_id, import_tag, icon, label_overrides, label_settings_id, main_point, external_url, import_block_data, import_block_geom, load_group_contribute_id, load_group_display_id) FROM stdin;
63	{"en": "Water pool"}	f	f	{"type": "Polygon", "coordinates": [[[233.53, 179.22], [241.07, 179.22], [241.07, 153.74], [240.05, 153.74], [240.05, 152.83], [240.39, 152.83], [240.39, 152.4], [240.2, 152.07], [239.98, 151.85], [239.71, 151.85], [234.88, 151.85], [234.64, 151.99], [234.52, 152.14], [234.44, 152.36], [234.4, 152.47], [234.4, 152.72], [234.71, 152.72], [234.71, 153.75], [233.66, 153.75], [233.53, 179.22]]]}	1.00	\N	61	\N	\N	{}	\N	\N	\N	f	f	\N	\N
69	{}	f	f	{"type": "Polygon", "coordinates": [[[243.36, 152.6], [243.36, 182.24], [259.35, 182.24], [259.35, 160.99], [258.91, 158.59], [257.89, 156.4], [256.57, 155.23], [254.67, 153.84], [252.04, 152.6], [243.36, 152.6]]]}	1.00	\N	61	\N	\N	{}	\N	\N	\N	f	f	\N	\N
68	{}	f	f	{"type": "Polygon", "coordinates": [[[214.81, 182.53], [231.45, 182.53], [231.45, 152.6], [227.06, 152.6], [223.57, 153.91], [221.01, 155.37], [218.6, 157.42], [216.78, 159.9], [215.03, 163.11], [214.81, 182.53]]]}	1.00	\N	61	\N	\N	{}	\N	\N	\N	f	f	\N	\N
70	{}	t	t	{"type": "Polygon", "coordinates": [[[297.25, 181.94], [299.69, 175.13], [301.81, 175.19], [301.81, 172.56], [299.13, 172.44], [296.69, 168.81], [302.0, 168.88], [302.0, 164.94], [295.5, 164.94], [297.31, 162.19], [301.88, 162.19], [301.88, 158.93], [296.37, 158.93], [295.38, 157.13], [299.38, 157.13], [299.75, 153.13], [337.44, 153.13], [341.69, 151.06], [343.44, 150.94], [343.44, 157.44], [364.06, 158.5], [367.5, 158.75], [367.5, 175.38], [340.44, 175.38], [321.88, 181.88], [297.25, 181.94]]]}	1.00	\N	61	\N	\N	{}	\N	\N	\N	f	f	\N	\N
67	{"en": "Bycicle Parking"}	t	t	{"type": "Polygon", "coordinates": [[[243.38, 189.04], [243.36, 182.24], [272.78, 182.24], [272.78, 189.18], [243.38, 189.04]]]}	1.00	\N	61	\N	\N	{}	\N	\N	\N	f	f	\N	\N
159	{"en": "Food court"}	t	t	{"type": "Polygon", "coordinates": [[[299.27, 221.11], [293.14, 221.11], [293.14, 219.12], [299.25, 219.17], [299.27, 221.11]]]}	1.00	\N	51	\N	\N	{}	1	\N	\N	f	f	\N	\N
162	{"en": "Arena Visitor Experience"}	t	t	{"type": "Polygon", "coordinates": [[[288.96, 227.73], [285.19, 227.73], [285.19, 226.2], [288.95, 226.2], [288.96, 227.73]]]}	1.00	\N	31	\N	\N	{}	1	\N	\N	f	f	\N	\N
158	{"en": "Check-in area & Info point"}	t	t	{"type": "Polygon", "coordinates": [[[422.04, 198.2], [422.41, 198.2], [422.41, 197.58], [422.04, 197.58], [422.04, 198.2]]]}	1.00	\N	135	\N	\N	{}	1	\N	\N	f	f	\N	\N
170	{"en": "Check-in area & Info point"}	t	t	{"type": "Polygon", "coordinates": [[[271.47, 220.52], [269.83, 220.51], [269.83, 217.14], [271.47, 217.12], [271.47, 220.52]]]}	1.00	\N	36	\N	\N	{}	1	\N	\N	f	f	\N	\N
121	{"en": "Check-in area"}	t	f	{"type": "Polygon", "coordinates": [[[303.82, 225.75], [303.82, 223.13], [299.95, 223.15], [299.94, 225.74], [303.82, 225.75]]]}	1.00	\N	22	\N	\N	{}	1	\N	\N	f	f	\N	\N
157	{"en": "Info point"}	t	t	{"type": "Polygon", "coordinates": [[[273.27, 228.89], [274.3, 228.89], [274.29, 227.08], [273.27, 227.08], [273.27, 228.89]]]}	1.00	\N	22	\N	\N	{}	1	\N	\N	f	f	\N	\N
122	{"en": "Speakers & Supporters check-in"}	t	t	{"type": "Polygon", "coordinates": [[[303.82, 228.34], [303.82, 229.88], [301.6, 229.85], [301.62, 228.33], [303.82, 228.34]]]}	1.00	\N	22	\N	\N	{}	1	\N	\N	f	f	\N	\N
124	{"en": "Job Wall"}	t	f	{"type": "Polygon", "coordinates": [[[283.55, 229.87], [283.55, 229.56], [286.43, 229.56], [286.43, 229.87], [283.55, 229.87]]]}	1.00	\N	22	\N	\N	{}	1	\N	\N	f	f	\N	\N
126	{"en": "Wardrobe"}	t	t	{"type": "Polygon", "coordinates": [[[295.05, 239.28], [295.06, 240.79], [301.62, 240.79], [301.62, 239.28], [295.05, 239.28]]]}	1.00	\N	22	\N	\N	{"en": "Wardrobe"}	1	\N	\N	f	f	\N	\N
125	{"en": "Coffee station"}	t	t	{"type": "Polygon", "coordinates": [[[289.56, 239.28], [289.56, 240.83], [294.43, 240.83], [294.42, 239.28], [289.56, 239.28]]]}	1.00	\N	22	\N	\N	{}	1	\N	\N	f	f	\N	\N
168	{"en": "Hacking Village"}	t	t	{"type": "Polygon", "coordinates": [[[259.7, 212.02], [259.81, 215.0], [259.79, 215.06], [259.81, 215.06], [263.94, 215.0], [270.51, 214.94], [270.51, 212.07], [259.7, 212.02]]]}	1.00	\N	36	\N	\N	{}	1	\N	\N	f	f	\N	\N
179	{"en": "Entrance A2"}	t	t	{"type": "Polygon", "coordinates": [[[426.6, 200.73], [427.65, 200.73], [427.65, 198.98], [426.6, 198.97], [426.6, 200.73]]]}	1.00	\N	135	\N	\N	{}	3	\N	\N	f	f	\N	\N
167	{"en": "Workshop area"}	t	t	{"type": "Polygon", "coordinates": [[[207.33, 216.76], [217.5, 216.81], [217.61, 213.58], [207.23, 213.51], [207.33, 216.76]]]}	1.00	\N	36	\N	\N	{}	1	\N	\N	f	f	\N	\N
163	{"en": "Booth area"}	t	t	{"type": "Polygon", "coordinates": [[[316.07, 229.91], [316.07, 223.14], [294.46, 223.06], [272.77, 223.06], [272.78, 233.81], [278.12, 233.89], [283.47, 233.82], [283.53, 229.92], [316.07, 229.91]]]}	1.00	\N	22	\N	\N	{}	1	\N	\N	f	f	\N	\N
185	{"en": "Coffee station "}	t	t	{"type": "Polygon", "coordinates": [[[255.23, 221.95], [249.25, 221.95], [249.25, 223.24], [255.19, 223.2], [255.23, 221.95]]]}	1.00	\N	36	\N	\N	{}	1	\N	\N	f	f	\N	\N
164	{"en": "Crane Hall BOF meetings"}	t	t	{"type": "Polygon", "coordinates": [[[244.86, 218.75], [240.03, 218.71], [240.02, 216.81], [244.86, 216.81], [244.86, 218.75]]]}	1.00	\N	36	\N	\N	{}	1	\N	https://www.sfscon.it/tracks/crane-hall-bof-meeting	f	f	\N	\N
165	{"en": "B2B Meetings"}	t	t	{"type": "Polygon", "coordinates": [[[233.95, 213.51], [227.6, 213.56], [227.63, 221.41], [233.94, 221.47], [233.95, 213.51]]]}	1.00	\N	36	\N	\N	{}	1	\N	\N	f	f	\N	\N
166	{"en": "Chill out area"}	t	t	{"type": "Polygon", "coordinates": [[[226.16, 221.51], [226.1, 213.51], [220.77, 213.51], [220.83, 221.5], [226.16, 221.51]]]}	1.00	\N	36	\N	\N	{}	1	\N	\N	f	f	\N	\N
\.


--
-- Data for Name: mapdata_area_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_area_groups (id, area_id, locationgroup_id) FROM stdin;
1	63	62
2	68	65
3	69	65
4	70	65
5	121	119
6	125	123
7	67	66
67	158	119
68	159	123
70	165	123
71	166	133
73	167	21
74	168	21
77	121	169
78	122	169
80	122	120
81	170	169
82	170	119
83	179	169
84	158	169
85	157	169
86	124	169
89	126	169
90	162	21
113	164	21
118	185	123
\.


--
-- Data for Name: mapdata_beaconmeasurement; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_beaconmeasurement (id, geometry, comment, data, author_id, space_id, import_tag, fill_quest) FROM stdin;
\.


--
-- Data for Name: mapdata_building; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_building (id, geometry, level_id, import_tag) FROM stdin;
2	{"type": "Polygon", "coordinates": [[[337.54, 208.22], [337.54, 185.02], [427.34, 185.02], [427.34, 208.11], [337.54, 208.22]]]}	2	\N
3	{"type": "Polygon", "coordinates": [[[316.11, 246.21], [316.09, 199.11], [301.61, 199.09], [301.61, 222.38], [284.04, 222.37], [284.06, 199.13], [275.05, 199.06], [274.78, 179.34], [272.16, 179.34], [272.16, 181.48], [270.05, 181.45], [269.99, 192.41], [259.63, 192.47], [259.63, 191.62], [214.89, 191.63], [214.89, 211.44], [204.83, 211.49], [204.83, 229.91], [236.57, 229.87], [236.52, 246.17], [316.11, 246.21]]]}	10	\N
4	{"type": "Polygon", "coordinates": [[[301.43, 246.99], [301.43, 222.0], [272.66, 222.0], [272.66, 192.47], [259.63, 192.47], [259.63, 191.62], [215.06, 191.62], [215.06, 195.56], [205.03, 195.56], [205.03, 230.02], [244.91, 230.02], [244.91, 225.09], [248.22, 225.09], [248.22, 247.07], [301.43, 246.99]]]}	34	\N
6	{"type": "Polygon", "coordinates": [[[301.43, 246.99], [301.43, 222.0], [272.66, 222.0], [272.66, 192.47], [259.63, 192.47], [259.63, 191.62], [215.06, 191.62], [215.06, 195.56], [205.03, 195.56], [205.03, 230.02], [244.91, 230.02], [244.91, 225.09], [248.22, 225.09], [248.22, 247.07], [301.43, 246.99]]]}	37	\N
8	{"type": "Polygon", "coordinates": [[[337.54, 208.22], [337.54, 185.02], [427.34, 185.02], [427.34, 208.11], [337.54, 208.22]]]}	37	\N
9	{"type": "Polygon", "coordinates": [[[337.54, 208.22], [337.54, 185.02], [427.34, 185.02], [427.34, 208.11], [337.54, 208.22]]]}	38	\N
10	{"type": "Polygon", "coordinates": [[[188.29, 133.47], [201.19, 134.65], [201.19, 129.15], [215.51, 130.17], [215.43, 132.21], [223.69, 132.92], [224.71, 122.15], [224.63, 120.65], [224.24, 119.71], [223.61, 118.84], [222.66, 118.45], [221.25, 117.9], [217.16, 117.51], [217.16, 116.48], [196.16, 114.2], [196.08, 117.27], [189.47, 116.88], [188.29, 133.47]]]}	2	\N
11	{"type": "Polygon", "coordinates": [[[397.9, 150.93], [409.77, 152.27], [409.46, 158.01], [442.1, 160.92], [445.4, 128.6], [401.67, 124.11], [400.89, 133.31], [399.55, 133.24], [397.9, 150.93]]]}	2	\N
12	{"type": "Polygon", "coordinates": [[[448.79, 247.91], [485.12, 247.75], [477.73, 155.42], [449.1, 152.58], [448.79, 247.91]]]}	2	\N
13	{"type": "Polygon", "coordinates": [[[309.1, 116.72], [307.06, 140.79], [364.94, 146.13], [367.15, 121.6], [309.1, 116.72]]]}	2	\N
5	{"type": "Polygon", "coordinates": [[[250.34, 135.98], [271.87, 137.98], [271.3, 143.61], [298.68, 146.21], [301.42, 117.47], [273.9, 114.91], [273.26, 122.1], [259.43, 120.83], [259.3, 122.58], [255.87, 122.27], [254.78, 122.26], [253.35, 122.75], [252.36, 123.57], [251.53, 124.99], [250.34, 135.98]]]}	2	\N
7	{"type": "Polygon", "coordinates": [[[302.87, 247.02], [302.93, 193.33], [274.35, 193.35], [274.34, 198.94], [272.82, 198.94], [272.66, 192.47], [259.63, 192.47], [259.63, 191.62], [215.06, 191.62], [215.06, 195.56], [205.03, 195.56], [205.03, 230.02], [244.91, 230.02], [244.91, 225.09], [248.22, 225.09], [248.22, 247.07], [302.87, 247.02]]]}	38	\N
1	{"type": "Polygon", "coordinates": [[[301.43, 246.99], [301.43, 222.0], [272.66, 222.0], [272.66, 192.47], [259.63, 192.47], [259.63, 191.62], [215.06, 191.62], [215.06, 195.56], [205.03, 195.56], [205.03, 230.02], [244.91, 230.02], [244.91, 225.09], [248.22, 225.09], [248.22, 247.07], [301.43, 246.99]]]}	2	\N
14	{"type": "Polygon", "coordinates": [[[290.22, 190.56], [291.94, 190.19], [293.22, 189.28], [294.0, 188.31], [294.44, 187.09], [294.47, 185.63], [294.19, 184.59], [293.81, 183.88], [293.03, 182.94], [292.03, 182.38], [291.06, 182.03], [289.47, 181.97], [288.63, 182.22], [287.66, 182.72], [286.91, 183.5], [286.22, 184.53], [285.97, 185.53], [285.97, 186.72], [286.38, 188.31], [287.25, 189.38], [288.31, 190.09], [290.22, 190.56]]]}	2	\N
15	{"type": "Polygon", "coordinates": [[[267.74, 180.58], [268.2, 180.63], [268.67, 180.58], [269.1, 180.43], [269.47, 180.22], [269.8, 179.94], [270.09, 179.56], [270.29, 179.19], [270.4, 178.69], [270.41, 178.03], [270.18, 177.33], [269.84, 176.84], [269.48, 176.55], [268.79, 176.21], [268.26, 176.12], [267.48, 176.23], [267.02, 176.47], [266.62, 176.8], [266.3, 177.23], [266.08, 177.7], [265.94, 178.21], [266.0, 178.89], [266.21, 179.48], [266.69, 180.07], [267.17, 180.38], [267.74, 180.58]]]}	2	\N
16	{"type": "Polygon", "coordinates": [[[250.34, 135.98], [271.87, 137.98], [271.3, 143.61], [298.68, 146.21], [301.42, 117.47], [273.9, 114.91], [273.26, 122.1], [259.43, 120.83], [259.3, 122.58], [255.87, 122.27], [254.78, 122.26], [253.35, 122.75], [252.36, 123.57], [251.53, 124.99], [250.34, 135.98]]]}	10	\N
\.


--
-- Data for Name: mapdata_cloneditemsync; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_cloneditemsync (id, original_object_id, cloned_object_id, created_at, is_active, sync_fields, cloned_content_type_id, original_content_type_id) FROM stdin;
\.


--
-- Data for Name: mapdata_column; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_column (id, geometry, space_id, access_restriction_id, import_tag) FROM stdin;
1	{"type": "Polygon", "coordinates": [[[274.56, 199.21], [274.56, 199.78], [275.1, 199.78], [275.1, 199.19], [274.56, 199.21]]]}	33	\N	\N
2	{"type": "Polygon", "coordinates": [[[274.54, 203.3], [274.54, 203.84], [275.07, 203.84], [275.07, 203.3], [274.54, 203.3]]]}	33	\N	\N
18	{"type": "Polygon", "coordinates": [[[267.48, 127.67], [267.49, 127.31], [268.85, 127.44], [268.81, 127.78], [267.48, 127.67]]]}	93	\N	\N
19	{"type": "Polygon", "coordinates": [[[283.59, 138.91], [283.62, 138.56], [283.99, 138.59], [283.95, 138.95], [283.59, 138.91]]]}	94	\N	\N
20	{"type": "Polygon", "coordinates": [[[289.45, 139.44], [289.48, 139.11], [289.83, 139.14], [289.8, 139.48], [289.45, 139.44]]]}	94	\N	\N
21	{"type": "Polygon", "coordinates": [[[295.36, 139.99], [295.39, 139.65], [295.73, 139.68], [295.7, 140.02], [295.36, 139.99]]]}	94	\N	\N
7	{"type": "Polygon", "coordinates": [[[268.69, 198.23], [268.69, 194.16], [268.96, 194.16], [268.96, 198.23], [268.69, 198.23]]]}	78	\N	\N
9	{"type": "Polygon", "coordinates": [[[277.16, 135.26], [277.27, 134.14], [279.13, 134.26], [279.0, 135.42], [277.16, 135.26]]]}	92	\N	\N
10	{"type": "Polygon", "coordinates": [[[277.69, 129.53], [277.76, 128.27], [279.63, 128.37], [279.55, 129.7], [277.69, 129.53]]]}	92	\N	\N
11	{"type": "Polygon", "coordinates": [[[270.45, 134.46], [270.5, 133.56], [272.32, 133.69], [272.23, 134.62], [270.45, 134.46]]]}	93	\N	\N
12	{"type": "Polygon", "coordinates": [[[270.93, 128.9], [271.03, 127.98], [272.81, 128.11], [272.71, 129.05], [270.93, 128.9]]]}	93	\N	\N
13	{"type": "Polygon", "coordinates": [[[266.82, 134.49], [266.86, 134.14], [268.22, 134.26], [268.16, 134.6], [266.82, 134.49]]]}	93	\N	\N
14	{"type": "Polygon", "coordinates": [[[262.7, 134.11], [262.73, 133.74], [264.11, 133.86], [264.07, 134.24], [262.7, 134.11]]]}	93	\N	\N
15	{"type": "Polygon", "coordinates": [[[258.46, 132.42], [258.32, 133.7], [259.85, 133.84], [259.89, 133.51], [258.74, 133.37], [258.85, 132.46], [258.46, 132.42]]]}	93	\N	\N
16	{"type": "Polygon", "coordinates": [[[258.86, 127.82], [259.25, 127.87], [259.35, 126.91], [260.5, 127.0], [260.54, 126.65], [259.01, 126.51], [258.86, 127.82]]]}	93	\N	\N
17	{"type": "Polygon", "coordinates": [[[263.35, 127.27], [263.38, 126.93], [264.74, 127.02], [264.71, 127.42], [263.35, 127.27]]]}	93	\N	\N
22	{"type": "Polygon", "coordinates": [[[283.88, 135.89], [283.91, 135.54], [284.27, 135.58], [284.23, 135.92], [283.88, 135.89]]]}	94	\N	\N
23	{"type": "Polygon", "coordinates": [[[289.73, 136.42], [289.76, 136.09], [290.1, 136.12], [290.07, 136.45], [289.73, 136.42]]]}	94	\N	\N
24	{"type": "Polygon", "coordinates": [[[295.63, 136.96], [295.67, 136.63], [296.01, 136.66], [295.99, 137.0], [295.63, 136.96]]]}	94	\N	\N
25	{"type": "Polygon", "coordinates": [[[283.53, 130.08], [283.56, 129.74], [285.47, 129.89], [285.43, 130.25], [283.53, 130.08]]]}	94	\N	\N
26	{"type": "Polygon", "coordinates": [[[289.4, 130.61], [289.43, 130.26], [291.34, 130.45], [291.31, 130.79], [289.4, 130.61]]]}	94	\N	\N
3	{"type": "Polygon", "coordinates": [[[274.5, 207.3], [274.5, 207.97], [275.06, 207.97], [275.06, 207.3], [274.5, 207.3]]]}	33	\N	\N
27	{"type": "Polygon", "coordinates": [[[295.26, 131.15], [295.29, 130.8], [297.19, 130.99], [297.16, 131.32], [295.26, 131.15]]]}	94	\N	\N
4	{"type": "Polygon", "coordinates": [[[274.54, 211.37], [274.54, 212.03], [275.16, 212.03], [275.16, 211.37], [274.54, 211.37]]]}	33	\N	\N
30	{"type": "Polygon", "coordinates": [[[299.83, 211.46], [300.36, 211.46], [300.36, 211.97], [299.83, 211.97], [299.83, 211.46]]]}	118	\N	\N
31	{"type": "Polygon", "coordinates": [[[299.83, 207.4], [300.36, 207.4], [300.36, 207.91], [299.83, 207.91], [299.83, 207.4]]]}	118	\N	\N
32	{"type": "Polygon", "coordinates": [[[299.83, 203.34], [300.36, 203.34], [300.36, 203.84], [299.83, 203.84], [299.83, 203.34]]]}	118	\N	\N
33	{"type": "Polygon", "coordinates": [[[299.83, 199.24], [300.36, 199.24], [300.36, 199.75], [299.83, 199.75], [299.83, 199.24]]]}	118	\N	\N
34	{"type": "Polygon", "coordinates": [[[289.5, 211.47], [286.34, 211.47], [286.34, 211.97], [289.49, 211.97], [289.5, 211.47]]]}	118	\N	\N
35	{"type": "Polygon", "coordinates": [[[289.49, 207.41], [286.35, 207.41], [286.35, 207.91], [289.5, 207.91], [289.49, 207.41]]]}	118	\N	\N
36	{"type": "Polygon", "coordinates": [[[289.49, 203.34], [286.34, 203.34], [286.34, 203.85], [289.5, 203.85], [289.49, 203.34]]]}	118	\N	\N
37	{"type": "Polygon", "coordinates": [[[289.48, 199.25], [286.35, 199.25], [286.35, 199.75], [289.48, 199.75], [289.48, 199.25]]]}	118	\N	\N
38	{"type": "Polygon", "coordinates": [[[251.01, 129.88], [242.74, 129.16], [242.77, 128.89], [251.03, 129.67], [251.01, 129.88]]]}	61	\N	\N
39	{"type": "Polygon", "coordinates": [[[288.95, 234.43], [288.95, 229.86], [298.97, 229.86], [298.97, 234.44], [288.95, 234.43]]]}	22	\N	\N
5	{"type": "Polygon", "coordinates": [[[283.95, 230.3], [283.95, 231.99], [285.82, 231.99], [285.82, 231.68], [285.98, 231.68], [285.98, 232.63], [285.82, 232.63], [285.82, 232.32], [283.95, 232.32], [283.95, 234.02], [286.45, 234.02], [286.45, 234.45], [283.46, 234.45], [283.46, 229.86], [286.45, 229.86], [286.45, 230.3], [283.95, 230.3]]]}	22	\N	\N
\.


--
-- Data for Name: mapdata_crossdescription; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_crossdescription (id, descriptions, origin_space_id, space_id, target_space_id) FROM stdin;
\.


--
-- Data for Name: mapdata_dataoverlay; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_dataoverlay (id, titles, description, stroke_color, stroke_width, fill_color, pull_url, pull_headers, pull_interval, access_restriction_id, default_geomtype, fill_opacity, stroke_opacity, cluster_points, edit_access_restriction_id, update_interval) FROM stdin;
\.


--
-- Data for Name: mapdata_dataoverlayfeature; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_dataoverlayfeature (id, titles, import_tag, geometry, external_url, stroke_color, stroke_width, fill_color, show_label, show_geometry, interactive, point_icon, extra_data, level_id, overlay_id, fill_opacity, stroke_opacity) FROM stdin;
\.


--
-- Data for Name: mapdata_door; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_door (id, geometry, access_restriction_id, level_id, import_tag, name, todo) FROM stdin;
1	{"type": "Polygon", "coordinates": [[[277.48, 222.48], [279.17, 222.47], [279.17, 221.99], [277.48, 221.99], [277.48, 222.48]]]}	\N	2	\N	\N	f
2	{"type": "Polygon", "coordinates": [[[279.35, 221.99], [279.35, 222.51], [281.13, 222.51], [281.13, 222.0], [279.35, 221.99]]]}	\N	2	\N	\N	f
3	{"type": "Polygon", "coordinates": [[[306.51, 223.2], [304.78, 223.2], [304.78, 222.99], [306.51, 222.99], [306.51, 223.2]]]}	\N	10	\N	\N	f
6	{"type": "Polygon", "coordinates": [[[275.19, 233.81], [275.19, 234.12], [276.4, 234.12], [276.4, 233.82], [275.19, 233.81]]]}	\N	10	\N	\N	f
7	{"type": "Polygon", "coordinates": [[[250.46, 201.3], [250.47, 200.5], [251.96, 200.5], [251.96, 201.31], [250.46, 201.3]]]}	\N	2	\N	\N	f
10	{"type": "Polygon", "coordinates": [[[270.25, 205.04], [270.64, 205.04], [270.64, 204.06], [270.27, 204.06], [270.25, 205.04]]]}	\N	10	\N	\N	f
11	{"type": "Polygon", "coordinates": [[[272.27, 189.23], [272.87, 189.23], [272.87, 185.46], [272.3, 185.46], [272.27, 189.23]]]}	\N	10	\N	\N	f
12	{"type": "Polygon", "coordinates": [[[275.34, 206.34], [275.34, 206.07], [276.23, 206.07], [276.23, 206.34], [275.34, 206.34]]]}	\N	10	\N	\N	f
13	{"type": "Polygon", "coordinates": [[[277.36, 205.57], [277.73, 205.57], [277.73, 204.68], [277.38, 204.68], [277.36, 205.57]]]}	\N	10	\N	\N	f
14	{"type": "Polygon", "coordinates": [[[277.37, 203.72], [277.69, 203.72], [277.69, 202.88], [277.37, 202.88], [277.37, 203.72]]]}	\N	10	\N	\N	f
15	{"type": "Polygon", "coordinates": [[[281.88, 240.02], [281.88, 240.35], [282.67, 240.35], [282.67, 240.02], [281.88, 240.02]]]}	\N	10	\N	\N	f
18	{"type": "Polygon", "coordinates": [[[267.63, 225.17], [267.63, 224.85], [268.57, 224.85], [268.57, 225.18], [267.63, 225.17]]]}	\N	2	\N	\N	f
19	{"type": "Polygon", "coordinates": [[[263.6, 225.2], [263.6, 224.89], [264.48, 224.89], [264.48, 225.18], [263.6, 225.2]]]}	\N	2	\N	\N	f
20	{"type": "Polygon", "coordinates": [[[260.82, 225.21], [260.82, 224.85], [261.93, 224.85], [261.93, 225.19], [260.82, 225.21]]]}	\N	2	\N	\N	f
21	{"type": "Polygon", "coordinates": [[[263.67, 206.9], [263.99, 206.9], [263.99, 206.18], [263.7, 206.18], [263.67, 206.9]]]}	\N	2	\N	\N	f
22	{"type": "Polygon", "coordinates": [[[265.21, 207.22], [265.21, 206.9], [265.95, 206.9], [265.95, 207.21], [265.21, 207.22]]]}	\N	2	\N	\N	f
23	{"type": "Polygon", "coordinates": [[[266.94, 206.89], [267.15, 206.89], [267.15, 206.1], [266.93, 206.1], [266.94, 206.89]]]}	\N	2	\N	\N	f
24	{"type": "Polygon", "coordinates": [[[235.54, 212.02], [235.54, 211.53], [239.59, 211.53], [239.59, 212.0], [235.54, 212.02]]]}	\N	2	\N	\N	f
25	{"type": "Polygon", "coordinates": [[[269.33, 203.46], [269.53, 203.46], [269.53, 201.24], [269.31, 201.24], [269.33, 203.46]]]}	\N	2	\N	\N	f
26	{"type": "Polygon", "coordinates": [[[270.68, 211.99], [270.68, 211.75], [272.15, 211.75], [272.15, 211.99], [270.68, 211.99]]]}	\N	2	\N	\N	f
16	{"type": "Polygon", "coordinates": [[[284.46, 222.64], [284.46, 222.23], [286.15, 222.24], [286.14, 222.65], [284.46, 222.64]]]}	\N	10	\N	\N	f
17	{"type": "Polygon", "coordinates": [[[286.29, 222.61], [286.29, 222.28], [288.02, 222.28], [288.02, 222.61], [286.29, 222.61]]]}	\N	10	\N	\N	f
9	{"type": "Polygon", "coordinates": [[[268.38, 223.61], [268.38, 223.13], [270.2, 223.13], [270.2, 223.61], [268.38, 223.61]]]}	\N	2	\N	\N	f
4	{"type": "Polygon", "coordinates": [[[304.96, 229.71], [304.96, 230.15], [306.67, 230.14], [306.67, 229.71], [304.96, 229.71]]]}	\N	10	\N	\N	f
30	{"type": "Polygon", "coordinates": [[[270.32, 204.92], [270.77, 204.92], [270.77, 203.94], [270.32, 203.94], [270.32, 204.92]]]}	\N	34	\N	\N	f
31	{"type": "Polygon", "coordinates": [[[272.76, 179.67], [272.76, 179.26], [274.55, 179.26], [274.55, 179.65], [272.76, 179.67]]]}	\N	34	\N	\N	f
32	{"type": "Polygon", "coordinates": [[[270.28, 194.23], [270.77, 194.23], [270.77, 192.64], [270.3, 192.64], [270.28, 194.23]]]}	\N	34	\N	\N	f
5	{"type": "Polygon", "coordinates": [[[280.61, 223.21], [280.61, 222.96], [282.75, 222.96], [282.75, 223.19], [280.61, 223.21]]]}	\N	10	\N	\N	f
33	{"type": "Polygon", "coordinates": [[[339.29, 197.09], [339.29, 197.34], [341.06, 197.34], [341.06, 197.08], [339.29, 197.09]]]}	\N	38	\N	\N	f
34	{"type": "Polygon", "coordinates": [[[341.71, 197.34], [341.71, 197.08], [343.47, 197.08], [343.47, 197.34], [341.71, 197.34]]]}	\N	38	\N	\N	f
35	{"type": "Polygon", "coordinates": [[[422.17, 197.34], [422.17, 197.08], [423.95, 197.08], [423.95, 197.35], [422.17, 197.34]]]}	\N	38	\N	\N	f
36	{"type": "Polygon", "coordinates": [[[424.73, 197.08], [424.73, 197.34], [426.39, 197.34], [426.39, 197.09], [424.73, 197.08]]]}	\N	38	\N	\N	f
37	{"type": "Polygon", "coordinates": [[[348.24, 190.57], [348.55, 190.57], [348.55, 189.49], [348.25, 189.49], [348.24, 190.57]]]}	\N	2	\N	\N	f
38	{"type": "Polygon", "coordinates": [[[343.24, 198.97], [343.74, 198.97], [343.74, 200.65], [343.26, 200.65], [343.24, 198.97]]]}	\N	2	\N	\N	f
39	{"type": "Polygon", "coordinates": [[[348.25, 190.59], [348.58, 190.59], [348.58, 189.54], [348.26, 189.54], [348.25, 190.59]]]}	\N	38	\N	\N	f
40	{"type": "Polygon", "coordinates": [[[278.7, 137.5], [278.96, 137.52], [279.11, 136.07], [278.85, 136.04], [278.7, 137.5]]]}	\N	2	\N	\N	f
41	{"type": "Polygon", "coordinates": [[[279.61, 127.77], [279.86, 127.8], [280.01, 126.36], [279.76, 126.33], [279.61, 127.77]]]}	\N	2	\N	\N	f
42	{"type": "Polygon", "coordinates": [[[277.18, 120.47], [277.2, 120.27], [277.99, 120.34], [277.96, 120.55], [277.18, 120.47]]]}	\N	2	\N	\N	f
43	{"type": "Polygon", "coordinates": [[[276.06, 120.37], [276.08, 120.16], [276.86, 120.24], [276.83, 120.43], [276.06, 120.37]]]}	\N	2	\N	\N	f
44	{"type": "Polygon", "coordinates": [[[275.64, 121.76], [275.85, 121.78], [275.98, 120.38], [275.79, 120.35], [275.64, 121.76]]]}	\N	2	\N	\N	f
45	{"type": "Polygon", "coordinates": [[[265.15, 137.47], [265.26, 136.19], [267.13, 136.3], [267.03, 137.69], [265.15, 137.47]]]}	\N	2	\N	\N	f
46	{"type": "Polygon", "coordinates": [[[261.86, 137.15], [261.97, 135.89], [264.11, 136.1], [264.04, 137.4], [261.86, 137.15]]]}	\N	2	\N	\N	f
47	{"type": "Polygon", "coordinates": [[[272.75, 143.89], [272.82, 143.21], [276.33, 143.46], [276.27, 144.21], [272.75, 143.89]]]}	\N	2	\N	\N	f
50	{"type": "Polygon", "coordinates": [[[268.02, 156.18], [268.03, 155.91], [269.78, 155.91], [269.78, 156.2], [268.02, 156.18]]]}	\N	10	\N	\N	f
51	{"type": "Polygon", "coordinates": [[[272.3, 205.42], [272.77, 205.42], [272.77, 204.1], [272.31, 204.1], [272.3, 205.42]]]}	\N	2	\N	\N	f
52	{"type": "Polygon", "coordinates": [[[270.31, 205.08], [270.66, 205.08], [270.66, 204.15], [270.3, 204.15], [270.31, 205.08]]]}	\N	2	\N	\N	f
53	{"type": "Polygon", "coordinates": [[[272.34, 193.32], [272.7, 193.31], [272.7, 194.36], [272.34, 194.36], [272.34, 193.32]]]}	\N	2	\N	\N	f
54	{"type": "Polygon", "coordinates": [[[283.45, 233.45], [284.05, 233.45], [284.05, 232.57], [283.48, 232.57], [283.45, 233.45]]]}	\N	2	\N	\N	f
55	{"type": "Polygon", "coordinates": [[[283.49, 231.57], [284.03, 231.57], [284.03, 230.76], [283.49, 230.76], [283.49, 231.57]]]}	\N	2	\N	\N	f
56	{"type": "Polygon", "coordinates": [[[283.55, 233.45], [284.03, 233.45], [284.03, 232.7], [283.56, 232.7], [283.55, 233.45]]]}	\N	82	\N	\N	f
57	{"type": "Polygon", "coordinates": [[[283.57, 231.59], [283.98, 231.59], [283.98, 230.86], [283.59, 230.86], [283.57, 231.59]]]}	\N	82	\N	\N	f
58	{"type": "Polygon", "coordinates": [[[283.45, 233.44], [284.03, 233.44], [284.03, 232.66], [283.46, 232.66], [283.45, 233.44]]]}	\N	38	\N	\N	f
59	{"type": "Polygon", "coordinates": [[[283.44, 231.61], [284.01, 231.61], [284.01, 230.83], [283.46, 230.83], [283.44, 231.61]]]}	\N	38	\N	\N	f
60	{"type": "Polygon", "coordinates": [[[263.66, 206.84], [263.88, 206.84], [263.88, 206.2], [263.66, 206.2], [263.66, 206.84]]]}	\N	38	\N	\N	f
61	{"type": "Polygon", "coordinates": [[[266.88, 206.15], [267.15, 206.15], [267.15, 206.94], [266.88, 206.94], [266.88, 206.15]]]}	\N	38	\N	\N	f
62	{"type": "Polygon", "coordinates": [[[265.23, 206.94], [265.23, 207.25], [265.93, 207.25], [265.93, 206.93], [265.23, 206.94]]]}	\N	38	\N	\N	f
48	{"type": "Polygon", "coordinates": [[[272.71, 141.68], [272.73, 141.4], [273.6, 141.48], [273.58, 141.76], [272.71, 141.68]]]}	\N	2	\N	\N	f
63	{"type": "Polygon", "coordinates": [[[273.54, 137.76], [273.55, 137.46], [276.29, 137.71], [276.29, 138.01], [273.54, 137.76]]]}	\N	2	\N	\N	f
64	{"type": "Polygon", "coordinates": [[[423.2, 201.41], [423.2, 201.09], [424.95, 201.09], [424.95, 201.41], [423.2, 201.41]]]}	\N	2	\N	\N	f
65	{"type": "Polygon", "coordinates": [[[421.29, 200.43], [421.7, 200.43], [421.7, 198.79], [421.3, 198.79], [421.29, 200.43]]]}	\N	2	\N	\N	f
67	{"type": "Polygon", "coordinates": [[[426.51, 200.72], [427.66, 200.72], [427.66, 198.98], [426.51, 198.98], [426.51, 200.72]]]}	\N	2	\N	\N	f
68	{"type": "Polygon", "coordinates": [[[412.34, 189.43], [412.34, 189.13], [413.95, 189.13], [413.95, 189.43], [412.34, 189.43]]]}	\N	2	\N	\N	f
69	{"type": "Polygon", "coordinates": [[[412.37, 189.52], [412.37, 189.16], [413.9, 189.16], [413.9, 189.51], [412.37, 189.52]]]}	\N	38	\N	\N	f
72	{"type": "Polygon", "coordinates": [[[263.69, 206.85], [263.95, 206.85], [263.95, 206.23], [263.68, 206.23], [263.69, 206.85]]]}	\N	37	\N	\N	f
73	{"type": "Polygon", "coordinates": [[[265.21, 207.22], [265.21, 206.81], [265.97, 206.81], [265.97, 207.22], [265.21, 207.22]]]}	\N	37	\N	\N	f
75	{"type": "Polygon", "coordinates": [[[266.9, 205.12], [267.33, 205.12], [267.33, 204.21], [266.9, 204.21], [266.9, 205.12]]]}	\N	37	\N	\N	f
74	{"type": "Polygon", "coordinates": [[[266.9, 206.19], [267.21, 206.19], [267.21, 206.87], [266.91, 206.87], [266.9, 206.19]]]}	\N	37	\N	\N	f
8	{"type": "Polygon", "coordinates": [[[300.26, 224.92], [301.45, 224.92], [301.46, 227.58], [300.27, 227.58], [300.26, 224.92]]]}	\N	2	\N	\N	f
70	{"type": "Polygon", "coordinates": [[[223.64, 201.33], [223.64, 201.1], [225.02, 201.09], [225.02, 201.33], [223.64, 201.33]]]}	\N	37	\N	\N	f
71	{"type": "Polygon", "coordinates": [[[230.92, 201.08], [230.92, 201.29], [232.26, 201.29], [232.26, 201.08], [230.92, 201.08]]]}	\N	37	\N	\N	f
\.


--
-- Data for Name: mapdata_dynamiclocation; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_dynamiclocation (locationslug_ptr_id, titles, can_search, can_describe, icon, label_overrides, position_secret, access_restriction_id, label_settings_id, external_url, import_block_data, import_block_geom, load_group_display_id) FROM stdin;
\.


--
-- Data for Name: mapdata_dynamiclocation_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_dynamiclocation_groups (id, dynamiclocation_id, locationgroup_id) FROM stdin;
\.


--
-- Data for Name: mapdata_graphedge; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_graphedge (id, access_restriction_id, from_node_id, to_node_id, waytype_id) FROM stdin;
73	\N	29	28	\N
74	\N	28	29	\N
75	\N	31	32	1
76	\N	32	31	1
77	\N	32	33	1
78	\N	33	32	1
79	\N	33	30	\N
80	\N	30	33	\N
81	\N	41	34	\N
82	\N	34	41	\N
83	\N	42	35	\N
84	\N	35	42	\N
85	\N	39	37	\N
86	\N	37	39	\N
17	\N	7	8	\N
18	\N	8	7	\N
87	\N	40	38	\N
88	\N	38	40	\N
89	\N	34	36	\N
90	\N	36	34	\N
91	\N	35	36	\N
92	\N	36	35	\N
93	\N	43	37	\N
94	\N	37	43	\N
95	\N	43	38	\N
96	\N	38	43	\N
99	\N	45	44	1
100	\N	44	45	1
101	\N	44	46	1
102	\N	46	44	1
103	\N	46	31	\N
104	\N	31	46	\N
105	\N	30	42	\N
106	\N	42	30	\N
37	\N	16	17	1
38	\N	17	16	1
107	\N	36	48	\N
108	\N	48	36	\N
109	\N	47	48	\N
110	\N	48	47	\N
43	\N	14	18	\N
44	\N	18	14	\N
55	\N	23	16	1
56	\N	16	23	1
57	\N	17	24	1
58	\N	24	17	1
59	\N	18	23	\N
60	\N	23	18	\N
61	\N	24	25	\N
62	\N	25	24	\N
121	\N	54	45	\N
122	\N	45	54	\N
67	\N	26	22	2
68	\N	22	26	2
123	\N	54	55	\N
124	\N	55	54	\N
125	\N	54	53	\N
126	\N	53	54	\N
127	\N	53	52	\N
128	\N	52	53	\N
129	\N	52	51	\N
130	\N	51	52	\N
137	\N	68	58	\N
138	\N	58	68	\N
141	\N	60	61	2
142	\N	61	60	2
147	\N	65	64	\N
148	\N	64	65	\N
149	\N	66	64	\N
150	\N	64	66	\N
151	\N	67	64	\N
152	\N	64	67	\N
153	\N	60	58	\N
154	\N	58	60	\N
155	\N	69	70	\N
156	\N	70	69	\N
157	\N	70	71	\N
158	\N	71	70	\N
159	\N	71	72	\N
160	\N	72	71	\N
161	\N	72	73	\N
162	\N	73	72	\N
163	\N	73	74	1
164	\N	74	73	1
167	\N	72	76	2
168	\N	76	72	2
169	\N	76	74	2
170	\N	74	76	2
173	\N	61	76	2
174	\N	76	61	2
177	\N	77	75	1
178	\N	75	77	1
179	\N	74	75	\N
180	\N	75	74	\N
181	\N	82	78	\N
182	\N	79	83	\N
183	\N	81	84	\N
184	\N	84	81	\N
185	\N	84	64	\N
186	\N	64	84	\N
187	\N	84	83	\N
188	\N	83	84	\N
191	\N	85	82	\N
192	\N	82	85	\N
193	\N	85	80	\N
194	\N	80	85	\N
197	\N	85	84	\N
198	\N	84	85	\N
199	\N	88	87	1
200	\N	87	88	1
201	\N	89	86	1
202	\N	86	89	1
203	\N	77	58	\N
204	\N	58	77	\N
205	\N	90	91	\N
206	\N	94	92	\N
207	\N	92	94	\N
208	\N	92	95	\N
209	\N	95	92	\N
210	\N	96	92	\N
211	\N	92	96	\N
212	\N	92	93	\N
213	\N	93	92	\N
214	\N	104	103	\N
215	\N	103	104	\N
216	\N	105	102	\N
217	\N	102	105	\N
218	\N	106	101	\N
219	\N	101	106	\N
220	\N	100	99	\N
221	\N	99	100	\N
222	\N	103	102	\N
223	\N	102	103	\N
224	\N	102	101	\N
225	\N	101	102	\N
226	\N	101	100	\N
227	\N	100	101	\N
228	\N	100	107	\N
229	\N	107	100	\N
230	\N	107	108	\N
231	\N	108	107	\N
232	\N	108	109	\N
233	\N	109	108	\N
234	\N	110	112	\N
235	\N	112	110	\N
236	\N	111	113	\N
237	\N	113	111	\N
238	\N	114	115	\N
239	\N	115	114	\N
240	\N	115	116	\N
241	\N	116	115	\N
242	\N	116	97	\N
243	\N	97	116	\N
244	\N	97	93	\N
245	\N	93	97	\N
246	\N	97	98	\N
247	\N	98	97	\N
248	\N	93	117	\N
249	\N	117	93	\N
250	\N	121	120	\N
251	\N	120	121	\N
256	\N	119	118	\N
257	\N	118	119	\N
258	\N	118	117	\N
259	\N	117	118	\N
260	\N	119	122	\N
261	\N	122	119	\N
262	\N	123	122	\N
263	\N	122	123	\N
264	\N	123	8	1
265	\N	8	123	1
133	\N	49	47	\N
134	\N	47	49	\N
266	\N	125	25	\N
267	\N	25	125	\N
268	\N	25	124	\N
269	\N	124	25	\N
270	\N	7	124	1
271	\N	124	7	1
272	\N	128	127	\N
273	\N	127	128	\N
274	\N	127	126	\N
275	\N	126	127	\N
276	\N	126	125	\N
277	\N	125	126	\N
278	\N	125	22	\N
279	\N	22	125	\N
280	\N	135	130	\N
281	\N	130	135	\N
282	\N	130	131	\N
283	\N	131	130	\N
284	\N	131	134	\N
285	\N	134	131	\N
286	\N	131	132	\N
287	\N	132	131	\N
288	\N	132	133	\N
289	\N	133	132	\N
290	\N	130	129	\N
291	\N	129	130	\N
292	\N	127	129	\N
293	\N	129	127	\N
294	\N	137	136	\N
295	\N	136	137	\N
296	\N	136	129	\N
297	\N	129	136	\N
298	\N	69	138	\N
299	\N	138	69	\N
300	\N	138	128	\N
301	\N	128	138	\N
302	\N	90	119	\N
303	\N	119	90	\N
304	\N	26	90	2
305	\N	90	26	2
306	\N	19	14	\N
307	\N	14	19	\N
308	\N	139	14	\N
309	\N	14	139	\N
310	\N	139	140	\N
311	\N	140	139	\N
312	\N	140	28	\N
313	\N	28	140	\N
314	\N	112	141	\N
315	\N	141	112	\N
316	\N	113	141	\N
317	\N	141	113	\N
318	\N	141	91	\N
319	\N	91	141	\N
320	\N	122	142	\N
321	\N	142	141	\N
322	\N	141	142	\N
323	\N	146	145	\N
324	\N	145	146	\N
325	\N	145	143	\N
326	\N	143	145	\N
329	\N	147	148	1
330	\N	148	147	1
331	\N	149	150	\N
332	\N	150	149	\N
333	\N	151	152	1
334	\N	152	151	1
335	\N	153	147	1
336	\N	147	153	1
337	\N	109	148	1
338	\N	148	109	1
339	\N	108	149	1
340	\N	149	108	1
341	\N	150	154	1
342	\N	154	150	1
343	\N	154	155	\N
344	\N	155	154	\N
345	\N	151	155	1
346	\N	155	151	1
347	\N	152	143	1
348	\N	143	152	1
371	\N	110	107	\N
372	\N	107	110	\N
373	\N	111	110	\N
374	\N	110	111	\N
375	\N	111	161	\N
376	\N	161	111	\N
377	\N	110	108	\N
378	\N	108	110	\N
379	\N	109	160	\N
380	\N	160	109	\N
381	\N	161	160	\N
382	\N	160	161	\N
387	\N	176	175	\N
388	\N	175	176	\N
389	\N	169	171	\N
390	\N	171	169	\N
391	\N	170	172	\N
392	\N	172	170	\N
393	\N	167	173	\N
394	\N	173	167	\N
395	\N	168	174	\N
396	\N	174	168	\N
397	\N	153	137	\N
398	\N	137	153	\N
399	\N	153	171	\N
400	\N	171	153	\N
401	\N	137	172	\N
402	\N	172	137	\N
403	\N	172	153	\N
404	\N	153	172	\N
413	\N	172	173	\N
414	\N	173	172	\N
415	\N	173	174	\N
416	\N	174	173	\N
417	\N	182	181	\N
418	\N	181	182	\N
419	\N	181	180	\N
420	\N	180	181	\N
421	\N	180	177	\N
422	\N	177	180	\N
423	\N	180	178	\N
424	\N	178	180	\N
425	\N	180	179	\N
426	\N	179	180	\N
429	\N	143	183	\N
430	\N	183	143	\N
431	\N	183	182	\N
432	\N	182	183	\N
433	\N	144	183	\N
434	\N	183	144	\N
437	\N	99	121	\N
438	\N	121	99	\N
439	\N	99	114	\N
440	\N	114	99	\N
441	\N	121	114	\N
442	\N	114	121	\N
443	\N	109	185	\N
444	\N	185	109	\N
445	\N	186	160	\N
446	\N	160	186	\N
453	\N	76	85	2
454	\N	85	76	2
455	\N	58	187	1
456	\N	187	58	1
457	\N	85	187	\N
458	\N	187	85	\N
461	\N	90	120	1
462	\N	120	90	1
465	\N	202	201	\N
466	\N	201	202	\N
467	\N	201	200	1
468	\N	200	201	1
469	\N	200	199	1
470	\N	199	200	1
471	\N	199	198	1
472	\N	198	199	1
473	\N	198	197	\N
474	\N	197	198	\N
475	\N	197	196	\N
476	\N	196	197	\N
477	\N	196	195	\N
478	\N	195	196	\N
479	\N	195	194	1
480	\N	194	195	1
481	\N	194	193	1
482	\N	193	194	1
485	\N	189	190	\N
486	\N	190	189	\N
487	\N	190	191	\N
488	\N	191	190	\N
489	\N	191	193	\N
490	\N	193	191	\N
493	\N	203	207	\N
494	\N	207	203	\N
495	\N	207	205	\N
496	\N	205	207	\N
497	\N	68	205	\N
498	\N	205	68	\N
499	\N	205	142	\N
500	\N	142	205	\N
501	\N	142	206	\N
502	\N	206	142	\N
505	\N	207	88	\N
506	\N	88	207	\N
135	\N	50	51	\N
136	\N	51	50	\N
507	\N	49	50	2
508	\N	50	49	2
513	\N	171	216	\N
514	\N	216	171	\N
515	\N	216	175	\N
516	\N	175	216	\N
517	\N	175	211	\N
518	\N	211	175	\N
519	\N	211	215	\N
520	\N	215	211	\N
521	\N	215	213	\N
522	\N	213	215	\N
523	\N	213	172	\N
524	\N	172	213	\N
525	\N	211	212	\N
526	\N	212	211	\N
527	\N	212	214	\N
528	\N	214	212	\N
529	\N	214	213	\N
530	\N	213	214	\N
531	\N	214	174	\N
532	\N	174	214	\N
533	\N	172	216	\N
534	\N	216	172	\N
535	\N	157	215	\N
536	\N	215	157	\N
537	\N	209	215	\N
538	\N	215	209	\N
539	\N	212	218	\N
540	\N	218	212	\N
541	\N	211	217	\N
542	\N	217	211	\N
543	\N	217	212	\N
544	\N	212	217	\N
545	\N	163	146	\N
546	\N	146	163	\N
551	\N	209	208	2
552	\N	208	209	2
563	\N	219	145	\N
564	\N	145	219	\N
569	\N	208	160	\N
570	\N	160	208	\N
571	\N	208	219	2
572	\N	219	208	2
573	\N	209	219	2
574	\N	219	209	2
575	\N	220	22	\N
576	\N	22	220	\N
577	\N	220	19	2
578	\N	19	220	2
579	\N	220	90	2
580	\N	90	220	2
66	\N	26	19	\N
65	\N	19	26	\N
581	\N	222	161	\N
582	\N	161	222	\N
583	\N	222	157	2
584	\N	157	222	2
585	\N	163	157	2
586	\N	157	163	2
587	\N	163	222	2
588	\N	222	163	2
591	\N	48	223	\N
592	\N	223	48	\N
593	\N	43	223	\N
594	\N	223	43	\N
595	\N	206	232	\N
596	\N	232	206	\N
597	\N	232	231	\N
598	\N	231	232	\N
599	\N	231	230	\N
600	\N	230	231	\N
601	\N	230	233	\N
602	\N	233	230	\N
603	\N	190	233	\N
604	\N	233	190	\N
605	\N	190	226	\N
606	\N	226	190	\N
607	\N	226	227	\N
608	\N	227	226	\N
609	\N	227	228	\N
610	\N	228	227	\N
611	\N	228	229	\N
612	\N	229	228	\N
613	\N	229	224	2
614	\N	224	229	2
615	\N	223	225	\N
616	\N	225	223	\N
617	\N	224	225	\N
618	\N	225	224	\N
643	\N	252	253	\N
644	\N	253	252	\N
645	\N	253	254	\N
646	\N	254	253	\N
647	\N	254	255	\N
648	\N	255	254	\N
649	\N	255	256	\N
650	\N	256	255	\N
651	\N	257	256	\N
652	\N	256	257	\N
653	\N	258	256	\N
654	\N	256	258	\N
655	\N	259	256	\N
656	\N	256	259	\N
657	\N	260	255	\N
658	\N	255	260	\N
659	\N	261	262	\N
660	\N	262	261	\N
661	\N	262	263	\N
662	\N	263	262	\N
663	\N	254	263	\N
664	\N	263	254	\N
665	\N	252	250	\N
666	\N	250	252	\N
667	\N	253	251	\N
668	\N	251	253	\N
671	\N	220	260	2
672	\N	260	220	2
673	\N	266	123	\N
674	\N	123	266	\N
675	\N	266	264	1
676	\N	264	266	1
677	\N	264	265	1
678	\N	265	264	1
679	\N	261	265	1
680	\N	265	261	1
\.


--
-- Data for Name: mapdata_graphnode; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_graphnode (id, geometry, space_id, import_tag) FROM stdin;
7	{"type": "Point", "coordinates": [268.0, 198.79]}	71	\N
8	{"type": "Point", "coordinates": [269.65, 198.79]}	71	\N
14	{"type": "Point", "coordinates": [271.42, 193.34]}	75	\N
16	{"type": "Point", "coordinates": [268.09, 198.69]}	78	\N
17	{"type": "Point", "coordinates": [269.61, 198.69]}	78	\N
18	{"type": "Point", "coordinates": [268.2, 193.38]}	79	\N
19	{"type": "Point", "coordinates": [271.51, 204.39]}	75	\N
22	{"type": "Point", "coordinates": [271.33, 204.55]}	52	\N
23	{"type": "Point", "coordinates": [268.14, 196.22]}	78	\N
24	{"type": "Point", "coordinates": [269.69, 195.27]}	78	\N
25	{"type": "Point", "coordinates": [269.74, 193.86]}	52	\N
26	{"type": "Point", "coordinates": [269.01, 204.52]}	76	\N
28	{"type": "Point", "coordinates": [273.68, 179.73]}	75	\N
29	{"type": "Point", "coordinates": [273.64, 179.03]}	35	\N
31	{"type": "Point", "coordinates": [343.36, 201.92]}	84	\N
32	{"type": "Point", "coordinates": [339.12, 201.89]}	83	\N
33	{"type": "Point", "coordinates": [339.09, 206.9]}	83	\N
34	{"type": "Point", "coordinates": [340.21, 196.98]}	45	\N
35	{"type": "Point", "coordinates": [342.65, 196.99]}	45	\N
36	{"type": "Point", "coordinates": [343.63, 193.3]}	45	\N
37	{"type": "Point", "coordinates": [423.11, 196.75]}	45	\N
38	{"type": "Point", "coordinates": [425.57, 196.71]}	45	\N
39	{"type": "Point", "coordinates": [423.1, 197.66]}	39	\N
40	{"type": "Point", "coordinates": [425.54, 197.61]}	39	\N
41	{"type": "Point", "coordinates": [340.2, 197.53]}	46	\N
42	{"type": "Point", "coordinates": [342.64, 197.51]}	46	\N
43	{"type": "Point", "coordinates": [424.55, 193.06]}	45	\N
44	{"type": "Point", "coordinates": [339.18, 206.82]}	86	\N
45	{"type": "Point", "coordinates": [339.21, 203.19]}	64	\N
46	{"type": "Point", "coordinates": [343.34, 206.84]}	84	\N
30	{"type": "Point", "coordinates": [346.93, 206.89]}	46	\N
47	{"type": "Point", "coordinates": [350.08, 189.87]}	45	\N
48	{"type": "Point", "coordinates": [350.12, 193.27]}	45	\N
49	{"type": "Point", "coordinates": [347.38, 189.84]}	88	\N
50	{"type": "Point", "coordinates": [347.37, 189.81]}	50	\N
51	{"type": "Point", "coordinates": [350.12, 189.91]}	49	\N
52	{"type": "Point", "coordinates": [350.08, 193.43]}	49	\N
53	{"type": "Point", "coordinates": [340.63, 193.43]}	49	\N
54	{"type": "Point", "coordinates": [341.04, 199.69]}	49	\N
55	{"type": "Point", "coordinates": [344.57, 199.69]}	47	\N
58	{"type": "Point", "coordinates": [274.98, 142.64]}	95	\N
60	{"type": "Point", "coordinates": [272.95, 142.34]}	95	\N
61	{"type": "Point", "coordinates": [273.1, 140.53]}	96	\N
64	{"type": "Point", "coordinates": [276.94, 121.61]}	92	\N
65	{"type": "Point", "coordinates": [275.01, 121.37]}	91	\N
66	{"type": "Point", "coordinates": [276.52, 119.82]}	90	\N
67	{"type": "Point", "coordinates": [277.64, 119.94]}	89	\N
68	{"type": "Point", "coordinates": [274.93, 144.38]}	61	\N
69	{"type": "Point", "coordinates": [268.85, 156.86]}	14	\N
70	{"type": "Point", "coordinates": [268.96, 150.0]}	97	\N
71	{"type": "Point", "coordinates": [272.17, 149.89]}	97	\N
72	{"type": "Point", "coordinates": [273.0, 142.2]}	97	\N
73	{"type": "Point", "coordinates": [275.37, 142.31]}	97	\N
74	{"type": "Point", "coordinates": [276.04, 137.0]}	98	\N
75	{"type": "Point", "coordinates": [277.81, 137.11]}	98	\N
76	{"type": "Point", "coordinates": [273.1, 140.15]}	100	\N
77	{"type": "Point", "coordinates": [277.12, 142.84]}	95	\N
78	{"type": "Point", "coordinates": [279.29, 136.82]}	94	\N
79	{"type": "Point", "coordinates": [280.18, 127.07]}	94	\N
80	{"type": "Point", "coordinates": [272.0, 136.02]}	93	\N
81	{"type": "Point", "coordinates": [273.13, 124.11]}	93	\N
82	{"type": "Point", "coordinates": [278.37, 136.7]}	92	\N
83	{"type": "Point", "coordinates": [279.32, 127.01]}	92	\N
84	{"type": "Point", "coordinates": [277.25, 124.28]}	92	\N
85	{"type": "Point", "coordinates": [275.61, 136.54]}	92	\N
86	{"type": "Point", "coordinates": [266.22, 135.88]}	93	\N
87	{"type": "Point", "coordinates": [262.97, 135.65]}	93	\N
88	{"type": "Point", "coordinates": [262.61, 139.88]}	61	\N
89	{"type": "Point", "coordinates": [266.01, 140.12]}	61	\N
91	{"type": "Point", "coordinates": [272.81, 204.74]}	33	\N
92	{"type": "Point", "coordinates": [265.56, 206.42]}	58	\N
93	{"type": "Point", "coordinates": [265.81, 202.38]}	58	\N
94	{"type": "Point", "coordinates": [263.41, 206.55]}	56	\N
95	{"type": "Point", "coordinates": [265.53, 207.35]}	57	\N
96	{"type": "Point", "coordinates": [267.4, 206.45]}	40	\N
97	{"type": "Point", "coordinates": [251.24, 201.56]}	58	\N
98	{"type": "Point", "coordinates": [251.27, 200.21]}	30	\N
99	{"type": "Point", "coordinates": [269.35, 222.9]}	36	\N
100	{"type": "Point", "coordinates": [269.32, 224.24]}	32	\N
101	{"type": "Point", "coordinates": [268.05, 224.27]}	32	\N
102	{"type": "Point", "coordinates": [263.94, 224.3]}	32	\N
103	{"type": "Point", "coordinates": [261.46, 224.33]}	32	\N
104	{"type": "Point", "coordinates": [261.4, 225.6]}	54	\N
105	{"type": "Point", "coordinates": [263.94, 225.6]}	55	\N
106	{"type": "Point", "coordinates": [268.02, 225.63]}	42	\N
107	{"type": "Point", "coordinates": [273.6, 224.2]}	31	\N
108	{"type": "Point", "coordinates": [273.47, 231.17]}	31	\N
109	{"type": "Point", "coordinates": [273.47, 233.06]}	31	\N
110	{"type": "Point", "coordinates": [278.34, 224.14]}	31	\N
111	{"type": "Point", "coordinates": [280.29, 224.11]}	31	\N
112	{"type": "Point", "coordinates": [278.33, 221.85]}	33	\N
113	{"type": "Point", "coordinates": [280.22, 221.8]}	33	\N
114	{"type": "Point", "coordinates": [237.61, 212.28]}	36	\N
115	{"type": "Point", "coordinates": [237.64, 211.32]}	58	\N
116	{"type": "Point", "coordinates": [237.83, 201.97]}	58	\N
117	{"type": "Point", "coordinates": [269.23, 202.28]}	58	\N
118	{"type": "Point", "coordinates": [269.63, 202.31]}	59	\N
119	{"type": "Point", "coordinates": [271.46, 202.31]}	59	\N
120	{"type": "Point", "coordinates": [271.49, 211.57]}	59	\N
121	{"type": "Point", "coordinates": [271.46, 212.19]}	36	\N
122	{"type": "Point", "coordinates": [271.48, 193.49]}	59	\N
123	{"type": "Point", "coordinates": [269.69, 193.46]}	59	\N
124	{"type": "Point", "coordinates": [267.96, 193.74]}	52	\N
125	{"type": "Point", "coordinates": [271.37, 193.6]}	52	\N
126	{"type": "Point", "coordinates": [271.51, 187.46]}	52	\N
127	{"type": "Point", "coordinates": [273.49, 187.36]}	20	\N
128	{"type": "Point", "coordinates": [273.6, 178.85]}	14	\N
129	{"type": "Point", "coordinates": [273.81, 202.63]}	20	\N
130	{"type": "Point", "coordinates": [276.47, 203.2]}	20	\N
131	{"type": "Point", "coordinates": [276.51, 205.08]}	20	\N
132	{"type": "Point", "coordinates": [275.82, 205.67]}	20	\N
133	{"type": "Point", "coordinates": [275.82, 206.59]}	19	\N
134	{"type": "Point", "coordinates": [277.91, 205.08]}	16	\N
135	{"type": "Point", "coordinates": [277.99, 203.28]}	17	\N
136	{"type": "Point", "coordinates": [273.67, 222.93]}	20	\N
137	{"type": "Point", "coordinates": [273.68, 223.43]}	22	\N
138	{"type": "Point", "coordinates": [273.74, 172.26]}	14	\N
90	{"type": "Point", "coordinates": [271.46, 204.74]}	59	\N
139	{"type": "Point", "coordinates": [271.63, 186.67]}	75	\N
140	{"type": "Point", "coordinates": [273.53, 186.63]}	75	\N
141	{"type": "Point", "coordinates": [279.05, 204.74]}	33	\N
142	{"type": "Point", "coordinates": [273.54, 193.55]}	61	\N
143	{"type": "Point", "coordinates": [273.56, 233.13]}	105	\N
144	{"type": "Point", "coordinates": [273.61, 200.93]}	105	\N
145	{"type": "Point", "coordinates": [283.08, 233.07]}	105	\N
146	{"type": "Point", "coordinates": [283.12, 231.17]}	105	\N
147	{"type": "Point", "coordinates": [268.5, 231.14]}	101	\N
148	{"type": "Point", "coordinates": [268.5, 233.12]}	101	\N
149	{"type": "Point", "coordinates": [268.22, 231.1]}	103	\N
150	{"type": "Point", "coordinates": [268.19, 233.13]}	103	\N
151	{"type": "Point", "coordinates": [268.47, 231.1]}	107	\N
152	{"type": "Point", "coordinates": [268.44, 233.13]}	107	\N
153	{"type": "Point", "coordinates": [273.56, 231.16]}	22	\N
154	{"type": "Point", "coordinates": [273.16, 233.09]}	104	\N
155	{"type": "Point", "coordinates": [273.16, 231.08]}	104	\N
157	{"type": "Point", "coordinates": [284.93, 231.02]}	109	\N
160	{"type": "Point", "coordinates": [283.07, 233.11]}	31	\N
161	{"type": "Point", "coordinates": [283.13, 231.17]}	31	\N
163	{"type": "Point", "coordinates": [284.84, 231.08]}	113	\N
167	{"type": "Point", "coordinates": [305.62, 222.48]}	27	\N
168	{"type": "Point", "coordinates": [305.77, 230.46]}	26	\N
169	{"type": "Point", "coordinates": [275.8, 234.32]}	25	\N
170	{"type": "Point", "coordinates": [281.66, 222.42]}	24	\N
171	{"type": "Point", "coordinates": [275.8, 232.85]}	22	\N
172	{"type": "Point", "coordinates": [281.69, 224.75]}	22	\N
173	{"type": "Point", "coordinates": [305.59, 224.57]}	22	\N
174	{"type": "Point", "coordinates": [305.89, 228.93]}	22	\N
175	{"type": "Point", "coordinates": [282.31, 239.23]}	22	\N
176	{"type": "Point", "coordinates": [282.31, 240.68]}	43	\N
177	{"type": "Point", "coordinates": [263.59, 206.51]}	114	\N
178	{"type": "Point", "coordinates": [265.58, 207.35]}	115	\N
179	{"type": "Point", "coordinates": [267.32, 206.52]}	116	\N
180	{"type": "Point", "coordinates": [265.59, 206.55]}	117	\N
181	{"type": "Point", "coordinates": [265.67, 202.45]}	117	\N
182	{"type": "Point", "coordinates": [271.51, 202.31]}	117	\N
183	{"type": "Point", "coordinates": [273.62, 202.29]}	105	\N
185	{"type": "Point", "coordinates": [273.64, 234.85]}	29	\N
186	{"type": "Point", "coordinates": [283.07, 234.95]}	29	\N
187	{"type": "Point", "coordinates": [275.56, 138.91]}	95	\N
189	{"type": "Point", "coordinates": [420.51, 199.65]}	48	\N
190	{"type": "Point", "coordinates": [424.05, 199.62]}	135	\N
191	{"type": "Point", "coordinates": [424.09, 201.94]}	134	\N
193	{"type": "Point", "coordinates": [426.26, 203.63]}	136	\N
194	{"type": "Point", "coordinates": [426.28, 207.17]}	136	\N
195	{"type": "Point", "coordinates": [423.67, 207.15]}	136	\N
196	{"type": "Point", "coordinates": [422.13, 207.09]}	137	\N
197	{"type": "Point", "coordinates": [422.22, 201.92]}	137	\N
198	{"type": "Point", "coordinates": [422.64, 201.86]}	138	\N
199	{"type": "Point", "coordinates": [426.23, 201.88]}	138	\N
200	{"type": "Point", "coordinates": [426.25, 206.9]}	138	\N
201	{"type": "Point", "coordinates": [422.63, 206.8]}	138	\N
202	{"type": "Point", "coordinates": [422.01, 206.78]}	39	\N
203	{"type": "Point", "coordinates": [241.48, 129.06]}	61	\N
205	{"type": "Point", "coordinates": [274.26, 166.82]}	61	\N
206	{"type": "Point", "coordinates": [303.64, 193.56]}	61	\N
207	{"type": "Point", "coordinates": [252.06, 145.94]}	61	\N
208	{"type": "Point", "coordinates": [284.96, 233.01]}	4	\N
209	{"type": "Point", "coordinates": [284.91, 233.08]}	108	\N
211	{"type": "Point", "coordinates": [287.64, 234.7]}	22	\N
212	{"type": "Point", "coordinates": [300.35, 234.68]}	22	\N
213	{"type": "Point", "coordinates": [287.69, 229.54]}	22	\N
214	{"type": "Point", "coordinates": [300.54, 229.65]}	22	\N
215	{"type": "Point", "coordinates": [287.66, 232.11]}	22	\N
216	{"type": "Point", "coordinates": [282.2, 233.36]}	22	\N
217	{"type": "Point", "coordinates": [293.06, 239.65]}	22	\N
218	{"type": "Point", "coordinates": [300.84, 239.76]}	22	\N
219	{"type": "Point", "coordinates": [284.88, 233.21]}	112	\N
220	{"type": "Point", "coordinates": [269.01, 204.8]}	142	\N
222	{"type": "Point", "coordinates": [284.76, 231.21]}	5	\N
223	{"type": "Point", "coordinates": [413.07, 193.08]}	45	\N
224	{"type": "Point", "coordinates": [413.15, 188.09]}	151	\N
225	{"type": "Point", "coordinates": [413.14, 190.41]}	45	\N
226	{"type": "Point", "coordinates": [424.06, 193.6]}	135	\N
227	{"type": "Point", "coordinates": [413.06, 193.15]}	135	\N
228	{"type": "Point", "coordinates": [413.14, 190.08]}	135	\N
229	{"type": "Point", "coordinates": [413.14, 187.75]}	150	\N
230	{"type": "Point", "coordinates": [428.36, 177.65]}	61	\N
231	{"type": "Point", "coordinates": [340.77, 177.97]}	61	\N
232	{"type": "Point", "coordinates": [325.7, 184.16]}	61	\N
233	{"type": "Point", "coordinates": [428.37, 199.69]}	61	\N
250	{"type": "Point", "coordinates": [224.42, 200.55]}	161	\N
251	{"type": "Point", "coordinates": [231.65, 200.62]}	161	\N
252	{"type": "Point", "coordinates": [224.36, 202.41]}	171	\N
253	{"type": "Point", "coordinates": [231.61, 202.36]}	171	\N
254	{"type": "Point", "coordinates": [265.53, 202.53]}	171	\N
255	{"type": "Point", "coordinates": [265.53, 204.58]}	171	\N
256	{"type": "Point", "coordinates": [265.51, 206.2]}	171	\N
257	{"type": "Point", "coordinates": [263.34, 206.6]}	173	\N
258	{"type": "Point", "coordinates": [265.51, 207.47]}	174	\N
259	{"type": "Point", "coordinates": [267.73, 206.65]}	175	\N
260	{"type": "Point", "coordinates": [267.85, 204.7]}	176	\N
261	{"type": "Point", "coordinates": [269.67, 193.66]}	172	\N
262	{"type": "Point", "coordinates": [271.44, 193.63]}	172	\N
263	{"type": "Point", "coordinates": [271.37, 202.18]}	172	\N
264	{"type": "Point", "coordinates": [267.98, 198.49]}	177	\N
265	{"type": "Point", "coordinates": [269.65, 198.48]}	177	\N
266	{"type": "Point", "coordinates": [268.03, 193.47]}	59	\N
\.


--
-- Data for Name: mapdata_groundaltitude; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_groundaltitude (id, name, altitude) FROM stdin;
1	a1-1	-5.00
2	parking-1	-3.45
4	a1-1parking to corridor	-3.60
5	a-1WCs	-4.10
6	a-1corridorsem3	-4.50
7	a1-2	-6.21
8	a2floor1	3.87
9	a2floor2	9.05
10	a4ground floor	1.00
11	A4mezzanine-1	-2.00
12	a1f1	4.60
13	a1f2	9.25
3	outside ground floor	0.00
14	a1 ground floor	0.60
\.


--
-- Data for Name: mapdata_hole; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_hole (id, geometry, space_id, import_tag) FROM stdin;
4	{"type": "Polygon", "coordinates": [[[363.92, 158.06], [364.46, 152.22], [354.19, 151.27], [343.89, 151.17], [343.92, 157.08], [353.97, 157.05], [363.92, 158.06]]]}	60	\N
5	{"type": "Polygon", "coordinates": [[[342.74, 206.19], [342.74, 202.61], [339.69, 202.61], [339.69, 206.19], [342.74, 206.19]]]}	84	\N
6	{"type": "Polygon", "coordinates": [[[338.62, 202.49], [338.62, 207.6], [342.8, 207.6], [342.8, 205.38], [343.57, 205.38], [343.57, 203.28], [342.82, 203.28], [342.82, 202.52], [338.62, 202.49]]]}	87	\N
8	{"type": "Polygon", "coordinates": [[[272.74, 232.17], [268.76, 232.17], [268.76, 233.94], [272.75, 233.94], [272.74, 232.17]]]}	102	\N
7	{"type": "Polygon", "coordinates": [[[276.65, 142.16], [277.04, 137.98], [278.01, 138.07], [277.6, 142.23], [276.65, 142.16]]]}	95	\N
10	{"type": "Polygon", "coordinates": [[[422.62, 206.17], [422.62, 202.6], [425.57, 202.6], [425.57, 206.17], [422.62, 206.17]]]}	137	\N
11	{"type": "Polygon", "coordinates": [[[422.85, 207.52], [422.82, 205.37], [422.08, 205.35], [422.1, 203.22], [422.8, 203.16], [422.86, 202.42], [427.08, 202.42], [427.08, 207.54], [422.85, 207.52]]]}	139	\N
13	{"type": "Polygon", "coordinates": [[[269.0, 194.28], [270.27, 194.28], [270.27, 198.24], [269.01, 198.24], [269.0, 194.28]]]}	181	\N
\.


--
-- Data for Name: mapdata_labelsettings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_labelsettings (id, titles, min_zoom, max_zoom, font_size) FROM stdin;
1	{"en": "Conference Rooms"}	-10.0	10.0	15
2	{"en": "Campus main directions"}	-10.0	10.0	22
3	{"en": "Utilities"}	-10.0	10.0	12
\.


--
-- Data for Name: mapdata_leavedescription; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_leavedescription (id, descriptions, space_id, target_space_id) FROM stdin;
\.


--
-- Data for Name: mapdata_level; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_level (locationslug_ptr_id, titles, can_search, can_describe, base_altitude, default_height, door_height, short_label, access_restriction_id, on_top_of_id, icon, label_overrides, label_settings_id, external_url, import_block_data, import_block_geom, intermediate, level_index, load_group_display_id) FROM stdin;
34	{"en": "Floor -2"}	t	t	-6.21	2.45	2.00	floor-2	\N	\N	\N	{}	\N	\N	f	f	f	floor-2	\N
10	{"en": "Floor -1"}	t	t	-5.00	5.00	2.00	floor-1	\N	\N	\N	{}	2	\N	f	f	f	floor-1	\N
77	{"en": "Floor -2 to -1"}	f	t	-4.90	3.00	2.00	floor-2to-1	\N	34	\N	{}	\N	\N	f	f	f	floor-2to-1	\N
11	{"en": "Floor -1 to 0"}	f	f	-3.00	3.00	2.00	floor-1to0	\N	10	\N	{}	\N	\N	f	f	f	floor-1to0	\N
2	{"en": "Ground Floor"}	f	t	0.00	4.00	3.00	floor0	\N	\N	\N	{}	\N	\N	f	f	f	floor0	\N
85	{"en": "Floor 0 to 1"}	f	f	2.10	3.00	2.00	floor0to1	\N	2	\N	{}	\N	\N	f	f	f	floor0to1	\N
37	{"en": "Floor 1"}	t	t	5.00	3.25	2.00	floor1	\N	\N	\N	{}	\N	\N	f	f	f	floor1	\N
82	{"en": "Floor 1 to 2"}	f	f	6.75	3.00	2.00	floor1to2	\N	37	\N	{}	\N	\N	f	f	f	floor1to2	\N
38	{"en": "Floor 2"}	t	t	8.75	3.70	2.00	floor2	\N	\N	\N	{}	\N	\N	f	f	f	floor2	\N
\.


--
-- Data for Name: mapdata_level_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_level_groups (id, level_id, locationgroup_id) FROM stdin;
\.


--
-- Data for Name: mapdata_lineobstacle; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_lineobstacle (id, geometry, width, height, space_id, import_tag, altitude, group_id) FROM stdin;
1	{"type": "LineString", "coordinates": [[283.72, 222.2], [283.72, 194.36]]}	0.60	1.20	33	\N	0.00	\N
2	{"type": "LineString", "coordinates": [[275.06, 219.93], [275.06, 205.44]]}	0.15	0.60	33	\N	0.00	\N
9	{"type": "LineString", "coordinates": [[297.25, 181.94], [299.69, 175.13], [301.81, 175.19], [301.81, 172.56], [299.13, 172.44], [296.69, 168.81], [302, 168.88], [302, 164.94], [295.5, 164.94], [297.31, 162.19], [301.88, 162.19], [301.88, 158.93], [296.37, 158.93], [295.38, 157.13], [299.38, 157.13], [299.75, 153.13], [337.44, 153.13], [341.69, 151.06], [343.44, 150.94], [343.44, 157.44], [364.06, 158.5], [367.5, 158.75], [367.5, 175.38], [340.44, 175.38], [321.88, 181.88], [297.25, 181.94]]}	0.15	0.80	61	\N	0.00	\N
5	{"type": "LineString", "coordinates": [[233.53, 179.22], [241.07, 179.22], [241.07, 153.74], [240.05, 153.74], [240.05, 152.83], [240.39, 152.83], [240.39, 152.4], [240.2, 152.07], [239.98, 151.85], [239.71, 151.85], [234.88, 151.85], [234.64, 151.99], [234.52, 152.14], [234.44, 152.36], [234.4, 152.47], [234.4, 152.72], [234.71, 152.72], [234.71, 153.75], [233.66, 153.75], [233.53, 179.22]]}	0.25	0.20	61	\N	0.00	\N
7	{"type": "LineString", "coordinates": [[214.81, 182.53], [231.45, 182.53], [231.45, 152.6], [227.06, 152.6], [223.57, 153.91], [221.01, 155.37], [218.6, 157.42], [216.78, 159.9], [215.03, 163.11], [214.81, 182.53]]}	0.15	0.80	61	\N	0.00	\N
8	{"type": "LineString", "coordinates": [[243.36, 152.6], [243.36, 182.24], [259.35, 182.24], [259.35, 160.99], [258.91, 158.59], [257.89, 156.4], [256.57, 155.23], [254.67, 153.84], [252.04, 152.6], [243.36, 152.6]]}	0.15	0.80	61	\N	0.00	\N
\.


--
-- Data for Name: mapdata_loadgroup; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_loadgroup (id, name) FROM stdin;
\.


--
-- Data for Name: mapdata_locationgroup; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_locationgroup (locationslug_ptr_id, titles, can_search, can_describe, priority, color, access_restriction_id, category_id, icon, hierarchy, label_settings_id, hub_import_type, descriptions, can_report_missing, report_help_texts, in_legend, can_report_mistake, external_url, external_url_labels, load_group_contribute_id) FROM stdin;
120	{"en": "Checkin area (speakers)"}	f	f	0	\N	\N	1	\N	0	\N	\N	{}	dont_offer	{}	f	allow	\N	{}	\N
119	{"en": "Checkin area"}	f	f	0	\N	\N	1	\N	0	2	\N	{}	dont_offer	{}	f	allow	\N	{}	\N
28	{"en": "Hackathon Space"}	t	t	1	#e3e6ab	\N	2	\N	0	\N	\N	{}	dont_offer	{}	t	allow	\N	{}	\N
13	{"en": "Car Park"}	t	t	0	\N	\N	2	local_parking	0	\N	\N	{}	dont_offer	{}	f	allow	\N	{}	\N
7	{"en": "WC for Men"}	t	t	0	\N	\N	4	\N	0	\N	\N	{}	dont_offer	{}	f	allow	\N	{}	\N
18	{"en": "Barrier Free WC"}	t	t	0	\N	\N	4	\N	0	\N	\N	{}	dont_offer	{}	f	allow	\N	{}	\N
8	{"en": "WC for Women"}	t	t	0	\N	\N	4	\N	0	\N	\N	{}	dont_offer	{}	f	allow	\N	{}	\N
62	{"en": "Water"}	f	f	1	#e5e4e5	\N	3	\N	1	\N	\N	{}	dont_offer	{}	f	allow	\N	{}	\N
133	{"en": "Wardrobe"}	f	f	0	#dcc6e0	\N	3	\N	1	\N	\N	{}	dont_offer	{}	f	allow	\N	{}	\N
23	{"en": "Conference Room"}	t	t	2	\N	\N	2	\N	1	1	\N	{}	dont_offer	{}	f	allow	\N	{}	\N
21	{"en": "Conference area"}	f	f	0	#d0e8fa	\N	3	\N	0	\N	\N	{}	dont_offer	{}	t	allow	\N	{}	\N
144	{"en": "Car Park Payment Machine"}	t	f	0	\N	\N	5	payments	0	3	\N	{}	dont_offer	{}	f	allow	\N	{}	\N
148	{"en": "ATM"}	t	f	0	\N	\N	5	credit_card	0	3	\N	{}	dont_offer	{}	f	allow	\N	{}	\N
3	{"en": "Elevator"}	t	t	0	#f194bd	\N	2	elevator	0	\N	\N	{}	dont_offer	{}	t	allow	\N	{}	\N
9	{"en": "WC"}	f	f	0	#6fb2e3	\N	3	\N	0	\N	\N	{}	dont_offer	{}	f	allow	\N	{}	\N
65	{"en": "Green Area"}	f	f	0	#87bf58	\N	3	\N	0	\N	\N	{}	dont_offer	{}	f	allow	\N	{}	\N
66	{"en": "Bike Parking"}	t	t	0	#51b36e	\N	1	pedal_bike	0	\N	\N	{}	dont_offer	{}	t	allow	\N	{}	\N
123	{"en": "Food and Beverage"}	t	t	0	#fed168	\N	3	emoji_food_beverage	0	\N	\N	{}	dont_offer	{}	t	allow	\N	{}	\N
169	{"en": "Good to know"}	f	f	0	#ff6f61	\N	3	\N	0	\N	\N	{}	dont_offer	{}	f	allow	\N	{}	\N
\.


--
-- Data for Name: mapdata_locationgroupcategory; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_locationgroupcategory (id, name, single, titles, titles_plural, allow_levels, allow_spaces, allow_areas, allow_pois, priority, help_texts, allow_dynamic_locations) FROM stdin;
1	areatype	t	{"en": "Area Type"}	{"en": "Area Types"}	f	f	t	f	11	{"en": "Choose an area type"}	f
2	spacetype	t	{"en": "Space Type"}	{"en": "Space Types"}	f	t	f	f	10	{"en": "Choose a space type"}	f
3	colors	t	{"en": "Color Group"}	{"en": "Colors Group"}	f	t	t	t	-1	{"en": "Choose a color group"}	t
4	wc	f	{"en": "WC Group"}	{"en": "WC Groups"}	f	t	f	f	0	{"en": "Choose a WC Group"}	f
5	poitype	f	{"en": "POI type"}	{"en": "POI types"}	f	f	f	t	0	{"en": "Choose a POI Type"}	f
\.


--
-- Data for Name: mapdata_locationredirect; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_locationredirect (locationslug_ptr_id, target_id) FROM stdin;
\.


--
-- Data for Name: mapdata_locationslug; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_locationslug (id, slug) FROM stdin;
11	floor-1to0
14	car-park--1
16	a1-wc--1
17	a1-wc--1w
19	a1-wc--1bf
31	main-lobby
32	corridor-main-lobby-kranhalle
37	floor1
38	floor2
42	a1-wc-0m2
43	a1-wc--12
44	noi-techpark-infodesk
47	a2f0wc
51	theather
54	a1f0wcbf
55	a1f0wcw
56	a1f0wcw2
57	a1f0wcbf2
58	a1f0corridor
63	pool
94	a4noisteriarest
93	a4noisteriabar
69	\N
68	\N
70	\N
117	a1f2corridorstartup
73	\N
33	main-entrance
49	a2f0corridor
74	\N
34	floor-2
127	alumix
77	floor-2to-1
128	alumix-restaurant
89	a4wcmen
75	corridor-car-park--2
91	a4wcbf
79	a2f-2sd
90	a4wcwomen
13	car-park
97	a4toparking
98	a4mezzanine
95	a4entrance
52	corridor-car-park--1-park-1
7	wc-for-men
78	a1stairsd-2-1
71	\N
20	corridor-car-park--1-foyer
18	wc-barrier-free
41	elev0
101	a1stairsb-10
102	a1stairwaybf0
35	car-park--2
80	car-ramp-2
81	car-ramp-1
60	car-access
82	floor1to2
103	a1stairsb01
64	a2f0stairseast
46	a2f2multimediacenter
86	a2stairwaybf0
87	a2stairwaybf2
104	a1f1corridor
105	a1f2corridor
107	a1stairsb12
8	wc-for-women
5	a1el2
109	a1f-1el2
111	a1f1el2
113	a1f2el2
40	a1-wc-0m
114	a1f2wcwomen
115	a1f2wcbf
116	a1f2wcmen
118	a1theathertopiazza
96	a4f0elev
62	water
92	a4corridor
99	a4stairs
133	\N
100	a4elevator-1
10	floor-1
67	bycicle-park1
120	\N
119	\N
28	hackathon-space
23	conference-room
21	\N
134	a2stairwayaf0
48	a2f0wc2
136	\N
137	\N
138	\N
83	a2stairwayb
84	a2stairwaybf1
139	\N
39	auditorium
30	makerspace
29	noise
50	a2f0elev
4	a1el1
110	a1f1el1
112	a1f2el1
108	a1f-1el1
85	floor0t01
76	\N
142	\N
2	0
145	\N
144	\N
148	\N
146	\N
147	\N
149	\N
61	piazza
72	\N
135	a2corridorwestf0
150	\N
151	\N
45	a2f2corridor
88	a2f1elev
172	a1f1corridorpark
106	presidentoffice
158	checkininfopoint
170	checkininfocranehall
180	boardroom
27	sem1
26	sem2
24	sem3
25	sem4
22	foyer
159	foodcourt
162	arenavisitorexperiencemeetingpoint
3	el
9	\N
65	greenarea
66	bicyclepark
123	fab
168	hackingvillage
36	kranhalle
169	goodtoknow
171	a1f1corridor2
173	a1f1wcw2
174	a1f1wcbf2
175	a1-wc-1m
176	elev0f1
59	a1f0corridorpark
161	trainingroom
177	a1f0std
179	entrancea2
181	a1f1std
164	bofs
165	b2b
166	chillout
167	workshop
121	checkin
157	infopoint
122	checkin-speakers
124	jobwall
163	booths
126	wardrobe
125	coffee-area
185	coffestationcranehall
160	speakersandsupporterslounge
\.


--
-- Data for Name: mapdata_mapupdate; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_mapupdate (id, datetime, type, processed, geometries_changed, user_id) FROM stdin;
210	2024-08-26 16:29:07.884+00	direct_edit	t	t	1
209	2024-08-26 16:28:00.699+00	direct_edit	t	t	1
211	2024-08-27 10:08:59.004972+00	management	t	f	\N
212	2024-08-27 10:09:19.465461+00	management	t	f	\N
213	2024-08-27 10:13:53.88039+00	direct_edit	t	f	1
214	2024-08-27 10:14:57.981204+00	direct_edit	t	f	1
215	2024-08-27 10:19:11.329148+00	direct_edit	t	t	1
217	2024-08-29 09:18:33.55282+00	control_panel	t	t	1
216	2024-08-29 09:13:55.910267+00	direct_edit	t	t	1
224	2024-08-29 09:26:25.481507+00	direct_edit	t	t	1
223	2024-08-29 09:25:13.004416+00	direct_edit	t	f	1
222	2024-08-29 09:25:05.815454+00	direct_edit	t	t	1
221	2024-08-29 09:24:38.776899+00	direct_edit	t	t	1
220	2024-08-29 09:24:04.990566+00	direct_edit	t	t	1
219	2024-08-29 09:23:11.100271+00	direct_edit	t	f	1
218	2024-08-29 09:21:00.436979+00	direct_edit	t	f	1
226	2024-08-29 09:28:42.264428+00	direct_edit	t	t	1
225	2024-08-29 09:28:04.595118+00	direct_edit	t	t	1
228	2024-08-29 09:30:34.905809+00	direct_edit	t	t	1
227	2024-08-29 09:29:52.750463+00	direct_edit	t	t	1
230	2024-08-29 09:33:17.930903+00	direct_edit	t	t	1
229	2024-08-29 09:32:58.921582+00	direct_edit	t	t	1
233	2024-08-29 09:35:39.654214+00	direct_edit	t	t	1
232	2024-08-29 09:35:16.548169+00	direct_edit	t	t	1
231	2024-08-29 09:34:20.803056+00	direct_edit	t	t	1
238	2024-08-29 09:39:04.878827+00	direct_edit	t	t	1
237	2024-08-29 09:38:39.870322+00	direct_edit	t	f	1
236	2024-08-29 09:38:14.712598+00	direct_edit	t	t	1
235	2024-08-29 09:37:48.887054+00	direct_edit	t	t	1
234	2024-08-29 09:37:25.335645+00	direct_edit	t	t	1
241	2024-08-29 09:41:22.091492+00	direct_edit	t	f	1
240	2024-08-29 09:41:09.392881+00	direct_edit	t	f	1
239	2024-08-29 09:40:47.681107+00	direct_edit	t	f	1
243	2024-08-29 09:43:06.952599+00	direct_edit	t	f	1
242	2024-08-29 09:42:42.579501+00	direct_edit	t	f	1
248	2024-08-29 09:50:43.687998+00	direct_edit	t	f	1
247	2024-08-29 09:49:54.703769+00	direct_edit	t	t	1
246	2024-08-29 09:45:51.81963+00	direct_edit	t	t	1
245	2024-08-29 09:45:43.221388+00	direct_edit	t	t	1
244	2024-08-29 09:44:03.545467+00	direct_edit	t	f	1
250	2024-08-29 09:52:50.042778+00	direct_edit	t	t	1
249	2024-08-29 09:52:07.250959+00	direct_edit	t	f	1
252	2024-08-29 09:56:04.807276+00	direct_edit	t	t	1
251	2024-08-29 09:55:11.149843+00	direct_edit	t	t	1
253	2024-08-29 09:58:45.59235+00	direct_edit	t	t	1
263	2024-08-29 10:10:13.499096+00	direct_edit	t	f	1
262	2024-08-29 10:09:58.138119+00	direct_edit	t	f	1
261	2024-08-29 10:09:50.15106+00	direct_edit	t	f	1
260	2024-08-29 10:09:28.440383+00	direct_edit	t	f	1
259	2024-08-29 10:08:52.800394+00	direct_edit	t	t	1
258	2024-08-29 10:03:57.066581+00	direct_edit	t	t	1
257	2024-08-29 10:03:33.10395+00	direct_edit	t	t	1
256	2024-08-29 10:03:16.565277+00	direct_edit	t	t	1
255	2024-08-29 10:02:57.69302+00	direct_edit	t	t	1
254	2024-08-29 10:02:38.237035+00	direct_edit	t	t	1
274	2024-08-29 10:25:28.979404+00	direct_edit	t	f	1
273	2024-08-29 10:25:22.62013+00	direct_edit	t	f	1
272	2024-08-29 10:24:57.442782+00	direct_edit	t	f	1
271	2024-08-29 10:24:50.46408+00	direct_edit	t	f	1
270	2024-08-29 10:24:11.962458+00	direct_edit	t	t	1
269	2024-08-29 10:23:46.154768+00	direct_edit	t	t	1
268	2024-08-29 10:23:38.376962+00	direct_edit	t	t	1
267	2024-08-29 10:23:25.265377+00	direct_edit	t	t	1
266	2024-08-29 10:23:09.084656+00	direct_edit	t	t	1
265	2024-08-29 10:23:04.380568+00	direct_edit	t	t	1
264	2024-08-29 10:22:53.13712+00	direct_edit	t	t	1
275	2024-08-29 10:28:18.446324+00	direct_edit	t	f	1
282	2024-08-29 10:49:43.078575+00	direct_edit	t	f	1
281	2024-08-29 10:49:37.142884+00	direct_edit	t	f	1
280	2024-08-29 10:49:31.622177+00	direct_edit	t	f	1
279	2024-08-29 10:49:23.006829+00	direct_edit	t	f	1
278	2024-08-29 10:49:16.448651+00	direct_edit	t	f	1
277	2024-08-29 10:49:08.6712+00	direct_edit	t	f	1
276	2024-08-29 10:48:39.777997+00	direct_edit	t	f	1
283	2024-08-29 10:51:13.586654+00	direct_edit	t	f	1
284	2024-08-29 10:54:27.127752+00	direct_edit	t	f	1
285	2024-09-04 14:17:36.439755+00	direct_edit	t	t	1
291	2024-09-06 07:49:06.147603+00	direct_edit	t	t	1
290	2024-09-06 07:48:02.455722+00	direct_edit	t	t	1
289	2024-09-06 07:47:54.260887+00	direct_edit	t	t	1
288	2024-09-06 07:47:45.454026+00	direct_edit	t	t	1
287	2024-09-06 07:47:33.783657+00	direct_edit	t	t	1
286	2024-09-06 07:47:16.576667+00	direct_edit	t	t	1
292	2024-09-06 07:50:25.234843+00	direct_edit	t	t	1
302	2024-09-06 15:28:30.847255+00	direct_edit	t	t	1
301	2024-09-06 15:27:17.120685+00	direct_edit	t	t	1
300	2024-09-06 15:27:07.071526+00	direct_edit	t	f	1
299	2024-09-06 15:26:38.412071+00	direct_edit	t	t	1
298	2024-09-06 15:26:20.069538+00	direct_edit	t	f	1
297	2024-09-06 15:25:42.704835+00	direct_edit	t	t	1
296	2024-09-06 15:25:12.19151+00	direct_edit	t	f	1
295	2024-09-06 15:25:01.734519+00	direct_edit	t	f	1
294	2024-09-06 15:23:15.453189+00	direct_edit	t	t	1
293	2024-09-06 15:23:07.672316+00	direct_edit	t	t	1
1451	2024-09-17 09:58:51.286769+00	direct_edit	t	t	1
1463	2024-09-24 10:04:34.216787+00	management	t	t	\N
343	2024-09-06 15:45:12.369938+00	direct_edit	t	t	1
342	2024-09-06 15:44:39.977339+00	direct_edit	t	t	1
341	2024-09-06 15:43:49.834548+00	direct_edit	t	t	1
340	2024-09-06 15:41:42.21649+00	direct_edit	t	f	1
339	2024-09-06 15:41:39.146591+00	direct_edit	t	f	1
338	2024-09-06 15:41:35.192818+00	direct_edit	t	f	1
337	2024-09-06 15:41:28.49275+00	direct_edit	t	f	1
336	2024-09-06 15:40:55.116517+00	direct_edit	t	f	1
335	2024-09-06 15:40:52.249014+00	direct_edit	t	f	1
334	2024-09-06 15:40:46.721944+00	direct_edit	t	f	1
333	2024-09-06 15:40:39.957981+00	direct_edit	t	f	1
332	2024-09-06 15:40:34.017518+00	direct_edit	t	f	1
331	2024-09-06 15:40:29.918907+00	direct_edit	t	f	1
330	2024-09-06 15:40:25.412466+00	direct_edit	t	f	1
329	2024-09-06 15:40:07.586805+00	direct_edit	t	t	1
328	2024-09-06 15:39:58.370542+00	direct_edit	t	t	1
327	2024-09-06 15:39:51.615625+00	direct_edit	t	t	1
326	2024-09-06 15:39:44.252296+00	direct_edit	t	t	1
325	2024-09-06 15:39:36.05012+00	direct_edit	t	t	1
324	2024-09-06 15:39:28.67254+00	direct_edit	t	t	1
323	2024-09-06 15:39:20.688748+00	direct_edit	t	t	1
322	2024-09-06 15:39:12.4951+00	direct_edit	t	t	1
321	2024-09-06 15:39:05.125222+00	direct_edit	t	t	1
320	2024-09-06 15:38:58.978201+00	direct_edit	t	t	1
319	2024-09-06 15:38:52.424022+00	direct_edit	t	t	1
318	2024-09-06 15:38:45.25631+00	direct_edit	t	t	1
317	2024-09-06 15:38:37.47802+00	direct_edit	t	t	1
316	2024-09-06 15:38:30.719377+00	direct_edit	t	t	1
315	2024-09-06 15:38:23.554845+00	direct_edit	t	t	1
314	2024-09-06 15:38:16.584641+00	direct_edit	t	t	1
313	2024-09-06 15:37:58.567224+00	direct_edit	t	t	1
312	2024-09-06 15:37:42.597163+00	direct_edit	t	t	1
311	2024-09-06 15:37:27.229276+00	direct_edit	t	t	1
310	2024-09-06 15:37:17.406104+00	direct_edit	t	t	1
309	2024-09-06 15:36:49.97444+00	direct_edit	t	t	1
308	2024-09-06 15:35:20.876125+00	direct_edit	t	f	1
307	2024-09-06 15:32:59.171721+00	direct_edit	t	t	1
306	2024-09-06 15:32:43.78461+00	direct_edit	t	t	1
305	2024-09-06 15:32:28.731979+00	direct_edit	t	t	1
304	2024-09-06 15:32:06.937298+00	direct_edit	t	f	1
303	2024-09-06 15:31:16.321467+00	direct_edit	t	f	1
345	2024-09-06 15:50:36.751498+00	direct_edit	t	f	1
344	2024-09-06 15:50:01.149004+00	direct_edit	t	t	1
352	2024-09-07 13:43:01.626708+00	direct_edit	t	f	1
351	2024-09-07 13:42:57.534366+00	direct_edit	t	f	1
350	2024-09-07 13:42:48.31167+00	direct_edit	t	f	1
349	2024-09-07 13:42:42.988137+00	direct_edit	t	t	1
348	2024-09-07 13:42:29.676839+00	direct_edit	t	t	1
347	2024-09-07 13:42:22.290238+00	direct_edit	t	f	1
346	2024-09-07 13:41:57.104812+00	direct_edit	t	t	1
359	2024-09-07 13:45:13.724763+00	direct_edit	t	f	1
358	2024-09-07 13:45:11.879539+00	direct_edit	t	f	1
357	2024-09-07 13:45:10.0371+00	direct_edit	t	f	1
356	2024-09-07 13:45:02.871721+00	direct_edit	t	f	1
355	2024-09-07 13:44:59.794215+00	direct_edit	t	f	1
354	2024-09-07 13:44:48.941889+00	direct_edit	t	t	1
353	2024-09-07 13:44:40.756985+00	direct_edit	t	f	1
360	2024-09-07 13:46:44.063729+00	direct_edit	t	t	1
361	2024-09-07 13:48:12.30391+00	direct_edit	t	t	1
362	2024-09-07 13:49:23.4101+00	direct_edit	t	t	1
381	2024-09-07 15:20:12.780091+00	direct_edit	t	f	1
380	2024-09-07 15:20:01.312732+00	direct_edit	t	f	1
379	2024-09-07 15:19:57.622271+00	direct_edit	t	f	1
378	2024-09-07 15:19:44.30942+00	direct_edit	t	f	1
377	2024-09-07 15:19:28.943039+00	direct_edit	t	f	1
376	2024-09-07 15:17:29.760583+00	direct_edit	t	f	1
375	2024-09-07 15:17:26.282425+00	direct_edit	t	f	1
374	2024-09-07 15:17:21.766637+00	direct_edit	t	f	1
373	2024-09-07 15:17:14.193557+00	direct_edit	t	f	1
372	2024-09-07 15:16:49.208231+00	direct_edit	t	f	1
371	2024-09-07 15:16:44.701281+00	direct_edit	t	f	1
370	2024-09-07 15:16:36.505509+00	direct_edit	t	f	1
369	2024-09-07 15:16:19.924697+00	direct_edit	t	f	1
368	2024-09-07 15:15:55.34475+00	direct_edit	t	f	1
367	2024-09-07 15:15:44.920176+00	direct_edit	t	f	1
366	2024-09-07 15:14:55.7438+00	direct_edit	t	t	1
365	2024-09-07 15:14:15.073165+00	direct_edit	t	t	1
364	2024-09-07 15:14:00.6651+00	direct_edit	t	t	1
363	2024-09-07 15:12:46.537393+00	direct_edit	t	t	1
382	2024-09-07 15:24:48.242937+00	direct_edit	t	t	1
383	2024-09-08 13:04:23.072218+00	direct_edit	t	f	1
384	2024-09-08 13:14:51.180815+00	direct_edit	t	f	1
385	2024-09-08 13:15:09.849713+00	management	t	f	\N
386	2024-09-08 13:16:15.996417+00	direct_edit	t	t	1
393	2024-09-08 13:21:59.630012+00	direct_edit	t	t	1
392	2024-09-08 13:21:33.834162+00	direct_edit	t	t	1
391	2024-09-08 13:20:53.916275+00	direct_edit	t	t	1
390	2024-09-08 13:19:34.427024+00	direct_edit	t	t	1
389	2024-09-08 13:19:30.126553+00	direct_edit	t	t	1
388	2024-09-08 13:19:26.241253+00	direct_edit	t	t	1
387	2024-09-08 13:19:21.730552+00	direct_edit	t	t	1
397	2024-09-08 13:31:06.252171+00	direct_edit	t	t	1
396	2024-09-08 13:30:22.245382+00	direct_edit	t	t	1
395	2024-09-08 13:28:23.668135+00	direct_edit	t	t	1
394	2024-09-08 13:26:31.02319+00	direct_edit	t	t	1
404	2024-09-08 13:40:14.331678+00	direct_edit	t	f	1
403	2024-09-08 13:39:39.482799+00	direct_edit	t	t	1
402	2024-09-08 13:39:13.094796+00	direct_edit	t	t	1
401	2024-09-08 13:38:12.688373+00	direct_edit	t	t	1
400	2024-09-08 13:33:14.247243+00	direct_edit	t	t	1
399	2024-09-08 13:32:36.363492+00	direct_edit	t	f	1
398	2024-09-08 13:32:30.633935+00	direct_edit	t	t	1
405	2024-09-08 13:40:53.892833+00	management	t	f	\N
406	2024-09-08 13:44:43.245159+00	management	t	f	\N
408	2024-09-08 14:01:34.830472+00	management	t	f	\N
407	2024-09-08 14:01:23.061072+00	direct_edit	t	t	1
410	2024-09-08 14:04:15.562542+00	management	t	f	\N
409	2024-09-08 14:04:03.248852+00	direct_edit	t	t	1
412	2024-09-08 14:06:05.753489+00	management	t	f	\N
411	2024-09-08 14:05:32.747845+00	direct_edit	t	t	1
414	2024-09-08 14:07:55.085302+00	direct_edit	t	t	1
413	2024-09-08 14:07:10.447539+00	direct_edit	t	t	1
415	2024-09-08 14:09:40.963861+00	direct_edit	t	t	1
416	2024-09-08 14:13:20.719936+00	direct_edit	t	t	1
419	2024-09-08 14:16:06.405037+00	direct_edit	t	t	1
418	2024-09-08 14:15:40.775285+00	direct_edit	t	t	1
417	2024-09-08 14:15:03.119899+00	direct_edit	t	t	1
420	2024-09-08 14:17:05.617823+00	management	t	f	\N
422	2024-09-09 06:37:17.566215+00	direct_edit	t	t	1
421	2024-09-09 06:36:57.6649+00	direct_edit	t	t	1
428	2024-09-09 06:46:05.994759+00	management	t	f	\N
427	2024-09-09 06:44:29.459471+00	direct_edit	t	t	1
426	2024-09-09 06:44:20.049891+00	direct_edit	t	t	1
425	2024-09-09 06:44:15.327053+00	direct_edit	t	t	1
424	2024-09-09 06:44:02.22251+00	direct_edit	t	t	1
423	2024-09-09 06:43:54.850252+00	direct_edit	t	t	1
429	2024-09-09 06:47:55.518215+00	management	t	f	\N
430	2024-09-09 06:49:19.705936+00	direct_edit	t	t	1
431	2024-09-09 06:51:46.579894+00	management	t	f	\N
434	2024-09-09 06:53:44.896137+00	direct_edit	t	t	1
433	2024-09-09 06:53:35.67678+00	direct_edit	t	t	1
432	2024-09-09 06:53:20.752247+00	direct_edit	t	t	1
435	2024-09-09 06:56:19.959336+00	direct_edit	t	t	1
442	2024-09-09 07:25:29.971686+00	direct_edit	t	t	1
441	2024-09-09 07:24:59.279486+00	direct_edit	t	t	1
440	2024-09-09 07:24:24.263241+00	direct_edit	t	t	1
439	2024-09-09 07:23:52.68741+00	direct_edit	t	t	1
438	2024-09-09 07:23:17.474656+00	direct_edit	t	t	1
437	2024-09-09 07:22:07.631007+00	direct_edit	t	t	1
436	2024-09-09 07:20:46.323148+00	direct_edit	t	t	1
444	2024-09-09 07:27:42.479752+00	direct_edit	t	t	1
443	2024-09-09 07:26:57.015816+00	direct_edit	t	t	1
452	2024-09-09 07:31:34.524747+00	direct_edit	t	f	1
451	2024-09-09 07:31:25.920365+00	direct_edit	t	f	1
450	2024-09-09 07:30:46.398787+00	direct_edit	t	f	1
449	2024-09-09 07:30:31.45453+00	direct_edit	t	f	1
448	2024-09-09 07:30:26.742663+00	direct_edit	t	f	1
447	2024-09-09 07:30:08.710049+00	direct_edit	t	f	1
446	2024-09-09 07:30:04.660181+00	direct_edit	t	f	1
445	2024-09-09 07:29:42.502925+00	direct_edit	t	t	1
453	2024-09-09 07:33:19.990441+00	direct_edit	t	f	1
454	2024-09-09 07:38:05.891486+00	direct_edit	t	f	1
457	2024-09-09 07:41:53.062925+00	direct_edit	t	f	1
456	2024-09-09 07:41:43.840339+00	direct_edit	t	f	1
455	2024-09-09 07:41:32.580453+00	direct_edit	t	t	1
459	2024-09-09 07:45:18.448552+00	direct_edit	t	f	1
458	2024-09-09 07:45:05.797165+00	direct_edit	t	f	1
462	2024-09-09 07:56:38.643113+00	management	t	f	\N
461	2024-09-09 07:55:27.942423+00	direct_edit	t	t	1
460	2024-09-09 07:55:19.551465+00	direct_edit	t	t	1
466	2024-09-09 08:00:06.483721+00	direct_edit	t	f	1
465	2024-09-09 07:59:54.601331+00	direct_edit	t	f	1
464	2024-09-09 07:59:28.790191+00	direct_edit	t	f	1
463	2024-09-09 07:57:29.873802+00	direct_edit	t	t	1
468	2024-09-09 08:02:46.83677+00	direct_edit	t	f	1
467	2024-09-09 08:02:35.782532+00	direct_edit	t	f	1
469	2024-09-09 08:04:04.461798+00	direct_edit	t	f	1
470	2024-09-09 08:04:19.910271+00	management	t	f	\N
473	2024-09-09 08:07:16.244106+00	management	t	f	\N
472	2024-09-09 08:06:46.052174+00	direct_edit	t	f	1
471	2024-09-09 08:06:41.541636+00	direct_edit	t	f	1
477	2024-09-09 08:16:12.052682+00	direct_edit	t	f	1
476	2024-09-09 08:16:03.111476+00	direct_edit	t	f	1
475	2024-09-09 08:15:53.284379+00	direct_edit	t	f	1
474	2024-09-09 08:10:37.274052+00	direct_edit	t	t	1
478	2024-09-09 08:19:10.094147+00	direct_edit	t	t	1
485	2024-09-09 08:37:42.05259+00	management	t	f	\N
484	2024-09-09 08:36:37.475212+00	direct_edit	t	t	1
483	2024-09-09 08:35:27.65272+00	direct_edit	t	t	1
482	2024-09-09 08:34:45.671364+00	direct_edit	t	t	1
481	2024-09-09 08:34:07.579557+00	direct_edit	t	t	1
480	2024-09-09 08:32:52.955664+00	direct_edit	t	t	1
479	2024-09-09 08:31:10.824543+00	direct_edit	t	t	1
487	2024-09-09 08:39:44.509942+00	management	t	f	\N
486	2024-09-09 08:39:09.27074+00	direct_edit	t	t	1
489	2024-09-09 08:41:34.626938+00	direct_edit	t	t	1
488	2024-09-09 08:41:14.003561+00	direct_edit	t	t	1
496	2024-09-09 08:54:47.832929+00	direct_edit	t	t	1
495	2024-09-09 08:54:40.051725+00	direct_edit	t	t	1
494	2024-09-09 08:54:18.534587+00	direct_edit	t	f	1
493	2024-09-09 08:54:08.703531+00	direct_edit	t	f	1
492	2024-09-09 08:52:59.117547+00	direct_edit	t	t	1
491	2024-09-09 08:49:56.831755+00	direct_edit	t	t	1
490	2024-09-09 08:46:58.644834+00	direct_edit	t	f	1
501	2024-09-09 09:03:24.045831+00	management	t	f	\N
500	2024-09-09 09:02:19.64621+00	direct_edit	t	t	1
499	2024-09-09 09:01:08.354748+00	direct_edit	t	t	1
498	2024-09-09 09:00:55.251079+00	direct_edit	t	t	1
497	2024-09-09 09:00:30.296998+00	direct_edit	t	t	1
510	2024-09-09 09:08:37.427351+00	management	t	f	\N
509	2024-09-09 09:07:59.805377+00	direct_edit	t	t	1
508	2024-09-09 09:07:52.025037+00	direct_edit	t	t	1
507	2024-09-09 09:07:24.783785+00	direct_edit	t	t	1
506	2024-09-09 09:07:09.426652+00	direct_edit	t	t	1
505	2024-09-09 09:06:27.852913+00	direct_edit	t	t	1
504	2024-09-09 09:06:09.011879+00	direct_edit	t	t	1
503	2024-09-09 09:06:04.296966+00	direct_edit	t	t	1
502	2024-09-09 09:05:54.878263+00	direct_edit	t	t	1
518	2024-09-09 11:57:25.073455+00	management	t	f	\N
517	2024-09-09 11:26:58.990248+00	direct_edit	t	t	1
516	2024-09-09 11:26:46.299127+00	direct_edit	t	t	1
515	2024-09-09 11:26:06.77042+00	direct_edit	t	t	1
514	2024-09-09 11:25:49.766881+00	direct_edit	t	t	1
513	2024-09-09 11:25:36.250635+00	direct_edit	t	t	1
512	2024-09-09 11:25:05.939145+00	direct_edit	t	t	1
511	2024-09-09 11:24:36.066279+00	direct_edit	t	t	1
1453	2024-09-17 10:00:13.823186+00	direct_edit	t	t	1
527	2024-09-09 12:00:51.062797+00	direct_edit	t	f	1
526	2024-09-09 12:00:45.735306+00	direct_edit	t	f	1
525	2024-09-09 12:00:42.260665+00	direct_edit	t	f	1
524	2024-09-09 12:00:28.937938+00	direct_edit	t	f	1
523	2024-09-09 12:00:24.22382+00	direct_edit	t	f	1
522	2024-09-09 12:00:12.344409+00	direct_edit	t	f	1
521	2024-09-09 11:59:42.466064+00	direct_edit	t	f	1
520	2024-09-09 11:59:23.022119+00	direct_edit	t	t	1
519	2024-09-09 11:58:34.450776+00	direct_edit	t	t	1
531	2024-09-09 12:03:37.550135+00	direct_edit	t	t	1
530	2024-09-09 12:03:24.238836+00	direct_edit	t	t	1
529	2024-09-09 12:03:06.217063+00	direct_edit	t	t	1
528	2024-09-09 12:02:54.135449+00	direct_edit	t	t	1
544	2024-09-09 12:06:15.055296+00	direct_edit	t	f	1
543	2024-09-09 12:06:12.187204+00	direct_edit	t	f	1
542	2024-09-09 12:06:01.745036+00	direct_edit	t	f	1
541	2024-09-09 12:05:59.494049+00	direct_edit	t	f	1
540	2024-09-09 12:05:54.980294+00	direct_edit	t	f	1
539	2024-09-09 12:05:51.708362+00	direct_edit	t	f	1
538	2024-09-09 12:05:41.886527+00	direct_edit	t	f	1
537	2024-09-09 12:05:39.213338+00	direct_edit	t	f	1
536	2024-09-09 12:05:31.633572+00	direct_edit	t	f	1
535	2024-09-09 12:05:29.793947+00	direct_edit	t	f	1
534	2024-09-09 12:05:21.807729+00	direct_edit	t	f	1
533	2024-09-09 12:05:15.66883+00	direct_edit	t	f	1
532	2024-09-09 12:05:13.616362+00	direct_edit	t	f	1
549	2024-09-09 12:08:20.195811+00	direct_edit	t	f	1
548	2024-09-09 12:08:17.121137+00	direct_edit	t	f	1
547	2024-09-09 12:08:14.455351+00	direct_edit	t	f	1
546	2024-09-09 12:08:07.905102+00	direct_edit	t	f	1
545	2024-09-09 12:07:59.918561+00	direct_edit	t	f	1
550	2024-09-09 12:10:02.798039+00	direct_edit	t	f	1
554	2024-09-09 12:33:11.19119+00	direct_edit	t	t	1
553	2024-09-09 12:15:22.295487+00	direct_edit	t	f	1
552	2024-09-09 12:13:40.28748+00	direct_edit	t	t	1
551	2024-09-09 12:13:30.047792+00	direct_edit	t	t	1
555	2024-09-09 12:34:49.699096+00	direct_edit	t	t	1
566	2024-09-09 12:39:29.031929+00	direct_edit	t	f	1
565	2024-09-09 12:39:21.850678+00	direct_edit	t	f	1
564	2024-09-09 12:38:45.407038+00	direct_edit	t	f	1
563	2024-09-09 12:38:38.433731+00	direct_edit	t	f	1
562	2024-09-09 12:38:21.638096+00	direct_edit	t	f	1
561	2024-09-09 12:38:04.024341+00	direct_edit	t	t	1
560	2024-09-09 12:37:55.630884+00	direct_edit	t	t	1
559	2024-09-09 12:37:40.675049+00	direct_edit	t	t	1
558	2024-09-09 12:37:36.168929+00	direct_edit	t	t	1
557	2024-09-09 12:37:31.665195+00	direct_edit	t	t	1
556	2024-09-09 12:37:27.243943+00	direct_edit	t	t	1
567	2024-09-09 12:41:56.070963+00	direct_edit	t	f	1
568	2024-09-09 12:43:44.826086+00	direct_edit	t	f	1
570	2024-09-09 12:48:58.986939+00	direct_edit	t	t	1
569	2024-09-09 12:48:26.642027+00	direct_edit	t	t	1
571	2024-09-09 12:50:13.765199+00	management	t	f	\N
574	2024-09-09 12:55:50.305978+00	management	t	f	\N
573	2024-09-09 12:55:14.205586+00	direct_edit	t	t	1
572	2024-09-09 12:53:09.292181+00	direct_edit	t	t	1
575	2024-09-09 12:57:13.966329+00	management	t	f	\N
603	2024-09-09 13:03:45.03202+00	management	t	f	\N
602	2024-09-09 13:03:30.849157+00	direct_edit	t	f	1
601	2024-09-09 13:03:26.95121+00	direct_edit	t	f	1
600	2024-09-09 13:03:24.083947+00	direct_edit	t	f	1
599	2024-09-09 13:03:17.526609+00	direct_edit	t	f	1
598	2024-09-09 13:03:13.840004+00	direct_edit	t	f	1
597	2024-09-09 13:03:10.369874+00	direct_edit	t	f	1
596	2024-09-09 13:03:01.759687+00	direct_edit	t	f	1
595	2024-09-09 13:02:58.077408+00	direct_edit	t	f	1
594	2024-09-09 13:02:52.12882+00	direct_edit	t	f	1
593	2024-09-09 13:02:46.394023+00	direct_edit	t	f	1
592	2024-09-09 13:02:27.353622+00	direct_edit	t	f	1
591	2024-09-09 13:02:17.520558+00	direct_edit	t	f	1
590	2024-09-09 13:02:13.420799+00	direct_edit	t	f	1
589	2024-09-09 13:02:08.229664+00	direct_edit	t	f	1
588	2024-09-09 13:02:04.821244+00	direct_edit	t	f	1
587	2024-09-09 13:01:48.233024+00	direct_edit	t	f	1
586	2024-09-09 13:01:37.170637+00	direct_edit	t	f	1
585	2024-09-09 13:00:52.117656+00	direct_edit	t	f	1
584	2024-09-09 13:00:46.583968+00	direct_edit	t	f	1
583	2024-09-09 13:00:28.769765+00	direct_edit	t	f	1
582	2024-09-09 13:00:23.854871+00	direct_edit	t	f	1
581	2024-09-09 13:00:19.969116+00	direct_edit	t	f	1
580	2024-09-09 13:00:14.02975+00	direct_edit	t	f	1
579	2024-09-09 13:00:06.24147+00	direct_edit	t	f	1
578	2024-09-09 13:00:03.170837+00	direct_edit	t	f	1
577	2024-09-09 12:59:37.151395+00	direct_edit	t	t	1
576	2024-09-09 12:59:10.566704+00	direct_edit	t	t	1
607	2024-09-09 13:05:17.133838+00	direct_edit	t	f	1
606	2024-09-09 13:05:05.46058+00	direct_edit	t	f	1
605	2024-09-09 13:04:59.531447+00	direct_edit	t	f	1
604	2024-09-09 13:04:53.378149+00	direct_edit	t	f	1
608	2024-09-09 13:05:34.169905+00	management	t	f	\N
610	2024-09-09 13:28:14.67968+00	management	t	f	\N
609	2024-09-09 13:27:34.491531+00	direct_edit	t	f	1
1454	2024-09-17 10:00:18.739234+00	direct_edit	t	t	1
631	2024-09-09 13:43:49.356112+00	direct_edit	t	t	1
630	2024-09-09 13:43:42.194974+00	direct_edit	t	t	1
629	2024-09-09 13:43:21.295518+00	direct_edit	t	t	1
628	2024-09-09 13:42:50.17174+00	direct_edit	t	t	1
627	2024-09-09 13:42:30.731202+00	direct_edit	t	t	1
626	2024-09-09 13:41:11.864986+00	direct_edit	t	t	1
658	2024-09-09 13:48:31.172176+00	direct_edit	t	f	1
657	2024-09-09 13:48:28.714556+00	direct_edit	t	f	1
656	2024-09-09 13:48:25.84855+00	direct_edit	t	f	1
655	2024-09-09 13:48:18.679285+00	direct_edit	t	f	1
654	2024-09-09 13:48:10.284205+00	direct_edit	t	f	1
653	2024-09-09 13:48:05.782015+00	direct_edit	t	f	1
652	2024-09-09 13:47:56.153905+00	direct_edit	t	f	1
651	2024-09-09 13:47:50.212298+00	direct_edit	t	f	1
650	2024-09-09 13:47:34.43843+00	direct_edit	t	f	1
649	2024-09-09 13:47:20.14339+00	direct_edit	t	f	1
648	2024-09-09 13:47:13.346907+00	direct_edit	t	f	1
647	2024-09-09 13:47:07.408202+00	direct_edit	t	f	1
646	2024-09-09 13:46:58.400144+00	direct_edit	t	f	1
645	2024-09-09 13:46:51.431683+00	direct_edit	t	f	1
644	2024-09-09 13:46:48.153253+00	direct_edit	t	f	1
643	2024-09-09 13:46:39.763655+00	direct_edit	t	f	1
642	2024-09-09 13:46:32.998182+00	direct_edit	t	f	1
641	2024-09-09 13:46:29.722789+00	direct_edit	t	f	1
640	2024-09-09 13:46:16.817946+00	direct_edit	t	f	1
639	2024-09-09 13:45:56.332285+00	direct_edit	t	t	1
638	2024-09-09 13:45:44.250209+00	direct_edit	t	t	1
637	2024-09-09 13:45:21.929415+00	direct_edit	t	t	1
636	2024-09-09 13:44:57.574367+00	direct_edit	t	t	1
635	2024-09-09 13:44:18.23462+00	direct_edit	t	t	1
634	2024-09-09 13:44:11.476916+00	direct_edit	t	t	1
633	2024-09-09 13:44:04.664403+00	direct_edit	t	t	1
632	2024-09-09 13:43:56.727716+00	direct_edit	t	t	1
625	2024-09-09 13:40:31.92791+00	direct_edit	t	t	1
624	2024-09-09 13:40:21.068689+00	direct_edit	t	t	1
623	2024-09-09 13:39:58.948469+00	direct_edit	t	t	1
622	2024-09-09 13:39:47.480192+00	direct_edit	t	t	1
621	2024-09-09 13:39:34.578118+00	direct_edit	t	t	1
620	2024-09-09 13:39:18.194475+00	direct_edit	t	t	1
619	2024-09-09 13:39:05.495438+00	direct_edit	t	t	1
618	2024-09-09 13:38:48.313627+00	direct_edit	t	t	1
617	2024-09-09 13:37:55.685618+00	direct_edit	t	t	1
616	2024-09-09 13:36:34.581299+00	direct_edit	t	t	1
615	2024-09-09 13:35:24.539412+00	direct_edit	t	t	1
614	2024-09-09 13:34:47.876849+00	direct_edit	t	t	1
613	2024-09-09 13:34:08.14431+00	direct_edit	t	t	1
612	2024-09-09 13:33:03.473213+00	direct_edit	t	f	1
611	2024-09-09 13:30:37.800973+00	direct_edit	t	t	1
659	2024-09-09 13:48:58.707951+00	management	t	f	\N
666	2024-09-09 13:51:45.35696+00	direct_edit	t	t	1
665	2024-09-09 13:51:26.310329+00	direct_edit	t	t	1
664	2024-09-09 13:51:12.999236+00	direct_edit	t	t	1
663	2024-09-09 13:50:50.062646+00	direct_edit	t	t	1
662	2024-09-09 13:50:41.254625+00	direct_edit	t	t	1
661	2024-09-09 13:50:29.57931+00	direct_edit	t	t	1
660	2024-09-09 13:50:15.448635+00	direct_edit	t	t	1
687	2024-09-09 14:04:07.322115+00	direct_edit	t	t	1
686	2024-09-09 14:03:50.324188+00	direct_edit	t	t	1
685	2024-09-09 14:03:34.759507+00	direct_edit	t	t	1
684	2024-09-09 14:03:12.643939+00	direct_edit	t	t	1
683	2024-09-09 14:02:48.474875+00	direct_edit	t	t	1
682	2024-09-09 14:02:27.173899+00	direct_edit	t	t	1
681	2024-09-09 14:02:11.200696+00	direct_edit	t	t	1
680	2024-09-09 14:01:55.635385+00	direct_edit	t	t	1
679	2024-09-09 14:01:39.455646+00	direct_edit	t	t	1
678	2024-09-09 14:01:07.508034+00	direct_edit	t	t	1
677	2024-09-09 13:57:54.995296+00	direct_edit	t	t	1
676	2024-09-09 13:57:45.776761+00	direct_edit	t	t	1
675	2024-09-09 13:57:36.968439+00	direct_edit	t	t	1
674	2024-09-09 13:57:22.839341+00	direct_edit	t	t	1
673	2024-09-09 13:57:09.730985+00	direct_edit	t	t	1
672	2024-09-09 13:57:00.310189+00	direct_edit	t	t	1
671	2024-09-09 13:56:51.299095+00	direct_edit	t	t	1
670	2024-09-09 13:56:41.468215+00	direct_edit	t	t	1
669	2024-09-09 13:56:21.400039+00	direct_edit	t	t	1
668	2024-09-09 13:56:03.375588+00	direct_edit	t	t	1
667	2024-09-09 13:55:52.113989+00	direct_edit	t	t	1
698	2024-09-09 14:15:07.441089+00	direct_edit	t	t	1
697	2024-09-09 14:12:46.122989+00	direct_edit	t	t	1
696	2024-09-09 14:11:59.222563+00	direct_edit	t	t	1
695	2024-09-09 14:11:02.910211+00	direct_edit	t	t	1
694	2024-09-09 14:10:38.946712+00	direct_edit	t	t	1
693	2024-09-09 14:10:21.53429+00	direct_edit	t	t	1
692	2024-09-09 14:10:07.249053+00	direct_edit	t	t	1
691	2024-09-09 14:09:48.966391+00	direct_edit	t	t	1
690	2024-09-09 14:09:28.28864+00	direct_edit	t	t	1
689	2024-09-09 14:08:57.571337+00	direct_edit	t	t	1
688	2024-09-09 14:08:42.821668+00	direct_edit	t	t	1
1452	2024-09-17 10:00:07.681503+00	direct_edit	t	t	1
721	2024-09-09 14:42:37.299858+00	direct_edit	t	t	1
720	2024-09-09 14:42:26.854917+00	direct_edit	t	t	1
719	2024-09-09 14:42:19.2775+00	direct_edit	t	t	1
718	2024-09-09 14:41:49.860184+00	direct_edit	t	t	1
717	2024-09-09 14:41:08.83302+00	direct_edit	t	t	1
716	2024-09-09 14:40:55.741299+00	direct_edit	t	t	1
715	2024-09-09 14:39:43.42214+00	direct_edit	t	t	1
714	2024-09-09 14:39:31.546104+00	direct_edit	t	t	1
713	2024-09-09 14:39:17.199621+00	direct_edit	t	f	1
712	2024-09-09 14:38:26.830121+00	direct_edit	t	t	1
711	2024-09-09 14:37:35.419623+00	direct_edit	t	t	1
741	2024-09-09 14:46:14.812377+00	direct_edit	t	f	1
740	2024-09-09 14:46:08.05121+00	direct_edit	t	f	1
739	2024-09-09 14:46:01.289731+00	direct_edit	t	f	1
738	2024-09-09 14:45:57.809232+00	direct_edit	t	f	1
737	2024-09-09 14:45:53.508681+00	direct_edit	t	f	1
736	2024-09-09 14:45:48.591985+00	direct_edit	t	f	1
735	2024-09-09 14:45:37.157912+00	direct_edit	t	f	1
734	2024-09-09 14:45:34.050797+00	direct_edit	t	f	1
733	2024-09-09 14:45:20.326512+00	direct_edit	t	f	1
732	2024-09-09 14:45:18.076862+00	direct_edit	t	f	1
731	2024-09-09 14:45:14.553235+00	direct_edit	t	f	1
730	2024-09-09 14:45:13.159283+00	direct_edit	t	f	1
729	2024-09-09 14:45:00.25725+00	direct_edit	t	f	1
728	2024-09-09 14:44:10.693149+00	direct_edit	t	t	1
727	2024-09-09 14:43:36.692517+00	direct_edit	t	t	1
726	2024-09-09 14:43:24.199819+00	direct_edit	t	t	1
725	2024-09-09 14:43:16.005348+00	direct_edit	t	t	1
724	2024-09-09 14:43:06.176757+00	direct_edit	t	t	1
723	2024-09-09 14:42:55.730699+00	direct_edit	t	t	1
722	2024-09-09 14:42:47.129569+00	direct_edit	t	t	1
710	2024-09-09 14:37:17.631584+00	direct_edit	t	t	1
709	2024-09-09 14:33:37.495966+00	direct_edit	t	t	1
708	2024-09-09 14:32:03.642575+00	direct_edit	t	f	1
707	2024-09-09 14:31:25.169783+00	direct_edit	t	t	1
706	2024-09-09 14:31:15.346592+00	direct_edit	t	t	1
705	2024-09-09 14:23:56.448109+00	direct_edit	t	t	1
704	2024-09-09 14:23:46.206295+00	direct_edit	t	t	1
703	2024-09-09 14:23:36.585252+00	direct_edit	t	t	1
702	2024-09-09 14:22:52.557659+00	direct_edit	t	t	1
701	2024-09-09 14:22:43.741771+00	direct_edit	t	t	1
700	2024-09-09 14:22:27.762349+00	direct_edit	t	t	1
699	2024-09-09 14:21:27.152056+00	direct_edit	t	t	1
742	2024-09-09 14:46:38.004481+00	management	t	f	\N
759	2024-09-09 14:53:24.341781+00	management	t	f	\N
758	2024-09-09 14:52:31.870219+00	direct_edit	t	t	1
757	2024-09-09 14:51:33.679277+00	direct_edit	t	t	1
756	2024-09-09 14:51:26.514627+00	direct_edit	t	t	1
755	2024-09-09 14:51:19.962915+00	direct_edit	t	t	1
754	2024-09-09 14:51:11.9709+00	direct_edit	t	t	1
753	2024-09-09 14:51:05.416861+00	direct_edit	t	t	1
752	2024-09-09 14:50:53.135543+00	direct_edit	t	t	1
751	2024-09-09 14:50:27.528711+00	direct_edit	t	t	1
750	2024-09-09 14:50:19.95056+00	direct_edit	t	t	1
749	2024-09-09 14:50:10.120533+00	direct_edit	t	t	1
748	2024-09-09 14:49:59.67579+00	direct_edit	t	t	1
747	2024-09-09 14:49:52.199725+00	direct_edit	t	t	1
746	2024-09-09 14:49:44.117897+00	direct_edit	t	t	1
745	2024-09-09 14:49:27.1135+00	direct_edit	t	t	1
744	2024-09-09 14:49:21.181014+00	direct_edit	t	t	1
743	2024-09-09 14:49:06.449208+00	direct_edit	t	t	1
773	2024-09-09 14:57:05.611561+00	management	t	f	\N
772	2024-09-09 14:56:56.867307+00	direct_edit	t	f	1
771	2024-09-09 14:56:51.544724+00	direct_edit	t	f	1
770	2024-09-09 14:56:39.467066+00	direct_edit	t	f	1
769	2024-09-09 14:56:28.609327+00	direct_edit	t	f	1
768	2024-09-09 14:56:15.699736+00	direct_edit	t	f	1
767	2024-09-09 14:56:02.795991+00	direct_edit	t	f	1
766	2024-09-09 14:55:41.499774+00	direct_edit	t	f	1
765	2024-09-09 14:55:33.514474+00	direct_edit	t	f	1
764	2024-09-09 14:55:26.756891+00	direct_edit	t	f	1
763	2024-09-09 14:55:17.538542+00	direct_edit	t	f	1
762	2024-09-09 14:55:10.371135+00	direct_edit	t	f	1
761	2024-09-09 14:54:47.225281+00	direct_edit	t	f	1
760	2024-09-09 14:54:38.651452+00	direct_edit	t	t	1
774	2024-09-09 14:57:18.623603+00	management	t	f	\N
794	2024-09-09 15:03:16.641422+00	management	t	f	\N
793	2024-09-09 15:03:00.191054+00	direct_edit	t	f	1
792	2024-09-09 15:02:56.912913+00	direct_edit	t	f	1
791	2024-09-09 15:02:54.055947+00	direct_edit	t	f	1
790	2024-09-09 15:02:50.162101+00	direct_edit	t	f	1
789	2024-09-09 15:02:47.493644+00	direct_edit	t	f	1
788	2024-09-09 15:02:44.007636+00	direct_edit	t	f	1
787	2024-09-09 15:02:37.050894+00	direct_edit	t	f	1
786	2024-09-09 15:02:34.186485+00	direct_edit	t	f	1
785	2024-09-09 15:02:31.519509+00	direct_edit	t	f	1
784	2024-09-09 15:02:21.070813+00	direct_edit	t	f	1
783	2024-09-09 15:02:10.421794+00	direct_edit	t	f	1
782	2024-09-09 15:01:59.773053+00	direct_edit	t	f	1
781	2024-09-09 15:01:56.702011+00	direct_edit	t	f	1
780	2024-09-09 15:01:53.419768+00	direct_edit	t	f	1
779	2024-09-09 15:01:32.740429+00	direct_edit	t	f	1
778	2024-09-09 15:01:28.228709+00	direct_edit	t	f	1
777	2024-09-09 15:01:12.25606+00	direct_edit	t	f	1
776	2024-09-09 15:01:10.006245+00	direct_edit	t	f	1
775	2024-09-09 14:59:32.547784+00	direct_edit	t	t	1
797	2024-09-09 15:06:40.045046+00	management	t	f	\N
796	2024-09-09 15:06:33.382507+00	direct_edit	t	t	1
795	2024-09-09 15:06:15.801827+00	direct_edit	t	t	1
799	2024-09-09 15:10:57.869151+00	management	t	f	\N
798	2024-09-09 15:10:32.129171+00	direct_edit	t	t	1
801	2024-09-09 15:13:47.635457+00	management	t	f	\N
800	2024-09-09 15:13:35.720719+00	direct_edit	t	t	1
1455	2024-09-17 10:03:27.308168+00	direct_edit	t	f	1
819	2024-09-09 15:22:02.165001+00	direct_edit	t	t	1
818	2024-09-09 15:21:37.179556+00	direct_edit	t	t	1
817	2024-09-09 15:21:27.967841+00	direct_edit	t	t	1
816	2024-09-09 15:21:20.184142+00	direct_edit	t	t	1
815	2024-09-09 15:21:05.846867+00	direct_edit	t	t	1
814	2024-09-09 15:21:00.110493+00	direct_edit	t	t	1
823	2024-09-09 15:23:38.76088+00	management	t	f	\N
822	2024-09-09 15:23:21.837302+00	direct_edit	t	t	1
821	2024-09-09 15:22:39.030878+00	direct_edit	t	t	1
820	2024-09-09 15:22:21.006923+00	direct_edit	t	t	1
813	2024-09-09 15:20:32.667788+00	direct_edit	t	t	1
812	2024-09-09 15:20:07.073381+00	direct_edit	t	t	1
811	2024-09-09 15:19:58.471777+00	direct_edit	t	t	1
810	2024-09-09 15:19:37.187125+00	direct_edit	t	t	1
809	2024-09-09 15:18:31.422418+00	direct_edit	t	t	1
808	2024-09-09 15:18:18.376823+00	direct_edit	t	t	1
807	2024-09-09 15:17:56.400423+00	direct_edit	t	t	1
806	2024-09-09 15:17:35.936931+00	direct_edit	t	t	1
805	2024-09-09 15:17:15.651589+00	direct_edit	t	t	1
804	2024-09-09 15:16:59.057677+00	direct_edit	t	t	1
803	2024-09-09 15:16:48.201833+00	direct_edit	t	t	1
802	2024-09-09 15:16:27.139051+00	direct_edit	t	t	1
826	2024-09-09 15:25:05.571358+00	management	t	f	\N
825	2024-09-09 15:24:31.987392+00	direct_edit	t	t	1
824	2024-09-09 15:24:24.916009+00	direct_edit	t	t	1
827	2024-09-09 15:25:18.240423+00	management	t	f	\N
834	2024-09-09 15:27:00.815678+00	management	t	f	\N
833	2024-09-09 15:26:42.55383+00	direct_edit	t	f	1
832	2024-09-09 15:26:37.844086+00	direct_edit	t	f	1
831	2024-09-09 15:26:32.307001+00	direct_edit	t	f	1
830	2024-09-09 15:26:28.825505+00	direct_edit	t	f	1
829	2024-09-09 15:26:13.258574+00	direct_edit	t	f	1
828	2024-09-09 15:26:11.417793+00	direct_edit	t	f	1
838	2024-09-09 15:29:18.531931+00	direct_edit	t	t	1
837	2024-09-09 15:29:07.751553+00	direct_edit	t	t	1
836	2024-09-09 15:28:47.680282+00	direct_edit	t	t	1
835	2024-09-09 15:28:31.910177+00	direct_edit	t	t	1
843	2024-09-09 15:32:04.506854+00	direct_edit	t	f	1
842	2024-09-09 15:31:23.331322+00	direct_edit	t	t	1
841	2024-09-09 15:31:14.325872+00	direct_edit	t	t	1
840	2024-09-09 15:30:39.091431+00	direct_edit	t	t	1
839	2024-09-09 15:30:23.319439+00	direct_edit	t	t	1
845	2024-09-09 15:35:32.372085+00	direct_edit	t	t	1
844	2024-09-09 15:34:35.847373+00	direct_edit	t	t	1
1456	2024-09-17 10:05:11.639195+00	direct_edit	t	t	1
901	2024-09-09 15:48:00.104842+00	direct_edit	t	t	1
900	2024-09-09 15:47:53.961517+00	direct_edit	t	t	1
899	2024-09-09 15:47:34.720627+00	direct_edit	t	t	1
898	2024-09-09 15:47:11.567502+00	direct_edit	t	t	1
897	2024-09-09 15:47:05.015101+00	direct_edit	t	t	1
896	2024-09-09 15:46:58.051044+00	direct_edit	t	t	1
895	2024-09-09 15:46:39.419062+00	direct_edit	t	t	1
894	2024-09-09 15:46:28.153253+00	direct_edit	t	t	1
893	2024-09-09 15:46:20.782602+00	direct_edit	t	t	1
892	2024-09-09 15:46:07.205055+00	direct_edit	t	t	1
891	2024-09-09 15:45:37.158161+00	direct_edit	t	t	1
890	2024-09-09 15:45:12.783557+00	direct_edit	t	t	1
889	2024-09-09 15:45:05.613235+00	direct_edit	t	t	1
888	2024-09-09 15:44:56.398826+00	direct_edit	t	t	1
887	2024-09-09 15:43:51.895105+00	direct_edit	t	f	1
886	2024-09-09 15:43:49.0265+00	direct_edit	t	f	1
885	2024-09-09 15:43:33.252773+00	direct_edit	t	f	1
884	2024-09-09 15:43:29.770647+00	direct_edit	t	f	1
883	2024-09-09 15:43:27.5188+00	direct_edit	t	f	1
882	2024-09-09 15:43:06.423156+00	direct_edit	t	f	1
881	2024-09-09 15:43:04.578857+00	direct_edit	t	f	1
880	2024-09-09 15:42:54.749394+00	direct_edit	t	f	1
879	2024-09-09 15:42:52.906128+00	direct_edit	t	f	1
878	2024-09-09 15:42:48.809602+00	direct_edit	t	f	1
877	2024-09-09 15:42:46.352972+00	direct_edit	t	f	1
876	2024-09-09 15:42:43.081229+00	direct_edit	t	f	1
875	2024-09-09 15:42:17.68852+00	direct_edit	t	f	1
874	2024-09-09 15:42:16.054336+00	direct_edit	t	f	1
873	2024-09-09 15:42:14.412413+00	direct_edit	t	f	1
872	2024-09-09 15:41:58.843281+00	direct_edit	t	f	1
871	2024-09-09 15:41:55.769955+00	direct_edit	t	f	1
870	2024-09-09 15:41:52.284859+00	direct_edit	t	f	1
869	2024-09-09 15:41:49.008141+00	direct_edit	t	f	1
868	2024-09-09 15:41:42.457152+00	direct_edit	t	f	1
867	2024-09-09 15:41:36.513765+00	direct_edit	t	f	1
866	2024-09-09 15:41:31.392503+00	direct_edit	t	f	1
865	2024-09-09 15:41:24.428782+00	direct_edit	t	f	1
864	2024-09-09 15:41:22.794299+00	direct_edit	t	f	1
863	2024-09-09 15:41:21.567533+00	direct_edit	t	f	1
862	2024-09-09 15:41:19.929128+00	direct_edit	t	f	1
861	2024-09-09 15:41:12.144284+00	direct_edit	t	f	1
860	2024-09-09 15:40:59.239368+00	direct_edit	t	f	1
859	2024-09-09 15:40:52.685648+00	direct_edit	t	f	1
858	2024-09-09 15:40:36.100573+00	direct_edit	t	f	1
857	2024-09-09 15:40:33.646623+00	direct_edit	t	f	1
856	2024-09-09 15:40:29.750576+00	direct_edit	t	f	1
855	2024-09-09 15:40:27.905151+00	direct_edit	t	f	1
854	2024-09-09 15:40:16.844008+00	direct_edit	t	f	1
853	2024-09-09 15:40:10.088577+00	direct_edit	t	f	1
852	2024-09-09 15:40:03.742177+00	direct_edit	t	f	1
851	2024-09-09 15:39:56.779731+00	direct_edit	t	f	1
850	2024-09-09 15:39:54.729627+00	direct_edit	t	f	1
849	2024-09-09 15:39:41.825332+00	direct_edit	t	f	1
848	2024-09-09 15:39:32.931356+00	direct_edit	t	f	1
847	2024-09-09 15:39:25.442567+00	direct_edit	t	f	1
846	2024-09-09 15:39:17.075826+00	direct_edit	t	t	1
926	2024-09-09 15:53:31.791144+00	direct_edit	t	f	1
925	2024-09-09 15:52:55.852348+00	direct_edit	t	f	1
924	2024-09-09 15:52:52.779984+00	direct_edit	t	f	1
923	2024-09-09 15:52:46.220708+00	direct_edit	t	t	1
922	2024-09-09 15:52:16.741247+00	direct_edit	t	f	1
921	2024-09-09 15:52:12.633944+00	direct_edit	t	f	1
920	2024-09-09 15:52:07.108412+00	direct_edit	t	f	1
919	2024-09-09 15:52:05.060613+00	direct_edit	t	f	1
918	2024-09-09 15:52:00.146159+00	direct_edit	t	f	1
917	2024-09-09 15:51:49.905508+00	direct_edit	t	f	1
916	2024-09-09 15:51:44.786188+00	direct_edit	t	f	1
915	2024-09-09 15:51:40.070199+00	direct_edit	t	f	1
914	2024-09-09 15:51:28.805581+00	direct_edit	t	f	1
913	2024-09-09 15:51:24.094114+00	direct_edit	t	f	1
912	2024-09-09 15:51:17.336304+00	direct_edit	t	f	1
911	2024-09-09 15:51:08.537834+00	direct_edit	t	f	1
910	2024-09-09 15:51:05.051844+00	direct_edit	t	f	1
909	2024-09-09 15:51:01.335741+00	direct_edit	t	f	1
908	2024-09-09 15:50:57.679261+00	direct_edit	t	f	1
907	2024-09-09 15:50:54.607382+00	direct_edit	t	f	1
906	2024-09-09 15:50:49.494613+00	direct_edit	t	f	1
905	2024-09-09 15:50:39.659019+00	direct_edit	t	f	1
904	2024-09-09 15:50:32.484294+00	direct_edit	t	f	1
903	2024-09-09 15:50:28.593042+00	direct_edit	t	f	1
902	2024-09-09 15:50:21.840726+00	direct_edit	t	f	1
931	2024-09-09 15:58:46.883933+00	direct_edit	t	f	1
930	2024-09-09 15:58:20.877154+00	direct_edit	t	f	1
929	2024-09-09 15:58:18.622145+00	direct_edit	t	f	1
928	2024-09-09 15:58:11.04266+00	direct_edit	t	f	1
927	2024-09-09 15:58:04.89416+00	direct_edit	t	f	1
956	2024-09-09 16:03:22.546346+00	direct_edit	t	f	1
955	2024-09-09 16:03:17.836562+00	direct_edit	t	f	1
954	2024-09-09 16:03:07.595391+00	direct_edit	t	f	1
953	2024-09-09 16:02:57.559898+00	direct_edit	t	f	1
952	2024-09-09 16:02:44.461183+00	direct_edit	t	f	1
951	2024-09-09 16:02:27.666751+00	direct_edit	t	f	1
950	2024-09-09 16:02:15.780412+00	direct_edit	t	f	1
949	2024-09-09 16:02:13.938969+00	direct_edit	t	f	1
948	2024-09-09 16:02:08.614082+00	direct_edit	t	f	1
947	2024-09-09 16:02:07.178099+00	direct_edit	t	f	1
946	2024-09-09 16:02:05.745597+00	direct_edit	t	f	1
945	2024-09-09 16:01:57.141895+00	direct_edit	t	f	1
944	2024-09-09 16:01:52.024287+00	direct_edit	t	f	1
943	2024-09-09 16:01:46.493704+00	direct_edit	t	f	1
942	2024-09-09 16:01:41.373295+00	direct_edit	t	f	1
941	2024-09-09 16:01:39.426621+00	direct_edit	t	f	1
940	2024-09-09 16:01:33.183144+00	direct_edit	t	f	1
939	2024-09-09 16:01:24.378937+00	direct_edit	t	f	1
938	2024-09-09 16:01:09.226872+00	direct_edit	t	f	1
937	2024-09-09 16:00:57.75291+00	direct_edit	t	f	1
936	2024-09-09 16:00:54.680543+00	direct_edit	t	f	1
935	2024-09-09 16:00:52.226405+00	direct_edit	t	f	1
934	2024-09-09 16:00:43.004831+00	direct_edit	t	f	1
933	2024-09-09 16:00:30.306412+00	direct_edit	t	f	1
932	2024-09-09 16:00:23.136976+00	direct_edit	t	f	1
959	2024-09-09 16:06:00.660218+00	direct_edit	t	f	1
958	2024-09-09 16:05:57.593639+00	direct_edit	t	f	1
957	2024-09-09 16:05:53.901182+00	direct_edit	t	f	1
961	2024-09-09 16:07:16.455108+00	direct_edit	t	f	1
960	2024-09-09 16:07:08.651333+00	direct_edit	t	f	1
963	2024-09-09 16:10:55.58048+00	direct_edit	t	f	1
962	2024-09-09 16:10:03.135512+00	direct_edit	t	t	1
969	2024-09-09 16:11:37.356612+00	direct_edit	t	f	1
968	2024-09-09 16:11:33.467715+00	direct_edit	t	f	1
967	2024-09-09 16:11:31.418572+00	direct_edit	t	f	1
966	2024-09-09 16:11:27.736257+00	direct_edit	t	f	1
965	2024-09-09 16:11:23.83446+00	direct_edit	t	f	1
964	2024-09-09 16:11:22.399638+00	direct_edit	t	f	1
977	2024-09-09 16:16:14.656205+00	direct_edit	t	f	1
976	2024-09-09 16:15:59.502132+00	direct_edit	t	f	1
975	2024-09-09 16:15:48.938214+00	direct_edit	t	f	1
974	2024-09-09 16:15:35.119841+00	direct_edit	t	t	1
973	2024-09-09 16:14:39.017091+00	direct_edit	t	f	1
972	2024-09-09 16:14:36.152595+00	direct_edit	t	f	1
971	2024-09-09 16:14:32.053479+00	direct_edit	t	f	1
970	2024-09-09 16:14:27.543746+00	direct_edit	t	f	1
1457	2024-09-17 10:05:30.041206+00	direct_edit	t	t	1
983	2024-09-10 06:22:36.888074+00	direct_edit	t	t	1
982	2024-09-10 06:22:21.118129+00	direct_edit	t	t	1
981	2024-09-10 06:22:11.081416+00	direct_edit	t	t	1
980	2024-09-10 06:21:54.901983+00	direct_edit	t	t	1
979	2024-09-10 06:21:18.468894+00	direct_edit	t	t	1
978	2024-09-10 06:18:29.074162+00	direct_edit	t	t	1
984	2024-09-10 06:33:32.724259+00	management	t	f	\N
989	2024-09-10 06:37:19.818788+00	direct_edit	t	t	1
988	2024-09-10 06:36:20.404931+00	direct_edit	t	t	1
987	2024-09-10 06:35:51.339245+00	direct_edit	t	t	1
986	2024-09-10 06:34:15.679963+00	direct_edit	t	t	1
985	2024-09-10 06:34:05.038753+00	direct_edit	t	t	1
990	2024-09-10 06:38:35.260487+00	management	t	f	\N
991	2024-09-10 06:42:04.397867+00	management	t	f	\N
994	2024-09-10 06:52:59.081015+00	management	t	f	\N
993	2024-09-10 06:52:46.938868+00	direct_edit	t	f	1
992	2024-09-10 06:50:18.256989+00	direct_edit	t	f	1
1000	2024-09-10 07:01:49.312009+00	management	t	f	\N
999	2024-09-10 07:00:45.581379+00	direct_edit	t	t	1
998	2024-09-10 07:00:11.590715+00	direct_edit	t	t	1
997	2024-09-10 06:58:58.476081+00	direct_edit	t	t	1
996	2024-09-10 06:57:30.822485+00	direct_edit	t	t	1
995	2024-09-10 06:55:38.36628+00	direct_edit	t	t	1
1001	2024-09-10 07:01:58.836854+00	management	t	f	\N
1010	2024-09-10 07:08:13.678342+00	direct_edit	t	t	1
1009	2024-09-10 07:07:58.119787+00	direct_edit	t	t	1
1008	2024-09-10 07:07:41.11907+00	direct_edit	t	t	1
1007	2024-09-10 07:07:33.207083+00	direct_edit	t	f	1
1006	2024-09-10 07:07:25.771546+00	direct_edit	t	t	1
1005	2024-09-10 07:07:09.579729+00	direct_edit	t	t	1
1004	2024-09-10 07:07:03.638362+00	direct_edit	t	t	1
1003	2024-09-10 07:06:36.592162+00	direct_edit	t	f	1
1002	2024-09-10 07:06:26.145492+00	direct_edit	t	f	1
1011	2024-09-10 07:08:41.054164+00	management	t	f	\N
1012	2024-09-10 07:10:25.886125+00	management	t	f	\N
1013	2024-09-10 07:10:35.84252+00	management	t	f	\N
1458	2024-09-24 09:20:31.075516+00	management	t	f	\N
1071	2024-09-10 07:31:44.779065+00	direct_edit	t	f	1
1070	2024-09-10 07:31:40.68586+00	direct_edit	t	f	1
1069	2024-09-10 07:31:21.032366+00	direct_edit	t	f	1
1068	2024-09-10 07:31:17.138664+00	direct_edit	t	f	1
1067	2024-09-10 07:31:04.22757+00	direct_edit	t	t	1
1066	2024-09-10 07:30:56.237034+00	direct_edit	t	f	1
1065	2024-09-10 07:30:34.124262+00	direct_edit	t	f	1
1064	2024-09-10 07:30:26.953416+00	direct_edit	t	f	1
1063	2024-09-10 07:30:17.121261+00	direct_edit	t	f	1
1062	2024-09-10 07:30:09.746568+00	direct_edit	t	f	1
1061	2024-09-10 07:29:57.663086+00	direct_edit	t	f	1
1060	2024-09-10 07:29:55.818907+00	direct_edit	t	f	1
1059	2024-09-10 07:29:40.664954+00	direct_edit	t	f	1
1058	2024-09-10 07:29:38.412682+00	direct_edit	t	f	1
1057	2024-09-10 07:29:30.424139+00	direct_edit	t	f	1
1056	2024-09-10 07:29:23.46604+00	direct_edit	t	f	1
1055	2024-09-10 07:28:58.68489+00	direct_edit	t	f	1
1054	2024-09-10 07:28:15.47345+00	direct_edit	t	f	1
1053	2024-09-10 07:27:50.489936+00	direct_edit	t	f	1
1052	2024-09-10 07:27:36.763103+00	direct_edit	t	f	1
1051	2024-09-10 07:27:08.700572+00	direct_edit	t	f	1
1050	2024-09-10 07:27:03.17155+00	direct_edit	t	f	1
1049	2024-09-10 07:26:41.671668+00	direct_edit	t	f	1
1048	2024-09-10 07:26:24.094783+00	direct_edit	t	f	1
1047	2024-09-10 07:26:05.018583+00	direct_edit	t	f	1
1046	2024-09-10 07:25:50.466543+00	direct_edit	t	f	1
1045	2024-09-10 07:25:17.916165+00	direct_edit	t	f	1
1081	2024-09-10 07:33:44.595645+00	direct_edit	t	f	1
1080	2024-09-10 07:33:33.531432+00	direct_edit	t	f	1
1079	2024-09-10 07:33:20.831094+00	direct_edit	t	f	1
1078	2024-09-10 07:33:17.144203+00	direct_edit	t	f	1
1077	2024-09-10 07:33:05.270051+00	direct_edit	t	f	1
1076	2024-09-10 07:32:55.03399+00	direct_edit	t	f	1
1075	2024-09-10 07:32:44.785066+00	direct_edit	t	f	1
1074	2024-09-10 07:32:33.119238+00	direct_edit	t	f	1
1073	2024-09-10 07:32:26.361774+00	direct_edit	t	f	1
1072	2024-09-10 07:32:22.469286+00	direct_edit	t	f	1
1044	2024-09-10 07:25:11.968955+00	direct_edit	t	f	1
1043	2024-09-10 07:25:09.919392+00	direct_edit	t	f	1
1042	2024-09-10 07:24:52.717905+00	direct_edit	t	f	1
1041	2024-09-10 07:24:49.435088+00	direct_edit	t	f	1
1040	2024-09-10 07:24:46.773264+00	direct_edit	t	f	1
1039	2024-09-10 07:24:23.845091+00	direct_edit	t	f	1
1038	2024-09-10 07:24:20.560327+00	direct_edit	t	f	1
1037	2024-09-10 07:24:18.92284+00	direct_edit	t	f	1
1036	2024-09-10 07:23:50.864879+00	direct_edit	t	f	1
1035	2024-09-10 07:23:44.112658+00	direct_edit	t	f	1
1034	2024-09-10 07:23:41.857947+00	direct_edit	t	f	1
1033	2024-09-10 07:23:39.189714+00	direct_edit	t	f	1
1032	2024-09-10 07:23:36.319899+00	direct_edit	t	f	1
1031	2024-09-10 07:23:10.721979+00	direct_edit	t	t	1
1030	2024-09-10 07:23:01.086375+00	direct_edit	t	t	1
1029	2024-09-10 07:22:03.150649+00	direct_edit	t	t	1
1028	2024-09-10 07:21:40.824725+00	direct_edit	t	t	1
1027	2024-09-10 07:20:56.365353+00	direct_edit	t	t	1
1026	2024-09-10 07:20:42.296313+00	direct_edit	t	t	1
1025	2024-09-10 07:19:49.695157+00	direct_edit	t	t	1
1024	2024-09-10 07:19:25.260586+00	direct_edit	t	t	1
1023	2024-09-10 07:19:13.366464+00	direct_edit	t	t	1
1022	2024-09-10 07:17:59.858424+00	direct_edit	t	t	1
1021	2024-09-10 07:17:22.980022+00	direct_edit	t	t	1
1020	2024-09-10 07:16:23.387289+00	direct_edit	t	t	1
1019	2024-09-10 07:15:02.46272+00	direct_edit	t	t	1
1018	2024-09-10 07:14:53.455803+00	direct_edit	t	t	1
1017	2024-09-10 07:14:30.148124+00	direct_edit	t	t	1
1016	2024-09-10 07:13:29.931682+00	direct_edit	t	t	1
1015	2024-09-10 07:11:40.329937+00	direct_edit	t	f	1
1014	2024-09-10 07:11:33.776659+00	direct_edit	t	f	1
1082	2024-09-10 07:34:15.759685+00	management	t	f	\N
1105	2024-09-10 07:38:24.963291+00	direct_edit	t	f	1
1104	2024-09-10 07:38:21.27844+00	direct_edit	t	f	1
1103	2024-09-10 07:38:18.818351+00	direct_edit	t	f	1
1102	2024-09-10 07:38:16.157492+00	direct_edit	t	f	1
1101	2024-09-10 07:38:12.263816+00	direct_edit	t	f	1
1100	2024-09-10 07:38:07.560253+00	direct_edit	t	f	1
1099	2024-09-10 07:38:01.619635+00	direct_edit	t	f	1
1098	2024-09-10 07:37:57.925508+00	direct_edit	t	f	1
1097	2024-09-10 07:37:55.678166+00	direct_edit	t	f	1
1096	2024-09-10 07:37:50.968628+00	direct_edit	t	f	1
1095	2024-09-10 07:37:46.444113+00	direct_edit	t	f	1
1094	2024-09-10 07:37:34.173938+00	direct_edit	t	f	1
1093	2024-09-10 07:37:26.796477+00	direct_edit	t	f	1
1092	2024-09-10 07:37:18.814936+00	direct_edit	t	f	1
1091	2024-09-10 07:37:11.847109+00	direct_edit	t	f	1
1090	2024-09-10 07:36:38.88559+00	direct_edit	t	f	1
1089	2024-09-10 07:36:35.349165+00	direct_edit	t	f	1
1088	2024-09-10 07:36:28.637432+00	direct_edit	t	f	1
1087	2024-09-10 07:36:23.315367+00	direct_edit	t	f	1
1086	2024-09-10 07:36:18.198093+00	direct_edit	t	f	1
1085	2024-09-10 07:36:13.895611+00	direct_edit	t	f	1
1084	2024-09-10 07:36:10.619955+00	direct_edit	t	f	1
1083	2024-09-10 07:35:59.966899+00	direct_edit	t	f	1
1106	2024-09-10 07:38:44.865336+00	management	t	f	\N
1117	2024-09-10 07:40:17.832002+00	management	t	f	\N
1116	2024-09-10 07:40:02.665381+00	direct_edit	t	f	1
1115	2024-09-10 07:39:59.798852+00	direct_edit	t	f	1
1114	2024-09-10 07:39:55.900552+00	direct_edit	t	f	1
1113	2024-09-10 07:39:53.240895+00	direct_edit	t	f	1
1112	2024-09-10 07:39:50.790082+00	direct_edit	t	f	1
1111	2024-09-10 07:39:48.326713+00	direct_edit	t	f	1
1110	2024-09-10 07:39:41.155381+00	direct_edit	t	f	1
1109	2024-09-10 07:39:38.287972+00	direct_edit	t	f	1
1108	2024-09-10 07:39:34.601079+00	direct_edit	t	f	1
1107	2024-09-10 07:39:27.643685+00	direct_edit	t	f	1
1122	2024-09-10 07:43:09.431356+00	direct_edit	t	t	1
1121	2024-09-10 07:43:02.673132+00	direct_edit	t	f	1
1120	2024-09-10 07:42:58.371451+00	direct_edit	t	f	1
1119	2024-09-10 07:42:47.312706+00	direct_edit	t	f	1
1118	2024-09-10 07:42:37.892976+00	direct_edit	t	t	1
1123	2024-09-10 07:43:47.367298+00	management	t	f	\N
1125	2024-09-10 08:51:41.065157+00	direct_edit	t	t	1
1124	2024-09-10 08:51:26.319809+00	direct_edit	t	t	1
1126	2024-09-10 08:52:45.444994+00	management	t	f	\N
1139	2024-09-10 09:03:25.386854+00	direct_edit	t	f	1
1138	2024-09-10 09:03:20.265732+00	direct_edit	t	f	1
1137	2024-09-10 09:03:11.255069+00	direct_edit	t	f	1
1136	2024-09-10 09:03:02.247125+00	direct_edit	t	f	1
1135	2024-09-10 09:02:55.688952+00	direct_edit	t	f	1
1134	2024-09-10 09:02:39.093267+00	direct_edit	t	t	1
1133	2024-09-10 09:02:21.072475+00	direct_edit	t	t	1
1132	2024-09-10 09:02:07.355806+00	direct_edit	t	t	1
1131	2024-09-10 09:01:51.406459+00	direct_edit	t	t	1
1130	2024-09-10 08:59:34.999033+00	direct_edit	t	t	1
1129	2024-09-10 08:59:04.697292+00	direct_edit	t	t	1
1128	2024-09-10 08:58:29.055523+00	direct_edit	t	t	1
1127	2024-09-10 08:55:16.552757+00	direct_edit	t	t	1
1459	2024-09-24 09:23:49.369172+00	management	t	f	\N
1168	2024-09-10 09:16:52.598778+00	management	t	f	\N
1167	2024-09-10 09:16:31.015353+00	direct_edit	t	t	1
1166	2024-09-10 09:16:19.541274+00	direct_edit	t	t	1
1165	2024-09-10 09:15:54.964396+00	direct_edit	t	t	1
1164	2024-09-10 09:15:42.471133+00	direct_edit	t	t	1
1163	2024-09-10 09:15:25.883527+00	direct_edit	t	t	1
1162	2024-09-10 09:15:13.185646+00	direct_edit	t	t	1
1161	2024-09-10 09:14:41.031198+00	direct_edit	t	t	1
1160	2024-09-10 09:14:27.927123+00	direct_edit	t	t	1
1159	2024-09-10 09:14:06.008888+00	direct_edit	t	t	1
1158	2024-09-10 09:13:51.468061+00	direct_edit	t	t	1
1157	2024-09-10 09:10:20.722623+00	direct_edit	t	t	1
1156	2024-09-10 09:09:55.737451+00	direct_edit	t	t	1
1155	2024-09-10 09:09:07.642834+00	direct_edit	t	t	1
1154	2024-09-10 09:04:49.776333+00	direct_edit	t	f	1
1153	2024-09-10 09:04:46.905732+00	direct_edit	t	t	1
1152	2024-09-10 09:04:38.296838+00	direct_edit	t	f	1
1151	2024-09-10 09:04:37.078347+00	direct_edit	t	f	1
1150	2024-09-10 09:04:34.820855+00	direct_edit	t	f	1
1149	2024-09-10 09:04:32.169107+00	direct_edit	t	f	1
1148	2024-09-10 09:04:29.093588+00	direct_edit	t	f	1
1147	2024-09-10 09:04:25.603541+00	direct_edit	t	f	1
1146	2024-09-10 09:04:05.750208+00	direct_edit	t	f	1
1145	2024-09-10 09:04:01.84966+00	direct_edit	t	f	1
1144	2024-09-10 09:04:00.209123+00	direct_edit	t	f	1
1143	2024-09-10 09:03:57.958611+00	direct_edit	t	f	1
1142	2024-09-10 09:03:55.90805+00	direct_edit	t	f	1
1141	2024-09-10 09:03:53.508422+00	direct_edit	t	f	1
1140	2024-09-10 09:03:48.938429+00	direct_edit	t	f	1
1170	2024-09-10 09:20:52.348011+00	direct_edit	t	t	1
1169	2024-09-10 09:20:32.712751+00	direct_edit	t	t	1
1178	2024-09-10 10:35:46.134569+00	direct_edit	t	t	1
1177	2024-09-10 10:35:24.631662+00	direct_edit	t	t	1
1176	2024-09-10 10:34:37.526944+00	direct_edit	t	t	1
1175	2024-09-10 10:34:22.781024+00	direct_edit	t	t	1
1174	2024-09-10 10:33:50.428653+00	direct_edit	t	t	1
1173	2024-09-10 10:33:17.025546+00	direct_edit	t	f	1
1172	2024-09-10 10:33:05.354592+00	direct_edit	t	f	1
1171	2024-09-10 10:28:43.017777+00	direct_edit	t	t	1
1179	2024-09-10 10:36:17.624541+00	management	t	f	\N
1195	2024-09-10 10:40:53.357321+00	direct_edit	t	f	1
1194	2024-09-10 10:40:49.054053+00	direct_edit	t	f	1
1193	2024-09-10 10:40:38.8102+00	direct_edit	t	f	1
1192	2024-09-10 10:40:10.744638+00	direct_edit	t	t	1
1191	2024-09-10 10:39:48.215218+00	direct_edit	t	t	1
1190	2024-09-10 10:39:28.122349+00	direct_edit	t	t	1
1189	2024-09-10 10:39:07.049401+00	direct_edit	t	t	1
1188	2024-09-10 10:38:41.448708+00	direct_edit	t	t	1
1187	2024-09-10 10:38:16.062679+00	direct_edit	t	f	1
1186	2024-09-10 10:38:10.140262+00	direct_edit	t	f	1
1185	2024-09-10 10:37:59.461945+00	direct_edit	t	t	1
1184	2024-09-10 10:37:52.088878+00	direct_edit	t	t	1
1183	2024-09-10 10:37:45.124498+00	direct_edit	t	t	1
1182	2024-09-10 10:37:36.939331+00	direct_edit	t	t	1
1181	2024-09-10 10:37:18.913463+00	direct_edit	t	t	1
1180	2024-09-10 10:37:11.339574+00	direct_edit	t	t	1
1196	2024-09-10 10:41:26.170354+00	management	t	f	\N
1197	2024-09-10 10:42:34.309452+00	direct_edit	t	t	1
1198	2024-09-10 10:42:55.667308+00	management	t	f	\N
1202	2024-09-10 10:44:00.73906+00	direct_edit	t	f	1
1201	2024-09-10 10:43:57.465429+00	direct_edit	t	f	1
1200	2024-09-10 10:43:45.791858+00	direct_edit	t	f	1
1199	2024-09-10 10:43:43.534028+00	direct_edit	t	f	1
1203	2024-09-10 10:44:14.757652+00	management	t	f	\N
1205	2024-09-10 10:48:32.635643+00	management	t	f	\N
1204	2024-09-10 10:47:35.778796+00	direct_edit	t	t	1
1206	2024-09-10 10:48:44.226134+00	management	t	f	\N
1213	2024-09-10 11:02:21.142448+00	direct_edit	t	t	1
1212	2024-09-10 11:01:57.63076+00	direct_edit	t	t	1
1211	2024-09-10 11:01:34.242533+00	direct_edit	t	t	1
1210	2024-09-10 11:01:22.7795+00	direct_edit	t	t	1
1209	2024-09-10 11:00:59.456046+00	direct_edit	t	t	1
1208	2024-09-10 10:59:52.863624+00	direct_edit	t	t	1
1207	2024-09-10 10:59:46.925942+00	direct_edit	t	t	1
1214	2024-09-10 11:02:52.771715+00	management	t	f	\N
1227	2024-09-10 12:18:13.775765+00	management	t	f	\N
1226	2024-09-10 12:17:55.290982+00	direct_edit	t	t	1
1225	2024-09-10 12:17:39.309157+00	direct_edit	t	t	1
1224	2024-09-10 12:17:24.571456+00	direct_edit	t	t	1
1223	2024-09-10 12:17:06.341263+00	direct_edit	t	t	1
1222	2024-09-10 12:16:50.569837+00	direct_edit	t	t	1
1221	2024-09-10 12:16:29.065862+00	direct_edit	t	t	1
1220	2024-09-10 12:15:31.1649+00	direct_edit	t	t	1
1219	2024-09-10 11:06:44.931091+00	direct_edit	t	t	1
1218	2024-09-10 11:03:47.981823+00	direct_edit	t	t	1
1217	2024-09-10 11:03:41.634863+00	direct_edit	t	f	1
1216	2024-09-10 11:03:37.94683+00	direct_edit	t	f	1
1215	2024-09-10 11:03:33.239261+00	direct_edit	t	t	1
1228	2024-09-10 12:18:25.071164+00	management	t	f	\N
1230	2024-09-10 12:20:36.671186+00	direct_edit	t	t	1
1229	2024-09-10 12:19:55.335175+00	direct_edit	t	t	1
1231	2024-09-10 12:21:40.212905+00	management	t	f	\N
1239	2024-09-10 12:27:50.260162+00	direct_edit	t	t	1
1238	2024-09-10 12:26:50.892246+00	direct_edit	t	t	1
1237	2024-09-10 12:26:34.900505+00	direct_edit	t	t	1
1236	2024-09-10 12:25:49.60828+00	direct_edit	t	f	1
1235	2024-09-10 12:25:27.295137+00	direct_edit	t	f	1
1234	2024-09-10 12:25:19.913659+00	direct_edit	t	f	1
1233	2024-09-10 12:23:27.074047+00	direct_edit	t	t	1
1232	2024-09-10 12:23:17.85972+00	direct_edit	t	t	1
1245	2024-09-10 12:34:43.976903+00	direct_edit	t	t	1
1244	2024-09-10 12:34:32.929968+00	direct_edit	t	t	1
1243	2024-09-10 12:34:08.621853+00	direct_edit	t	f	1
1242	2024-09-10 12:29:53.129579+00	direct_edit	t	f	1
1241	2024-09-10 12:29:48.418817+00	direct_edit	t	f	1
1240	2024-09-10 12:29:44.331845+00	direct_edit	t	f	1
1246	2024-09-10 12:35:07.360218+00	management	t	f	\N
1460	2024-09-24 09:26:09.867117+00	management	t	f	\N
1255	2024-09-10 13:41:45.300033+00	direct_edit	t	f	1
1254	2024-09-10 13:41:22.35702+00	direct_edit	t	f	1
1253	2024-09-10 13:40:51.841158+00	direct_edit	t	f	1
1252	2024-09-10 13:40:00.841204+00	direct_edit	t	f	1
1251	2024-09-10 13:29:49.496297+00	direct_edit	t	t	1
1250	2024-09-10 13:28:45.780241+00	direct_edit	t	t	1
1249	2024-09-10 13:24:39.433561+00	direct_edit	t	t	1
1248	2024-09-10 13:20:33.032079+00	direct_edit	t	f	1
1247	2024-09-10 13:20:22.790597+00	direct_edit	t	f	1
1256	2024-09-10 13:42:48.157359+00	management	t	f	\N
1261	2024-09-11 12:29:25.106061+00	direct_edit	t	t	1
1260	2024-09-11 12:28:51.30691+00	direct_edit	t	t	1
1259	2024-09-11 12:25:40.227963+00	direct_edit	t	t	1
1258	2024-09-11 12:25:09.922248+00	direct_edit	t	t	1
1257	2024-09-11 12:21:56.725799+00	direct_edit	t	t	1
1262	2024-09-11 13:04:14.763689+00	management	t	f	\N
1270	2024-09-12 14:52:38.483398+00	direct_edit	t	t	1
1269	2024-09-12 14:52:26.395897+00	direct_edit	t	f	1
1268	2024-09-12 14:52:19.234856+00	direct_edit	t	t	1
1267	2024-09-12 14:52:04.690547+00	direct_edit	t	t	1
1266	2024-09-12 14:51:54.044696+00	direct_edit	t	t	1
1265	2024-09-12 14:51:44.21068+00	direct_edit	t	t	1
1264	2024-09-12 14:51:31.52176+00	direct_edit	t	t	1
1263	2024-09-12 14:51:19.841867+00	direct_edit	t	t	1
1271	2024-09-12 14:54:00.590495+00	direct_edit	t	f	1
1272	2024-09-12 14:55:41.985865+00	direct_edit	t	t	1
1273	2024-09-12 15:19:36.778805+00	direct_edit	t	t	1
1276	2024-09-12 15:46:36.388235+00	direct_edit	t	t	1
1275	2024-09-12 15:46:26.558709+00	direct_edit	t	t	1
1274	2024-09-12 15:31:08.423966+00	direct_edit	t	t	1
1277	2024-09-12 15:48:42.772787+00	direct_edit	t	t	1
1278	2024-09-12 15:50:12.045228+00	direct_edit	t	t	1
1279	2024-09-12 15:52:41.961572+00	direct_edit	t	t	1
1284	2024-09-12 15:54:51.198154+00	direct_edit	t	t	1
1283	2024-09-12 15:54:36.655943+00	direct_edit	t	t	1
1282	2024-09-12 15:54:20.069994+00	direct_edit	t	t	1
1281	2024-09-12 15:54:02.455219+00	direct_edit	t	t	1
1280	2024-09-12 15:53:50.166135+00	direct_edit	t	t	1
1286	2024-09-12 15:55:47.513854+00	direct_edit	t	t	1
1285	2024-09-12 15:55:39.116675+00	direct_edit	t	t	1
1287	2024-09-12 15:56:49.572548+00	direct_edit	t	t	1
1288	2024-09-12 15:57:09.83227+00	management	t	f	\N
1290	2024-09-12 15:58:29.768858+00	management	t	f	\N
1289	2024-09-12 15:58:22.553631+00	direct_edit	t	t	1
1291	2024-09-12 16:40:57.370124+00	management	t	f	\N
1299	2024-09-13 09:46:57.590404+00	management	t	f	\N
1298	2024-09-13 09:46:38.273145+00	direct_edit	t	t	1
1297	2024-09-13 09:46:06.120767+00	direct_edit	t	t	1
1296	2024-09-13 09:45:57.694057+00	direct_edit	t	t	1
1295	2024-09-13 09:45:26.595928+00	direct_edit	t	t	1
1294	2024-09-13 09:43:33.110826+00	direct_edit	t	t	1
1293	2024-09-13 09:43:25.525499+00	direct_edit	t	t	1
1292	2024-09-13 09:42:31.456966+00	direct_edit	t	t	1
1301	2024-09-13 09:47:58.598763+00	management	t	f	\N
1300	2024-09-13 09:47:42.791393+00	direct_edit	t	t	1
1311	2024-09-13 09:52:32.79547+00	management	t	f	\N
1310	2024-09-13 09:52:17.616863+00	direct_edit	t	f	1
1309	2024-09-13 09:52:01.63862+00	direct_edit	t	f	1
1308	2024-09-13 09:51:23.334695+00	direct_edit	t	t	1
1307	2024-09-13 09:51:18.214351+00	direct_edit	t	t	1
1306	2024-09-13 09:51:05.518083+00	direct_edit	t	t	1
1305	2024-09-13 09:50:47.07476+00	direct_edit	t	t	1
1304	2024-09-13 09:50:26.220617+00	direct_edit	t	t	1
1303	2024-09-13 09:49:27.857506+00	direct_edit	t	t	1
1302	2024-09-13 09:48:40.749106+00	direct_edit	t	t	1
1318	2024-09-13 09:54:08.479852+00	management	t	f	\N
1317	2024-09-13 09:53:57.350878+00	direct_edit	t	f	1
1316	2024-09-13 09:53:51.823046+00	direct_edit	t	f	1
1315	2024-09-13 09:53:46.086056+00	direct_edit	t	f	1
1314	2024-09-13 09:53:39.330484+00	direct_edit	t	f	1
1313	2024-09-13 09:53:30.926138+00	direct_edit	t	f	1
1312	2024-09-13 09:53:21.71681+00	direct_edit	t	t	1
1323	2024-09-13 09:57:07.100504+00	management	t	f	\N
1322	2024-09-13 09:56:07.436373+00	direct_edit	t	t	1
1321	2024-09-13 09:55:53.469571+00	direct_edit	t	t	1
1320	2024-09-13 09:55:06.363944+00	direct_edit	t	t	1
1319	2024-09-13 09:54:53.695535+00	direct_edit	t	t	1
1324	2024-09-13 09:57:18.7182+00	management	t	f	\N
1330	2024-09-13 10:00:20.828182+00	management	t	f	\N
1329	2024-09-13 10:00:13.154724+00	direct_edit	t	t	1
1328	2024-09-13 09:59:49.840141+00	direct_edit	t	t	1
1327	2024-09-13 09:59:28.954764+00	direct_edit	t	t	1
1326	2024-09-13 09:59:08.876721+00	direct_edit	t	t	1
1325	2024-09-13 09:58:31.812257+00	direct_edit	t	t	1
1331	2024-09-13 10:00:32.546703+00	management	t	f	\N
1334	2024-09-13 10:02:33.270975+00	management	t	f	\N
1333	2024-09-13 10:02:25.260072+00	direct_edit	t	t	1
1332	2024-09-13 10:02:16.071062+00	direct_edit	t	t	1
1336	2024-09-13 10:03:21.208059+00	management	t	f	\N
1335	2024-09-13 10:03:13.626379+00	direct_edit	t	t	1
1338	2024-09-13 10:04:16.748769+00	management	t	f	\N
1337	2024-09-13 10:04:06.26271+00	direct_edit	t	t	1
1341	2024-09-13 10:06:17.274559+00	management	t	f	\N
1340	2024-09-13 10:06:07.8786+00	direct_edit	t	t	1
1339	2024-09-13 10:05:00.939688+00	direct_edit	t	t	1
1343	2024-09-13 10:07:04.478183+00	management	t	f	\N
1342	2024-09-13 10:06:57.468532+00	direct_edit	t	t	1
1345	2024-09-13 10:07:52.984192+00	management	t	f	\N
1344	2024-09-13 10:07:46.011761+00	direct_edit	t	t	1
1348	2024-09-13 10:08:46.48357+00	management	t	f	\N
1347	2024-09-13 10:08:39.020339+00	direct_edit	t	t	1
1346	2024-09-13 10:08:29.631386+00	direct_edit	t	t	1
1350	2024-09-13 10:10:18.42692+00	management	t	f	\N
1349	2024-09-13 10:10:10.975279+00	direct_edit	t	t	1
1352	2024-09-13 10:12:15.610325+00	management	t	f	\N
1351	2024-09-13 10:10:47.841157+00	direct_edit	t	t	1
1354	2024-09-13 10:13:05.013524+00	management	t	f	\N
1353	2024-09-13 10:12:59.121993+00	direct_edit	t	t	1
1358	2024-09-13 10:14:25.413255+00	management	t	f	\N
1357	2024-09-13 10:14:16.945085+00	direct_edit	t	t	1
1356	2024-09-13 10:14:11.622835+00	direct_edit	t	t	1
1355	2024-09-13 10:14:07.297797+00	direct_edit	t	t	1
1360	2024-09-13 10:15:03.879754+00	management	t	f	\N
1359	2024-09-13 10:14:56.473102+00	direct_edit	t	t	1
1362	2024-09-13 10:15:47.602122+00	management	t	f	\N
1461	2024-09-24 09:26:50.419953+00	management	t	t	\N
1361	2024-09-13 10:15:41.122242+00	direct_edit	t	t	1
1364	2024-09-13 10:16:33.767728+00	management	t	f	\N
1363	2024-09-13 10:16:26.790795+00	direct_edit	t	t	1
1366	2024-09-13 10:17:17.002324+00	management	t	f	\N
1365	2024-09-13 10:17:09.184966+00	direct_edit	t	t	1
1368	2024-09-13 10:17:54.917009+00	management	t	f	\N
1367	2024-09-13 10:17:45.654775+00	direct_edit	t	t	1
1376	2024-09-14 07:38:23.226492+00	management	t	f	\N
1375	2024-09-14 07:37:54.918275+00	direct_edit	t	t	1
1374	2024-09-14 07:31:41.807829+00	direct_edit	t	t	1
1373	2024-09-14 07:31:29.894066+00	direct_edit	t	t	1
1372	2024-09-14 07:31:20.49625+00	direct_edit	t	t	1
1371	2024-09-14 07:31:06.981565+00	direct_edit	t	t	1
1370	2024-09-14 07:30:50.598423+00	direct_edit	t	t	1
1369	2024-09-14 07:30:23.565052+00	direct_edit	t	t	1
1378	2024-09-14 07:41:40.772276+00	management	t	f	\N
1377	2024-09-14 07:41:33.68215+00	direct_edit	t	t	1
1380	2024-09-14 07:44:31.52611+00	management	t	f	\N
1379	2024-09-14 07:44:24.084008+00	direct_edit	t	t	1
1381	2024-09-14 07:44:42.796719+00	management	t	f	\N
1382	2024-09-14 08:07:07.642383+00	management	t	f	\N
1383	2024-09-14 08:08:06.892598+00	management	t	f	\N
1392	2024-09-17 07:27:25.135224+00	direct_edit	t	f	1
1391	2024-09-17 07:21:04.067146+00	direct_edit	t	f	1
1390	2024-09-17 07:18:17.567738+00	direct_edit	t	f	1
1389	2024-09-17 07:17:02.403835+00	direct_edit	t	f	1
1388	2024-09-17 07:13:24.078989+00	direct_edit	t	f	1
1387	2024-09-17 07:05:02.1913+00	direct_edit	t	f	1
1386	2024-09-16 11:42:47.35352+00	direct_edit	t	f	1
1385	2024-09-16 11:40:31.779548+00	direct_edit	t	f	1
1384	2024-09-16 11:40:10.877233+00	direct_edit	t	f	1
1393	2024-09-17 07:28:20.104683+00	direct_edit	t	f	1
1397	2024-09-17 07:51:20.07211+00	direct_edit	t	f	1
1396	2024-09-17 07:46:27.647246+00	direct_edit	t	t	1
1395	2024-09-17 07:44:43.784645+00	direct_edit	t	t	1
1394	2024-09-17 07:29:26.460936+00	direct_edit	t	f	1
1409	2024-09-17 08:08:34.297084+00	direct_edit	t	t	1
1408	2024-09-17 08:08:28.562649+00	direct_edit	t	t	1
1407	2024-09-17 08:08:16.012427+00	direct_edit	t	t	1
1406	2024-09-17 08:08:10.332891+00	direct_edit	t	t	1
1405	2024-09-17 08:08:04.802643+00	direct_edit	t	t	1
1404	2024-09-17 08:07:54.562573+00	direct_edit	t	t	1
1403	2024-09-17 08:03:38.970107+00	direct_edit	t	t	1
1402	2024-09-17 08:00:28.296372+00	direct_edit	t	t	1
1401	2024-09-17 08:00:19.082067+00	direct_edit	t	t	1
1400	2024-09-17 08:00:07.843568+00	direct_edit	t	t	1
1399	2024-09-17 07:57:44.266739+00	direct_edit	t	t	1
1398	2024-09-17 07:53:26.858845+00	direct_edit	t	f	1
1412	2024-09-17 08:10:25.17003+00	direct_edit	t	t	1
1411	2024-09-17 08:09:50.072073+00	direct_edit	t	t	1
1410	2024-09-17 08:09:42.90533+00	direct_edit	t	t	1
1416	2024-09-17 08:12:17.736897+00	direct_edit	t	t	1
1415	2024-09-17 08:12:05.857031+00	direct_edit	t	t	1
1414	2024-09-17 08:12:00.121251+00	direct_edit	t	t	1
1413	2024-09-17 08:11:11.788843+00	direct_edit	t	t	1
1417	2024-09-17 08:13:06.272245+00	direct_edit	t	t	1
1418	2024-09-17 08:13:59.321358+00	direct_edit	t	t	1
1421	2024-09-17 08:15:17.756792+00	direct_edit	t	t	1
1420	2024-09-17 08:14:59.12088+00	direct_edit	t	t	1
1419	2024-09-17 08:14:52.163509+00	direct_edit	t	t	1
1423	2024-09-17 08:18:21.474712+00	direct_edit	t	t	1
1422	2024-09-17 08:18:13.689605+00	direct_edit	t	t	1
1424	2024-09-17 08:20:15.545646+00	direct_edit	t	t	1
1447	2024-09-17 09:51:43.294892+00	direct_edit	t	t	1
1446	2024-09-17 09:51:29.159128+00	direct_edit	t	f	1
1445	2024-09-17 09:51:02.081944+00	direct_edit	t	f	1
1444	2024-09-17 09:50:26.890106+00	direct_edit	t	t	1
1443	2024-09-17 09:48:18.483833+00	direct_edit	t	t	1
1442	2024-09-17 09:46:10.929869+00	direct_edit	t	t	1
1441	2024-09-17 09:46:03.479578+00	direct_edit	t	t	1
1440	2024-09-17 09:45:59.588099+00	direct_edit	t	t	1
1439	2024-09-17 09:45:52.827538+00	direct_edit	t	t	1
1438	2024-09-17 09:45:46.485474+00	direct_edit	t	t	1
1437	2024-09-17 09:45:43.407182+00	direct_edit	t	t	1
1436	2024-09-17 09:45:40.336744+00	direct_edit	t	t	1
1435	2024-09-17 09:45:33.167597+00	direct_edit	t	t	1
1434	2024-09-17 09:45:28.660578+00	direct_edit	t	t	1
1433	2024-09-17 09:45:22.10772+00	direct_edit	t	t	1
1432	2024-09-17 09:32:36.370708+00	direct_edit	t	f	1
1431	2024-09-17 09:31:05.023255+00	direct_edit	t	f	1
1430	2024-09-17 09:30:57.037458+00	direct_edit	t	f	1
1429	2024-09-17 09:21:36.275858+00	direct_edit	t	f	1
1428	2024-09-17 09:21:14.154067+00	direct_edit	t	f	1
1427	2024-09-17 09:17:57.13612+00	direct_edit	t	t	1
1426	2024-09-17 09:17:50.579633+00	direct_edit	t	f	1
1425	2024-09-17 09:11:18.984082+00	direct_edit	t	f	1
1450	2024-09-17 09:57:49.847976+00	direct_edit	t	t	1
1449	2024-09-17 09:55:01.292517+00	direct_edit	t	t	1
1448	2024-09-17 09:54:20.130126+00	direct_edit	t	t	1
1462	2024-09-24 10:04:08.949053+00	management	t	t	\N
1464	2024-09-26 07:07:03.307946+00	management	t	t	\N
1466	2024-09-26 07:30:45.077639+00	management	t	t	\N
1475	2024-09-26 07:42:42.544684+00	direct_edit	t	f	1
1484	2024-09-26 08:11:34.742136+00	management	t	t	\N
1493	2024-09-26 08:25:43.432671+00	management	t	t	\N
1502	2024-09-26 09:49:38.352906+00	direct_edit	t	t	1
1538	2024-09-26 10:04:34.371102+00	direct_edit	t	t	1
1529	2024-09-26 10:03:13.271285+00	direct_edit	t	f	1
1520	2024-09-26 10:01:44.385284+00	direct_edit	t	f	1
1511	2024-09-26 10:00:21.846249+00	direct_edit	t	f	1
1547	2024-09-26 10:15:54.970891+00	direct_edit	t	t	1
1565	2024-10-14 07:43:30.556651+00	direct_edit	t	f	1
1556	2024-10-14 07:42:25.236643+00	direct_edit	t	f	1
1574	2024-10-14 07:59:13.073095+00	direct_edit	t	f	1
1583	2024-10-14 08:06:52.733014+00	direct_edit	t	f	1
1646	2024-10-14 09:15:48.453187+00	direct_edit	t	f	1
1637	2024-10-14 09:13:19.559871+00	direct_edit	t	f	1
1628	2024-10-14 08:37:22.579852+00	direct_edit	t	f	1
1619	2024-10-14 08:36:31.780933+00	direct_edit	t	f	1
1610	2024-10-14 08:35:59.622567+00	direct_edit	t	f	1
1601	2024-10-14 08:32:57.760393+00	direct_edit	t	f	1
1592	2024-10-14 08:26:29.247563+00	direct_edit	t	f	1
1655	2024-10-14 09:22:02.24729+00	direct_edit	t	f	1
1664	2024-10-14 09:38:02.7512+00	direct_edit	t	f	1
1673	2024-10-14 09:47:00.962367+00	management	t	t	\N
1682	2024-10-14 09:53:37.872442+00	direct_edit	t	f	1
1691	2024-10-14 09:58:45.112624+00	management	t	t	\N
1467	2024-09-26 07:31:54.371969+00	management	t	t	\N
1476	2024-09-26 07:42:58.255982+00	management	t	t	\N
1485	2024-09-26 08:16:09.237281+00	direct_edit	t	t	1
1494	2024-09-26 08:26:20.93681+00	direct_edit	t	t	1
1503	2024-09-26 09:49:47.073889+00	direct_edit	t	t	1
1539	2024-09-26 10:05:06.833964+00	management	t	t	\N
1530	2024-09-26 10:03:26.586659+00	direct_edit	t	f	1
1521	2024-09-26 10:01:49.092846+00	direct_edit	t	f	1
1512	2024-09-26 10:00:29.221148+00	direct_edit	t	f	1
1548	2024-09-26 10:16:06.754154+00	management	t	t	\N
1566	2024-10-14 07:47:08.014453+00	management	t	t	\N
1557	2024-10-14 07:42:32.398147+00	direct_edit	t	f	1
1575	2024-10-14 07:59:25.558589+00	management	t	t	\N
1584	2024-10-14 08:07:00.817526+00	management	t	t	\N
1647	2024-10-14 09:15:59.923983+00	direct_edit	t	f	1
1638	2024-10-14 09:13:56.022618+00	direct_edit	t	f	1
1629	2024-10-14 08:37:32.193879+00	direct_edit	t	f	1
1620	2024-10-14 08:36:34.035541+00	direct_edit	t	f	1
1611	2024-10-14 08:36:02.077794+00	direct_edit	t	f	1
1602	2024-10-14 08:33:10.660786+00	direct_edit	t	f	1
1593	2024-10-14 08:26:37.439362+00	direct_edit	t	f	1
1656	2024-10-14 09:22:15.157528+00	direct_edit	t	f	1
1665	2024-10-14 09:38:18.700802+00	management	t	t	\N
1674	2024-10-14 09:48:16.32765+00	direct_edit	t	f	1
1683	2024-10-14 09:54:10.855695+00	direct_edit	t	f	1
1692	2024-10-14 09:59:22.143816+00	direct_edit	t	f	1
1468	2024-09-26 07:35:43.672033+00	management	t	t	\N
1477	2024-09-26 07:48:28.47175+00	direct_edit	t	t	1
1486	2024-09-26 08:16:29.469269+00	direct_edit	t	t	1
1495	2024-09-26 08:26:33.432951+00	direct_edit	t	t	1
1504	2024-09-26 09:49:54.124328+00	direct_edit	t	t	1
1531	2024-09-26 10:03:44.205265+00	direct_edit	t	f	1
1522	2024-09-26 10:01:51.965332+00	direct_edit	t	f	1
1513	2024-09-26 10:00:34.551498+00	direct_edit	t	f	1
1540	2024-09-26 10:06:52.821557+00	direct_edit	t	t	1
1558	2024-10-14 07:42:40.38506+00	direct_edit	t	f	1
1549	2024-10-14 07:41:38.533546+00	direct_edit	t	f	1
1567	2024-10-14 07:48:57.680573+00	direct_edit	t	f	1
1576	2024-10-14 08:00:59.400395+00	direct_edit	t	f	1
1585	2024-10-14 08:09:33.206094+00	direct_edit	t	f	1
1648	2024-10-14 09:16:12.619615+00	direct_edit	t	f	1
1639	2024-10-14 09:14:06.470297+00	direct_edit	t	f	1
1630	2024-10-14 08:37:33.832333+00	direct_edit	t	f	1
1621	2024-10-14 08:36:36.901217+00	direct_edit	t	f	1
1612	2024-10-14 08:36:05.15603+00	direct_edit	t	f	1
1603	2024-10-14 08:34:35.448399+00	direct_edit	t	t	1
1594	2024-10-14 08:27:26.389106+00	direct_edit	t	f	1
1657	2024-10-14 09:22:22.94894+00	management	t	t	\N
1666	2024-10-14 09:39:13.008294+00	direct_edit	t	f	1
1675	2024-10-14 09:48:22.655548+00	management	t	t	\N
1684	2024-10-14 09:54:20.255639+00	management	t	t	\N
1693	2024-10-14 09:59:30.122254+00	management	t	t	\N
1469	2024-09-26 07:38:19.155151+00	direct_edit	t	t	1
1478	2024-09-26 07:49:21.92287+00	direct_edit	t	t	1
1487	2024-09-26 08:16:51.178104+00	direct_edit	t	t	1
1496	2024-09-26 08:29:09.919491+00	direct_edit	t	t	1
1505	2024-09-26 09:50:02.115388+00	direct_edit	t	t	1
1532	2024-09-26 10:03:47.27035+00	direct_edit	t	f	1
1523	2024-09-26 10:02:06.712112+00	direct_edit	t	f	1
1514	2024-09-26 10:00:52.369591+00	direct_edit	t	f	1
1541	2024-09-26 10:08:47.953783+00	management	t	t	\N
1559	2024-10-14 07:42:44.694661+00	direct_edit	t	f	1
1550	2024-10-14 07:41:40.995795+00	direct_edit	t	f	1
1568	2024-10-14 07:49:07.499496+00	direct_edit	t	f	1
1577	2024-10-14 08:01:12.515093+00	direct_edit	t	f	1
1586	2024-10-14 08:09:41.771586+00	management	t	t	\N
1649	2024-10-14 09:16:25.304951+00	management	t	t	\N
1640	2024-10-14 09:14:13.628584+00	direct_edit	t	f	1
1631	2024-10-14 08:37:36.911522+00	direct_edit	t	f	1
1622	2024-10-14 08:36:48.994384+00	direct_edit	t	f	1
1613	2024-10-14 08:36:09.042423+00	direct_edit	t	f	1
1604	2024-10-14 08:34:42.819696+00	direct_edit	t	f	1
1595	2024-10-14 08:27:30.891749+00	direct_edit	t	f	1
1658	2024-10-14 09:24:46.051051+00	direct_edit	t	f	1
1667	2024-10-14 09:41:08.674406+00	management	t	t	\N
1676	2024-10-14 09:50:36.830452+00	direct_edit	t	f	1
1685	2024-10-14 09:56:31.145849+00	direct_edit	t	f	1
1470	2024-09-26 07:38:30.01308+00	management	t	t	\N
1479	2024-09-26 07:49:39.561913+00	direct_edit	t	t	1
1488	2024-09-26 08:17:03.261658+00	direct_edit	t	t	1
1497	2024-09-26 08:29:52.871375+00	management	t	t	\N
1506	2024-09-26 09:50:46.179522+00	direct_edit	t	f	1
1533	2024-09-26 10:04:00.171117+00	direct_edit	t	f	1
1524	2024-09-26 10:02:16.749619+00	direct_edit	t	f	1
1515	2024-09-26 10:00:55.854845+00	direct_edit	t	f	1
1542	2024-09-26 10:10:07.012276+00	direct_edit	t	t	1
1560	2024-10-14 07:42:48.792562+00	direct_edit	t	f	1
1551	2024-10-14 07:41:46.943402+00	direct_edit	t	t	1
1569	2024-10-14 07:49:17.024828+00	direct_edit	t	f	1
1578	2024-10-14 08:01:26.629597+00	direct_edit	t	f	1
1587	2024-10-14 08:11:24.619805+00	direct_edit	t	f	1
1641	2024-10-14 09:14:19.569443+00	direct_edit	t	f	1
1632	2024-10-14 08:37:41.208229+00	direct_edit	t	f	1
1623	2024-10-14 08:36:51.236409+00	direct_edit	t	f	1
1614	2024-10-14 08:36:12.72773+00	direct_edit	t	f	1
1605	2024-10-14 08:34:55.107253+00	direct_edit	t	f	1
1596	2024-10-14 08:27:54.241424+00	direct_edit	t	f	1
1650	2024-10-14 09:17:53.585831+00	direct_edit	t	f	1
1659	2024-10-14 09:24:53.004838+00	management	t	t	\N
1668	2024-10-14 09:44:10.394599+00	direct_edit	t	f	1
1677	2024-10-14 09:50:44.846528+00	management	t	t	\N
1686	2024-10-14 09:56:44.050708+00	direct_edit	t	f	1
1471	2024-09-26 07:38:57.446861+00	direct_edit	t	f	1
1480	2024-09-26 07:50:10.845706+00	direct_edit	t	t	1
1489	2024-09-26 08:17:11.45662+00	direct_edit	t	t	1
1498	2024-09-26 09:40:18.444027+00	direct_edit	t	t	1
1507	2024-09-26 09:57:56.001745+00	management	t	t	\N
1534	2024-09-26 10:04:06.518797+00	direct_edit	t	f	1
1525	2024-09-26 10:02:39.690126+00	direct_edit	t	f	1
1516	2024-09-26 10:00:59.94124+00	direct_edit	t	f	1
1543	2024-09-26 10:11:36.710816+00	direct_edit	t	f	1
1561	2024-10-14 07:42:58.211412+00	direct_edit	t	f	1
1552	2024-10-14 07:41:54.924809+00	direct_edit	t	f	1
1570	2024-10-14 07:49:25.460115+00	management	t	t	\N
1579	2024-10-14 08:02:28.456476+00	direct_edit	t	t	1
1588	2024-10-14 08:11:30.55195+00	management	t	t	\N
1642	2024-10-14 09:14:49.056757+00	direct_edit	t	f	1
1633	2024-10-14 08:37:43.872311+00	direct_edit	t	f	1
1624	2024-10-14 08:36:53.284849+00	direct_edit	t	f	1
1615	2024-10-14 08:36:17.643729+00	direct_edit	t	f	1
1606	2024-10-14 08:35:35.872762+00	direct_edit	t	t	1
1597	2024-10-14 08:28:08.375584+00	direct_edit	t	f	1
1651	2024-10-14 09:18:04.222893+00	management	t	t	\N
1660	2024-10-14 09:30:58.798038+00	direct_edit	t	f	1
1669	2024-10-14 09:44:51.342677+00	management	t	t	\N
1678	2024-10-14 09:51:21.268761+00	direct_edit	t	f	1
1687	2024-10-14 09:57:08.407394+00	direct_edit	t	f	1
1472	2024-09-26 07:39:07.477781+00	management	t	t	\N
1481	2024-09-26 07:50:29.278483+00	direct_edit	t	t	1
1490	2024-09-26 08:17:51.221735+00	direct_edit	t	t	1
1499	2024-09-26 09:48:35.893205+00	management	t	t	\N
1535	2024-09-26 10:04:10.823677+00	direct_edit	t	f	1
1526	2024-09-26 10:02:43.997566+00	direct_edit	t	f	1
1517	2024-09-26 10:01:27.179627+00	direct_edit	t	f	1
1508	2024-09-26 09:58:46.616902+00	direct_edit	t	t	1
1544	2024-09-26 10:13:38.548988+00	direct_edit	t	t	1
1562	2024-10-14 07:43:01.282515+00	direct_edit	t	f	1
1553	2024-10-14 07:42:02.09414+00	direct_edit	t	f	1
1571	2024-10-14 07:58:34.540077+00	direct_edit	t	f	1
1580	2024-10-14 08:02:46.362294+00	management	t	t	\N
1643	2024-10-14 09:15:06.874703+00	direct_edit	t	f	1
1634	2024-10-14 09:12:47.203034+00	direct_edit	t	f	1
1625	2024-10-14 08:36:57.176022+00	direct_edit	t	f	1
1616	2024-10-14 08:36:20.722192+00	direct_edit	t	f	1
1607	2024-10-14 08:35:39.759403+00	direct_edit	t	t	1
1598	2024-10-14 08:28:18.40645+00	direct_edit	t	f	1
1589	2024-10-14 08:14:31.198129+00	direct_edit	t	f	1
1652	2024-10-14 09:18:41.316411+00	direct_edit	t	f	1
1661	2024-10-14 09:31:06.359922+00	management	t	t	\N
1670	2024-10-14 09:46:33.115552+00	direct_edit	t	f	1
1679	2024-10-14 09:51:33.620681+00	management	t	t	\N
1688	2024-10-14 09:57:23.575567+00	direct_edit	t	f	1
1473	2024-09-26 07:40:45.156097+00	management	t	t	\N
1482	2024-09-26 07:54:22.979359+00	direct_edit	t	t	1
1491	2024-09-26 08:18:23.962267+00	direct_edit	t	t	1
1500	2024-09-26 09:49:21.765432+00	direct_edit	t	t	1
1536	2024-09-26 10:04:14.711941+00	direct_edit	t	f	1
1527	2024-09-26 10:02:46.857999+00	direct_edit	t	f	1
1518	2024-09-26 10:01:30.865264+00	direct_edit	t	f	1
1509	2024-09-26 09:58:56.65741+00	direct_edit	t	t	1
1545	2024-09-26 10:13:50.617381+00	direct_edit	t	t	1
1563	2024-10-14 07:43:11.52314+00	direct_edit	t	f	1
1554	2024-10-14 07:42:13.562517+00	direct_edit	t	f	1
1572	2024-10-14 07:58:51.157162+00	direct_edit	t	f	1
1581	2024-10-14 08:05:56.745213+00	direct_edit	t	t	1
1644	2024-10-14 09:15:20.599362+00	direct_edit	t	f	1
1635	2024-10-14 09:12:53.139439+00	direct_edit	t	f	1
1626	2024-10-14 08:37:06.806701+00	direct_edit	t	f	1
1617	2024-10-14 08:36:26.046949+00	direct_edit	t	f	1
1608	2024-10-14 08:35:44.023856+00	direct_edit	t	f	1
1599	2024-10-14 08:28:42.181576+00	direct_edit	t	f	1
1590	2024-10-14 08:26:19.20971+00	direct_edit	t	f	1
1653	2024-10-14 09:18:50.755437+00	management	t	t	\N
1662	2024-10-14 09:32:48.402875+00	direct_edit	t	f	1
1671	2024-10-14 09:46:41.322179+00	direct_edit	t	f	1
1680	2024-10-14 09:52:39.090567+00	direct_edit	t	f	1
1689	2024-10-14 09:57:34.040624+00	management	t	t	\N
1474	2024-09-26 07:42:29.674239+00	direct_edit	t	t	1
1483	2024-09-26 07:58:04.543571+00	management	t	t	\N
1492	2024-09-26 08:18:33.581381+00	direct_edit	t	t	1
1501	2024-09-26 09:49:31.389063+00	direct_edit	t	t	1
1537	2024-09-26 10:04:18.193127+00	direct_edit	t	f	1
1528	2024-09-26 10:03:00.16993+00	direct_edit	t	f	1
1519	2024-09-26 10:01:38.647719+00	direct_edit	t	f	1
1510	2024-09-26 10:00:12.015625+00	direct_edit	t	f	1
1546	2024-09-26 10:14:33.200347+00	management	t	t	\N
1564	2024-10-14 07:43:15.62323+00	direct_edit	t	f	1
1555	2024-10-14 07:42:21.134923+00	direct_edit	t	f	1
1573	2024-10-14 07:58:55.666249+00	direct_edit	t	f	1
1582	2024-10-14 08:06:10.672704+00	management	t	t	\N
1645	2024-10-14 09:15:38.420506+00	direct_edit	t	f	1
1636	2024-10-14 09:13:09.52928+00	direct_edit	t	f	1
1627	2024-10-14 08:37:16.430538+00	direct_edit	t	f	1
1618	2024-10-14 08:36:28.301877+00	direct_edit	t	f	1
1609	2024-10-14 08:35:55.32481+00	direct_edit	t	t	1
1600	2024-10-14 08:32:50.384939+00	direct_edit	t	f	1
1591	2024-10-14 08:26:23.104212+00	direct_edit	t	f	1
1654	2024-10-14 09:21:43.836395+00	direct_edit	t	f	1
1663	2024-10-14 09:37:44.111677+00	direct_edit	t	t	1
1672	2024-10-14 09:46:51.753904+00	direct_edit	t	f	1
1681	2024-10-14 09:52:47.471178+00	management	t	t	\N
1690	2024-10-14 09:58:36.302143+00	direct_edit	t	f	1
1465	2024-09-26 07:07:49.438347+00	management	t	t	\N
1694	2024-10-14 10:11:32.671043+00	management	t	t	\N
1696	2024-10-14 10:23:51.222383+00	management	t	t	\N
1695	2024-10-14 10:23:43.84118+00	direct_edit	t	f	1
1699	2024-10-14 10:27:01.543045+00	management	t	t	\N
1698	2024-10-14 10:26:54.099375+00	direct_edit	t	f	1
1697	2024-10-14 10:25:00.434511+00	direct_edit	t	f	1
1700	2024-10-14 10:35:23.941986+00	management	t	t	\N
1702	2024-10-14 10:35:38.393384+00	management	t	t	\N
1701	2024-10-14 10:35:32.664991+00	direct_edit	t	f	1
1704	2024-10-14 10:42:51.211+00	management	t	t	\N
1703	2024-10-14 10:42:42.736223+00	direct_edit	t	f	1
1705	2024-10-14 10:44:39.470984+00	management	t	t	\N
1708	2024-10-14 10:48:06.994629+00	management	t	t	\N
1707	2024-10-14 10:47:59.978441+00	direct_edit	t	f	1
1706	2024-10-14 10:45:22.311998+00	direct_edit	t	f	1
1715	2024-10-14 10:54:23.789031+00	management	t	t	\N
1714	2024-10-14 10:53:54.304584+00	direct_edit	t	f	1
1713	2024-10-14 10:53:24.396856+00	direct_edit	t	f	1
1712	2024-10-14 10:52:59.410632+00	direct_edit	t	f	1
1711	2024-10-14 10:50:59.146135+00	direct_edit	t	f	1
1710	2024-10-14 10:50:26.011795+00	direct_edit	t	f	1
1709	2024-10-14 10:49:52.428081+00	direct_edit	t	f	1
1718	2024-10-14 12:20:16.611694+00	management	t	t	\N
1717	2024-10-14 12:20:09.09036+00	direct_edit	t	f	1
1716	2024-10-14 12:19:37.95791+00	direct_edit	t	f	1
1719	2024-10-14 12:22:02.195387+00	management	t	t	\N
1723	2024-10-14 12:30:31.691898+00	management	t	t	\N
1722	2024-10-14 12:29:01.759267+00	direct_edit	t	t	1
1721	2024-10-14 12:28:17.949207+00	direct_edit	t	t	1
1720	2024-10-14 12:27:25.927843+00	direct_edit	t	t	1
1725	2024-10-14 12:31:30.893196+00	management	t	t	\N
1724	2024-10-14 12:31:17.535758+00	direct_edit	t	t	1
1728	2024-10-14 12:32:27.748725+00	management	t	t	\N
1727	2024-10-14 12:32:20.084137+00	direct_edit	t	t	1
1726	2024-10-14 12:32:14.473308+00	direct_edit	t	t	1
1730	2024-10-14 12:36:00.833629+00	management	t	t	\N
1729	2024-10-14 12:35:14.527524+00	direct_edit	t	t	1
1739	2024-10-14 12:40:18.251126+00	management	t	t	\N
1738	2024-10-14 12:40:10.044146+00	direct_edit	t	f	1
1737	2024-10-14 12:39:50.589335+00	direct_edit	t	f	1
1736	2024-10-14 12:39:34.197076+00	direct_edit	t	f	1
1735	2024-10-14 12:39:23.352926+00	direct_edit	t	f	1
1734	2024-10-14 12:39:01.422917+00	direct_edit	t	f	1
1733	2024-10-14 12:37:02.267928+00	direct_edit	t	f	1
1732	2024-10-14 12:36:53.043007+00	direct_edit	t	f	1
1731	2024-10-14 12:36:48.538728+00	direct_edit	t	t	1
1742	2024-10-14 12:48:23.395417+00	management	t	t	\N
1741	2024-10-14 12:44:17.439792+00	direct_edit	t	t	1
1740	2024-10-14 12:44:09.447739+00	direct_edit	t	t	1
1743	2024-10-14 12:48:34.637638+00	management	t	t	\N
1745	2024-10-14 12:54:08.270301+00	management	t	t	\N
1744	2024-10-14 12:52:21.005875+00	direct_edit	t	t	1
1749	2024-10-14 12:56:39.387991+00	management	t	t	\N
1748	2024-10-14 12:56:32.352144+00	direct_edit	t	t	1
1747	2024-10-14 12:55:09.746827+00	direct_edit	t	t	1
1746	2024-10-14 12:54:37.171423+00	direct_edit	t	f	1
1755	2024-10-14 12:59:57.859694+00	management	t	t	\N
1754	2024-10-14 12:58:48.262633+00	direct_edit	t	f	1
1753	2024-10-14 12:58:22.049434+00	direct_edit	t	f	1
1752	2024-10-14 12:57:49.279354+00	direct_edit	t	f	1
1751	2024-10-14 12:57:33.507269+00	direct_edit	t	f	1
1750	2024-10-14 12:57:24.493498+00	direct_edit	t	f	1
1757	2024-10-24 13:16:51.718189+00	management	t	t	\N
1756	2024-10-18 09:49:53.311021+00	direct_edit	t	f	1
1761	2024-10-24 13:20:06.907445+00	management	t	t	\N
1760	2024-10-24 13:19:56.019943+00	direct_edit	t	t	1
1759	2024-10-24 13:18:53.332804+00	direct_edit	t	f	1
1758	2024-10-24 13:17:52.697184+00	direct_edit	t	f	1
1766	2024-10-24 13:24:02.57539+00	management	t	t	\N
1765	2024-10-24 13:23:54.202272+00	direct_edit	t	t	1
1764	2024-10-24 13:23:14.444768+00	direct_edit	t	f	1
1763	2024-10-24 13:22:22.251781+00	direct_edit	t	t	1
1762	2024-10-24 13:21:45.137678+00	direct_edit	t	t	1
1773	2024-10-24 13:29:43.594563+00	management	t	t	\N
1772	2024-10-24 13:29:36.025806+00	direct_edit	t	f	1
1771	2024-10-24 13:29:17.595969+00	direct_edit	t	f	1
1770	2024-10-24 13:28:59.98065+00	direct_edit	t	f	1
1769	2024-10-24 13:28:29.852193+00	direct_edit	t	f	1
1768	2024-10-24 13:28:22.598123+00	direct_edit	t	f	1
1767	2024-10-24 13:28:09.564467+00	direct_edit	t	f	1
1820	2024-10-25 10:03:45.949335+00	management	t	t	\N
1819	2024-10-25 10:03:24.25572+00	direct_edit	t	f	1
1818	2024-10-25 10:03:18.725972+00	direct_edit	t	t	1
1817	2024-10-25 10:03:07.249371+00	direct_edit	t	f	1
1816	2024-10-25 10:02:38.999621+00	direct_edit	t	f	1
1815	2024-10-25 10:02:28.138342+00	direct_edit	t	f	1
1814	2024-10-25 10:02:18.922037+00	direct_edit	t	f	1
1813	2024-10-25 10:02:16.260526+00	direct_edit	t	f	1
1812	2024-10-25 10:02:13.400114+00	direct_edit	t	f	1
1811	2024-10-25 10:02:09.706571+00	direct_edit	t	f	1
1810	2024-10-25 10:01:58.851573+00	direct_edit	t	f	1
1809	2024-10-25 10:01:54.961302+00	direct_edit	t	f	1
1808	2024-10-25 10:01:51.068408+00	direct_edit	t	f	1
1807	2024-10-25 10:01:40.216588+00	direct_edit	t	f	1
1806	2024-10-25 10:01:33.052438+00	direct_edit	t	f	1
1805	2024-10-25 10:01:25.674626+00	direct_edit	t	f	1
1804	2024-10-25 10:01:12.970707+00	direct_edit	t	t	1
1803	2024-10-25 10:01:09.082121+00	direct_edit	t	t	1
1802	2024-10-25 10:00:55.156445+00	direct_edit	t	f	1
1801	2024-10-25 10:00:50.650989+00	direct_edit	t	f	1
1800	2024-10-25 10:00:34.671144+00	direct_edit	t	f	1
1799	2024-10-25 10:00:29.962403+00	direct_edit	t	f	1
1798	2024-10-25 10:00:25.456775+00	direct_edit	t	f	1
1797	2024-10-25 10:00:11.325123+00	direct_edit	t	f	1
1796	2024-10-25 10:00:03.757279+00	direct_edit	t	f	1
1795	2024-10-25 10:00:01.296026+00	direct_edit	t	f	1
1794	2024-10-25 09:59:56.994033+00	direct_edit	t	f	1
1793	2024-10-25 09:59:37.327769+00	direct_edit	t	f	1
1792	2024-10-25 09:59:22.991846+00	direct_edit	t	f	1
1791	2024-10-25 09:58:53.711551+00	direct_edit	t	f	1
1790	2024-10-25 09:58:50.45456+00	direct_edit	t	f	1
1789	2024-10-25 09:58:46.136691+00	direct_edit	t	f	1
1788	2024-10-25 09:58:37.323695+00	direct_edit	t	f	1
1787	2024-10-25 09:58:26.681188+00	direct_edit	t	f	1
1786	2024-10-25 09:58:20.533115+00	direct_edit	t	f	1
1785	2024-10-25 09:57:57.180209+00	direct_edit	t	t	1
1784	2024-10-25 09:57:36.728002+00	direct_edit	t	t	1
1783	2024-10-25 09:56:45.337499+00	direct_edit	t	t	1
1782	2024-10-25 09:55:27.487324+00	direct_edit	t	t	1
1781	2024-10-25 09:54:14.962113+00	direct_edit	t	t	1
1780	2024-10-25 09:53:59.333346+00	direct_edit	t	t	1
1779	2024-10-25 09:52:11.513594+00	direct_edit	t	t	1
1778	2024-10-25 09:50:00.644331+00	direct_edit	t	t	1
1777	2024-10-25 09:49:30.695085+00	direct_edit	t	t	1
1776	2024-10-25 09:49:25.774557+00	direct_edit	t	t	1
1775	2024-10-25 09:49:07.764364+00	direct_edit	t	t	1
1774	2024-10-25 09:48:15.789307+00	direct_edit	t	t	1
1821	2024-10-25 10:05:31.268637+00	direct_edit	t	t	1
1823	2024-10-27 10:10:35.458945+00	changeset	t	f	1
1824	2024-10-28 10:35:30.293755+00	changeset	t	t	1
1826	2024-10-28 10:55:32.591081+00	changeset	t	f	1
1822	2024-10-25 10:45:52.97078+00	management	t	t	\N
1825	2024-10-28 10:40:03.615804+00	changeset	t	t	1
1830	2025-10-08 11:34:06.109084+00	management	t	t	\N
1829	2025-10-08 11:27:33.097124+00	management	t	t	\N
1828	2025-10-08 11:23:51.689172+00	management	t	t	\N
1827	2024-10-28 12:43:01.236283+00	management	t	t	\N
1831	2025-10-10 16:19:51.978538+00	management	t	t	\N
1832	2025-10-14 11:00:02.654075+00	management	t	t	\N
1833	2025-10-16 16:29:20.320843+00	management	t	t	\N
1834	2025-10-20 07:23:57.663139+00	management	t	t	\N
1835	2025-10-21 16:11:40.02359+00	control_panel	t	t	1
1836	2025-10-21 16:11:41.56908+00	control_panel	t	t	2
1837	2025-10-21 16:13:30.040717+00	changeset	t	t	2
1838	2025-10-21 16:21:56.85134+00	changeset	t	f	2
1839	2025-10-21 16:22:31.693328+00	changeset	t	t	1
1840	2025-10-21 16:34:37.998729+00	direct_edit	t	t	2
1841	2025-10-21 16:45:06.478469+00	direct_edit	t	t	2
1842	2025-10-21 16:45:19.553797+00	control_panel	t	t	1
1843	2025-10-21 16:46:55.08334+00	direct_edit	t	t	1
1844	2025-10-21 16:48:09.659448+00	direct_edit	t	t	1
1845	2025-10-21 16:48:34.888282+00	direct_edit	t	t	2
1846	2025-10-21 16:57:36.696386+00	direct_edit	t	t	2
1847	2025-10-21 16:58:02.209741+00	direct_edit	t	t	2
1848	2025-10-21 17:00:39.908103+00	direct_edit	t	t	2
1849	2025-10-21 17:03:58.422619+00	direct_edit	t	t	2
1850	2025-10-21 17:06:32.811186+00	direct_edit	t	t	2
1851	2025-10-21 17:06:48.154603+00	direct_edit	t	t	2
1852	2025-10-21 17:07:06.788184+00	direct_edit	t	t	2
1853	2025-10-21 17:11:27.145076+00	direct_edit	t	t	2
1854	2025-10-21 17:15:28.081417+00	direct_edit	t	t	2
1855	2025-10-21 17:22:10.779919+00	direct_edit	t	t	3
1856	2025-10-21 17:22:44.842715+00	direct_edit	t	t	3
1857	2025-10-21 17:33:04.149408+00	direct_edit	t	t	2
1858	2025-10-21 17:33:10.299017+00	direct_edit	t	t	2
1859	2025-10-21 17:50:11.050848+00	direct_edit	t	t	2
1860	2025-10-21 17:51:03.970084+00	direct_edit	t	t	2
1861	2025-10-21 18:05:56.152266+00	direct_edit	t	t	2
1862	2025-10-21 18:09:16.553637+00	direct_edit	t	t	2
1863	2025-10-21 18:13:13.295472+00	direct_edit	t	t	2
1864	2025-10-21 18:13:28.24358+00	direct_edit	t	t	2
1865	2025-10-21 18:27:32.023958+00	direct_edit	t	t	2
1866	2025-10-21 19:35:17.15747+00	direct_edit	t	f	2
1867	2025-10-21 19:36:06.758376+00	direct_edit	t	f	2
1868	2025-10-21 19:49:37.145896+00	direct_edit	t	f	2
1869	2025-10-21 19:50:06.858214+00	direct_edit	t	f	2
1870	2025-10-21 19:56:08.908332+00	direct_edit	t	t	2
1871	2025-10-21 19:57:58.507472+00	direct_edit	t	t	2
1872	2025-10-21 19:59:07.964399+00	direct_edit	t	f	2
1873	2025-10-21 20:01:38.953775+00	direct_edit	t	t	2
1874	2025-10-21 20:04:01.067265+00	direct_edit	t	t	2
1875	2025-10-21 20:04:58.437768+00	direct_edit	t	f	2
1876	2025-10-21 20:06:16.992192+00	direct_edit	t	f	2
1877	2025-10-21 20:06:44.613631+00	direct_edit	t	t	2
1878	2025-10-21 20:07:29.786917+00	direct_edit	t	f	2
1879	2025-10-21 20:09:47.604792+00	direct_edit	t	t	2
1880	2025-10-21 20:10:33.823842+00	direct_edit	t	t	2
1881	2025-10-21 20:12:23.550674+00	direct_edit	t	f	2
1882	2025-10-21 20:12:46.36377+00	direct_edit	t	f	2
1883	2025-10-21 20:13:01.300801+00	direct_edit	t	f	2
1884	2025-10-21 20:13:24.55414+00	direct_edit	t	f	2
1885	2025-10-21 20:14:10.71323+00	direct_edit	t	f	2
1886	2025-10-21 20:19:32.843047+00	direct_edit	t	f	2
1887	2025-10-21 20:20:20.173365+00	direct_edit	t	t	2
1888	2025-10-21 20:20:37.065246+00	direct_edit	t	t	2
1889	2025-10-21 20:21:03.110487+00	direct_edit	t	t	2
1890	2025-10-21 20:21:51.62806+00	direct_edit	t	t	2
1891	2025-10-21 20:22:14.632515+00	direct_edit	t	f	2
1892	2025-10-21 20:22:58.243494+00	direct_edit	t	f	2
1893	2025-10-21 20:23:19.946253+00	direct_edit	t	t	2
1894	2025-10-21 20:24:37.213303+00	direct_edit	t	f	2
1895	2025-10-21 20:28:26.652437+00	direct_edit	t	t	2
1896	2025-10-21 20:31:02.69046+00	direct_edit	t	f	2
1897	2025-10-21 20:36:17.798667+00	direct_edit	t	f	2
1902	2025-10-22 10:32:29.548499+00	direct_edit	t	t	1
1904	2025-10-22 10:32:44.865559+00	direct_edit	t	f	1
1901	2025-10-22 10:30:44.410025+00	direct_edit	t	t	1
1900	2025-10-22 10:30:17.124605+00	direct_edit	t	t	1
1899	2025-10-22 10:29:15.875099+00	control_panel	t	t	1
1898	2025-10-22 10:27:58.852535+00	changeset	t	t	1
1903	2025-10-22 10:32:37.821464+00	direct_edit	t	t	1
1905	2025-10-22 10:33:52.25414+00	direct_edit	t	t	1
1906	2025-10-22 10:34:05.191912+00	direct_edit	t	t	1
1907	2025-10-22 10:34:17.311684+00	direct_edit	t	t	1
1908	2025-10-22 10:34:47.877795+00	direct_edit	t	t	1
1909	2025-10-22 10:38:03.472928+00	direct_edit	t	f	1
1910	2025-10-26 20:04:44.263907+00	direct_edit	t	t	2
1911	2025-10-26 20:06:19.967922+00	direct_edit	t	t	2
1912	2025-10-26 20:07:41.464831+00	direct_edit	t	t	2
1913	2025-10-26 20:09:07.274382+00	direct_edit	t	t	2
1914	2025-10-26 20:09:45.715882+00	direct_edit	t	t	2
1915	2025-10-26 20:11:58.945408+00	direct_edit	t	t	2
1916	2025-10-26 20:13:05.084453+00	direct_edit	t	t	2
1917	2025-10-26 20:15:15.831593+00	direct_edit	t	t	2
1918	2025-10-26 20:15:24.497219+00	direct_edit	t	t	2
1919	2025-10-26 20:16:13.086319+00	direct_edit	t	t	2
1920	2025-10-26 20:16:47.230443+00	direct_edit	t	t	2
1921	2025-10-26 20:24:51.783055+00	direct_edit	t	t	2
1922	2025-10-26 20:27:11.283221+00	direct_edit	t	t	2
1923	2025-10-26 20:29:33.143298+00	direct_edit	t	f	2
1924	2025-10-26 20:29:57.528527+00	direct_edit	t	f	2
1925	2025-10-26 20:30:14.091929+00	direct_edit	t	f	2
1926	2025-10-26 20:30:29.182+00	direct_edit	t	f	2
1927	2025-10-26 20:31:02.589162+00	direct_edit	t	f	2
1928	2025-10-26 20:31:51.256107+00	direct_edit	t	f	2
1929	2025-10-26 20:32:22.481891+00	direct_edit	t	f	2
1930	2025-10-26 20:32:51.50369+00	direct_edit	t	f	2
1931	2025-10-26 20:33:10.558478+00	direct_edit	t	t	2
1932	2025-10-26 20:33:41.384953+00	direct_edit	t	t	2
1933	2025-10-26 20:34:54.143924+00	direct_edit	t	f	2
1934	2025-10-26 20:36:18.97848+00	direct_edit	t	f	2
1935	2025-10-26 20:37:42.74579+00	direct_edit	t	t	2
1936	2025-10-27 09:06:06.6819+00	direct_edit	t	t	2
1937	2025-10-27 09:06:44.735362+00	direct_edit	t	f	2
1938	2025-10-27 09:26:00.604173+00	control_panel	t	t	2
1939	2025-10-27 14:17:46.596965+00	changeset	t	t	1
1940	2025-10-27 14:20:26.961908+00	changeset	t	t	1
1941	2025-10-27 14:20:37.136094+00	direct_edit	t	t	1
1943	2025-10-27 14:20:45.645712+00	direct_edit	t	t	1
1942	2025-10-27 14:20:39.456221+00	direct_edit	t	f	1
1945	2025-10-27 14:20:55.45825+00	direct_edit	t	t	1
1944	2025-10-27 14:20:47.941901+00	direct_edit	t	f	1
1946	2025-10-27 14:20:59.284451+00	direct_edit	t	f	1
1947	2025-10-27 14:21:08.483743+00	direct_edit	t	t	1
1949	2025-10-27 14:21:12.735312+00	direct_edit	t	t	1
1948	2025-10-27 14:21:10.599864+00	direct_edit	t	t	1
1950	2025-10-27 14:21:16.023291+00	direct_edit	t	f	1
1951	2025-10-27 14:21:18.955844+00	direct_edit	t	f	1
1952	2025-10-27 14:21:24.060595+00	direct_edit	t	f	1
1953	2025-10-27 14:21:28.811319+00	direct_edit	t	f	1
1954	2025-10-27 14:21:31.630205+00	direct_edit	t	f	1
1955	2025-10-27 14:22:33.839759+00	direct_edit	t	f	1
1956	2025-10-27 14:22:42.759497+00	direct_edit	t	f	1
1957	2025-10-27 14:22:58.634421+00	direct_edit	t	f	1
1958	2025-10-27 14:25:21.814829+00	direct_edit	t	t	1
1959	2025-10-27 14:25:25.199041+00	direct_edit	t	t	1
1960	2025-10-27 14:25:52.105587+00	direct_edit	t	t	1
1961	2025-10-27 14:26:00.974492+00	direct_edit	t	f	1
1962	2025-10-27 14:26:09.746604+00	direct_edit	t	f	1
1963	2025-10-27 14:26:24.778851+00	direct_edit	t	f	1
1964	2025-10-27 14:26:46.622896+00	direct_edit	t	f	1
1965	2025-10-28 16:45:24.318781+00	direct_edit	t	t	2
1966	2025-10-28 16:46:05.131475+00	direct_edit	t	f	2
1967	2025-10-28 16:46:12.180119+00	direct_edit	t	t	1
1969	2025-10-30 12:05:24.529685+00	changeset	t	f	3
1971	2025-10-30 12:09:44.746945+00	direct_edit	t	t	3
1973	2025-10-30 12:11:10.072414+00	direct_edit	t	t	3
1976	2025-10-30 12:14:25.71004+00	direct_edit	t	t	3
1978	2025-10-30 12:15:55.173323+00	direct_edit	t	t	3
1968	2025-10-29 06:39:01.322155+00	management	t	t	\N
1970	2025-10-30 12:08:34.459165+00	direct_edit	t	t	3
1972	2025-10-30 12:10:00.76086+00	direct_edit	t	t	3
1974	2025-10-30 12:11:33.595256+00	direct_edit	t	t	3
1975	2025-10-30 12:12:30.930092+00	direct_edit	t	t	3
1977	2025-10-30 12:15:19.695178+00	direct_edit	t	t	3
1979	2025-10-30 12:24:49.09396+00	changeset	t	t	2
\.


--
-- Data for Name: mapdata_obstacle; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_obstacle (id, geometry, height, space_id, import_tag, altitude, group_id) FROM stdin;
3	{"type": "Polygon", "coordinates": [[[269.82, 138.73], [269.75, 139.48], [271.81, 139.67], [271.85, 139.25], [270.21, 139.1], [270.24, 138.76], [269.82, 138.73]]]}	1.50	61	\N	0.00	\N
1	{"type": "Polygon", "coordinates": [[[249.64, 133.38], [248.93, 133.31], [249.62, 125.73], [250.35, 125.79], [250.32, 126.22], [250.0, 126.19], [249.38, 132.93], [249.67, 132.96], [249.64, 133.38]]]}	1.50	61	\N	0.00	\N
4	{"type": "Polygon", "coordinates": [[[252.6, 137.91], [252.66, 137.14], [253.08, 137.18], [253.05, 137.53], [257.98, 137.97], [258.02, 137.64], [258.43, 137.68], [258.37, 138.43], [252.6, 137.91]]]}	1.60	61	\N	0.00	\N
\.


--
-- Data for Name: mapdata_obstaclegroup; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_obstaclegroup (id, titles, color, in_legend) FROM stdin;
\.


--
-- Data for Name: mapdata_poi; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_poi (locationslug_ptr_id, titles, can_search, can_describe, geometry, access_restriction_id, space_id, import_tag, icon, label_overrides, label_settings_id, external_url, import_block_data, import_block_geom, load_group_display_id) FROM stdin;
73	{"en": "Main Entrance"}	t	t	{"type": "Point", "coordinates": [241.75, 129.06]}	\N	61	\N	\N	{}	2	\N	f	f	\N
74	{"en": "Car Entrance"}	t	t	{"type": "Point", "coordinates": [394.5, 125.44]}	\N	60	\N	\N	{}	2	\N	f	f	\N
128	{"en": "Restaurant Alumix"}	t	f	{"type": "Point", "coordinates": [199.57, 114.91]}	\N	127	\N	\N	{}	\N	\N	f	f	\N
145	{"en": "Car Park Payment Machine"}	t	f	{"type": "Point", "coordinates": [284.69, 180.06]}	\N	14	\N	\N	{}	\N	\N	f	f	\N
146	{"en": "Car Park Payment Machine"}	t	f	{"type": "Point", "coordinates": [272.67, 141.97]}	\N	97	\N	\N	{}	\N	\N	f	f	\N
147	{"en": "Car Park Payment Machine"}	t	f	{"type": "Point", "coordinates": [274.29, 153.72]}	\N	35	\N	\N	{}	\N	\N	f	f	\N
149	{"en": "ATM"}	t	f	{"type": "Point", "coordinates": [272.33, 142.92]}	\N	95	\N	\N	{}	\N	\N	f	f	\N
72	{"en": "Entrance (A2)"}	t	t	{"type": "Point", "coordinates": [428.38, 200.0]}	\N	61	\N	\N	{}	2	\N	f	f	\N
106	{"en": "Access to President's Office (NOI Board)"}	t	t	{"type": "Point", "coordinates": [273.99, 200.93]}	\N	105	\N	\N	{}	\N	\N	f	f	\N
\.


--
-- Data for Name: mapdata_poi_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_poi_groups (id, poi_id, locationgroup_id) FROM stdin;
1	128	123
2	145	144
3	146	144
4	147	144
5	149	148
\.


--
-- Data for Name: mapdata_position; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_position (id, name, secret, owner_id, coordinates_id, last_coordinates_update, timeout, short_name) FROM stdin;
\.


--
-- Data for Name: mapdata_ramp; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_ramp (id, geometry, space_id, import_tag) FROM stdin;
4	{"type": "Polygon", "coordinates": [[[272.7, 181.71], [272.69, 185.46], [274.5, 185.46], [274.49, 181.71], [272.7, 181.71]]]}	20	\N
3	{"type": "Polygon", "coordinates": [[[272.71, 201.56], [274.5, 201.56], [274.48, 192.1], [272.71, 192.1], [272.71, 201.56]]]}	20	\N
2	{"type": "Polygon", "coordinates": [[[272.71, 204.02], [272.71, 211.63], [274.51, 211.63], [274.51, 204.02], [272.71, 204.02]]]}	20	\N
1	{"type": "Polygon", "coordinates": [[[272.71, 223.13], [272.71, 213.55], [274.51, 213.55], [274.52, 223.13], [272.71, 223.13]]]}	20	\N
7	{"type": "Polygon", "coordinates": [[[275.11, 219.93], [275.11, 205.42], [283.49, 205.42], [283.49, 219.95], [275.11, 219.93]]]}	33	\N
8	{"type": "Polygon", "coordinates": [[[235.52, 203.75], [239.58, 203.75], [239.64, 211.51], [235.5, 211.5], [235.52, 203.75]]]}	58	\N
\.


--
-- Data for Name: mapdata_rangingbeacon; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_rangingbeacon (id, import_tag, geometry, altitude, comment, space_id, bluetooth_address, ibeacon_major, ibeacon_minor, ibeacon_uuid, node_number, uwb_address, altitude_quest, addresses, ap_name, beacon_type, max_observed_num_clients, num_clients) FROM stdin;
\.


--
-- Data for Name: mapdata_report; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_report (id, created, category, open, last_update, title, description, coordinates_id, origin_id, destination_id, route_options, titles, secret, assigned_to_id, author_id, location_id, import_tag) FROM stdin;
\.


--
-- Data for Name: mapdata_report_created_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_report_created_groups (id, report_id, locationgroup_id) FROM stdin;
\.


--
-- Data for Name: mapdata_reportupdate; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_reportupdate (id, datetime, open, comment, public, assigned_to_id, author_id, report_id) FROM stdin;
\.


--
-- Data for Name: mapdata_source; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_source (id, bottom, "left", top, "right", name, access_restriction_id) FROM stdin;
2	92.00	139.00	264.73	462.13	CAMPUS-piano-1.svg	\N
3	143.11	262.78	222.44	375.05	A1-piano-2-rot_FLM-P.-2.svg	\N
4	176.92	195.00	256.25	307.27	A1-piano0-rot_FLM-A1.0.svg	\N
5	158.81	324.25	238.14	436.52	A2-piano0-rot_FLM-A2.0.svg	\N
6	158.81	326.22	238.14	438.49	A2-piano1-rot_FLM-A2.1.svg	\N
7	162.95	326.22	242.28	438.49	A2-piano2-rot_FLM-A2.2.svg	\N
8	51.99	144.42	332.66	541.43	campus-piano0-rot.svg	\N
9	109.45	239.45	157.05	306.81	FLM-A4.0-rot.svg	\N
10	177.63	196.81	256.97	309.08	FLM-A1.1-rot.svg	\N
11	179.12	197.87	258.45	310.14	FLM-A1.2-rot.svg	\N
\.


--
-- Data for Name: mapdata_space; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_space (locationslug_ptr_id, titles, can_search, can_describe, geometry, height, outside, enter_description_i18n, base_mapdata_accessible, access_restriction_id, level_id, import_tag, icon, label_overrides, label_settings_id, external_url, import_block_data, import_block_geom, load_group_contribute_id, load_group_display_id, identifyable, media_panel_done) FROM stdin;
14	{"en": "Car Park Level -1"}	t	t	{"type": "Polygon", "coordinates": [[[367.13, 158.06], [367.13, 180.44], [350.0, 180.44], [350.0, 183.19], [299.12, 183.19], [299.12, 180.56], [283.56, 180.56], [283.56, 183.31], [274.81, 183.31], [274.81, 179.37], [272.69, 179.37], [272.69, 173.12], [268.0, 173.12], [268.0, 156.12], [269.88, 156.12], [269.88, 153.37], [334.06, 153.37], [334.06, 158.0], [367.13, 158.06]]]}	\N	f	{}	f	\N	10	carpark	\N	{}	\N	\N	f	f	\N	\N	\N	f
19	{"en": "Barrier Free WC"}	t	t	{"type": "Polygon", "coordinates": [[[277.44, 206.32], [277.44, 209.11], [275.1, 209.11], [275.1, 206.31], [277.44, 206.32]]]}	\N	f	{}	f	\N	10	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
31	{"en": "Main Lobby"}	t	t	{"type": "Polygon", "coordinates": [[[300.46, 222.51], [300.46, 229.81], [283.53, 229.81], [283.53, 234.31], [272.73, 234.31], [272.73, 224.88], [271.92, 224.88], [271.96, 223.61], [272.75, 223.59], [272.73, 222.44], [300.46, 222.51]]]}	\N	f	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
16	{"en": "Floor -1 WC Men (A1)"}	t	t	{"type": "Polygon", "coordinates": [[[283.48, 204.37], [283.48, 209.09], [277.63, 209.09], [277.63, 204.33], [283.48, 204.37]]]}	\N	f	{}	f	\N	10	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
17	{"en": "Floor -1 WC Women (A1)"}	t	t	{"type": "Polygon", "coordinates": [[[283.41, 204.08], [277.65, 204.08], [277.65, 199.72], [283.42, 199.72], [283.41, 204.08]]]}	\N	f	{}	f	\N	10	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
33	{"en": "Entrance (A1)"}	t	t	{"type": "Polygon", "coordinates": [[[272.65, 222.5], [283.68, 222.6], [283.68, 194.29], [272.66, 194.29], [272.65, 222.5]]]}	\N	t	{}	f	\N	2	\N	\N	{}	2	\N	f	f	\N	\N	\N	f
42	{"en": "WC for Men"}	t	t	{"type": "Polygon", "coordinates": [[[266.26, 229.52], [268.74, 229.52], [268.72, 225.16], [266.27, 225.17], [266.26, 229.52]]]}	\N	f	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
43	{"en": "Barrier Free WC"}	t	t	{"type": "Polygon", "coordinates": [[[280.8, 240.29], [280.8, 243.05], [283.45, 243.05], [283.45, 240.23], [280.8, 240.29]]]}	\N	f	{}	f	\N	10	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
30	{"en": "Maker Space"}	t	t	{"type": "Polygon", "coordinates": [[[259.45, 200.52], [240.04, 200.52], [240.04, 192.41], [259.42, 192.41], [259.45, 200.52]]]}	\N	f	{}	f	\N	2	\N	\N	{}	1	\N	f	f	\N	\N	\N	f
29	{"en": "NOISE"}	t	t	{"type": "Polygon", "coordinates": [[[249.11, 246.06], [249.11, 234.45], [300.43, 234.45], [300.43, 246.07], [249.11, 246.06]]]}	\N	f	{}	f	\N	2	\N	\N	{}	1	\N	f	f	\N	\N	\N	f
44	{"en": "NOI Techpark InfoDesk"}	t	t	{"type": "Polygon", "coordinates": [[[272.65, 225.14], [269.09, 225.14], [269.09, 229.5], [272.65, 229.5], [272.65, 225.14]]]}	\N	f	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
47	{"en": "WC"}	t	t	{"type": "Polygon", "coordinates": [[[344.15, 207.31], [352.44, 207.31], [352.44, 201.31], [345.35, 201.31], [345.35, 197.45], [343.69, 197.45], [343.69, 200.94], [344.15, 200.94], [344.15, 207.31]]]}	\N	f	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
51	{"en": "Open Theather"}	t	t	{"type": "Polygon", "coordinates": [[[284.04, 222.39], [284.04, 211.96], [301.6, 211.96], [301.6, 222.42], [284.04, 222.39]]]}	\N	t	{}	f	\N	10	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
127	{"en": "Alumix entrance"}	f	f	{"type": "Polygon", "coordinates": [[[198.82, 114.05], [198.77, 115.5], [200.53, 115.55], [200.48, 114.05], [198.82, 114.05]]]}	\N	f	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
27	{"en": "Seminar 1"}	t	t	{"type": "Polygon", "coordinates": [[[302.25, 223.03], [315.52, 223.03], [315.52, 199.75], [302.16, 199.75], [302.25, 223.03]]]}	\N	f	{}	f	\N	10	\N	\N	{}	2	\N	f	f	\N	\N	\N	f
26	{"en": "Seminar 2"}	t	t	{"type": "Polygon", "coordinates": [[[302.23, 230.0], [315.52, 230.0], [315.52, 244.57], [302.23, 244.57], [302.23, 230.0]]]}	\N	f	{}	f	\N	10	\N	\N	{}	2	https://maps.noi.bz.it/en/?shared=A1--1-03&lang=en	f	f	\N	\N	\N	f
24	{"en": "Seminar 3"}	t	t	{"type": "Polygon", "coordinates": [[[275.82, 223.08], [283.49, 223.08], [283.49, 209.71], [275.81, 209.71], [275.82, 223.08]]]}	\N	f	{}	f	\N	10	\N	\N	{}	2	\N	f	f	\N	\N	\N	f
25	{"en": "Seminar 4"}	t	t	{"type": "Polygon", "coordinates": [[[280.54, 234.09], [275.09, 234.09], [275.09, 245.24], [280.56, 245.24], [280.54, 234.09]]]}	\N	f	{}	f	\N	10	\N	\N	{}	2	\N	f	f	\N	\N	\N	f
49	{"en": "Corridor"}	f	t	{"type": "Polygon", "coordinates": [[[338.78, 201.23], [338.78, 190.63], [343.28, 190.63], [343.34, 190.87], [348.51, 190.87], [348.51, 188.95], [350.88, 188.95], [350.88, 195.59], [343.29, 195.59], [343.29, 201.25], [338.78, 201.23]]]}	\N	f	{}	f	\N	2	\N	\N	{}	2	\N	f	f	\N	\N	\N	f
46	{"en": "Multimedia Center"}	f	t	{"type": "Polygon", "coordinates": [[[342.82, 207.55], [343.83, 207.55], [343.83, 207.2], [360.03, 207.2], [360.03, 197.25], [338.99, 197.25], [338.99, 197.45], [338.62, 197.45], [338.62, 202.5], [342.78, 202.5], [342.78, 203.22], [343.57, 203.22], [343.57, 205.37], [342.83, 205.37], [342.82, 207.55]]]}	\N	f	{}	f	\N	38	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
40	{"en": "WC for Men"}	t	t	{"type": "Polygon", "coordinates": [[[267.12, 206.09], [267.11, 207.16], [266.89, 207.16], [266.9, 208.67], [270.3, 208.68], [270.3, 206.08], [267.12, 206.09]]]}	\N	f	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
54	{"en": "Barrier Free WC"}	t	t	{"type": "Polygon", "coordinates": [[[259.85, 226.99], [262.01, 226.99], [262.01, 225.12], [259.82, 225.12], [259.85, 226.99]]]}	\N	f	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
55	{"en": "WC for Women"}	t	t	{"type": "Polygon", "coordinates": [[[263.44, 229.52], [265.89, 229.52], [265.89, 225.16], [263.44, 225.16], [263.44, 229.52]]]}	\N	f	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
56	{"en": "WC for Women"}	t	t	{"type": "Polygon", "coordinates": [[[260.14, 208.71], [260.14, 206.1], [263.73, 206.1], [263.73, 207.11], [264.21, 207.11], [264.21, 208.69], [260.14, 208.71]]]}	\N	f	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
57	{"en": "Barrier Free WC"}	t	t	{"type": "Polygon", "coordinates": [[[264.39, 208.67], [264.39, 207.17], [266.72, 207.17], [266.72, 208.66], [264.39, 208.67]]]}	\N	f	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
58	{"en": "Corridor"}	f	t	{"type": "Polygon", "coordinates": [[[235.53, 211.57], [235.53, 203.44], [215.82, 203.44], [215.82, 201.25], [235.34, 201.25], [235.34, 198.92], [239.73, 198.92], [239.73, 201.23], [269.44, 201.23], [269.44, 203.47], [266.94, 203.47], [266.94, 206.91], [263.91, 206.91], [263.91, 203.39], [239.59, 203.39], [239.59, 211.59], [235.53, 211.57]]]}	\N	f	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
134	{"en": "A2 - Stairs A"}	f	f	{"type": "Polygon", "coordinates": [[[421.64, 207.7], [421.64, 201.35], [426.99, 201.35], [426.99, 207.72], [421.64, 207.7]]]}	\N	f	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
71	{"en": "Stairs D - Level -1 to 0"}	t	t	{"type": "Polygon", "coordinates": [[[268.93, 198.23], [268.71, 198.23], [268.7, 195.86], [267.42, 195.86], [267.44, 199.29], [270.36, 199.3], [270.36, 194.09], [268.93, 194.09], [268.93, 198.23]]]}	\N	f	{}	f	\N	11	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
60	{"en": "Car access"}	t	t	{"type": "Polygon", "coordinates": [[[353.88, 157.08], [343.89, 157.08], [343.88, 151.12], [354.13, 151.04], [364.71, 151.88], [386.49, 153.69], [389.56, 123.88], [399.94, 124.9], [396.01, 161.16], [353.88, 157.08]]]}	\N	t	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
52	{"en": "Corridor"}	t	t	{"type": "Polygon", "coordinates": [[[270.54, 192.77], [267.23, 192.76], [267.23, 195.92], [268.71, 195.91], [268.7, 194.21], [268.95, 194.23], [268.94, 194.87], [270.32, 194.87], [270.33, 194.29], [270.57, 194.28], [270.55, 207.92], [272.15, 207.92], [272.15, 191.91], [272.36, 191.91], [272.36, 184.39], [270.52, 184.39], [270.54, 192.77]]]}	\N	f	{}	f	\N	10	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
64	{"en": "Stairs B"}	t	t	{"type": "Polygon", "coordinates": [[[338.21, 201.08], [338.21, 207.65], [343.99, 207.64], [343.99, 201.08], [338.21, 201.08]]]}	\N	f	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
89	{"en": "WC for Men"}	t	t	{"type": "Polygon", "coordinates": [[[277.11, 120.32], [277.53, 115.88], [280.1, 116.13], [279.71, 120.55], [277.11, 120.32]]]}	\N	f	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
98	{"en": "Mezzanine"}	f	f	{"type": "Polygon", "coordinates": [[[272.11, 138.78], [274.29, 138.99], [274.02, 141.39], [276.48, 141.61], [276.85, 137.9], [278.21, 137.99], [278.53, 134.67], [272.53, 134.17], [272.11, 138.78]]]}	\N	f	{}	f	\N	10	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
101	{"en": "Stairs B - Level -1 to 0"}	t	t	{"type": "Polygon", "coordinates": [[[266.97, 233.92], [272.74, 233.92], [272.73, 232.33], [268.76, 232.33], [268.77, 231.89], [272.73, 231.89], [272.73, 230.31], [266.97, 230.31], [266.97, 233.92]]]}	\N	f	{}	f	\N	11	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
103	{"en": "Stairs B - Level 0 to 1"}	f	f	{"type": "Polygon", "coordinates": [[[266.97, 233.92], [272.74, 233.92], [272.73, 232.33], [268.76, 232.33], [268.77, 231.89], [272.73, 231.89], [272.73, 230.31], [266.97, 230.31], [266.97, 233.92]]]}	\N	f	{}	f	\N	85	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
78	{"en": "Stairs D - Level -2 to -1"}	t	t	{"type": "Polygon", "coordinates": [[[268.93, 198.23], [268.7, 198.23], [268.7, 196.11], [267.42, 196.11], [267.44, 199.29], [270.36, 199.3], [270.36, 195.22], [268.93, 195.22], [268.93, 198.23]]]}	\N	f	{}	f	\N	77	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
20	{"en": "Corridor Car Park - Foyer"}	f	t	{"type": "Polygon", "coordinates": [[[274.5, 203.23], [275.11, 203.2], [275.12, 206.09], [277.41, 206.11], [277.41, 199.69], [275.08, 199.68], [275.07, 201.79], [274.49, 201.83], [274.46, 179.37], [272.72, 179.37], [272.72, 223.14], [274.51, 223.14], [274.5, 203.23]]]}	\N	f	{}	f	\N	10	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
75	{"en": "Corridor"}	t	t	{"type": "Polygon", "coordinates": [[[274.54, 179.59], [274.54, 189.16], [272.22, 189.16], [272.21, 205.58], [270.75, 205.58], [270.65, 183.96], [272.76, 183.96], [272.76, 179.58], [274.54, 179.59]]]}	\N	f	{}	f	\N	34	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
79	{"en": "Stairs D - Level -2"}	t	t	{"type": "Polygon", "coordinates": [[[267.38, 197.91], [268.69, 197.91], [268.71, 194.37], [270.37, 194.36], [270.37, 192.56], [267.36, 192.56], [267.38, 197.91]]]}	\N	f	{}	f	\N	34	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
104	{"en": "Corridor"}	f	f	{"type": "Polygon", "coordinates": [[[272.65, 233.99], [283.6, 233.99], [283.6, 230.01], [272.65, 230.01], [272.65, 233.99]]]}	\N	f	{}	f	\N	37	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
92	{"en": "Corridor"}	f	f	{"type": "Polygon", "coordinates": [[[272.34, 137.49], [273.65, 122.59], [275.72, 122.77], [275.97, 120.33], [278.29, 120.53], [278.08, 123.02], [280.09, 123.21], [278.73, 138.08], [272.34, 137.49]]]}	\N	f	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
105	{"en": "Corridor"}	f	f	{"type": "Polygon", "coordinates": [[[272.62, 233.99], [283.48, 233.99], [283.48, 229.98], [274.53, 229.98], [274.53, 222.42], [274.66, 222.42], [274.66, 212.02], [274.47, 212.02], [274.47, 199.25], [272.71, 199.25], [272.62, 233.99]]]}	\N	f	{}	f	\N	38	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
107	{"en": "Stairs B"}	f	f	{"type": "Polygon", "coordinates": [[[266.97, 233.92], [272.74, 233.92], [272.73, 232.33], [268.76, 232.33], [268.77, 231.89], [272.73, 231.89], [272.73, 230.31], [266.97, 230.31], [266.97, 233.92]]]}	\N	f	{}	f	\N	82	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
102	{}	f	f	{"type": "Polygon", "coordinates": [[[266.97, 233.94], [272.75, 233.94], [272.75, 230.34], [266.97, 230.34], [266.97, 233.94]]]}	\N	f	{}	f	\N	38	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
35	{"en": "Car Park Level -2"}	t	t	{"type": "Polygon", "coordinates": [[[367.13, 157.98], [367.13, 180.44], [350.0, 180.44], [350.0, 183.19], [299.12, 183.19], [299.12, 180.56], [283.56, 180.56], [283.56, 183.31], [274.81, 183.31], [274.81, 179.37], [272.69, 179.37], [272.69, 173.12], [268.0, 173.12], [268.0, 156.12], [269.88, 156.12], [269.88, 153.37], [334.06, 153.37], [334.06, 157.98], [367.13, 157.98]]]}	\N	f	{}	f	\N	34	carpark	\N	{}	\N	\N	f	f	\N	\N	\N	f
32	{"en": "Corridor Main Lobby - Crane Hall"}	f	t	{"type": "Polygon", "coordinates": [[[271.86, 224.91], [259.65, 224.91], [259.65, 223.58], [271.86, 223.58], [271.86, 224.91]]]}	\N	f	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
93	{"en": "Noisteria Bar"}	t	t	{"type": "Polygon", "coordinates": [[[272.35, 137.07], [251.29, 135.14], [252.34, 124.92], [252.79, 124.22], [253.29, 123.74], [253.85, 123.36], [254.68, 122.99], [264.98, 123.97], [265.19, 121.84], [273.66, 122.61], [272.35, 137.07]]]}	\N	f	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
80	{"en": "Car Ramp"}	t	t	{"type": "Polygon", "coordinates": [[[335.8, 155.2], [335.2, 156.29], [334.55, 157.98], [341.05, 157.98], [341.05, 157.78], [342.07, 157.07], [343.12, 156.77], [350.82, 156.73], [353.91, 157.02], [354.92, 157.34], [355.44, 157.62], [355.84, 157.94], [355.84, 158.02], [362.3, 158.03], [361.84, 156.82], [361.26, 155.68], [360.56, 154.73], [359.63, 153.73], [358.53, 152.9], [357.19, 152.16], [355.89, 151.67], [354.83, 151.42], [351.13, 151.08], [343.14, 151.06], [341.79, 151.23], [340.49, 151.57], [339.46, 152.06], [338.54, 152.56], [336.83, 153.94], [335.8, 155.2]]]}	\N	f	{}	f	\N	77	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
81	{"en": "Car Ramp"}	t	t	{"type": "Polygon", "coordinates": [[[335.8, 155.2], [335.2, 156.29], [334.55, 157.98], [341.05, 157.98], [341.05, 157.78], [342.07, 157.07], [343.12, 156.77], [350.82, 156.73], [353.91, 157.02], [364.32, 158.05], [364.86, 152.13], [354.29, 151.1], [351.13, 151.08], [343.15, 151.04], [341.79, 151.23], [340.49, 151.57], [339.46, 152.06], [338.54, 152.56], [336.83, 153.94], [335.8, 155.2]]]}	\N	f	{}	f	\N	11	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
86	{"en": "Stairs B"}	t	t	{"type": "Polygon", "coordinates": [[[338.52, 203.55], [339.8, 203.55], [339.8, 206.23], [342.86, 206.24], [342.86, 207.6], [338.52, 207.6], [338.52, 203.55]]]}	\N	f	{}	f	\N	85	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
84	{"en": "A2 - Stairs B"}	f	f	{"type": "Polygon", "coordinates": [[[338.21, 201.08], [338.21, 207.65], [343.99, 207.64], [343.99, 201.08], [338.21, 201.08]]]}	\N	f	{}	f	\N	37	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
87	{"en": "Stairs B"}	f	f	{"type": "Polygon", "coordinates": [[[338.62, 202.49], [338.62, 207.6], [342.8, 207.6], [342.8, 205.38], [343.57, 205.38], [343.57, 203.28], [342.82, 203.28], [342.82, 202.52], [338.62, 202.49]]]}	\N	f	{}	f	\N	38	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
91	{"en": "Barrier Free WC"}	t	t	{"type": "Polygon", "coordinates": [[[273.72, 122.27], [273.93, 120.14], [275.85, 120.31], [275.64, 122.43], [273.72, 122.27]]]}	\N	f	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
90	{"en": "WC for Women"}	t	t	{"type": "Polygon", "coordinates": [[[273.92, 120.01], [274.35, 115.6], [277.36, 115.87], [276.97, 120.3], [273.92, 120.01]]]}	\N	f	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
109	{"en": "Elevator"}	t	f	{"type": "Polygon", "coordinates": [[[283.95, 231.93], [283.95, 230.23], [285.79, 230.23], [285.79, 231.93], [283.95, 231.93]]]}	\N	f	{}	f	\N	11	\N	elevator	{}	\N	\N	f	f	\N	\N	\N	f
97	{"en": "Corridor Car Park (A4)"}	f	f	{"type": "Polygon", "coordinates": [[[268.01, 155.99], [267.97, 149.0], [271.18, 148.99], [271.9, 141.19], [276.49, 141.59], [276.35, 143.25], [273.93, 143.04], [273.21, 150.85], [270.11, 150.87], [270.12, 153.04], [269.81, 153.04], [269.81, 155.98], [268.01, 155.99]]]}	\N	f	{}	f	\N	10	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
99	{"en": "Stairs"}	t	t	{"type": "Polygon", "coordinates": [[[277.05, 137.98], [278.0, 138.08], [277.59, 142.39], [276.64, 142.29], [277.05, 137.98]]]}	\N	f	{}	f	\N	11	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
114	{"en": "WC for Women"}	t	t	{"type": "Polygon", "coordinates": [[[260.14, 208.71], [260.14, 206.1], [263.73, 206.1], [263.73, 207.11], [264.21, 207.11], [264.21, 208.69], [260.14, 208.71]]]}	\N	f	{}	f	\N	38	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
115	{"en": "Barrier Free WC"}	t	t	{"type": "Polygon", "coordinates": [[[264.39, 208.67], [264.39, 207.17], [266.72, 207.17], [266.72, 208.66], [264.39, 208.67]]]}	\N	f	{}	f	\N	38	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
116	{"en": "WC for Men"}	t	t	{"type": "Polygon", "coordinates": [[[267.12, 206.09], [267.11, 207.16], [266.89, 207.16], [266.9, 208.67], [270.3, 208.68], [270.3, 206.08], [267.12, 206.09]]]}	\N	f	{}	f	\N	38	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
118	{"en": "Open Theather Steps"}	t	t	{"type": "Polygon", "coordinates": [[[284.05, 212.09], [284.05, 194.38], [301.53, 194.38], [301.53, 212.09], [284.05, 212.09]]]}	\N	f	{}	f	\N	11	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
117	{"en": "Corridor"}	f	f	{"type": "Polygon", "coordinates": [[[263.85, 207.03], [263.82, 201.33], [270.54, 201.3], [270.54, 199.69], [272.73, 199.69], [272.73, 203.64], [272.43, 203.64], [272.43, 205.89], [270.62, 205.89], [270.62, 203.47], [266.91, 203.47], [266.91, 207.0], [263.85, 207.03]]]}	\N	f	{}	f	\N	38	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
94	{"en": "Noisteria Restaurant"}	t	t	{"type": "Polygon", "coordinates": [[[277.93, 143.73], [278.45, 138.26], [278.8, 138.32], [280.22, 123.24], [300.23, 125.07], [298.3, 145.79], [277.93, 143.73]]]}	\N	f	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
95	{"en": "Entrance"}	f	f	{"type": "Polygon", "coordinates": [[[277.46, 143.69], [271.82, 143.16], [271.97, 141.6], [274.01, 141.78], [274.22, 139.46], [272.17, 139.25], [272.35, 137.59], [274.34, 137.77], [276.8, 138.01], [276.39, 142.09], [276.65, 142.12], [277.04, 137.98], [278.01, 138.07], [277.46, 143.69]]]}	\N	f	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
135	{"en": "A2 - Corridor West"}	f	f	{"type": "Polygon", "coordinates": [[[414.02, 190.85], [414.03, 189.37], [411.87, 189.36], [411.81, 195.58], [421.62, 195.58], [421.63, 200.44], [421.91, 200.44], [421.91, 201.15], [426.57, 201.15], [426.56, 190.86], [414.02, 190.85]]]}	\N	f	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
48	{"en": "WC"}	t	t	{"type": "Polygon", "coordinates": [[[419.81, 201.18], [412.0, 201.22], [412.0, 207.34], [420.99, 207.34], [420.99, 201.31], [420.77, 201.31], [420.77, 200.51], [421.34, 200.51], [421.34, 197.36], [419.78, 197.36], [419.81, 201.18]]]}	\N	f	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
83	{"en": "A2 - Stairs B Floor 1 to 2"}	f	f	{"type": "Polygon", "coordinates": [[[338.52, 201.23], [342.83, 201.23], [342.83, 202.48], [339.8, 202.47], [339.8, 206.23], [342.88, 206.24], [342.88, 207.6], [338.52, 207.6], [338.52, 201.23]]]}	\N	f	{}	f	\N	82	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
139	{"en": "A2 - Stairs A"}	f	f	{"type": "Polygon", "coordinates": [[[422.85, 207.52], [422.82, 205.37], [422.08, 205.35], [422.1, 203.22], [422.8, 203.16], [422.86, 202.42], [427.08, 202.42], [427.08, 207.54], [422.85, 207.52]]]}	\N	f	{}	f	\N	38	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
39	{"en": "Auditorium"}	t	t	{"type": "Polygon", "coordinates": [[[403.54, 197.3], [403.68, 207.16], [422.38, 207.2], [422.38, 207.52], [422.85, 207.52], [422.82, 205.38], [422.08, 205.35], [422.1, 203.22], [422.8, 203.16], [422.86, 202.42], [427.08, 202.42], [427.08, 197.3], [403.54, 197.3]]]}	\N	f	{}	f	\N	38	\N	\N	{}	1	\N	f	f	\N	\N	\N	f
136	{"en": "A2 - Stairs A Floor 0 to 1"}	f	f	{"type": "Polygon", "coordinates": [[[425.75, 203.58], [425.75, 206.55], [423.63, 206.54], [423.63, 207.68], [426.91, 207.68], [426.91, 203.58], [425.75, 203.58]]]}	\N	f	{}	f	\N	85	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
137	{"en": "A2 - Stairs A"}	f	f	{"type": "Polygon", "coordinates": [[[421.64, 207.7], [421.64, 201.35], [426.99, 201.35], [426.99, 207.72], [421.64, 207.7]]]}	\N	f	{}	f	\N	37	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
138	{"en": "A2 - Stairs A Floor 1 to 2"}	t	t	{"type": "Polygon", "coordinates": [[[426.91, 207.68], [422.6, 207.68], [422.6, 206.43], [425.63, 206.44], [425.63, 202.68], [422.57, 202.67], [422.57, 201.31], [426.91, 201.31], [426.91, 207.68]]]}	\N	f	{}	f	\N	82	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
5	{"en": "Elevator"}	t	f	{"type": "Polygon", "coordinates": [[[283.95, 231.93], [283.95, 230.23], [285.79, 230.23], [285.79, 231.93], [283.95, 231.93]]]}	\N	f	{}	f	\N	85	\N	elevator	{}	\N	\N	f	f	\N	\N	\N	f
4	{"en": "Elevator"}	t	f	{"type": "Polygon", "coordinates": [[[285.79, 234.0], [285.79, 232.3], [283.95, 232.3], [283.95, 234.0], [285.79, 234.0]]]}	\N	f	{}	f	\N	85	\N	elevator	{}	\N	\N	f	f	\N	\N	\N	f
41	{"en": "Elevator"}	t	f	{"type": "Polygon", "coordinates": [[[267.26, 205.83], [267.26, 203.71], [270.4, 203.71], [270.4, 205.8], [267.26, 205.83]]]}	\N	f	{}	f	\N	2	\N	elevator	{}	\N	\N	f	f	\N	\N	\N	f
50	{"en": "Elevator"}	t	f	{"type": "Polygon", "coordinates": [[[346.42, 190.69], [346.42, 188.99], [348.27, 188.99], [348.27, 190.69], [346.42, 190.69]]]}	\N	f	{}	f	\N	85	\N	elevator	{}	\N	\N	f	f	\N	\N	\N	f
100	{"en": "Elevator"}	t	f	{"type": "Polygon", "coordinates": [[[272.01, 140.98], [272.17, 139.27], [273.94, 139.44], [273.77, 141.14], [272.01, 140.98]]]}	\N	f	{}	f	\N	11	\N	elevator	{}	\N	\N	f	f	\N	\N	\N	f
96	{"en": "Elevator"}	t	f	{"type": "Polygon", "coordinates": [[[272.01, 141.37], [272.17, 139.5], [273.93, 139.67], [273.77, 141.54], [272.01, 141.37]]]}	\N	f	{}	f	\N	2	\N	elevator	{}	\N	\N	f	f	\N	\N	\N	f
110	{"en": "Elevator"}	t	f	{"type": "Polygon", "coordinates": [[[285.79, 234.0], [285.79, 232.3], [283.95, 232.3], [283.95, 234.0], [285.79, 234.0]]]}	\N	f	{}	f	\N	82	\N	elevator	{}	\N	\N	f	f	\N	\N	\N	f
108	{"en": "Elevator"}	t	f	{"type": "Polygon", "coordinates": [[[285.79, 234.0], [285.79, 232.3], [283.95, 232.3], [283.95, 234.0], [285.79, 234.0]]]}	\N	f	{}	f	\N	11	\N	elevator	{}	\N	\N	f	f	\N	\N	\N	f
76	{"en": "Elevator"}	t	f	{"type": "Polygon", "coordinates": [[[267.36, 205.58], [270.36, 205.58], [270.36, 203.59], [267.36, 203.59], [267.36, 205.58]]]}	\N	f	{}	f	\N	77	\N	elevator	{}	\N	\N	f	f	\N	\N	\N	f
88	{"en": "Elevator"}	t	f	{"type": "Polygon", "coordinates": [[[346.42, 190.69], [346.42, 188.99], [348.27, 188.99], [348.27, 190.69], [346.42, 190.69]]]}	\N	f	{}	f	\N	38	\N	elevator	{}	\N	\N	f	f	\N	\N	\N	f
111	{"en": "Elevator"}	t	f	{"type": "Polygon", "coordinates": [[[283.95, 231.93], [283.95, 230.23], [285.79, 230.23], [285.79, 231.93], [283.95, 231.93]]]}	\N	f	{}	f	\N	82	\N	elevator	{}	\N	\N	f	f	\N	\N	\N	f
113	{"en": "Elevator"}	t	f	{"type": "Polygon", "coordinates": [[[283.95, 231.93], [283.95, 230.23], [285.79, 230.23], [285.79, 231.93], [283.95, 231.93]]]}	\N	f	{}	f	\N	38	\N	elevator	{}	\N	\N	f	f	\N	\N	\N	f
112	{"en": "Elevator"}	t	f	{"type": "Polygon", "coordinates": [[[285.79, 234.0], [285.79, 232.3], [283.95, 232.3], [283.95, 234.0], [285.79, 234.0]]]}	\N	f	{}	f	\N	38	\N	elevator	{}	\N	\N	f	f	\N	\N	\N	f
142	{"en": "Elevator"}	t	f	{"type": "Polygon", "coordinates": [[[267.36, 205.58], [270.36, 205.58], [270.36, 203.59], [267.36, 203.59], [267.36, 205.58]]]}	\N	f	{}	f	\N	11	\N	elevator	{}	\N	\N	f	f	\N	\N	\N	f
61	{"en": "Piazza"}	t	t	{"type": "Polygon", "coordinates": [[[271.2, 143.67], [271.9, 138.0], [250.26, 135.96], [250.89, 129.75], [231.46, 127.99], [231.31, 139.99], [229.09, 144.68], [225.1, 149.11], [218.76, 151.9], [210.52, 151.46], [210.71, 194.43], [302.38, 194.13], [302.41, 200.83], [338.25, 200.75], [338.25, 185.5], [352.38, 185.5], [352.38, 180.37], [422.1, 180.52], [422.1, 184.79], [427.34, 184.8], [427.5, 201.0], [440.17, 201.0], [440.19, 164.3], [353.88, 157.25], [343.62, 157.25], [343.62, 150.0], [298.72, 146.28], [271.2, 143.67]]]}	\N	t	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
150	{"en": "Elevator"}	t	f	{"type": "Polygon", "coordinates": [[[411.86, 189.21], [411.86, 186.02], [414.01, 186.02], [414.01, 189.21], [411.86, 189.21]]]}	\N	f	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
151	{"en": "Elevator"}	t	f	{"type": "Polygon", "coordinates": [[[411.86, 189.21], [411.86, 186.02], [414.01, 186.02], [414.01, 189.21], [411.86, 189.21]]]}	\N	f	{}	f	\N	38	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
45	{"en": "Corridor"}	t	t	{"type": "Polygon", "coordinates": [[[422.17, 197.1], [426.54, 197.11], [426.53, 195.42], [427.24, 195.42], [427.24, 190.83], [414.01, 190.8], [414.01, 189.46], [411.87, 189.46], [411.87, 190.78], [350.56, 190.78], [350.58, 189.04], [348.54, 189.04], [348.54, 190.64], [349.83, 190.64], [349.83, 190.78], [339.26, 190.78], [339.29, 197.11], [343.46, 197.11], [343.48, 195.47], [422.14, 195.49], [422.17, 197.1]]]}	\N	f	{}	f	\N	38	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
59	{"en": "Corridor"}	t	t	{"type": "Polygon", "coordinates": [[[267.32, 194.29], [270.36, 194.29], [270.58, 194.29], [270.62, 201.23], [269.47, 201.23], [269.46, 203.47], [270.63, 203.47], [270.66, 211.77], [272.37, 211.77], [272.37, 192.83], [267.32, 192.84], [267.32, 194.29]]]}	\N	f	{}	f	\N	2	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
36	{"en": "Crane Hall"}	t	t	{"type": "Polygon", "coordinates": [[[272.22, 223.22], [272.22, 211.96], [205.64, 211.96], [205.64, 223.14], [272.22, 223.22]]]}	\N	f	{}	f	\N	2	\N	\N	{}	1	\N	f	f	\N	\N	\N	f
177	{"en": "Stairs D Floor 0 to 1"}	t	t	{"type": "Polygon", "coordinates": [[[267.39, 194.28], [268.67, 194.28], [268.67, 198.24], [269.01, 198.24], [269.0, 194.28], [270.27, 194.28], [270.27, 199.47], [267.41, 199.47], [267.39, 194.28]]]}	\N	f	{}	f	\N	85	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
22	{"en": "Foyer"}	t	t	{"type": "Polygon", "coordinates": [[[272.79, 223.14], [272.79, 234.0], [274.49, 234.0], [274.49, 233.84], [280.82, 233.84], [280.84, 240.05], [301.62, 240.06], [301.62, 229.84], [316.04, 229.84], [316.04, 223.15], [299.94, 223.15], [299.94, 222.57], [284.05, 222.57], [284.05, 223.1], [272.79, 223.14]]]}	\N	f	{}	f	\N	10	\N	\N	{}	2	\N	f	f	\N	\N	\N	f
175	{"en": "WC for Men"}	t	t	{"type": "Polygon", "coordinates": [[[267.12, 206.09], [267.11, 207.16], [266.89, 207.16], [266.9, 208.67], [270.3, 208.68], [270.3, 206.08], [267.12, 206.09]]]}	\N	f	{}	f	\N	37	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
171	{"en": "Corridor"}	f	t	{"type": "Polygon", "coordinates": [[[215.82, 203.44], [215.82, 201.25], [235.34, 201.25], [235.34, 198.92], [239.73, 198.92], [239.73, 201.23], [269.44, 201.23], [269.44, 203.47], [266.94, 203.47], [266.94, 206.91], [263.91, 206.91], [263.91, 203.39], [215.82, 203.44]]]}	\N	f	{}	f	\N	37	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
173	{"en": "WC for Women"}	t	t	{"type": "Polygon", "coordinates": [[[260.14, 208.71], [260.14, 206.1], [263.73, 206.1], [263.73, 207.11], [264.21, 207.11], [264.21, 208.69], [260.14, 208.71]]]}	\N	f	{}	f	\N	37	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
174	{"en": "Barrier Free WC"}	t	t	{"type": "Polygon", "coordinates": [[[264.39, 208.67], [264.39, 207.17], [266.72, 207.17], [266.72, 208.66], [264.39, 208.67]]]}	\N	f	{}	f	\N	37	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
172	{"en": "Corridor"}	t	t	{"type": "Polygon", "coordinates": [[[267.32, 194.29], [270.58, 194.29], [270.62, 201.23], [269.47, 201.23], [269.46, 203.47], [272.39, 203.47], [272.37, 192.83], [267.32, 192.84], [267.32, 194.29]]]}	\N	f	{}	f	\N	37	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
176	{"en": "Elevator"}	t	f	{"type": "Polygon", "coordinates": [[[267.26, 205.83], [267.26, 203.71], [270.4, 203.71], [270.4, 205.8], [267.26, 205.83]]]}	\N	f	{}	f	\N	37	\N	elevator	{}	\N	\N	f	f	\N	\N	\N	f
180	{"en": "NOI Board Room"}	t	t	{"type": "Polygon", "coordinates": [[[274.68, 207.31], [283.4, 207.33], [283.41, 202.24], [278.75, 202.24], [278.75, 203.4], [274.68, 203.41], [274.68, 207.31]]]}	\N	f	{}	f	\N	38	\N	\N	{}	2	\N	f	f	\N	\N	\N	f
181	{"en": "Stairs D Floor 1 to 2"}	t	t	{"type": "Polygon", "coordinates": [[[267.39, 194.28], [268.67, 194.28], [268.67, 198.24], [269.01, 198.24], [269.0, 194.28], [270.27, 194.28], [270.27, 199.47], [267.41, 199.47], [267.39, 194.28]]]}	\N	f	{}	f	\N	37	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
161	{"en": "Training Room"}	t	t	{"type": "Polygon", "coordinates": [[[223.6, 201.14], [223.59, 193.68], [221.64, 193.68], [221.64, 192.31], [234.85, 192.31], [234.85, 201.14], [223.6, 201.14]]]}	\N	f	{}	f	\N	37	\N	\N	{}	\N	\N	f	f	\N	\N	\N	f
160	{"en": "Speakers & Supporters Lounge"}	t	t	{"type": "Polygon", "coordinates": [[[249.41, 229.47], [258.94, 229.5], [258.97, 223.35], [249.41, 223.35], [249.41, 229.47]]]}	\N	f	{}	f	\N	2	\N	\N	{}	1	\N	f	f	\N	\N	\N	f
\.


--
-- Data for Name: mapdata_space_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_space_groups (id, space_id, locationgroup_id) FROM stdin;
1	4	3
2	5	3
3	14	13
4	16	9
5	16	7
6	17	8
7	17	9
8	19	9
9	19	18
11	24	23
12	25	23
13	26	23
15	29	28
16	30	28
17	35	13
18	39	23
19	40	9
20	40	7
21	41	3
22	42	9
23	42	7
24	43	9
25	43	18
27	27	23
28	47	8
29	47	9
30	47	18
31	47	7
32	48	8
33	48	9
34	48	18
35	48	7
36	50	3
38	54	9
39	54	18
40	55	8
41	55	9
42	56	8
43	56	9
44	57	9
45	57	18
14	89	7
26	90	9
37	89	9
46	91	9
47	91	18
48	90	8
49	100	3
50	109	3
51	108	3
52	110	3
53	111	3
54	112	3
55	113	3
56	114	8
57	114	9
58	115	9
59	115	18
60	116	9
61	116	7
62	94	123
63	93	123
65	27	21
66	26	21
67	25	21
68	24	21
69	39	21
70	142	3
71	76	3
73	150	3
74	151	3
75	88	3
1577	173	8
1578	173	9
1579	174	9
1580	174	18
1581	175	9
1582	175	7
1583	176	3
1585	180	169
204	161	21
205	161	23
1603	160	169
\.


--
-- Data for Name: mapdata_stair; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_stair (id, geometry, space_id, import_tag) FROM stdin;
108	{"type": "LineString", "coordinates": [[267.2, 198.2], [268.73, 198.2]]}	71	\N
109	{"type": "LineString", "coordinates": [[267.2, 197.9], [268.73, 197.9]]}	71	\N
12	{"type": "LineString", "coordinates": [[267.4, 197], [268.73, 197]]}	78	\N
13	{"type": "LineString", "coordinates": [[267.4, 197.3], [268.73, 197.3]]}	78	\N
110	{"type": "LineString", "coordinates": [[267.2, 197.6], [268.73, 197.6]]}	71	\N
14	{"type": "LineString", "coordinates": [[267.4, 197.6], [268.73, 197.6]]}	78	\N
111	{"type": "LineString", "coordinates": [[267.2, 197.3], [268.73, 197.3]]}	71	\N
112	{"type": "LineString", "coordinates": [[267.2, 197], [268.73, 197]]}	71	\N
113	{"type": "LineString", "coordinates": [[267.2, 196.7], [268.73, 196.7]]}	71	\N
114	{"type": "LineString", "coordinates": [[267.2, 196.4], [268.73, 196.4]]}	71	\N
15	{"type": "LineString", "coordinates": [[267.4, 197.9], [268.73, 197.9]]}	78	\N
115	{"type": "LineString", "coordinates": [[267.2, 196.1], [268.73, 196.1]]}	71	\N
121	{"type": "LineString", "coordinates": [[268.93, 198.2], [270.38, 198.2]]}	78	\N
122	{"type": "LineString", "coordinates": [[268.93, 197.9], [270.38, 197.9]]}	78	\N
123	{"type": "LineString", "coordinates": [[268.93, 197.6], [270.38, 197.6]]}	78	\N
124	{"type": "LineString", "coordinates": [[268.93, 197.3], [270.38, 197.3]]}	78	\N
125	{"type": "LineString", "coordinates": [[268.93, 197], [270.38, 197]]}	78	\N
10	{"type": "LineString", "coordinates": [[267.4, 196.4], [268.73, 196.4]]}	78	\N
11	{"type": "LineString", "coordinates": [[267.4, 196.7], [268.73, 196.7]]}	78	\N
126	{"type": "LineString", "coordinates": [[268.93, 196.7], [270.38, 196.7]]}	78	\N
127	{"type": "LineString", "coordinates": [[268.93, 196.4], [270.38, 196.4]]}	78	\N
128	{"type": "LineString", "coordinates": [[268.93, 196.1], [270.38, 196.1]]}	78	\N
129	{"type": "LineString", "coordinates": [[268.93, 195.8], [270.38, 195.8]]}	78	\N
130	{"type": "LineString", "coordinates": [[268.93, 195.5], [270.38, 195.5]]}	78	\N
215	{"type": "LineString", "coordinates": [[276.88, 139.57], [277.86, 139.66]]}	99	\N
167	{"type": "LineString", "coordinates": [[342.12, 207.62], [342.12, 206.19]]}	83	\N
168	{"type": "LineString", "coordinates": [[342.43, 207.62], [342.43, 206.19]]}	83	\N
169	{"type": "LineString", "coordinates": [[342.75, 207.62], [342.75, 206.19]]}	83	\N
199	{"type": "LineString", "coordinates": [[274.02, 141.24], [276.51, 141.47]]}	98	\N
201	{"type": "LineString", "coordinates": [[274.08, 140.68], [276.57, 140.91]]}	98	\N
203	{"type": "LineString", "coordinates": [[274.14, 140.12], [276.62, 140.35]]}	98	\N
205	{"type": "LineString", "coordinates": [[274.19, 139.55], [276.68, 139.78]]}	98	\N
207	{"type": "LineString", "coordinates": [[274.24, 138.99], [276.74, 139.22]]}	98	\N
209	{"type": "LineString", "coordinates": [[276.68, 141.73], [277.67, 141.82]]}	99	\N
211	{"type": "LineString", "coordinates": [[276.74, 141.18], [277.71, 141.28]]}	99	\N
213	{"type": "LineString", "coordinates": [[276.78, 140.65], [277.76, 140.74]]}	99	\N
217	{"type": "LineString", "coordinates": [[276.93, 139.03], [277.92, 139.12]]}	99	\N
219	{"type": "LineString", "coordinates": [[276.99, 138.49], [277.96, 138.59]]}	99	\N
226	{"type": "LineString", "coordinates": [[258.39, 137.74], [269.85, 138.8]]}	61	\N
195	{"type": "LineString", "coordinates": [[274.09, 140.47], [276.56, 140.7]]}	95	\N
2	{"type": "LineString", "coordinates": [[272.64, 207.92], [274.61, 207.93]]}	33	\N
1	{"type": "LineString", "coordinates": [[274.58, 211.98], [272.63, 211.99]]}	33	\N
197	{"type": "LineString", "coordinates": [[274.04, 141.01], [276.51, 141.24]]}	95	\N
200	{"type": "LineString", "coordinates": [[274.05, 140.96], [276.54, 141.19]]}	98	\N
174	{"type": "LineString", "coordinates": [[338.5, 203.83], [339.83, 203.83]]}	86	\N
175	{"type": "LineString", "coordinates": [[338.5, 204.12], [339.83, 204.12]]}	86	\N
176	{"type": "LineString", "coordinates": [[338.5, 204.41], [339.83, 204.41]]}	86	\N
177	{"type": "LineString", "coordinates": [[338.5, 204.69], [339.83, 204.69]]}	86	\N
178	{"type": "LineString", "coordinates": [[338.5, 204.98], [339.83, 204.98]]}	86	\N
179	{"type": "LineString", "coordinates": [[338.5, 205.27], [339.83, 205.27]]}	86	\N
180	{"type": "LineString", "coordinates": [[338.5, 205.56], [339.83, 205.56]]}	86	\N
181	{"type": "LineString", "coordinates": [[338.5, 205.84], [339.83, 205.84]]}	86	\N
182	{"type": "LineString", "coordinates": [[338.5, 206.13], [339.83, 206.13]]}	86	\N
183	{"type": "LineString", "coordinates": [[339.9, 207.62], [339.9, 206.19]]}	86	\N
184	{"type": "LineString", "coordinates": [[340.22, 207.62], [340.22, 206.19]]}	86	\N
185	{"type": "LineString", "coordinates": [[340.53, 207.62], [340.53, 206.19]]}	86	\N
186	{"type": "LineString", "coordinates": [[340.85, 207.62], [340.85, 206.19]]}	86	\N
187	{"type": "LineString", "coordinates": [[341.17, 207.62], [341.17, 206.19]]}	86	\N
188	{"type": "LineString", "coordinates": [[341.48, 207.62], [341.48, 206.19]]}	86	\N
189	{"type": "LineString", "coordinates": [[341.8, 207.62], [341.8, 206.19]]}	86	\N
190	{"type": "LineString", "coordinates": [[342.12, 207.62], [342.12, 206.19]]}	86	\N
191	{"type": "LineString", "coordinates": [[342.43, 207.62], [342.43, 206.19]]}	86	\N
192	{"type": "LineString", "coordinates": [[342.75, 207.62], [342.75, 206.19]]}	86	\N
202	{"type": "LineString", "coordinates": [[274.1, 140.4], [276.59, 140.63]]}	98	\N
204	{"type": "LineString", "coordinates": [[274.16, 139.83], [276.65, 140.06]]}	98	\N
206	{"type": "LineString", "coordinates": [[274.23, 139.27], [276.71, 139.5]]}	98	\N
208	{"type": "LineString", "coordinates": [[276.66, 142.0], [277.64, 142.09]]}	99	\N
210	{"type": "LineString", "coordinates": [[276.71, 141.46], [277.69, 141.55]]}	99	\N
212	{"type": "LineString", "coordinates": [[276.76, 140.92], [277.75, 141.02]]}	99	\N
214	{"type": "LineString", "coordinates": [[276.85, 139.85], [277.86, 139.94]]}	99	\N
216	{"type": "LineString", "coordinates": [[276.91, 139.3], [277.89, 139.39]]}	99	\N
218	{"type": "LineString", "coordinates": [[276.96, 138.77], [277.94, 138.86]]}	99	\N
225	{"type": "LineString", "coordinates": [[249.58, 133.34], [249.25, 136.9], [252.69, 137.21]]}	61	\N
227	{"type": "LineString", "coordinates": [[258.38, 138.01], [269.85, 139.08]]}	61	\N
228	{"type": "LineString", "coordinates": [[258.34, 138.29], [269.88, 139.34]]}	61	\N
229	{"type": "LineString", "coordinates": [[258.05, 138.37], [258.04, 138.53], [269.97, 139.65], [269.99, 139.43]]}	61	\N
230	{"type": "LineString", "coordinates": [[270.27, 139.44], [270.22, 139.92], [257.73, 138.78], [257.77, 138.34]]}	61	\N
231	{"type": "LineString", "coordinates": [[257.51, 138.32], [257.45, 139.03], [270.48, 140.23], [270.54, 139.49]]}	61	\N
193	{"type": "LineString", "coordinates": [[274.09, 139.92], [276.64, 140.15]]}	95	\N
194	{"type": "LineString", "coordinates": [[274.11, 140.19], [276.6, 140.42]]}	95	\N
196	{"type": "LineString", "coordinates": [[274.07, 140.74], [276.54, 140.97]]}	95	\N
198	{"type": "LineString", "coordinates": [[274.02, 141.28], [276.46, 141.51]]}	95	\N
94	{"type": "LineString", "coordinates": [[268.93, 198.2], [270.38, 198.2]]}	71	\N
95	{"type": "LineString", "coordinates": [[268.93, 197.9], [270.38, 197.9]]}	71	\N
96	{"type": "LineString", "coordinates": [[268.93, 197.6], [270.38, 197.6]]}	71	\N
97	{"type": "LineString", "coordinates": [[268.93, 197.3], [270.38, 197.3]]}	71	\N
98	{"type": "LineString", "coordinates": [[268.93, 197], [270.38, 197]]}	71	\N
99	{"type": "LineString", "coordinates": [[268.93, 196.7], [270.38, 196.7]]}	71	\N
100	{"type": "LineString", "coordinates": [[268.93, 196.4], [270.38, 196.4]]}	71	\N
101	{"type": "LineString", "coordinates": [[268.93, 196.1], [270.38, 196.1]]}	71	\N
102	{"type": "LineString", "coordinates": [[268.93, 195.8], [270.38, 195.8]]}	71	\N
103	{"type": "LineString", "coordinates": [[268.93, 195.5], [270.38, 195.5]]}	71	\N
104	{"type": "LineString", "coordinates": [[268.93, 195.2], [270.38, 195.2]]}	71	\N
105	{"type": "LineString", "coordinates": [[268.93, 194.9], [270.38, 194.9]]}	71	\N
106	{"type": "LineString", "coordinates": [[268.93, 194.6], [270.38, 194.6]]}	71	\N
107	{"type": "LineString", "coordinates": [[268.93, 194.3], [270.38, 194.3]]}	71	\N
138	{"type": "LineString", "coordinates": [[342.64, 202.49], [342.64, 201.22]]}	83	\N
139	{"type": "LineString", "coordinates": [[342.35, 202.49], [342.35, 201.22]]}	83	\N
140	{"type": "LineString", "coordinates": [[342.06, 202.49], [342.06, 201.22]]}	83	\N
141	{"type": "LineString", "coordinates": [[341.77, 202.49], [341.77, 201.22]]}	83	\N
142	{"type": "LineString", "coordinates": [[341.48, 202.49], [341.48, 201.22]]}	83	\N
143	{"type": "LineString", "coordinates": [[341.18, 202.49], [341.18, 201.22]]}	83	\N
144	{"type": "LineString", "coordinates": [[340.89, 202.49], [340.89, 201.22]]}	83	\N
145	{"type": "LineString", "coordinates": [[340.6, 202.49], [340.6, 201.22]]}	83	\N
146	{"type": "LineString", "coordinates": [[340.31, 202.49], [340.31, 201.22]]}	83	\N
147	{"type": "LineString", "coordinates": [[338.5, 202.68], [339.83, 202.68]]}	83	\N
148	{"type": "LineString", "coordinates": [[338.5, 202.97], [339.83, 202.97]]}	83	\N
149	{"type": "LineString", "coordinates": [[338.5, 203.26], [339.83, 203.26]]}	83	\N
150	{"type": "LineString", "coordinates": [[338.5, 203.54], [339.83, 203.54]]}	83	\N
151	{"type": "LineString", "coordinates": [[338.5, 203.83], [339.83, 203.83]]}	83	\N
152	{"type": "LineString", "coordinates": [[338.5, 204.12], [339.83, 204.12]]}	83	\N
153	{"type": "LineString", "coordinates": [[338.5, 204.41], [339.83, 204.41]]}	83	\N
154	{"type": "LineString", "coordinates": [[338.5, 204.69], [339.83, 204.69]]}	83	\N
155	{"type": "LineString", "coordinates": [[338.5, 204.98], [339.83, 204.98]]}	83	\N
156	{"type": "LineString", "coordinates": [[338.5, 205.27], [339.83, 205.27]]}	83	\N
157	{"type": "LineString", "coordinates": [[338.5, 205.56], [339.83, 205.56]]}	83	\N
158	{"type": "LineString", "coordinates": [[338.5, 205.84], [339.83, 205.84]]}	83	\N
159	{"type": "LineString", "coordinates": [[338.5, 206.13], [339.83, 206.13]]}	83	\N
160	{"type": "LineString", "coordinates": [[339.9, 207.62], [339.9, 206.19]]}	83	\N
161	{"type": "LineString", "coordinates": [[340.22, 207.62], [340.22, 206.19]]}	83	\N
162	{"type": "LineString", "coordinates": [[340.53, 207.62], [340.53, 206.19]]}	83	\N
163	{"type": "LineString", "coordinates": [[340.85, 207.62], [340.85, 206.19]]}	83	\N
164	{"type": "LineString", "coordinates": [[341.17, 207.62], [341.17, 206.19]]}	83	\N
165	{"type": "LineString", "coordinates": [[341.48, 207.62], [341.48, 206.19]]}	83	\N
166	{"type": "LineString", "coordinates": [[341.8, 207.62], [341.8, 206.19]]}	83	\N
232	{"type": "LineString", "coordinates": [[272.63, 211.71], [274.58, 211.71]]}	33	\N
233	{"type": "LineString", "coordinates": [[272.64, 211.43], [274.56, 211.43]]}	33	\N
234	{"type": "LineString", "coordinates": [[272.64, 207.65], [274.59, 207.65]]}	33	\N
235	{"type": "LineString", "coordinates": [[272.64, 207.36], [274.59, 207.36]]}	33	\N
240	{"type": "LineString", "coordinates": [[269.03, 231.92], [269.03, 230.29]]}	101	\N
241	{"type": "LineString", "coordinates": [[269.31, 231.92], [269.31, 230.29]]}	101	\N
242	{"type": "LineString", "coordinates": [[269.59, 231.92], [269.59, 230.29]]}	101	\N
243	{"type": "LineString", "coordinates": [[269.87, 231.92], [269.87, 230.29]]}	101	\N
244	{"type": "LineString", "coordinates": [[270.15, 231.92], [270.15, 230.29]]}	101	\N
245	{"type": "LineString", "coordinates": [[270.43, 231.92], [270.43, 230.29]]}	101	\N
246	{"type": "LineString", "coordinates": [[270.71, 231.92], [270.71, 230.29]]}	101	\N
247	{"type": "LineString", "coordinates": [[270.99, 231.92], [270.99, 230.29]]}	101	\N
248	{"type": "LineString", "coordinates": [[271.27, 231.92], [271.27, 230.29]]}	101	\N
249	{"type": "LineString", "coordinates": [[271.55, 231.92], [271.55, 230.29]]}	101	\N
250	{"type": "LineString", "coordinates": [[271.83, 231.92], [271.83, 230.29]]}	101	\N
251	{"type": "LineString", "coordinates": [[272.11, 231.92], [272.11, 230.29]]}	101	\N
252	{"type": "LineString", "coordinates": [[272.39, 231.92], [272.39, 230.29]]}	101	\N
253	{"type": "LineString", "coordinates": [[269.03, 233.94], [269.03, 232.3]]}	101	\N
254	{"type": "LineString", "coordinates": [[269.31, 233.94], [269.31, 232.3]]}	101	\N
255	{"type": "LineString", "coordinates": [[269.59, 233.94], [269.59, 232.3]]}	101	\N
256	{"type": "LineString", "coordinates": [[269.87, 233.94], [269.87, 232.3]]}	101	\N
257	{"type": "LineString", "coordinates": [[270.15, 233.94], [270.15, 232.3]]}	101	\N
258	{"type": "LineString", "coordinates": [[270.43, 233.94], [270.43, 232.3]]}	101	\N
259	{"type": "LineString", "coordinates": [[270.71, 233.94], [270.71, 232.3]]}	101	\N
260	{"type": "LineString", "coordinates": [[270.99, 233.94], [270.99, 232.3]]}	101	\N
261	{"type": "LineString", "coordinates": [[271.27, 233.94], [271.27, 232.3]]}	101	\N
262	{"type": "LineString", "coordinates": [[271.55, 233.94], [271.55, 232.3]]}	101	\N
263	{"type": "LineString", "coordinates": [[271.83, 233.94], [271.83, 232.3]]}	101	\N
264	{"type": "LineString", "coordinates": [[272.11, 233.94], [272.11, 232.3]]}	101	\N
265	{"type": "LineString", "coordinates": [[272.39, 233.94], [272.39, 232.3]]}	101	\N
266	{"type": "LineString", "coordinates": [[272.67, 233.94], [272.67, 232.3]]}	101	\N
267	{"type": "LineString", "coordinates": [[269.03, 231.92], [269.03, 230.29]]}	103	\N
268	{"type": "LineString", "coordinates": [[269.31, 231.92], [269.31, 230.29]]}	103	\N
269	{"type": "LineString", "coordinates": [[269.59, 231.92], [269.59, 230.29]]}	103	\N
270	{"type": "LineString", "coordinates": [[269.87, 231.92], [269.87, 230.29]]}	103	\N
271	{"type": "LineString", "coordinates": [[270.15, 231.92], [270.15, 230.29]]}	103	\N
272	{"type": "LineString", "coordinates": [[270.43, 231.92], [270.43, 230.29]]}	103	\N
273	{"type": "LineString", "coordinates": [[270.71, 231.92], [270.71, 230.29]]}	103	\N
274	{"type": "LineString", "coordinates": [[270.99, 231.92], [270.99, 230.29]]}	103	\N
275	{"type": "LineString", "coordinates": [[271.27, 231.92], [271.27, 230.29]]}	103	\N
276	{"type": "LineString", "coordinates": [[271.55, 231.92], [271.55, 230.29]]}	103	\N
277	{"type": "LineString", "coordinates": [[271.83, 231.92], [271.83, 230.29]]}	103	\N
278	{"type": "LineString", "coordinates": [[272.11, 231.92], [272.11, 230.29]]}	103	\N
279	{"type": "LineString", "coordinates": [[272.39, 231.92], [272.39, 230.29]]}	103	\N
280	{"type": "LineString", "coordinates": [[269.03, 233.94], [269.03, 232.3]]}	103	\N
281	{"type": "LineString", "coordinates": [[269.31, 233.94], [269.31, 232.3]]}	103	\N
282	{"type": "LineString", "coordinates": [[269.59, 233.94], [269.59, 232.3]]}	103	\N
283	{"type": "LineString", "coordinates": [[269.87, 233.94], [269.87, 232.3]]}	103	\N
284	{"type": "LineString", "coordinates": [[270.15, 233.94], [270.15, 232.3]]}	103	\N
285	{"type": "LineString", "coordinates": [[270.43, 233.94], [270.43, 232.3]]}	103	\N
286	{"type": "LineString", "coordinates": [[270.71, 233.94], [270.71, 232.3]]}	103	\N
287	{"type": "LineString", "coordinates": [[270.99, 233.94], [270.99, 232.3]]}	103	\N
288	{"type": "LineString", "coordinates": [[271.27, 233.94], [271.27, 232.3]]}	103	\N
289	{"type": "LineString", "coordinates": [[271.55, 233.94], [271.55, 232.3]]}	103	\N
290	{"type": "LineString", "coordinates": [[271.83, 233.94], [271.83, 232.3]]}	103	\N
291	{"type": "LineString", "coordinates": [[272.11, 233.94], [272.11, 232.3]]}	103	\N
292	{"type": "LineString", "coordinates": [[272.39, 233.94], [272.39, 232.3]]}	103	\N
293	{"type": "LineString", "coordinates": [[272.67, 233.94], [272.67, 232.3]]}	103	\N
294	{"type": "LineString", "coordinates": [[269.03, 231.92], [269.03, 230.29]]}	107	\N
295	{"type": "LineString", "coordinates": [[269.31, 231.92], [269.31, 230.29]]}	107	\N
296	{"type": "LineString", "coordinates": [[269.59, 231.92], [269.59, 230.29]]}	107	\N
297	{"type": "LineString", "coordinates": [[269.87, 231.92], [269.87, 230.29]]}	107	\N
298	{"type": "LineString", "coordinates": [[270.15, 231.92], [270.15, 230.29]]}	107	\N
299	{"type": "LineString", "coordinates": [[270.43, 231.92], [270.43, 230.29]]}	107	\N
300	{"type": "LineString", "coordinates": [[270.71, 231.92], [270.71, 230.29]]}	107	\N
301	{"type": "LineString", "coordinates": [[270.99, 231.92], [270.99, 230.29]]}	107	\N
302	{"type": "LineString", "coordinates": [[271.27, 231.92], [271.27, 230.29]]}	107	\N
303	{"type": "LineString", "coordinates": [[271.55, 231.92], [271.55, 230.29]]}	107	\N
304	{"type": "LineString", "coordinates": [[271.83, 231.92], [271.83, 230.29]]}	107	\N
305	{"type": "LineString", "coordinates": [[272.11, 231.92], [272.11, 230.29]]}	107	\N
306	{"type": "LineString", "coordinates": [[272.39, 231.92], [272.39, 230.29]]}	107	\N
307	{"type": "LineString", "coordinates": [[269.03, 233.94], [269.03, 232.3]]}	107	\N
308	{"type": "LineString", "coordinates": [[269.31, 233.94], [269.31, 232.3]]}	107	\N
309	{"type": "LineString", "coordinates": [[269.59, 233.94], [269.59, 232.3]]}	107	\N
310	{"type": "LineString", "coordinates": [[269.87, 233.94], [269.87, 232.3]]}	107	\N
311	{"type": "LineString", "coordinates": [[270.15, 233.94], [270.15, 232.3]]}	107	\N
312	{"type": "LineString", "coordinates": [[270.43, 233.94], [270.43, 232.3]]}	107	\N
313	{"type": "LineString", "coordinates": [[270.71, 233.94], [270.71, 232.3]]}	107	\N
314	{"type": "LineString", "coordinates": [[270.99, 233.94], [270.99, 232.3]]}	107	\N
315	{"type": "LineString", "coordinates": [[271.27, 233.94], [271.27, 232.3]]}	107	\N
316	{"type": "LineString", "coordinates": [[271.55, 233.94], [271.55, 232.3]]}	107	\N
317	{"type": "LineString", "coordinates": [[271.83, 233.94], [271.83, 232.3]]}	107	\N
318	{"type": "LineString", "coordinates": [[272.11, 233.94], [272.11, 232.3]]}	107	\N
319	{"type": "LineString", "coordinates": [[272.39, 233.94], [272.39, 232.3]]}	107	\N
320	{"type": "LineString", "coordinates": [[272.67, 233.94], [272.67, 232.3]]}	107	\N
323	{"type": "LineString", "coordinates": [[284.02, 195.77], [301.55, 195.77]]}	118	\N
324	{"type": "LineString", "coordinates": [[284.02, 197.12], [301.55, 197.12]]}	118	\N
325	{"type": "LineString", "coordinates": [[284.02, 198.48], [301.55, 198.48]]}	118	\N
326	{"type": "LineString", "coordinates": [[284.02, 199.83], [301.55, 199.83]]}	118	\N
327	{"type": "LineString", "coordinates": [[284.02, 201.19], [301.55, 201.19]]}	118	\N
328	{"type": "LineString", "coordinates": [[284.02, 202.54], [301.55, 202.54]]}	118	\N
329	{"type": "LineString", "coordinates": [[284.02, 203.9], [301.55, 203.9]]}	118	\N
330	{"type": "LineString", "coordinates": [[284.02, 205.25], [301.55, 205.25]]}	118	\N
331	{"type": "LineString", "coordinates": [[284.02, 206.6], [301.55, 206.6]]}	118	\N
332	{"type": "LineString", "coordinates": [[284.02, 207.96], [301.55, 207.96]]}	118	\N
333	{"type": "LineString", "coordinates": [[284.02, 209.31], [301.55, 209.31]]}	118	\N
334	{"type": "LineString", "coordinates": [[284.02, 210.67], [301.55, 210.67]]}	118	\N
335	{"type": "LineString", "coordinates": [[284.02, 212.02], [301.55, 212.02]]}	118	\N
336	{"type": "LineString", "coordinates": [[270.62, 207.07], [272.39, 207.07]]}	59	\N
337	{"type": "LineString", "coordinates": [[270.63, 206.76], [272.4, 206.76]]}	59	\N
338	{"type": "LineString", "coordinates": [[270.63, 206.46], [272.39, 206.46]]}	59	\N
339	{"type": "LineString", "coordinates": [[270.63, 206.15], [272.39, 206.15]]}	59	\N
340	{"type": "LineString", "coordinates": [[249.04, 133.31], [248.66, 137.4], [252.63, 137.77]]}	61	\N
341	{"type": "LineString", "coordinates": [[249.3, 133.32], [248.95, 137.15], [252.64, 137.5]]}	61	\N
342	{"type": "LineString", "coordinates": [[248.98, 133.05], [248.79, 133.04], [248.37, 137.64], [252.89, 138.06], [252.91, 137.9]]}	61	\N
343	{"type": "LineString", "coordinates": [[248.99, 132.78], [248.55, 132.74], [248.07, 137.88], [253.14, 138.35], [253.18, 137.95]]}	61	\N
344	{"type": "LineString", "coordinates": [[249.02, 132.51], [248.29, 132.44], [247.78, 138.13], [253.37, 138.64], [253.44, 137.96]]}	61	\N
352	{"type": "LineString", "coordinates": [[423.79, 207.72], [423.79, 206.48]]}	136	\N
353	{"type": "LineString", "coordinates": [[425.71, 207.73], [425.71, 206.46]]}	136	\N
356	{"type": "LineString", "coordinates": [[426.95, 203.7], [425.67, 203.7]]}	136	\N
357	{"type": "LineString", "coordinates": [[426.95, 204.04], [425.67, 204.04]]}	136	\N
358	{"type": "LineString", "coordinates": [[426.95, 204.38], [425.67, 204.38]]}	136	\N
359	{"type": "LineString", "coordinates": [[426.95, 204.71], [425.67, 204.71]]}	136	\N
360	{"type": "LineString", "coordinates": [[426.95, 205.05], [425.67, 205.05]]}	136	\N
361	{"type": "LineString", "coordinates": [[426.95, 205.39], [425.67, 205.39]]}	136	\N
362	{"type": "LineString", "coordinates": [[426.95, 205.73], [425.67, 205.73]]}	136	\N
363	{"type": "LineString", "coordinates": [[426.95, 206.06], [425.67, 206.06]]}	136	\N
364	{"type": "LineString", "coordinates": [[426.95, 206.4], [425.67, 206.4]]}	136	\N
365	{"type": "LineString", "coordinates": [[424, 207.73], [424, 206.46]]}	136	\N
366	{"type": "LineString", "coordinates": [[424.22, 207.73], [424.22, 206.46]]}	136	\N
367	{"type": "LineString", "coordinates": [[424.43, 207.73], [424.43, 206.46]]}	136	\N
368	{"type": "LineString", "coordinates": [[424.64, 207.73], [424.64, 206.46]]}	136	\N
369	{"type": "LineString", "coordinates": [[424.86, 207.73], [424.86, 206.46]]}	136	\N
370	{"type": "LineString", "coordinates": [[425.07, 207.73], [425.07, 206.46]]}	136	\N
371	{"type": "LineString", "coordinates": [[425.28, 207.73], [425.28, 206.46]]}	136	\N
372	{"type": "LineString", "coordinates": [[425.5, 207.73], [425.5, 206.46]]}	136	\N
379	{"type": "LineString", "coordinates": [[422.78, 202.7], [422.78, 201.24]]}	138	\N
380	{"type": "LineString", "coordinates": [[423.06, 202.7], [423.06, 201.24]]}	138	\N
381	{"type": "LineString", "coordinates": [[423.34, 202.7], [423.34, 201.24]]}	138	\N
382	{"type": "LineString", "coordinates": [[423.62, 202.7], [423.62, 201.24]]}	138	\N
383	{"type": "LineString", "coordinates": [[423.9, 202.7], [423.9, 201.24]]}	138	\N
384	{"type": "LineString", "coordinates": [[424.17, 202.7], [424.17, 201.24]]}	138	\N
385	{"type": "LineString", "coordinates": [[424.45, 202.7], [424.45, 201.24]]}	138	\N
386	{"type": "LineString", "coordinates": [[424.73, 202.7], [424.73, 201.24]]}	138	\N
387	{"type": "LineString", "coordinates": [[425.01, 202.7], [425.01, 201.24]]}	138	\N
388	{"type": "LineString", "coordinates": [[425.61, 202.72], [426.94, 202.72]]}	138	\N
389	{"type": "LineString", "coordinates": [[425.61, 203.01], [426.94, 203.01]]}	138	\N
390	{"type": "LineString", "coordinates": [[425.61, 203.3], [426.94, 203.3]]}	138	\N
391	{"type": "LineString", "coordinates": [[425.61, 203.59], [426.94, 203.59]]}	138	\N
392	{"type": "LineString", "coordinates": [[425.61, 203.88], [426.94, 203.88]]}	138	\N
393	{"type": "LineString", "coordinates": [[425.61, 204.17], [426.94, 204.17]]}	138	\N
394	{"type": "LineString", "coordinates": [[425.61, 204.46], [426.94, 204.46]]}	138	\N
395	{"type": "LineString", "coordinates": [[425.61, 204.74], [426.94, 204.74]]}	138	\N
396	{"type": "LineString", "coordinates": [[425.61, 205.03], [426.94, 205.03]]}	138	\N
397	{"type": "LineString", "coordinates": [[425.61, 205.32], [426.94, 205.32]]}	138	\N
398	{"type": "LineString", "coordinates": [[425.61, 205.61], [426.94, 205.61]]}	138	\N
399	{"type": "LineString", "coordinates": [[425.61, 205.9], [426.94, 205.9]]}	138	\N
400	{"type": "LineString", "coordinates": [[425.61, 206.19], [426.94, 206.19]]}	138	\N
401	{"type": "LineString", "coordinates": [[425.55, 206.39], [425.55, 207.71]]}	138	\N
402	{"type": "LineString", "coordinates": [[425.23, 206.39], [425.23, 207.71]]}	138	\N
403	{"type": "LineString", "coordinates": [[424.91, 206.39], [424.91, 207.71]]}	138	\N
404	{"type": "LineString", "coordinates": [[424.6, 206.39], [424.6, 207.71]]}	138	\N
405	{"type": "LineString", "coordinates": [[424.28, 206.39], [424.28, 207.71]]}	138	\N
406	{"type": "LineString", "coordinates": [[423.96, 206.39], [423.96, 207.71]]}	138	\N
407	{"type": "LineString", "coordinates": [[423.64, 206.39], [423.64, 207.71]]}	138	\N
408	{"type": "LineString", "coordinates": [[423.33, 206.39], [423.33, 207.71]]}	138	\N
409	{"type": "LineString", "coordinates": [[423.01, 206.39], [423.01, 207.71]]}	138	\N
410	{"type": "LineString", "coordinates": [[422.69, 206.39], [422.69, 207.71]]}	138	\N
411	{"type": "LineString", "coordinates": [[267.31, 194.56], [268.74, 194.57]]}	177	\N
412	{"type": "LineString", "coordinates": [[267.32, 195.37], [268.74, 195.38]]}	177	\N
413	{"type": "LineString", "coordinates": [[267.32, 195.91], [268.74, 195.92]]}	177	\N
414	{"type": "LineString", "coordinates": [[267.31, 195.1], [268.74, 195.11]]}	177	\N
415	{"type": "LineString", "coordinates": [[267.31, 194.83], [268.74, 194.84]]}	177	\N
416	{"type": "LineString", "coordinates": [[267.32, 195.64], [268.74, 195.65]]}	177	\N
417	{"type": "LineString", "coordinates": [[267.32, 196.18], [268.74, 196.19]]}	177	\N
418	{"type": "LineString", "coordinates": [[267.33, 197.26], [268.74, 197.27]]}	177	\N
419	{"type": "LineString", "coordinates": [[267.33, 197.53], [268.74, 197.54]]}	177	\N
420	{"type": "LineString", "coordinates": [[267.32, 196.45], [268.74, 196.46]]}	177	\N
421	{"type": "LineString", "coordinates": [[267.32, 196.72], [268.74, 196.73]]}	177	\N
422	{"type": "LineString", "coordinates": [[267.33, 197.8], [268.74, 197.81]]}	177	\N
423	{"type": "LineString", "coordinates": [[267.32, 196.99], [268.74, 197.0]]}	177	\N
425	{"type": "LineString", "coordinates": [[268.89, 198.08], [270.42, 198.08]]}	177	\N
426	{"type": "LineString", "coordinates": [[268.88, 197.52], [270.42, 197.52]]}	177	\N
427	{"type": "LineString", "coordinates": [[268.88, 197.8], [270.42, 197.8]]}	177	\N
428	{"type": "LineString", "coordinates": [[268.87, 194.76], [270.42, 194.76]]}	177	\N
429	{"type": "LineString", "coordinates": [[268.87, 195.87], [270.42, 195.87]]}	177	\N
430	{"type": "LineString", "coordinates": [[268.87, 195.04], [270.42, 195.04]]}	177	\N
431	{"type": "LineString", "coordinates": [[268.88, 196.14], [270.42, 196.14]]}	177	\N
432	{"type": "LineString", "coordinates": [[268.87, 195.31], [270.42, 195.31]]}	177	\N
433	{"type": "LineString", "coordinates": [[268.88, 196.42], [270.42, 196.42]]}	177	\N
434	{"type": "LineString", "coordinates": [[268.88, 196.7], [270.42, 196.7]]}	177	\N
435	{"type": "LineString", "coordinates": [[268.88, 197.25], [270.42, 197.25]]}	177	\N
436	{"type": "LineString", "coordinates": [[268.87, 195.59], [270.42, 195.59]]}	177	\N
437	{"type": "LineString", "coordinates": [[268.88, 196.97], [270.42, 196.97]]}	177	\N
438	{"type": "LineString", "coordinates": [[268.87, 194.48], [270.42, 194.48]]}	177	\N
\.


--
-- Data for Name: mapdata_theme; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_theme (id, titles, description, public, color_background, color_wall_fill, color_wall_border, color_door_fill, color_ground_fill, color_obstacles_default_fill, color_obstacles_default_border, last_updated, color_css_grid, color_css_header_background, color_css_header_text, color_css_header_text_hover, color_css_initial, color_css_modal_backdrop, color_css_overlay_background, color_css_primary, color_css_quaternary, color_css_quinary, color_css_route_dots_shadow, color_css_secondary, color_css_shadow, color_css_tertiary, color_logo, dark, "default", extra_css, funky, high_contrast, randomize_primary_color, icon_path, leaflet_marker_config) FROM stdin;
\.


--
-- Data for Name: mapdata_themelocationgroupbackgroundcolor; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_themelocationgroupbackgroundcolor (id, fill_color, border_color, location_group_id, theme_id) FROM stdin;
\.


--
-- Data for Name: mapdata_themeobstaclegroupbackgroundcolor; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_themeobstaclegroupbackgroundcolor (id, fill_color, border_color, obstacle_group_id, theme_id) FROM stdin;
\.


--
-- Data for Name: mapdata_waytype; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mapdata_waytype (id, titles, titles_plural, join_edges, up_separate, walk, color, icon_name, extra_seconds, speed, description_i18n, speed_up, description_up_i18n, level_change_description_i18n, avoid_by_default) FROM stdin;
1	{"en": "Stairway"}	{"en": "Stairways"}	t	t	t	#acea52	stairs	0	1.0	{"en": "Take the stairs downwards"}	1.0	{"en": "Take the stairs upwards"}	{"en": "Level change description"}	f
2	{"en": "Elevator"}	{"en": "Elevators"}	t	t	f	#ffffcc	elevator	0	1.0	{"en": "Take the elevator and {level_change_description}"}	1.0	{"en": "Take the elevator and {level_change_description}"}	{"en": "go to {level}"}	f
\.


--
-- Data for Name: mesh_firmwarebuild; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mesh_firmwarebuild (id, variant, chip, sha256_hash, project_description, "binary", version_id) FROM stdin;
\.


--
-- Data for Name: mesh_firmwarebuildboard; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mesh_firmwarebuildboard (id, board, build_id) FROM stdin;
\.


--
-- Data for Name: mesh_firmwareversion; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mesh_firmwareversion (id, project_name, version, idf_version, created, uploader_id) FROM stdin;
\.


--
-- Data for Name: mesh_meshnode; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mesh_meshnode (address, first_seen, last_signin, uplink_id, upstream_id) FROM stdin;
\.


--
-- Data for Name: mesh_meshuplink; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mesh_meshuplink (id, name, started, last_ping, end_reason, node_id) FROM stdin;
\.


--
-- Data for Name: mesh_nodemessage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mesh_nodemessage (id, datetime, data, src_node_id, message_type, uplink_id) FROM stdin;
\.


--
-- Data for Name: mesh_otaupdate; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mesh_otaupdate (id, created, build_id) FROM stdin;
\.


--
-- Data for Name: mesh_otaupdaterecipient; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mesh_otaupdaterecipient (id, node_id, update_id, status) FROM stdin;
\.


--
-- Data for Name: routing_routeoptions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.routing_routeoptions (user_id, data) FROM stdin;
1	{"mode": "fastest", "waytype_1": "allow", "waytype_2": "avoid", "walk_speed": "slow", "restrictions": "normal"}
\.


--
-- Data for Name: site_announcement; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.site_announcement (id, created, active_until, active, author_id, text_i18n) FROM stdin;
\.


--
-- Data for Name: site_siteupdate; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.site_siteupdate (id, created) FROM stdin;
1	2024-09-24 09:23:14.436108+00
\.


--
-- Name: api_secret_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.api_secret_id_seq', 1, false);


--
-- Name: api_token_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.api_token_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 276, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: control_userpermissions_review_group_reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.control_userpermissions_review_group_reports_id_seq', 1, false);


--
-- Name: control_userspaceaccess_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.control_userspaceaccess_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 66, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 267, true);


--
-- Name: editor_changeset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.editor_changeset_id_seq', 20, true);


--
-- Name: editor_changesetupdate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.editor_changesetupdate_id_seq', 196, true);


--
-- Name: mapdata_accesspermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_accesspermission_id_seq', 1, false);


--
-- Name: mapdata_accesspermissionssogrant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_accesspermissionssogrant_id_seq', 1, false);


--
-- Name: mapdata_accesspermissiontoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_accesspermissiontoken_id_seq', 1, false);


--
-- Name: mapdata_accessrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_accessrestriction_id_seq', 1, false);


--
-- Name: mapdata_accessrestrictiongroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_accessrestrictiongroup_id_seq', 1, false);


--
-- Name: mapdata_accessrestrictiongroup_members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_accessrestrictiongroup_members_id_seq', 1, false);


--
-- Name: mapdata_altitudearea_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_altitudearea_id_seq', 390, true);


--
-- Name: mapdata_altitudemarker_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_altitudemarker_id_seq', 65, true);


--
-- Name: mapdata_area_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_area_groups_id_seq', 118, true);


--
-- Name: mapdata_building_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_building_id_seq', 16, true);


--
-- Name: mapdata_cloneditemsync_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_cloneditemsync_id_seq', 1, false);


--
-- Name: mapdata_column_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_column_id_seq', 40, true);


--
-- Name: mapdata_crossdescription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_crossdescription_id_seq', 1, true);


--
-- Name: mapdata_dataoverlay_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_dataoverlay_id_seq', 1, false);


--
-- Name: mapdata_dataoverlayfeature_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_dataoverlayfeature_id_seq', 1, false);


--
-- Name: mapdata_door_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_door_id_seq', 75, true);


--
-- Name: mapdata_dynamiclocation_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_dynamiclocation_groups_id_seq', 1, false);


--
-- Name: mapdata_graphedge_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_graphedge_id_seq', 680, true);


--
-- Name: mapdata_graphnode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_graphnode_id_seq', 266, true);


--
-- Name: mapdata_groundaltitude_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_groundaltitude_id_seq', 14, true);


--
-- Name: mapdata_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_hole_id_seq', 13, true);


--
-- Name: mapdata_labelsettings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_labelsettings_id_seq', 3, true);


--
-- Name: mapdata_leavedescription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_leavedescription_id_seq', 1, true);


--
-- Name: mapdata_level_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_level_groups_id_seq', 1, false);


--
-- Name: mapdata_lineobstacle_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_lineobstacle_id_seq', 9, true);


--
-- Name: mapdata_loadgroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_loadgroup_id_seq', 1, false);


--
-- Name: mapdata_locationgroupcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_locationgroupcategory_id_seq', 5, true);


--
-- Name: mapdata_locationslug_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_locationslug_id_seq', 185, true);


--
-- Name: mapdata_mapupdate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_mapupdate_id_seq', 1979, true);


--
-- Name: mapdata_obstacle_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_obstacle_id_seq', 5, true);


--
-- Name: mapdata_obstaclegroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_obstaclegroup_id_seq', 1, false);


--
-- Name: mapdata_poi_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_poi_groups_id_seq', 128, true);


--
-- Name: mapdata_position_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_position_id_seq', 1, false);


--
-- Name: mapdata_ramp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_ramp_id_seq', 9, true);


--
-- Name: mapdata_rangingbeacon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_rangingbeacon_id_seq', 1, false);


--
-- Name: mapdata_report_created_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_report_created_groups_id_seq', 1, false);


--
-- Name: mapdata_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_report_id_seq', 1, false);


--
-- Name: mapdata_reportupdate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_reportupdate_id_seq', 1, false);


--
-- Name: mapdata_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_source_id_seq', 11, true);


--
-- Name: mapdata_space_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_space_groups_id_seq', 1603, true);


--
-- Name: mapdata_stair_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_stair_id_seq', 438, true);


--
-- Name: mapdata_theme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_theme_id_seq', 1, true);


--
-- Name: mapdata_themelocationgroupbackgroundcolor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_themelocationgroupbackgroundcolor_id_seq', 8, true);


--
-- Name: mapdata_themeobstaclegroupbackgroundcolor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_themeobstaclegroupbackgroundcolor_id_seq', 1, false);


--
-- Name: mapdata_waytype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_waytype_id_seq', 2, true);


--
-- Name: mapdata_wifimeasurement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mapdata_wifimeasurement_id_seq', 1, false);


--
-- Name: mesh_firmwarebuild_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mesh_firmwarebuild_id_seq', 1, false);


--
-- Name: mesh_firmwarebuildboard_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mesh_firmwarebuildboard_id_seq', 1, false);


--
-- Name: mesh_firmwareversion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mesh_firmwareversion_id_seq', 1, false);


--
-- Name: mesh_meshuplink_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mesh_meshuplink_id_seq', 1, false);


--
-- Name: mesh_nodemessage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mesh_nodemessage_id_seq', 1, false);


--
-- Name: mesh_otaupdate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mesh_otaupdate_id_seq', 1, false);


--
-- Name: mesh_otaupdaterecipient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mesh_otaupdaterecipient_id_seq', 1, false);


--
-- Name: site_announcement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.site_announcement_id_seq', 1, false);


--
-- Name: site_siteupdate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.site_siteupdate_id_seq', 1, true);


--
-- Name: api_secret api_secret_api_secret_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.api_secret
    ADD CONSTRAINT api_secret_api_secret_key UNIQUE (api_secret);


--
-- Name: api_secret api_secret_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.api_secret
    ADD CONSTRAINT api_secret_pkey PRIMARY KEY (id);


--
-- Name: api_secret api_secret_user_id_name_21b4a70e_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.api_secret
    ADD CONSTRAINT api_secret_user_id_name_21b4a70e_uniq UNIQUE (user_id, name);


--
-- Name: api_logintoken api_token_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.api_logintoken
    ADD CONSTRAINT api_token_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: control_userpermissions_review_group_reports control_userpermissions__userpermissions_id_locat_17cbbd3d_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_userpermissions_review_group_reports
    ADD CONSTRAINT control_userpermissions__userpermissions_id_locat_17cbbd3d_uniq UNIQUE (userpermissions_id, locationgroup_id);


--
-- Name: control_userpermissions control_userpermissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_userpermissions
    ADD CONSTRAINT control_userpermissions_pkey PRIMARY KEY (user_id);


--
-- Name: control_userpermissions_review_group_reports control_userpermissions_review_group_reports_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_userpermissions_review_group_reports
    ADD CONSTRAINT control_userpermissions_review_group_reports_pkey PRIMARY KEY (id);


--
-- Name: control_userspaceaccess control_userspaceaccess_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_userspaceaccess
    ADD CONSTRAINT control_userspaceaccess_pkey PRIMARY KEY (id);


--
-- Name: control_userspaceaccess control_userspaceaccess_user_id_space_id_224c3409_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_userspaceaccess
    ADD CONSTRAINT control_userspaceaccess_user_id_space_id_224c3409_uniq UNIQUE (user_id, space_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: editor_changeset editor_changeset_map_update_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.editor_changeset
    ADD CONSTRAINT editor_changeset_map_update_id_key UNIQUE (map_update_id);


--
-- Name: editor_changeset editor_changeset_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.editor_changeset
    ADD CONSTRAINT editor_changeset_pkey PRIMARY KEY (id);


--
-- Name: editor_changesetupdate editor_changesetupdate_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.editor_changesetupdate
    ADD CONSTRAINT editor_changesetupdate_pkey PRIMARY KEY (id);


--
-- Name: mapdata_accesspermission mapdata_accesspermission_author_id_unique_key_0644d161_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_accesspermission
    ADD CONSTRAINT mapdata_accesspermission_author_id_unique_key_0644d161_uniq UNIQUE (author_id, unique_key);


--
-- Name: mapdata_accesspermission mapdata_accesspermission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_accesspermission
    ADD CONSTRAINT mapdata_accesspermission_pkey PRIMARY KEY (id);


--
-- Name: mapdata_accesspermissionssogrant mapdata_accesspermission_provider_group_access_re_bf15c068_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_accesspermissionssogrant
    ADD CONSTRAINT mapdata_accesspermission_provider_group_access_re_bf15c068_uniq UNIQUE (provider, "group", access_restriction_id, access_restriction_group_id);


--
-- Name: mapdata_accesspermissionssogrant mapdata_accesspermissionssogrant_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_accesspermissionssogrant
    ADD CONSTRAINT mapdata_accesspermissionssogrant_pkey PRIMARY KEY (id);


--
-- Name: mapdata_accesspermissiontoken mapdata_accesspermissiontoken_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_accesspermissiontoken
    ADD CONSTRAINT mapdata_accesspermissiontoken_pkey PRIMARY KEY (id);


--
-- Name: mapdata_accesspermissiontoken mapdata_accesspermissiontoken_token_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_accesspermissiontoken
    ADD CONSTRAINT mapdata_accesspermissiontoken_token_key UNIQUE (token);


--
-- Name: mapdata_accessrestrictiongroup_members mapdata_accessrestrictio_accessrestrictiongroup_i_4fdf0e0b_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_accessrestrictiongroup_members
    ADD CONSTRAINT mapdata_accessrestrictio_accessrestrictiongroup_i_4fdf0e0b_uniq UNIQUE (accessrestrictiongroup_id, accessrestriction_id);


--
-- Name: mapdata_accessrestriction mapdata_accessrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_accessrestriction
    ADD CONSTRAINT mapdata_accessrestriction_pkey PRIMARY KEY (id);


--
-- Name: mapdata_accessrestrictiongroup_members mapdata_accessrestrictiongroup_members_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_accessrestrictiongroup_members
    ADD CONSTRAINT mapdata_accessrestrictiongroup_members_pkey PRIMARY KEY (id);


--
-- Name: mapdata_accessrestrictiongroup mapdata_accessrestrictiongroup_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_accessrestrictiongroup
    ADD CONSTRAINT mapdata_accessrestrictiongroup_pkey PRIMARY KEY (id);


--
-- Name: mapdata_altitudearea mapdata_altitudearea_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_altitudearea
    ADD CONSTRAINT mapdata_altitudearea_pkey PRIMARY KEY (id);


--
-- Name: mapdata_altitudemarker mapdata_altitudemarker_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_altitudemarker
    ADD CONSTRAINT mapdata_altitudemarker_pkey PRIMARY KEY (id);


--
-- Name: mapdata_area_groups mapdata_area_groups_area_id_locationgroup_id_573c1a07_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_area_groups
    ADD CONSTRAINT mapdata_area_groups_area_id_locationgroup_id_573c1a07_uniq UNIQUE (area_id, locationgroup_id);


--
-- Name: mapdata_area_groups mapdata_area_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_area_groups
    ADD CONSTRAINT mapdata_area_groups_pkey PRIMARY KEY (id);


--
-- Name: mapdata_area mapdata_area_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_area
    ADD CONSTRAINT mapdata_area_pkey PRIMARY KEY (locationslug_ptr_id);


--
-- Name: mapdata_building mapdata_building_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_building
    ADD CONSTRAINT mapdata_building_pkey PRIMARY KEY (id);


--
-- Name: mapdata_cloneditemsync mapdata_cloneditemsync_original_content_type_id_adfbd011_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_cloneditemsync
    ADD CONSTRAINT mapdata_cloneditemsync_original_content_type_id_adfbd011_uniq UNIQUE (original_content_type_id, original_object_id, cloned_content_type_id, cloned_object_id);


--
-- Name: mapdata_cloneditemsync mapdata_cloneditemsync_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_cloneditemsync
    ADD CONSTRAINT mapdata_cloneditemsync_pkey PRIMARY KEY (id);


--
-- Name: mapdata_column mapdata_column_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_column
    ADD CONSTRAINT mapdata_column_pkey PRIMARY KEY (id);


--
-- Name: mapdata_crossdescription mapdata_crossdescription_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_crossdescription
    ADD CONSTRAINT mapdata_crossdescription_pkey PRIMARY KEY (id);


--
-- Name: mapdata_crossdescription mapdata_crossdescription_space_id_origin_space_id_0efa52a4_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_crossdescription
    ADD CONSTRAINT mapdata_crossdescription_space_id_origin_space_id_0efa52a4_uniq UNIQUE (space_id, origin_space_id, target_space_id);


--
-- Name: mapdata_dataoverlay mapdata_dataoverlay_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_dataoverlay
    ADD CONSTRAINT mapdata_dataoverlay_pkey PRIMARY KEY (id);


--
-- Name: mapdata_dataoverlayfeature mapdata_dataoverlayfeature_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_dataoverlayfeature
    ADD CONSTRAINT mapdata_dataoverlayfeature_pkey PRIMARY KEY (id);


--
-- Name: mapdata_door mapdata_door_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_door
    ADD CONSTRAINT mapdata_door_name_key UNIQUE (name);


--
-- Name: mapdata_door mapdata_door_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_door
    ADD CONSTRAINT mapdata_door_pkey PRIMARY KEY (id);


--
-- Name: mapdata_dynamiclocation_groups mapdata_dynamiclocation__dynamiclocation_id_locat_d1a2f283_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_dynamiclocation_groups
    ADD CONSTRAINT mapdata_dynamiclocation__dynamiclocation_id_locat_d1a2f283_uniq UNIQUE (dynamiclocation_id, locationgroup_id);


--
-- Name: mapdata_dynamiclocation_groups mapdata_dynamiclocation_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_dynamiclocation_groups
    ADD CONSTRAINT mapdata_dynamiclocation_groups_pkey PRIMARY KEY (id);


--
-- Name: mapdata_dynamiclocation mapdata_dynamiclocation_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_dynamiclocation
    ADD CONSTRAINT mapdata_dynamiclocation_pkey PRIMARY KEY (locationslug_ptr_id);


--
-- Name: mapdata_graphedge mapdata_graphedge_from_node_id_to_node_id_69dfc18a_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_graphedge
    ADD CONSTRAINT mapdata_graphedge_from_node_id_to_node_id_69dfc18a_uniq UNIQUE (from_node_id, to_node_id);


--
-- Name: mapdata_graphedge mapdata_graphedge_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_graphedge
    ADD CONSTRAINT mapdata_graphedge_pkey PRIMARY KEY (id);


--
-- Name: mapdata_graphnode mapdata_graphnode_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_graphnode
    ADD CONSTRAINT mapdata_graphnode_pkey PRIMARY KEY (id);


--
-- Name: mapdata_groundaltitude mapdata_groundaltitude_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_groundaltitude
    ADD CONSTRAINT mapdata_groundaltitude_name_key UNIQUE (name);


--
-- Name: mapdata_groundaltitude mapdata_groundaltitude_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_groundaltitude
    ADD CONSTRAINT mapdata_groundaltitude_pkey PRIMARY KEY (id);


--
-- Name: mapdata_hole mapdata_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_hole
    ADD CONSTRAINT mapdata_hole_pkey PRIMARY KEY (id);


--
-- Name: mapdata_labelsettings mapdata_labelsettings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_labelsettings
    ADD CONSTRAINT mapdata_labelsettings_pkey PRIMARY KEY (id);


--
-- Name: mapdata_leavedescription mapdata_leavedescription_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_leavedescription
    ADD CONSTRAINT mapdata_leavedescription_pkey PRIMARY KEY (id);


--
-- Name: mapdata_leavedescription mapdata_leavedescription_space_id_target_space_id_91b3fce3_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_leavedescription
    ADD CONSTRAINT mapdata_leavedescription_space_id_target_space_id_91b3fce3_uniq UNIQUE (space_id, target_space_id);


--
-- Name: mapdata_level mapdata_level_base_altitude_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_level
    ADD CONSTRAINT mapdata_level_base_altitude_key UNIQUE (base_altitude);


--
-- Name: mapdata_level_groups mapdata_level_groups_level_id_locationgroup_id_a6e17493_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_level_groups
    ADD CONSTRAINT mapdata_level_groups_level_id_locationgroup_id_a6e17493_uniq UNIQUE (level_id, locationgroup_id);


--
-- Name: mapdata_level_groups mapdata_level_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_level_groups
    ADD CONSTRAINT mapdata_level_groups_pkey PRIMARY KEY (id);


--
-- Name: mapdata_level mapdata_level_level_index_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_level
    ADD CONSTRAINT mapdata_level_level_index_key UNIQUE (level_index);


--
-- Name: mapdata_level mapdata_level_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_level
    ADD CONSTRAINT mapdata_level_pkey PRIMARY KEY (locationslug_ptr_id);


--
-- Name: mapdata_level mapdata_level_short_label_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_level
    ADD CONSTRAINT mapdata_level_short_label_key UNIQUE (short_label);


--
-- Name: mapdata_lineobstacle mapdata_lineobstacle_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_lineobstacle
    ADD CONSTRAINT mapdata_lineobstacle_pkey PRIMARY KEY (id);


--
-- Name: mapdata_loadgroup mapdata_loadgroup_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_loadgroup
    ADD CONSTRAINT mapdata_loadgroup_name_key UNIQUE (name);


--
-- Name: mapdata_loadgroup mapdata_loadgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_loadgroup
    ADD CONSTRAINT mapdata_loadgroup_pkey PRIMARY KEY (id);


--
-- Name: mapdata_locationgroup mapdata_locationgroup_hub_import_type_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_locationgroup
    ADD CONSTRAINT mapdata_locationgroup_hub_import_type_key UNIQUE (hub_import_type);


--
-- Name: mapdata_locationgroup mapdata_locationgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_locationgroup
    ADD CONSTRAINT mapdata_locationgroup_pkey PRIMARY KEY (locationslug_ptr_id);


--
-- Name: mapdata_locationgroupcategory mapdata_locationgroupcategory_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_locationgroupcategory
    ADD CONSTRAINT mapdata_locationgroupcategory_name_key UNIQUE (name);


--
-- Name: mapdata_locationgroupcategory mapdata_locationgroupcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_locationgroupcategory
    ADD CONSTRAINT mapdata_locationgroupcategory_pkey PRIMARY KEY (id);


--
-- Name: mapdata_locationredirect mapdata_locationredirect_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_locationredirect
    ADD CONSTRAINT mapdata_locationredirect_pkey PRIMARY KEY (locationslug_ptr_id);


--
-- Name: mapdata_locationslug mapdata_locationslug_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_locationslug
    ADD CONSTRAINT mapdata_locationslug_pkey PRIMARY KEY (id);


--
-- Name: mapdata_locationslug mapdata_locationslug_slug_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_locationslug
    ADD CONSTRAINT mapdata_locationslug_slug_key UNIQUE (slug);


--
-- Name: mapdata_mapupdate mapdata_mapupdate_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_mapupdate
    ADD CONSTRAINT mapdata_mapupdate_pkey PRIMARY KEY (id);


--
-- Name: mapdata_obstacle mapdata_obstacle_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_obstacle
    ADD CONSTRAINT mapdata_obstacle_pkey PRIMARY KEY (id);


--
-- Name: mapdata_obstaclegroup mapdata_obstaclegroup_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_obstaclegroup
    ADD CONSTRAINT mapdata_obstaclegroup_pkey PRIMARY KEY (id);


--
-- Name: mapdata_poi_groups mapdata_poi_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_poi_groups
    ADD CONSTRAINT mapdata_poi_groups_pkey PRIMARY KEY (id);


--
-- Name: mapdata_poi_groups mapdata_poi_groups_poi_id_locationgroup_id_e97cd00b_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_poi_groups
    ADD CONSTRAINT mapdata_poi_groups_poi_id_locationgroup_id_e97cd00b_uniq UNIQUE (poi_id, locationgroup_id);


--
-- Name: mapdata_poi mapdata_poi_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_poi
    ADD CONSTRAINT mapdata_poi_pkey PRIMARY KEY (locationslug_ptr_id);


--
-- Name: mapdata_position mapdata_position_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_position
    ADD CONSTRAINT mapdata_position_pkey PRIMARY KEY (id);


--
-- Name: mapdata_position mapdata_position_secret_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_position
    ADD CONSTRAINT mapdata_position_secret_key UNIQUE (secret);


--
-- Name: mapdata_ramp mapdata_ramp_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_ramp
    ADD CONSTRAINT mapdata_ramp_pkey PRIMARY KEY (id);


--
-- Name: mapdata_rangingbeacon mapdata_rangingbeacon_bluetooth_address_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_rangingbeacon
    ADD CONSTRAINT mapdata_rangingbeacon_bluetooth_address_key UNIQUE (bluetooth_address);


--
-- Name: mapdata_rangingbeacon mapdata_rangingbeacon_node_number_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_rangingbeacon
    ADD CONSTRAINT mapdata_rangingbeacon_node_number_key UNIQUE (node_number);


--
-- Name: mapdata_rangingbeacon mapdata_rangingbeacon_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_rangingbeacon
    ADD CONSTRAINT mapdata_rangingbeacon_pkey PRIMARY KEY (id);


--
-- Name: mapdata_rangingbeacon mapdata_rangingbeacon_uwb_address_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_rangingbeacon
    ADD CONSTRAINT mapdata_rangingbeacon_uwb_address_key UNIQUE (uwb_address);


--
-- Name: mapdata_report_created_groups mapdata_report_created_g_report_id_locationgroup__27469fb6_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_report_created_groups
    ADD CONSTRAINT mapdata_report_created_g_report_id_locationgroup__27469fb6_uniq UNIQUE (report_id, locationgroup_id);


--
-- Name: mapdata_report_created_groups mapdata_report_created_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_report_created_groups
    ADD CONSTRAINT mapdata_report_created_groups_pkey PRIMARY KEY (id);


--
-- Name: mapdata_report mapdata_report_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_report
    ADD CONSTRAINT mapdata_report_pkey PRIMARY KEY (id);


--
-- Name: mapdata_reportupdate mapdata_reportupdate_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_reportupdate
    ADD CONSTRAINT mapdata_reportupdate_pkey PRIMARY KEY (id);


--
-- Name: mapdata_source mapdata_source_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_source
    ADD CONSTRAINT mapdata_source_name_key UNIQUE (name);


--
-- Name: mapdata_source mapdata_source_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_source
    ADD CONSTRAINT mapdata_source_pkey PRIMARY KEY (id);


--
-- Name: mapdata_space_groups mapdata_space_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_space_groups
    ADD CONSTRAINT mapdata_space_groups_pkey PRIMARY KEY (id);


--
-- Name: mapdata_space_groups mapdata_space_groups_space_id_locationgroup_id_170f4e14_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_space_groups
    ADD CONSTRAINT mapdata_space_groups_space_id_locationgroup_id_170f4e14_uniq UNIQUE (space_id, locationgroup_id);


--
-- Name: mapdata_space mapdata_space_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_space
    ADD CONSTRAINT mapdata_space_pkey PRIMARY KEY (locationslug_ptr_id);


--
-- Name: mapdata_stair mapdata_stair_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_stair
    ADD CONSTRAINT mapdata_stair_pkey PRIMARY KEY (id);


--
-- Name: mapdata_theme mapdata_theme_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_theme
    ADD CONSTRAINT mapdata_theme_pkey PRIMARY KEY (id);


--
-- Name: mapdata_themelocationgroupbackgroundcolor mapdata_themelocationgroupbackgroundcolor_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_themelocationgroupbackgroundcolor
    ADD CONSTRAINT mapdata_themelocationgroupbackgroundcolor_pkey PRIMARY KEY (id);


--
-- Name: mapdata_themeobstaclegroupbackgroundcolor mapdata_themeobstaclegroupbackgroundcolor_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_themeobstaclegroupbackgroundcolor
    ADD CONSTRAINT mapdata_themeobstaclegroupbackgroundcolor_pkey PRIMARY KEY (id);


--
-- Name: mapdata_waytype mapdata_waytype_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_waytype
    ADD CONSTRAINT mapdata_waytype_pkey PRIMARY KEY (id);


--
-- Name: mapdata_beaconmeasurement mapdata_wifimeasurement_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_beaconmeasurement
    ADD CONSTRAINT mapdata_wifimeasurement_pkey PRIMARY KEY (id);


--
-- Name: mesh_firmwarebuild mesh_firmwarebuild_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesh_firmwarebuild
    ADD CONSTRAINT mesh_firmwarebuild_pkey PRIMARY KEY (id);


--
-- Name: mesh_firmwarebuild mesh_firmwarebuild_sha256_hash_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesh_firmwarebuild
    ADD CONSTRAINT mesh_firmwarebuild_sha256_hash_key UNIQUE (sha256_hash);


--
-- Name: mesh_firmwarebuild mesh_firmwarebuild_version_id_variant_0930ed52_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesh_firmwarebuild
    ADD CONSTRAINT mesh_firmwarebuild_version_id_variant_0930ed52_uniq UNIQUE (version_id, variant);


--
-- Name: mesh_firmwarebuildboard mesh_firmwarebuildboard_build_id_board_e38ac95f_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesh_firmwarebuildboard
    ADD CONSTRAINT mesh_firmwarebuildboard_build_id_board_e38ac95f_uniq UNIQUE (build_id, board);


--
-- Name: mesh_firmwarebuildboard mesh_firmwarebuildboard_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesh_firmwarebuildboard
    ADD CONSTRAINT mesh_firmwarebuildboard_pkey PRIMARY KEY (id);


--
-- Name: mesh_firmwareversion mesh_firmwareversion_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesh_firmwareversion
    ADD CONSTRAINT mesh_firmwareversion_pkey PRIMARY KEY (id);


--
-- Name: mesh_firmwareversion mesh_firmwareversion_version_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesh_firmwareversion
    ADD CONSTRAINT mesh_firmwareversion_version_key UNIQUE (version);


--
-- Name: mesh_meshnode mesh_meshnode_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesh_meshnode
    ADD CONSTRAINT mesh_meshnode_pkey PRIMARY KEY (address);


--
-- Name: mesh_meshuplink mesh_meshuplink_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesh_meshuplink
    ADD CONSTRAINT mesh_meshuplink_pkey PRIMARY KEY (id);


--
-- Name: mesh_nodemessage mesh_nodemessage_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesh_nodemessage
    ADD CONSTRAINT mesh_nodemessage_pkey PRIMARY KEY (id);


--
-- Name: mesh_otaupdate mesh_otaupdate_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesh_otaupdate
    ADD CONSTRAINT mesh_otaupdate_pkey PRIMARY KEY (id);


--
-- Name: mesh_otaupdaterecipient mesh_otaupdaterecipient_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesh_otaupdaterecipient
    ADD CONSTRAINT mesh_otaupdaterecipient_pkey PRIMARY KEY (id);


--
-- Name: routing_routeoptions routing_routeoptions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.routing_routeoptions
    ADD CONSTRAINT routing_routeoptions_pkey PRIMARY KEY (user_id);


--
-- Name: site_announcement site_announcement_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_announcement
    ADD CONSTRAINT site_announcement_pkey PRIMARY KEY (id);


--
-- Name: site_siteupdate site_siteupdate_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_siteupdate
    ADD CONSTRAINT site_siteupdate_pkey PRIMARY KEY (id);


--
-- Name: api_secret_api_secret_e655122c_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX api_secret_api_secret_e655122c_like ON public.api_secret USING btree (api_secret varchar_pattern_ops);


--
-- Name: api_secret_user_id_74e5b7a6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX api_secret_user_id_74e5b7a6 ON public.api_secret USING btree (user_id);


--
-- Name: api_token_user_id_b646d2e7; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX api_token_user_id_b646d2e7 ON public.api_logintoken USING btree (user_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: control_userpermissions_re_locationgroup_id_96a3102b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX control_userpermissions_re_locationgroup_id_96a3102b ON public.control_userpermissions_review_group_reports USING btree (locationgroup_id);


--
-- Name: control_userpermissions_re_userpermissions_id_3d2fb35b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX control_userpermissions_re_userpermissions_id_3d2fb35b ON public.control_userpermissions_review_group_reports USING btree (userpermissions_id);


--
-- Name: control_userspaceaccess_space_id_c22914b2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX control_userspaceaccess_space_id_c22914b2 ON public.control_userspaceaccess USING btree (space_id);


--
-- Name: control_userspaceaccess_user_id_4ad6da16; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX control_userspaceaccess_user_id_4ad6da16 ON public.control_userspaceaccess USING btree (user_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: editor_changeset_assigned_to_id_3afcfbb7; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX editor_changeset_assigned_to_id_3afcfbb7 ON public.editor_changeset USING btree (assigned_to_id);


--
-- Name: editor_changeset_author_id_f4bf3c7f; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX editor_changeset_author_id_f4bf3c7f ON public.editor_changeset USING btree (author_id);


--
-- Name: editor_changeset_last_change_id_5be51ccf; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX editor_changeset_last_change_id_5be51ccf ON public.editor_changeset USING btree (last_change_id);


--
-- Name: editor_changeset_last_state_update_id_292a8530; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX editor_changeset_last_state_update_id_292a8530 ON public.editor_changeset USING btree (last_state_update_id);


--
-- Name: editor_changeset_last_update_id_e0d77297; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX editor_changeset_last_update_id_e0d77297 ON public.editor_changeset USING btree (last_update_id);


--
-- Name: editor_changeset_state_5a7a590f; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX editor_changeset_state_5a7a590f ON public.editor_changeset USING btree (state);


--
-- Name: editor_changeset_state_5a7a590f_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX editor_changeset_state_5a7a590f_like ON public.editor_changeset USING btree (state varchar_pattern_ops);


--
-- Name: editor_changesetupdate_assigned_to_id_373deb2a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX editor_changesetupdate_assigned_to_id_373deb2a ON public.editor_changesetupdate USING btree (assigned_to_id);


--
-- Name: editor_changesetupdate_changeset_id_aedbc5fb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX editor_changesetupdate_changeset_id_aedbc5fb ON public.editor_changesetupdate USING btree (changeset_id);


--
-- Name: editor_changesetupdate_state_ed535412; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX editor_changesetupdate_state_ed535412 ON public.editor_changesetupdate USING btree (state);


--
-- Name: editor_changesetupdate_state_ed535412_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX editor_changesetupdate_state_ed535412_like ON public.editor_changesetupdate USING btree (state varchar_pattern_ops);


--
-- Name: editor_changesetupdate_user_id_cd2202c2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX editor_changesetupdate_user_id_cd2202c2 ON public.editor_changesetupdate USING btree (user_id);


--
-- Name: mapdata_accesspermission_access_restriction_group_id_194c451d; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_accesspermission_access_restriction_group_id_194c451d ON public.mapdata_accesspermission USING btree (access_restriction_group_id);


--
-- Name: mapdata_accesspermission_access_restriction_id_6cf436d8; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_accesspermission_access_restriction_id_6cf436d8 ON public.mapdata_accesspermission USING btree (access_restriction_id);


--
-- Name: mapdata_accesspermission_author_id_f42ef447; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_accesspermission_author_id_f42ef447 ON public.mapdata_accesspermission USING btree (author_id);


--
-- Name: mapdata_accesspermission_sso_grant_id_425b2515; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_accesspermission_sso_grant_id_425b2515 ON public.mapdata_accesspermission USING btree (sso_grant_id);


--
-- Name: mapdata_accesspermission_token_id_e3647d7b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_accesspermission_token_id_e3647d7b ON public.mapdata_accesspermission USING btree (token_id);


--
-- Name: mapdata_accesspermission_user_id_0160fe04; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_accesspermission_user_id_0160fe04 ON public.mapdata_accesspermission USING btree (user_id);


--
-- Name: mapdata_accesspermissionss_access_restriction_group_i_960b8494; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_accesspermissionss_access_restriction_group_i_960b8494 ON public.mapdata_accesspermissionssogrant USING btree (access_restriction_group_id);


--
-- Name: mapdata_accesspermissionssogrant_access_restriction_id_d94eb926; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_accesspermissionssogrant_access_restriction_id_d94eb926 ON public.mapdata_accesspermissionssogrant USING btree (access_restriction_id);


--
-- Name: mapdata_accesspermissiontoken_author_id_4ae5d792; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_accesspermissiontoken_author_id_4ae5d792 ON public.mapdata_accesspermissiontoken USING btree (author_id);


--
-- Name: mapdata_accesspermissiontoken_can_grant_9d37516f; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_accesspermissiontoken_can_grant_9d37516f ON public.mapdata_accesspermissiontoken USING btree (can_grant);


--
-- Name: mapdata_accesspermissiontoken_redeemed_d5cc5d44; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_accesspermissiontoken_redeemed_d5cc5d44 ON public.mapdata_accesspermissiontoken USING btree (redeemed);


--
-- Name: mapdata_accesspermissiontoken_unlimited_2f438422; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_accesspermissiontoken_unlimited_2f438422 ON public.mapdata_accesspermissiontoken USING btree (unlimited);


--
-- Name: mapdata_accesspermissiontoken_valid_until_beec34ec; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_accesspermissiontoken_valid_until_beec34ec ON public.mapdata_accesspermissiontoken USING btree (valid_until);


--
-- Name: mapdata_accessrestrictiong_accessrestriction_id_dcf7959b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_accessrestrictiong_accessrestriction_id_dcf7959b ON public.mapdata_accessrestrictiongroup_members USING btree (accessrestriction_id);


--
-- Name: mapdata_accessrestrictiong_accessrestrictiongroup_id_85775731; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_accessrestrictiong_accessrestrictiongroup_id_85775731 ON public.mapdata_accessrestrictiongroup_members USING btree (accessrestrictiongroup_id);


--
-- Name: mapdata_altitudearea_level_id_b1320e34; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_altitudearea_level_id_b1320e34 ON public.mapdata_altitudearea USING btree (level_id);


--
-- Name: mapdata_altitudemarker_groundaltitude_id_13c52aa1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_altitudemarker_groundaltitude_id_13c52aa1 ON public.mapdata_altitudemarker USING btree (groundaltitude_id);


--
-- Name: mapdata_altitudemarker_space_id_cea7cf47; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_altitudemarker_space_id_cea7cf47 ON public.mapdata_altitudemarker USING btree (space_id);


--
-- Name: mapdata_area_access_restriction_id_a549eda1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_area_access_restriction_id_a549eda1 ON public.mapdata_area USING btree (access_restriction_id);


--
-- Name: mapdata_area_groups_area_id_68ea7b48; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_area_groups_area_id_68ea7b48 ON public.mapdata_area_groups USING btree (area_id);


--
-- Name: mapdata_area_groups_locationgroup_id_8cc32166; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_area_groups_locationgroup_id_8cc32166 ON public.mapdata_area_groups USING btree (locationgroup_id);


--
-- Name: mapdata_area_label_settings_id_7ccf6168; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_area_label_settings_id_7ccf6168 ON public.mapdata_area USING btree (label_settings_id);


--
-- Name: mapdata_area_load_group_contribute_id_255b59ff; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_area_load_group_contribute_id_255b59ff ON public.mapdata_area USING btree (load_group_contribute_id);


--
-- Name: mapdata_area_load_group_display_id_28bec361; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_area_load_group_display_id_28bec361 ON public.mapdata_area USING btree (load_group_display_id);


--
-- Name: mapdata_area_space_id_c0461a4c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_area_space_id_c0461a4c ON public.mapdata_area USING btree (space_id);


--
-- Name: mapdata_building_level_id_0e322f7a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_building_level_id_0e322f7a ON public.mapdata_building USING btree (level_id);


--
-- Name: mapdata_clo_cloned__027e07_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_clo_cloned__027e07_idx ON public.mapdata_cloneditemsync USING btree (cloned_content_type_id, cloned_object_id);


--
-- Name: mapdata_clo_origina_62f4ee_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_clo_origina_62f4ee_idx ON public.mapdata_cloneditemsync USING btree (original_content_type_id, original_object_id);


--
-- Name: mapdata_cloneditemsync_cloned_content_type_id_fd104fc2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_cloneditemsync_cloned_content_type_id_fd104fc2 ON public.mapdata_cloneditemsync USING btree (cloned_content_type_id);


--
-- Name: mapdata_cloneditemsync_original_content_type_id_279e190b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_cloneditemsync_original_content_type_id_279e190b ON public.mapdata_cloneditemsync USING btree (original_content_type_id);


--
-- Name: mapdata_column_access_restriction_id_e09dd08f; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_column_access_restriction_id_e09dd08f ON public.mapdata_column USING btree (access_restriction_id);


--
-- Name: mapdata_column_space_id_4f64c0d4; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_column_space_id_4f64c0d4 ON public.mapdata_column USING btree (space_id);


--
-- Name: mapdata_crossdescription_origin_space_id_88f8ef46; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_crossdescription_origin_space_id_88f8ef46 ON public.mapdata_crossdescription USING btree (origin_space_id);


--
-- Name: mapdata_crossdescription_space_id_5b117c2d; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_crossdescription_space_id_5b117c2d ON public.mapdata_crossdescription USING btree (space_id);


--
-- Name: mapdata_crossdescription_target_space_id_8f82991b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_crossdescription_target_space_id_8f82991b ON public.mapdata_crossdescription USING btree (target_space_id);


--
-- Name: mapdata_dataoverlay_access_restriction_id_0b2e0b0d; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_dataoverlay_access_restriction_id_0b2e0b0d ON public.mapdata_dataoverlay USING btree (access_restriction_id);


--
-- Name: mapdata_dataoverlay_edit_access_restriction_id_3ff41113; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_dataoverlay_edit_access_restriction_id_3ff41113 ON public.mapdata_dataoverlay USING btree (edit_access_restriction_id);


--
-- Name: mapdata_dataoverlayfeature_level_id_139e601b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_dataoverlayfeature_level_id_139e601b ON public.mapdata_dataoverlayfeature USING btree (level_id);


--
-- Name: mapdata_dataoverlayfeature_overlay_id_2390a1ec; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_dataoverlayfeature_overlay_id_2390a1ec ON public.mapdata_dataoverlayfeature USING btree (overlay_id);


--
-- Name: mapdata_door_access_restriction_id_2bfd4081; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_door_access_restriction_id_2bfd4081 ON public.mapdata_door USING btree (access_restriction_id);


--
-- Name: mapdata_door_level_id_f6d894b2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_door_level_id_f6d894b2 ON public.mapdata_door USING btree (level_id);


--
-- Name: mapdata_door_name_de946beb_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_door_name_de946beb_like ON public.mapdata_door USING btree (name varchar_pattern_ops);


--
-- Name: mapdata_dynamiclocation_access_restriction_id_aadb0fd6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_dynamiclocation_access_restriction_id_aadb0fd6 ON public.mapdata_dynamiclocation USING btree (access_restriction_id);


--
-- Name: mapdata_dynamiclocation_groups_dynamiclocation_id_e7af76aa; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_dynamiclocation_groups_dynamiclocation_id_e7af76aa ON public.mapdata_dynamiclocation_groups USING btree (dynamiclocation_id);


--
-- Name: mapdata_dynamiclocation_groups_locationgroup_id_3212157f; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_dynamiclocation_groups_locationgroup_id_3212157f ON public.mapdata_dynamiclocation_groups USING btree (locationgroup_id);


--
-- Name: mapdata_dynamiclocation_label_settings_id_3ae9d026; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_dynamiclocation_label_settings_id_3ae9d026 ON public.mapdata_dynamiclocation USING btree (label_settings_id);


--
-- Name: mapdata_dynamiclocation_load_group_display_id_7d753628; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_dynamiclocation_load_group_display_id_7d753628 ON public.mapdata_dynamiclocation USING btree (load_group_display_id);


--
-- Name: mapdata_graphedge_access_restriction_id_cccddf9b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_graphedge_access_restriction_id_cccddf9b ON public.mapdata_graphedge USING btree (access_restriction_id);


--
-- Name: mapdata_graphedge_from_node_id_98a76645; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_graphedge_from_node_id_98a76645 ON public.mapdata_graphedge USING btree (from_node_id);


--
-- Name: mapdata_graphedge_to_node_id_ba97ebb9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_graphedge_to_node_id_ba97ebb9 ON public.mapdata_graphedge USING btree (to_node_id);


--
-- Name: mapdata_graphedge_waytype_id_2f0d449d; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_graphedge_waytype_id_2f0d449d ON public.mapdata_graphedge USING btree (waytype_id);


--
-- Name: mapdata_graphnode_space_id_6c55bd00; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_graphnode_space_id_6c55bd00 ON public.mapdata_graphnode USING btree (space_id);


--
-- Name: mapdata_groundaltitude_name_cf324830_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_groundaltitude_name_cf324830_like ON public.mapdata_groundaltitude USING btree (name varchar_pattern_ops);


--
-- Name: mapdata_hole_space_id_20336b94; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_hole_space_id_20336b94 ON public.mapdata_hole USING btree (space_id);


--
-- Name: mapdata_leavedescription_space_id_33695534; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_leavedescription_space_id_33695534 ON public.mapdata_leavedescription USING btree (space_id);


--
-- Name: mapdata_leavedescription_target_space_id_31053028; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_leavedescription_target_space_id_31053028 ON public.mapdata_leavedescription USING btree (target_space_id);


--
-- Name: mapdata_level_access_restriction_id_22d67a77; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_level_access_restriction_id_22d67a77 ON public.mapdata_level USING btree (access_restriction_id);


--
-- Name: mapdata_level_groups_level_id_e60fa7db; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_level_groups_level_id_e60fa7db ON public.mapdata_level_groups USING btree (level_id);


--
-- Name: mapdata_level_groups_locationgroup_id_b712e10d; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_level_groups_locationgroup_id_b712e10d ON public.mapdata_level_groups USING btree (locationgroup_id);


--
-- Name: mapdata_level_label_settings_id_6617bb7b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_level_label_settings_id_6617bb7b ON public.mapdata_level USING btree (label_settings_id);


--
-- Name: mapdata_level_level_index_2249d3f2_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_level_level_index_2249d3f2_like ON public.mapdata_level USING btree (level_index varchar_pattern_ops);


--
-- Name: mapdata_level_load_group_display_id_8b4f7400; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_level_load_group_display_id_8b4f7400 ON public.mapdata_level USING btree (load_group_display_id);


--
-- Name: mapdata_level_on_top_of_id_10a0cb32; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_level_on_top_of_id_10a0cb32 ON public.mapdata_level USING btree (on_top_of_id);


--
-- Name: mapdata_level_short_label_4b45d051_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_level_short_label_4b45d051_like ON public.mapdata_level USING btree (short_label varchar_pattern_ops);


--
-- Name: mapdata_lineobstacle_group_id_62d35458; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_lineobstacle_group_id_62d35458 ON public.mapdata_lineobstacle USING btree (group_id);


--
-- Name: mapdata_lineobstacle_space_id_b9ab6bf6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_lineobstacle_space_id_b9ab6bf6 ON public.mapdata_lineobstacle USING btree (space_id);


--
-- Name: mapdata_loadgroup_name_dcc0a68c_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_loadgroup_name_dcc0a68c_like ON public.mapdata_loadgroup USING btree (name varchar_pattern_ops);


--
-- Name: mapdata_locationgroup_access_restriction_id_0f7d4828; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_locationgroup_access_restriction_id_0f7d4828 ON public.mapdata_locationgroup USING btree (access_restriction_id);


--
-- Name: mapdata_locationgroup_category_id_96775229; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_locationgroup_category_id_96775229 ON public.mapdata_locationgroup USING btree (category_id);


--
-- Name: mapdata_locationgroup_hierarchy_accf714c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_locationgroup_hierarchy_accf714c ON public.mapdata_locationgroup USING btree (hierarchy);


--
-- Name: mapdata_locationgroup_hub_import_type_4926843d_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_locationgroup_hub_import_type_4926843d_like ON public.mapdata_locationgroup USING btree (hub_import_type varchar_pattern_ops);


--
-- Name: mapdata_locationgroup_label_settings_id_bc60e3cf; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_locationgroup_label_settings_id_bc60e3cf ON public.mapdata_locationgroup USING btree (label_settings_id);


--
-- Name: mapdata_locationgroup_load_group_contribute_id_6858d49a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_locationgroup_load_group_contribute_id_6858d49a ON public.mapdata_locationgroup USING btree (load_group_contribute_id);


--
-- Name: mapdata_locationgroup_priority_44e13f62; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_locationgroup_priority_44e13f62 ON public.mapdata_locationgroup USING btree (priority);


--
-- Name: mapdata_locationgroupcategory_allow_areas_68afeb0a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_locationgroupcategory_allow_areas_68afeb0a ON public.mapdata_locationgroupcategory USING btree (allow_areas);


--
-- Name: mapdata_locationgroupcategory_allow_dynamic_locations_ced914d1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_locationgroupcategory_allow_dynamic_locations_ced914d1 ON public.mapdata_locationgroupcategory USING btree (allow_dynamic_locations);


--
-- Name: mapdata_locationgroupcategory_allow_levels_fcf0f4ee; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_locationgroupcategory_allow_levels_fcf0f4ee ON public.mapdata_locationgroupcategory USING btree (allow_levels);


--
-- Name: mapdata_locationgroupcategory_allow_pois_4efc5134; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_locationgroupcategory_allow_pois_4efc5134 ON public.mapdata_locationgroupcategory USING btree (allow_pois);


--
-- Name: mapdata_locationgroupcategory_allow_spaces_1085c8dd; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_locationgroupcategory_allow_spaces_1085c8dd ON public.mapdata_locationgroupcategory USING btree (allow_spaces);


--
-- Name: mapdata_locationgroupcategory_name_5b0451cf_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_locationgroupcategory_name_5b0451cf_like ON public.mapdata_locationgroupcategory USING btree (name varchar_pattern_ops);


--
-- Name: mapdata_locationgroupcategory_priority_a21c67cd; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_locationgroupcategory_priority_a21c67cd ON public.mapdata_locationgroupcategory USING btree (priority);


--
-- Name: mapdata_locationredirect_target_id_29d1b3d7; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_locationredirect_target_id_29d1b3d7 ON public.mapdata_locationredirect USING btree (target_id);


--
-- Name: mapdata_locationslug_slug_1c195013_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_locationslug_slug_1c195013_like ON public.mapdata_locationslug USING btree (slug varchar_pattern_ops);


--
-- Name: mapdata_mapupdate_datetime_750ec913; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_mapupdate_datetime_750ec913 ON public.mapdata_mapupdate USING btree (datetime);


--
-- Name: mapdata_mapupdate_user_id_faec6f5a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_mapupdate_user_id_faec6f5a ON public.mapdata_mapupdate USING btree (user_id);


--
-- Name: mapdata_obstacle_group_id_a59d9b9b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_obstacle_group_id_a59d9b9b ON public.mapdata_obstacle USING btree (group_id);


--
-- Name: mapdata_obstacle_space_id_0aa1260c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_obstacle_space_id_0aa1260c ON public.mapdata_obstacle USING btree (space_id);


--
-- Name: mapdata_poi_access_restriction_id_a6d0faf9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_poi_access_restriction_id_a6d0faf9 ON public.mapdata_poi USING btree (access_restriction_id);


--
-- Name: mapdata_poi_groups_locationgroup_id_46758a1e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_poi_groups_locationgroup_id_46758a1e ON public.mapdata_poi_groups USING btree (locationgroup_id);


--
-- Name: mapdata_poi_groups_poi_id_a7128a8c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_poi_groups_poi_id_a7128a8c ON public.mapdata_poi_groups USING btree (poi_id);


--
-- Name: mapdata_poi_label_settings_id_18a6c1cf; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_poi_label_settings_id_18a6c1cf ON public.mapdata_poi USING btree (label_settings_id);


--
-- Name: mapdata_poi_load_group_display_id_9952b636; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_poi_load_group_display_id_9952b636 ON public.mapdata_poi USING btree (load_group_display_id);


--
-- Name: mapdata_poi_space_id_dcb9f571; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_poi_space_id_dcb9f571 ON public.mapdata_poi USING btree (space_id);


--
-- Name: mapdata_position_owner_id_8ad6b67c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_position_owner_id_8ad6b67c ON public.mapdata_position USING btree (owner_id);


--
-- Name: mapdata_position_secret_fef1b916_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_position_secret_fef1b916_like ON public.mapdata_position USING btree (secret varchar_pattern_ops);


--
-- Name: mapdata_ramp_space_id_e6f57e61; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_ramp_space_id_e6f57e61 ON public.mapdata_ramp USING btree (space_id);


--
-- Name: mapdata_rangingbeacon_bluetooth_address_20e06b93_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_rangingbeacon_bluetooth_address_20e06b93_like ON public.mapdata_rangingbeacon USING btree (bluetooth_address varchar_pattern_ops);


--
-- Name: mapdata_rangingbeacon_space_id_2c6b1efe; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_rangingbeacon_space_id_2c6b1efe ON public.mapdata_rangingbeacon USING btree (space_id);


--
-- Name: mapdata_rangingbeacon_uwb_address_9d8771d7_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_rangingbeacon_uwb_address_9d8771d7_like ON public.mapdata_rangingbeacon USING btree (uwb_address varchar_pattern_ops);


--
-- Name: mapdata_report_assigned_to_id_fd3a8aab; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_report_assigned_to_id_fd3a8aab ON public.mapdata_report USING btree (assigned_to_id);


--
-- Name: mapdata_report_author_id_1dd5fc14; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_report_author_id_1dd5fc14 ON public.mapdata_report USING btree (author_id);


--
-- Name: mapdata_report_category_b3157148; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_report_category_b3157148 ON public.mapdata_report USING btree (category);


--
-- Name: mapdata_report_category_b3157148_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_report_category_b3157148_like ON public.mapdata_report USING btree (category varchar_pattern_ops);


--
-- Name: mapdata_report_created_groups_locationgroup_id_07a66aea; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_report_created_groups_locationgroup_id_07a66aea ON public.mapdata_report_created_groups USING btree (locationgroup_id);


--
-- Name: mapdata_report_created_groups_report_id_e8da1176; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_report_created_groups_report_id_e8da1176 ON public.mapdata_report_created_groups USING btree (report_id);


--
-- Name: mapdata_report_location_id_a1b9eef3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_report_location_id_a1b9eef3 ON public.mapdata_report USING btree (location_id);


--
-- Name: mapdata_reportupdate_assigned_to_id_7af867b4; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_reportupdate_assigned_to_id_7af867b4 ON public.mapdata_reportupdate USING btree (assigned_to_id);


--
-- Name: mapdata_reportupdate_author_id_b0e6e04b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_reportupdate_author_id_b0e6e04b ON public.mapdata_reportupdate USING btree (author_id);


--
-- Name: mapdata_reportupdate_report_id_ac2b4e37; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_reportupdate_report_id_ac2b4e37 ON public.mapdata_reportupdate USING btree (report_id);


--
-- Name: mapdata_source_access_restriction_id_10e0a307; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_source_access_restriction_id_10e0a307 ON public.mapdata_source USING btree (access_restriction_id);


--
-- Name: mapdata_source_name_626b3547_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_source_name_626b3547_like ON public.mapdata_source USING btree (name varchar_pattern_ops);


--
-- Name: mapdata_space_access_restriction_id_c295dd70; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_space_access_restriction_id_c295dd70 ON public.mapdata_space USING btree (access_restriction_id);


--
-- Name: mapdata_space_groups_locationgroup_id_352f0e89; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_space_groups_locationgroup_id_352f0e89 ON public.mapdata_space_groups USING btree (locationgroup_id);


--
-- Name: mapdata_space_groups_space_id_d9bb3827; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_space_groups_space_id_d9bb3827 ON public.mapdata_space_groups USING btree (space_id);


--
-- Name: mapdata_space_label_settings_id_b26b4945; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_space_label_settings_id_b26b4945 ON public.mapdata_space USING btree (label_settings_id);


--
-- Name: mapdata_space_level_id_b635bbeb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_space_level_id_b635bbeb ON public.mapdata_space USING btree (level_id);


--
-- Name: mapdata_space_load_group_contribute_id_70aed049; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_space_load_group_contribute_id_70aed049 ON public.mapdata_space USING btree (load_group_contribute_id);


--
-- Name: mapdata_space_load_group_display_id_5f9c18bf; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_space_load_group_display_id_5f9c18bf ON public.mapdata_space USING btree (load_group_display_id);


--
-- Name: mapdata_stair_space_id_6dd3ccb0; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_stair_space_id_6dd3ccb0 ON public.mapdata_stair USING btree (space_id);


--
-- Name: mapdata_themelocationgroup_location_group_id_2b664e23; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_themelocationgroup_location_group_id_2b664e23 ON public.mapdata_themelocationgroupbackgroundcolor USING btree (location_group_id);


--
-- Name: mapdata_themelocationgroupbackgroundcolor_theme_id_9baff4da; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_themelocationgroupbackgroundcolor_theme_id_9baff4da ON public.mapdata_themelocationgroupbackgroundcolor USING btree (theme_id);


--
-- Name: mapdata_themeobstaclegroup_obstacle_group_id_6a51b028; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_themeobstaclegroup_obstacle_group_id_6a51b028 ON public.mapdata_themeobstaclegroupbackgroundcolor USING btree (obstacle_group_id);


--
-- Name: mapdata_themeobstaclegroupbackgroundcolor_theme_id_629c5bc7; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_themeobstaclegroupbackgroundcolor_theme_id_629c5bc7 ON public.mapdata_themeobstaclegroupbackgroundcolor USING btree (theme_id);


--
-- Name: mapdata_wifimeasurement_author_id_e4b5352e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_wifimeasurement_author_id_e4b5352e ON public.mapdata_beaconmeasurement USING btree (author_id);


--
-- Name: mapdata_wifimeasurement_space_id_1d127e47; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mapdata_wifimeasurement_space_id_1d127e47 ON public.mapdata_beaconmeasurement USING btree (space_id);


--
-- Name: mesh_firmwarebuild_chip_f56e2ddf; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mesh_firmwarebuild_chip_f56e2ddf ON public.mesh_firmwarebuild USING btree (chip);


--
-- Name: mesh_firmwarebuild_sha256_hash_627d7144_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mesh_firmwarebuild_sha256_hash_627d7144_like ON public.mesh_firmwarebuild USING btree (sha256_hash varchar_pattern_ops);


--
-- Name: mesh_firmwarebuild_version_id_93e4b318; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mesh_firmwarebuild_version_id_93e4b318 ON public.mesh_firmwarebuild USING btree (version_id);


--
-- Name: mesh_firmwarebuildboard_board_711484ba; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mesh_firmwarebuildboard_board_711484ba ON public.mesh_firmwarebuildboard USING btree (board);


--
-- Name: mesh_firmwarebuildboard_board_711484ba_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mesh_firmwarebuildboard_board_711484ba_like ON public.mesh_firmwarebuildboard USING btree (board varchar_pattern_ops);


--
-- Name: mesh_firmwarebuildboard_build_id_902517a9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mesh_firmwarebuildboard_build_id_902517a9 ON public.mesh_firmwarebuildboard USING btree (build_id);


--
-- Name: mesh_firmwareversion_uploader_id_30c14fe3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mesh_firmwareversion_uploader_id_30c14fe3 ON public.mesh_firmwareversion USING btree (uploader_id);


--
-- Name: mesh_firmwareversion_version_5d057b34_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mesh_firmwareversion_version_5d057b34_like ON public.mesh_firmwareversion USING btree (version varchar_pattern_ops);


--
-- Name: mesh_meshnode_address_bbb2a884_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mesh_meshnode_address_bbb2a884_like ON public.mesh_meshnode USING btree (address varchar_pattern_ops);


--
-- Name: mesh_meshnode_uplink_id_cf6b04db; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mesh_meshnode_uplink_id_cf6b04db ON public.mesh_meshnode USING btree (uplink_id);


--
-- Name: mesh_meshnode_upstream_id_c946622a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mesh_meshnode_upstream_id_c946622a ON public.mesh_meshnode USING btree (upstream_id);


--
-- Name: mesh_meshnode_upstream_id_c946622a_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mesh_meshnode_upstream_id_c946622a_like ON public.mesh_meshnode USING btree (upstream_id varchar_pattern_ops);


--
-- Name: mesh_meshuplink_node_id_e0c94b45; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mesh_meshuplink_node_id_e0c94b45 ON public.mesh_meshuplink USING btree (node_id);


--
-- Name: mesh_meshuplink_node_id_e0c94b45_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mesh_meshuplink_node_id_e0c94b45_like ON public.mesh_meshuplink USING btree (node_id varchar_pattern_ops);


--
-- Name: mesh_nodemessage_datetime_5b8e7dce; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mesh_nodemessage_datetime_5b8e7dce ON public.mesh_nodemessage USING btree (datetime);


--
-- Name: mesh_nodemessage_message_type_17e37336; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mesh_nodemessage_message_type_17e37336 ON public.mesh_nodemessage USING btree (message_type);


--
-- Name: mesh_nodemessage_message_type_17e37336_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mesh_nodemessage_message_type_17e37336_like ON public.mesh_nodemessage USING btree (message_type varchar_pattern_ops);


--
-- Name: mesh_nodemessage_src_node_id_2754ac40; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mesh_nodemessage_src_node_id_2754ac40 ON public.mesh_nodemessage USING btree (src_node_id);


--
-- Name: mesh_nodemessage_src_node_id_2754ac40_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mesh_nodemessage_src_node_id_2754ac40_like ON public.mesh_nodemessage USING btree (src_node_id varchar_pattern_ops);


--
-- Name: mesh_nodemessage_uplink_id_22f38887; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mesh_nodemessage_uplink_id_22f38887 ON public.mesh_nodemessage USING btree (uplink_id);


--
-- Name: mesh_otaupdate_build_id_af114c77; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mesh_otaupdate_build_id_af114c77 ON public.mesh_otaupdate USING btree (build_id);


--
-- Name: mesh_otaupdaterecipient_node_id_0fd5e307; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mesh_otaupdaterecipient_node_id_0fd5e307 ON public.mesh_otaupdaterecipient USING btree (node_id);


--
-- Name: mesh_otaupdaterecipient_node_id_0fd5e307_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mesh_otaupdaterecipient_node_id_0fd5e307_like ON public.mesh_otaupdaterecipient USING btree (node_id varchar_pattern_ops);


--
-- Name: mesh_otaupdaterecipient_update_id_95637e8a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mesh_otaupdaterecipient_update_id_95637e8a ON public.mesh_otaupdaterecipient USING btree (update_id);


--
-- Name: only_one_active_ota; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX only_one_active_ota ON public.mesh_otaupdaterecipient USING btree (node_id) WHERE ((status)::text = 'running'::text);


--
-- Name: only_one_active_uplink; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX only_one_active_uplink ON public.mesh_meshuplink USING btree (node_id) WHERE (end_reason IS NULL);


--
-- Name: site_announcement_author_id_136858c5; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX site_announcement_author_id_136858c5 ON public.site_announcement USING btree (author_id);


--
-- Name: api_secret api_secret_user_id_74e5b7a6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.api_secret
    ADD CONSTRAINT api_secret_user_id_74e5b7a6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_logintoken api_token_user_id_b646d2e7_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.api_logintoken
    ADD CONSTRAINT api_token_user_id_b646d2e7_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: control_userpermissions_review_group_reports control_userpermissi_locationgroup_id_96a3102b_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_userpermissions_review_group_reports
    ADD CONSTRAINT control_userpermissi_locationgroup_id_96a3102b_fk_mapdata_l FOREIGN KEY (locationgroup_id) REFERENCES public.mapdata_locationgroup(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: control_userpermissions_review_group_reports control_userpermissi_userpermissions_id_3d2fb35b_fk_control_u; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_userpermissions_review_group_reports
    ADD CONSTRAINT control_userpermissi_userpermissions_id_3d2fb35b_fk_control_u FOREIGN KEY (userpermissions_id) REFERENCES public.control_userpermissions(user_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: control_userpermissions control_userpermissions_user_id_6003ff4e_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_userpermissions
    ADD CONSTRAINT control_userpermissions_user_id_6003ff4e_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: control_userspaceaccess control_userspaceacc_space_id_c22914b2_fk_mapdata_s; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_userspaceaccess
    ADD CONSTRAINT control_userspaceacc_space_id_c22914b2_fk_mapdata_s FOREIGN KEY (space_id) REFERENCES public.mapdata_space(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: control_userspaceaccess control_userspaceaccess_user_id_4ad6da16_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.control_userspaceaccess
    ADD CONSTRAINT control_userspaceaccess_user_id_4ad6da16_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: editor_changeset editor_changeset_assigned_to_id_3afcfbb7_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.editor_changeset
    ADD CONSTRAINT editor_changeset_assigned_to_id_3afcfbb7_fk_auth_user_id FOREIGN KEY (assigned_to_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: editor_changeset editor_changeset_author_id_f4bf3c7f_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.editor_changeset
    ADD CONSTRAINT editor_changeset_author_id_f4bf3c7f_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: editor_changeset editor_changeset_last_change_id_5be51ccf_fk_editor_ch; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.editor_changeset
    ADD CONSTRAINT editor_changeset_last_change_id_5be51ccf_fk_editor_ch FOREIGN KEY (last_change_id) REFERENCES public.editor_changesetupdate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: editor_changeset editor_changeset_last_state_update_id_292a8530_fk_editor_ch; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.editor_changeset
    ADD CONSTRAINT editor_changeset_last_state_update_id_292a8530_fk_editor_ch FOREIGN KEY (last_state_update_id) REFERENCES public.editor_changesetupdate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: editor_changeset editor_changeset_last_update_id_e0d77297_fk_editor_ch; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.editor_changeset
    ADD CONSTRAINT editor_changeset_last_update_id_e0d77297_fk_editor_ch FOREIGN KEY (last_update_id) REFERENCES public.editor_changesetupdate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: editor_changeset editor_changeset_map_update_id_aaecae3b_fk_mapdata_mapupdate_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.editor_changeset
    ADD CONSTRAINT editor_changeset_map_update_id_aaecae3b_fk_mapdata_mapupdate_id FOREIGN KEY (map_update_id) REFERENCES public.mapdata_mapupdate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: editor_changesetupdate editor_changesetupda_changeset_id_aedbc5fb_fk_editor_ch; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.editor_changesetupdate
    ADD CONSTRAINT editor_changesetupda_changeset_id_aedbc5fb_fk_editor_ch FOREIGN KEY (changeset_id) REFERENCES public.editor_changeset(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: editor_changesetupdate editor_changesetupdate_assigned_to_id_373deb2a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.editor_changesetupdate
    ADD CONSTRAINT editor_changesetupdate_assigned_to_id_373deb2a_fk_auth_user_id FOREIGN KEY (assigned_to_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: editor_changesetupdate editor_changesetupdate_user_id_cd2202c2_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.editor_changesetupdate
    ADD CONSTRAINT editor_changesetupdate_user_id_cd2202c2_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_accesspermission mapdata_accesspermis_access_restriction_g_194c451d_fk_mapdata_a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_accesspermission
    ADD CONSTRAINT mapdata_accesspermis_access_restriction_g_194c451d_fk_mapdata_a FOREIGN KEY (access_restriction_group_id) REFERENCES public.mapdata_accessrestrictiongroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_accesspermissionssogrant mapdata_accesspermis_access_restriction_g_960b8494_fk_mapdata_a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_accesspermissionssogrant
    ADD CONSTRAINT mapdata_accesspermis_access_restriction_g_960b8494_fk_mapdata_a FOREIGN KEY (access_restriction_group_id) REFERENCES public.mapdata_accessrestrictiongroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_accesspermission mapdata_accesspermis_access_restriction_i_6cf436d8_fk_mapdata_a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_accesspermission
    ADD CONSTRAINT mapdata_accesspermis_access_restriction_i_6cf436d8_fk_mapdata_a FOREIGN KEY (access_restriction_id) REFERENCES public.mapdata_accessrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_accesspermissionssogrant mapdata_accesspermis_access_restriction_i_d94eb926_fk_mapdata_a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_accesspermissionssogrant
    ADD CONSTRAINT mapdata_accesspermis_access_restriction_i_d94eb926_fk_mapdata_a FOREIGN KEY (access_restriction_id) REFERENCES public.mapdata_accessrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_accesspermissiontoken mapdata_accesspermis_author_id_4ae5d792_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_accesspermissiontoken
    ADD CONSTRAINT mapdata_accesspermis_author_id_4ae5d792_fk_auth_user FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_accesspermission mapdata_accesspermis_sso_grant_id_425b2515_fk_mapdata_a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_accesspermission
    ADD CONSTRAINT mapdata_accesspermis_sso_grant_id_425b2515_fk_mapdata_a FOREIGN KEY (sso_grant_id) REFERENCES public.mapdata_accesspermissionssogrant(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_accesspermission mapdata_accesspermis_token_id_e3647d7b_fk_mapdata_a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_accesspermission
    ADD CONSTRAINT mapdata_accesspermis_token_id_e3647d7b_fk_mapdata_a FOREIGN KEY (token_id) REFERENCES public.mapdata_accesspermissiontoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_accesspermission mapdata_accesspermission_author_id_f42ef447_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_accesspermission
    ADD CONSTRAINT mapdata_accesspermission_author_id_f42ef447_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_accesspermission mapdata_accesspermission_user_id_0160fe04_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_accesspermission
    ADD CONSTRAINT mapdata_accesspermission_user_id_0160fe04_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_accessrestrictiongroup_members mapdata_accessrestri_accessrestriction_id_dcf7959b_fk_mapdata_a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_accessrestrictiongroup_members
    ADD CONSTRAINT mapdata_accessrestri_accessrestriction_id_dcf7959b_fk_mapdata_a FOREIGN KEY (accessrestriction_id) REFERENCES public.mapdata_accessrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_accessrestrictiongroup_members mapdata_accessrestri_accessrestrictiongro_85775731_fk_mapdata_a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_accessrestrictiongroup_members
    ADD CONSTRAINT mapdata_accessrestri_accessrestrictiongro_85775731_fk_mapdata_a FOREIGN KEY (accessrestrictiongroup_id) REFERENCES public.mapdata_accessrestrictiongroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_altitudearea mapdata_altitudearea_level_id_b1320e34_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_altitudearea
    ADD CONSTRAINT mapdata_altitudearea_level_id_b1320e34_fk_mapdata_l FOREIGN KEY (level_id) REFERENCES public.mapdata_level(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_altitudemarker mapdata_altitudemark_groundaltitude_id_13c52aa1_fk_mapdata_g; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_altitudemarker
    ADD CONSTRAINT mapdata_altitudemark_groundaltitude_id_13c52aa1_fk_mapdata_g FOREIGN KEY (groundaltitude_id) REFERENCES public.mapdata_groundaltitude(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_altitudemarker mapdata_altitudemark_space_id_cea7cf47_fk_mapdata_s; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_altitudemarker
    ADD CONSTRAINT mapdata_altitudemark_space_id_cea7cf47_fk_mapdata_s FOREIGN KEY (space_id) REFERENCES public.mapdata_space(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_area mapdata_area_access_restriction_i_a549eda1_fk_mapdata_a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_area
    ADD CONSTRAINT mapdata_area_access_restriction_i_a549eda1_fk_mapdata_a FOREIGN KEY (access_restriction_id) REFERENCES public.mapdata_accessrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_area_groups mapdata_area_groups_area_id_68ea7b48_fk_mapdata_a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_area_groups
    ADD CONSTRAINT mapdata_area_groups_area_id_68ea7b48_fk_mapdata_a FOREIGN KEY (area_id) REFERENCES public.mapdata_area(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_area_groups mapdata_area_groups_locationgroup_id_8cc32166_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_area_groups
    ADD CONSTRAINT mapdata_area_groups_locationgroup_id_8cc32166_fk_mapdata_l FOREIGN KEY (locationgroup_id) REFERENCES public.mapdata_locationgroup(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_area mapdata_area_label_settings_id_7ccf6168_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_area
    ADD CONSTRAINT mapdata_area_label_settings_id_7ccf6168_fk_mapdata_l FOREIGN KEY (label_settings_id) REFERENCES public.mapdata_labelsettings(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_area mapdata_area_load_group_contribut_255b59ff_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_area
    ADD CONSTRAINT mapdata_area_load_group_contribut_255b59ff_fk_mapdata_l FOREIGN KEY (load_group_contribute_id) REFERENCES public.mapdata_loadgroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_area mapdata_area_load_group_display_i_28bec361_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_area
    ADD CONSTRAINT mapdata_area_load_group_display_i_28bec361_fk_mapdata_l FOREIGN KEY (load_group_display_id) REFERENCES public.mapdata_loadgroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_area mapdata_area_locationslug_ptr_id_41901eb8_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_area
    ADD CONSTRAINT mapdata_area_locationslug_ptr_id_41901eb8_fk_mapdata_l FOREIGN KEY (locationslug_ptr_id) REFERENCES public.mapdata_locationslug(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_area mapdata_area_space_id_c0461a4c_fk_mapdata_s; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_area
    ADD CONSTRAINT mapdata_area_space_id_c0461a4c_fk_mapdata_s FOREIGN KEY (space_id) REFERENCES public.mapdata_space(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_building mapdata_building_level_id_0e322f7a_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_building
    ADD CONSTRAINT mapdata_building_level_id_0e322f7a_fk_mapdata_l FOREIGN KEY (level_id) REFERENCES public.mapdata_level(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_cloneditemsync mapdata_cloneditemsy_cloned_content_type__fd104fc2_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_cloneditemsync
    ADD CONSTRAINT mapdata_cloneditemsy_cloned_content_type__fd104fc2_fk_django_co FOREIGN KEY (cloned_content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_cloneditemsync mapdata_cloneditemsy_original_content_typ_279e190b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_cloneditemsync
    ADD CONSTRAINT mapdata_cloneditemsy_original_content_typ_279e190b_fk_django_co FOREIGN KEY (original_content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_column mapdata_column_access_restriction_i_e09dd08f_fk_mapdata_a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_column
    ADD CONSTRAINT mapdata_column_access_restriction_i_e09dd08f_fk_mapdata_a FOREIGN KEY (access_restriction_id) REFERENCES public.mapdata_accessrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_column mapdata_column_space_id_4f64c0d4_fk_mapdata_s; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_column
    ADD CONSTRAINT mapdata_column_space_id_4f64c0d4_fk_mapdata_s FOREIGN KEY (space_id) REFERENCES public.mapdata_space(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_crossdescription mapdata_crossdescrip_origin_space_id_88f8ef46_fk_mapdata_s; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_crossdescription
    ADD CONSTRAINT mapdata_crossdescrip_origin_space_id_88f8ef46_fk_mapdata_s FOREIGN KEY (origin_space_id) REFERENCES public.mapdata_space(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_crossdescription mapdata_crossdescrip_space_id_5b117c2d_fk_mapdata_s; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_crossdescription
    ADD CONSTRAINT mapdata_crossdescrip_space_id_5b117c2d_fk_mapdata_s FOREIGN KEY (space_id) REFERENCES public.mapdata_space(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_crossdescription mapdata_crossdescrip_target_space_id_8f82991b_fk_mapdata_s; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_crossdescription
    ADD CONSTRAINT mapdata_crossdescrip_target_space_id_8f82991b_fk_mapdata_s FOREIGN KEY (target_space_id) REFERENCES public.mapdata_space(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_dataoverlay mapdata_dataoverlay_access_restriction_i_0b2e0b0d_fk_mapdata_a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_dataoverlay
    ADD CONSTRAINT mapdata_dataoverlay_access_restriction_i_0b2e0b0d_fk_mapdata_a FOREIGN KEY (access_restriction_id) REFERENCES public.mapdata_accessrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_dataoverlay mapdata_dataoverlay_edit_access_restrict_3ff41113_fk_mapdata_a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_dataoverlay
    ADD CONSTRAINT mapdata_dataoverlay_edit_access_restrict_3ff41113_fk_mapdata_a FOREIGN KEY (edit_access_restriction_id) REFERENCES public.mapdata_accessrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_dataoverlayfeature mapdata_dataoverlayf_level_id_139e601b_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_dataoverlayfeature
    ADD CONSTRAINT mapdata_dataoverlayf_level_id_139e601b_fk_mapdata_l FOREIGN KEY (level_id) REFERENCES public.mapdata_level(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_dataoverlayfeature mapdata_dataoverlayf_overlay_id_2390a1ec_fk_mapdata_d; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_dataoverlayfeature
    ADD CONSTRAINT mapdata_dataoverlayf_overlay_id_2390a1ec_fk_mapdata_d FOREIGN KEY (overlay_id) REFERENCES public.mapdata_dataoverlay(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_door mapdata_door_access_restriction_i_2bfd4081_fk_mapdata_a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_door
    ADD CONSTRAINT mapdata_door_access_restriction_i_2bfd4081_fk_mapdata_a FOREIGN KEY (access_restriction_id) REFERENCES public.mapdata_accessrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_door mapdata_door_level_id_f6d894b2_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_door
    ADD CONSTRAINT mapdata_door_level_id_f6d894b2_fk_mapdata_l FOREIGN KEY (level_id) REFERENCES public.mapdata_level(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_dynamiclocation mapdata_dynamiclocat_access_restriction_i_aadb0fd6_fk_mapdata_a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_dynamiclocation
    ADD CONSTRAINT mapdata_dynamiclocat_access_restriction_i_aadb0fd6_fk_mapdata_a FOREIGN KEY (access_restriction_id) REFERENCES public.mapdata_accessrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_dynamiclocation_groups mapdata_dynamiclocat_dynamiclocation_id_e7af76aa_fk_mapdata_d; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_dynamiclocation_groups
    ADD CONSTRAINT mapdata_dynamiclocat_dynamiclocation_id_e7af76aa_fk_mapdata_d FOREIGN KEY (dynamiclocation_id) REFERENCES public.mapdata_dynamiclocation(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_dynamiclocation mapdata_dynamiclocat_label_settings_id_3ae9d026_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_dynamiclocation
    ADD CONSTRAINT mapdata_dynamiclocat_label_settings_id_3ae9d026_fk_mapdata_l FOREIGN KEY (label_settings_id) REFERENCES public.mapdata_labelsettings(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_dynamiclocation mapdata_dynamiclocat_load_group_display_i_7d753628_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_dynamiclocation
    ADD CONSTRAINT mapdata_dynamiclocat_load_group_display_i_7d753628_fk_mapdata_l FOREIGN KEY (load_group_display_id) REFERENCES public.mapdata_loadgroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_dynamiclocation_groups mapdata_dynamiclocat_locationgroup_id_3212157f_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_dynamiclocation_groups
    ADD CONSTRAINT mapdata_dynamiclocat_locationgroup_id_3212157f_fk_mapdata_l FOREIGN KEY (locationgroup_id) REFERENCES public.mapdata_locationgroup(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_dynamiclocation mapdata_dynamiclocat_locationslug_ptr_id_d18ebf9f_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_dynamiclocation
    ADD CONSTRAINT mapdata_dynamiclocat_locationslug_ptr_id_d18ebf9f_fk_mapdata_l FOREIGN KEY (locationslug_ptr_id) REFERENCES public.mapdata_locationslug(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_graphedge mapdata_graphedge_access_restriction_i_cccddf9b_fk_mapdata_a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_graphedge
    ADD CONSTRAINT mapdata_graphedge_access_restriction_i_cccddf9b_fk_mapdata_a FOREIGN KEY (access_restriction_id) REFERENCES public.mapdata_accessrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_graphedge mapdata_graphedge_from_node_id_98a76645_fk_mapdata_graphnode_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_graphedge
    ADD CONSTRAINT mapdata_graphedge_from_node_id_98a76645_fk_mapdata_graphnode_id FOREIGN KEY (from_node_id) REFERENCES public.mapdata_graphnode(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_graphedge mapdata_graphedge_to_node_id_ba97ebb9_fk_mapdata_graphnode_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_graphedge
    ADD CONSTRAINT mapdata_graphedge_to_node_id_ba97ebb9_fk_mapdata_graphnode_id FOREIGN KEY (to_node_id) REFERENCES public.mapdata_graphnode(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_graphedge mapdata_graphedge_waytype_id_2f0d449d_fk_mapdata_waytype_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_graphedge
    ADD CONSTRAINT mapdata_graphedge_waytype_id_2f0d449d_fk_mapdata_waytype_id FOREIGN KEY (waytype_id) REFERENCES public.mapdata_waytype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_graphnode mapdata_graphnode_space_id_6c55bd00_fk_mapdata_s; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_graphnode
    ADD CONSTRAINT mapdata_graphnode_space_id_6c55bd00_fk_mapdata_s FOREIGN KEY (space_id) REFERENCES public.mapdata_space(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_hole mapdata_hole_space_id_20336b94_fk_mapdata_s; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_hole
    ADD CONSTRAINT mapdata_hole_space_id_20336b94_fk_mapdata_s FOREIGN KEY (space_id) REFERENCES public.mapdata_space(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_leavedescription mapdata_leavedescrip_space_id_33695534_fk_mapdata_s; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_leavedescription
    ADD CONSTRAINT mapdata_leavedescrip_space_id_33695534_fk_mapdata_s FOREIGN KEY (space_id) REFERENCES public.mapdata_space(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_leavedescription mapdata_leavedescrip_target_space_id_31053028_fk_mapdata_s; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_leavedescription
    ADD CONSTRAINT mapdata_leavedescrip_target_space_id_31053028_fk_mapdata_s FOREIGN KEY (target_space_id) REFERENCES public.mapdata_space(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_level mapdata_level_access_restriction_i_22d67a77_fk_mapdata_a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_level
    ADD CONSTRAINT mapdata_level_access_restriction_i_22d67a77_fk_mapdata_a FOREIGN KEY (access_restriction_id) REFERENCES public.mapdata_accessrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_level_groups mapdata_level_groups_level_id_e60fa7db_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_level_groups
    ADD CONSTRAINT mapdata_level_groups_level_id_e60fa7db_fk_mapdata_l FOREIGN KEY (level_id) REFERENCES public.mapdata_level(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_level_groups mapdata_level_groups_locationgroup_id_b712e10d_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_level_groups
    ADD CONSTRAINT mapdata_level_groups_locationgroup_id_b712e10d_fk_mapdata_l FOREIGN KEY (locationgroup_id) REFERENCES public.mapdata_locationgroup(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_level mapdata_level_label_settings_id_6617bb7b_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_level
    ADD CONSTRAINT mapdata_level_label_settings_id_6617bb7b_fk_mapdata_l FOREIGN KEY (label_settings_id) REFERENCES public.mapdata_labelsettings(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_level mapdata_level_load_group_display_i_8b4f7400_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_level
    ADD CONSTRAINT mapdata_level_load_group_display_i_8b4f7400_fk_mapdata_l FOREIGN KEY (load_group_display_id) REFERENCES public.mapdata_loadgroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_level mapdata_level_locationslug_ptr_id_ba5858ed_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_level
    ADD CONSTRAINT mapdata_level_locationslug_ptr_id_ba5858ed_fk_mapdata_l FOREIGN KEY (locationslug_ptr_id) REFERENCES public.mapdata_locationslug(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_level mapdata_level_on_top_of_id_10a0cb32_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_level
    ADD CONSTRAINT mapdata_level_on_top_of_id_10a0cb32_fk_mapdata_l FOREIGN KEY (on_top_of_id) REFERENCES public.mapdata_level(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_lineobstacle mapdata_lineobstacle_group_id_62d35458_fk_mapdata_o; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_lineobstacle
    ADD CONSTRAINT mapdata_lineobstacle_group_id_62d35458_fk_mapdata_o FOREIGN KEY (group_id) REFERENCES public.mapdata_obstaclegroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_lineobstacle mapdata_lineobstacle_space_id_b9ab6bf6_fk_mapdata_s; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_lineobstacle
    ADD CONSTRAINT mapdata_lineobstacle_space_id_b9ab6bf6_fk_mapdata_s FOREIGN KEY (space_id) REFERENCES public.mapdata_space(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_locationgroup mapdata_locationgrou_access_restriction_i_0f7d4828_fk_mapdata_a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_locationgroup
    ADD CONSTRAINT mapdata_locationgrou_access_restriction_i_0f7d4828_fk_mapdata_a FOREIGN KEY (access_restriction_id) REFERENCES public.mapdata_accessrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_locationgroup mapdata_locationgrou_category_id_96775229_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_locationgroup
    ADD CONSTRAINT mapdata_locationgrou_category_id_96775229_fk_mapdata_l FOREIGN KEY (category_id) REFERENCES public.mapdata_locationgroupcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_locationgroup mapdata_locationgrou_label_settings_id_bc60e3cf_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_locationgroup
    ADD CONSTRAINT mapdata_locationgrou_label_settings_id_bc60e3cf_fk_mapdata_l FOREIGN KEY (label_settings_id) REFERENCES public.mapdata_labelsettings(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_locationgroup mapdata_locationgrou_load_group_contribut_6858d49a_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_locationgroup
    ADD CONSTRAINT mapdata_locationgrou_load_group_contribut_6858d49a_fk_mapdata_l FOREIGN KEY (load_group_contribute_id) REFERENCES public.mapdata_loadgroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_locationgroup mapdata_locationgrou_locationslug_ptr_id_5f0e4ebb_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_locationgroup
    ADD CONSTRAINT mapdata_locationgrou_locationslug_ptr_id_5f0e4ebb_fk_mapdata_l FOREIGN KEY (locationslug_ptr_id) REFERENCES public.mapdata_locationslug(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_locationredirect mapdata_locationredi_locationslug_ptr_id_81cda0c9_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_locationredirect
    ADD CONSTRAINT mapdata_locationredi_locationslug_ptr_id_81cda0c9_fk_mapdata_l FOREIGN KEY (locationslug_ptr_id) REFERENCES public.mapdata_locationslug(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_locationredirect mapdata_locationredi_target_id_29d1b3d7_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_locationredirect
    ADD CONSTRAINT mapdata_locationredi_target_id_29d1b3d7_fk_mapdata_l FOREIGN KEY (target_id) REFERENCES public.mapdata_locationslug(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_obstacle mapdata_obstacle_group_id_a59d9b9b_fk_mapdata_obstaclegroup_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_obstacle
    ADD CONSTRAINT mapdata_obstacle_group_id_a59d9b9b_fk_mapdata_obstaclegroup_id FOREIGN KEY (group_id) REFERENCES public.mapdata_obstaclegroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_obstacle mapdata_obstacle_space_id_0aa1260c_fk_mapdata_s; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_obstacle
    ADD CONSTRAINT mapdata_obstacle_space_id_0aa1260c_fk_mapdata_s FOREIGN KEY (space_id) REFERENCES public.mapdata_space(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_poi mapdata_poi_access_restriction_i_a6d0faf9_fk_mapdata_a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_poi
    ADD CONSTRAINT mapdata_poi_access_restriction_i_a6d0faf9_fk_mapdata_a FOREIGN KEY (access_restriction_id) REFERENCES public.mapdata_accessrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_poi_groups mapdata_poi_groups_locationgroup_id_46758a1e_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_poi_groups
    ADD CONSTRAINT mapdata_poi_groups_locationgroup_id_46758a1e_fk_mapdata_l FOREIGN KEY (locationgroup_id) REFERENCES public.mapdata_locationgroup(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_poi_groups mapdata_poi_groups_poi_id_a7128a8c_fk_mapdata_p; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_poi_groups
    ADD CONSTRAINT mapdata_poi_groups_poi_id_a7128a8c_fk_mapdata_p FOREIGN KEY (poi_id) REFERENCES public.mapdata_poi(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_poi mapdata_poi_label_settings_id_18a6c1cf_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_poi
    ADD CONSTRAINT mapdata_poi_label_settings_id_18a6c1cf_fk_mapdata_l FOREIGN KEY (label_settings_id) REFERENCES public.mapdata_labelsettings(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_poi mapdata_poi_load_group_display_i_9952b636_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_poi
    ADD CONSTRAINT mapdata_poi_load_group_display_i_9952b636_fk_mapdata_l FOREIGN KEY (load_group_display_id) REFERENCES public.mapdata_loadgroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_poi mapdata_poi_locationslug_ptr_id_22498ca8_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_poi
    ADD CONSTRAINT mapdata_poi_locationslug_ptr_id_22498ca8_fk_mapdata_l FOREIGN KEY (locationslug_ptr_id) REFERENCES public.mapdata_locationslug(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_poi mapdata_poi_space_id_dcb9f571_fk_mapdata_s; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_poi
    ADD CONSTRAINT mapdata_poi_space_id_dcb9f571_fk_mapdata_s FOREIGN KEY (space_id) REFERENCES public.mapdata_space(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_position mapdata_position_owner_id_8ad6b67c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_position
    ADD CONSTRAINT mapdata_position_owner_id_8ad6b67c_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_ramp mapdata_ramp_space_id_e6f57e61_fk_mapdata_s; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_ramp
    ADD CONSTRAINT mapdata_ramp_space_id_e6f57e61_fk_mapdata_s FOREIGN KEY (space_id) REFERENCES public.mapdata_space(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_rangingbeacon mapdata_rangingbeaco_space_id_2c6b1efe_fk_mapdata_s; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_rangingbeacon
    ADD CONSTRAINT mapdata_rangingbeaco_space_id_2c6b1efe_fk_mapdata_s FOREIGN KEY (space_id) REFERENCES public.mapdata_space(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_report mapdata_report_assigned_to_id_fd3a8aab_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_report
    ADD CONSTRAINT mapdata_report_assigned_to_id_fd3a8aab_fk_auth_user_id FOREIGN KEY (assigned_to_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_report mapdata_report_author_id_1dd5fc14_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_report
    ADD CONSTRAINT mapdata_report_author_id_1dd5fc14_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_report_created_groups mapdata_report_creat_locationgroup_id_07a66aea_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_report_created_groups
    ADD CONSTRAINT mapdata_report_creat_locationgroup_id_07a66aea_fk_mapdata_l FOREIGN KEY (locationgroup_id) REFERENCES public.mapdata_locationgroup(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_report_created_groups mapdata_report_creat_report_id_e8da1176_fk_mapdata_r; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_report_created_groups
    ADD CONSTRAINT mapdata_report_creat_report_id_e8da1176_fk_mapdata_r FOREIGN KEY (report_id) REFERENCES public.mapdata_report(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_report mapdata_report_location_id_a1b9eef3_fk_mapdata_locationslug_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_report
    ADD CONSTRAINT mapdata_report_location_id_a1b9eef3_fk_mapdata_locationslug_id FOREIGN KEY (location_id) REFERENCES public.mapdata_locationslug(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_reportupdate mapdata_reportupdate_assigned_to_id_7af867b4_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_reportupdate
    ADD CONSTRAINT mapdata_reportupdate_assigned_to_id_7af867b4_fk_auth_user_id FOREIGN KEY (assigned_to_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_reportupdate mapdata_reportupdate_author_id_b0e6e04b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_reportupdate
    ADD CONSTRAINT mapdata_reportupdate_author_id_b0e6e04b_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_reportupdate mapdata_reportupdate_report_id_ac2b4e37_fk_mapdata_report_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_reportupdate
    ADD CONSTRAINT mapdata_reportupdate_report_id_ac2b4e37_fk_mapdata_report_id FOREIGN KEY (report_id) REFERENCES public.mapdata_report(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_source mapdata_source_access_restriction_i_10e0a307_fk_mapdata_a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_source
    ADD CONSTRAINT mapdata_source_access_restriction_i_10e0a307_fk_mapdata_a FOREIGN KEY (access_restriction_id) REFERENCES public.mapdata_accessrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_space mapdata_space_access_restriction_i_c295dd70_fk_mapdata_a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_space
    ADD CONSTRAINT mapdata_space_access_restriction_i_c295dd70_fk_mapdata_a FOREIGN KEY (access_restriction_id) REFERENCES public.mapdata_accessrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_space_groups mapdata_space_groups_locationgroup_id_352f0e89_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_space_groups
    ADD CONSTRAINT mapdata_space_groups_locationgroup_id_352f0e89_fk_mapdata_l FOREIGN KEY (locationgroup_id) REFERENCES public.mapdata_locationgroup(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_space_groups mapdata_space_groups_space_id_d9bb3827_fk_mapdata_s; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_space_groups
    ADD CONSTRAINT mapdata_space_groups_space_id_d9bb3827_fk_mapdata_s FOREIGN KEY (space_id) REFERENCES public.mapdata_space(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_space mapdata_space_label_settings_id_b26b4945_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_space
    ADD CONSTRAINT mapdata_space_label_settings_id_b26b4945_fk_mapdata_l FOREIGN KEY (label_settings_id) REFERENCES public.mapdata_labelsettings(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_space mapdata_space_level_id_b635bbeb_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_space
    ADD CONSTRAINT mapdata_space_level_id_b635bbeb_fk_mapdata_l FOREIGN KEY (level_id) REFERENCES public.mapdata_level(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_space mapdata_space_load_group_contribut_70aed049_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_space
    ADD CONSTRAINT mapdata_space_load_group_contribut_70aed049_fk_mapdata_l FOREIGN KEY (load_group_contribute_id) REFERENCES public.mapdata_loadgroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_space mapdata_space_load_group_display_i_5f9c18bf_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_space
    ADD CONSTRAINT mapdata_space_load_group_display_i_5f9c18bf_fk_mapdata_l FOREIGN KEY (load_group_display_id) REFERENCES public.mapdata_loadgroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_space mapdata_space_locationslug_ptr_id_228ac56f_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_space
    ADD CONSTRAINT mapdata_space_locationslug_ptr_id_228ac56f_fk_mapdata_l FOREIGN KEY (locationslug_ptr_id) REFERENCES public.mapdata_locationslug(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_stair mapdata_stair_space_id_6dd3ccb0_fk_mapdata_s; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_stair
    ADD CONSTRAINT mapdata_stair_space_id_6dd3ccb0_fk_mapdata_s FOREIGN KEY (space_id) REFERENCES public.mapdata_space(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_themelocationgroupbackgroundcolor mapdata_themelocatio_location_group_id_2b664e23_fk_mapdata_l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_themelocationgroupbackgroundcolor
    ADD CONSTRAINT mapdata_themelocatio_location_group_id_2b664e23_fk_mapdata_l FOREIGN KEY (location_group_id) REFERENCES public.mapdata_locationgroup(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_themelocationgroupbackgroundcolor mapdata_themelocatio_theme_id_9baff4da_fk_mapdata_t; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_themelocationgroupbackgroundcolor
    ADD CONSTRAINT mapdata_themelocatio_theme_id_9baff4da_fk_mapdata_t FOREIGN KEY (theme_id) REFERENCES public.mapdata_theme(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_themeobstaclegroupbackgroundcolor mapdata_themeobstacl_obstacle_group_id_6a51b028_fk_mapdata_o; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_themeobstaclegroupbackgroundcolor
    ADD CONSTRAINT mapdata_themeobstacl_obstacle_group_id_6a51b028_fk_mapdata_o FOREIGN KEY (obstacle_group_id) REFERENCES public.mapdata_obstaclegroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_themeobstaclegroupbackgroundcolor mapdata_themeobstacl_theme_id_629c5bc7_fk_mapdata_t; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_themeobstaclegroupbackgroundcolor
    ADD CONSTRAINT mapdata_themeobstacl_theme_id_629c5bc7_fk_mapdata_t FOREIGN KEY (theme_id) REFERENCES public.mapdata_theme(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_beaconmeasurement mapdata_wifimeasurem_space_id_1d127e47_fk_mapdata_s; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_beaconmeasurement
    ADD CONSTRAINT mapdata_wifimeasurem_space_id_1d127e47_fk_mapdata_s FOREIGN KEY (space_id) REFERENCES public.mapdata_space(locationslug_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mapdata_beaconmeasurement mapdata_wifimeasurement_author_id_e4b5352e_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mapdata_beaconmeasurement
    ADD CONSTRAINT mapdata_wifimeasurement_author_id_e4b5352e_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mesh_firmwarebuild mesh_firmwarebuild_version_id_93e4b318_fk_mesh_firm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesh_firmwarebuild
    ADD CONSTRAINT mesh_firmwarebuild_version_id_93e4b318_fk_mesh_firm FOREIGN KEY (version_id) REFERENCES public.mesh_firmwareversion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mesh_firmwarebuildboard mesh_firmwarebuildbo_build_id_902517a9_fk_mesh_firm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesh_firmwarebuildboard
    ADD CONSTRAINT mesh_firmwarebuildbo_build_id_902517a9_fk_mesh_firm FOREIGN KEY (build_id) REFERENCES public.mesh_firmwarebuild(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mesh_firmwareversion mesh_firmwareversion_uploader_id_30c14fe3_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesh_firmwareversion
    ADD CONSTRAINT mesh_firmwareversion_uploader_id_30c14fe3_fk_auth_user_id FOREIGN KEY (uploader_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mesh_meshnode mesh_meshnode_uplink_id_cf6b04db_fk_mesh_meshuplink_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesh_meshnode
    ADD CONSTRAINT mesh_meshnode_uplink_id_cf6b04db_fk_mesh_meshuplink_id FOREIGN KEY (uplink_id) REFERENCES public.mesh_meshuplink(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mesh_meshnode mesh_meshnode_upstream_id_c946622a_fk_mesh_meshnode_address; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesh_meshnode
    ADD CONSTRAINT mesh_meshnode_upstream_id_c946622a_fk_mesh_meshnode_address FOREIGN KEY (upstream_id) REFERENCES public.mesh_meshnode(address) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mesh_meshuplink mesh_meshuplink_node_id_e0c94b45_fk_mesh_meshnode_address; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesh_meshuplink
    ADD CONSTRAINT mesh_meshuplink_node_id_e0c94b45_fk_mesh_meshnode_address FOREIGN KEY (node_id) REFERENCES public.mesh_meshnode(address) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mesh_nodemessage mesh_nodemessage_src_node_id_2754ac40_fk_mesh_meshnode_address; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesh_nodemessage
    ADD CONSTRAINT mesh_nodemessage_src_node_id_2754ac40_fk_mesh_meshnode_address FOREIGN KEY (src_node_id) REFERENCES public.mesh_meshnode(address) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mesh_nodemessage mesh_nodemessage_uplink_id_22f38887_fk_mesh_meshuplink_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesh_nodemessage
    ADD CONSTRAINT mesh_nodemessage_uplink_id_22f38887_fk_mesh_meshuplink_id FOREIGN KEY (uplink_id) REFERENCES public.mesh_meshuplink(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mesh_otaupdate mesh_otaupdate_build_id_af114c77_fk_mesh_firmwarebuild_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesh_otaupdate
    ADD CONSTRAINT mesh_otaupdate_build_id_af114c77_fk_mesh_firmwarebuild_id FOREIGN KEY (build_id) REFERENCES public.mesh_firmwarebuild(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mesh_otaupdaterecipient mesh_otaupdaterecipi_node_id_0fd5e307_fk_mesh_mesh; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesh_otaupdaterecipient
    ADD CONSTRAINT mesh_otaupdaterecipi_node_id_0fd5e307_fk_mesh_mesh FOREIGN KEY (node_id) REFERENCES public.mesh_meshnode(address) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mesh_otaupdaterecipient mesh_otaupdaterecipient_update_id_95637e8a_fk_mesh_otaupdate_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mesh_otaupdaterecipient
    ADD CONSTRAINT mesh_otaupdaterecipient_update_id_95637e8a_fk_mesh_otaupdate_id FOREIGN KEY (update_id) REFERENCES public.mesh_otaupdate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: site_announcement site_announcement_author_id_136858c5_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.site_announcement
    ADD CONSTRAINT site_announcement_author_id_136858c5_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

\unrestrict JrBbA5g0gFJZWvt1g1xIefJNd78ZKunpgkI5eZc321s6sdG3ZKCcBXb37ie7UC6

