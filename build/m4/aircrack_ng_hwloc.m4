dnl Aircrack-ng
dnl
dnl Copyright (C) 2018 Joseph Benden <joe@benden.us>
dnl
dnl Autotool support was written by: Joseph Benden <joe@benden.us>
dnl
dnl This program is free software; you can redistribute it and/or modify
dnl it under the terms of the GNU General Public License as published by
dnl the Free Software Foundation; either version 2 of the License, or
dnl (at your option) any later version.
dnl
dnl This program is distributed in the hope that it will be useful,
dnl but WITHOUT ANY WARRANTY; without even the implied warranty of
dnl MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
dnl GNU General Public License for more details.
dnl
dnl You should have received a copy of the GNU General Public License
dnl along with this program; if not, write to the Free Software
dnl Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
dnl
dnl In addition, as a special exception, the copyright holders give
dnl permission to link the code of portions of this program with the
dnl OpenSSL library under certain conditions as described in each
dnl individual source file, and distribute linked combinations
dnl including the two.
dnl
dnl You must obey the GNU General Public License in all respects
dnl for all of the code used other than OpenSSL.
dnl
dnl If you modify file(s) with this exception, you may extend this
dnl exception to your dnl version of the file(s), but you are not obligated
dnl to do so.
dnl
dnl If you dnl do not wish to do so, delete this exception statement from your
dnl version.
dnl
dnl If you delete this exception statement from all source files in the
dnl program, then also delete it here.

AC_DEFUN([AIRCRACK_NG_HWLOC], [
AC_ARG_ENABLE([hwloc],[AC_HELP_STRING([--enable-hwloc], [include hwloc library, [default=yes]])])

HAVE_HWLOC=no

AS_IF([test "x$enable_hwloc" != "xno"], [
	dnl Do the stuff needed for enabling the feature
	PKG_CHECK_MODULES(HWLOC, hwloc, HAVE_HWLOC=yes, HAVE_HWLOC=no)

	AS_IF([test "x$HAVE_HWLOC" = "xyes"], [
		AC_DEFINE([HAVE_HWLOC], [1], [Define if you have hwloc library.])
	])
])

AM_CONDITIONAL([HAVE_HWLOC], [test "$HAVE_HWLOC" = yes])
])
