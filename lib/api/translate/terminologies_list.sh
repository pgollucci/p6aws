######################################################################
#<
#
# Function:
#      = p6_aws_translate_terminologies_list()
#
#
#
#>
######################################################################
p6_aws_translate_terminologies_list() {

    p6_run_read_cmd aws translate list-terminologies "$@"
}