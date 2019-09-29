######################################################################
#<
#
# Function:
#      = p6_aws_transcribe_vocabulary_delete(vocabulary_name)
#
# Arg(s):
#    vocabulary_name - 
#
#
#>
######################################################################
p6_aws_transcribe_vocabulary_delete() {
    local vocabulary_name="$1"
    shift 1

    p6_run_write_cmd aws transcribe delete-vocabulary --vocabulary-name $vocabulary_name "$@"
}