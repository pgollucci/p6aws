######################################################################
#<
#
# Function:
#      = p6_aws_transcribe_vocabularies_list()
#
#
#
#>
######################################################################
p6_aws_transcribe_vocabularies_list() {

    p6_run_read_cmd aws transcribe list-vocabularies "$@"
}