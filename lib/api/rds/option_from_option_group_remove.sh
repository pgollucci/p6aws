######################################################################
#<
#
# Function:
#      = p6_aws_rds_option_from_option_group_remove(option_group_name)
#
# Arg(s):
#    option_group_name - 
#
#
#>
######################################################################
p6_aws_rds_option_from_option_group_remove() {
    local option_group_name="$1"
    shift 1

    p6_run_write_cmd aws rds remove-option-from-option-group --option-group-name $option_group_name "$@"
}