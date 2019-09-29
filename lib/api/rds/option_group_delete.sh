######################################################################
#<
#
# Function:
#      = p6_aws_rds_option_group_delete(option_group_name)
#
# Arg(s):
#    option_group_name - 
#
#
#>
######################################################################
p6_aws_rds_option_group_delete() {
    local option_group_name="$1"
    shift 1

    p6_run_write_cmd aws rds delete-option-group --option-group-name $option_group_name "$@"
}