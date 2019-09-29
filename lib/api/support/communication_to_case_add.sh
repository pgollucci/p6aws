######################################################################
#<
#
# Function:
#      = p6_aws_support_communication_to_case_add(communication_body)
#
# Arg(s):
#    communication_body - 
#
#
#>
######################################################################
p6_aws_support_communication_to_case_add() {
    local communication_body="$1"
    shift 1

    p6_run_write_cmd aws support add-communication-to-case --communication-body $communication_body "$@"
}