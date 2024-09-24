# SPDX-FileCopyrightText: 2024 NOI Techpark <digital@noi.bz.it>
#
# SPDX-License-Identifier: CC0-1.0

#/bin/bash
docker exec -i c3nav-test-postgres-1 su - postgres -c 'pg_dump --clean --if-exists --no-owner --exclude-table=public.auth_user c3nav' > dump.sql