######################################################################
#<
#
# Function:
#      = p6_aws_xray_group_create(group_name)
#
# Arg(s):
#    group_name - 
#
#
#>
######################################################################
p6_aws_xray_group_create() {
    local group_name="$1"
    shift 1

    p6_run_write_cmd aws xray create-group --group-name $group_name "$@"
}