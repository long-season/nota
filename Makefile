##
# Nota
#
# @file
# @version 0.1

SCMC=csc
PROGRAM_NAME = nota
EXEC_NAME = nota
FLAGS= -w -O5
EXTENSION= scmx
program:
	${SCMC} ${FLAGS} ${PROGRAM_NAME}.scm -o ${EXEC_NAME}.${EXTENSION}

# run: ./${EXEC_NAME}.${EXTENSION} # fix

# end
