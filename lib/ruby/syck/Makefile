#
# Copyright:: Copyright (c) 2013 Opscode, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

.include "../Makefile.inc"

LIB = syck
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/${LIB}
SRCS = \
	bytecode.c \
	emitter.c \
	gram.c \
	handler.c \
	implicit.c \
	node.c \
	rubyext.c \
	syck.c \
	token.c \
	yaml2byte.c

CFLAGS += \
	-I${RUBY_EXT_DIR}/${LIB} \
	-DHAVE_ST_H

.include <bsd.lib.mk>
