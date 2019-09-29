######################################################################
#<
#
# Function:
#      = p6_aws_iot_things_in_billing_group_list(billing_group_name)
#
# Arg(s):
#    billing_group_name - 
#
#
#>
######################################################################
p6_aws_iot_things_in_billing_group_list() {
    local billing_group_name="$1"
    shift 1

    p6_run_read_cmd aws iot list-things-in-billing-group --billing-group-name $billing_group_name "$@"
}