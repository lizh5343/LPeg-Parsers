#########################################################################
#
# Copyright 2016 by Sean Conner.  All Rights Reserved.
#
# This library is free software; you can redistribute it and/or modify it
# under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation; either version 3 of the License, or (at your
# option) any later version.
#
# This library is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public
# License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this library; if not, see <http://www.gnu.org/licenses/>.
#
# Comments, questions and criticisms can be sent to: sean@conman.org
#
########################################################################

INSTALL      = /usr/bin/install
INSTALL_DATA = $(INSTALL) -m 644
LUA          = lua

prefix       = /usr/local
datarootdir  = $(prefix)/share
dataroot     = $(datarootdir)

LUADIR := $(dataroot)/lua/$(shell $(LUA) -e "print(_VERSION:match '^Lua (.*)')")

install :
	$(INSTALL) -d $(DESTDIR)$(LUADIR)/org/conman/parsers
	$(INSTALL_DATA) *.lua $(DESTDIR)$(LUADIR)/org/conman/parsers/

uninstall :
	$(RM) $(DESTDIR)$(LUADIR)/org/conman/parsers/*.lua

clean:
	$(RM) *~