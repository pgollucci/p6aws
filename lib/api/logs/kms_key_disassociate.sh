######################################################################
#<
#
# Function:
#      = p6_aws_logs_kms_key_disassociate(log_group_name)
#
# Arg(s):
#    log_group_name - 
#
#
#>
######################################################################
p6_aws_logs_kms_key_disassociate() {
    local log_group_name="$1"
    shift 1

    p6_run_write_cmd aws logs disassociate-kms-key --log-group-name $log_group_name "$@"
}