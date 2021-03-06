#!/bin/bash

# ##############################################################################
# this script converts a PMS database to CSV
# ##############################################################################
# Copyright (C) 2005-2009 Harry Brueckner
#
# This program is free software; you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation; either version 2 of the License, or any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
# details.
# You should have received a copy of the GNU General Public License along with
# this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
#
# Contact: Harry Brueckner <harry_b@mm.st>
#          Muenchener Strasse 12a
#          85253 Kleinberghofen
#          Germany
# ##############################################################################


# ##############################################################################

if [ ${#} != 1 ]; then
  echo "syntax: ${0} pmspassword" 1>&2
  exit
fi


# ##############################################################################
# we gather the data from PMS
pms_export text --password="${1}" --format='%H\t%c\t%u\t%C\t%p\n'


# ##############################################################################

