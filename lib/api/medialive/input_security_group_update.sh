######################################################################
#<
#
# Function:
#      = p6_aws_medialive_input_security_group_update(input_security_group_id)
#
# Arg(s):
#    input_security_group_id - 
#
#
#>
######################################################################
p6_aws_medialive_input_security_group_update() {
    local input_security_group_id="$1"
    shift 1

    p6_run_write_cmd aws medialive update-input-security-group --input-security-group-id $input_security_group_id "$@"
}