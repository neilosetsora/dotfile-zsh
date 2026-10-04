# trace conditional block: allows developers to find out whether the file has been read; it helps to know where errors could be found
# to activate this block, developers MUST define DZSH_TRACE with a non-null value
# DZSH_TRACE has to be defined as an environment variable right before invoking the shell
# the block output goes to stderr to not mix with stdout

if [[ -n $DZSH_TRACE ]]; then
	print -u2 ".zprofile has been opened for reading"
fi
