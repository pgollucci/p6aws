######################################################################
#<
#
# Function:
#      = p6_aws_waf_regional_size_constraint_set_create(name, change_token)
#
# Arg(s):
#    name - 
#    change_token - 
#
#
#>
######################################################################
p6_aws_waf_regional_size_constraint_set_create() {
    local name="$1"
    local change_token="$2"
    shift 2

    p6_run_write_cmd aws waf-regional create-size-constraint-set --name $name --change-token $change_token "$@"
}