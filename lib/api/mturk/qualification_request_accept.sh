######################################################################
#<
#
# Function:
#      = p6_aws_mturk_qualification_request_accept(qualification_request_id)
#
# Arg(s):
#    qualification_request_id - 
#
#
#>
######################################################################
p6_aws_mturk_qualification_request_accept() {
    local qualification_request_id="$1"
    shift 1

    p6_run_write_cmd aws mturk accept-qualification-request --qualification-request-id $qualification_request_id "$@"
}