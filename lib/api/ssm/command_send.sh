######################################################################
#<
#
# Function:
#      = p6_aws_ssm_command_send(document_name)
#
# Arg(s):
#    document_name - 
#
#
#>
######################################################################
p6_aws_ssm_command_send() {
    local document_name="$1"
    shift 1

    p6_run_write_cmd aws ssm send-command --document-name $document_name "$@"
}