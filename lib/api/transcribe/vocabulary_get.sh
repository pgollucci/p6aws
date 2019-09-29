######################################################################
#<
#
# Function:
#      = p6_aws_transcribe_vocabulary_get(vocabulary_name)
#
# Arg(s):
#    vocabulary_name - 
#
#
#>
######################################################################
p6_aws_transcribe_vocabulary_get() {
    local vocabulary_name="$1"
    shift 1

    p6_run_read_cmd aws transcribe get-vocabulary --vocabulary-name $vocabulary_name "$@"
}