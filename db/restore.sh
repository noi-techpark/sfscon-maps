# SPDX-FileCopyrightText: 2024 NOI Techpark <digital@noi.bz.it>
#
# SPDX-License-Identifier: CC0-1.0

#/bin/bash
cat dump.sql | docker exec -i c3nav-test-postgres-1 su - postgres -c 'psql c3nav'